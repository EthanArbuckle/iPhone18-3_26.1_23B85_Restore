uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = 0;
  v3 = tc_v1_flex_dict_add_element(a1, a2, a3, &v72);
  v4 = v72;
  if (v72)
  {
    v5 = tc_v1_error_message(v72);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v70 = String.init(cString:)(v5);
    v57 = v6;
    v71 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v57;
    v70 = v8;
    v58 = v10;
    v71 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v58;
    v70 = v11;
    v59 = v13;
    v71 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v59;
    v70 = v14;
    v60 = v16;
    v71 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v60;
    v70 = v17;
    v61 = v19;
    v71 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v61;
    v70 = v20;
    v62 = v22;
    v71 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v62;
    v70 = v23;
    v71 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v70 = v26;
    v63 = v28;
    v71 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v63;
    v70 = v29;
    v64 = v31;
    v71 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v64;
    v70 = v32;
    v65 = v34;
    v71 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v65;
    v70 = v35;
    v66 = v37;
    v71 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v66;
    v70 = v38;
    v71 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v42 = v40;
    v44 = v43;
    v42;
    v70 = v41;
    v71 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v67 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v55 = v45;
    v44;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter();
    v56 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v67;
    v49[5] = v55;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v56, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v67;
    *(v51 + 8) = v55;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_binary_op_sf);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_binary_op_fs);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_binary_op_ss);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_replace_na);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_model_call_method);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_drop_na);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_unstack);
}

{
  return specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_group_by);
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  v72 = 0;
  v3 = tc_v1_sarray_to_type(a1, a2, a3 & 1, &v72);
  v4 = v72;
  if (v72)
  {
    v5 = tc_v1_error_message(v72);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v70 = String.init(cString:)(v5);
    v55 = v6;
    v71 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v70 = v8;
    v56 = v10;
    v71 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v70 = v11;
    v57 = v13;
    v71 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v70 = v14;
    v58 = v16;
    v71 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v70 = v17;
    v59 = v19;
    v71 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v70 = v20;
    v60 = v22;
    v71 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v70 = v23;
    v71 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v70 = v26;
    v61 = v28;
    v71 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v70 = v29;
    v62 = v31;
    v71 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v70 = v32;
    v63 = v34;
    v71 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v70 = v35;
    v64 = v37;
    v71 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v70 = v38;
    v65 = v40;
    v71 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v70 = v41;
    v66 = v43;
    v71 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter(v46);
    v67 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v67, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v50);
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

{
  v72 = 0;
  v3 = tc_v1_sframe_sort_single_column(a1, a2, a3 & 1, &v72);
  v4 = v72;
  if (v72)
  {
    v5 = tc_v1_error_message(v72);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v70 = String.init(cString:)(v5);
    v55 = v6;
    v71 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v70 = v8;
    v56 = v10;
    v71 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v70 = v11;
    v57 = v13;
    v71 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v70 = v14;
    v58 = v16;
    v71 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v70 = v17;
    v59 = v19;
    v71 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v70 = v20;
    v60 = v22;
    v71 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v70 = v23;
    v71 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v70 = v26;
    v61 = v28;
    v71 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v70 = v29;
    v62 = v31;
    v71 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v70 = v32;
    v63 = v34;
    v71 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v70 = v35;
    v64 = v37;
    v71 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v70 = v38;
    v65 = v40;
    v71 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v70 = v41;
    v66 = v43;
    v71 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter(v46);
    v67 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v67, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v50);
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

NSURL *specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_add_column);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_parameters_add_flexible_type);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_parameters_add_sarray);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_parameters_add_sframe);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D>(_:_:_:_:)(a1, a2, a3, &tc_v1_sframe_rename_column);
  return __stack_chk_guard;
}

NSURL *specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v71 = 0;
  a4(a1, a2, a3, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v69 = String.init(cString:)(v5);
    v54 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v69 = v8;
    v55 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v69 = v11;
    v56 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v69 = v14;
    v57 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v69 = v17;
    v58 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v69 = v20;
    v59 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v69 = v23;
    v60 = v25;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v60;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter();
    v66 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v66, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  v71 = 0;
  v2 = tc_v1_sframe_sample(a1, a2, &v71);
  v3 = v71;
  if (v71)
  {
    v4 = tc_v1_error_message(v71);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v69 = String.init(cString:)(v4);
    v56 = v5;
    v70 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v56;
    v69 = v7;
    v57 = v9;
    v70 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v57;
    v69 = v10;
    v58 = v12;
    v70 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v58;
    v69 = v13;
    v59 = v15;
    v70 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v59;
    v69 = v16;
    v60 = v18;
    v70 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v60;
    v69 = v19;
    v61 = v21;
    v70 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v61;
    v69 = v22;
    v70 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v69 = v25;
    v62 = v27;
    v70 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v62;
    v69 = v28;
    v63 = v30;
    v70 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v63;
    v69 = v31;
    v64 = v33;
    v70 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v64;
    v69 = v34;
    v65 = v36;
    v70 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v65;
    v69 = v37;
    v70 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v41 = v39;
    v43 = v42;
    v41;
    v69 = v40;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v54 = v44;
    v43;
    type metadata accessor for OS_os_log();
    v45;
    v46 = static OS_os_log.default.getter(v45);
    v55 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v66;
    v48[5] = v54;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v55, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v66;
    *(v50 + 8) = v54;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v49);
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

uint64_t specialized handling<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v73 = 0;
  v4 = a4(a1, a2, a3, &v73);
  v5 = v73;
  if (v73)
  {
    v6 = tc_v1_error_message(v73);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v71 = String.init(cString:)(v6);
    v58 = v7;
    v72 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v58;
    v71 = v9;
    v59 = v11;
    v72 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v59;
    v71 = v12;
    v60 = v14;
    v72 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v60;
    v71 = v15;
    v61 = v17;
    v72 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v61;
    v71 = v18;
    v62 = v20;
    v72 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v62;
    v71 = v21;
    v63 = v23;
    v72 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v63;
    v71 = v24;
    v72 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v71 = v27;
    v64 = v29;
    v72 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v64;
    v71 = v30;
    v65 = v32;
    v72 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v65;
    v71 = v33;
    v66 = v35;
    v72 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v66;
    v71 = v36;
    v67 = v38;
    v72 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v67;
    v71 = v39;
    v72 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v43 = v41;
    v45 = v44;
    v43;
    v71 = v42;
    v72 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v68 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v56 = v46;
    v45;
    type metadata accessor for OS_os_log();
    v47;
    v48 = static OS_os_log.default.getter(v47);
    v57 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v68;
    v50[5] = v56;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v57, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v68;
    *(v52 + 8) = v56;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

NSURL *specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = 0;
  tc_v1_flex_dict_extract_entry(a1, a2, a3, a4, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v69 = String.init(cString:)(v5);
    v54 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v69 = v8;
    v55 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v69 = v11;
    v56 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v69 = v14;
    v57 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v69 = v17;
    v58 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v69 = v20;
    v59 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v69 = v23;
    v60 = v25;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v60;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter();
    v66 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v66, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
  }

  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_sframe_export);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_simple_aggregator);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_argmax);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_argmin);
  return __stack_chk_guard;
}

{
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_groupby_aggregator_add_concat_two_columns);
  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = 0;
  v4 = tc_v1_ndarray_create_from_data(a1, a2, a3, a4, &v73);
  v5 = v73;
  if (v73)
  {
    v6 = tc_v1_error_message(v73);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v71 = String.init(cString:)(v6);
    v56 = v7;
    v72 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v56;
    v71 = v9;
    v57 = v11;
    v72 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v57;
    v71 = v12;
    v58 = v14;
    v72 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v58;
    v71 = v15;
    v59 = v17;
    v72 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v59;
    v71 = v18;
    v60 = v20;
    v72 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v60;
    v71 = v21;
    v61 = v23;
    v72 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v61;
    v71 = v24;
    v72 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v71 = v27;
    v62 = v29;
    v72 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v71 = v30;
    v63 = v32;
    v72 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v71 = v33;
    v64 = v35;
    v72 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v71 = v36;
    v65 = v38;
    v72 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v71 = v39;
    v66 = v41;
    v72 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v71 = v42;
    v67 = v44;
    v72 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v67;
    type metadata accessor for OS_os_log();
    v47;
    v48 = static OS_os_log.default.getter();
    v68 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v68, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

{
  v73 = 0;
  v4 = tc_v1_sframe_join_on_multiple_columns(a1, a2, a3, a4, &v73);
  v5 = v73;
  if (v73)
  {
    v6 = tc_v1_error_message(v73);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v71 = String.init(cString:)(v6);
    v56 = v7;
    v72 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v56;
    v71 = v9;
    v57 = v11;
    v72 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v57;
    v71 = v12;
    v58 = v14;
    v72 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v58;
    v71 = v15;
    v59 = v17;
    v72 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v59;
    v71 = v18;
    v60 = v20;
    v72 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v60;
    v71 = v21;
    v61 = v23;
    v72 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v61;
    v71 = v24;
    v72 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v71 = v27;
    v62 = v29;
    v72 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v71 = v30;
    v63 = v32;
    v72 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v71 = v33;
    v64 = v35;
    v72 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v71 = v36;
    v65 = v38;
    v72 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v71 = v39;
    v66 = v41;
    v72 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v71 = v42;
    v67 = v44;
    v72 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v67;
    type metadata accessor for OS_os_log();
    v47;
    v48 = static OS_os_log.default.getter(v47);
    v68 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v68, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v51);
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

{
  v73 = 0;
  v4 = tc_v1_sframe_slice(a1, a2, a3, a4, &v73);
  v5 = v73;
  if (v73)
  {
    v6 = tc_v1_error_message(v73);
    if (!v6)
    {
      BUG();
    }

    v55 = v5;
    v54 = v4;
    v71 = String.init(cString:)(v6);
    v56 = v7;
    v72 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v56;
    v71 = v9;
    v57 = v11;
    v72 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v57;
    v71 = v12;
    v58 = v14;
    v72 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v58;
    v71 = v15;
    v59 = v17;
    v72 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v59;
    v71 = v18;
    v60 = v20;
    v72 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v60;
    v71 = v21;
    v61 = v23;
    v72 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v61;
    v71 = v24;
    v72 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v71 = v27;
    v62 = v29;
    v72 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v71 = v30;
    v63 = v32;
    v72 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v71 = v33;
    v64 = v35;
    v72 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v71 = v36;
    v65 = v38;
    v72 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v71 = v39;
    v66 = v41;
    v72 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v71 = v42;
    v67 = v44;
    v72 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v67;
    type metadata accessor for OS_os_log();
    v47;
    v48 = static OS_os_log.default.getter(v47);
    v68 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v68, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v51);
    tc_v1_release(v55);
    return v54;
  }

  return v4;
}

{
  v72 = 0;
  LODWORD(v4) = tc_v1_plot_render_next_into_context(a1, a2, a3, a4, &v72);
  v5 = v72;
  if (v72)
  {
    v6 = tc_v1_error_message(v72);
    if (!v6)
    {
      BUG();
    }

    v53 = v5;
    v54 = v4;
    v70 = String.init(cString:)(v6);
    v55 = v7;
    v71 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v55;
    v70 = v9;
    v56 = v11;
    v71 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v56;
    v70 = v12;
    v57 = v14;
    v71 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v57;
    v70 = v15;
    v58 = v17;
    v71 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v58;
    v70 = v18;
    v59 = v20;
    v71 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v59;
    v70 = v21;
    v60 = v23;
    v71 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v60;
    v70 = v24;
    v71 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v26;
    v70 = v27;
    v61 = v29;
    v71 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v61;
    v70 = v30;
    v62 = v32;
    v71 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v62;
    v70 = v33;
    v63 = v35;
    v71 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v63;
    v70 = v36;
    v64 = v38;
    v71 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v64;
    v70 = v39;
    v65 = v41;
    v71 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v65;
    v70 = v42;
    v66 = v44;
    v71 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter(v46);
    v67 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v4;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v67, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v4;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v50);
    tc_v1_release(v53);
    LOBYTE(v4) = v54;
  }

  return v4;
}

uint64_t specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_sframe_filter_by);
}

{
  return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(a1, a2, a3, a4, &tc_v1_sframe_stack_and_rename);
}

uint64_t specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t *))
{
  v74 = 0;
  v5 = a5(a1, a2, a3, a4 & 1, &v74);
  v6 = v74;
  if (v74)
  {
    v7 = tc_v1_error_message(v74);
    if (!v7)
    {
      BUG();
    }

    v56 = v6;
    v55 = v5;
    v72 = String.init(cString:)(v7);
    v57 = v8;
    v73 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v71 = static ErrorString.table;
    v70 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v57;
    v72 = v10;
    v58 = v12;
    v73 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v71 = static ErrorString.column;
    v70 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v58;
    v72 = v13;
    v59 = v15;
    v73 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v71 = static ErrorString.tableMap;
    v70 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v59;
    v72 = v16;
    v60 = v18;
    v73 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v71 = static ErrorString.columnMap;
    v70 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v60;
    v72 = v19;
    v61 = v21;
    v73 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v71 = static ErrorString.drop;
    v70 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v61;
    v72 = v22;
    v62 = v24;
    v73 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v71 = static ErrorString.sequence;
    v70 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v62;
    v72 = v25;
    v73 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v71 = static ErrorString.double;
    v70 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v72 = v28;
    v63 = v30;
    v73 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v71 = static ErrorString.integer;
    v70 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v63;
    v72 = v31;
    v64 = v33;
    v73 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v71 = static ErrorString.error;
    v70 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v64;
    v72 = v34;
    v65 = v36;
    v73 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v71 = static ErrorString.archive;
    v70 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v65;
    v72 = v37;
    v66 = v39;
    v73 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v71 = static ErrorString.limit;
    v70 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v66;
    v72 = v40;
    v67 = v42;
    v73 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v71 = static ErrorString.supportedStackTypes;
    v70 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v67;
    v72 = v43;
    v68 = v45;
    v73 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v71 = static ErrorString.sortTypes;
    v70 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v48 = v47;
    v68;
    type metadata accessor for OS_os_log();
    v48;
    v49 = static OS_os_log.default.getter(v48);
    v69 = static os_log_type_t.error.getter();
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v51 = swift_allocObject(v50, 72, 7);
    v51[2] = 1;
    v51[3] = 2;
    v51[7] = &type metadata for String;
    v51[8] = lazy protocol witness table accessor for type String and conformance String();
    v51[4] = v46;
    v51[5] = v48;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v49, v69, v51);

    v51;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = v46;
    *(v53 + 8) = v48;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v52);
    tc_v1_release(v56);
    return v55;
  }

  return v5;
}

NSURL *specialized handling<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v72 = 0;
  a5(a1, a2, a3, a4, &v72);
  v5 = v72;
  if (v72)
  {
    v6 = tc_v1_error_message(v72);
    if (!v6)
    {
      BUG();
    }

    v54 = v5;
    v70 = String.init(cString:)(v6);
    v55 = v7;
    v71 = v7;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v8 = lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v11 = v10;
    v55;
    v70 = v9;
    v56 = v11;
    v71 = v11;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v14 = v13;
    v56;
    v70 = v12;
    v57 = v14;
    v71 = v14;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v17 = v16;
    v57;
    v70 = v15;
    v58 = v17;
    v71 = v17;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v20 = v19;
    v58;
    v70 = v18;
    v59 = v20;
    v71 = v20;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v23 = v22;
    v59;
    v70 = v21;
    v60 = v23;
    v71 = v23;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v26 = v25;
    v60;
    v70 = v24;
    v61 = v26;
    v71 = v26;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v29 = v28;
    v61;
    v70 = v27;
    v62 = v29;
    v71 = v29;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v32 = v31;
    v62;
    v70 = v30;
    v63 = v32;
    v71 = v32;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v35 = v34;
    v63;
    v70 = v33;
    v64 = v35;
    v71 = v35;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v38 = v37;
    v64;
    v70 = v36;
    v65 = v38;
    v71 = v38;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v41 = v40;
    v65;
    v70 = v39;
    v66 = v41;
    v71 = v41;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v44 = v43;
    v66;
    v70 = v42;
    v71 = v44;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
    v47 = v46;
    v44;
    type metadata accessor for OS_os_log();
    v47;
    v48 = static OS_os_log.default.getter(v47);
    v67 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v45;
    v50[5] = v47;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v67, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v45;
    *(v52 + 8) = v47;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v51);
    tc_v1_release(v54);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v74 = 0;
  v6 = tc_v1_sarray_apply(a1, a2, a3, a4, a5, a6 & 1, &v74);
  v7 = v74;
  if (v74)
  {
    v8 = tc_v1_error_message(v74);
    if (!v8)
    {
      BUG();
    }

    v56 = v7;
    v55 = v6;
    v72 = String.init(cString:)(v8);
    v58 = v9;
    v73 = v9;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v71 = static ErrorString.table;
    v70 = xmmword_3A3830;
    v10 = lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v13 = v12;
    v58;
    v72 = v11;
    v59 = v13;
    v73 = v13;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v71 = static ErrorString.column;
    v70 = xmmword_3A3850;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v16 = v15;
    v59;
    v72 = v14;
    v60 = v16;
    v73 = v16;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v71 = static ErrorString.tableMap;
    v70 = xmmword_3A3870;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v19 = v18;
    v60;
    v72 = v17;
    v61 = v19;
    v73 = v19;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v71 = static ErrorString.columnMap;
    v70 = xmmword_3A3890;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v22 = v21;
    v61;
    v72 = v20;
    v62 = v22;
    v73 = v22;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v71 = static ErrorString.drop;
    v70 = xmmword_3A38B0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v25 = v24;
    v62;
    v72 = v23;
    v63 = v25;
    v73 = v25;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v71 = static ErrorString.sequence;
    v70 = xmmword_3A38D0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v28 = v27;
    v63;
    v72 = v26;
    v73 = v28;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v71 = static ErrorString.double;
    v70 = xmmword_3A38F0;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v31 = v30;
    v28;
    v72 = v29;
    v64 = v31;
    v73 = v31;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v71 = static ErrorString.integer;
    v70 = xmmword_3A3910;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v34 = v33;
    v64;
    v72 = v32;
    v65 = v34;
    v73 = v34;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v71 = static ErrorString.error;
    v70 = xmmword_3A3930;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v37 = v36;
    v65;
    v72 = v35;
    v66 = v37;
    v73 = v37;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v71 = static ErrorString.archive;
    v70 = xmmword_3A3950;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v40 = v39;
    v66;
    v72 = v38;
    v67 = v40;
    v73 = v40;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v71 = static ErrorString.limit;
    v70 = xmmword_3A3970;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v43 = v42;
    v67;
    v72 = v41;
    v68 = v43;
    v73 = v43;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v71 = static ErrorString.supportedStackTypes;
    v70 = xmmword_3A3990;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v46 = v45;
    v68;
    v72 = v44;
    v73 = v46;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v71 = static ErrorString.sortTypes;
    v70 = xmmword_3A39B0;
    v47 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v71, &v70, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v10, v10, v10);
    v69 = v48;
    v46;
    type metadata accessor for OS_os_log();
    v49 = static OS_os_log.default.getter(0);
    v57 = static os_log_type_t.error.getter();
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v51 = swift_allocObject(v50, 72, 7);
    v51[2] = 1;
    v51[3] = 2;
    v51[7] = &type metadata for String;
    v51[8] = lazy protocol witness table accessor for type String and conformance String();
    v51[4] = v47;
    v51[5] = v69;
    v69;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v49, v57, v51);

    v51;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = v47;
    *(v53 + 8) = v69;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v52);
    tc_v1_release(v56);
    return v55;
  }

  return v6;
}

uint64_t specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, &tc_v1_plot_create_2d);
}

{
  return specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, &tc_v1_sframe_unpack_detailed);
}

uint64_t specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = 0;
  v5 = tc_v1_plot_create_1d(a1, a2, a3, a4, a5, &v73);
  v6 = v73;
  if (v73)
  {
    v7 = tc_v1_error_message(v73);
    if (!v7)
    {
      BUG();
    }

    v55 = v6;
    v54 = v5;
    v71 = String.init(cString:)(v7);
    v57 = v8;
    v72 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v57;
    v71 = v10;
    v58 = v12;
    v72 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v58;
    v71 = v13;
    v59 = v15;
    v72 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v59;
    v71 = v16;
    v60 = v18;
    v72 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v60;
    v71 = v19;
    v61 = v21;
    v72 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v61;
    v71 = v22;
    v62 = v24;
    v72 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v62;
    v71 = v25;
    v72 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v71 = v28;
    v63 = v30;
    v72 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v63;
    v71 = v31;
    v64 = v33;
    v72 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v64;
    v71 = v34;
    v65 = v36;
    v72 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v65;
    v71 = v37;
    v66 = v39;
    v72 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v66;
    v71 = v40;
    v67 = v42;
    v72 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v67;
    v71 = v43;
    v72 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v68 = v47;
    v45;
    type metadata accessor for OS_os_log();
    v48 = static OS_os_log.default.getter(0);
    v56 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v46;
    v50[5] = v68;
    v68;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v56, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v46;
    *(v52 + 8) = v68;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v51);
    tc_v1_release(v55);
    return v54;
  }

  return v5;
}

{
  v73 = 0;
  v5 = tc_v1_sframe_apply(a1, a2, a3, a4, a5, &v73);
  v6 = v73;
  if (v73)
  {
    v7 = tc_v1_error_message(v73);
    if (!v7)
    {
      BUG();
    }

    v55 = v6;
    v54 = v5;
    v71 = String.init(cString:)(v7);
    v57 = v8;
    v72 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v57;
    v71 = v10;
    v58 = v12;
    v72 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v58;
    v71 = v13;
    v59 = v15;
    v72 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v59;
    v71 = v16;
    v60 = v18;
    v72 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v60;
    v71 = v19;
    v61 = v21;
    v72 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v61;
    v71 = v22;
    v62 = v24;
    v72 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v62;
    v71 = v25;
    v72 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v71 = v28;
    v63 = v30;
    v72 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v63;
    v71 = v31;
    v64 = v33;
    v72 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v64;
    v71 = v34;
    v65 = v36;
    v72 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v65;
    v71 = v37;
    v66 = v39;
    v72 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v66;
    v71 = v40;
    v67 = v42;
    v72 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v67;
    v71 = v43;
    v72 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v68 = v47;
    v45;
    type metadata accessor for OS_os_log();
    v48 = static OS_os_log.default.getter(0);
    v56 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v46;
    v50[5] = v68;
    v68;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v56, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v46;
    *(v52 + 8) = v68;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v51);
    tc_v1_release(v55);
    return v54;
  }

  return v5;
}

{
  v73 = 0;
  v5 = tc_v1_sframe_pack_columns_vector(a1, a2, a3, a4, a5, &v73);
  v6 = v73;
  if (v73)
  {
    v7 = tc_v1_error_message(v73);
    if (!v7)
    {
      BUG();
    }

    v55 = v6;
    v54 = v5;
    v71 = String.init(cString:)(v7);
    v57 = v8;
    v72 = v8;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v70 = static ErrorString.table;
    v69 = xmmword_3A3830;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v12 = v11;
    v57;
    v71 = v10;
    v58 = v12;
    v72 = v12;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v70 = static ErrorString.column;
    v69 = xmmword_3A3850;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v15 = v14;
    v58;
    v71 = v13;
    v59 = v15;
    v72 = v15;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v70 = static ErrorString.tableMap;
    v69 = xmmword_3A3870;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v18 = v17;
    v59;
    v71 = v16;
    v60 = v18;
    v72 = v18;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v70 = static ErrorString.columnMap;
    v69 = xmmword_3A3890;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v21 = v20;
    v60;
    v71 = v19;
    v61 = v21;
    v72 = v21;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v70 = static ErrorString.drop;
    v69 = xmmword_3A38B0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v24 = v23;
    v61;
    v71 = v22;
    v62 = v24;
    v72 = v24;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v70 = static ErrorString.sequence;
    v69 = xmmword_3A38D0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v27 = v26;
    v62;
    v71 = v25;
    v72 = v27;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v70 = static ErrorString.double;
    v69 = xmmword_3A38F0;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v30 = v29;
    v27;
    v71 = v28;
    v63 = v30;
    v72 = v30;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v70 = static ErrorString.integer;
    v69 = xmmword_3A3910;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v33 = v32;
    v63;
    v71 = v31;
    v64 = v33;
    v72 = v33;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v70 = static ErrorString.error;
    v69 = xmmword_3A3930;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v36 = v35;
    v64;
    v71 = v34;
    v65 = v36;
    v72 = v36;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v70 = static ErrorString.archive;
    v69 = xmmword_3A3950;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v39 = v38;
    v65;
    v71 = v37;
    v66 = v39;
    v72 = v39;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v70 = static ErrorString.limit;
    v69 = xmmword_3A3970;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v42 = v41;
    v66;
    v71 = v40;
    v67 = v42;
    v72 = v42;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v70 = static ErrorString.supportedStackTypes;
    v69 = xmmword_3A3990;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v45 = v44;
    v67;
    v71 = v43;
    v72 = v45;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v70 = static ErrorString.sortTypes;
    v69 = xmmword_3A39B0;
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v70, &v69, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v9, v9, v9);
    v68 = v47;
    v45;
    type metadata accessor for OS_os_log();
    v48 = static OS_os_log.default.getter(0);
    v56 = static os_log_type_t.error.getter();
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v50 = swift_allocObject(v49, 72, 7);
    v50[2] = 1;
    v50[3] = 2;
    v50[7] = &type metadata for String;
    v50[8] = lazy protocol witness table accessor for type String and conformance String();
    v50[4] = v46;
    v50[5] = v68;
    v68;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v48, v56, v50);

    v50;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = v46;
    *(v52 + 8) = v68;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v51);
    tc_v1_release(v55);
    return v54;
  }

  return v5;
}

NSURL *specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = 0;
  tc_v1_sframe_random_split(a1, a2, a3, a4, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v52 = v4;
    v69 = String.init(cString:)(v5);
    v54 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v54;
    v69 = v8;
    v55 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v55;
    v69 = v11;
    v56 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v56;
    v69 = v14;
    v57 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v57;
    v69 = v17;
    v58 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v58;
    v69 = v20;
    v59 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v59;
    v69 = v23;
    v60 = v25;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v60;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v66 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter(0);
    v53 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v44;
    v48[5] = v66;
    v66;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v53, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v44;
    *(v50 + 8) = v66;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
  }

  return __stack_chk_guard;
}

unint64_t one-time initialization function for table()
{
  *&static ErrorString.table = 0x656D61724653;
  *(&static ErrorString.table + 1) = 0xE600000000000000;
  *&xmmword_3A3830 = 0x6C62615461746144;
  result = 0xE900000000000065;
  *(&xmmword_3A3830 + 1) = 0xE900000000000065;
  return result;
}

unint64_t one-time initialization function for column()
{
  *&static ErrorString.column = 0x796172724153;
  *(&static ErrorString.column + 1) = 0xE600000000000000;
  *&xmmword_3A3850 = 0x756C6F4361746144;
  result = 0xEA00000000006E6DLL;
  *(&xmmword_3A3850 + 1) = 0xEA00000000006E6DLL;
  return result;
}

unint64_t one-time initialization function for tableMap()
{
  *&static ErrorString.tableMap = 0x6D617266735F6374;
  *(&static ErrorString.tableMap + 1) = 0xEF796C7070615F65;
  *&xmmword_3A3870 = 7364973;
  result = 0xE300000000000000;
  *(&xmmword_3A3870 + 1) = 0xE300000000000000;
  return result;
}

unint64_t one-time initialization function for columnMap()
{
  *&static ErrorString.columnMap = 0x61727261735F6374;
  *(&static ErrorString.columnMap + 1) = 0xEF796C7070615F79;
  *&xmmword_3A3890 = 7364973;
  result = 0xE300000000000000;
  *(&xmmword_3A3890 + 1) = 0xE300000000000000;
  return result;
}

unint64_t one-time initialization function for drop()
{
  *&static ErrorString.drop = 0x616E706F7264;
  *(&static ErrorString.drop + 1) = 0xE600000000000000;
  *&xmmword_3A38B0 = 0x7373694D706F7264;
  result = 0xEB00000000676E69;
  *(&xmmword_3A38B0 + 1) = 0xEB00000000676E69;
  return result;
}

unint64_t one-time initialization function for sequence()
{
  *&static ErrorString.sequence = 1953720684;
  *(&static ErrorString.sequence + 1) = 0xE400000000000000;
  strcpy(&xmmword_3A38D0, "SequenceType");
  result = 0xEC00000065707954;
  BYTE13(xmmword_3A38D0) = 0;
  HIWORD(xmmword_3A38D0) = -5120;
  return result;
}

unint64_t one-time initialization function for double()
{
  *&static ErrorString.double = 0x74616F6C66;
  *(&static ErrorString.double + 1) = 0xE500000000000000;
  *&xmmword_3A38F0 = 0x656C62756F44;
  result = 0xE600000000000000;
  *(&xmmword_3A38F0 + 1) = 0xE600000000000000;
  return result;
}

unint64_t one-time initialization function for integer()
{
  *&static ErrorString.integer = 0x656765746E692061;
  *(&static ErrorString.integer + 1) = 0xE900000000000072;
  *&xmmword_3A3910 = 0x746E49206E61;
  result = 0xE600000000000000;
  *(&xmmword_3A3910 + 1) = 0xE600000000000000;
  return result;
}

unint64_t one-time initialization function for error()
{
  *&static ErrorString.error = 0x203A726F727245;
  *(&static ErrorString.error + 1) = 0xE700000000000000;
  *&xmmword_3A3930 = 0;
  result = 0xE000000000000000;
  *(&xmmword_3A3930 + 1) = 0xE000000000000000;
  return result;
}

char *one-time initialization function for archive()
{
  strcpy(&static ErrorString.archive, "a Turi archive");
  HIBYTE(static ErrorString.archive) = -18;
  result = "Subset and Column Types" + 0x8000000000000000;
  *&xmmword_3A3950 = 0xD000000000000023;
  *(&xmmword_3A3950 + 1) = "Subset and Column Types" + 0x8000000000000000;
  return result;
}

char *one-time initialization function for limit()
{
  *&static ErrorString.limit = 0xD000000000000016;
  *(&static ErrorString.limit + 1) = "Type/array type." + 0x8000000000000000;
  result = "limit and column_types" + 0x8000000000000000;
  *&xmmword_3A3970 = 0xD000000000000017;
  *(&xmmword_3A3970 + 1) = "limit and column_types" + 0x8000000000000000;
  return result;
}

unint64_t one-time initialization function for supportedStackTypes()
{
  *&static ErrorString.supportedStackTypes = 0xD000000000000020;
  *(&static ErrorString.supportedStackTypes + 1) = "s of type Int, Double or String" + 0x8000000000000000;
  strcpy(&xmmword_3A3990, "type Sequence.");
  result = 0xEE002E65636E6575;
  HIBYTE(xmmword_3A3990) = -18;
  return result;
}

char *one-time initialization function for sortTypes()
{
  *&static ErrorString.sortTypes = 0xD000000000000034;
  *(&static ErrorString.sortTypes + 1) = "hm." + 0x8000000000000000;
  result = "ing', and 'datetime'" + 0x8000000000000000;
  *&xmmword_3A39B0 = 0xD00000000000001FLL;
  *(&xmmword_3A39B0 + 1) = "ing', and 'datetime'" + 0x8000000000000000;
  return result;
}

uint64_t __swift_memcpy24_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  return result;
}

uint64_t closure #1 in FeatureVectorizer.fitted(to:)(void *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v14 = v3;
  v5 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  DataFrame.subscript.getter(*a1, a1[1]);
  result = ColumnDescriptor.init(_:)(&v13);
  if (v4)
  {
    result = v13;
    *v13 = v4;
  }

  else
  {
    v12 = v14;
    *v14 = result;
    v12[1] = v9;
    v12[2] = v10;
    *(v12 + 24) = v11;
  }

  return result;
}

char FeatureVectorizer.Transformer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = &aColumndescript[-32] | 0x8000000000000000;
  if (a1 ^ 0xD000000000000011 | a2 ^ v3 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, v3, a1, a2, 0) & 1) == 0)
  {
    v5 = &aVectorizedfeat[-32] | 0x8000000000000000;
    if (a1 ^ 0xD000000000000016 | a2 ^ v5)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, v5, a1, a2, 0);
      a2, v5;
      return 2 - (v6 & 1);
    }

    else
    {
      a2, v5;
      return 1;
    }
  }

  else
  {
    a2, v3;
    return 0;
  }
}

unint64_t FeatureVectorizer.Transformer.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000016;
  if ((a1 & 1) == 0)
  {
    return 0xD000000000000011;
  }

  return result;
}

uint64_t FeatureVectorizer.Transformer.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = v6;
  v23 = a4;
  v24 = a3;
  v26 = a2;
  v7 = type metadata accessor for FeatureVectorizer.Transformer.CodingKeys(255, a5, a6, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for FeatureVectorizer<A>.Transformer.CodingKeys, v7);
  v20 = type metadata accessor for KeyedEncodingContainer(0, v7, WitnessTable);
  v25 = *(v20 - 8);
  v8 = *(v25 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)(v7, v7, WitnessTable, v11, v22);
  v18 = v26;
  v27 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
  v13 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
  v14 = v20;
  v26 = &v18;
  v15 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v18, &v27, v20, v12, v13);
  if (v15)
  {
    return (*(v25 + 8))(v26, v14);
  }

  v17 = v25;
  v28[0] = 1;
  KeyedEncodingContainer.encode(_:forKey:)(v24, v23, v28, v14);
  return (*(v17 + 8))(v26, v14);
}

void *FeatureVectorizer.Transformer.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = v4;
  v5 = a1;
  v6 = type metadata accessor for FeatureVectorizer.Transformer.CodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for FeatureVectorizer<A>.Transformer.CodingKeys, v6);
  v19 = type metadata accessor for KeyedDecodingContainer(0, v6, WitnessTable);
  v20 = *(v19 - 8);
  v7 = *(v20 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v23 = &v17;
  dispatch thunk of Decoder.container<A>(keyedBy:)(v6, v6, WitnessTable, v10, v18);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v22 = a1;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
    v24 = 0;
    v12 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
    v13 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)(v11, &v24, v19, v11, v12);
    v25[0] = 1;
    WitnessTable = v17;
    v17;
    KeyedDecodingContainer.decode(_:forKey:)(v25, v13);
    v16 = v15;
    (*(v20 + 8))(v23, v13);
    v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v16;
    v5 = WitnessTable;
    WitnessTable;
  }

  return v5;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return static Rectangle.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return Rectangle.CodingKeys.hashValue.getter(*v1);
}

void protocol witness for Hashable.hash(into:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  Rectangle.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)(a1);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  Rectangle.CodingKeys.hash(into:)(v6, *v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return FeatureVectorizer.Transformer.CodingKeys.stringValue.getter(*v1);
}

char protocol witness for CodingKey.init(stringValue:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  result = FeatureVectorizer.Transformer.CodingKeys.init(stringValue:)(a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.intValue.getter in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  return Rectangle.CodingKeys.intValue.getter();
}

char protocol witness for CodingKey.init(intValue:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  result = Rectangle.CodingKeys.init(intValue:)();
  *v3 = result;
  return result;
}

void *protocol witness for Decodable.init(from:) in conformance FeatureVectorizer<A>.Transformer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = FeatureVectorizer.Transformer.init(from:)(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v5)
  {
    *v6 = result;
    v6[1] = v8;
    v6[2] = v9;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [ColumnDescriptor]);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor, &type metadata for ColumnDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor, &type metadata for ColumnDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor = result;
  }

  return result;
}

void CMLDictionary.add(_:)(uint64_t a1)
{
  v145 = v1;
  v139 = type metadata accessor for URL(0);
  v2 = *(v139 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v143 = &v119;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v140 = &v119;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v144 = &v119;
  v11 = type metadata accessor for _Model.Parameters(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  outlined init with copy of _Model.Parameters(a1, &v119);
  switch(swift_getEnumCaseMultiPayload(&v119, v11))
  {
    case 0u:
      v15 = specialized handling<A, B>(_:_:)(v119);
      if (!v15)
      {
        BUG();
      }

      v16 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v16, v137);
      v17 = CMLFeatureValue.init(rawValue:ownsValue:)(v15, 1);
      CMLDictionary.add(key:value:)(0x726574695F78616DLL, 0xEE00736E6F697461, v17);
      goto LABEL_50;
    case 1u:
      v66 = specialized handling<A, B>(_:_:)(v119);
      if (!v66)
      {
        BUG();
      }

      v67 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v67, v136);
      v68 = CMLFeatureValue.init(rawValue:ownsValue:)(v66, 1);
      CMLDictionary.add(key:value:)(0x69735F6863746162, 0xEA0000000000657ALL, v68);
      goto LABEL_50;
    case 2u:
      v48 = v119;
      v49 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v49;
      v50 = CMLFeatureValue.__allocating_init(_:)(v48, v49);
      v49;
      CMLDictionary.add(key:value:)(0x6972616C696D6973, 0xEF657079745F7974, v50);
      goto LABEL_50;
    case 3u:
      v54 = v120[0];
      v55 = v120[1];
      v56 = specialized handling<A, B>(_:_:)();
      v144 = v55;
      if (!v56)
      {
        BUG();
      }

      v57 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v57, v133);
      v58 = CMLFeatureValue.init(rawValue:ownsValue:)(v56, 1);
      CMLDictionary.add(key:value:)(0x6C6F687365726874, 0xE900000000000064, v58);

      v59 = specialized handling<A, B>(_:_:)(v54);
      if (!v59)
      {
        BUG();
      }

      swift_initStackObject(v57, v134);
      v60 = CMLFeatureValue.init(rawValue:ownsValue:)(v59, 1);
      CMLDictionary.add(key:value:)(0xD00000000000001ALL, ("customEmbeddingURL" + 0x8000000000000000), v60);

      v61 = specialized handling<A, B>(_:_:)(v144);
      if (!v61)
      {
        BUG();
      }

      swift_initStackObject(v57, v135);
      v62 = CMLFeatureValue.init(rawValue:ownsValue:)(v61, 1);
      CMLDictionary.add(key:value:)(0x617461645F78616DLL, 0xEF7365737361705FLL, v62);
      goto LABEL_50;
    case 4u:
      v37 = v119;
      if (v119)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)(v119);
        v40 = v39;
        type metadata accessor for CMLFeatureValue();
        v40;
        v41 = CMLFeatureValue.__allocating_init(_:)(v38, v40);
        v40;
        CMLDictionary.add(key:value:)(0x65676175676E616CLL, 0xE800000000000000, v41);
      }

      return;
    case 5u:
      v75 = v119;
      v76 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v76;
      v77 = CMLFeatureValue.__allocating_init(_:)(v75, v76);
      v76;
      CMLDictionary.add(key:value:)(0x687469726F676C61, 0xE90000000000006DLL, v77);
      goto LABEL_50;
    case 6u:
      v142 = v2;
      v87 = v119;
      v88 = v120[0];
      v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?));
      outlined init with take of URL?(&v120[-1] + *(v89 + 48), v144);
      v90 = type metadata accessor for CMLFeatureValue();
      v88;
      v141 = v90;
      v91 = CMLFeatureValue.__allocating_init(_:)(v87, v88);
      v88;
      CMLDictionary.add(key:value:)(0x6E69646465626D65, 0xE900000000000067, v91);
      v92 = v139;

      v93 = v144;
      v94 = v140;
      outlined init with copy of URL?(v144, v140);
      if (__swift_getEnumTagSinglePayload(v94, 1, v92) == 1)
      {
        outlined destroy of URL?(v93);
        v95 = v94;
      }

      else
      {
        v114 = v143;
        (*(v142 + 32))(v143, v94, v92);
        v115 = URL.path.getter(v114);
        v117 = v116;
        v116;
        v118 = CMLFeatureValue.__allocating_init(_:)(v115, v117);
        v117;
        CMLDictionary.add(key:value:)(0xD000000000000012, ("algorithm_revision" + 0x8000000000000000), v118);

        (*(v142 + 8))(v143, v92);
        v95 = v144;
      }

      outlined destroy of URL?(v95);
      return;
    case 7u:
      v63 = specialized handling<A, B>(_:_:)(v119);
      if (!v63)
      {
        BUG();
      }

      v64 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v64, v132);
      v65 = CMLFeatureValue.init(rawValue:ownsValue:)(v63, 1);
      CMLDictionary.add(key:value:)(0xD000000000000012, ("prediction_window" + 0x8000000000000000), v65);
      goto LABEL_50;
    case 8u:
      v102 = specialized handling<A, B>(_:_:)(v119);
      if (!v102)
      {
        BUG();
      }

      v103 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v103, v131);
      v104 = CMLFeatureValue.init(rawValue:ownsValue:)(v102, 1);
      CMLDictionary.add(key:value:)(0xD000000000000011, ("annotation_scale" + 0x8000000000000000), v104);
      goto LABEL_50;
    case 9u:
      v45 = v119;
      v46 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v46;
      v47 = CMLFeatureValue.__allocating_init(_:)(v45, v46);
      v46;
      CMLDictionary.add(key:value:)(0x705F656369766564, 0xED00007963696C6FLL, v47);
      goto LABEL_50;
    case 0xAu:
      v99 = v119;
      v100 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v100;
      v101 = CMLFeatureValue.__allocating_init(_:)(v99, v100);
      v100;
      CMLDictionary.add(key:value:)(0xD000000000000010, ("annotation_origin" + 0x8000000000000000), v101);
      goto LABEL_50;
    case 0xBu:
      v34 = v119;
      v35 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v35;
      v36 = CMLFeatureValue.__allocating_init(_:)(v34, v35);
      v35;
      CMLDictionary.add(key:value:)(0xD000000000000011, ("annotation_position" + 0x8000000000000000), v36);
      goto LABEL_50;
    case 0xCu:
      v42 = v119;
      v43 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v43;
      v44 = CMLFeatureValue.__allocating_init(_:)(v42, v43);
      v43;
      CMLDictionary.add(key:value:)(0xD000000000000013, ("default_model_input_size" + 0x8000000000000000), v44);
      goto LABEL_50;
    case 0xDu:
      v81 = v120[0];
      v82 = specialized handling<A, B>(_:_:)(v119);
      if (!v82)
      {
        BUG();
      }

      v83 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v83, v129);
      v84 = CMLFeatureValue.init(rawValue:ownsValue:)(v82, 1);
      CMLDictionary.add(key:value:)(0x6469775F64697267, 0xEA00000000006874, v84);

      v85 = specialized handling<A, B>(_:_:)(v81);
      if (!v85)
      {
        BUG();
      }

      swift_initStackObject(v83, v130);
      v86 = CMLFeatureValue.init(rawValue:ownsValue:)(v85, 1);
      CMLDictionary.add(key:value:)(0x6965685F64697267, 0xEB00000000746867, v86);
      goto LABEL_50;
    case 0xEu:
      v31 = v119;
      v32 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v32;
      v33 = CMLFeatureValue.__allocating_init(_:)(v31, v32);
      v32;
      CMLDictionary.add(key:value:)(0x6C65646F6DLL, 0xE500000000000000, v33);
      goto LABEL_50;
    case 0xFu:
      v51 = v119;
      v52 = v120[0];
      type metadata accessor for CMLFeatureValue();
      v52;
      v53 = CMLFeatureValue.__allocating_init(_:)(v51, v52);
      v52;
      CMLDictionary.add(key:value:)(0x6966697373616C63, 0xEA00000000007265, v53);
      goto LABEL_50;
    case 0x10u:
      v18 = v119;
      v19 = tc_v1_flex_list_create(0);
      if (!v19)
      {
        BUG();
      }

      v20 = v19;
      v21 = type metadata accessor for CMLSequence();
      inited = swift_initStackObject(v21, v127);
      *(inited + 16) = v20;
      v144 = inited;
      *(inited + 24) = 1;
      v143 = *(v18 + 16);
      if (v143)
      {
        v18;
        v23 = 0;
        do
        {
          v24 = *(v18 + 8 * v23 + 32);
          v138[3] = &type metadata for Int;
          v138[4] = &protocol witness table for Int;
          v138[0] = v24;
          v25 = __swift_project_boxed_opaque_existential_0Tm(v138, &type metadata for Int);
          v26 = specialized handling<A, B>(_:_:)(*v25);
          if (!v26)
          {
            BUG();
          }

          v27 = v18;
          v28 = type metadata accessor for CMLFeatureValue();
          swift_initStackObject(v28, v128);
          v29 = CMLFeatureValue.init(rawValue:ownsValue:)(v26, 1);
          __swift_destroy_boxed_opaque_existential_1Tm(v138);
          CMLSequence.append(_:)(v29);
          v23 = (v23 + 1);

          v18 = v27;
        }

        while (v143 != v23);
        v27;
      }

      type metadata accessor for CMLFeatureValue();
      v30 = CMLFeatureValue.__allocating_init(_:)(v144);
      v18;
      CMLDictionary.add(key:value:)(0x69735F726579616CLL, 0xEB0000000073657ALL, v30);
      goto LABEL_50;
    case 0x11u:
      v69 = specialized handling<A, B>(_:_:)(v119);
      if (!v69)
      {
        BUG();
      }

      v70 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v70, v126);
      v71 = CMLFeatureValue.init(rawValue:ownsValue:)(v69, 1);
      CMLDictionary.add(key:value:)(0xD000000000000018, ("min_model_input_size" + 0x8000000000000000), v71);
      goto LABEL_50;
    case 0x12u:
      v96 = specialized handling<A, B>(_:_:)(v119);
      if (!v96)
      {
        BUG();
      }

      v97 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v97, v125);
      v98 = CMLFeatureValue.init(rawValue:ownsValue:)(v96, 1);
      CMLDictionary.add(key:value:)(0xD000000000000014, ("max_model_input_size" + 0x8000000000000000), v98);
      goto LABEL_50;
    case 0x13u:
      v108 = specialized handling<A, B>(_:_:)(v119);
      if (!v108)
      {
        BUG();
      }

      v109 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v109, v124);
      v110 = CMLFeatureValue.init(rawValue:ownsValue:)(v108, 1);
      CMLDictionary.add(key:value:)(0xD000000000000014, ("reporting_interval" + 0x8000000000000000), v110);
      goto LABEL_50;
    case 0x14u:
      v72 = specialized handling<A, B>(_:_:)(v119);
      if (!v72)
      {
        BUG();
      }

      v73 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v73, v123);
      v74 = CMLFeatureValue.init(rawValue:ownsValue:)(v72, 1);
      CMLDictionary.add(key:value:)(0xD000000000000012, ("CreateML/_Parameters.swift" + 0x8000000000000000), v74);
      goto LABEL_50;
    case 0x15u:
      v78 = specialized handling<A, B>(_:_:)(v119);
      if (!v78)
      {
        BUG();
      }

      v79 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v79, v122);
      v80 = CMLFeatureValue.init(rawValue:ownsValue:)(v78, 1);
      CMLDictionary.add(key:value:)(0x645F6C6574786574, 0xEE00797469736E65, v80);
      goto LABEL_50;
    case 0x16u:
      v105 = specialized handling<A, B>(_:_:)(v119);
      if (!v105)
      {
        BUG();
      }

      v106 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v106, v121);
      v107 = CMLFeatureValue.init(rawValue:ownsValue:)(v105, 1);
      CMLDictionary.add(key:value:)(0x74735F656C797473, 0xEE006874676E6572, v107);
      goto LABEL_50;
    case 0x17u:
      v111 = specialized handling<A, B>(_:_:)(v119);
      if (!v111)
      {
        BUG();
      }

      v112 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v112, v120);
      v113 = CMLFeatureValue.init(rawValue:ownsValue:)(v111, 1);
      CMLDictionary.add(key:value:)(0x6D6172665F6D756ELL, 0xEA00000000007365, v113);
LABEL_50:

      return;
    case 0x18u:
      JUMPOUT(0x208778);
  }
}

uint64_t type metadata accessor for _Model.Parameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for _Model.Parameters;
  if (!type metadata singleton initialization cache for _Model.Parameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for _Model.Parameters);
  }

  return result;
}

uint64_t outlined init with copy of _Model.Parameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _Model.Parameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for _Model.Parameters(char *__dst, char **__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *__src;
    *v3 = *__src;
    v3 = &v8[(v5 + 16) & ~v5];

    return v3;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 2u:
        *__dst = *__src;
        v7 = __src[1];
        *(v3 + 1) = v7;
        v7;
        swift_storeEnumTagMultiPayload(v3, a3, 2);
        return v3;
      case 4u:
        v19 = *__src;
        *v3 = *__src;
        v19;
        swift_storeEnumTagMultiPayload(v3, a3, 4);
        return v3;
      case 5u:
        *__dst = *__src;
        v18 = __src[1];
        *(v3 + 1) = v18;
        v18;
        swift_storeEnumTagMultiPayload(v3, a3, 5);
        return v3;
      case 6u:
        *__dst = *__src;
        v12 = __src[1];
        *(v3 + 1) = v12;
        v12;
        v13 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
        v14 = &v3[v13];
        v15 = __src + v13;
        v16 = type metadata accessor for URL(0);
        if (__swift_getEnumTagSinglePayload(v15, 1, v16))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
          memcpy(v14, v15, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(*(v16 - 8) + 16))(v14, v15, v16);
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
        }

        swift_storeEnumTagMultiPayload(v3, a3, 6);
        return v3;
      case 9u:
        *__dst = *__src;
        v10 = __src[1];
        *(v3 + 1) = v10;
        v10;
        swift_storeEnumTagMultiPayload(v3, a3, 9);
        return v3;
      case 0xAu:
        *__dst = *__src;
        v11 = __src[1];
        *(v3 + 1) = v11;
        v11;
        swift_storeEnumTagMultiPayload(v3, a3, 10);
        return v3;
      case 0xBu:
        *__dst = *__src;
        v20 = __src[1];
        *(v3 + 1) = v20;
        v20;
        swift_storeEnumTagMultiPayload(v3, a3, 11);
        return v3;
      case 0xCu:
        *__dst = *__src;
        v21 = __src[1];
        *(v3 + 1) = v21;
        v21;
        swift_storeEnumTagMultiPayload(v3, a3, 12);
        return v3;
      case 0xEu:
        *__dst = *__src;
        v23 = __src[1];
        *(v3 + 1) = v23;
        v23;
        swift_storeEnumTagMultiPayload(v3, a3, 14);
        return v3;
      case 0xFu:
        *__dst = *__src;
        v22 = __src[1];
        *(v3 + 1) = v22;
        v22;
        swift_storeEnumTagMultiPayload(v3, a3, 15);
        return v3;
      case 0x10u:
        v9 = *__src;
        *v3 = *__src;
        v9;
        swift_storeEnumTagMultiPayload(v3, a3, 16);
        return v3;
      default:
        result = memcpy(__dst, __src, *(v4 + 64));
        break;
    }
  }

  return result;
}

void destroy for _Model.Parameters(void *a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload(a1, a2))
  {
    case 2u:
    case 5u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
      a1[1];
      break;
    case 4u:

      break;
    case 6u:
      a1[1];
      v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
      v3 = type metadata accessor for URL(0);
      if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
      {
        (*(*(v3 - 8) + 8))(v2, v3);
      }

      break;
    case 0x10u:
      *a1;
      break;
    default:
      return;
  }
}

void *initializeWithCopy for _Model.Parameters(void *__dst, void *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 2u:
      *__dst = *__src;
      v5 = __src[1];
      __dst[1] = v5;
      v5;
      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      goto LABEL_17;
    case 4u:
      v16 = *__src;
      *__dst = *__src;
      v16;
      swift_storeEnumTagMultiPayload(__dst, a3, 4);
      goto LABEL_17;
    case 5u:
      *__dst = *__src;
      v15 = __src[1];
      __dst[1] = v15;
      v15;
      swift_storeEnumTagMultiPayload(__dst, a3, 5);
      goto LABEL_17;
    case 6u:
      *__dst = *__src;
      v9 = __src[1];
      __dst[1] = v9;
      v9;
      v10 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
      v11 = __dst + v10;
      v12 = __src + v10;
      v13 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
        memcpy(v11, v12, *(*(v14 - 8) + 64));
      }

      else
      {
        (*(*(v13 - 8) + 16))(v11, v12, v13);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
      }

      swift_storeEnumTagMultiPayload(__dst, a3, 6);
      goto LABEL_17;
    case 9u:
      *__dst = *__src;
      v7 = __src[1];
      __dst[1] = v7;
      v7;
      swift_storeEnumTagMultiPayload(__dst, a3, 9);
      goto LABEL_17;
    case 0xAu:
      *__dst = *__src;
      v8 = __src[1];
      __dst[1] = v8;
      v8;
      swift_storeEnumTagMultiPayload(__dst, a3, 10);
      goto LABEL_17;
    case 0xBu:
      *__dst = *__src;
      v17 = __src[1];
      __dst[1] = v17;
      v17;
      swift_storeEnumTagMultiPayload(__dst, a3, 11);
      goto LABEL_17;
    case 0xCu:
      *__dst = *__src;
      v18 = __src[1];
      __dst[1] = v18;
      v18;
      swift_storeEnumTagMultiPayload(__dst, a3, 12);
      goto LABEL_17;
    case 0xEu:
      *__dst = *__src;
      v20 = __src[1];
      __dst[1] = v20;
      v20;
      swift_storeEnumTagMultiPayload(__dst, a3, 14);
      goto LABEL_17;
    case 0xFu:
      *__dst = *__src;
      v19 = __src[1];
      __dst[1] = v19;
      v19;
      swift_storeEnumTagMultiPayload(__dst, a3, 15);
      goto LABEL_17;
    case 0x10u:
      v6 = *__src;
      *__dst = *__src;
      v6;
      swift_storeEnumTagMultiPayload(__dst, a3, 16);
LABEL_17:
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

void *assignWithCopy for _Model.Parameters(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of _Model.Parameters(__dst);
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 2u:
      *__dst = *__src;
      v5 = __src[1];
      __dst[1] = v5;
      v5;
      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 4u:
      v16 = *__src;
      *__dst = *__src;
      v16;
      swift_storeEnumTagMultiPayload(__dst, a3, 4);
      return __dst;
    case 5u:
      *__dst = *__src;
      v15 = __src[1];
      __dst[1] = v15;
      v15;
      swift_storeEnumTagMultiPayload(__dst, a3, 5);
      return __dst;
    case 6u:
      *__dst = *__src;
      v9 = __src[1];
      __dst[1] = v9;
      v9;
      v10 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
      v11 = __dst + v10;
      v12 = __src + v10;
      v13 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
        memcpy(v11, v12, *(*(v14 - 8) + 64));
      }

      else
      {
        (*(*(v13 - 8) + 16))(v11, v12, v13);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
      }

      swift_storeEnumTagMultiPayload(__dst, a3, 6);
      return __dst;
    case 9u:
      *__dst = *__src;
      v7 = __src[1];
      __dst[1] = v7;
      v7;
      swift_storeEnumTagMultiPayload(__dst, a3, 9);
      return __dst;
    case 0xAu:
      *__dst = *__src;
      v8 = __src[1];
      __dst[1] = v8;
      v8;
      swift_storeEnumTagMultiPayload(__dst, a3, 10);
      return __dst;
    case 0xBu:
      *__dst = *__src;
      v17 = __src[1];
      __dst[1] = v17;
      v17;
      swift_storeEnumTagMultiPayload(__dst, a3, 11);
      return __dst;
    case 0xCu:
      *__dst = *__src;
      v18 = __src[1];
      __dst[1] = v18;
      v18;
      swift_storeEnumTagMultiPayload(__dst, a3, 12);
      return __dst;
    case 0xEu:
      *__dst = *__src;
      v20 = __src[1];
      __dst[1] = v20;
      v20;
      swift_storeEnumTagMultiPayload(__dst, a3, 14);
      return __dst;
    case 0xFu:
      *__dst = *__src;
      v19 = __src[1];
      __dst[1] = v19;
      v19;
      swift_storeEnumTagMultiPayload(__dst, a3, 15);
      return __dst;
    case 0x10u:
      v6 = *__src;
      *__dst = *__src;
      v6;
      swift_storeEnumTagMultiPayload(__dst, a3, 16);
      return __dst;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *initializeWithTake for _Model.Parameters(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 6)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  *__dst = *__src;
  v4 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
  v5 = &__dst[v4];
  v6 = &__src[v4];
  v7 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(v5, v6, v7);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  swift_storeEnumTagMultiPayload(__dst, a3, 6);
  return __dst;
}

char *assignWithTake for _Model.Parameters(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of _Model.Parameters(__dst);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 6)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    *__dst = *__src;
    v4 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
    v5 = &__dst[v4];
    v6 = &__src[v4];
    v7 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(v5, v6, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 32))(v5, v6, v7);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload(__dst, a3, 6);
  }

  return __dst;
}

uint64_t type metadata completion function for _Model.Parameters(uint64_t a1)
{
  v7[0] = &value witness table for Builtin.Int64 + 64;
  v7[1] = &value witness table for Builtin.Int64 + 64;
  v7[2] = &unk_345F48;
  v7[3] = &unk_345F60;
  v7[4] = &unk_345F78;
  v7[5] = &unk_345F48;
  result = type metadata accessor for URL?(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8);
    swift_getTupleTypeLayout2(v6, &unk_345F48);
    v7[6] = v6;
    v7[7] = &value witness table for Builtin.Int64 + 64;
    v7[8] = &value witness table for Builtin.Int64 + 64;
    v7[9] = &unk_345F48;
    v7[10] = &unk_345F48;
    v7[11] = &unk_345F48;
    v7[12] = &unk_345F48;
    v7[13] = &unk_345F90;
    v7[14] = &unk_345F48;
    v7[15] = &unk_345F48;
    v7[16] = &value witness table for Builtin.BridgeObject + 64;
    v7[17] = &value witness table for Builtin.Int64 + 64;
    v7[18] = &value witness table for Builtin.Int64 + 64;
    v7[19] = &value witness table for Builtin.Int64 + 64;
    v7[20] = &value witness table for Builtin.Int64 + 64;
    v7[21] = &value witness table for Builtin.Int64 + 64;
    v7[22] = &value witness table for Builtin.Int64 + 64;
    v7[23] = &value witness table for Builtin.Int64 + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 24, v7, v4, v5);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for URL?(uint64_t a1)
{
  result = lazy cache variable for type metadata for URL?;
  if (!lazy cache variable for type metadata for URL?)
  {
    v2 = type metadata accessor for URL(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for URL? = result;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *__src;
    *v3 = *__src;
    v3 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *__src;
      *v3 = *__src;
      v13;
      swift_storeEnumTagMultiPayload(v3, a3, 2);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        return memcpy(__dst, __src, *(v4 + 64));
      }

      v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v9 = type metadata accessor for URL(0);
          (*(*(v9 - 8) + 16))(__dst, __src, v9);
          v10 = v8;
          v11 = 0;
          goto LABEL_14;
        case 1u:
          v29 = type metadata accessor for URL(0);
          (*(*(v29 - 8) + 16))(__dst, __src, v29);
          v30 = 1;
          goto LABEL_13;
        case 2u:
          v23 = *__src;
          *v3 = *__src;
          v23;
          v30 = 2;
          goto LABEL_13;
        case 3u:
          v31 = v8;
          v24 = *__src;
          v25 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v25);
          *__dst = v24;
          __dst[8] = v25;
          *(__dst + 2) = *(__src + 2);
          v26 = *(__src + 3);
          v3[3] = v26;
          v3[4] = *(__src + 4);
          v27 = *(__src + 5);
          v3[5] = v27;
          v28 = *(__src + 4);
          *(v3 + 3) = *(__src + 3);
          *(v3 + 4) = v28;
          *(v3 + 80) = __src[80];
          v26;
          v27;
          v11 = 3;
          __dst = v3;
          v10 = v31;
          goto LABEL_14;
        case 4u:
          v15 = type metadata accessor for DataFrame(0);
          (*(*(v15 - 8) + 16))(__dst, __src, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v17 = v16[12];
          *&__dst[v17] = *&__src[v17];
          v18 = *&__src[v17 + 8];
          *(v3 + v17 + 8) = v18;
          v19 = v16[16];
          *(v3 + v19) = *&__src[v19];
          v20 = *&__src[v19 + 8];
          *(v3 + v19 + 8) = v20;
          v21 = v16[20];
          *(v3 + v21 + 32) = __src[v21 + 32];
          v22 = *&__src[v21];
          *(v3 + v21 + 16) = *&__src[v21 + 16];
          *(v3 + v21) = v22;
          v18;
          v20;
          v30 = 4;
LABEL_13:
          v11 = v30;
          __dst = v3;
          v10 = v8;
LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v10, v11);
          swift_storeEnumTagMultiPayload(v3, a3, 1);
          break;
        case 5u:
          JUMPOUT(0x209578);
      }
    }
  }

  return v3;
}

uint64_t destroy for MLSoundClassifier.ModelParameters.ValidationData(uint64_t *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    return *a1;
  }

  if (result == 1)
  {
    v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
      case 1:
        v4 = type metadata accessor for URL(0);
        result = (*(*(v4 - 8) + 8))(a1, v4);
        break;
      case 2:
        return *a1;
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 2));
        a1[3];
        result = a1[5];
        break;
      case 4:
        v5 = type metadata accessor for DataFrame(0);
        (*(*(v5 - 8) + 8))(a1, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(a1 + *(v6 + 48) + 8);
        result = *(a1 + *(v6 + 64) + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

void *initializeWithCopy for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *__src;
    *v4 = *__src;
    v10;
    swift_storeEnumTagMultiPayload(v4, a3, 2);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(__dst, __src, v7);
        v8 = v6;
        v9 = 0;
        goto LABEL_12;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 16))(__dst, __src, v26);
        v27 = 1;
        goto LABEL_11;
      case 2u:
        v20 = *__src;
        *v4 = *__src;
        v20;
        v27 = 2;
        goto LABEL_11;
      case 3u:
        v28 = v6;
        v21 = *__src;
        v22 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v22);
        *__dst = v21;
        __dst[8] = v22;
        *(__dst + 2) = *(__src + 2);
        v23 = *(__src + 3);
        v4[3] = v23;
        v4[4] = *(__src + 4);
        v24 = *(__src + 5);
        v4[5] = v24;
        v25 = *(__src + 4);
        *(v4 + 3) = *(__src + 3);
        *(v4 + 4) = v25;
        *(v4 + 80) = __src[80];
        v23;
        v24;
        v9 = 3;
        __dst = v4;
        v8 = v28;
        goto LABEL_12;
      case 4u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v14 = v13[12];
        *&__dst[v14] = *&__src[v14];
        v15 = *&__src[v14 + 8];
        *(v4 + v14 + 8) = v15;
        v16 = v13[16];
        *(v4 + v16) = *&__src[v16];
        v17 = *&__src[v16 + 8];
        *(v4 + v16 + 8) = v17;
        v18 = v13[20];
        *(v4 + v18 + 32) = __src[v18 + 32];
        v19 = *&__src[v18];
        *(v4 + v18 + 16) = *&__src[v18 + 16];
        *(v4 + v18) = v19;
        v15;
        v17;
        v27 = 4;
LABEL_11:
        v9 = v27;
        __dst = v4;
        v8 = v6;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
        swift_storeEnumTagMultiPayload(v4, a3, 1);
        break;
    }
  }

  return v4;
}

void *assignWithCopy for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *__src;
      *v3 = *__src;
      v10;
      swift_storeEnumTagMultiPayload(v3, a3, 2);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
      }

      v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v7 = type metadata accessor for URL(0);
          (*(*(v7 - 8) + 16))(__dst, __src, v7);
          v8 = v6;
          v9 = 0;
          goto LABEL_13;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v27 = 1;
          goto LABEL_12;
        case 2u:
          v20 = *__src;
          *v3 = *__src;
          v20;
          v27 = 2;
          goto LABEL_12;
        case 3u:
          v28 = v6;
          v21 = *__src;
          v22 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v22);
          *__dst = v21;
          __dst[8] = v22;
          *(__dst + 2) = *(__src + 2);
          v23 = *(__src + 3);
          v3[3] = v23;
          v3[4] = *(__src + 4);
          v24 = *(__src + 5);
          v3[5] = v24;
          v25 = *(__src + 4);
          *(v3 + 3) = *(__src + 3);
          *(v3 + 4) = v25;
          *(v3 + 80) = __src[80];
          v23;
          v24;
          v9 = 3;
          __dst = v3;
          v8 = v28;
          goto LABEL_13;
        case 4u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 16))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v14 = v13[12];
          *&__dst[v14] = *&__src[v14];
          v15 = *&__src[v14 + 8];
          *(v3 + v14 + 8) = v15;
          v16 = v13[16];
          *(v3 + v16) = *&__src[v16];
          v17 = *&__src[v16 + 8];
          *(v3 + v16 + 8) = v17;
          v18 = v13[20];
          *(v3 + v18 + 32) = __src[v18 + 32];
          v19 = *&__src[v18];
          *(v3 + v18 + 16) = *&__src[v18 + 16];
          *(v3 + v18) = v19;
          v15;
          v17;
          v27 = 4;
LABEL_12:
          v9 = v27;
          __dst = v3;
          v8 = v6;
LABEL_13:
          swift_storeEnumTagMultiPayload(__dst, v8, v9);
          swift_storeEnumTagMultiPayload(v3, a3, 1);
          break;
      }
    }
  }

  return v3;
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLSoundClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 4)
  {
    v11 = type metadata accessor for DataFrame(0);
    (*(*(v11 - 8) + 32))(__dst, __src, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v12[12]] = *&__src[v12[12]];
    *&__dst[v12[16]] = *&__src[v12[16]];
    v13 = v12[20];
    v14 = *&__src[v13 + 16];
    *&__dst[v13] = *&__src[v13];
    *&__dst[v13 + 16] = v14;
    __dst[v13 + 32] = __src[v13 + 32];
    v15 = 4;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v15 = 1;
LABEL_9:
    v8 = v15;
    v7 = v4;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
    goto LABEL_12;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = v4;
  v8 = 0;
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_12:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 4)
  {
    v11 = type metadata accessor for DataFrame(0);
    (*(*(v11 - 8) + 32))(__dst, __src, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v12[12]] = *&__src[v12[12]];
    *&__dst[v12[16]] = *&__src[v12[16]];
    v13 = v12[20];
    v14 = *&__src[v13 + 16];
    *&__dst[v13] = *&__src[v13];
    *&__dst[v13 + 16] = v14;
    __dst[v13 + 32] = __src[v13 + 32];
    v15 = 4;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v15 = 1;
LABEL_10:
    v8 = v15;
    v7 = v4;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
    goto LABEL_13;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = v4;
  v8 = 0;
LABEL_11:
  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_13:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

uint64_t type metadata completion function for MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_345FB8;
  result = type metadata accessor for MLSoundClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

Swift::tuple_training_OpaquePointer_validation_OpaquePointer_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.ValidationData.splitFeatures(trainingData:)(Swift::OpaquePointer trainingData)
{
  v23 = v1;
  v3 = v2;
  rawValue = trainingData._rawValue;
  v4 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v2, v22);
  switch(swift_getEnumCaseMultiPayload(v22, v7))
  {
    case 0u:
      v3 = specialized Collection.randomSplit<A, B>(strategy:)(v22[0], v22[1], v23, rawValue);
      v13 = v12;
      goto LABEL_8;
    case 1u:
      v13 = rawValue;
      outlined init with take of MLSoundClassifier.DataSource(v22, v22);
      v16 = MLSoundClassifier.DataSource.annotatedFeatures()();
      if (v17)
      {
        goto LABEL_7;
      }

      v3 = v16;
      if (v16)
      {
        v16;
        outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.DataSource);
        v13;
        v3;
      }

      else
      {
        v13 = "max_item_neighborhood_size" + 0x8000000000000000;
        v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
        *v21 = 0xD000000000000031;
        *(v21 + 8) = "max_item_neighborhood_size" + 0x8000000000000000;
        *(v21 + 16) = 0;
        *(v21 + 32) = 0;
        *(v21 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v20);
LABEL_7:
        outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.DataSource);
      }

LABEL_8:
      v18 = v13;
      v19 = v3;
      result.validation.value._rawValue = v19;
      result.training._rawValue = v18;
      result.validation.is_nil = v11;
      return result;
    case 2u:
      outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v13 = "max_item_neighborhood_size" + 0x8000000000000000;
      v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
      *v15 = 0xD000000000000031;
      *(v15 + 8) = "max_item_neighborhood_size" + 0x8000000000000000;
      *(v15 + 16) = 0;
      *(v15 + 32) = 0;
      *(v15 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v14);
      goto LABEL_8;
    case 3u:
      v13 = rawValue;
      rawValue;
      v3 = 0;
      goto LABEL_8;
  }
}

uint64_t outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

Swift::tuple_training_OpaquePointer_validation_OpaquePointer_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.ValidationData.splitFiles(trainingData:)(Swift::OpaquePointer trainingData)
{
  v34 = v1;
  rawValue = trainingData._rawValue;
  v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v33 = v31;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v32 = v31;
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v31;
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v2, v31);
  switch(swift_getEnumCaseMultiPayload(v31, v9))
  {
    case 0u:
      v3 = specialized Collection.randomSplit<A, B>(strategy:)(v31[0], v31[1], v32, rawValue);
      v13 = v15;
      goto LABEL_15;
    case 1u:
      v20 = v32;
      outlined init with take of MLSoundClassifier.DataSource(v31, v32);
      v21 = v34;
      v22 = MLSoundClassifier.DataSource.labeledSounds()();
      if (v21)
      {
        goto LABEL_8;
      }

      v26 = v22;
      v3 = specialized Sequence.flatMap<A>(_:)(v22);
      v26;
      if (!*(v3 + 16))
      {
        v3;
        v13 = "uld use features." + 0x8000000000000000;
        v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
        *v30 = 0xD00000000000002ELL;
        *(v30 + 8) = "uld use features." + 0x8000000000000000;
        *(v30 + 16) = 0;
        *(v30 + 32) = 0;
        *(v30 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v29);
LABEL_8:
        v19 = v20;
        goto LABEL_9;
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLSoundClassifier.DataSource);
      goto LABEL_14;
    case 2u:
      v16 = v33;
      *v33 = v31[0];
      swift_storeEnumTagMultiPayload(v16, v3, 2);
      v17 = v34;
      v18 = MLSoundClassifier.DataSource.labeledSounds()();
      if (v17)
      {
        v19 = v33;
LABEL_9:
        outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLSoundClassifier.DataSource);
      }

      else
      {
        v23 = v18;
        v3 = specialized Sequence.flatMap<A>(_:)(v18);
        v23;
        outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLSoundClassifier.DataSource);
        if (*(v3 + 16))
        {
LABEL_14:
          v13 = rawValue;
          rawValue;
        }

        else
        {
          v3;
          v13 = "uld use features." + 0x8000000000000000;
          v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
          *v25 = 0xD00000000000002ELL;
          *(v25 + 8) = "uld use features." + 0x8000000000000000;
          *(v25 + 16) = 0;
          *(v25 + 32) = 0;
          *(v25 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v24);
        }
      }

LABEL_15:
      v27 = v13;
      v28 = v3;
      result.validation.value._rawValue = v28;
      result.training._rawValue = v27;
      result.validation.is_nil = v14;
      return result;
    case 3u:
      v13 = rawValue;
      rawValue;
      v3 = 0;
      goto LABEL_15;
  }
}

uint64_t MLSoundClassifier.ModelParameters.ValidationData.validate(modelParameters:)(uint64_t a1)
{
  v2 = v1;
  v12 = a1;
  v3 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v13 = &v12;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v2, &v12);
  result = swift_getEnumCaseMultiPayload(&v12, v6);
  switch(result)
  {
    case 0:
    case 3:
      return result;
    case 1:
      v11 = v13;
      outlined init with take of MLSoundClassifier.DataSource(&v12, v13);
      MLSoundClassifier.DataSource.validate(modelParameters:)(v12);
      result = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLSoundClassifier.DataSource);
      break;
    case 2:
      result = outlined destroy of MLActivityClassifier.ModelParameters(&v12, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      break;
  }

  return result;
}

uint64_t destroy for RecommenderModel(void *a1, uint64_t a2)
{
  *a1, a2;
  a1[1], a2;
  a1[2], a2;
  a1[3], a2;
  a1[7], a2;
  a1[8], a2;
  a1[9];
  v3 = a1[13];
  if (v3)
  {
    v3, a2;
    a1[14], a2;
  }

  a1[15], a2;
  return a1[16], a2;
}

uint64_t initializeWithCopy for RecommenderModel(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  *(a1 + 8) = v4;
  v5 = a2[2];
  *(a1 + 16) = v5;
  v14 = a2[3];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v6 = a2[7];
  *(a1 + 56) = v6;
  v15 = a2[8];
  *(a1 + 64) = v15;
  v12 = a2[9];
  v7 = a2[11];
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = v7;
  v13 = a2[13];
  v3;
  v4;
  v5;
  v14;
  v6;
  v15;
  v12;
  if (v13)
  {
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v13;
    v8 = a2[14];
    *(a1 + 112) = v8;
    v13;
    v8;
  }

  else
  {
    *(a1 + 112) = a2[14];
    *(a1 + 96) = *(a2 + 6);
  }

  v9 = a2[15];
  *(a1 + 120) = v9;
  v10 = a2[16];
  *(a1 + 128) = v10;
  *(a1 + 136) = *(a2 + 17);
  v9;
  v10;
  return a1;
}

uint64_t *assignWithCopy for RecommenderModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6;
  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v7;
  v8;
  v9 = a2[3];
  v10 = a1[3];
  a1[3] = v9;
  v9;
  v10;
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  v11 = a2[7];
  v12 = a1[7];
  a1[7] = v11;
  v11;
  v12;
  v13 = a2[8];
  v14 = a1[8];
  a1[8] = v13;
  v13;
  v14;
  v15 = a1[9];
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v16 = a1 + 12;
  v17 = a2 + 12;
  v18 = a1[13];
  v19 = a2[13];
  if (v18)
  {
    if (v19)
    {
      a1[12] = a2[12];
      v20 = a2[13];
      a1[13] = v20;
      v20;
      v18;
      v21 = a2[14];
      v22 = a1[14];
      a1[14] = v21;
      v21;
      v22;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v16 = *v17;
      a1[14] = a2[14];
    }
  }

  else if (v19)
  {
    a1[12] = a2[12];
    v23 = a2[13];
    a1[13] = v23;
    v24 = a2[14];
    a1[14] = v24;
    v23;
    v24;
  }

  else
  {
    a1[14] = a2[14];
    *v16 = *v17;
  }

  v25 = a2[15];
  v26 = a1[15];
  a1[15] = v25;
  v25;
  v26;
  v27 = a2[16];
  v28 = a1[16];
  a1[16] = v27;
  v27;
  v28;
  a1[17] = a2[17];
  a1[18] = a2[18];
  return a1;
}

uint64_t *assignWithTake for RecommenderModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1[2];
  a1[2] = a2[2];
  v5;
  v6 = a1[3];
  a1[3] = a2[3];
  v6;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v7 = a1[7];
  a1[7] = a2[7];
  v7;
  v8 = a1[8];
  a1[8] = a2[8];
  v8;
  v9 = a1[9];
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v10 = a1 + 12;
  v11 = a2 + 12;
  v12 = a1[13];
  if (v12)
  {
    v13 = a2[13];
    if (v13)
    {
      a1[12] = a2[12];
      a1[13] = v13;
      v12;
      v14 = a1[14];
      a1[14] = a2[14];
      v14;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v10 = *v11;
      a1[14] = a2[14];
    }
  }

  else
  {
    a1[14] = a2[14];
    *v10 = *v11;
  }

  v15 = a1[15];
  a1[15] = a2[15];
  v15;
  v16 = a1[16];
  a1[16] = a2[16];
  v16;
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for RecommenderModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for RecommenderModel(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 152) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

uint64_t type metadata completion function for Recommendation(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v7[0] = *(v1 - 8) + 64;
    v4 = swift_checkMetadataState(319, *(a1 + 24));
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v7[1] = *(v4 - 8) + 64;
      v7[2] = &value witness table for Builtin.Int64 + 64;
      v7[3] = &value witness table for Builtin.Int64 + 64;
      v2 = 0;
      swift_initStructMetadata(a1, 0, 4, v7, a1 + 32);
    }
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for Recommendation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = v7 | *(v5 + 80) & 0xF8;
  if (v8 > 7 || ((v7 | *(v5 + 80)) & 0x100000) != 0 || (v9 = ~v7, v10 = *(v5 + 64) + v7, v11 = *(v6 + 64), ((((v11 + (v9 & v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v18 = *a2;
    *a1 = *a2;
    v18;
    return (v18 + (((v8 | 7) + 16) & ~(v8 | 7)));
  }

  else
  {
    v12 = v11 + 7;
    v20 = *(a3 + 24);
    v19 = *(v4 - 8);
    (*(v5 + 16))(a1);
    v13 = v9 & (a1 + v10);
    v14 = v9 & (a2 + v10);
    (*(v19 + 16))(v13, v14, v20);
    result = a1;
    v16 = ((v12 + v13) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return result;
}

uint64_t destroy for Recommendation(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  (*(v2 + 8))(a1);
  return (*(*(*(a2 + 24) - 8) + 8))((*(*(*(a2 + 24) - 8) + 80) + *(v2 + 64) + a1) & ~*(*(*(a2 + 24) - 8) + 80));
}

uint64_t initializeWithCopy for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 16))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 24))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 32))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 40))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for Recommendation(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  v10 = v7;
  if (v9 > v7)
  {
    v10 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = ~*(v8 + 80);
  v12 = *(v6 + 64) + *(v8 + 80);
  if (v10 < a2)
  {
    v13 = ((((*(v8 + 64) + (v11 & v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = a2 - v10 + 1;
    v15 = 2;
    if ((v13 & 0xFFFFFFF8) == 0)
    {
      v15 = v14;
    }

    v16 = 1;
    if (v15 >= 0x100)
    {
      v16 = 2 * (v15 >= &loc_10000) + 2;
    }

    result = 0;
    if (v15 < 2)
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 0:
        goto LABEL_20;
      case 1:
        v18 = *(a1 + v13);
        goto LABEL_16;
      case 2:
        v18 = *(a1 + v13);
        goto LABEL_16;
      case 3:
        BUG();
      case 4:
        v18 = *(a1 + v13);
LABEL_16:
        if (v18)
        {
          v19 = v18 - 1;
          v20 = 0;
          if ((v13 & 0xFFFFFFF8) != 0)
          {
            v19 = 0;
            v20 = *a1;
          }

          return v10 + (v19 | v20) + 1;
        }

LABEL_20:
        if (!v10)
        {
          return result;
        }

        break;
    }
  }

  if (v7 >= v9)
  {
    v9 = v7;
    v5 = v4;
  }

  else
  {
    a1 = (v11 & (a1 + v12));
  }

  return __swift_getEnumTagSinglePayload(a1, v9, v5);
}

uint64_t storeEnumTagSinglePayload for Recommendation(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = *(result - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = v9;
  if (v11 > v9)
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ~v13;
  v16 = (((((v15 & v14) + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = 0;
  v18 = 1;
  if (v12 < a3)
  {
    v19 = a3 - v12 + 1;
    v20 = 2;
    if (!v16)
    {
      v20 = v19;
    }

    v21 = 2 * (v20 >= &loc_10000) + 2;
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    v17 = 0;
    if (v20 >= 2)
    {
      v17 = v21;
    }
  }

  if (a2 > v12)
  {
    if (v16)
    {
      __bzero(a1, v16);
      *a1 = a2 + ~v12;
    }

    else
    {
      v18 = a2 - v12;
    }

    result = v17;
    switch(v17)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v16) = v18;
        return result;
      case 2u:
        *(a1 + v16) = v18;
        return result;
      case 3u:
        goto LABEL_28;
      case 4u:
        *(a1 + v16) = v18;
        return result;
    }
  }

  switch(v17)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v16) = 0;
      break;
    case 2u:
      *(a1 + v16) = 0;
      break;
    case 3u:
LABEL_28:
      BUG();
    case 4u:
      *(a1 + v16) = 0;
      break;
  }

  if (a2)
  {
    if (v9 >= v11)
    {
      v22 = a1;
      v11 = v9;
      v7 = result;
    }

    else
    {
      v22 = v15 & (a1 + v14);
    }

    return __swift_storeEnumTagSinglePayload(v22, a2, v11, v7);
  }

  return result;
}

uint64_t Dictionary<>.updateValue(tensor:forKey:prefix:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v50 = a5;
  v47 = a4;
  v48 = a3;
  v7 = type metadata accessor for TensorShape(0);
  v42 = *(v7 - 1);
  v8 = *(v42 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v39 = v5;
  v11 = *v5;
  v12._countAndFlagsBits = a2;
  v12._object = v48;
  v41 = Dictionary<>.getTensorNames(forKey:prefix:)(v12, v47, v50);
  v40 = v13;
  v44 = v14;
  v43 = v15;
  v48 = a1;
  Tensor.shape.getter();
  v16 = lazy protocol witness table accessor for type TensorShape and conformance TensorShape();
  v17 = dispatch thunk of Collection.count.getter(v7, v16);
  if (v17)
  {
    v18 = v17;
    v46 = _swiftEmptyArrayStorage;
    v19 = 0;
    if (v17 > 0)
    {
      v19 = v17;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v49 = v46;
    v45 = v37;
    v50 = v7;
    v20 = v16;
    dispatch thunk of Collection.startIndex.getter(v7, v16);
    if (v18 < 0)
    {
      BUG();
    }

    v47 = v18;
    v7 = v50;
    v21 = v45;
    v22 = v49;
    do
    {
      v23 = dispatch thunk of Collection.subscript.read(v37, v38, v7, v20);
      v50 = *v24;
      v23(v37, 0);
      v46 = v22;
      v25 = v20;
      v26 = v22[2];
      v27 = v22[3];
      v28 = v26 + 1;
      if (v27 >> 1 <= v26)
      {
        v49 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v28, 1);
        v25 = v49;
        v21 = v45;
        v22 = v46;
      }

      v29 = v50;
      v22[2] = v28;
      *&v22[v26 + 4] = v29;
      v20 = v25;
      dispatch thunk of Collection.formIndex(after:)(v38, v7, v25);
      --v47;
    }

    while (v47);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
    v21 = v37;
  }

  (*(v42 + 8))(v21, v7);
  v30 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v39);
  v37[0] = *v30;
  v32 = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v44, v43, isUniquelyReferenced_nonNull_native);
  v32;
  *v30 = v37[0];
  v33 = Tensor.scalars<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
  v34 = swift_isUniquelyReferenced_nonNull_native(*v30);
  v37[0] = *v30;
  v35 = v40;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v41, v40, v34);
  v35;
  result = v37[0];
  *v30 = v37[0];
  return result;
}

uint64_t Dictionary<>.getTensorNames(forKey:prefix:)(Swift::String a1, uint64_t a2, void *a3)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (a3)
  {
    a3;
    v5._countAndFlagsBits = 46;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = object;
    String.append(_:)(v5);
    countAndFlagsBits = a2;
    object = a3;
  }

  else
  {
    a1._object;
  }

  object;
  v6._countAndFlagsBits = 0x65706168732ELL;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  return countAndFlagsBits;
}

uint64_t lazy protocol witness table accessor for type TensorShape and conformance TensorShape()
{
  result = lazy protocol witness table cache variable for type TensorShape and conformance TensorShape;
  if (!lazy protocol witness table cache variable for type TensorShape and conformance TensorShape)
  {
    v1 = type metadata accessor for TensorShape(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TensorShape, v1);
    lazy protocol witness table cache variable for type TensorShape and conformance TensorShape = result;
  }

  return result;
}

uint64_t Dictionary<>.tensor(forKey:prefix:)(Swift::String a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = v5;
  v56 = a3;
  v52 = v4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v49;
  v56 = Dictionary<>.getTensorNames(forKey:prefix:)(a1, a2, v56);
  v12 = v11;
  v14 = v13;
  v16 = specialized Dictionary.subscript.getter(v15, v13, a4);
  v14;
  if (!v16)
  {
    v33 = v12;
LABEL_24:
    v33;
    v37 = type metadata accessor for Tensor(0);
    return __swift_storeEnumTagSinglePayload(v52, 1, 1, v37);
  }

  v55 = v16;
  v17 = specialized Dictionary.subscript.getter(v56, v12, a4);
  v12;
  if (!v17)
  {
    v33 = v55;
    goto LABEL_24;
  }

  v18 = v55;
  v19 = *(v55 + 16);
  if (!v19 || (v20 = *(v55 + 32), v20.f64[0] < 1.0) || (v21 = _mm_or_pd(_mm_and_pd(xmmword_33DFE0, v20), xmmword_345A50), v21.f64[0] = v21.f64[0] + v20.f64[0], _mm_round_sd(v21, v21, 11).f64[0] != v20.f64[0]))
  {
LABEL_21:
    v17;
    v34 = specialized _arrayForceCast<A, B>(_:)(v18);
    v18;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    static MLCreateError.invalidTensorDimensions(value:)(v34);
    v34;
    return swift_willThrow();
  }

  if (v19 != &dword_0 + 1)
  {
    v22 = 5;
    do
    {
      v23 = v22 - 4 + 1;
      if (__OFADD__(1, v22 - 4))
      {
        BUG();
      }

      v24 = *(v55 + 8 * v22);
      if (v24.f64[0] < 1.0)
      {
        goto LABEL_21;
      }

      v25 = _mm_or_pd(_mm_and_pd(v24, xmmword_33DFE0), xmmword_345A50);
      v25.f64[0] = v25.f64[0] + v24.f64[0];
      if (_mm_round_sd(v25, v25, 11).f64[0] != v24.f64[0])
      {
        goto LABEL_21;
      }

      ++v22;
    }

    while (v23 != v19);
  }

  v50 = v17;
  v53 = _swiftEmptyArrayStorage;
  v26 = 0;
  v56 = v19;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v27 = v56;
  v28 = v55;
  v29 = v53;
  do
  {
    v30 = *(v28 + 8 * v26 + 32);
    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      BUG();
    }

    if (v30 <= -9.223372036854778e18)
    {
      BUG();
    }

    if (v30 >= 9.223372036854776e18)
    {
      BUG();
    }

    v53 = v29;
    v31 = v29[2];
    v32 = v29[3];
    if (v32 >> 1 <= v31)
    {
      v51 = v30;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 >= 2, v31 + 1, 1);
      v30 = v51;
      v27 = v56;
      v28 = v55;
      v29 = v53;
    }

    v26 = v26 + 1;
    v29[2] = v31 + 1;
    v29[v31 + 4] = v30;
  }

  while (v27 != v26);
  v28;
  v38 = v29[2];
  v39 = 1;
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v41 = v39;
      v39 *= v29[i + 4];
      if (!is_mul_ok(v29[i + 4], v41))
      {
        BUG();
      }
    }
  }

  v42 = v50;
  if (*(v50 + 16) != v39)
  {
    v47 = *(v50 + 16);
    v50;

    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    static MLCreateError.invalidTensorSize(expected:actual:)(v39, v47);
    return swift_willThrow();
  }

  v43 = v49;
  TensorShape.init(_:)(v29, -9.223372036854778e18, 9.223372036854776e18);
  v44 = type metadata accessor for TensorShape(0);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  v45 = v52;
  Array<A>.floatTensor(shape:)(v43, v42);
  v42;
  outlined destroy of TensorShape?(v43);
  v46 = type metadata accessor for Tensor(0);
  return __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
}

uint64_t static MLCreateError.invalidTensorDimensions(value:)(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(29);
  0xE000000000000000;
  *&v7 = 0xD00000000000001BLL;
  *(&v7 + 1) = "Invalid tensor size: expected " + 0x8000000000000000;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Numeric);
  v4._countAndFlagsBits = Array.description.getter(a1, v3);
  object = v4._object;
  String.append(_:)(v4);
  result = object;
  *v2 = v7;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  return result;
}

uint64_t static MLCreateError.invalidTensorSize(expected:actual:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _StringGuts.grow(_:)(43);
  0xE000000000000000, a2;
  *&v11 = 0xD00000000000001ELL;
  *(&v11 + 1) = "d validation should use files." + 0x8000000000000000;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v4._object;
  v6 = v4;
  String.append(_:)(v4);
  object, v6._object;
  v6._countAndFlagsBits = 0x6C6175746361202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  v9 = v7;
  String.append(_:)(v7);
  result = v8, v9._object;
  *v3 = v11;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  return result;
}

char *static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = DataFrame.columns.getter();
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v6);
  v6;
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v9 = specialized Collection<>.firstIndex(of:)(v8, MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  if (v10)
  {
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    _StringGuts.grow(_:)(53);
    v11._countAndFlagsBits = 0x6320746567726154;
    v11._object = 0xEF27206E6D756C6FLL;
    String.append(_:)(v11);
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    String.append(_:)(v11);
    v11._object = "Invalid tensor dimensions: " + 0x8000000000000000;
    v11._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v11);
    v12 = 0;
    v13 = 0xE000000000000000;
LABEL_8:
    v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
    *v21 = v12;
    *(v21 + 8) = v13;
    *(v21 + 16) = 0;
    *(v21 + 32) = 0;
    *(v21 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v20);
    return v13;
  }

  v14 = v9;
  if (!swift_isUniquelyReferenced_nonNull_native(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n))
  {
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = specialized _ArrayBuffer._consumeAndCreateNew()(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  }

  v15 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2];
  if (v14 >= v15)
  {
    BUG();
  }

  v16 = v15 - 1;
  v17 = v16 - v14;
  v18 = 2 * v14;
  v19 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[v18 + 5];
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[v18 + 6], v17, &MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[v18 + 4]);
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2] = v16;
  v19;
  v13 = static _FeatureUtilities.selectFeatures(from:select:)(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n, a4);
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
  if (!*(v13 + 2))
  {
    v13;
    v13 = " in the given table." + 0x8000000000000000;
    v12 = 0xD000000000000038;
    goto LABEL_8;
  }

  return v13;
}

void *static _FeatureUtilities.selectFeatures(from:select:)(void *a1, uint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
    a1;
    return v2;
  }

  v20 = *(a2 + 16);
  if (!v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = a1[2];
  v21 = a2 + 32;
  a2;
  v23 = a1 + 9;
  v2 = _swiftEmptyArrayStorage;
  for (i = 0; i != v20; ++i)
  {
    v24 = v2;
    v4 = *(v21 + 16 * i);
    v5 = *(v21 + 16 * i + 8);
    if (!v27)
    {
LABEL_13:
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      v5;
      _StringGuts.grow(_:)(66);
      v10._countAndFlagsBits = 0x27206E6D756C6F43;
      v10._object = 0xE800000000000000;
      String.append(_:)(v10);
      v10._countAndFlagsBits = v4;
      v10._object = v5;
      String.append(_:)(v10);
      v5;
      v10._countAndFlagsBits = 0xD000000000000038;
      v10._object = "ven training data frame." + 0x8000000000000000;
      String.append(_:)(v10);
      v28 = static os_log_type_t.error.getter();
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v12 = swift_allocObject(v11, 64, 7);
      *(v12 + 16) = 1;
      *(v12 + 24) = 2;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 32) = v26;
      0;
      print(_:separator:terminator:)(v12, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v12;
      type metadata accessor for OS_os_log();
      v13 = static OS_os_log.default.getter(0);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v15 = swift_allocObject(v14, 72, 7);
      *(v15 + 16) = 1;
      *(v15 + 24) = 2;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v15 + 32) = v26;
      0;
      os_log(_:dso:log:type:_:)("%@\n", 3, 2, &dword_0, v13, v28, v15);
      0xE000000000000000;

      v15;
      v2 = v24;
      continue;
    }

    if (v4 ^ a1[4] | v5 ^ a1[5] && (_stringCompareWithSmolCheck(_:_:expecting:)(a1[4], a1[5], *(v21 + 16 * i), *(v21 + 16 * i + 8), 0) & 1) == 0)
    {
      if (v27 == 1)
      {
        goto LABEL_13;
      }

      if (v4 ^ a1[6] | v5 ^ a1[7] && (_stringCompareWithSmolCheck(_:_:expecting:)(a1[6], a1[7], v4, v5, 0) & 1) == 0)
      {
        if (v27 == 2)
        {
          goto LABEL_13;
        }

        v16 = v23;
        v17 = 2;
        while (1)
        {
          if (__OFADD__(1, v17++))
          {
            BUG();
          }

          if (!(v4 ^ *(v16 - 1) | v5 ^ *v16) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v16 - 1), *v16, v4, v5, 0) & 1) != 0)
          {
            break;
          }

          v16 += 2;
          if (v17 == v27)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v5;
    v6 = v24;
    if (!swift_isUniquelyReferenced_nonNull_native(v24))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
    }

    v7 = v6[2];
    v8 = v6;
    if (v6[3] >> 1 <= v7)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
    }

    v8[2] = v7 + 1;
    v2 = v8;
    v9 = 2 * v7;
    v8[v9 + 4] = v4;
    v8[v9 + 5] = v5;
  }

  a2;
  return v2;
}

Swift::Int MLBoundingBoxCoordinatesOrigin.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin()
{
  result = lazy protocol witness table cache variable for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin;
  if (!lazy protocol witness table cache variable for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLBoundingBoxCoordinatesOrigin, &type metadata for MLBoundingBoxCoordinatesOrigin);
    lazy protocol witness table cache variable for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin = result;
  }

  return result;
}

id _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5()
{
  v1 = *(v0 + 16);
  v2 = specialized NSLocking.withLock<A>(_:)(partial apply for specialized closure #1 in EventCollector.getLast<A>(metric:type:));

  return v2;
}

unsigned __int8 specialized NSLocking.withLock<A>(_:)(void (*a1)(void))
{
  [v2 lock];
  a1();
  if (v1)
  {
    return [v2 unlock];
  }

  [v2 unlock];
  return v4;
}

id specialized NSLocking.withLock<A>(_:)(void (*a1)(void))
{
  [v2 lock];
  a1();
  if (v1)
  {
    return [v2 unlock];
  }

  [v2 unlock];
  return v4;
}

{
  [v1 lock];
  a1();
  return [v1 unlock];
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  LOBYTE(a3) = 1;
  if (!v5)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Event(0, a2, a3) - 8);
  v7 = v5 - 1;
  v8 = v7 * *(v6 + 72) + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v4;
  v12 = -*(v6 + 72);
  while (1)
  {
    v9 = a1(v8);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    v8 += v12;
    if (v7-- == 0)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized closure #1 in EventCollector.getLast<A>(metric:type:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Event?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(a1 + 24);
  v20 = a2;
  v14 = a2;
  *&v18[0] = v5;
  v5;
  v6 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for closure #1 in closure #1 in EventCollector.getLast<A>(metric:type:), v13, v5);
  v16 = v18;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_18CreateMLComponents5EventVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v15, v6, v7 & 1, v17);
  v5;
  v9 = type metadata accessor for Event(0, v15, v8);
  if (__swift_getEnumTagSinglePayload(v13, 1, v9) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Event?);
    memset(v18, 0, sizeof(v18));
  }

  else
  {
    v10 = Event.metrics.getter();
    (*(*(v9 - 8) + 8))(v13, v9);
    specialized Dictionary.subscript.getter(v20, v10);
    v10;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable?);
  if (swift_dynamicCast(&v19, v18, v11, &type metadata for Double, 6))
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

{
  v4 = v2;
  result = specialized closure #1 in EventCollector.getLast<A>(metric:type:)(a1, a2);
  if (!v3)
  {
    *v4 = result;
    *(v4 + 8) = v6 & 1;
  }

  return result;
}

uint64_t TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()();
  v4 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  v7 = type metadata accessor for TreeRegressor(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  v9 = type metadata accessor for TreeRegressorModel(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v1 + v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v1 + v11 + 16) = -1;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

void (**TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7))(uint64_t, uint64_t, uint64_t)
{
  v80 = v7;
  v76 = a6;
  v81 = a5;
  v68 = a4;
  v75 = a2;
  v69 = a1;
  v82 = *v8;
  v83 = type metadata accessor for BoostedTreeConfiguration(0);
  v77 = *(v83 - 8);
  v10 = *(v77 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v65 = &v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v70 = &v62;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v64 = &v62;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v66 = &v62;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v73 = &v62;
  v24 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v78 = &v62;
  v67 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  v79 = v24;
  __swift_storeEnumTagSinglePayload(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, 1, 1, v24);
  DataFrame.init()();
  v28 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  v84 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v84);
  v29 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  v72 = type metadata accessor for TreeRegressor(0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v72);
  v30 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  v31 = type metadata accessor for TreeRegressorModel(0);
  v32 = v30;
  v33 = v69;
  v34 = v68;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v31);
  v35 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v8 + v35 + 16) = -1;
  v36 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v8 + v36 + 16) = -1;
  v71 = a3;
  v37 = a3;
  v38 = v81;
  v39 = v80;
  v40 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v33, v37, v34, v81);
  v80 = v39;
  if (v39)
  {
    v34;
    v38;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    (*(v77 + 8))(v76, v83);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for DataFrame?);
    v41 = v84;
    v42 = *(*(v84 - 8) + 8);
    v42(v33, v84);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v42(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v41);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for TreeRegressor?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for TreeRegressorModel?);
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16));
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));
    swift_deallocPartialClassInstance(v8, v82, *(*v8 + 12), *(*v8 + 26));
  }

  else
  {
    v74 = v40;
    v38;
    v81 = *(v84 - 8);
    v43 = v78;
    (*(v81 + 16))(v78, v33);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, v73, &demangling cache variable for type metadata for DataFrame?);
    v44 = v43 + v79[8];
    v82 = *(v77 + 16);
    v82(v44, v76, v83);
    v45 = v34;
    v46 = v43 + v79[5];
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v84);
    v45;
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v73, v46, &demangling cache variable for type metadata for DataFrame?);
    v47 = v79;
    v48 = v79[6];
    v49 = v78;
    *(v78 + v48) = v71;
    *(v49 + v48 + 8) = v45;
    v50 = v74;
    *(v49 + *(v47 + 28)) = v74;
    v51 = v66;
    outlined init with copy of MLActivityClassifier.Model(v49, v66, type metadata accessor for PersistentParametersForTreeBasedMethods);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v47);
    v52 = v67;
    swift_beginAccess(v67, v63, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v51, v52, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    swift_endAccess(v63);
    outlined init with copy of MLActivityClassifier.Model(a7, v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    v53 = v50;
    v50;
    v54 = v70;
    BoostedTreeConfiguration.init()();
    v55 = v64;
    *v64 = v71;
    v55[1] = v68;
    v55[2] = v53;
    v55[3] = v53;
    v55[4] = 0xD000000000000013;
    v55[5] = ("raining samples." + 0x8000000000000000);
    v56 = v65;
    v82(v65, v54, v83);
    v57 = v55 + *(v72 + 28);
    v74;
    BaseTreeRegressor.init(configuration:)(v56);
    v58 = *(v77 + 8);
    v59 = v83;
    v58(v70, v83);
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    v58(v76, v59);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for DataFrame?);
    (*(v81 + 8))(v69, v84);
    outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for PersistentParametersForTreeBasedMethods);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v72);
    v60 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
    swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, v63, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v55, v60, &demangling cache variable for type metadata for TreeRegressor?);
    swift_endAccess(v63);
  }

  return v8;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeRegressorTrainingSessionDelegate.setUp()()
{
  v60 = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v54 = v50;
  v63 = type metadata accessor for BoostedTreeConfiguration(0);
  v61 = *(v63 - 8);
  v4 = *(v61 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v56 = v50;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v55 = v50;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v57 = v50;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v58 = v50;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v52 = v50;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = v60 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v60 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, v50, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v50, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v62 = v19;
  if (__swift_getEnumTagSinglePayload(v50, 1, v19) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v50, v50, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v24 = v60;
  v25 = v60 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v60 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v51, 33, 0);
  v26 = type metadata accessor for DataFrame(0);
  (*(*(v26 - 8) + 24))(v25, v50, v26);
  swift_endAccess(v51);
  v27 = &v50[v62[5]];
  v28 = v24 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v24 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, v51, 33, 0);
  outlined assign with copy of DataFrame?(v27, v28);
  swift_endAccess(v51);
  v29 = v62[6];
  v59 = v50;
  v64 = *&v50[v29];
  v30 = *&v50[v29 + 8];
  v31 = *&v50[v62[7]];
  v30;
  v31;
  v32 = v57;
  BoostedTreeConfiguration.init()();
  v33 = v52;
  *v52 = v64;
  v33[1] = v30;
  v33[2] = v31;
  v33[3] = v31;
  v33[4] = 0xD000000000000013;
  v33[5] = "raining samples." + 0x8000000000000000;
  v53 = *(v61 + 16);
  v53(v55, v32, v63);
  v64 = type metadata accessor for TreeRegressor(0);
  v34 = v33 + *(v64 + 28);
  v31;
  BaseTreeRegressor.init(configuration:)(v55);
  v35 = v63;
  v61 = *(v61 + 8);
  (v61)(v32, v63);
  v36 = v64;
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v64);
  v37 = v60 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v60 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, v51, 33, 0);
  v38 = v33;
  v39 = v53;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v38, v37, &demangling cache variable for type metadata for TreeRegressor?);
  v39(v56, &v59[v62[8]], v35);
  if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
  {
    BUG();
  }

  v40 = v57;
  v41 = v56;
  v39(v57, v56, v63);
  v42 = v37 + *(v64 + 28);
  BaseTreeRegressor.configuration.setter(v40);
  (v61)(v41, v63);
  swift_endAccess(v51);
  v43 = v37;
  v44 = v58;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v43, v58, &demangling cache variable for type metadata for TreeRegressor?);
  if (__swift_getEnumTagSinglePayload(v44, 1, v64) == 1)
  {
    BUG();
  }

  v62 = *v44;
  v45 = v44[1];
  v46 = v44 + *(v64 + 28);
  v63 = type metadata accessor for TreeRegressorModel(0);
  v47 = v54;
  v48 = &v54[*(v63 + 24)];
  v45;
  BaseTreeRegressor.makeTransformer()(v45);
  *v47 = v62;
  *(v47 + 8) = v45;
  *(v47 + 16) = 0;
  *(v47 + 32) = 0;
  outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for TreeRegressor);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v63);
  v49 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v60;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v60, v51, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v47, v49, &demangling cache variable for type metadata for TreeRegressorModel?);
  swift_endAccess(v51);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeRegressorTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v73 = v1;
  v79 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v72 = v65;
  v74 = type metadata accessor for BoostedTreeConfiguration(0);
  v75 = *(v74 - 8);
  v6 = *(v75 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v69 = v65;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v76 = v65;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v68 = v65;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v70 = v65;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v77 = v65;
  v67 = type metadata accessor for MLCheckpoint(0);
  v19 = *(*(v67 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v78 = v65;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, v65, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v65, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v71 = v25;
  if (__swift_getEnumTagSinglePayload(v65, 1, v25) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v65, v65, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v30 = v77;
  specialized BidirectionalCollection.last.getter(rawValue);
  v31 = v67;
  if (__swift_getEnumTagSinglePayload(v30, 1, v67) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLCheckpoint?);
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v33 = 0xD00000000000001DLL;
    *(v33 + 8) = "reated." + 0x8000000000000000;
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v32);
LABEL_16:
    outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for PersistentParametersForTreeBasedMethods);
    return;
  }

  v34 = 0xEB0000000064657ALL;
  v35 = v30;
  v36 = v78;
  outlined init with take of MLClassifierMetrics(v35, v78, type metadata accessor for MLCheckpoint);
  switch(*(v36 + *(v31 + 20)))
  {
    case 0:
      v38 = *(v36 + *(v31 + 20));
      v37 = 0x696C616974696E69;
      break;
    case 1:
      v37 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0xE800000000000000;
      goto LABEL_12;
    case 3:
      v37 = 0x697461756C617665;
LABEL_10:
      v34 = 0xEA0000000000676ELL;
      break;
    case 4:
      v34 = 0xEB00000000676E69;
      v37 = 0x636E657265666E69;
      break;
  }

  v39 = *(v36 + *(v31 + 20));
  v40 = _stringCompareWithSmolCheck(_:_:expecting:)(v37, v34, 0x676E696E69617274, 0xE800000000000000, 0);
  v34;
  if ((v40 & 1) == 0)
  {
    v63 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v63, 0, 0);
    *v64 = 0xD000000000000028;
    *(v64 + 8) = "" + 0x8000000000000000;
    *(v64 + 16) = 0;
    *(v64 + 32) = 0;
    *(v64 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v63);
    outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLCheckpoint);
    goto LABEL_16;
  }

LABEL_12:
  v41 = v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v66, 33, 0);
  v42 = type metadata accessor for DataFrame(0);
  (*(*(v42 - 8) + 24))(v41, v65, v42);
  swift_endAccess(v66);
  v43 = v71;
  v44 = &v65[*(v71 + 20)];
  v45 = v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, v66, 33, 0);
  outlined assign with copy of DataFrame?(v44, v45);
  swift_endAccess(v66);
  v46 = *(v43 + 24);
  rawValue = *&v65[v46];
  v47 = *&v65[v46 + 8];
  v48 = *(v43 + 28);
  v77 = v65;
  v49 = *&v65[v48];
  v47;
  v49;
  v50 = v76;
  BoostedTreeConfiguration.init()();
  v51 = v70;
  *v70 = rawValue;
  v51[1] = v47;
  v51[2] = v49;
  v51[3] = v49;
  v51[4] = 0xD000000000000013;
  v51[5] = "raining samples." + 0x8000000000000000;
  v52 = v69;
  (*(v75 + 16))(v69, v50, v74);
  rawValue = type metadata accessor for TreeRegressor(0);
  v53 = v51 + *(rawValue + 28);
  v49;
  BaseTreeRegressor.init(configuration:)(v52);
  (*(v75 + 8))(v76, v74);
  v54 = rawValue;
  __swift_storeEnumTagSinglePayload(v51, 0, 1, rawValue);
  v55 = v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v79 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, v66, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v51, v55, &demangling cache variable for type metadata for TreeRegressor?);
  swift_endAccess(v66);
  v56 = v68;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, v68, &demangling cache variable for type metadata for TreeRegressor?);
  if (__swift_getEnumTagSinglePayload(v56, 1, v54) == 1)
  {
    BUG();
  }

  v57 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
  v58 = v72;
  v59 = v78;
  v60 = v73;
  SupervisedTabularEstimator.read(from:)(v78, v54, v57);
  outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for TreeRegressor);
  if (!v60)
  {
    v61 = type metadata accessor for TreeRegressorModel(0);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v61);
    v62 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v79;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v79, v66, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v58, v62, &demangling cache variable for type metadata for TreeRegressorModel?);
    swift_endAccess(v66);
  }
}

uint64_t TreeRegressorTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[19] = v1;
  v2[18] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v2[22] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnyColumn(0);
  v2[23] = v5;
  v6 = *(v5 - 8);
  v2[24] = v6;
  v2[25] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v2[26] = v7;
  v8 = *(v7 - 8);
  v2[27] = v8;
  v2[28] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataFrame(0);
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[31] = swift_task_alloc(v11);
  v2[32] = swift_task_alloc(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?);
  v2[33] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[34] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[35] = swift_task_alloc((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeRegressorTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t TreeRegressorTrainingSessionDelegate.train(from:)()
{
  v1 = v0[35];
  v2 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v0[19];
  swift_beginAccess(v2, v0 + 2, 0, 0);
  v86 = v2;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, v1, &demangling cache variable for type metadata for TreeRegressorModel?);
  v70 = type metadata accessor for TreeRegressorModel(0);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v70);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for TreeRegressorModel?);
  if (v2 == 1)
  {
    BUG();
  }

  v3 = v0[34];
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[19];
  swift_beginAccess(v4, v0 + 5, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v3, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v5 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v5);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (v4 == 1)
  {
    BUG();
  }

  v6 = v0[18];
  v7 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters + v0[19];
  v8 = type metadata accessor for MLTrainingSessionParameters(0);
  v9 = *(*(v8 + 20) + v7);
  v10 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
    BUG();
  }

  v11 = *(v7 + *(v8 + 28));
  v12 = v11 - v6;
  if (__OFSUB__(v11, v6))
  {
    BUG();
  }

  v67 = v11;
  v13 = v0;
  v14 = v0 + 8;
  v15 = v13 + 11;
  v74 = v13 + 14;
  v68 = v13;
  v59 = v13 + 17;
  if (v9 < v12)
  {
    v12 = v9;
  }

  v16 = type metadata accessor for EventCollector();
  swift_allocObject(v16, 32, 7);
  v17 = EventCollector.init()();
  if (v12 < 0)
  {
    BUG();
  }

  v63 = v10;
  v69 = v17;
  v66 = v12;
  if (v12)
  {
    v64 = v68[33];
    v18 = v68[30];
    v65 = v68[27];
    v19 = v68[19];
    v62 = v68[24];
    v20 = v19 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
    v21 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData + v19;
    v60 = v20;
    swift_beginAccess(v20, v14, 0, 0);
    v61 = v21;
    v22 = v21;
    v23 = v18;
    swift_beginAccess(v22, v15, 0, 0);
    v24 = v12;
    v72 = v23;
    do
    {
      v57 = v24;
      v25 = v68[33];
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, v25, &demangling cache variable for type metadata for TreeRegressor?);
      v26 = type metadata accessor for TreeRegressor(0);
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
      {
        BUG();
      }

      (*(v23 + 16))(v68[32], v61, v68[29]);
      swift_beginAccess(v86, v74, 33, 0);
      if (__swift_getEnumTagSinglePayload(v86, 1, v70) == 1)
      {
        BUG();
      }

      v58 = v26;
      ML16ColumnDescriptorVsAE_pTg5 = v86[2];
      if (ML16ColumnDescriptorVsAE_pTg5)
      {
      }

      else
      {
        v28 = v68[32];
        v29 = *(v64 + 16);
        v30 = swift_task_alloc(32);
        *(v30 + 16) = v28;

        v29;
        ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), v30, v29);
        v29;
        v30;
        v86[2] = ML16ColumnDescriptorVsAE_pTg5;
        v86[3] = 0xD000000000000013;
        v86[4] = "raining samples." + 0x8000000000000000;
      }

      v76 = v68[32];
      v82 = v68[28];
      v79 = v68[31];
      ML16ColumnDescriptorVsAE_pTg5;
      ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(ML16ColumnDescriptorVsAE_pTg5);
      ML16ColumnDescriptorVsAE_pTg5;
      v68[17] = ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
      DataFrame.selecting<A>(columnNames:)(v59, v32, v33);
      ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
      _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5(ML16ColumnDescriptorVsAE_pTg5, 0);
      v34 = v68[33];
      v35 = v68[32];
      v83 = v68[23];
      v36 = v68[25];
      v77 = *(v72 + 8);
      v77(v68[31], v68[29]);
      DataFrame.subscript.getter(*v34, *(v64 + 8));
      v37 = AnyColumn.convertedToFloats()();
      (*(v62 + 8))(v36, v83);
      if (!v37)
      {
        BUG();
      }

      v38 = v68[33] + *(v58 + 28);
      BaseTreeRegressor.update(_:features:annotations:eventHandler:)(v86 + *(v70 + 24), v68[28], v37, partial apply for closure #1 in LinearRegressorTrainingSessionDelegate.train(from:), v69);
      v84 = v68[33];
      v80 = v68[32];
      v39 = v68[29];
      (*(v65 + 8))(v68[28], v68[26]);

      swift_endAccess(v74);

      v77(v80, v39);
      outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for TreeRegressor);
      v24 = v57 - 1;
      v23 = v72;
    }

    while (v57 != 1);
  }

  v40 = v68[22];
  v41 = v68[20];
  v42 = v68[21];
  static MetricsKey.trainingMaximumError.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v45 = v44;
  v46 = *(v42 + 8);
  v46(v40, v41);
  v87 = v46;
  if ((v45 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(8, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v48 = v68[20];
  v49 = v68[22];
  static MetricsKey.trainingError.getter();
  v50 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v52 = v51;
  v87(v49, v48);
  if ((v52 & 1) == 0)
  {
    v53 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(7, v53, *&v50);
  }

  v54 = v68[35];
  v55 = v68[34];
  v81 = v68[33];
  v78 = v68[32];
  v85 = v68[31];
  v73 = v68[28];
  v75 = v68[22];
  v71 = v68[25];
  v88 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

  _swiftEmptyDictionarySingleton;
  v54;
  v55;
  v81;
  v78;
  v85;
  v73;
  v71;
  v75;
  return (v68[1])(v66, v88, v63 >= v67);
}

uint64_t TreeRegressorTrainingSessionDelegate.evaluate(from:)()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[26] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v1[29] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[32] = swift_task_alloc(v7);
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v8 = type metadata accessor for DataFrame(0);
  v1[36] = v8;
  v9 = *(v8 - 8);
  v1[37] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[38] = swift_task_alloc(v10);
  v1[39] = swift_task_alloc(v10);
  v1[40] = swift_task_alloc(v10);
  v1[41] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v1[42] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TreeRegressorModel(0);
  v1[43] = v12;
  v1[44] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeRegressorTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + *(v0 + 200);
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for TreeRegressorModel?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 336), &demangling cache variable for type metadata for TreeRegressorModel?);
LABEL_5:
    v81 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 200);
  outlined init with take of MLClassifierMetrics(*(v0 + 336), *(v0 + 352), type metadata accessor for TreeRegressorModel);
  v5 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v4;
  swift_beginAccess(v5, v0 + 40, 0, 0);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  v8 = *(v0 + 352);
  if (EnumTagSinglePayload)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 352), type metadata accessor for TreeRegressorModel);
    goto LABEL_5;
  }

  v82 = *(v0 + 328);
  v72 = *(v0 + 320);
  v86 = *(v0 + 296);
  v77 = *(v0 + 288);
  v14 = *(v6 + 24);
  v68 = *(v5 + v14);
  v15 = *(v5 + v14 + 8);
  v16 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData + *(v0 + 200);
  swift_beginAccess(v16, v0 + 64, 0, 0);
  v64 = v16;
  (*(v86 + 16))(v72, v16, v77);
  v15;
  TreeRegressorModel.applied(to:eventHandler:)(v72, 0, 0);
  v17 = *(v0 + 328);
  v46 = *(v0 + 288);
  v73 = *(v0 + 280);
  v78 = *(v0 + 272);
  v52 = *(v0 + 240);
  v18 = *(v0 + 232);
  v62 = v15;
  v19 = *(v0 + 224);
  v87 = *(v0 + 216);
  v54 = *(v0 + 200);
  v48 = *(v0 + 208);
  v58 = *(*(v0 + 296) + 8);
  (v58)(*(v0 + 320));
  DataFrame.subscript.getter(v68, v15, &type metadata for Double);
  *(v0 + 136) = 0;
  v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  OptionalColumnProtocol.filled(with:)(v0 + 136, v87, v60);
  v20 = *(v19 + 8);
  v20(v18, v87);
  swift_beginAccess(v64, v0 + 88, 32, 0);
  DataFrame.subscript.getter(v68, v15, &type metadata for Double);
  swift_endAccess(v0 + 88);
  *(v0 + 144) = 0;
  OptionalColumnProtocol.filled(with:)(v0 + 144, v87, v60);
  v57 = v20;
  v20(v18, v87);
  v88 = lazy protocol witness table accessor for type Double and conformance Double();
  v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
  maximumAbsoluteError<A, B, C>(_:_:)(v73, v78, &type metadata for Double, v52, v52, v88, v21, v21);
  v65 = *(v0 + 152);
  rootMeanSquaredError<A, B, C>(_:_:)(v73, v78, &type metadata for Double, v52, v52, v88, v21, v21);
  v22 = *(v0 + 160);
  v23 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v24 = *(v54 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v25 = *(v54 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  *(v54 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics) = v65;
  *(v54 + v23 + 8) = v22;
  v26 = *(v54 + v23 + 16);
  *(v54 + v23 + 16) = 0;
  outlined consume of MLRegressorMetrics?(v24, v25, v26);
  v27 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData + v54;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData + v54, v0 + 112, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v48, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(v48, 1, v46) == 1)
  {
    v74 = *(v0 + 328);
    v79 = *(v0 + 288);
    v69 = *(v0 + 280);
    v28 = *(v0 + 272);
    v89 = *(v0 + 352);
    v29 = *(v0 + 248);
    v30 = *(v0 + 240);
    v31 = *(v0 + 200);
    v83 = *(v0 + 208);
    v62;
    v32 = *(v29 + 8);
    v32(v28, v30);
    v32(v69, v30);
    v58(v74, v79);
    outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for TreeRegressorModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    v33 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
    v34 = *(v31 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v35 = *(v31 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    *(v31 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = 0;
    v36 = *(v31 + v33 + 16);
    *(v31 + v33 + 16) = -1;
  }

  else
  {
    v75 = v21;
    v37 = *(v0 + 312);
    v38 = *(v0 + 304);
    (*(*(v0 + 296) + 32))(v37, *(v0 + 208), *(v0 + 288));
    TreeRegressorModel.applied(to:eventHandler:)(v37, 0, 0);
    v45 = *(v0 + 352);
    v49 = *(v0 + 328);
    v80 = *(v0 + 312);
    v56 = *(v0 + 304);
    v53 = *(v0 + 288);
    v50 = *(v0 + 280);
    v51 = *(v0 + 272);
    v84 = *(v0 + 264);
    v66 = *(v0 + 256);
    v55 = *(v0 + 248);
    v44 = *(v0 + 240);
    v39 = *(v0 + 232);
    v47 = *(v0 + 200);
    v40 = *(v0 + 216);
    DataFrame.subscript.getter(v68, v62, &type metadata for Double);
    *(v0 + 168) = 0;
    OptionalColumnProtocol.filled(with:)(v0 + 168, v40, v60);
    v57(v39, v40);
    DataFrame.subscript.getter(v68, v62, &type metadata for Double);
    v62;
    *(v0 + 176) = 0;
    OptionalColumnProtocol.filled(with:)(v0 + 176, v40, v60);
    v57(v39, v40);
    maximumAbsoluteError<A, B, C>(_:_:)(v84, v66, &type metadata for Double, v44, v44, v88, v75, v75);
    v70 = *(v0 + 184);
    rootMeanSquaredError<A, B, C>(_:_:)(v84, v66, &type metadata for Double, v44, v44, v88, v75, v75);
    v41 = *(v55 + 8);
    v41(v66, v44);
    v41(v84, v44);
    v58(v56, v53);
    v58(v80, v53);
    v41(v51, v44);
    v41(v50, v44);
    v58(v49, v53);
    outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for TreeRegressorModel);
    v42 = *(v0 + 192);
    v43 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
    v34 = *(v47 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v35 = *(v47 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    *(v47 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = v70;
    *(v47 + v43 + 8) = v42;
    v36 = *(v47 + v43 + 16);
    *(v47 + v43 + 16) = 0;
  }

  outlined consume of MLRegressorMetrics?(v34, v35, v36);
  v81 = 1;
LABEL_6:
  v9 = *(v0 + 336);
  v10 = *(v0 + 328);
  v11 = *(v0 + 320);
  v12 = *(v0 + 312);
  v59 = *(v0 + 304);
  v61 = *(v0 + 280);
  v63 = *(v0 + 272);
  v67 = *(v0 + 264);
  v76 = *(v0 + 256);
  v85 = *(v0 + 208);
  v71 = *(v0 + 232);
  *(v0 + 352);
  v9;
  v10;
  v11;
  v12;
  v59;
  v61;
  v63;
  v67;
  v76;
  v71;
  v85;
  return (*(v0 + 8))(v81, 1);
}

char TreeRegressorTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v32 = v2;
  v30 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = v25;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for TreeRegressorModel(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v27 = v25;
  v31 = *a2;
  v29 = v3;
  v14 = v3 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, v25, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, v25, &demangling cache variable for type metadata for TreeRegressorModel?);
  if (__swift_getEnumTagSinglePayload(v25, 1, v10) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for TreeRegressorModel?);
    return 0;
  }

  v15 = 0xEB0000000064657ALL;
  v16 = v27;
  outlined init with take of MLClassifierMetrics(v25, v27, type metadata accessor for TreeRegressorModel);
  switch(v31)
  {
    case 0:
      v17 = 0x696C616974696E69;
      break;
    case 1:
      v17 = 0x6974636172747865;
      goto LABEL_9;
    case 2:
      0xE800000000000000;
      goto LABEL_11;
    case 3:
      v17 = 0x697461756C617665;
LABEL_9:
      v15 = 0xEA0000000000676ELL;
      break;
    case 4:
      v15 = 0xEB00000000676E69;
      v17 = 0x636E657265666E69;
      break;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v17, v15, 0x676E696E69617274, 0xE800000000000000, 0);
  v15;
  if ((v18 & 1) == 0)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for TreeRegressorModel);
    return 0;
  }

LABEL_11:
  v19 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor + v29;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor + v29, v26, 0, 0);
  v20 = v28;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v28, &demangling cache variable for type metadata for TreeRegressor?);
  v21 = type metadata accessor for TreeRegressor(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    BUG();
  }

  v22 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
  v23 = v32;
  SupervisedTabularEstimator.write(_:to:overwrite:)(v16, v30, 1, v21, v22);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for TreeRegressorModel);
  result = outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for TreeRegressor);
  if (!v23)
  {
    return 1;
  }

  return result;
}

uint64_t TreeRegressorTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000031;
    *(v12 + 8) = "Selected features" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v11);
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
    PersistentParametersForTreeBasedMethods.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
  }
}

NSURL *TreeRegressorTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = PersistentParametersForTreeBasedMethods.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for PersistentParametersForTreeBasedMethods);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v24, v20, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for PersistentParametersForTreeBasedMethods);
      v26 = v36;
      TreeRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for PersistentParametersForTreeBasedMethods);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  return result;
}

uint64_t TreeRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = v2;
  v5 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a2 + v6);
  v10 = *(a2 + v6 + 8);
  v45 = a1;
  v46 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v43 = a2, v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v46, a1 = v45, v13 = v11, a2 = v43, (v12 & 1) == 0))
  {
    v39 = v9;
    v40 = v10;
    v45 = v8;
    v46 = v13;
    v8;
    v10;
    v21 = String.init<A>(_:)(&v39, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v44 = v32;
    v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    v20 = 0xED00006E6D756C6FLL;
    v22 = 0x6320746567726154;
  }

  else
  {
    v14 = *(a1 + *(v5 + 28));
    v14;
    v41 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *(a2 + *(v5 + 28));
    v16;
    v43 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v17;
    if (v18)
    {
      result = static BoostedTreeConfiguration.firstIncompatibility(_:_:)(*(v46 + 32) + v45, *(v46 + 32) + a2);
      v20 = v34;
      if (!v34)
      {
        return result;
      }

      v44 = v38;
      v21 = v37;
      v45 = v36;
      v22 = v33;
      v46 = v35;
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    }

    else
    {
      v42 = "Classifier.swift" + 0x8000000000000000;
      v41;
      v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
      v46 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v45 = v27;
      v41;
      v43;
      v28 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v30 = v29;
      v20 = "Classifier.swift" + 0x8000000000000000;
      v43;
      v39 = v28;
      v40 = v30;
      v21 = String.init<A>(_:)(&v39, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v44 = v31;
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
      v22 = 0xD000000000000011;
    }
  }

  *v24 = v22;
  *(v24 + 8) = v20;
  *(v24 + 16) = v46;
  *(v24 + 24) = v45;
  *(v24 + 32) = v21;
  *(v24 + 40) = v44;
  *(v24 + 48) = 3;
  return swift_willThrow(&type metadata for MLCreateError, v23);
}

uint64_t TreeRegressorTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for TreeRegressor?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for TreeRegressorModel?);
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16));
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));
  return v0;
}

uint64_t type metadata accessor for TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeRegressorTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for TreeRegressorTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeRegressorTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for PersistentParametersForTreeBasedMethods?, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v8[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v8[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TreeRegressor?, type metadata accessor for TreeRegressor);
          if (v6 <= 0x3F)
          {
            v8[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TreeRegressorModel?, type metadata accessor for TreeRegressorModel);
            if (v7 <= 0x3F)
            {
              v8[5] = *(result - 8) + 64;
              v8[6] = &unk_346158;
              v8[7] = &unk_346158;
              result = swift_updateClassMetadata2(a1, 256, 8, v8, a1 + 80);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_task_alloc(288);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeRegressorTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance TreeRegressorTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(368);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeRegressorTrainingSessionDelegate.evaluate(from:)();
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (*(a2 + 16) <= a1)
  {
    BUG();
  }

  v3 = v2;
  v4 = type metadata accessor for MLCheckpoint(0);
  return outlined init with copy of MLActivityClassifier.Model(((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a2 + *(*(v4 - 8) + 72) * a1, v3, type metadata accessor for MLCheckpoint);
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (*(a2 + 16) <= a1)
  {
    BUG();
  }

  v4 = v3;
  v5 = type metadata accessor for Event(0, a2, a3);
  return (*(*(v5 - 8) + 16))(v4, ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a2 + *(*(v5 - 8) + 72) * a1, v5);
}

NSURL *BlobsFile.init()()
{
  v1 = v0;
  *v3 = 0;
  *&v3[8] = 0xC000000000000000;
  *&v4[0] = 0x200000000;
  memset(v4 + 8, 0, 56);
  *&v3[16] = 0x200000000;
  *&v3[24] = 0;
  *&v3[32] = v4[1];
  *&v3[48] = v4[2];
  *&v3[64] = 0uLL;
  *&v3[80] = _swiftEmptyArrayStorage;
  specialized Data.append<A>(contentsOf:)(&stru_20.vmsize, 0);
  result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v3, v4);
  qmemcpy(v1, v3, 0x58uLL);
  return result;
}

void *BlobsFile.floatBlob(at:)(uint64_t a1)
{
  if (a1 < 0)
  {
    BUG();
  }

  v4 = *(v2 + 10);
  if (*(v4 + 16) <= a1)
  {
    BUG();
  }

  v5 = a1 << 6;
  v6 = *(v4 + v5 + 32);
  v7 = *(v4 + v5 + 48);
  v8 = *(v4 + v5 + 64);
  v26 = *(v4 + v5 + 80);
  v25 = v8;
  v24 = v7;
  v23 = v6;
  if (BlobMetadata.dataType.getter() == 1)
  {
    v27 = *v2;
    switch(*(&v27 + 1) >> 62)
    {
      case 0:
        v22[0] = v27;
        LODWORD(v22[1]) = DWORD2(v27);
        WORD2(v22[1]) = WORD6(v27);
        v9 = v24;
        v10 = *(&v23 + 1);
        if ((v24 | *(&v23 + 1)) < 0)
        {
          BUG();
        }

        goto LABEL_11;
      case 1:
        v17 = v27;
        v18 = v27 >> 32;
        if (v27 >> 32 < v27)
        {
          BUG();
        }

        v19 = *(&v27 + 1) & 0x3FFFFFFFFFFFFFFFLL;

        v20 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v17, v18, v19, &v23);
        if (v1)
        {
          outlined release of Data(&v27);
          BUG();
        }

        v3 = v20;
        outlined release of Data(&v27);
        break;
      case 2:
        v13 = *(&v27 + 1) & 0x3FFFFFFFFFFFFFFFLL;
        v14 = *(v27 + 16);
        v15 = *(v27 + 24);

        v16 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v14, v15, v13, &v23);
        if (v1)
        {

          BUG();
        }

        v3 = v16;

        break;
      case 3:
        memset(v22, 0, 14);
        v9 = v24;
        v10 = *(&v23 + 1);
        if ((v24 | *(&v23 + 1)) < 0)
        {
          BUG();
        }

LABEL_11:
        v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v22 + v9, v10 >> 2);
        break;
    }
  }

  else
  {
    v11 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
    swift_allocError(&type metadata for BlobsFileError, v11, 0, 0);
    *v12 = 2;
    swift_willThrow(&type metadata for BlobsFileError, v11);
  }

  return v3;
}

void *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __DataStorage._bytes.getter();
  if (v5)
  {
    v6 = v5;
    v7 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v7))
    {
      BUG();
    }

    v8 = v6 + a1 - v7;
  }

  else
  {
    v8 = 0;
  }

  __DataStorage._length.getter();
  if (v8)
  {
    v9 = *(a4 + 16);
    if (v9 < 0)
    {
      BUG();
    }

    v10 = (v8 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a4 + 8);
  if (v11 < 0)
  {
    BUG();
  }

  return specialized _copyCollectionToContiguousArray<A>(_:)(v10, v11 >> 2);
}

uint64_t storeEnumTagSinglePayload for BlobsFileError(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFE)
  {
    v4 = a3 + 2;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t initializeWithCopy for BlobsFile(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 80) = v8;
  v8;
  return a1;
}

uint64_t assignWithCopy for BlobsFile(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Data._Representation(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;
  v8;
  v9;
  return a1;
}

void *__swift_memcpy88_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x58uLL);
  return result;
}

uint64_t assignWithTake for BlobsFile(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of Data._Representation(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for BlobsFile(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 80) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 80) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for BlobsFile(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 88) = 0;
    }

    if (a2)
    {
      *(a1 + 80) = 2 * (a2 - 1);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer.PersistentParameters(void *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    v15 = a3;
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v7(a1 + *(v8 + 48), &a2[*(v8 + 48)], v6);
    v9 = *(v8 + 64);
    *(a1 + v9 + 8) = a2[v9 + 8];
    *(a1 + v9) = *&a2[v9];
    *(a1 + v15[5]) = a2[v15[5]];
    v10 = v15[6];
    __dst = a1 + v10;
    v11 = &a2[v10];
    if (__swift_getEnumTagSinglePayload(v11, 1, v6))
    {
      v12 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
      memcpy(__dst, v11, *(*(v12 - 8) + 64));
    }

    else
    {
      v7(__dst, v11, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    *(a1 + v15[7]) = *&a2[v15[7]];
    *(a1 + v15[8]) = *&a2[v15[8]];
    *(a1 + v15[9]) = a2[v15[9]];
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), v2);
  v5 = a1 + *(a2 + 24);
  result = __swift_getEnumTagSinglePayload(v5, 1, v2);
  if (!result)
  {
    return v3(v5, v2);
  }

  return result;
}

char *initializeWithCopy for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(*(v3 - 8) + 16);
  v4(a1, a2, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v4(&a1[*(v5 + 48)], &a2[*(v5 + 48)], v3);
  v6 = *(v5 + 64);
  a1[v6 + 8] = a2[v6 + 8];
  *&a1[v6] = *&a2[v6];
  a1[a3[5]] = a2[a3[5]];
  v7 = a3[6];
  __dst = &a1[v7];
  v8 = &a2[v7];
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    v9 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v4(__dst, v8, v3);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

char *assignWithCopy for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  v17 = *(v4 - 8);
  v5 = *(v17 + 24);
  v5(a1, a2, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v15 = v5;
  v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
  v7 = *(v6 + 64);
  a1[v7 + 8] = a2[v7 + 8];
  *&a1[v7] = *&a2[v7];
  a1[a3[5]] = a2[a3[5]];
  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v9, 1, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v17 + 16))(v9, v10, v4);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
      goto LABEL_9;
    }

    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v15(v9, v10, v4);
      goto LABEL_9;
    }

    (*(v17 + 8))(v9, v4, v12, v15);
    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  memcpy(v9, v10, v13);
LABEL_9:
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

char *initializeWithTake for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(*(v3 - 8) + 32);
  v4(a1, a2, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v4(&a1[*(v5 + 48)], &a2[*(v5 + 48)], v3);
  v6 = *(v5 + 64);
  a1[v6 + 8] = a2[v6 + 8];
  *&a1[v6] = *&a2[v6];
  a1[a3[5]] = a2[a3[5]];
  v7 = a3[6];
  __dst = &a1[v7];
  v8 = &a2[v7];
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    v9 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v4(__dst, v8, v3);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

char *assignWithTake for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  v17 = *(v4 - 8);
  v5 = *(v17 + 40);
  v5(a1, a2, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v15 = v5;
  v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
  v7 = *(v6 + 64);
  a1[v7 + 8] = a2[v7 + 8];
  *&a1[v7] = *&a2[v7];
  a1[a3[5]] = a2[a3[5]];
  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v9, 1, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v17 + 32))(v9, v10, v4);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
      goto LABEL_9;
    }

    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v15(v9, v10, v4);
      goto LABEL_9;
    }

    (*(v17 + 8))(v9, v4, v12, v15);
    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  memcpy(v9, v10, v13);
LABEL_9:
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

uint64_t sub_2108E0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  if (*(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 84) == a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 254)
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v4 = *(a3 + 24) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = *(a1 + *(a3 + 20));
  result = 0;
  if (v6 >= 2)
  {
    return v6 - 1;
  }

  return result;
}

uint64_t sub_21096D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  if (*(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 84) == a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  }

  else
  {
    if (a3 == 254)
    {
      result = *(a4 + 20);
      *(a1 + result) = a2 + 1;
      return result;
    }

    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v6 = *(a4 + 24) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLStyleTransfer.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLStyleTransfer.PersistentParameters;
  if (!type metadata singleton initialization cache for MLStyleTransfer.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLStyleTransfer.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v4, *(result - 8) + 64, *(result - 8) + 64, "\t");
    v5[0] = v4;
    v5[1] = &unk_3462B0;
    result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v5[2] = *(result - 8) + 64;
      v5[3] = &value witness table for Builtin.Int64 + 64;
      v5[4] = &value witness table for Builtin.Int64 + 64;
      v5[5] = &unk_3462B0;
      swift_initStructMetadata(a1, 256, 6, v5, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLStyleTransfer.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v102 = v1;
  v112 = a1;
  v3 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v110 = &v99;
  v116 = type metadata accessor for URL(0);
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v103 = &v99;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v107 = &v99;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v109 = &v99;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v114 = &v99;
  v15 = alloca(v6);
  v16 = alloca(v6);
  v17 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v99 = &type metadata for Any + 8;
  v111 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v113 = v2;
  outlined init with copy of MLTrainingSessionParameters(v2, &v99, type metadata accessor for MLStyleTransfer.DataSource);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v21 = (&v99 + *(v20 + 48));
  v22 = *(v20 + 64);
  v105 = *(&v99 + v22);
  v117 = *(&v99 + v22 + 8);
  v23 = *(v115 + 32);
  v24 = v116;
  v23(&v99, &v99, v116);
  v25 = v114;
  v104 = v23;
  v23(v114, v21, v24);
  v108 = &v99;
  *&v26 = URL.path.getter(v25);
  v27 = *(&v26 + 1);
  v121 = v26;
  *&v28 = URL.path.getter(v25);
  v29 = *(&v28 + 1);
  v120[0] = v28;
  v118 = 0;
  v119 = 0xE000000000000000;
  v106 = lazy protocol witness table accessor for type String and conformance String();
  v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v120, &v118, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v106, v106, v106);
  v32 = v31;
  v27;
  v29;
  v33 = v109;
  URL.init(fileURLWithPath:)(v30, v32);
  v32;
  v34 = URL.path.getter(v32);
  v36 = v35;
  v115 = *(v115 + 8);
  (v115)(v33, v116);
  v122 = &type metadata for String;
  *&v121 = v34;
  *(&v121 + 1) = v36;
  outlined init with take of Any(&v121, v120);
  v37 = v111;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v111);
  v118 = v37;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x6D695F656C797473, 0xEB00000000656761, isUniquelyReferenced_nonNull_native);
  v100 = v118;
  v111 = "sing the style image URL." + 0x8000000000000000;
  *&v39 = URL.path.getter(v120);
  v101 = *(&v39 + 1);
  v121 = v39;
  *&v40 = URL.path.getter(v120);
  v41 = *(&v40 + 1);
  v120[0] = v40;
  v118 = 0;
  v119 = 0xE000000000000000;
  v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v120, &v118, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v106, v106, v106);
  v44 = v43;
  v45 = v115;
  v101;
  v41;
  v46 = v109;
  URL.init(fileURLWithPath:)(v42, v44);
  v44;
  v47 = URL.path.getter(v44);
  v49 = v48;
  v45(v46, v116);
  v122 = &type metadata for String;
  *&v121 = v47;
  *(&v121 + 1) = v49;
  outlined init with take of Any(&v121, v120);
  v50 = v100;
  v51 = swift_isUniquelyReferenced_nonNull_native(v100);
  v118 = v50;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0xD000000000000011, v111, v51);
  v52 = v118;
  if (v117 != 1)
  {
    v122 = &type metadata for UInt;
    *&v121 = v105;
    outlined init with take of Any(&v121, v120);
    v53 = swift_isUniquelyReferenced_nonNull_native(v52);
    v118 = v52;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0xD000000000000011, ("sing the content directory URL." + 0x8000000000000000), v53);
    v52 = v118;
  }

  v54 = v116;
  v45(v114, v116);
  v45(v108, v54);
  v55 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v56 = *(v55 + 20);
  v114 = v55;
  v57 = *(v113 + v56);
  v58 = 7237219;
  if (v57)
  {
    v58 = 0x6574694C6E6E63;
  }

  v122 = &type metadata for String;
  *&v121 = v58;
  *(&v121 + 1) = (v57 << 58) | 0xE300000000000000;
  outlined init with take of Any(&v121, v120);
  v59 = swift_isUniquelyReferenced_nonNull_native(v52);
  v118 = v52;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x687469726F676C61, 0xE90000000000006DLL, v59);
  v60 = v118;
  v61 = *(v113 + *(v55 + 28));
  v122 = &type metadata for Int;
  *&v121 = v61;
  outlined init with take of Any(&v121, v120);
  v62 = swift_isUniquelyReferenced_nonNull_native(v60);
  v118 = v60;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x645F6C6574786574, 0xEE00797469736E65, v62);
  v63 = v118;
  v64 = v114;
  v65 = v113;
  v66 = *(v113 + *(v114 + 8));
  v122 = &type metadata for Int;
  *&v121 = v66;
  outlined init with take of Any(&v121, v120);
  v67 = swift_isUniquelyReferenced_nonNull_native(v63);
  v118 = v63;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x74735F656C797473, 0xEE006874676E6572, v67);
  v68 = v118;
  v69 = *(v65 + *(v64 + 9));
  v70 = 1869903201;
  if (*(v65 + *(v64 + 9)))
  {
    v70 = 7696483;
  }

  v122 = &type metadata for String;
  *&v121 = v70;
  *(&v121 + 1) = ((v69 ^ 1u) << 56) - 0x1D00000000000000;
  outlined init with take of Any(&v121, v120);
  v71 = swift_isUniquelyReferenced_nonNull_native(v68);
  v118 = v68;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x656369766564, 0xE600000000000000, v71);
  v72 = v118;
  v73 = v110;
  outlined init with copy of MLTrainingSessionParameters(v113 + *(v64 + 6), v110, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v74 = v116;
  if (__swift_getEnumTagSinglePayload(v73, 1, v116) == 1)
  {
    outlined destroy of MLStyleTransfer.ModelParameters.ValidationData(v73);
  }

  else
  {
    v75 = v107;
    v104(v107, v73, v74);
    v113 = v72;
    *&v76 = URL.path.getter(v75);
    v114 = *(&v76 + 1);
    v121 = v76;
    *&v77 = URL.path.getter(v75);
    v110 = *(&v77 + 1);
    v120[0] = v77;
    v118 = 0;
    v119 = 0xE000000000000000;
    v78 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v120, &v118, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v106, v106, v106);
    v79 = v74;
    v81 = v80;
    v114;
    v110;
    v82 = v109;
    URL.init(fileURLWithPath:)(v78, v81);
    v81;
    v83 = URL.path.getter(v81);
    v85 = v84;
    (v115)(v82, v79);
    v122 = &type metadata for String;
    *&v121 = v83;
    *(&v121 + 1) = v85;
    outlined init with take of Any(&v121, v120);
    v86 = v113;
    v87 = swift_isUniquelyReferenced_nonNull_native(v113);
    v118 = v86;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x69746164696C6176, 0xEA00000000006E6FLL, v87);
    v72 = v118;
    (v115)(v107, v116);
  }

  v88 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v72;
  *&v121 = 0;
  v90 = [v88 dataWithPropertyList:isa format:200 options:0 error:&v121];
  v91 = v90;

  v92 = v121;
  if (v91)
  {
    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v91);
    v95 = v94;

    v96 = v103;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    Data.write(to:options:)(v96, 0, v93, v95);
    (v115)(v96, v116);
    outlined consume of Data._Representation(v93, v95);
  }

  else
  {
    v97 = v92;
    _convertNSErrorToError(_:)(v92);

    swift_willThrow(v97, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

NSURL *MLStyleTransfer.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v108 = v2;
  v109 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v101;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v105 = &v101;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v110 = &v101;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v104 = &v101;
  v14 = alloca(v5);
  v15 = alloca(v5);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v16 = v108;
  v17 = Data.init(contentsOf:options:)(&v101, 0);
  v108 = v16;
  if (!v16)
  {
    v115 = a1;
    v107 = v4;
    v20 = *(v4 + 8);
    v21 = v18;
    v22 = v17;
    v116 = v20;
    v20(&v101, v3);
    v23 = objc_opt_self(NSPropertyListSerialization);
    v114 = v22;
    v113 = v21;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v121[0] = 0;
    v25 = [v23 propertyListWithData:isa options:0 format:0 error:v121];
    v26 = v25;

    v27 = v121[0];
    if (!v26)
    {
      v33 = v27;
      _convertNSErrorToError(_:)(v27);

      swift_willThrow(v33, "propertyListWithData:options:format:error:");
      outlined consume of Data._Representation(v114, v113);
      v116(v115, v3);
      return __stack_chk_guard;
    }

    v117 = v3;
    _bridgeAnyObjectToAny(_:)(v26);
    swift_unknownObjectRelease(v26);
    outlined init with copy of Any(v123, v121);
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    if (!swift_dynamicCast(&string, v121, &type metadata for Any + 8, v28, 6))
    {
      v34 = "parameters.plist" + 0x8000000000000000;
      v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
      v37 = 0xD000000000000037;
      goto LABEL_15;
    }

    countAndFlagsBits = string._countAndFlagsBits;
    specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, string._countAndFlagsBits);
    if (v122)
    {
      if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for String, 6))
      {
        v118 = countAndFlagsBits;
        object = string._object;
        v31 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLStyleTransfer.PersistentParameters.init(sessionDirectory:), string);
        object;
        if (v31)
        {
          if (v31 != 1)
          {
            v118;
            v34 = "ontain an algorithm." + 0x8000000000000000;
            v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
            v37 = 0xD000000000000049;
            goto LABEL_15;
          }

          v32 = 1;
        }

        else
        {
          v32 = 0;
        }

        v39 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
        v40 = v109;
        *(v109 + v39[5]) = v32;
        specialized Dictionary.subscript.getter(0x645F6C6574786574, 0xEE00797469736E65, v118);
        if (v122)
        {
          if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for Int, 6))
          {
            v41 = string._countAndFlagsBits;
            goto LABEL_25;
          }
        }

        else
        {
          outlined destroy of Any?(v121);
        }

        v41 = 256;
LABEL_25:
        *(v40 + v39[7]) = v41;
        specialized Dictionary.subscript.getter(0x74735F656C797473, 0xEE006874676E6572, v118);
        v42 = 5;
        if (v122)
        {
          if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for Int, 6))
          {
            v42 = string._countAndFlagsBits;
          }
        }

        else
        {
          outlined destroy of Any?(v121);
        }

        *(v40 + v39[8]) = v42;
        specialized Dictionary.subscript.getter(0x656369766564, 0xE600000000000000, v118);
        if (v122)
        {
          if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for String, 6))
          {
            v43.value = _MLDevice.init(rawValue:)(string).value;
            if (v43.value != CreateML__MLDevice_unknownDefault)
            {
              *(v40 + v39[9]) = v43.value & 1;
LABEL_35:
              v44 = v118;
              specialized Dictionary.subscript.getter(0x6D695F656C797473, 0xEB00000000656761, v118);
              if (v122)
              {
                if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for String, 6))
                {
                  v102 = v39;
                  v45 = string._countAndFlagsBits;
                  v46 = string._object;
                  v103 = objc_opt_self(NSFileManager);
                  v47 = [v103 defaultManager];
                  v48 = v47;
                  v112 = v45;
                  v111 = v46;
                  v49 = String._bridgeToObjectiveC()();
                  v119 = [v48 fileExistsAtPath:v49];

                  if (v119)
                  {
                    v50 = v104;
                    v51 = v111;
                    URL.init(fileURLWithPath:)(v112, v111);
                    v51;
                  }

                  else
                  {
                    v52 = v111;
                    URL.init(fileURLWithPath:)(v112, v111);
                    v52;
                    v53 = URL.path.getter(v52);
                    v55 = v54;
                    v56 = v104;
                    URL.appendingPathComponent(_:)(v53, v54);
                    v50 = v56;
                    v55;
                    v116(v110, v117);
                  }

                  v57 = v118;
                  specialized Dictionary.subscript.getter(0xD000000000000011, ("sing the style image URL." + 0x8000000000000000), v118);
                  if (v122)
                  {
                    if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for String, 6))
                    {
                      v58 = string._countAndFlagsBits;
                      v59 = string._object;
                      v60 = [v103 defaultManager];
                      v61 = v60;
                      v112 = v58;
                      v111 = v59;
                      v62 = String._bridgeToObjectiveC()();
                      LOBYTE(v58) = [v61 fileExistsAtPath:v62];

                      if (v58)
                      {
                        v63 = v111;
                        URL.init(fileURLWithPath:)(v112, v111);
                        v63;
                      }

                      else
                      {
                        v68 = v110;
                        v69 = v111;
                        URL.init(fileURLWithPath:)(v112, v111);
                        v69;
                        v70 = URL.path.getter(v69);
                        v72 = v71;
                        URL.appendingPathComponent(_:)(v70, v71);
                        v72;
                        v116(v68, v117);
                      }

                      specialized Dictionary.subscript.getter(0xD000000000000011, ("sing the content directory URL." + 0x8000000000000000), v118);
                      v73 = v102;
                      if (v122)
                      {
                        LODWORD(v74) = swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for Int, 6);
                        if (v74)
                        {
                          if (string._countAndFlagsBits < 0)
                          {
                            BUG();
                          }

                          v111 = string._countAndFlagsBits;
                          LODWORD(v112) = 0;
LABEL_57:
                          v75 = v118;
                          specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v118);
                          v75;
                          if (v122)
                          {
                            if (swift_dynamicCast(&string, v121, &type metadata for Any + 8, &type metadata for String, 6))
                            {
                              v76 = string._countAndFlagsBits;
                              v77 = string._object;
                              v78 = [v103 defaultManager];
                              v79 = v78;
                              v118 = v76;
                              v80 = String._bridgeToObjectiveC()();
                              LOBYTE(v76) = [v79 fileExistsAtPath:v80];

                              if (v76)
                              {
                                URL.init(fileURLWithPath:)(v118, v77);
                                outlined consume of Data._Representation(v114, v113);
                                v77;
                                v81 = v117;
                                (v116)(v115);
                              }

                              else
                              {
                                v84 = v110;
                                URL.init(fileURLWithPath:)(v118, v77);
                                v77;
                                v85 = URL.path.getter(v77);
                                v87 = v86;
                                v88 = v115;
                                URL.appendingPathComponent(_:)(v85, v86);
                                v87;
                                outlined consume of Data._Representation(v114, v113);
                                v89 = v88;
                                v90 = v117;
                                v91 = v116;
                                v116(v89, v117);
                                v92 = v84;
                                v81 = v90;
                                v91(v92, v90);
                              }

                              v83 = v109;
                              v93 = v107;
                              __swift_destroy_boxed_opaque_existential_1Tm(v123);
                              v94 = v83 + v102[6];
                              v110 = *(v93 + 32);
                              (v110)(v94, v106, v81);
                              __swift_storeEnumTagSinglePayload(v94, 0, 1, v81);
                              goto LABEL_66;
                            }

                            outlined consume of Data._Representation(v114, v113);
                          }

                          else
                          {
                            outlined consume of Data._Representation(v114, v113);
                            outlined destroy of Any?(v121);
                          }

                          v82 = v117;
                          v116(v115, v117);
                          __swift_destroy_boxed_opaque_existential_1Tm(v123);
                          v83 = v109;
                          __swift_storeEnumTagSinglePayload(v109 + v73[6], 1, 1, v82);
                          v110 = *(v107 + 32);
                          v81 = v82;
LABEL_66:
                          v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
                          v96 = v83 + *(v95 + 48);
                          v109 = *(v95 + 64);
                          v97 = v83;
                          v98 = v83;
                          v99 = v110;
                          (v110)(v97, v104, v81);
                          (v99)(v96, v105, v81);
                          v100 = v109;
                          *(v98 + v109) = v111;
                          *(v98 + v100 + 8) = v112;
                          return __stack_chk_guard;
                        }
                      }

                      else
                      {
                        v74 = outlined destroy of Any?(v121);
                      }

                      LOBYTE(v74) = 1;
                      LODWORD(v112) = v74;
                      v111 = 0;
                      goto LABEL_57;
                    }

                    v57;
                  }

                  else
                  {
                    v57;
                    outlined destroy of Any?(v121);
                  }

                  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
                  *v65 = 0xD00000000000003FLL;
                  *(v65 + 8) = "content_directory" + 0x8000000000000000;
                  *(v65 + 16) = 0;
                  *(v65 + 32) = 0;
                  *(v65 + 48) = 0;
                  swift_willThrow(&type metadata for MLCreateError, v64);
                  outlined consume of Data._Representation(v114, v113);
                  v66 = v117;
                  v67 = v116;
                  v116(v115, v117);
                  v67(v50, v66);
LABEL_16:
                  __swift_destroy_boxed_opaque_existential_1Tm(v123);
                  return __stack_chk_guard;
                }

                v44;
              }

              else
              {
                v44;
                outlined destroy of Any?(v121);
              }

              v34 = "ontain a valid algorithm." + 0x8000000000000000;
              v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
              v37 = 0xD000000000000039;
LABEL_15:
              *v36 = v37;
              *(v36 + 8) = v34;
              *(v36 + 16) = 0;
              *(v36 + 32) = 0;
              *(v36 + 48) = 0;
              swift_willThrow(&type metadata for MLCreateError, v35);
              outlined consume of Data._Representation(v114, v113);
              v116(v115, v117);
              goto LABEL_16;
            }
          }
        }

        else
        {
          outlined destroy of Any?(v121);
        }

        *(v40 + v39[9]) = 0;
        goto LABEL_35;
      }

      countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits;
      outlined destroy of Any?(v121);
    }

    v34 = "ningSessionDelegate" + 0x8000000000000000;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    v37 = 0xD000000000000044;
    goto LABEL_15;
  }

  v19 = *(v4 + 8);
  v19(a1, v3);
  v19(&v101, v3);
  return __stack_chk_guard;
}