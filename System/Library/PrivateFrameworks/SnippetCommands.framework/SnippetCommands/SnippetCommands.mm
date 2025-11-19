id OpenPunchoutCommandConverter.convert(sfCommand:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v31 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v11 = [a1 punchout];
  if (v11 && (v12 = outlined bridged method (ob) of @objc SFPunchout.bundleIdentifier.getter(v11, &selRef_name), v13))
  {
    v14 = MEMORY[0x26D65AD20](v12);
  }

  else
  {
    v14 = 0;
  }

  [v10 setPunchOutName_];

  v15 = [a1 punchout];
  if (v15 && (v16 = outlined bridged method (ob) of @objc SFPunchout.bundleIdentifier.getter(v15, &selRef_bundleIdentifier), v17))
  {
    v18 = MEMORY[0x26D65AD20](v16);
  }

  else
  {
    v18 = 0;
  }

  [v10 setBundleId_];

  v19 = [a1 punchout];
  if (v19 && (v20 = outlined bridged method (ob) of @objc SFPunchout.urls.getter(v19)) != 0)
  {
    specialized Collection.first.getter(v20, v9);

    v21 = type metadata accessor for URL();
    v23 = 0;
    if (__swift_getEnumTagSinglePayload(v9, 1, v21) != 1)
    {
      URL._bridgeToObjectiveC()(v22);
      v23 = v24;
      (*(*(v21 - 8) + 8))(v9, v21);
    }
  }

  else
  {
    v25 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v25);
    v23 = 0;
  }

  [v10 setPunchOutUri_];

  v26 = v10;
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  (*(v3 + 8))(v6, v2);
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v27, v29, v26);

  return v26;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for URL();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D65AD20]();

  [a3 setAceId_];
}

uint64_t outlined bridged method (ob) of @objc SFPunchout.urls.getter(void *a1)
{
  v2 = [a1 urls];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for URL();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SFPunchout.bundleIdentifier.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t (*SFCommandConverter.eraseToAnyConverter()(uint64_t a1, uint64_t a2))(void *a1)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  AnySFCommandConverter.init<A>(wrapped:)(v7, a1, a2);
  return OUTLINED_FUNCTION_0();
}

uint64_t (*AnySFCommandConverter.init<A>(wrapped:)(char *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v6 + 32);
  v10(v9 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v10(v11 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return OUTLINED_FUNCTION_0();
}

uint64_t closure #1 in AnySFCommandConverter.init<A>(wrapped:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCastUnknownClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(a4 + 32);
    v11 = a1;
    a2 = v10(v9, a3, a4);
  }

  else
  {
    lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnySFCommandConverter(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnySFCommandConverter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError()
{
  result = lazy protocol witness table cache variable for type SnippetCommandError and conformance SnippetCommandError;
  if (!lazy protocol witness table cache variable for type SnippetCommandError and conformance SnippetCommandError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetCommandError and conformance SnippetCommandError);
  }

  return result;
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.default);
  v1 = __swift_project_value_buffer(v0, static Log.default);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.Category.default);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.Category.default);
  __swift_project_value_buffer(v0, static Logger.Category.default);
  if (one-time initialization token for defaultOSLog != -1)
  {
    swift_once();
  }

  v1 = static Logger.Category.defaultOSLog;
  return Logger.init(_:)();
}

uint64_t Logger.Category.default.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for defaultOSLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.Category.defaultOSLog = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void Logger.logAndCrash(_:file:line:)(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v8);
    _os_log_impl(&dword_26A0B0000, v4, v5, "%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D65B1B0](v7, -1, -1);
    MEMORY[0x26D65B1B0](v6, -1, -1);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static Logger.generateSignpostID()()
{
  if (one-time initialization token for defaultOSLog != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = static Logger.Category.defaultOSLog;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:)()
{
  if (one-time initialization token for defaultOSLog != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = static Logger.Category.defaultOSLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_1();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t (*static Logger.begin<A>(_:andWrap:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v29 = a6;
  v30 = a4;
  v31 = a5;
  v9 = type metadata accessor for OSSignpostID();
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v16 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v27[-v17];
  if (one-time initialization token for defaultOSLog != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = static Logger.Category.defaultOSLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v28 = a3;
  v20 = *(v12 + 32);
  v20(v16, v18, v9);
  v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  v20((v22 + v21), v16, v9);
  v23 = v22 + ((v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = v28;
  v24 = (v22 + ((v21 + v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v25 = v31;
  *v24 = v30;
  v24[1] = v25;

  return partial apply for closure #1 in static Logger.begin<A>(_:andWrap:);
}

uint64_t closure #1 in static Logger.begin<A>(_:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for defaultOSLog != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  return a6(a1);
}

uint64_t static Logger.end(_:_:)()
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for defaultOSLog != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_1();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for defaultOSLog != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  static OSSignpostID.exclusive.getter();
  OUTLINED_FUNCTION_1();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v7, v0);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26A0B2C1C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in static Logger.begin<A>(_:andWrap:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for OSSignpostID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v7 + 16);

  return closure #1 in static Logger.begin<A>(_:andWrap:)(a1, v1 + v5, v8, v9, v13, v11);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Logger.Signpost(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Logger.Signpost(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void (*SFCommandExecutor.eraseToAnyExecutor()(uint64_t a1, uint64_t a2))(void *a1)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  AnySFCommandExecutor.init<A>(wrapped:)(v7, a1, a2);
  return OUTLINED_FUNCTION_0_1();
}

void (*AnySFCommandExecutor.init<A>(wrapped:)(char *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v6 + 32);
  v10(v9 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v10(v11 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return OUTLINED_FUNCTION_0_1();
}

void closure #1 in AnySFCommandExecutor.init<A>(wrapped:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v7 = swift_dynamicCastUnknownClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(a4 + 24);
    v10 = a1;
    v9(v8, a3, a4);
  }

  else
  {
    lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }
}

void BeginMapsRoutingExecutor.execute(sfCommand:)(void *a1)
{
  v2 = BeginMapsRoutingExecutor.buildMapItem(from:)(a1);
  if (v2)
  {
    v3 = v2;
    BeginMapsRoutingExecutor.buildLaunchOptions(sfCommand:)(a1);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = [v3 openInMapsWithLaunchOptions_];

    if (v5)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Log.default);
      v7 = a1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        if (outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.dictionaryRepresentation.getter(v7))
        {
          v12 = Dictionary.description.getter();
          v14 = v13;
        }

        else
        {
          v14 = 0xE90000000000003ELL;
          v12 = 0x64696C61766E693CLL;
        }

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v20);

        *(v10 + 4) = v19;
        _os_log_impl(&dword_26A0B0000, v8, v9, "Successfully Started Navigation via SFCommand:\n    %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x26D65B1B0](v11, -1, -1);
        MEMORY[0x26D65B1B0](v10, -1, -1);
      }
    }

    else
    {
      lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError();
      v17 = swift_allocError();
      OUTLINED_FUNCTION_1_0(v17, v18);
    }
  }

  else
  {
    lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_1_0(v15, v16);
  }
}

id BeginMapsRoutingExecutor.buildMapItem(from:)(void *a1)
{
  outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.mapsData.getter(a1);
  type metadata accessor for MKMapItem();
  v2 = OUTLINED_FUNCTION_0_2();
  outlined copy of Data?(v2, v3);
  v4 = OUTLINED_FUNCTION_0_2();
  v6 = @nonobjc MKMapItem.init(serializedPlace:)(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = OUTLINED_FUNCTION_0_2();
    outlined consume of Data?(v8, v9);
  }

  else
  {
    v10 = [a1 location];
    if (v10 && (v11 = v10, [v10 lat], v13 = v12, v11, (v14 = objc_msgSend(a1, sel_location)) != 0))
    {
      v15 = v14;
      [v14 lng];
      v17 = v16;

      v18 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v13 longitude:v17];
      v19 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithCLLocation_];
      v7 = v19;
      if (v19)
      {
        v20 = v19;
        v21 = outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.name.getter(a1);
        if (v22)
        {
          v23 = MEMORY[0x26D65AD20](v21);
        }

        else
        {
          v23 = 0;
        }

        [v20 setName_];
        v28 = OUTLINED_FUNCTION_0_2();
        outlined consume of Data?(v28, v29);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_0_2();
        outlined consume of Data?(v26, v27);
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_0_2();
      outlined consume of Data?(v24, v25);
      return 0;
    }
  }

  return v7;
}

uint64_t BeginMapsRoutingExecutor.buildLaunchOptions(sfCommand:)(void *a1)
{
  if ([a1 shouldSearchDirectionsAlongCurrentRoute])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A0B6410;
    v3 = *MEMORY[0x277CD4FD8];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v4;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v5 = *MEMORY[0x277CD4BA0];
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v6;
    *(inited + 120) = MEMORY[0x277D83B88];
    *(inited + 96) = 0;
  }

  else
  {
    v7 = [a1 directionsMode] - 1;
    if (v7 > 4)
    {
      v8 = MEMORY[0x277CD4B58];
    }

    else
    {
      v8 = qword_279C9CDF0[v7];
    }

    v9 = *v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_26A0B6400;
    v14 = *MEMORY[0x277CD4B68];
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 40) = v15;
    *(v13 + 72) = MEMORY[0x277D837D0];
    *(v13 + 48) = v10;
    *(v13 + 56) = v12;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

id @nonobjc MKMapItem.init(serializedPlace:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemWithSerializedPlaceData_];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.mapsData.getter(void *a1)
{
  v1 = [a1 mapsData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.name.getter(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.dictionaryRepresentation.getter(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for MKMapItem()
{
  result = lazy cache variable for type metadata for MKMapItem;
  if (!lazy cache variable for type metadata for MKMapItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MKMapItem);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, void *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

id specialized closure #1 in AnySFCommandConverter.init<A>(wrapped:)(id a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    a1 = OpenPunchoutCommandConverter.convert(sfCommand:)(v3);
  }

  else
  {
    lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  return a1;
}

void specialized closure #1 in AnySFCommandExecutor.init<A>(wrapped:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    BeginMapsRoutingExecutor.execute(sfCommand:)(v3);
  }

  else
  {
    lazy protocol witness table accessor for type SnippetCommandError and conformance SnippetCommandError();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }
}

double one-time initialization function for converters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SnippetCommands21AnySFCommandConverterVGMd, &_ss23_ContiguousArrayStorageCy15SnippetCommands21AnySFCommandConverterVGMR);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_26A0B6400;
  *(v0 + 32) = partial apply for specialized closure #1 in AnySFCommandConverter.init<A>(wrapped:);
  *(v0 + 40) = 0;
  *(v0 + 48) = partial apply for specialized closure #2 in AnySFCommandConverter.init<A>(wrapped:);
  *(v0 + 56) = 0;
  static SnippetCommandExecutor.converters = v0;
  return result;
}

uint64_t *SnippetCommandExecutor.converters.unsafeMutableAddressor()
{
  if (one-time initialization token for converters != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  return &static SnippetCommandExecutor.converters;
}

double one-time initialization function for executors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SnippetCommands20AnySFCommandExecutorVGMd, &_ss23_ContiguousArrayStorageCy15SnippetCommands20AnySFCommandExecutorVGMR);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_26A0B6400;
  *(v0 + 32) = partial apply for specialized closure #1 in AnySFCommandExecutor.init<A>(wrapped:);
  *(v0 + 40) = 0;
  *(v0 + 48) = partial apply for specialized closure #2 in AnySFCommandExecutor.init<A>(wrapped:);
  *(v0 + 56) = 0;
  static SnippetCommandExecutor.executors = v0;
  return result;
}

uint64_t *SnippetCommandExecutor.executors.unsafeMutableAddressor()
{
  if (one-time initialization token for executors != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  return &static SnippetCommandExecutor.executors;
}

uint64_t static SnippetCommandExecutor.converters.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t SnippetCommandExecutor.execute(sfCommand:)(uint64_t a1)
{
  if (one-time initialization token for executors != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_1_1();
  }

  v2 = 0;
  v3 = static SnippetCommandExecutor.executors;
  v4 = *(static SnippetCommandExecutor.executors + 16);
  v5 = (static SnippetCommandExecutor.executors + 56);
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v7 = *(v5 - 3);
    v6 = *(v5 - 2);
    v9 = *(v5 - 1);
    v8 = *v5;

    if (v9(a1))
    {
      v12 = *(*v15 + 112);
      v13 = OUTLINED_FUNCTION_7();
      v14(v13);
    }

    ++v2;
    v5 += 4;
  }

  v10 = *(*v15 + 96);

  return v10(a1);
}

id SnippetCommandExecutor.convert(sfCommand:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for converters != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_2_0();
  }

  v5 = 0;
  v6 = static SnippetCommandExecutor.converters;
  v7 = *(static SnippetCommandExecutor.converters + 16);
  v8 = (static SnippetCommandExecutor.converters + 56);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v3 = *(v8 - 3);
    v9 = *(v8 - 2);
    v10 = *(v8 - 1);
    v2 = *v8;

    if (v10(a1))
    {
      v17 = *(*v22 + 104);
      v18 = OUTLINED_FUNCTION_7();
      v19(v18);
    }

    ++v5;
    v8 += 4;
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_14(v11, static Log.default);
  v23 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_18();
    v25 = v15;
    *v14 = 136315138;
    if (outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.dictionaryRepresentation.getter(v23))
    {
      v3 = Dictionary.description.getter();
      v2 = v16;
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v25);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_26A0B0000, v12, v13, "Unable to convert command. Received unsupported SFCommand:\n    %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3_0();
  }

  *a2 = v23;
  *(a2 + 8) = 1;

  return v23;
}

void SnippetCommandExecutor.convert(sfCommand:with:)(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a2();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_14(v7, static Log.default);
  v8 = a1;
  v9 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v10, v11))
  {

LABEL_10:
    *a3 = v9;
    *(a3 + 8) = 0;
    return;
  }

  v12 = OUTLINED_FUNCTION_19();
  v21 = swift_slowAlloc();
  *v12 = 136315394;
  if (outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.dictionaryRepresentation.getter(v8))
  {
    v3 = Dictionary.description.getter();
    v8 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
  }

  v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v8, &v21);

  *(v12 + 4) = v14;
  *(v12 + 12) = 2080;
  v15 = [v9 dictionary];

  if (v15)
  {
    v16 = [v15 description];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v21);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_26A0B0000, v10, v11, "Successfully converted SFCommand:\n    %s\nto AceCommand:\n    %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3_0();
    goto LABEL_10;
  }

  __break(1u);
}

void SnippetCommandExecutor.execute(sfCommand:with:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_14(v5, static Log.default);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_18();
    v15 = v10;
    *v9 = 136315138;
    if (outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.dictionaryRepresentation.getter(v6))
    {
      v11 = Dictionary.description.getter();
      v13 = v12;
    }

    else
    {
      v13 = 0xE90000000000003ELL;
      v11 = 0x64696C61766E693CLL;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_26A0B0000, v7, v8, "Successfully executed SFCommand:\n    %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3_0();
  }

  *a3 = 0;
  *(a3 + 8) = 2;
}

void outlined consume of SnippetCommandError(id a1)
{
  if (a1 >= 3)
  {
  }
}

id outlined copy of SnippetCommandError(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SnippetCommands0A12CommandErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15SnippetCommands15ExecutionResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExecutionResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecutionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ExecutionResult(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SnippetCommandError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SnippetCommandError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SnippetCommandError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_0()
{

  JUMPOUT(0x26D65B1B0);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v6 + 14) = v4;
  *(v6 + 22) = v5;

  return MEMORY[0x2821FE9C8](v3, va1, va);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_10()
{
}

uint64_t OUTLINED_FUNCTION_11()
{
}

uint64_t OUTLINED_FUNCTION_12()
{
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15()
{
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_17()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2080;

  return outlined bridged method (pb) of @objc SFBeginMapsRoutingCommand.dictionaryRepresentation.getter(v1);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}