uint64_t SystemXPCRequestExecutor.connection.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t SystemXPCRequestExecutor.init(targetConnection:)(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return v6;
}

uint64_t SystemXPCRequestExecutor.deinit()
{
  v3 = *(v0 + 16);

  dispatch thunk of XPCConnection.cancel()();

  v1 = *(v4 + 16);

  return v4;
}

uint64_t SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[4] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v5 = type metadata accessor for XPCDictionary();
  v4[11] = v5;
  v8 = *(v5 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v6 = v4[4];

  return _swift_task_switch(SystemXPCRequestExecutor.performRequest(_:using:), 0);
}

uint64_t SystemXPCRequestExecutor.performRequest(_:using:)()
{
  v18 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v19 = v0[11];
  v20 = v0[9];
  v15 = v0[8];
  v14 = v0[7];
  v0[4] = v0;
  XPCDictionary.init()();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("request", 7uLL, 1);
  ViewHierarchyRequest.data.getter(v14, v15);
  XPCDictionary.subscript.setter();
  (*(v17 + 16))(v16, v18, v19);
  v20;
  *(swift_task_alloc() + 16) = v20;
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
  v11 = v13[14];
  v8 = v13[13];
  v9 = v13[11];
  v10 = v13[10];
  v6 = v13[9];
  v7 = v13[12];

  v1 = *(v7 + 8);
  v13[15] = v1;
  v13[16] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v8, v9);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("performRequest(_:using:)", 0x18uLL, 1);
  v13[17] = v2._object;

  v12 = swift_task_alloc();
  v13[18] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v13[19] = v4;
  *v4 = v13[4];
  v4[1] = SystemXPCRequestExecutor.performRequest(_:using:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, 0, 0, v2._countAndFlagsBits, v2._object, partial apply for closure #2 in SystemXPCRequestExecutor.performRequest(_:using:), v12, &type metadata for () + 8);
}

{
  v10 = *v1;
  v2 = *(*v1 + 152);
  v10[4] = *v1;
  v11 = v10 + 4;
  v10[20] = v0;

  if (v0)
  {
    v6 = *v11;
    v5 = SystemXPCRequestExecutor.performRequest(_:using:);
  }

  else
  {
    v3 = v10[18];
    v9 = v10[17];
    v8 = v10[10];

    v4 = *v11;
    v5 = SystemXPCRequestExecutor.performRequest(_:using:);
  }

  return _swift_task_switch(v5, 0);
}

{
  v1 = v0[16];
  v2 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
  v3 = v0[11];
  v0[4] = v0;
  v2();

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

{
  v1 = v0[18];
  v8 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v9 = v0[11];
  v7 = v0[10];
  v0[4] = v0;

  v11(v12, v9);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[20];

  return v3();
}

uint64_t closure #1 in SystemXPCRequestExecutor.performRequest(_:using:)(void *a1, void *a2)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fd", 2uLL, 1);
  fd = [a2 fileDescriptor];
  v6 = String.utf8CString.getter();

  xpc_dictionary_set_fd(a1, (v6 + 32), fd);
  swift_unknownObjectRelease();
}

uint64_t closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v7[1] = a2;
  v9 = a3;
  v18 = partial apply for closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:);
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v13 = *(v17 - 8);
  v14 = v17 - 8;
  v11 = v13;
  v12 = *(v13 + 64);
  v7[0] = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v16 = v7 - v7[0];
  v23 = type metadata accessor for XPCDictionary();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v8 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v10);
  v22 = v7 - v8;
  v27 = v3;
  v26 = v4;
  v25 = v5;
  v24 = *(v4 + 16);

  (*(v20 + 16))(v22, v9, v23);
  (*(v13 + 16))(v16, v10, v17);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v15, v16, v17);
  dispatch thunk of XPCConnection.send(message:replyHandler:)();

  (*(v20 + 8))(v22, v23);
}

uint64_t closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  v8 = type metadata accessor for XPCError();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v12 = v7 - v11;
  v21 = v7 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v15 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v14);
  v17 = v7 - v15;
  v20 = v2;
  v19 = v3;
  outlined init with copy of Result<XPCDictionary, XPCError>(v2, v7 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v17, v8);
    v21 = v12;
    lazy protocol witness table accessor for type XPCError and conformance XPCError();
    v7[0] = swift_allocError();
    (*(v9 + 16))(v6, v12, v8);
    v7[1] = &v18;
    v18 = v7[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume<>()();
    v4 = type metadata accessor for XPCDictionary();
    return (*(*(v4 - 8) + 8))(v17);
  }
}

uint64_t protocol witness for RequestExecutor.performRequest(_:using:) in conformance SystemXPCRequestExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for RequestExecutor.performRequest(_:using:) in conformance SystemXPCRequestExecutor;

  return SystemXPCRequestExecutor.performRequest(_:using:)(a1, a2, a3);
}

uint64_t protocol witness for RequestExecutor.performRequest(_:using:) in conformance SystemXPCRequestExecutor()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_100002334()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(a1, v3);
}

uint64_t outlined init with copy of Result<XPCDictionary, XPCError>(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for XPCError();
  }

  else
  {
    v2 = type metadata accessor for XPCDictionary();
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t lazy protocol witness table accessor for type XPCError and conformance XPCError()
{
  v2 = lazy protocol witness table cache variable for type XPCError and conformance XPCError;
  if (!lazy protocol witness table cache variable for type XPCError and conformance XPCError)
  {
    type metadata accessor for XPCError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type XPCError and conformance XPCError);
    return WitnessTable;
  }

  return v2;
}

uint64_t ViewHierarchyAgentError.errorDescription.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid request", 0xFuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid file descriptor received", 0x20uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to connect to TargetHub, another connection already exists", 0x41uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to connect to TargetHub, connection timed out", 0x34uLL, 1)._countAndFlagsBits;
  }
}

BOOL static ViewHierarchyAgentError.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError()
{
  v2 = lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError;
  if (!lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError;
  if (!lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError;
  if (!lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ViewHierarchyAgentError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewHierarchyAgentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, logger);
  __swift_project_value_buffer(v1, logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchy", 0x1AuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ViewHierarchyAgent", 0x12uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t outlined init with copy of RequestExecutor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t CaptureController.temporaryDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t CaptureController.__allocating_init(requestExecutor:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return CaptureController.init(requestExecutor:)(a1);
}

uint64_t CaptureController.init(requestExecutor:)(uint64_t *a1)
{
  v64 = a1;
  v88 = 0;
  v50 = partial apply for implicit closure #1 in CaptureController.init(requestExecutor:);
  v51 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v52 = partial apply for closure #1 in OSLogArguments.append(_:);
  v53 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = "Fatal error";
  v56 = "ViewHierarchyAgent/CaptureController.swift";
  v99 = 0;
  v98 = 0;
  v96 = 0;
  v62 = 0;
  v57 = type metadata accessor for Logger();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v61 = v26 - v60;
  v73 = type metadata accessor for UUID();
  v70 = *(v73 - 8);
  v71 = v73 - 8;
  v63 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v72 = v26 - v63;
  v84 = type metadata accessor for URL();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v66 = *(v81 + 64);
  v65 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v64);
  v76 = v26 - v65;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v87 = v26 - v67;
  v99 = v2;
  v98 = v3;
  v68 = v103;
  outlined init with copy of RequestExecutor(v2, v103);
  outlined init with take of RequestExecutor(v68, (v83 + 16));
  v78 = &_s7Mercury13XPCConnectionC30withUnsafeUnderlyingConnectionyxxSo13OS_xpc_object_pKXEKlFTj_ptr;
  v4 = objc_opt_self();
  v79 = &SystemXPCRequestExecutor;
  v69 = [v4 defaultManager];
  v77 = [v69 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  v74 = UUID.uuidString.getter();
  v75 = v5;
  (*(v70 + 8))(v72, v73);
  URL.appendingPathComponent(_:)();
  v6 = v87;

  v86 = *(v81 + 8);
  v85 = v81 + 8;
  v86(v76, v84);

  v80 = &SystemXPCRequestExecutor;
  (*(v81 + 32))(v83 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory, v6, v84);
  v102 = 0;
  v7 = v78[167];
  v91 = [objc_opt_self() v79[10].name];
  (*(v81 + 16))(v6, v80[15].base_meths + v83, v84);
  URL._bridgeToObjectiveC()(v8);
  v90 = v9;
  v86(v87, v84);
  v97 = v102;
  v92 = [v91 createDirectoryAtURL:v90 withIntermediateDirectories:1 attributes:v88 error:&v97];
  v89 = v97;
  v97;
  v10 = v102;
  v102 = v89;

  if (v92)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    return v83;
  }

  else
  {
    v34 = v102;
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = v61;
    v35 = 0;
    swift_errorRetain();
    v96 = v36;
    v13 = logger.unsafeMutableAddressor();
    (*(v58 + 16))(v12, v13, v57);
    swift_errorRetain();
    v39 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();
    v37 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v14 = swift_allocObject();
    v15 = v40;
    v41 = v14;
    *(v14 + 16) = v50;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v41;
    v45 = v16;
    *(v16 + 16) = v51;
    *(v16 + 24) = v17;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v44 = _allocateUninitializedArray<A>(_:)();
    v46 = v18;

    v19 = v42;
    v20 = v46;
    *v46 = v52;
    v20[1] = v19;

    v21 = v43;
    v22 = v46;
    v46[2] = v53;
    v22[3] = v21;

    v23 = v45;
    v24 = v46;
    v46[4] = v54;
    v24[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v48, v49))
    {
      v25 = v35;
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      v26[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(1);
      v30 = &v95;
      v95 = v27;
      v31 = &v101;
      v101 = v28;
      v32 = &v100;
      v100 = v29;
      serialize(_:at:)(2, &v95);
      serialize(_:at:)(1, v30);
      v93 = v52;
      v94 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v93, v30, v31, v32);
      v33 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v93 = v53;
        v94 = v43;
        closure #1 in osLogInternal(_:log:type:)(&v93, &v95, &v101, &v100);
        v26[1] = 0;
        v93 = v54;
        v94 = v45;
        closure #1 in osLogInternal(_:log:type:)(&v93, &v95, &v101, &v100);
        _os_log_impl(&_mh_execute_header, v48, v49, "Failed to remove temporary directory: %s", v27, 0xCu);
        destroyStorage<A>(_:count:)(v28);
        destroyStorage<A>(_:count:)(v29);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v58 + 8))(v61, v57);
    implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100003FF0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t CaptureController.deinit()
{
  v44 = partial apply for implicit closure #1 in CaptureController.deinit;
  v45 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v46 = closure #1 in OSLogArguments.append(_:)partial apply;
  v47 = closure #1 in OSLogArguments.append(_:)partial apply;
  v48 = closure #1 in OSLogArguments.append(_:)partial apply;
  v72 = 0;
  v70 = 0;
  v49 = 0;
  v50 = type metadata accessor for Logger();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v54 = v20 - v53;
  v59 = type metadata accessor for URL();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v55 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v0 = v20 - v55;
  v60 = v20 - v55;
  v72 = v1;
  v75 = 0;
  v65 = [objc_opt_self() defaultManager];
  (*(v57 + 16))(v0, v56 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory, v59);
  URL._bridgeToObjectiveC()(v2);
  v64 = v3;
  v61 = *(v57 + 8);
  v62 = v57 + 8;
  v61(v60, v59);
  v71 = v75;
  v66 = [v65 removeItemAtURL:v64 error:&v71];
  v63 = v71;
  v71;
  v4 = v75;
  v75 = v63;

  if ((v66 & 1) == 0)
  {
    v28 = v75;
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = v54;
    v29 = 0;
    swift_errorRetain();
    v70 = v30;
    v7 = logger.unsafeMutableAddressor();
    (*(v51 + 16))(v6, v7, v50);
    swift_errorRetain();
    v33 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = 32;
    v8 = swift_allocObject();
    v9 = v34;
    v35 = v8;
    *(v8 + 16) = v44;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v35;
    v39 = v10;
    *(v10 + 16) = v45;
    *(v10 + 24) = v11;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v38 = _allocateUninitializedArray<A>(_:)();
    v40 = v12;

    v13 = v36;
    v14 = v40;
    *v40 = v46;
    v14[1] = v13;

    v15 = v37;
    v16 = v40;
    v40[2] = v47;
    v16[3] = v15;

    v17 = v39;
    v18 = v40;
    v40[4] = v48;
    v18[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v42, v43))
    {
      v19 = v29;
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(0);
      v23 = createStorage<A>(capacity:type:)(1);
      v24 = &v69;
      v69 = v21;
      v25 = &v74;
      v74 = v22;
      v26 = &v73;
      v73 = v23;
      serialize(_:at:)(2, &v69);
      serialize(_:at:)(1, v24);
      v67 = v46;
      v68 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v67, v24, v25, v26);
      v27 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v67 = v47;
        v68 = v37;
        closure #1 in osLogInternal(_:log:type:)(&v67, &v69, &v74, &v73);
        v20[1] = 0;
        v67 = v48;
        v68 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v67, &v69, &v74, &v73);
        _os_log_impl(&_mh_execute_header, v42, v43, "Failed to remove temporary directory: %s", v21, 0xCu);
        destroyStorage<A>(_:count:)(v22);
        destroyStorage<A>(_:count:)(v23);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v51 + 8))(v54, v50);
  }

  __swift_destroy_boxed_opaque_existential_1((v56 + 16));
  v61((v56 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory), v59);
  return v56;
}

uint64_t CaptureController.__deallocating_deinit()
{
  v0 = *CaptureController.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t CaptureController.performRequest(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = v3;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[9] = v4;
  v4[7] = 0;
  v4[8] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[7] = a1;
  v4[8] = a2;
  v4[10] = a3;
  v4[11] = v3;
  v5 = v4[9];
  return _swift_task_switch(CaptureController.performRequest(_:using:), 0);
}

uint64_t CaptureController.performRequest(_:using:)()
{
  v1 = v0[15];
  v0[9] = v0;
  outlined init with copy of RequestExecutor(v1 + 16, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = (*(v10 + 8) + **(v10 + 8));
  v2 = *(*(v10 + 8) + 4);
  v3 = swift_task_alloc();
  v8[16] = v3;
  *v3 = v8[9];
  v3[1] = CaptureController.performRequest(_:using:);
  v4 = v8[14];
  v5 = v8[13];
  v6 = v8[12];

  return v11(v6, v5, v4, v9, v10);
}

{
  v7 = *v1;
  v2 = *(*v1 + 128);
  *(v7 + 72) = *v1;
  v8 = (v7 + 72);
  *(v7 + 136) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = CaptureController.performRequest(_:using:);
  }

  else
  {
    v3 = *v8;
    v4 = CaptureController.performRequest(_:using:);
  }

  return _swift_task_switch(v4, 0);
}

{
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v0 + 72) + 8);
  v2 = *(v0 + 72);

  return v1();
}

{
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v5 + 72) + 8);
  v2 = *(v5 + 72);
  v3 = *(v5 + 136);

  return v1();
}

uint64_t CaptureController.createTemporaryFile()@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v31 = 0;
  v30 = 0;
  v5[1] = 0;
  v14 = type metadata accessor for UUID();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v13 = v5 - v6;
  v26 = type metadata accessor for URL();
  v17 = *(v26 - 8);
  v18 = v26 - 8;
  v8 = v17[8];
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v19 = v5 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5 - v7);
  v29 = v5 - v9;
  v31 = v5 - v9;
  v30 = v10;
  v25 = v17[2];
  v24 = v17 + 2;
  v25(v1, v10 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v16 = v2;
  (*(v11 + 8))(v13, v14);
  URL.appendingPathComponent(_:)();

  v28 = v17[1];
  v27 = v17 + 1;
  v28(v19, v26);
  v22 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v20 = v3;
  v21 = String._bridgeToObjectiveC()();

  [v22 createFileAtPath:v21 contents:0 attributes:?];

  (v25)(v23, v29, v26);
  return (v28)(v29, v26);
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void destroyStorage<A>(_:count:)(uint64_t a1)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v20 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v5 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v3 = _swift_stdlib_malloc_size(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_100006FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000700C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_10000713C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000071EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

uint64_t sub_100007238()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t type metadata accessor for CaptureController()
{
  v1 = type metadata singleton initialization cache for CaptureController;
  if (!type metadata singleton initialization cache for CaptureController)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for CaptureController()
{
  v2 = type metadata accessor for URL();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t outlined destroy of String.UTF8View(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

Swift::Void __swiftcall enterSandbox()()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyAgent", 0x1FuLL, 1);
  String.utf8CString.getter();

  v5 = _set_user_dir_suffix();
  swift_unknownObjectRelease();

  if (v5)
  {
    v4 = confstr(_:)(65537);
    if (v0)
    {
      String.realpath.getter(v4, v0);
      v2 = v1;

      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {

      return;
    }

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unable to read _CS_DARWIN_USER_TEMP_DIR", 0x27uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Could not create temporary directory.", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t confstr(_:)(int a1)
{
  v5 = a1;
  v4[0] = Data.init(repeating:count:)();
  v4[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Data.withUnsafeMutableBytes<A>(_:)();
  outlined destroy of Data(v4);
  return v3;
}

uint64_t String.realpath.getter(uint64_t a1, uint64_t a2)
{
  v9[2] = a1;
  v9[3] = a2;

  v7 = String.utf8CString.getter();

  v8 = realpath_DARWIN_EXTSN((v7 + 32), 0);
  swift_unknownObjectRelease();

  if (!v8)
  {
    return 0;
  }

  v4 = String.init(cString:)();
  v5 = v2;

  v9[0] = v4;
  v9[1] = v5;
  UnsafeMutablePointer.deallocate()();
  outlined destroy of String?(v9);
  return v4;
}

uint64_t closure #1 in confstr(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v8 = a2 - a1;
    }

    else
    {
      __break(1u);
    }

    if (v8 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v4 = UnsafeMutableBufferPointer.baseAddress.getter();
  result = confstr(a3, v4, 0x400uLL);
  if (result <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    if (a1)
    {
      if (a2)
      {
        v7 = a2 - a1;
      }

      else
      {
        __break(1u);
      }

      if (v7 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (result)
    {
      result = String.init(cString:)();
      *a4 = result;
      a4[1] = v6;
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
    }
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t ViewHierarchyRequest.data.getter(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v14 = "Fatal error";
  v15 = "Unexpectedly found nil while unwrapping an Optional value";
  v16 = "ViewHierarchyAgent/ViewHierarchyRequest.swift";
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v19 = type metadata accessor for String.Encoding();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v5 - v22;
  v26 = __chkstk_darwin(v18);
  v27 = v2;
  v12 = v18;
  v13 = v17;
  v9 = v17;
  v8 = v18;

  v24 = v8;
  v25 = v9;
  static String.Encoding.utf8.getter();
  default argument 1 of String.data(using:allowLossyConversion:)();
  v10 = String.data(using:allowLossyConversion:)();
  v11 = v3;
  (*(v20 + 8))(v23, v19);
  if ((v11 & 0xF000000000000000) == 0xF000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v10;
    v7 = v11;
  }

  v5[1] = v7;
  v5[0] = v6;

  return v5[0];
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewHierarchyRequest(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewHierarchyRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void *ViewHierarchyAgent.systemListenerQueue.getter()
{
  v2 = *(v0 + 16);
  v2;
  return v2;
}

void *ViewHierarchyAgent.remoteListenerQueue.getter()
{
  v2 = *(v0 + 24);
  v2;
  return v2;
}

void *ViewHierarchyAgent.targetHubListenerQueue.getter()
{
  v2 = *(v0 + 32);
  v2;
  return v2;
}

uint64_t ViewHierarchyAgent.systemListener.getter()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v2;
}

uint64_t ViewHierarchyAgent.remoteListener.getter()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return v2;
}

uint64_t ViewHierarchyAgent.targetHubListener.getter()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2;
}

uint64_t ViewHierarchyAgent.captureControllers.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 88);

  swift_endAccess();
  return v2;
}

uint64_t ViewHierarchyAgent.captureControllers.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;

  swift_endAccess();
}

uint64_t ViewHierarchyAgent.pendingConnections.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 96);

  swift_endAccess();
  return v2;
}

uint64_t ViewHierarchyAgent.pendingConnections.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;

  swift_endAccess();
}

void static ViewHierarchyAgent.main()()
{
  enterSandbox()();
  v0 = *ViewHierarchyAgent.shared.unsafeMutableAddressor();

  ViewHierarchyAgent.run()();
}

uint64_t *ViewHierarchyAgent.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static ViewHierarchyAgent.shared;
}

Swift::Void __swiftcall ViewHierarchyAgent.run()()
{
  ViewHierarchyAgent.startSystemListener()();
  ViewHierarchyAgent.startRemoteListener()();
  ViewHierarchyAgent.startTargetHubListener()();
  dispatch_main();
}

void *one-time initialization function for shared()
{
  type metadata accessor for ViewHierarchyAgent();
  result = ViewHierarchyAgent.__allocating_init()();
  static ViewHierarchyAgent.shared = result;
  return result;
}

uint64_t static ViewHierarchyAgent.shared.getter()
{
  v1 = *ViewHierarchyAgent.shared.unsafeMutableAddressor();

  return v1;
}

void *ViewHierarchyAgent.().init()()
{
  v56 = 0;
  v42 = 0;
  v22 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v32 = &v22 - v22;
  v23 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v31 = &v22 - v23;
  v24 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v30 = &v22 - v24;
  v56 = v0;
  v28 = type metadata accessor for OS_dispatch_queue();
  v26 = 19;
  v49 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SystemListenerQueue", 0x13uLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v32);
  v1 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2 = v26;
  v3 = v49;
  v55[2] = v1;
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RemoteListenerQueue", v2, v3 & 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v32);
  v4 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v5 = v49;
  v55[3] = v4;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TargetHubListenerQueue", 0x16uLL, v5 & 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v32);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v55;
  v55[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32V_18ViewHierarchyAgent17CaptureControllerCtMd, &_ss5Int32V_18ViewHierarchyAgent17CaptureControllerCtMR);
  v33 = _allocateUninitializedArray<A>(_:)();
  type metadata accessor for CaptureController();
  v34 = &type metadata for Int32;
  v35 = &protocol witness table for Int32;
  v7[11] = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32V_ScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGtMd, &_ss5Int32V_ScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGtMR);
  v36 = _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v7[12] = Dictionary.init(dictionaryLiteral:)();
  v44 = type metadata accessor for SystemXPCListenerConnection();
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyAgent.xpc", 0x23uLL, v49 & 1);
  countAndFlagsBits = v8._countAndFlagsBits;
  object = v8._object;
  v38 = v55[2];
  v38;
  v9 = static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();
  v10 = v55;
  v40 = v9;
  v41 = v11;

  v12 = v41;
  v10[5] = v40;
  v10[6] = v12;
  type metadata accessor for RemoteXPCListenerConnection();
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyAgent.remote", 0x26uLL, v49 & 1);
  v43 = v13._countAndFlagsBits;
  v46 = v13._object;
  v45 = v55[3];
  v45;
  v47 = static RemoteXPCConnection.remoteServiceListenerConnection(serviceName:targetQueue:)();
  v48 = v14;

  v15 = v48;
  v16 = v49;
  v17 = v55;
  v55[7] = v47;
  v17[8] = v15;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyTargetHub.xpc", 0x27uLL, v16 & 1);
  v50 = v18._countAndFlagsBits;
  v52 = v18._object;
  v51 = v55[4];
  v51;
  v53 = static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();
  v54 = v19;

  v20 = v54;
  result = v55;
  v55[9] = v53;
  result[10] = v20;
  return result;
}

Swift::Void __swiftcall ViewHierarchyAgent.startSystemListener()()
{
  v38 = 0;
  v46 = 0;
  v22 = 0;
  v35 = type metadata accessor for Logger();
  v23 = v35;
  v24 = *(v35 - 8);
  v34 = v24;
  v25 = v24;
  v26 = *(v24 + 64);
  __chkstk_darwin(v35 - 8);
  v32 = v7 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v32;
  v46 = v0;
  v31 = *(v0 + 40);
  v1 = v31;
  v29 = *(v0 + 48);

  v28 = *v1;

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v2 = v30;

  v33 = *(v2 + 40);

  dispatch thunk of XPCConnection.activate()();
  v3 = v32;

  v4 = logger.unsafeMutableAddressor();
  (*(v34 + 16))(v3, v4, v35);
  v40 = Logger.logObject.getter();
  v36 = v40;
  v39 = static os_log_type_t.info.getter();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v5 = v22;
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = 0;
    v14 = createStorage<A>(capacity:type:)(0);
    v12 = v14;
    v15 = createStorage<A>(capacity:type:)(v11);
    v45 = v13;
    v44 = v14;
    v43 = v15;
    v16 = 0;
    v17 = &v45;
    serialize(_:at:)(0, &v45);
    serialize(_:at:)(v16, v17);
    v42 = v41;
    v18 = v7;
    __chkstk_darwin(v7);
    v19 = &v7[-6];
    v7[-4] = v6;
    v7[-3] = &v44;
    v7[-2] = &v43;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v21 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v36, v37, "Started SystemXPC listener", v9, 2u);
      v7[1] = 0;
      destroyStorage<A>(_:count:)(v12);
      destroyStorage<A>(_:count:)(v15);
      UnsafeMutablePointer.deallocate()();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v25 + 8))(v27, v23);
}

Swift::Void __swiftcall ViewHierarchyAgent.startRemoteListener()()
{
  v38 = 0;
  v46 = 0;
  v22 = 0;
  v35 = type metadata accessor for Logger();
  v23 = v35;
  v24 = *(v35 - 8);
  v34 = v24;
  v25 = v24;
  v26 = *(v24 + 64);
  __chkstk_darwin(v35 - 8);
  v32 = v7 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v32;
  v46 = v0;
  v31 = *(v0 + 56);
  v1 = v31;
  v29 = *(v0 + 64);

  v28 = *v1;

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v2 = v30;

  v33 = *(v2 + 56);

  dispatch thunk of XPCConnection.activate()();
  v3 = v32;

  v4 = logger.unsafeMutableAddressor();
  (*(v34 + 16))(v3, v4, v35);
  v40 = Logger.logObject.getter();
  v36 = v40;
  v39 = static os_log_type_t.info.getter();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v5 = v22;
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = 0;
    v14 = createStorage<A>(capacity:type:)(0);
    v12 = v14;
    v15 = createStorage<A>(capacity:type:)(v11);
    v45 = v13;
    v44 = v14;
    v43 = v15;
    v16 = 0;
    v17 = &v45;
    serialize(_:at:)(0, &v45);
    serialize(_:at:)(v16, v17);
    v42 = v41;
    v18 = v7;
    __chkstk_darwin(v7);
    v19 = &v7[-6];
    v7[-4] = v6;
    v7[-3] = &v44;
    v7[-2] = &v43;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v21 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v36, v37, "Started RemoteXPC listener", v9, 2u);
      v7[1] = 0;
      destroyStorage<A>(_:count:)(v12);
      destroyStorage<A>(_:count:)(v15);
      UnsafeMutablePointer.deallocate()();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v25 + 8))(v27, v23);
}

Swift::Void __swiftcall ViewHierarchyAgent.startTargetHubListener()()
{
  v38 = 0;
  v46 = 0;
  v22 = 0;
  v35 = type metadata accessor for Logger();
  v23 = v35;
  v24 = *(v35 - 8);
  v34 = v24;
  v25 = v24;
  v26 = *(v24 + 64);
  __chkstk_darwin(v35 - 8);
  v32 = v7 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v32;
  v46 = v0;
  v31 = *(v0 + 72);
  v1 = v31;
  v29 = *(v0 + 80);

  v28 = *v1;

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v2 = v30;

  v33 = *(v2 + 72);

  dispatch thunk of XPCConnection.activate()();
  v3 = v32;

  v4 = logger.unsafeMutableAddressor();
  (*(v34 + 16))(v3, v4, v35);
  v40 = Logger.logObject.getter();
  v36 = v40;
  v39 = static os_log_type_t.info.getter();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v5 = v22;
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = 0;
    v14 = createStorage<A>(capacity:type:)(0);
    v12 = v14;
    v15 = createStorage<A>(capacity:type:)(v11);
    v45 = v13;
    v44 = v14;
    v43 = v15;
    v16 = 0;
    v17 = &v45;
    serialize(_:at:)(0, &v45);
    serialize(_:at:)(v16, v17);
    v42 = v41;
    v18 = v7;
    __chkstk_darwin(v7);
    v19 = &v7[-6];
    v7[-4] = v6;
    v7[-3] = &v44;
    v7[-2] = &v43;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v21 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v36, v37, "Started Targethub listener", v9, 2u);
      v7[1] = 0;
      destroyStorage<A>(_:count:)(v12);
      destroyStorage<A>(_:count:)(v15);
      UnsafeMutablePointer.deallocate()();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v25 + 8))(v27, v23);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  v2 = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_dispatch_queue);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *closure #1 in ViewHierarchyAgent.startSystemListener()(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = partial apply for closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener();
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  v14 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (&v7 - v14);
  v20 = __chkstk_darwin(v13);
  v19 = v2;
  outlined init with copy of Result<XPCPeerConnection, XPCError>(v20, (&v7 - v14));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined destroy of Result<XPCPeerConnection, XPCError>(v16);
  }

  v4 = *v16;
  v10 = v4;
  v8 = v16[1];
  v17 = v4;
  v18 = v8;
  v7 = *v4;

  v5 = swift_allocObject();
  v6 = v8;
  v9 = v5;
  v5[2] = v12;
  v5[3] = v4;
  v5[4] = v6;
  dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

  dispatch thunk of XPCConnection.activate()();
}

uint64_t closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v76 = a2;
  v77 = a3;
  v78 = a4;
  v50 = partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener();
  v51 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v52 = closure #1 in OSLogArguments.append(_:)partial apply;
  v53 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = 0;
  v90 = 0;
  v88 = 0;
  v89 = 0;
  v93 = 0;
  v55 = 0;
  v92 = 0;
  v61 = 0;
  v56 = type metadata accessor for Logger();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v60 = v25 - v59;
  v62 = type metadata accessor for XPCError();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v61);
  v68 = v25 - v67;
  v69 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v70 = v25 - v69;
  v93 = v25 - v69;
  v71 = type metadata accessor for XPCDictionary();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v75 = v25 - v74;
  v92 = v25 - v74;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v80 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v79);
  v82 = v25 - v80;
  v91 = v6;
  v90 = v7;
  v88 = v8;
  v89 = v9;
  outlined init with copy of Result<XPCDictionary, XPCError>(v6, v25 - v80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v60;
    v33 = v65;
    v36 = *(v64 + 32);
    v35 = v64 + 32;
    v36(v70, v82, v62);
    v93 = v70;
    v12 = logger.unsafeMutableAddressor();
    (*(v57 + 16))(v11, v12, v56);
    (*(v64 + 16))(v68, v70, v62);
    v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v39 = 7;
    v40 = swift_allocObject();
    v36((v40 + v34), v68, v62);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v37 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v13 = swift_allocObject();
    v14 = v40;
    v41 = v13;
    *(v13 + 16) = v50;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v41;
    v45 = v15;
    *(v15 + 16) = v51;
    *(v15 + 24) = v16;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v44 = _allocateUninitializedArray<A>(_:)();
    v46 = v17;

    v18 = v42;
    v19 = v46;
    *v46 = v52;
    v19[1] = v18;

    v20 = v43;
    v21 = v46;
    v46[2] = v53;
    v21[3] = v20;

    v22 = v45;
    v23 = v46;
    v46[4] = v54;
    v23[5] = v22;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v48, v49))
    {
      v24 = v55;
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0);
      v28 = createStorage<A>(capacity:type:)(1);
      v29 = &v87;
      v87 = v26;
      v30 = &v86;
      v86 = v27;
      v31 = &v85;
      v85 = v28;
      serialize(_:at:)(2, &v87);
      serialize(_:at:)(1, v29);
      v83 = v52;
      v84 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v83, v29, v30, v31);
      v32 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v83 = v53;
        v84 = v43;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v87, &v86, &v85);
        v25[1] = 0;
        v83 = v54;
        v84 = v45;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v87, &v86, &v85);
        _os_log_impl(&_mh_execute_header, v48, v49, "SystemXPCPeerConnection received an error: %s", v26, 0xCu);
        destroyStorage<A>(_:count:)(v27);
        destroyStorage<A>(_:count:)(v28);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v57 + 8))(v60, v56);
    return (*(v64 + 8))(v70, v62);
  }

  else
  {
    (*(v72 + 32))(v75, v82, v71);
    v92 = v75;

    ViewHierarchyAgent.handleMessage(_:from:)(v75, v77, v78);

    return (*(v72 + 8))(v75, v71);
  }
}

uint64_t ViewHierarchyAgent.handleMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v151 = a3;
  v154 = a2;
  v150 = a1;
  v134 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v131 = 0;
  v166 = 0;
  v165 = 0;
  v155 = 0;
  v132 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Mercury13XPCDictionaryVSgMd, &_s7Mercury13XPCDictionaryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v133 = &v42 - v132;
  v135 = type metadata accessor for Logger();
  v136 = *(v135 - 8);
  v137 = v136;
  v138 = *(v136 + 64);
  v4 = __chkstk_darwin(v134);
  v140 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = &v42 - v140;
  __chkstk_darwin(v4);
  v141 = &v42 - v140;
  v142 = type metadata accessor for XPCDictionary();
  v143 = *(v142 - 8);
  v144 = v143;
  v146 = *(v143 + 64);
  v145 = v146;
  __chkstk_darwin(v142 - 8);
  v148 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = &v42 - v148;
  v177 = &v42 - v148;
  __chkstk_darwin(&v42 - v148);
  v149 = &v42 - v148;
  v152 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v154);
  v153 = &v42 - v152;
  v176 = v6;
  v174 = v5;
  v175 = v7;
  v173 = v3;

  if (v154)
  {
    v128 = v154;
    v129 = v151;
    v123 = v151;
    v124 = v154;
    v171 = v154;
    v172 = v151;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("action", 6uLL, 1)._object;
    v126 = XPCDictionary.subscript.getter();
    v127 = v8;
    if (v8)
    {
      v121 = v126;
      v122 = v127;
      v119 = v127;
      v118 = v126;
      v165 = v126;
      v166 = v127;

      v164 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("performRequest", 0xEuLL, 1);
      v162 = v118;
      v163 = v119;
      v120 = static String.== infix(_:_:)();
      outlined destroy of String(&v164);
      if (v120)
      {

        v115 = 0;
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v153, 1);

        (*(v144 + 16))(v149, v150, v142);
        v114 = (*(v144 + 80) + 56) & ~*(v144 + 80);
        v10 = swift_allocObject();
        v11 = v130;
        v12 = v124;
        v13 = v123;
        v14 = v114;
        v15 = v144;
        v16 = v149;
        v17 = v142;
        v18 = v115;
        v116 = v10;
        v10[2] = v115;
        v10[3] = v18;
        v10[4] = v11;
        v10[5] = v12;
        v10[6] = v13;
        (*(v15 + 32))(v10 + v14, v16, v17);
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v115, v115, v153, &async function pointer to partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:), v116, &type metadata for () + 8);

        v117 = v131;
      }

      else
      {

        v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("finish", 6uLL, 1);
        v160[1] = v118;
        v160[2] = v119;
        v113 = static String.== infix(_:_:)();
        outlined destroy of String(&v161);
        if (v113)
        {
          v19 = v131;

          ViewHierarchyAgent.finish(_:)();
          v111 = v19;
          v112 = v19;
          if (v19)
          {
            v46 = v112;
            v45 = 0;
            swift_errorRetain();
            v155 = v46;
            XPCDictionary.createReply()();
            if ((*(v144 + 48))(v133, 1, v142) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            (*(v144 + 32))(v147, v133, v142);
            v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("error", 5uLL, 1);
            swift_getErrorValue();
            Error.localizedDescription.getter();
            XPCDictionary.subscript.setter();

            (*(v144 + 16))(v149, v147, v142);
            dispatch thunk of XPCConnection.send(message:)();
            v44 = *(v144 + 8);
            v43 = v144 + 8;
            v44(v149, v142);

            v44(v147, v142);

            v110 = v45;
          }

          else
          {
            v110 = 0;
          }

          v117 = v110;
        }

        else
        {

          dispatch thunk of XPCConnection.cancel()();
          v20 = v141;

          v21 = logger.unsafeMutableAddressor();
          (*(v137 + 16))(v20, v21, v135);

          v93 = 32;
          v97 = 32;
          v98 = 7;
          v22 = swift_allocObject();
          v23 = v119;
          v99 = v22;
          *(v22 + 16) = v118;
          *(v22 + 24) = v23;
          v109 = Logger.logObject.getter();
          v91 = v109;
          v108 = static os_log_type_t.error.getter();
          v92 = v108;
          v94 = 17;
          v102 = swift_allocObject();
          v95 = v102;
          *(v102 + 16) = v93;
          v103 = swift_allocObject();
          v96 = v103;
          *(v103 + 16) = 8;
          v24 = swift_allocObject();
          v25 = v99;
          v100 = v24;
          *(v24 + 16) = partial apply for implicit closure #2 in ViewHierarchyAgent.handleMessage(_:from:);
          *(v24 + 24) = v25;
          v26 = swift_allocObject();
          v27 = v100;
          v106 = v26;
          v101 = v26;
          *(v26 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
          *(v26 + 24) = v27;
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v104 = _allocateUninitializedArray<A>(_:)();
          v105 = v28;

          v29 = v102;
          v30 = v105;
          *v105 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
          v30[1] = v29;

          v31 = v103;
          v32 = v105;
          v105[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v32[3] = v31;

          v33 = v105;
          v34 = v106;
          v105[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
          v33[5] = v34;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v109, v108))
          {
            v35 = v131;
            v84 = static UnsafeMutablePointer.allocate(capacity:)();
            v81 = v84;
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v85 = createStorage<A>(capacity:type:)(0);
            v83 = v85;
            v87 = 1;
            v86 = createStorage<A>(capacity:type:)(1);
            v160[0] = v84;
            v159 = v85;
            v158 = v86;
            v88 = v160;
            serialize(_:at:)(2, v160);
            serialize(_:at:)(v87, v88);
            v156 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
            v157 = v95;
            closure #1 in osLogInternal(_:log:type:)(&v156, v88, &v159, &v158);
            v89 = v35;
            v90 = v35;
            if (v35)
            {
              v79 = 0;

              __break(1u);
            }

            else
            {
              v156 = closure #1 in OSLogArguments.append(_:)partial apply;
              v157 = v96;
              closure #1 in osLogInternal(_:log:type:)(&v156, v160, &v159, &v158);
              v77 = 0;
              v78 = 0;
              v156 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
              v157 = v101;
              closure #1 in osLogInternal(_:log:type:)(&v156, v160, &v159, &v158);
              v75 = 0;
              v76 = 0;
              _os_log_impl(&_mh_execute_header, v91, v92, "Failed to handle message with action %s", v81, 0xCu);
              destroyStorage<A>(_:count:)(v83);
              destroyStorage<A>(_:count:)(v86);
              UnsafeMutablePointer.deallocate()();

              v80 = v75;
            }
          }

          else
          {
            v36 = v131;

            v80 = v36;
          }

          v74 = v80;

          (*(v137 + 8))(v141, v135);
          v117 = v74;
        }
      }

      v72 = v117;

      return v72;
    }

    else
    {

      v70 = XPCDictionary.underlyingConnection.getter();
      v71 = v37;
      if (v70)
      {
        v69 = v70;
        v68 = v70;
        dispatch thunk of XPCConnection.cancel()();
      }

      v38 = v139;
      v39 = logger.unsafeMutableAddressor();
      (*(v137 + 16))(v38, v39, v135);
      v66 = Logger.logObject.getter();
      v63 = v66;
      v65 = static os_log_type_t.error.getter();
      v64 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v67 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v66, v65))
      {
        v40 = v131;
        v54 = static UnsafeMutablePointer.allocate(capacity:)();
        v50 = v54;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v52 = 0;
        v55 = createStorage<A>(capacity:type:)(0);
        v53 = v55;
        v56 = createStorage<A>(capacity:type:)(v52);
        v170 = v54;
        v169 = v55;
        v168 = v56;
        v57 = 0;
        v58 = &v170;
        serialize(_:at:)(0, &v170);
        serialize(_:at:)(v57, v58);
        v167 = v67;
        v59 = &v42;
        __chkstk_darwin(&v42);
        v60 = &v42 - 3;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v62 = v40;
        if (v40)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v63, v64, "Failed to handle message without action", v50, 2u);
          v48 = 0;
          destroyStorage<A>(_:count:)(v53);
          destroyStorage<A>(_:count:)(v56);
          UnsafeMutablePointer.deallocate()();

          v49 = v62;
        }
      }

      else
      {

        v49 = v131;
      }

      v47 = v49;

      (*(v137 + 8))(v139, v135);

      return v47;
    }
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("A message received over an XPC connection should have an underlying connection", 0x4EuLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return v73;
}

uint64_t implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t closure #1 in ViewHierarchyAgent.startRemoteListener()(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v74 = a2;
  v52 = partial apply for implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener();
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v55 = closure #1 in OSLogArguments.append(_:)partial apply;
  v56 = closure #1 in OSLogArguments.append(_:)partial apply;
  v57 = partial apply for closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener();
  v87 = 0;
  v86 = 0;
  v88 = 0;
  v58 = 0;
  v79 = 0;
  v80 = 0;
  v59 = 0;
  v60 = type metadata accessor for Logger();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v64 = v23 - v63;
  v65 = type metadata accessor for XPCError();
  v67 = *(v65 - 8);
  v66 = v65 - 8;
  v68 = v67;
  v69 = *(v67 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v71 = v23 - v70;
  v72 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23 - v70);
  v73 = v23 - v72;
  v88 = v23 - v72;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  v76 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v75);
  v78 = v23 - v76;
  v87 = v3;
  v86 = v4;
  outlined init with copy of Result<XPCPeerConnection, XPCError>(v3, (v23 - v76));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = v64;
    v31 = v68;
    v34 = *(v67 + 32);
    v33 = v67 + 32;
    v34(v73, v78, v65);
    v88 = v73;
    v10 = logger.unsafeMutableAddressor();
    (*(v61 + 16))(v9, v10, v60);
    (*(v67 + 16))(v71, v73, v65);
    v32 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v37 = 7;
    v38 = swift_allocObject();
    v34((v38 + v32), v71, v65);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v35 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 32;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = 32;
    v11 = swift_allocObject();
    v12 = v38;
    v39 = v11;
    *(v11 + 16) = v52;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v39;
    v43 = v13;
    *(v13 + 16) = v53;
    *(v13 + 24) = v14;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v42 = _allocateUninitializedArray<A>(_:)();
    v44 = v15;

    v16 = v40;
    v17 = v44;
    *v44 = v54;
    v17[1] = v16;

    v18 = v41;
    v19 = v44;
    v44[2] = v55;
    v19[3] = v18;

    v20 = v43;
    v21 = v44;
    v44[4] = v56;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v46, v47))
    {
      v22 = v58;
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0);
      v26 = createStorage<A>(capacity:type:)(1);
      v27 = &v85;
      v85 = v24;
      v28 = &v84;
      v84 = v25;
      v29 = &v83;
      v83 = v26;
      serialize(_:at:)(2, &v85);
      serialize(_:at:)(1, v27);
      v81 = v54;
      v82 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v81, v27, v28, v29);
      v30 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v81 = v55;
        v82 = v41;
        closure #1 in osLogInternal(_:log:type:)(&v81, &v85, &v84, &v83);
        v23[0] = 0;
        v81 = v56;
        v82 = v43;
        closure #1 in osLogInternal(_:log:type:)(&v81, &v85, &v84, &v83);
        _os_log_impl(&_mh_execute_header, v46, v47, "%s", v24, 0xCu);
        destroyStorage<A>(_:count:)(v25);
        destroyStorage<A>(_:count:)(v26);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v61 + 8))(v64, v60);
    return (*(v67 + 8))(v73, v65);
  }

  else
  {
    v5 = *v78;
    v51 = v5;
    v49 = *(v78 + 1);
    v79 = v5;
    v80 = v49;
    v48 = *v5;

    v6 = swift_allocObject();
    v7 = v49;
    v50 = v6;
    v6[2] = v74;
    v6[3] = v5;
    v6[4] = v7;
    dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

    dispatch thunk of XPCConnection.activate()();
  }
}

uint64_t closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v76 = a2;
  v77 = a3;
  v78 = a4;
  v50 = partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener();
  v51 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v52 = closure #1 in OSLogArguments.append(_:)partial apply;
  v53 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = 0;
  v90 = 0;
  v88 = 0;
  v89 = 0;
  v93 = 0;
  v55 = 0;
  v92 = 0;
  v61 = 0;
  v56 = type metadata accessor for Logger();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v60 = v25 - v59;
  v62 = type metadata accessor for XPCError();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v61);
  v68 = v25 - v67;
  v69 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v70 = v25 - v69;
  v93 = v25 - v69;
  v71 = type metadata accessor for XPCDictionary();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v75 = v25 - v74;
  v92 = v25 - v74;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v80 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v79);
  v82 = v25 - v80;
  v91 = v6;
  v90 = v7;
  v88 = v8;
  v89 = v9;
  outlined init with copy of Result<XPCDictionary, XPCError>(v6, v25 - v80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v60;
    v33 = v65;
    v36 = *(v64 + 32);
    v35 = v64 + 32;
    v36(v70, v82, v62);
    v93 = v70;
    v12 = logger.unsafeMutableAddressor();
    (*(v57 + 16))(v11, v12, v56);
    (*(v64 + 16))(v68, v70, v62);
    v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v39 = 7;
    v40 = swift_allocObject();
    v36((v40 + v34), v68, v62);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v37 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v13 = swift_allocObject();
    v14 = v40;
    v41 = v13;
    *(v13 + 16) = v50;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v41;
    v45 = v15;
    *(v15 + 16) = v51;
    *(v15 + 24) = v16;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v44 = _allocateUninitializedArray<A>(_:)();
    v46 = v17;

    v18 = v42;
    v19 = v46;
    *v46 = v52;
    v19[1] = v18;

    v20 = v43;
    v21 = v46;
    v46[2] = v53;
    v21[3] = v20;

    v22 = v45;
    v23 = v46;
    v46[4] = v54;
    v23[5] = v22;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v48, v49))
    {
      v24 = v55;
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0);
      v28 = createStorage<A>(capacity:type:)(1);
      v29 = &v87;
      v87 = v26;
      v30 = &v86;
      v86 = v27;
      v31 = &v85;
      v85 = v28;
      serialize(_:at:)(2, &v87);
      serialize(_:at:)(1, v29);
      v83 = v52;
      v84 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v83, v29, v30, v31);
      v32 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v83 = v53;
        v84 = v43;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v87, &v86, &v85);
        v25[1] = 0;
        v83 = v54;
        v84 = v45;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v87, &v86, &v85);
        _os_log_impl(&_mh_execute_header, v48, v49, "RemoteXPCPeerConnection received an error: %s", v26, 0xCu);
        destroyStorage<A>(_:count:)(v27);
        destroyStorage<A>(_:count:)(v28);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v57 + 8))(v60, v56);
    return (*(v64 + 8))(v70, v62);
  }

  else
  {
    (*(v72 + 32))(v75, v82, v71);
    v92 = v75;

    ViewHierarchyAgent.handleMessage(_:from:)(v75, v77, v78);

    return (*(v72 + 8))(v75, v71);
  }
}

uint64_t implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t *closure #1 in ViewHierarchyAgent.startTargetHubListener()(uint64_t a1, uint64_t a2)
{
  v126 = a1;
  v125 = a2;
  v96 = closure #1 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v97 = partial apply for implicit closure #3 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v98 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  v99 = closure #1 in OSLogArguments.append(_:)partial apply;
  v100 = closure #1 in OSLogArguments.append(_:)partial apply;
  v101 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v102 = partial apply for closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v103 = partial apply for implicit closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v104 = thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply;
  v105 = closure #1 in OSLogArguments.append(_:)partial apply;
  v106 = closure #1 in OSLogArguments.append(_:)partial apply;
  v107 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v108 = "Fatal error";
  v109 = "ViewHierarchyAgent/ViewHierarchyAgent.swift";
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v110 = 0;
  v142 = 0;
  v111 = type metadata accessor for Logger();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v111);
  v115 = v39 - v114;
  v116 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39 - v114);
  v117 = v39 - v116;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMR);
  v118 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v119 = v39 - v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120);
  v124 = v39 - v123;
  v149 = v39 - v123;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  v127 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v126);
  v129 = (v39 - v127);
  v148 = v4;
  v147 = v5;
  outlined init with copy of Result<XPCPeerConnection, XPCError>(v4, (v39 - v127));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined destroy of Result<XPCPeerConnection, XPCError>(v129);
  }

  v94 = *v129;
  v7 = v129[1];
  v145 = v94;
  v146 = v7;

  type metadata accessor for SystemXPCPeerConnection();
  v95 = swift_dynamicCastClass();
  if (v95)
  {
    v93 = v95;
  }

  else
  {

    v93 = 0;
  }

  v92 = v93;
  if (v93)
  {
    v91 = v92;
    v8 = v110;
    v89 = v92;
    v144 = v92;
    result = dispatch thunk of XPCConnection.withUnsafeUnderlyingConnection<A>(_:)();
    v90 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v86 = v143;
      v142 = v143;
      v87 = &v141;
      v141 = v143;
      v88 = &v140;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMd, &_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMR);
      Dictionary.removeValue(forKey:)();
      swift_endAccess();
      if ((*(v121 + 48))(v119, 1, v120) == 1)
      {
        outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v119);
        dispatch thunk of XPCConnection.cancel()();
        v9 = v117;
        v10 = logger.unsafeMutableAddressor();
        (*(v112 + 16))(v9, v10, v111);
        v75 = 7;
        v76 = swift_allocObject();
        *(v76 + 16) = v86;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        v73 = 17;
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        v79 = swift_allocObject();
        *(v79 + 16) = 4;
        v74 = 32;
        v11 = swift_allocObject();
        v12 = v76;
        v77 = v11;
        *(v11 + 16) = v97;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v77;
        v81 = v13;
        *(v13 + 16) = v98;
        *(v13 + 24) = v14;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v80 = _allocateUninitializedArray<A>(_:)();
        v82 = v15;

        v16 = v78;
        v17 = v82;
        *v82 = v99;
        v17[1] = v16;

        v18 = v79;
        v19 = v82;
        v82[2] = v100;
        v19[3] = v18;

        v20 = v81;
        v21 = v82;
        v82[4] = v101;
        v21[5] = v20;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v84, v85))
        {
          v38 = v90;
          v41 = static UnsafeMutablePointer.allocate(capacity:)();
          v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v40 = 0;
          v42 = createStorage<A>(capacity:type:)(0);
          v43 = createStorage<A>(capacity:type:)(v40);
          v44 = &v139;
          v139 = v41;
          v45 = &v138;
          v138 = v42;
          v46 = &v137;
          v137 = v43;
          serialize(_:at:)(0, &v139);
          serialize(_:at:)(1, v44);
          v135 = v99;
          v136 = v78;
          closure #1 in osLogInternal(_:log:type:)(&v135, v44, v45, v46);
          v47 = v38;
          if (v38)
          {

            __break(1u);
          }

          else
          {
            v135 = v100;
            v136 = v79;
            closure #1 in osLogInternal(_:log:type:)(&v135, &v139, &v138, &v137);
            v39[2] = 0;
            v135 = v101;
            v136 = v81;
            closure #1 in osLogInternal(_:log:type:)(&v135, &v139, &v138, &v137);
            _os_log_impl(&_mh_execute_header, v84, v85, "Received XPC connection from pid %d which we were not expecting", v41, 8u);
            v39[1] = 0;
            destroyStorage<A>(_:count:)(v42);
            destroyStorage<A>(_:count:)(v43);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v112 + 8))(v117, v111);
      }

      else
      {
        (*(v121 + 32))(v124, v119, v120);

        v62 = 7;
        v22 = swift_allocObject();
        v23 = v86;
        v59 = v22;
        *(v22 + 16) = v125;
        *(v22 + 24) = v23;
        dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

        dispatch thunk of XPCConnection.activate()();

        v134[1] = v89;
        CheckedContinuation.resume(returning:)();
        v24 = v115;
        v25 = logger.unsafeMutableAddressor();
        (*(v112 + 16))(v24, v25, v111);
        v63 = swift_allocObject();
        *(v63 + 16) = v86;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        v60 = 17;
        v65 = swift_allocObject();
        *(v65 + 16) = 0;
        v66 = swift_allocObject();
        *(v66 + 16) = 4;
        v61 = 32;
        v26 = swift_allocObject();
        v27 = v63;
        v64 = v26;
        *(v26 + 16) = v103;
        *(v26 + 24) = v27;
        v28 = swift_allocObject();
        v29 = v64;
        v68 = v28;
        *(v28 + 16) = v104;
        *(v28 + 24) = v29;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v67 = _allocateUninitializedArray<A>(_:)();
        v69 = v30;

        v31 = v65;
        v32 = v69;
        *v69 = v105;
        v32[1] = v31;

        v33 = v66;
        v34 = v69;
        v69[2] = v106;
        v34[3] = v33;

        v35 = v68;
        v36 = v69;
        v69[4] = v107;
        v36[5] = v35;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v71, v72))
        {
          v37 = v90;
          v52 = static UnsafeMutablePointer.allocate(capacity:)();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v51 = 0;
          v53 = createStorage<A>(capacity:type:)(0);
          v54 = createStorage<A>(capacity:type:)(v51);
          v55 = v134;
          v134[0] = v52;
          v56 = &v133;
          v133 = v53;
          v57 = &v132;
          v132 = v54;
          serialize(_:at:)(0, v134);
          serialize(_:at:)(1, v55);
          v130 = v105;
          v131 = v65;
          closure #1 in osLogInternal(_:log:type:)(&v130, v55, v56, v57);
          v58 = v37;
          if (v37)
          {

            __break(1u);
          }

          else
          {
            v130 = v106;
            v131 = v66;
            closure #1 in osLogInternal(_:log:type:)(&v130, v134, &v133, &v132);
            v49 = 0;
            v130 = v107;
            v131 = v68;
            closure #1 in osLogInternal(_:log:type:)(&v130, v134, &v133, &v132);
            _os_log_impl(&_mh_execute_header, v71, v72, "Established XPC connection to TargetBub on pid %d", v52, 8u);
            v48 = 0;
            destroyStorage<A>(_:count:)(v53);
            destroyStorage<A>(_:count:)(v54);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v112 + 8))(v115, v111);
        (*(v121 + 8))(v124, v120);
      }
    }
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Peer should be a SystemXPCConnection", 0x24uLL, 1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ViewHierarchyAgent.startTargetHubListener()@<X0>(_xpc_connection_s *a1@<X0>, _DWORD *a2@<X8>)
{
  result = xpc_connection_get_pid(a1);
  *a2 = result;
  return result;
}

uint64_t closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()(uint64_t a1, uint64_t a2, int a3)
{
  v65 = a1;
  v63 = a2;
  v64 = a3;
  v50 = partial apply for implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v51 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v52 = closure #1 in OSLogArguments.append(_:)partial apply;
  v53 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v55 = 0;
  v61 = 0;
  v56 = type metadata accessor for Logger();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v60 = v23 - v59;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v62 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v76 = v23 - v62;
  v66 = type metadata accessor for XPCError();
  v68 = *(v66 - 8);
  v67 = v66 - 8;
  v69 = v68;
  v71 = *(v68 + 64);
  v70 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v65);
  v72 = v23 - v70;
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v74 = v23 - v73;
  v87 = v23 - v73;
  v86 = v4;
  v85 = v5;
  v84 = v6;
  outlined init with copy of Result<XPCDictionary, XPCError>(v4, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return outlined destroy of Result<XPCDictionary, XPCError>(v76);
  }

  v33 = v69;
  v36 = *(v68 + 32);
  v35 = v68 + 32;
  v36(v74, v76, v66);
  v31 = &v83;
  v83 = v64;
  v32 = &v82;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMd, &_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMR);
  Dictionary.removeValue(forKey:)();
  v9 = v60;
  swift_endAccess();

  v10 = logger.unsafeMutableAddressor();
  (*(v57 + 16))(v9, v10, v56);
  (*(v68 + 16))(v72, v74, v66);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v39 = 7;
  v40 = swift_allocObject();
  v36((v40 + v34), v72, v66);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v37 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v38 = 32;
  v11 = swift_allocObject();
  v12 = v40;
  v41 = v11;
  *(v11 + 16) = v50;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v41;
  v45 = v13;
  *(v13 + 16) = v51;
  *(v13 + 24) = v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v44 = _allocateUninitializedArray<A>(_:)();
  v46 = v15;

  v16 = v42;
  v17 = v46;
  *v46 = v52;
  v17[1] = v16;

  v18 = v43;
  v19 = v46;
  v46[2] = v53;
  v19[3] = v18;

  v20 = v45;
  v21 = v46;
  v46[4] = v54;
  v21[5] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v48, v49))
  {
    v22 = v55;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0);
    v26 = createStorage<A>(capacity:type:)(1);
    v27 = &v81;
    v81 = v24;
    v28 = &v80;
    v80 = v25;
    v29 = &v79;
    v79 = v26;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v27);
    v77 = v52;
    v78 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v77, v27, v28, v29);
    v30 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v77 = v53;
      v78 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v23[0] = 0;
      v77 = v54;
      v78 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&_mh_execute_header, v48, v49, "TargetHubXPCPeerConnection received an error: %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25);
      destroyStorage<A>(_:count:)(v26);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  (*(v57 + 8))(v60, v56);
  return (*(v68 + 8))(v74, v66);
}

uint64_t implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t closure #1 in ViewHierarchyAgent.handleMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a7;
  v7[12] = a5;
  v7[7] = v7;
  v7[8] = 0;
  v7[5] = 0;
  v7[6] = 0;
  v7[9] = 0;
  v7[10] = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Mercury13XPCDictionaryVSgMd, &_s7Mercury13XPCDictionaryVSgMR) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for XPCDictionary();
  v7[15] = v10;
  v13 = *(v10 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[8] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[9] = a7;
  v11 = swift_task_alloc();
  *(v15 + 152) = v11;
  *v11 = *(v15 + 56);
  v11[1] = closure #1 in ViewHierarchyAgent.handleMessage(_:from:);

  return ViewHierarchyAgent.performRequest(connection:message:)(a5, a6, a7);
}

uint64_t closure #1 in ViewHierarchyAgent.handleMessage(_:from:)()
{
  v9 = *v1;
  v2 = *(*v1 + 152);
  v9[7] = *v1;
  v10 = v9 + 7;
  v9[20] = v0;

  if (v0)
  {
    v6 = *v10;

    return _swift_task_switch(closure #1 in ViewHierarchyAgent.handleMessage(_:from:), 0);
  }

  else
  {
    v3 = v9[18];
    v7 = v9[17];
    v8 = v9[14];

    v4 = *(*v10 + 8);

    return v4();
  }
}

{
  v20 = v0[20];
  v21 = v0[16];
  v23 = v0[15];
  v22 = v0[14];
  v1 = v0[13];
  v0[7] = v0;
  swift_errorRetain();
  v0[10] = v20;
  XPCDictionary.createReply()();
  if ((*(v21 + 48))(v22, 1, v23) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v16 = v19[20];
  v11 = v19[18];
  v13 = v19[17];
  v14 = v19[15];
  v3 = v19[14];
  v12 = v19[12];
  v10 = v19[16];
  (*(v10 + 32))();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("error", 5uLL, 1);
  swift_getErrorValue();
  v4 = v19[2];
  v5 = v19[3];
  v6 = v19[4];
  Error.localizedDescription.getter();
  XPCDictionary.subscript.setter();

  (*(v10 + 16))(v11, v13, v14);
  dispatch thunk of XPCConnection.send(message:)();
  v15 = *(v10 + 8);
  v15(v11, v14);

  v15(v13, v14);

  v7 = v19[18];
  v17 = v19[17];
  v18 = v19[14];

  v8 = *(v19[7] + 8);
  v9 = v19[7];

  return v8();
}

uint64_t ViewHierarchyAgent.performRequest(connection:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = v3;
  *(v4 + 144) = a3;
  *(v4 + 136) = a1;
  *(v4 + 96) = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 344) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 360) = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Mercury13XPCDictionaryVSgMd, &_s7Mercury13XPCDictionaryVSgMR) - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v6 = type metadata accessor for XPCDictionary();
  *(v4 + 168) = v6;
  v10 = *(v6 - 8);
  *(v4 + 176) = v10;
  v11 = *(v10 + 64);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v4 + 200) = v7;
  v12 = *(v7 - 8);
  *(v4 + 208) = v12;
  *(v4 + 216) = *(v12 + 64);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  v8 = *(v4 + 96);

  return _swift_task_switch(ViewHierarchyAgent.performRequest(connection:message:), 0);
}

uint64_t ViewHierarchyAgent.performRequest(connection:message:)()
{
  v1 = *(v0 + 144);
  *(v0 + 96) = v0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pid", 3uLL, 1);
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  XPCDictionary.subscript.getter();
  v22 = *(v0 + 348);
  if ((*(v0 + 352) & 1) != 0 || (v2 = *(v21 + 144), *(v21 + 344) = v22, , String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("request", 7uLL, 1), v3 = XPCDictionary.subscript.getter(), *(v21 + 280) = v3, (*(v21 + 288) = v4) == 0))
  {

    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v21 + 272);
    v12 = *(v21 + 264);
    v13 = *(v21 + 256);
    v14 = *(v21 + 248);
    v15 = *(v21 + 240);
    v16 = *(v21 + 232);
    v17 = *(v21 + 224);
    v18 = *(v21 + 192);
    v19 = *(v21 + 184);
    v20 = *(v21 + 160);

    v10 = *(*(v21 + 96) + 8);
    v11 = *(v21 + 96);

    return v10();
  }

  else
  {
    *(v21 + 80) = v3;
    *(v21 + 88) = v4;

    v5 = swift_task_alloc();
    *(v21 + 296) = v5;
    *v5 = *(v21 + 96);
    v5[1] = ViewHierarchyAgent.performRequest(connection:message:);
    v6 = *(v21 + 152);

    return ViewHierarchyAgent.captureController(for:)(v22);
  }
}

{
  v1 = v0[38];
  v48 = v0[17];
  v0[12] = v0;
  v0[15] = v1;

  type metadata accessor for SystemXPCConnection();
  if (swift_dynamicCastClass())
  {

    v2 = *(v47 + 312);
    v3 = *(v47 + 144);
    result = XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
    if (v2)
    {
      return result;
    }

    v40 = *(v47 + 356);
    *(v47 + 360) = v40;
    if (v40 > 0)
    {
      v37 = *(v47 + 272);
      v36 = *(v47 + 264);
      v35 = *(v47 + 200);
      v34 = *(v47 + 208);
      type metadata accessor for NSFileHandle();
      isa = NSFileHandle.__allocating_init(fileDescriptor:closeOnDealloc:)(v40, 1).super.isa;
      isa;
      *(v47 + 128) = isa;
      (*(v34 + 56))(v36, 1, 1, v35);
      outlined init with take of URL?(v36, v37);
      v39 = isa;
      goto LABEL_9;
    }

    v32 = *(v47 + 304);
    v33 = *(v47 + 288);
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  else
  {
    v5 = *(v47 + 136);

    v6 = *(v47 + 312);
    v7 = *(v47 + 304);
    v43 = *(v47 + 248);
    v45 = *(v47 + 240);
    v42 = *(v47 + 200);
    v41 = *(v47 + 208);
    CaptureController.createTemporaryFile()(v43);
    type metadata accessor for NSFileHandle();
    v44 = *(v41 + 16);
    v44(v45, v43, v42);
    v46 = @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(v45);
    if (!v6)
    {
      v29 = *(v47 + 272);
      v28 = *(v47 + 264);
      v31 = *(v47 + 248);
      v30 = *(v47 + 200);
      v27 = *(v47 + 208);
      v46;
      *(v47 + 128) = v46;
      v44(v28, v31, v30);
      (*(v27 + 56))(v28, 0, 1, v30);
      outlined init with take of URL?(v28, v29);
      (*(v27 + 8))(v31, v30);
      v39 = v46;
LABEL_9:
      *(v47 + 320) = v39;
      v26 = *(v47 + 288);

      v9 = swift_task_alloc();
      *(v47 + 328) = v9;
      *v9 = *(v47 + 96);
      v9[1] = ViewHierarchyAgent.performRequest(connection:message:);
      v10 = *(v47 + 304);
      v11 = *(v47 + 280);

      return CaptureController.performRequest(_:using:)(v11, v26, v39);
    }

    v24 = *(v47 + 304);
    v25 = *(v47 + 288);
    (*(*(v47 + 208) + 8))(*(v47 + 248), *(v47 + 200));
  }

  v12 = *(v47 + 272);
  v15 = *(v47 + 264);
  v16 = *(v47 + 256);
  v17 = *(v47 + 248);
  v18 = *(v47 + 240);
  v19 = *(v47 + 232);
  v20 = *(v47 + 224);
  v21 = *(v47 + 192);
  v22 = *(v47 + 184);
  v23 = *(v47 + 160);

  v13 = *(*(v47 + 96) + 8);
  v14 = *(v47 + 96);

  return v13();
}

{
  v8 = *v1;
  v2 = *(*v1 + 328);
  *(v8 + 96) = *v1;
  v9 = (v8 + 96);
  *(v8 + 336) = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  else
  {
    v7 = *(v8 + 288);

    v3 = *v9;
    v4 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v38 = v0[22];
  v40 = v0[21];
  v39 = v0[20];
  v1 = v0[18];
  v0[12] = v0;
  XPCDictionary.createReply()();
  if ((*(v38 + 48))(v39, 1, v40) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v36 = *(v37 + 136);
  (*(*(v37 + 176) + 32))(*(v37 + 192), *(v37 + 160), *(v37 + 168));

  type metadata accessor for RemoteXPCPeerConnection();
  if (swift_dynamicCastClass())
  {

    v35 = *(v37 + 256);
    v34 = *(v37 + 200);
    v33 = *(v37 + 208);
    outlined init with copy of URL?(*(v37 + 272), v35);
    if ((*(v33 + 48))(v35, 1, v34) == 1)
    {
      outlined destroy of URL?(*(v37 + 256));
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Should have a temporary file!", 0x1DuLL, 1);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v31 = *(v37 + 232);
    v27 = *(v37 + 224);
    v25 = *(v37 + 216);
    v32 = *(v37 + 200);
    v23 = *(v37 + 192);
    v24 = *(v37 + 208);
    v28 = *(v24 + 32);
    (v28)(v31, *(v37 + 256));
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ft", 2uLL, 1);
    URL.path.getter();
    (*(v24 + 16))(v27, v31, v32);
    v26 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v29 = swift_allocObject();
    v28(v29 + v26, v27, v32);
    *(v37 + 48) = partial apply for closure #2 in ViewHierarchyAgent.performRequest(connection:message:);
    *(v37 + 56) = v29;
    *(v37 + 16) = _NSConcreteStackBlock;
    *(v37 + 24) = 1107296256;
    *(v37 + 28) = 0;
    *(v37 + 32) = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    *(v37 + 40) = &block_descriptor;
    v30 = _Block_copy((v37 + 16));
    v4 = *(v37 + 56);

    String.utf8CString.getter();

    xpc_file_transfer_create_with_path();
    swift_unknownObjectRelease();
    _Block_release(v30);

    XPCDictionary.subscript.setter();
    (*(v24 + 8))(v31, v32);
  }

  else
  {
    v3 = *(v37 + 136);
  }

  v11 = *(v37 + 304);
  v13 = *(v37 + 272);
  v14 = *(v37 + 264);
  v15 = *(v37 + 256);
  v16 = *(v37 + 248);
  v17 = *(v37 + 240);
  v18 = *(v37 + 232);
  v19 = *(v37 + 224);
  v20 = *(v37 + 192);
  v21 = *(v37 + 184);
  v9 = *(v37 + 168);
  v22 = *(v37 + 160);
  v8 = *(v37 + 136);
  v12 = *(v37 + 288);
  v7 = *(v37 + 176);

  (*(v7 + 16))(v21, v20, v9);
  dispatch thunk of XPCConnection.send(message:)();
  v10 = *(v7 + 8);
  v10(v21, v9);

  v10(v20, v9);
  outlined destroy of URL?(v13);

  v5 = *(*(v37 + 96) + 8);
  v6 = *(v37 + 96);

  return v5();
}

{
  v1 = v0[36];
  v0[12] = v0;

  v2 = v0[39];
  v3 = v0[34];
  v7 = v0[33];
  v8 = v0[32];
  v9 = v0[31];
  v10 = v0[30];
  v11 = v0[29];
  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[23];
  v15 = v0[20];

  v4 = *(v0[12] + 8);
  v5 = v0[12];

  return v4();
}

{
  v1 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *(v0 + 288);
  v7 = *(v0 + 272);
  *(v0 + 96) = v0;

  outlined destroy of URL?(v7);

  v2 = *(v0 + 336);
  v3 = *(v0 + 272);
  v10 = *(v0 + 264);
  v11 = *(v0 + 256);
  v12 = *(v0 + 248);
  v13 = *(v0 + 240);
  v14 = *(v0 + 232);
  v15 = *(v0 + 224);
  v16 = *(v0 + 192);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);

  v4 = *(*(v0 + 96) + 8);
  v5 = *(v0 + 96);

  return v4();
}

uint64_t ViewHierarchyAgent.performRequest(connection:message:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 296);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[38] = a1;
  v9[39] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  else
  {
    v5 = *v10;
    v6 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  return _swift_task_switch(v6, 0);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  outlined init with copy of TaskPriority?(v55, v58);
  v59 = type metadata accessor for TaskPriority();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    outlined destroy of TaskPriority?(v58);
    v45 = 0;
  }

  else
  {
    v44 = TaskPriority.rawValue.getter();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = String.utf8CString.getter();

    v8 = *(v27 + 16);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    outlined destroy of TaskPriority?(v55);

    v19 = v17;
  }

  else
  {

    outlined destroy of TaskPriority?(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

void ViewHierarchyAgent.finish(_:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pid", 3uLL, 1);
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  XPCDictionary.subscript.getter();

  if (v2)
  {
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    swift_allocError();
    *v0 = 0;
    swift_willThrow();
  }

  else
  {
    ViewHierarchyAgent.finish(_:)(v1);
  }
}

uint64_t ViewHierarchyAgent.captureController(for:)(int a1)
{
  *(v2 + 128) = v1;
  *(v2 + 180) = a1;
  *(v2 + 80) = v2;
  *(v2 + 168) = 0;
  *(v2 + 88) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  *(v2 + 168) = a1;
  *(v2 + 88) = v1;
  v3 = *(v2 + 80);
  return _swift_task_switch(ViewHierarchyAgent.captureController(for:), 0);
}

uint64_t ViewHierarchyAgent.captureController(for:)()
{
  v8 = *(v0 + 128);
  v9 = *(v0 + 180);
  *(v0 + 80) = v0;
  swift_beginAccess();
  v10 = *(v8 + 88);
  *(v0 + 172) = v9;
  *(v0 + 136) = type metadata accessor for CaptureController();
  Dictionary.subscript.getter();
  v11 = *(v0 + 96);
  if (v11)
  {
    *(v7 + 120) = v11;
    swift_endAccess();
    v1 = *(*(v7 + 80) + 8);
    v2 = *(v7 + 80);

    return v1(v11);
  }

  else
  {
    swift_endAccess();
    v4 = swift_task_alloc();
    *(v7 + 144) = v4;
    *v4 = *(v7 + 80);
    v4[1] = ViewHierarchyAgent.captureController(for:);
    v5 = *(v7 + 128);
    v6 = *(v7 + 180);

    return ViewHierarchyAgent.establishTargetHubConnection(to:)(v6);
  }
}

{
  v12 = v0;
  v4 = *(v0 + 160);
  v9 = *(v0 + 152);
  v5 = *(v0 + 136);
  v8 = *(v0 + 128);
  v7 = *(v0 + 180);
  *(v0 + 80) = v0;
  *(v0 + 64) = v9;
  *(v0 + 72) = v4;
  v6 = type metadata accessor for SystemXPCRequestExecutor();

  v11[3] = v6;
  v11[4] = &protocol witness table for SystemXPCRequestExecutor;
  v11[0] = SystemXPCRequestExecutor.__allocating_init(targetConnection:)(v9, v4);
  v10 = CaptureController.__allocating_init(requestExecutor:)(v11);
  *(v0 + 104) = v10;

  *(v0 + 112) = v10;
  *(v0 + 176) = v7;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMd, &_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMR);
  Dictionary.subscript.setter();
  swift_endAccess();

  v1 = *(*(v0 + 80) + 8);
  v2 = *(v0 + 80);

  return v1(v10);
}

uint64_t ViewHierarchyAgent.captureController(for:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 144);
  v10[10] = *v3;
  v11 = v10 + 10;
  v10[19] = a1;
  v10[20] = a2;

  if (v2)
  {
    v8 = *(*v11 + 8);

    return v8(v6);
  }

  else
  {
    v7 = *v11;

    return _swift_task_switch(ViewHierarchyAgent.captureController(for:), 0);
  }
}

uint64_t closure #1 in ViewHierarchyAgent.performRequest(connection:message:)@<X0>(void *a1@<X0>, unsigned int *a2@<X8>)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fd", 2uLL, 1);
  v4 = String.utf8CString.getter();

  v6 = xpc_dictionary_dup_fd(a1, (v4 + 32));
  swift_unknownObjectRelease();

  result = v6;
  *a2 = v6;
  return result;
}

id @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v9 = [ObjCClassFromMetadata fileHandleForWritingToURL:v8 error:v10];
  0;

  if (v9)
  {

    v2 = type metadata accessor for URL();
    (*(*(v2 - 8) + 8))(a1);
    return v9;
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(a1);
    return v5;
  }
}

uint64_t closure #2 in ViewHierarchyAgent.performRequest(connection:message:)(unsigned int a1, uint64_t a2)
{
  v58 = a1;
  v60 = a2;
  v47 = partial apply for implicit closure #1 in closure #2 in ViewHierarchyAgent.performRequest(connection:message:);
  v48 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v49 = closure #1 in OSLogArguments.append(_:)partial apply;
  v50 = closure #1 in OSLogArguments.append(_:)partial apply;
  v51 = closure #1 in OSLogArguments.append(_:)partial apply;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v52 = 0;
  v53 = type metadata accessor for Logger();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v57 = v23 - v56;
  v63 = type metadata accessor for URL();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v59 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v58);
  v3 = v23 - v59;
  v64 = v23 - v59;
  v75 = v2;
  v74 = v4;
  v78 = 0;
  v67 = [objc_opt_self() defaultManager];
  (*(v61 + 16))(v3, v60, v63);
  URL._bridgeToObjectiveC()(v5);
  v66 = v6;
  (*(v61 + 8))(v64, v63);
  v73 = v78;
  v68 = [v67 removeItemAtURL:v66 error:&v73];
  v65 = v73;
  v73;
  v7 = v78;
  v78 = v65;

  result = v68;
  if ((v68 & 1) == 0)
  {
    v31 = v78;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = v57;
    v32 = 0;
    swift_errorRetain();
    v72 = v33;
    v10 = logger.unsafeMutableAddressor();
    (*(v54 + 16))(v9, v10, v53);
    swift_errorRetain();
    v36 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v35 = 32;
    v11 = swift_allocObject();
    v12 = v37;
    v38 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v38;
    v42 = v13;
    *(v13 + 16) = v48;
    *(v13 + 24) = v14;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v41 = _allocateUninitializedArray<A>(_:)();
    v43 = v15;

    v16 = v39;
    v17 = v43;
    *v43 = v49;
    v17[1] = v16;

    v18 = v40;
    v19 = v43;
    v43[2] = v50;
    v19[3] = v18;

    v20 = v42;
    v21 = v43;
    v43[4] = v51;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v45, v46))
    {
      v22 = v32;
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0);
      v26 = createStorage<A>(capacity:type:)(1);
      v27 = &v71;
      v71 = v24;
      v28 = &v77;
      v77 = v25;
      v29 = &v76;
      v76 = v26;
      serialize(_:at:)(2, &v71);
      serialize(_:at:)(1, v27);
      v69 = v49;
      v70 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v69, v27, v28, v29);
      v30 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v69 = v50;
        v70 = v40;
        closure #1 in osLogInternal(_:log:type:)(&v69, &v71, &v77, &v76);
        v23[1] = 0;
        v69 = v51;
        v70 = v42;
        closure #1 in osLogInternal(_:log:type:)(&v69, &v71, &v77, &v76);
        _os_log_impl(&_mh_execute_header, v45, v46, "Failed to remove temporary file: %s", v24, 0xCu);
        destroyStorage<A>(_:count:)(v25);
        destroyStorage<A>(_:count:)(v26);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v54 + 8))(v57, v53);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

Swift::Void __swiftcall ViewHierarchyAgent.finish(_:)(Swift::Int32 a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMd, &_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMR);
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

uint64_t ViewHierarchyAgent.establishTargetHubConnection(to:)(int a1)
{
  *(v2 + 72) = v1;
  *(v2 + 128) = a1;
  *(v2 + 48) = v2;
  *(v2 + 120) = 0;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 120) = a1;
  *(v2 + 56) = v1;
  v3 = *(v2 + 48);
  return _swift_task_switch(ViewHierarchyAgent.establishTargetHubConnection(to:), 0);
}

uint64_t ViewHierarchyAgent.establishTargetHubConnection(to:)()
{
  v14 = *(v0 + 72);
  v15 = *(v0 + 128);
  *(v0 + 48) = v0;
  *(v0 + 16) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v0 + 24) = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyTargetHub.Notification.", 0x31uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  *(v0 + 124) = v15;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  v11 = *(v0 + 16);
  v10 = *(v0 + 24);

  outlined destroy of DefaultStringInterpolation(v0 + 16);
  v12 = String.init(stringInterpolation:)();
  *(v0 + 80) = v4;
  *(v0 + 32) = v12;
  *(v0 + 40) = v4;

  v13 = String.utf8CString.getter();

  notify_post((v13 + 32));
  swift_unknownObjectRelease();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("establishTargetHubConnection(to:)", 0x21uLL, 1);
  *(v0 + 88) = v5._object;

  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v16 + 104) = v7;
  v8 = type metadata accessor for SystemXPCPeerConnection();
  *v7 = *(v16 + 48);
  v7[1] = ViewHierarchyAgent.establishTargetHubConnection(to:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16 + 64, 0, 0, v5._countAndFlagsBits, v5._object, partial apply for closure #1 in ViewHierarchyAgent.establishTargetHubConnection(to:), v17, v8);
}

{
  v10 = *v1;
  v2 = *(*v1 + 104);
  v10[6] = *v1;
  v11 = v10 + 6;
  v10[14] = v0;

  if (v0)
  {
    v6 = *v11;
    v5 = ViewHierarchyAgent.establishTargetHubConnection(to:);
  }

  else
  {
    v3 = v10[12];
    v9 = v10[11];
    v8 = v10[9];

    v4 = *v11;
    v5 = ViewHierarchyAgent.establishTargetHubConnection(to:);
  }

  return _swift_task_switch(v5, 0);
}

{
  v1 = v0[10];
  v0[6] = v0;
  v5 = v0[8];

  v2 = *(v0[6] + 8);
  v3 = v0[6];

  return v2(v5, &protocol witness table for SystemXPCPeerConnection);
}

{
  v1 = v0[12];
  v8 = v0[11];
  v9 = v0[10];
  v7 = v0[9];
  v0[6] = v0;

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[14];

  return v3();
}

uint64_t ViewHierarchyAgent.setPendingConnection(_:for:)(uint64_t a1, int a2)
{
  v31 = a1;
  v35 = a2;
  v30 = 0;
  v25 = &async function pointer to partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:);
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v26 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v27 = v20 - v26;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v28 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v29 = v20 - v28;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v31);
  v33 = v20 - v32;
  v34 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v38 = v20 - v34;
  v46 = v6;
  v45 = v7;
  v44 = v2;
  swift_beginAccess();
  v8 = *(v2 + 96);
  v43[1] = v35;
  Dictionary.subscript.getter();
  if ((*(v36 + 48))(v38, 1, v39) == 0)
  {
    (*(v36 + 16))(v29, v38, v39);
    outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v38);
    swift_endAccess();
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    v9 = swift_allocError();
    *v10 = 2;
    v41 = v9;
    CheckedContinuation.resume(throwing:)();
    (*(v36 + 8))(v29, v39);
  }

  else
  {
    outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v38);
    swift_endAccess();
  }

  (*(v36 + 16))(v33, v31, v39);
  v11 = *(v36 + 56);
  v21 = 1;
  v11(v33, 0);
  v20[1] = v43;
  v43[0] = v35;
  v20[2] = &v42;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMd, &_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMR);
  Dictionary.subscript.setter();
  swift_endAccess();
  v22 = 0;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v27, v21);

  v13 = swift_allocObject();
  v14 = v24;
  v15 = v35;
  v16 = v22;
  v17 = v25;
  v18 = v27;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v23 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ(v16, v16, v18, v17, v13, &type metadata for () + 8);
  outlined destroy of TaskPriority?(v27);
}

uint64_t closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 120) = a5;
  *(v5 + 64) = a4;
  *(v5 + 40) = v5;
  *(v5 + 48) = 0;
  *(v5 + 112) = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMR) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  *(v5 + 80) = v7;
  v12 = *(v7 - 8);
  *(v5 + 88) = v12;
  v8 = *(v12 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 48) = a4;
  *(v5 + 112) = a5;
  v9 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v10 = swift_task_alloc();
  *(v15 + 104) = v10;
  *v10 = *(v15 + 40);
  v10[1] = closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:);

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)()
{
  v8 = *v1;
  v2 = *(*v1 + 104);
  v8[5] = *v1;
  v9 = v8 + 5;

  if (v0)
  {
    v4 = v8[12];
    v7 = v8[9];

    v5 = *(*v9 + 8);

    return v5();
  }

  else
  {
    v3 = *v9;

    return _swift_task_switch(closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:), 0);
  }
}

{
  v14 = *(v0 + 88);
  v16 = *(v0 + 80);
  v15 = *(v0 + 72);
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  *(v0 + 40) = v0;
  *(v0 + 116) = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMd, &_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMR);
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  if ((*(v14 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v13[9]);
  }

  else
  {
    v11 = v13[12];
    v12 = v13[10];
    v10 = v13[11];
    (*(v10 + 32))(v11, v13[9]);
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    v3 = swift_allocError();
    *v4 = 3;
    v13[7] = v3;
    CheckedContinuation.resume(throwing:)();
    (*(v10 + 8))(v11, v12);
  }

  v5 = v13[12];
  v9 = v13[9];

  v6 = *(v13[5] + 8);
  v7 = v13[5];

  return v6();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v50 = &v11 - v46;

  v56 = v48;
  v57 = v49;
  outlined init with copy of TaskPriority?(v47, v50);
  v51 = type metadata accessor for TaskPriority();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    outlined destroy of TaskPriority?(v50);
    v38 = 0;
  }

  else
  {
    v37 = TaskPriority.rawValue.getter();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1000;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;
  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v20 = String.utf8CString.getter();
    v8 = *(v20 + 16);
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZBoSRys4Int8VGXEfU_(v20 + 32, &v56, &v54);
    if (v7)
    {
      __break(1u);
    }

    v19 = v54;

    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v18 = v21;
  if (v21)
  {
    v13 = v18;
    v14 = v18;
  }

  else
  {

    v15 = v56;
    v16 = v57;

    v17 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v17 = v55;
    }

    v14 = swift_task_create();
  }

  v11 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  Task.init(_:)();
  v12 = v9;

  return v12;
}

uint64_t ViewHierarchyAgent.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  outlined destroy of [Int32 : CaptureController]((v0 + 88));
  outlined destroy of [Int32 : CheckedContinuation<SystemXPCPeerConnection, Error>]((v0 + 96));
  return v5;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t a1)
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t outlined destroy of String(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_10001407C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in ViewHierarchyAgent.handleMessage(_:from:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #2 in ViewHierarchyAgent.handleMessage(_:from:)();
  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = type metadata accessor for OS_dispatch_queue.Attributes();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v4 = *a2;
  v5 = a2[1];

  result = swift_task_create();
  *a3 = result;
  return result;
}

uint64_t sub_1000147A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000147F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in serialize<A>(_:at:), v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_100014C40()
{
  v7 = type metadata accessor for XPCDictionary();
  v5 = *(v7 - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = v6 + *(v5 + 64);
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  (*(v5 + 8))(&v0[v6], v7);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for XPCDictionary() - 8);
  v12 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:);

  return closure #1 in ViewHierarchyAgent.handleMessage(_:from:)(a1, v7, v8, v9, v10, v11, v1 + v12);
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSFileHandle()
{
  v2 = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSFileHandle);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined init with take of URL?(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of URL?(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10001536C()
{
  v3 = *(type metadata accessor for URL() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ViewHierarchyAgent.performRequest(connection:message:)(unsigned int a1)
{
  v2 = type metadata accessor for URL();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return closure #2 in ViewHierarchyAgent.performRequest(connection:message:)(a1, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t outlined destroy of DefaultStringInterpolation(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100015600()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:);

  return closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)(a1, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100015A7C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100015B2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100015B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100015C4C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_100015EB0()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_64(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_64TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_64TQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *outlined init with copy of Result<XPCPeerConnection, XPCError>(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for XPCError();
    (*(*(v3 - 8) + 16))(a2, a1);
  }

  else
  {
    v5 = *a1;

    v2 = a1[1];
    *a2 = v5;
    a2[1] = v2;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t *outlined destroy of Result<XPCPeerConnection, XPCError>(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for XPCError();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100016368()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000163B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_1000164E0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000165C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t outlined destroy of Result<XPCDictionary, XPCError>(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for XPCError();
  }

  else
  {
    v1 = type metadata accessor for XPCDictionary();
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_100016790()
{
  v3 = *(type metadata accessor for XPCError() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()()
{
  v1 = *(type metadata accessor for XPCError() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()();
}

uint64_t sub_100016928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016974()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in serialize<A>(_:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t sub_1000169F0()
{
  v3 = *(type metadata accessor for XPCError() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  v1 = *(type metadata accessor for XPCError() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()();
}

uint64_t sub_100016B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016C20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016C78()
{
  v3 = *(type metadata accessor for XPCError() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  v1 = *(type metadata accessor for XPCError() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()();
}

uint64_t sub_100016E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016E5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016EA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100016F00()
{
  v3 = *(type metadata accessor for XPCError() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()()
{
  v1 = *(type metadata accessor for XPCError() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()();
}

uint64_t sub_100017098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000170E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  v2 = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t XPCDictionary.subscript.setter()
{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

uint64_t XPCDictionary.subscript.getter()
{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return _assertionFailure(_:_:file:line:flags:)();
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}