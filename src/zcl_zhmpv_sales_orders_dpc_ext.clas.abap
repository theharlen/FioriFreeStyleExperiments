class ZCL_ZHMPV_SALES_ORDERS_DPC_EXT definition
  public
  inheriting from ZCL_ZHMPV_SALES_ORDERS_DPC
  create public .

public section.
protected section.

  methods MESSASGESET_CREATE_ENTITY
    redefinition .
  methods MESSASGESET_DELETE_ENTITY
    redefinition .
  methods MESSASGESET_GET_ENTITY
    redefinition .
  methods MESSASGESET_GET_ENTITYSET
    redefinition .
  methods MESSASGESET_UPDATE_ENTITY
    redefinition .
  methods SOHEADERSET_CREATE_ENTITY
    redefinition .
  methods SOHEADERSET_DELETE_ENTITY
    redefinition .
  methods SOHEADERSET_GET_ENTITY
    redefinition .
  methods SOHEADERSET_GET_ENTITYSET
    redefinition .
  methods SOHEADERSET_UPDATE_ENTITY
    redefinition .
  methods SOITEMSSET_CREATE_ENTITY
    redefinition .
  methods SOITEMSSET_DELETE_ENTITY
    redefinition .
  methods SOITEMSSET_GET_ENTITY
    redefinition .
  methods SOITEMSSET_GET_ENTITYSET
    redefinition .
  methods SOITEMSSET_UPDATE_ENTITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZHMPV_SALES_ORDERS_DPC_EXT IMPLEMENTATION.


  method MESSASGESET_CREATE_ENTITY.
**TRY.
*CALL METHOD SUPER->MESSASGESET_CREATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method MESSASGESET_DELETE_ENTITY.
**TRY.
*CALL METHOD SUPER->MESSASGESET_DELETE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method MESSASGESET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->MESSASGESET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method MESSASGESET_GET_ENTITYSET.
**TRY.
*CALL METHOD SUPER->MESSASGESET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method MESSASGESET_UPDATE_ENTITY.
**TRY.
*CALL METHOD SUPER->MESSASGESET_UPDATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOHEADERSET_CREATE_ENTITY.
**TRY.
*CALL METHOD SUPER->SOHEADERSET_CREATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOHEADERSET_DELETE_ENTITY.
**TRY.
*CALL METHOD SUPER->SOHEADERSET_DELETE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOHEADERSET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->SOHEADERSET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  METHOD soheaderset_get_entityset.

    DATA: orderids TYPE RANGE OF vbak-vbeln,
          order TYPE vbak-vbeln.

    LOOP AT it_filter_select_options INTO DATA(filter_sopt).
      IF filter_sopt-property EQ 'OrderId'.
        LOOP AT filter_sopt-select_options INTO DATA(select_option).
          APPEND INITIAL LINE TO orderids ASSIGNING FIELD-SYMBOL(<orderid>).
          <orderid>-sign    = select_option-sign.
          <orderid>-option  = select_option-option.
          order             = |{ select_option-low ALPHA = in }|.
          <orderid>-low     = order.
          order             = |{ select_option-high ALPHA = in }|.
          <orderid>-high    = order.
        ENDLOOP.

      ENDIF.
    ENDLOOP.

    SELECT vbeln, erdat, erzet, ernam, netwr, waerk
        INTO TABLE @DATA(so_headers)
          FROM vbak
            WHERE vbeln IN @orderids.

    LOOP AT so_headers INTO DATA(so_header).
      APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      <entity>-orderid      = so_header-vbeln.
      <entity>-createdon    = so_header-erdat.
      <entity>-createdtime  = so_header-erzet.
      <entity>-createdby    = so_header-ernam.
      <entity>-netvalue     = so_header-netwr.
      <entity>-doccategory  = so_header-waerk.
    ENDLOOP.

**TRY.
*CALL METHOD SUPER->SOHEADERSET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  ENDMETHOD.


  method SOHEADERSET_UPDATE_ENTITY.
**TRY.
*CALL METHOD SUPER->SOHEADERSET_UPDATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOITEMSSET_CREATE_ENTITY.
**TRY.
*CALL METHOD SUPER->SOITEMSSET_CREATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOITEMSSET_DELETE_ENTITY.
**TRY.
*CALL METHOD SUPER->SOITEMSSET_DELETE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOITEMSSET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->SOITEMSSET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOITEMSSET_GET_ENTITYSET.
**TRY.
*CALL METHOD SUPER->SOITEMSSET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method SOITEMSSET_UPDATE_ENTITY.
**TRY.
*CALL METHOD SUPER->SOITEMSSET_UPDATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.
ENDCLASS.
