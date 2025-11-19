uint64_t static CaarProvider._caar()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for caarProvider != -1)
  {
    swift_once();
  }

  outlined init with copy of CaarHandler?(static CaarProvider.caarProvider + 16, &v12);
  if (v13)
  {
    outlined init with take of CaarHandler(&v12, v14);
    if (one-time initialization token for kLogger != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, kLogger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266790000, v3, v4, "Found existing Caar Handler, updating it.", v5, 2u);
      MEMORY[0x26D5DDCD0](v5, -1, -1);
    }

    v6 = v15;
    v7 = v16;
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    a1[3] = v6;
    a1[4] = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(&v12, &_s7SiriCam11CaarHandler_pSgMd, &_s7SiriCam11CaarHandler_pSgMR);
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x800000026681BC20;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t outlined init with copy of CaarHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam11CaarHandler_pSgMd, &_s7SiriCam11CaarHandler_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CaarHandler(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
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

void static CamSingletonProvider.cam(camEnabledFeatures:allowDefaultAskRepeatModel:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.ambiguityHandling);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v10 = 136315394;
    v11 = MEMORY[0x26D5DCE80](a1, &type metadata for CamFeature);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v50);

    *(v10 + 4) = v13;
    v4 = v3;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2 & 1;
    _os_log_impl(&dword_266790000, v8, v9, "camEnabledFeatures: %s, allowDefaultAskRepeatModel: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x26D5DDCD0](v47, -1, -1);
    OUTLINED_FUNCTION_0_8();
  }

  v14 = qword_28132E398;
  if (qword_28132E398)
  {
    v15 = qword_28132E3A0;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266790000, v16, v17, "Found existing CamHandler", v18, 2u);
      MEMORY[0x26D5DDCD0](v18, -1, -1);
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SiriCam0C7FeatureO_Tt1g5(v14, a1))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_1_8(&dword_266790000, v21, v22, "Trying to update existing CamHandler.");
        OUTLINED_FUNCTION_0_8();
      }

      CamHandler.update()();
      if (v23)
      {
      }

      else
      {
        a3[3] = &type metadata for CamHandler;
        a3[4] = &protocol witness table for CamHandler;
        *a3 = v14;
        a3[1] = v15;
      }

      return;
    }

    v48 = v4;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v27;
      *v26 = 136315394;

      v28 = MEMORY[0x26D5DCE80](v14, &type metadata for CamFeature);
      v46 = a2;
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v50);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = MEMORY[0x26D5DCE80](a1, &type metadata for CamFeature);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);
      a2 = v46;

      *(v26 + 14) = v34;
      _os_log_impl(&dword_266790000, v24, v25, "Feature flags for existing CamHandler %s don't match: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v27, -1, -1);
      OUTLINED_FUNCTION_0_8();
    }

    else
    {
    }

    v4 = v48;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_8(&dword_266790000, v37, v38, "Creating new CamHandler");
    OUTLINED_FUNCTION_0_8();
  }

  if (AFDeviceSupportsFullSiriUOD())
  {
    v39 = AFShouldRunAsrOnServerForUOD() ^ 1;
  }

  else
  {
    v39 = 0;
  }

  v41 = CamHandler.init(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(v40, a2 & 1, v39);
  if (!v4)
  {
    v43 = v41;
    v44 = v42;
    v45 = qword_28132E398;
    qword_28132E398 = v41;
    qword_28132E3A0 = v42;

    outlined consume of CamHandler?(v45);
    a3[3] = &type metadata for CamHandler;
    a3[4] = &protocol witness table for CamHandler;
    *a3 = v43;
    a3[1] = v44;
  }
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

uint64_t OUTLINED_FUNCTION_0()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_8()
{

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_13()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_0_19()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_0_21@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_0_26()
{
  *(v4 - 72) = v0;

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SiriCam0C7FeatureO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (v5 == 1)
      {
        v7 = 0x4F5455415F534D53;
      }

      else
      {
        v7 = 0xD000000000000010;
      }

      if (v5 == 1)
      {
        v8 = 0xEC000000444E4553;
      }

      else
      {
        v8 = 0x8000000266819EC0;
      }

      if (*v3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x455045525F4B5341;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xEA00000000005441;
      }

      if (v6 == 1)
      {
        v11 = 0x4F5455415F534D53;
      }

      else
      {
        v11 = 0xD000000000000010;
      }

      if (v6 == 1)
      {
        v12 = 0xEC000000444E4553;
      }

      else
      {
        v12 = 0x8000000266819EC0;
      }

      if (*v4)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x455045525F4B5341;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xEA00000000005441;
      }

      if (v9 == v13 && v10 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return outlined destroy of CamModelMetadata(v0, type metadata accessor for RankedAction);
}

void OUTLINED_FUNCTION_3_1()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_1_4()
{

  JUMPOUT(0x26D5DCD80);
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x26D5DCC90);
}

uint64_t OUTLINED_FUNCTION_1_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return specialized Dictionary.subscript.getter(a1, a2 | 0x8000000000000000, v2);
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_1_13()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

id OUTLINED_FUNCTION_1_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return v14;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  v3 = *(*(*(v1 - 112) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_1_28()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CamHandler.update()()
{
  v2 = (v0 + 32);
  v3 = *(v0 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 5;
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v5);
    (*(v6 + 8))(v5, v6);
    v2 = v4;
  }

  while (!v1);
}

uint64_t static AutoConfirmProvider.autoSendProvider(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_22(v6);
  v29 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v13 = OUTLINED_FUNCTION_22(v28);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.autoSend);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_266790000, v21, v22, "In AutoSend provider", v23, 2u);
    MEMORY[0x26D5DDCD0](v23, -1, -1);
  }

  if (one-time initialization token for dispatchQueue != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a1;
  v24[4] = a2;
  aBlock[4] = partial apply for closure #1 in static AutoConfirmProvider.autoSendProvider(completion:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D5DD090](0, v19, v12, v25);
  _Block_release(v25);
  (*(v29 + 8))(v12, v6);
  (*(v15 + 8))(v19, v28);
}

uint64_t sub_2667940C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_20()
{
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_20_4()
{
  v4 = v0 + 16 * v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return specialized Dictionary.subscript.getter(v11, v12, a11);
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{
  v3 = *(v1 - 128);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void OUTLINED_FUNCTION_20_11()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_20_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t closure #1 in static AutoConfirmProvider.autoSendProvider(completion:)(uint64_t a1, void (*a2)(void))
{
  if (one-time initialization token for autoConfirmProvider != -1)
  {
    swift_once();
  }

  v3 = static AutoConfirmProvider.autoConfirmProvider;
  v4 = *(static AutoConfirmProvider.autoConfirmProvider + 2);
  if (v4)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.autoSend);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266790000, v6, v7, "AutoSend handler is nil. Trying to instantiate again in warmup", v8, 2u);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
  }

  v9 = type metadata accessor for AutoSendHandler();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = AutoSendHandler.init()();
  v13 = v3[2];
  v3[2] = v12;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266790000, v14, v15, "Successfully instantiated AutoSendHandler", v16, 2u);
    MEMORY[0x26D5DDCD0](v16, -1, -1);
  }

  v4 = v3[2];
  if (v4)
  {
LABEL_11:

    AutoSendHandler.update()();
    if (v17)
    {
      if (one-time initialization token for autoSend != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.autoSend);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = a2;
        v24 = swift_slowAlloc();
        v40 = v24;
        *v22 = 136315138;
        v25 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v26 = String.init<A>(reflecting:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v40);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_266790000, v20, v21, "Autosend handler warmup failed with error: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        v29 = v24;
        a2 = v23;
        MEMORY[0x26D5DDCD0](v29, -1, -1);
        MEMORY[0x26D5DDCD0](v22, -1, -1);
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v40 = 0xD000000000000026;
      v41 = 0x800000026681BDA0;
      v30 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v31 = String.init<A>(reflecting:)();
      MEMORY[0x26D5DCD80](v31);

      v42 = 0;
      v45 = 1;
      a2(&v40);
    }

    else
    {
      if (one-time initialization token for autoSend != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.autoSend);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_266790000, v33, v34, "Successfully warmed up AutoSend handler. Invoking the callback function", v35, 2u);
        MEMORY[0x26D5DDCD0](v35, -1, -1);
      }

      v43 = type metadata accessor for AutoSendHandler();
      v44 = &protocol witness table for AutoSendHandler;
      v40 = v4;
      v45 = 0;

      a2(&v40);
    }
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, static Logger.autoSend);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266790000, v36, v37, "Autosend handler warmup failed: cannot warm up nil currentAutoSendHandler", v38, 2u);
      MEMORY[0x26D5DDCD0](v38, -1, -1);
    }

    v40 = 0xD000000000000049;
    v41 = 0x800000026681BD50;
    v42 = 0;
    v45 = 1;
    a2(&v40);
  }

  return outlined destroy of Result<AutoConfirming, AutoConfirmError>(&v40);
}

void OUTLINED_FUNCTION_21()
{

  JUMPOUT(0x26D5DCD80);
}

BOOL OUTLINED_FUNCTION_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_7_0()
{

  JUMPOUT(0x26D5DCD80);
}

void OUTLINED_FUNCTION_13(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t a1)
{

  return outlined destroy of (CamLogOutput, CamModelMetadata)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  result = v0;
  v3 = *(*(v1 - 144) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return _NativeDictionary._delete(at:)();
}

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0);
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  v2 = *(v0 - 320);
}

BOOL OUTLINED_FUNCTION_7_17()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result)
{
  *(v1 - 72) = result;
  *(v1 - 81) = 2;
  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_10(unint64_t *a1)
{

  return lazy protocol witness table accessor for type Locale and conformance Locale(a1);
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *v11;

  return SiriSignalsContainer.get(from:query:defaultVal:)(a9, v9, v10, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2)
{

  return specialized TrialTieBreakingOverride.check(isFavoured:over:)(a1, a2, v5, v4, v3, v2);
}

BOOL OUTLINED_FUNCTION_4_15()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void OUTLINED_FUNCTION_4_17()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return _s7SiriCam0B5ParseOWOhTm_3(v0, type metadata accessor for ActionCandidate);
}

uint64_t static EnvironmentUtilities.currentSiriLocale.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v6 = v5;

  if (!v6)
  {
    static Locale.current.getter();
    Locale.identifier.getter();
    (*(v1 + 8))(v4, v0);
  }

  return Locale.init(identifier:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AutoSendCoreHandler.update()()
{
  swift_beginAccess();
  AutoSendInputFeatureExtractor.update()();
  swift_endAccess();
  if (!v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    (*(v3 + 16))(v2, v3);
  }
}

id OUTLINED_FUNCTION_5_1()
{

  return [v0 dataType];
}

id OUTLINED_FUNCTION_5_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_5_4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return MEMORY[0x282111940](va, v2, v3);
}

void OUTLINED_FUNCTION_5_8(unint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_6_0()
{
  v2 = *(v0 + 16) + 1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1);
}

void OUTLINED_FUNCTION_5_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_arrayDestroy();
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AutoSendInputFeatureExtractor.update()()
{
  v1 = v0;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.autoSend);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "Updating AutoSendInputFeatureExtractor", v5, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v6 = *(type metadata accessor for AutoSendInputFeatureExtractor() + 36);
  v7 = type metadata accessor for WordEmbeddingFeatureExtractor();
  if (!__swift_getEnumTagSinglePayload(v1 + v6, 1, v7))
  {
    WordEmbeddingFeatureExtractor.update()();
  }
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_3_13()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
}

void OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  outlined consume of AutoConfirmError(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  v2 = *(v0 - 72);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0);
}

BOOL OUTLINED_FUNCTION_3_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

void OUTLINED_FUNCTION_3_22(unint64_t a1@<X8>)
{
  *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v6 = (v2[6] + 16 * a1);
  *v6 = v3;
  v6[1] = v4;
  *(v2[7] + 8 * a1) = v1;
  ++v2[2];
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_17_7()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

void OUTLINED_FUNCTION_17_9()
{
  *(v4 - 112) = v2;

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_17_12@<X0>(uint64_t a1@<X8>)
{

  return specialized Dictionary.subscript.getter(0xD000000000000013, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_17_13()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static AssetProvider.fetchModelFromUAF(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v201 = a1;
  v198 = a3;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4 = OUTLINED_FUNCTION_0_2(v182);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_11();
  v181 = v8;
  v185 = type metadata accessor for CamModelMetadata();
  v9 = OUTLINED_FUNCTION_0_2(v185);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_11();
  v191 = v13;
  v14 = type metadata accessor for URL();
  v15 = OUTLINED_FUNCTION_22(v14);
  v195 = v16;
  v196 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v189 = v19;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_11();
  v192 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_5();
  v188 = v25;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  v193 = v175 - v27;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_11();
  v194 = v29;
  v30 = type metadata accessor for Locale();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v190 = v36;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_1();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (v175 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v175 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v175 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = (v175 - v48);
  static EnvironmentUtilities.currentSiriLocale.getter();
  v206[0] = Locale.identifier.getter();
  v206[1] = v50;
  v204 = 45;
  v205 = 0xE100000000000000;
  v202 = 95;
  v203 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v51 = v33;

  Locale.init(identifier:)();
  v52 = v33 + 8;
  v53 = *(v33 + 8);
  v53(v47, v30);
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v55 = __swift_project_value_buffer(v54, static Logger.common);
  v56 = *(v51 + 16);
  v200 = v49;
  v178 = v51 + 16;
  v177 = v56;
  v56(v44, v49, v30);

  v199 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  v59 = os_log_type_enabled(v57, v58);
  v197 = v30;
  v187 = v41;
  v180 = v51;
  if (v59)
  {
    v41 = v53;
    v60 = v52;
    v61 = swift_slowAlloc();
    v206[0] = swift_slowAlloc();
    *v61 = 136315394;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, a2, v206);
    *(v61 + 12) = 2080;
    OUTLINED_FUNCTION_4_10(&lazy protocol witness table cache variable for type Locale and conformance Locale);
    dispatch thunk of CustomStringConvertible.description.getter();
    v41(v44, v30);
    v62 = OUTLINED_FUNCTION_10_12();

    *(v61 + 14) = v62;
    _os_log_impl(&dword_266790000, v57, v58, "%s: Trying to fetch model for current siri locale : %s", v61, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v52 = v60;
    v53 = v41;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v53(v44, v30);
  }

  v63 = static AssetProvider.uafAssetSet.getter();
  v64 = v200;
  if (!v63)
  {
    v68 = 0;
    v66 = v201;
    goto LABEL_20;
  }

  v65 = v63;
  v66 = v201;
  v67 = MEMORY[0x26D5DCC90](v201, a2);
  v68 = [v65 assetNamed_];

  if (!v68)
  {
LABEL_20:

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = OUTLINED_FUNCTION_11();
      v85 = v66;
      v86 = v84;
      v206[0] = v84;
      *v83 = 136315138;
      *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, a2, v206);
      OUTLINED_FUNCTION_8_13();
      _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }

    v92 = v64;
LABEL_24:
    v93 = v197;
    goto LABEL_25;
  }

  v69 = [v68 location];
  if (v69)
  {
    v70 = v69;
    v71 = v193;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v193;
  }

  v73 = v194;
  OUTLINED_FUNCTION_11_10(v71, v72);
  outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v71, v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (__swift_getEnumTagSinglePayload(v73, 1, v41) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_19:
    v64 = v200;
    goto LABEL_20;
  }

  v74 = v73;
  v75 = URL.path.getter();
  v77 = v76;
  v78 = v195 + 8;
  v194 = *(v195 + 8);
  v194(v74, v41);
  v79 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v79 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (!v79)
  {

    goto LABEL_19;
  }

  v176 = v68;
  URL.init(fileURLWithPath:isDirectory:)();

  v80 = v188;
  v193 = a2;
  static AssetProvider.defaultModelUrl(for:)(v66, a2, v188);
  OUTLINED_FUNCTION_11_10(v80, 0);
  v98 = v195;
  v99 = v183;
  (*(v195 + 32))(v183, v80, 0);
  v100 = static URL.== infix(_:_:)();
  v101 = v189;
  if (v100)
  {
    v102 = v193;

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    v105 = os_log_type_enabled(v103, v104);
    v106 = v176;
    if (v105)
    {
      v107 = swift_slowAlloc();
      v108 = OUTLINED_FUNCTION_11();
      v109 = v66;
      v110 = v108;
      v206[0] = v108;
      *v107 = 136315138;
      *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v102, v206);
      OUTLINED_FUNCTION_8_13();
      _os_log_impl(v111, v112, v113, v114, v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }

    v116 = v194;
    v194(v183, 0);
    v116(v192, 0);
    v92 = v200;
    goto LABEL_24;
  }

  v183 = v78;
  v194(v99, 0);
  v117 = [v176 metadata];
  v118 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v98 + 16))(v101, v192, 0);
  v119 = v193;

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.info.getter();

  v122 = os_log_type_enabled(v120, v121);
  v175[1] = v52;
  if (v122)
  {
    v123 = OUTLINED_FUNCTION_11();
    v189 = swift_slowAlloc();
    v206[0] = v189;
    *v123 = 136315650;
    *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v119, v206);
    *(v123 + 12) = 2080;
    URL.absoluteString.getter();
    OUTLINED_FUNCTION_6_15();
    v124();
    v125 = OUTLINED_FUNCTION_10_12();

    *(v123 + 14) = v125;
    *(v123 + 22) = 2080;
    v126 = Dictionary.description.getter();
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v206);

    *(v123 + 24) = v128;
    v66 = v201;
    _os_log_impl(&dword_266790000, v120, v121, "%s: Model URL from UAF: %s. Model metadata from UAF: %s", v123, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v194(v101, 0);
  }

  v129 = v190;
  v130 = v185;
  type metadata accessor for AssetMetadataProvider();
  v131 = v191;
  static AssetMetadataProvider.parseAssetMetadata(modelName:metadata:)(v66, v119, v118, v191);

  v132 = v184;
  outlined init with copy of CamModelMetadata(v131, v184);

  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v206[0] = swift_slowAlloc();
    *v135 = 136315394;
    *(v135 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v119, v206);
    *(v135 + 12) = 2080;
    outlined init with copy of Locale?(v132 + *(v130 + 28), v181);
    v136 = String.init<A>(describing:)();
    v137 = v132;
    v139 = v138;
    outlined destroy of CamModelMetadata(v137);
    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v139, v206);

    *(v135 + 14) = v140;
    _os_log_impl(&dword_266790000, v133, v134, "%s: Model locale from asset metadata: %s", v135, 0x16u);
    swift_arrayDestroy();
    v131 = v191;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    outlined destroy of CamModelMetadata(v132);
  }

  v141 = v197;
  v142 = v187;
  v143 = v186;
  outlined init with copy of Locale?(v131 + *(v130 + 28), v186);
  if (__swift_getEnumTagSinglePayload(v143, 1, v141) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v143, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      OUTLINED_FUNCTION_8_13();
      _os_log_impl(v146, v147, v148, v149, v150, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_12_14();
    }

    else
    {
      v151 = v144;
      v144 = v176;
    }

    v157 = v192;

    v53(v200, v141);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v154 = OUTLINED_FUNCTION_9_10(v158);
    v156 = v157;
    goto LABEL_44;
  }

  (*(v180 + 32))(v142, v143, v141);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale);
  v144 = v200;
  v145 = v141;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    OUTLINED_FUNCTION_12_14();

    v53(v142, v141);
    v53(v144, v141);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v154 = OUTLINED_FUNCTION_9_10(v153);
    v156 = v192;
LABEL_44:
    v155(v154, v156, v196);
    outlined init with take of CamModelMetadata(v131, &v142[v145]);
    v95 = v142;
    v96 = 0;
    v94 = v144;
    return __swift_storeEnumTagSinglePayload(v95, v96, 1, v94);
  }

  v159 = v179;
  v160 = v177;
  v177(v179, v144, v141);
  v160(v129, v142, v141);
  v161 = v193;

  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v162, v163))
  {
    v164 = OUTLINED_FUNCTION_11();
    v199 = swift_slowAlloc();
    v206[0] = v199;
    *v164 = 136315650;
    *(v164 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v161, v206);
    *(v164 + 12) = 2080;
    OUTLINED_FUNCTION_4_10(&lazy protocol witness table cache variable for type Locale and conformance Locale);
    LODWORD(v201) = v163;
    v165 = dispatch thunk of CustomStringConvertible.description.getter();
    v167 = v166;
    v53(v159, v141);
    v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, v206);

    *(v164 + 14) = v168;
    *(v164 + 22) = 2080;
    v169 = v190;
    dispatch thunk of CustomStringConvertible.description.getter();
    v53(v169, v141);
    v170 = OUTLINED_FUNCTION_10_12();

    *(v164 + 24) = v170;
    _os_log_impl(&dword_266790000, v162, v201, "%s: Current Siri Locale %s does not match locale of the model %s delivered by UAF. User possibly switched Siri locale recently. ", v164, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_12_14();

    v53(v187, v141);
    outlined destroy of CamModelMetadata(v191);
    OUTLINED_FUNCTION_6_15();
    v172();
    v53(v144, v141);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_12_14();

  v53(v190, v141);
  v53(v159, v141);
  v53(v142, v141);
  outlined destroy of CamModelMetadata(v131);
  OUTLINED_FUNCTION_6_15();
  v174();
  v92 = v144;
  v93 = v141;
LABEL_25:
  v53(v92, v93);
LABEL_26:
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v95 = v198;
  v96 = 1;
  return __swift_storeEnumTagSinglePayload(v95, v96, 1, v94);
}

uint64_t type metadata accessor for AutoSendInputFeatureExtractor()
{
  result = type metadata singleton initialization cache for AutoSendInputFeatureExtractor;
  if (!type metadata singleton initialization cache for AutoSendInputFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WordEmbeddingFeatureExtractor()
{
  result = type metadata singleton initialization cache for WordEmbeddingFeatureExtractor;
  if (!type metadata singleton initialization cache for WordEmbeddingFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

void static AssetProvider.defaultModelUrl(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  static AssetProvider.defaultAssetsUrl()();
  if (!v3)
  {
    URL.appendingPathComponent(_:)();
    v42 = *(v8 + 8);
    v43 = v8 + 8;
    v42(v17, v7);
    if (URL.hasDirectoryPath.getter())
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.common);
      (*(v8 + 16))(v12, a3, v7);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v44);
        *(v21 + 12) = 2080;
        v22 = URL.absoluteString.getter();
        v24 = v23;
        v42(v12, v7);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v44);

        *(v21 + 14) = v25;
        _os_log_impl(&dword_266790000, v19, v20, "%s: Default Model url: %s", v21, 0x16u);
        v26 = v41;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v26, -1, -1);
        MEMORY[0x26D5DDCD0](v21, -1, -1);
      }

      else
      {

        v42(v12, v7);
      }
    }

    else
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.common);
      (*(v8 + 16))(v15, a3, v7);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v30 = 136315650;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v44);
        *(v30 + 12) = 2080;
        *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v44);
        *(v30 + 22) = 2080;
        v31 = URL.absoluteString.getter();
        v33 = v32;
        v34 = v15;
        v35 = v42;
        v42(v34, v7);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v44);

        *(v30 + 24) = v36;
        _os_log_impl(&dword_266790000, v28, v29, "%s: Default Model for %s not found in %s.", v30, 0x20u);
        v37 = v41;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v37, -1, -1);
        MEMORY[0x26D5DDCD0](v30, -1, -1);
      }

      else
      {

        v38 = v15;
        v35 = v42;
        v42(v38, v7);
      }

      lazy protocol witness table accessor for type ModelError and conformance ModelError();
      swift_allocError();
      *v39 = xmmword_266815500;
      *(v39 + 16) = 2;
      swift_willThrow();
      v35(a3, v7);
    }
  }
}

uint64_t static AssetProvider.defaultAssetsUrl()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  type metadata accessor for DummyClassToIdentifyTheCamFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = [v9 resourceURL];

  if (v10)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v7, v5, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v7, v0);
  }

  else
  {
    lazy protocol witness table accessor for type ModelError and conformance ModelError();
    swift_allocError();
    *v12 = xmmword_266815500;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }
}

id OUTLINED_FUNCTION_11_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return [v10 (v11 + 2040)];
}

uint64_t OUTLINED_FUNCTION_11_1()
{
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDBA0](a1, a2, v2);
}

void OUTLINED_FUNCTION_11_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_8()
{
  v2 = *(v0 + 16) + 1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 192);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

void OUTLINED_FUNCTION_11_11()
{

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v2 + 5, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v1 = **(v0 - 192);
  result = *(v0 - 168);
  v3 = *(v0 - 104);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AutoSendHandler.update()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v68 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v60[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v60[-v16];
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v67 = v12;
  v18 = type metadata accessor for Logger();
  v66 = __swift_project_value_buffer(v18, static Logger.autoSend);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_7_5();
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_266790000, v19, v20, "Updating AutoSendHandler", v23, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  static EnvironmentUtilities.currentSiriLocale.getter();
  v24 = OBJC_IVAR____TtC7SiriCam15AutoSendHandler_siriLocale;
  swift_beginAccess();
  v65 = *(v5 + 16);
  (v65)(v15, v1 + v24, v2);
  OUTLINED_FUNCTION_4_9();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v25, v26);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = v5;
  v70 = *(v5 + 8);
  (v70)(v15, v2);
  if (v27)
  {
    v28 = v70;
  }

  else
  {
    v64 = v1;
    v62 = v24;
    v29 = v67;
    v30 = v65;
    (v65)(v67, v1 + v24, v2);
    v31 = v68;
    v63 = v17;
    (v30)(v68, v17, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71[0] = v66;
      *v36 = 136315394;
      OUTLINED_FUNCTION_4_9();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v37, v38);
      v65 = v32;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v33;
      v40 = v39;
      v42 = v41;
      v43 = v70;
      (v70)(v29, v2);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v71);
      v28 = v43;

      *(v36 + 4) = v44;
      *(v36 + 12) = 2080;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (v43)(v31, v2);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v71);

      *(v36 + 14) = v48;
      v49 = v65;
      _os_log_impl(&dword_266790000, v65, v61, "Detected locale switch from %s to %s", v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      v28 = v70;
      (v70)(v31, v2);
      (v28)(v29, v2);
    }

    v1 = v64;
    v50 = v62;
    swift_beginAccess();
    (*(v69 + 24))(v1 + v50, v63, v2);
    swift_endAccess();
    v51 = type metadata accessor for AutoSendCoreHandler();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = v71[7];
    v55 = AutoSendCoreHandler.init()();
    if (v54)
    {
      v56 = OUTLINED_FUNCTION_10_0();
      v28(v56);
      return;
    }

    v57 = *(v1 + 16);
    *(v1 + 16) = v55;
  }

  v58 = *(v1 + 16);

  AutoSendCoreHandler.update()();
  v59 = OUTLINED_FUNCTION_10_0();
  v28(v59);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_6_4()
{

  JUMPOUT(0x26D5DCC90);
}

void OUTLINED_FUNCTION_6_6()
{

  _StringGuts.grow(_:)(53);
}

uint64_t OUTLINED_FUNCTION_6_8()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

void OUTLINED_FUNCTION_6_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_10(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_6_15()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 296);
  v3 = *(v0 - 208);
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  v3 = *(*(*(v1 - 72) + 48) + 16 * v0 + 8);
}

void OUTLINED_FUNCTION_6_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_2667980BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t OUTLINED_FUNCTION_16(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_16_11()
{

  JUMPOUT(0x26D5DCD80);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CoreMLHandler.update()()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_32_4();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_17();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v100 - v20;
  v109 = v19;
  v22 = *(v19 + 48);
  v24 = *(v0 + 16);
  v23 = *(v0 + 24);

  v25 = v24;
  v26 = v110;
  static AssetProvider.fetchModel(_:)(v21, &v21[v22], v25, v23);

  if (!v26)
  {
    v103 = v1;
    v104 = v2;
    v107 = v11;
    v108 = v4;
    v105 = v17;
    v110 = 0;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v21, v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v27 = (v3 + *(v109 + 48));
    v28 = v27[2];
    v29 = v27[3];
    v30 = v27[4];
    v31 = v27[5];
    v32 = OUTLINED_FUNCTION_13_15();
    outlined copy of CamModelVersion?(v32, v33, v34, v35);
    outlined destroy of CamModelMetadata(v27);
    v36 = type metadata accessor for URL();
    v102 = *(v36 - 8);
    v38 = v102 + 8;
    v37 = *(v102 + 8);
    v39 = OUTLINED_FUNCTION_25_9();
    v106 = v40;
    (v40)(v39);
    if (v31 == 1)
    {
      v41 = v108;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.common);

      v43 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_34_1();

      v44 = OUTLINED_FUNCTION_33_2();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_23();
        v47 = OUTLINED_FUNCTION_11();
        v111 = v47;
        *v46 = 136315138;
        v48 = *(v41 + 16);
        v49 = *(v41 + 24);

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v111);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_266790000, v43, v30, "%s: UAF didn't provide model version to check if it's a newer model. Skipping update", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v51 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
      v52 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
      v53 = v21;
LABEL_8:
      outlined destroy of (CamLogOutput, CamModelMetadata)(v53, v51, v52);
      return;
    }

    v100 = v38;
    v101 = v36;
    v54 = v108;
    v55 = (v108 + OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata);
    swift_beginAccess();
    v56 = v55[5];
    if (v56 == 1)
    {
      v57 = OUTLINED_FUNCTION_13_15();
      v30 = v58;
      outlined consume of CamModelVersion?(v57, v59, v60, v61);
      v62 = OUTLINED_FUNCTION_41_0();
      outlined consume of CamModelVersion?(v62, v63, v30, 1);
    }

    else
    {
      v64 = static CamModelVersion.== infix(_:_:)(v28, v29, v30, v31, v55[2], v55[3], v55[4], v56);
      v65 = OUTLINED_FUNCTION_13_15();
      outlined consume of CamModelVersion?(v65, v66, v67, v68);
      if (v64)
      {
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, static Logger.common);
        v70 = v105;
        outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v21, v105, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

        v71 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_34_1();

        v72 = OUTLINED_FUNCTION_33_2();
        v74 = os_log_type_enabled(v72, v73);
        v76 = v103;
        v75 = v104;
        if (v74)
        {
          OUTLINED_FUNCTION_11_14();
          v77 = swift_slowAlloc();
          OUTLINED_FUNCTION_10_17();
          v107 = swift_slowAlloc();
          v112 = v107;
          *v77 = 136315394;
          LODWORD(v106) = v30;
          v79 = *(v54 + 16);
          v78 = *(v54 + 24);

          v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, &v112);

          *(v77 + 4) = v80;
          OUTLINED_FUNCTION_24_4();
          outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v70, v76, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v81 = *(v109 + 48);
          (*(v102 + 32))(v75, v76, v101);
          outlined init with take of CamModelMetadata(v76 + v81, v75 + v81);
          OUTLINED_FUNCTION_69_0();
          v82 = String.init<A>(describing:)();
          v84 = v83;
          outlined destroy of (CamLogOutput, CamModelMetadata)(v70, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v112);

          *(v77 + 14) = v85;
          OUTLINED_FUNCTION_37_1(&dword_266790000, v71, v106, "%s: Not updating the model %s as it has not changed");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();

          v53 = v21;
          v51 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
          v52 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
        }

        else
        {

          OUTLINED_FUNCTION_14_17();
          outlined destroy of (CamLogOutput, CamModelMetadata)(v97, v98, v99);
          OUTLINED_FUNCTION_14_17();
        }

        goto LABEL_8;
      }
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.common);

    v87 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    OUTLINED_FUNCTION_34_1();

    v88 = OUTLINED_FUNCTION_33_2();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_23();
      v91 = OUTLINED_FUNCTION_11();
      v112 = v91;
      *v90 = 136315138;
      v92 = *(v54 + 16);
      v93 = *(v54 + 24);

      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v112);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_266790000, v87, v30, "%s: Found a different model than current. Trying provisional model", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v95 = v107;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v21, v107, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v96 = *(v109 + 48);
    CoreMLHandler.loadModel(from:)(v95, v95 + v96);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v21, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined destroy of CamModelMetadata(v95 + v96);
    v106(v95, v101);
  }
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return swift_slowAlloc();
}

uint64_t static AssetProvider.fetchModel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  static AssetProvider.fetchModelFromUAF(_:)(a3, a4, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v11, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.common);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266790000, v22, v23, "Falling back to default model", v24, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    return static AssetProvider.defaultModel(for:)(a1, a2, a3, a4);
  }

  else
  {
    outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v11, v20, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v20, v18, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v26 = *(v12 + 48);
    v27 = type metadata accessor for URL();
    OUTLINED_FUNCTION_0_2(v27);
    (*(v28 + 32))(a1, v18);
    return outlined init with take of CamModelMetadata(&v18[v26], a2);
  }
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_10_2()
{

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 104));
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1)
{
  v5 = *v1;

  return SiriSignalsContainer.get(from:query:defaultVal:)(a1, v3, v2, 0);
}

void OUTLINED_FUNCTION_10_16(uint64_t a1@<X8>)
{
  v3 = a1 | (v2 << 6);
  v4 = (*(v1 + 48) + 16 * v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(*(v1 + 56) + 8 * v3);
}

uint64_t type metadata accessor for CamModelMetadata()
{
  result = type metadata singleton initialization cache for CamModelMetadata;
  if (!type metadata singleton initialization cache for CamModelMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *static AssetProvider.uafAssetSet.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-v6];
  static EnvironmentUtilities.currentSiriLocale.getter();
  v25 = Locale.identifier.getter();
  v26 = v8;
  v23 = 45;
  v24 = 0xE100000000000000;
  v27 = 95;
  v28 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Locale.init(identifier:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  if (one-time initialization token for savedLocale != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, static AssetProvider.savedLocale);
  swift_beginAccess();
  (*(v1 + 16))(v5, v10, v0);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9(v5, v0);
  if ((v11 & 1) == 0 || (v12 = static AssetProvider.savedUafAssetSet) == 0)
  {
    swift_beginAccess();
    (*(v1 + 24))(v10, v7, v0);
    swift_endAccess();
    v13 = [objc_opt_self() sharedManager];
    v14 = MEMORY[0x26D5DCC90](0xD00000000000001CLL, 0x800000026681B420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, _ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    strcpy((inited + 32), "cam.language");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = Locale.identifier.getter();
    *(inited + 56) = v16;
    v17 = Dictionary.init(dictionaryLiteral:)();
    v18 = outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(v14, v17, v13);

    v19 = static AssetProvider.savedUafAssetSet;
    static AssetProvider.savedUafAssetSet = v18;

    v12 = static AssetProvider.savedUafAssetSet;
  }

  v20 = v12;
  v9(v7, v0);
  return v12;
}

uint64_t static AssetMetadataProvider.parseAssetMetadata(modelName:metadata:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  if (*(a3 + 16))
  {
    v12 = static AssetMetadataProvider.getShadowLogField(for:using:)(a1, a2, a3);
    static AssetMetadataProvider.getLocale(from:)(a3, v11);
    v13 = static AssetMetadataProvider.getModelVersion(for:using:)(a1, a2, a3);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = a4 + *(type metadata accessor for CamModelMetadata() + 28);
    v21 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v13;
    *(a4 + 24) = v15;
    *(a4 + 32) = v17;
    *(a4 + 40) = v19;
    *(a4 + 48) = v12;
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.common);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v30);
      _os_log_impl(&dword_266790000, v23, v24, "%s: Model metadata is empty. Setting modelname alone", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D5DDCD0](v26, -1, -1);
      MEMORY[0x26D5DDCD0](v25, -1, -1);
    }

    v27 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v27);
    v20 = a4 + *(type metadata accessor for CamModelMetadata() + 28);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v27);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
    *(a4 + 48) = 2;
  }

  return outlined assign with take of Locale?(v11, v20);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_82();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

BOOL OUTLINED_FUNCTION_76()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t static AssetMetadataProvider.getLocale(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = specialized Dictionary.subscript.getter(0x656C61636F6CLL, 0xE600000000000000, a1);
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      Locale.init(identifier:)();
      v18[4] = Locale.identifier.getter();
      v18[5] = v12;
      v18[2] = 45;
      v18[3] = 0xE100000000000000;
      v18[0] = 95;
      v18[1] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      Locale.init(identifier:)();
      (*(v5 + 8))(v8, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    }
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.common);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_266790000, v15, v16, "Locale not present in asset metadata", v17, 2u);
    MEMORY[0x26D5DDCD0](v17, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t static AssetMetadataProvider.getModelVersion(for:using:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  specialized Dictionary.subscript.getter(0x6E6F6973726576, 0xE700000000000000, a3);
  if (v5)
  {

    CamModelVersion.init(_:)();
    v15 = v14;
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.common);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
      *(v9 + 12) = 2080;
      v11 = Dictionary.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_266790000, v7, v8, "%s: Version information not present in UAF asset metadata : %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v10, -1, -1);
      MEMORY[0x26D5DDCD0](v9, -1, -1);
    }

    return 0;
  }

  return v15;
}

void CamModelVersion.init(_:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    lazy protocol witness table accessor for type CamModelVersionError and conformance CamModelVersionError();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x800000026681ABD0;
    *(v9 + 16) = 0;
    swift_willThrow();
    goto LABEL_92;
  }

  v4 = v0;
  v47 = v0;
  v48 = v1;
  v45 = 45;
  v46 = 0xE100000000000000;
  MEMORY[0x28223BE20]();
  v42[2] = &v45;

  v5 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v42, v4, v2);
  if (v6)
  {
    v7 = v2;
    v8 = v4;
  }

  else
  {
    if (4 * v3 < v5 >> 14)
    {
      __break(1u);
      goto LABEL_87;
    }

    v10 = String.subscript.getter();
    MEMORY[0x26D5DCD30](v10);

    String.removeSubrange(_:)();
    v8 = v47;
    v7 = v48;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v45 = 0x206E6F6973726556;
  v46 = 0xE800000000000000;
  MEMORY[0x26D5DCD80](v4, v2);

  MEMORY[0x26D5DCD80](0x61766E6920736920, 0xEB0000000064696CLL);
  v4 = v45;
  v2 = v46;
  v45 = v8;
  v46 = v7;
  v43 = 46;
  v44 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.components<A>(separatedBy:)();

  if (v11[2] != 3)
  {

    v24 = 1;
LABEL_91:
    lazy protocol witness table accessor for type CamModelVersionError and conformance CamModelVersionError();
    swift_allocError();
    *v41 = v4;
    *(v41 + 8) = v2;
    *(v41 + 16) = v24;
    swift_willThrow();

    goto LABEL_92;
  }

  v12 = v11[4];
  v13 = v11[5];
  v14 = HIBYTE(v13) & 0xF;
  v15 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_87:

    v24 = 2;
    goto LABEL_91;
  }

  v49 = v4;
  if ((v13 & 0x1000000000000000) != 0)
  {

    v40 = specialized _parseInteger<A, B>(ascii:radix:)(v12, v13, 10);

    if ((v40 & 0x100000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_89:

LABEL_90:
    v24 = 2;
    v4 = v49;
    goto LABEL_91;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v45 = v11[4];
    v46 = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v12 == 43)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_12_5();
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_10_4();
            if (!v20 || __CFADD__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_9_5();
            if (v20)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v12 != 45)
      {
        if (v14)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_10_4();
            if (!v20 || __CFADD__(v35, v34))
            {
              break;
            }

            OUTLINED_FUNCTION_9_5();
            if (v20)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_12_5();
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_10_4();
            if (!v20 || v26 < v25)
            {
              break;
            }

            OUTLINED_FUNCTION_9_5();
            if (v20)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
    }

    __break(1u);
    return;
  }

  if ((v12 & 0x1000000000000000) == 0)
  {
    goto LABEL_94;
  }

  for (i = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = _StringObject.sharedUTF8.getter())
  {
    v18 = *i;
    if (v18 == 43)
    {
      if (v15 < 1)
      {
        goto LABEL_98;
      }

      if (v15 != 1)
      {
        if (!i)
        {
          goto LABEL_70;
        }

        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v20 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_10_4();
          if (!v20 || __CFADD__(v28, v27))
          {
            break;
          }

          OUTLINED_FUNCTION_9_5();
          if (v20)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v18 == 45)
    {
      if (v15 < 1)
      {
        goto LABEL_96;
      }

      if (v15 != 1)
      {
        if (!i)
        {
          goto LABEL_70;
        }

        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v20 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_10_4();
          if (!v20 || v22 < v21)
          {
            break;
          }

          OUTLINED_FUNCTION_9_5();
          if (v20)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v15)
    {
      v31 = 0;
      if (!i)
      {
LABEL_70:
        v23 = 0;
        goto LABEL_80;
      }

      while (1)
      {
        v32 = *i - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v31;
        if ((v33 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v31 = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          break;
        }

        ++i;
        if (!--v15)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_79:
    v23 = 1;
LABEL_80:
    LOBYTE(v43) = v23;
    if (v23)
    {
      goto LABEL_89;
    }

LABEL_81:
    if (v11[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_94:
    ;
  }

  v36 = v11[6];
  v37 = v11[7];

  if ((_ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v36, v37) & 0x100000000) != 0)
  {
    goto LABEL_89;
  }

  if (v11[2] < 3uLL)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v38 = v11[8];
  v39 = v11[9];

  if ((_ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v38, v39) & 0x100000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_92:
  OUTLINED_FUNCTION_15_3();
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  v2 = *(v0 - 112);
}

void OUTLINED_FUNCTION_2_4()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_9_3()
{

  JUMPOUT(0x26D5DCD80);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  return *(v2 - 176);
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return outlined destroy of ActionCandidate();
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{
  v5 = *v1;

  return SiriSignalsContainer.get(from:query:defaultVal:)(a1, v3, v2, 0);
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x26D5DCD80);
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return _s7SiriCam12RankedActionVWOhTm_0(v0, type metadata accessor for TopTwo);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return StringProtocol.contains<A>(_:)();
}

unint64_t OUTLINED_FUNCTION_2_14()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(0x535F5050415F5349, 0xEF54554354524F48);
}

void OUTLINED_FUNCTION_2_15(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  _s7SiriCam34WordEmbeddingFeatureExtractorErrorOWOe_0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return swift_beginAccess();
}

uint64_t _s7SiriCam34WordEmbeddingFeatureExtractorErrorOWOe_0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_8_6(uint64_t a1@<X8>)
{
  v3 = *(v1 - 512);

  specialized MutableCollection<>.sort(by:)(a1 + 16, specialized _ArrayBuffer._consumeAndCreateNew());
}

BOOL OUTLINED_FUNCTION_8_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v16 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__CFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__CFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v10 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (v10 < v9)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v24 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__CFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v13 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (v13 < v12)
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__CFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CamModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamModelMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CamModelVersion(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CamModelVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CamModelMetadata(uint64_t a1)
{
  v2 = type metadata accessor for CamModelMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of CamModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamModelMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_8_0();
  v9(v8);
  return a2;
}

BOOL OUTLINED_FUNCTION_24()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_13_9(unint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return specialized Dictionary.update(other:allowDuplicateKeys:)(v0, 0);
}

uint64_t outlined copy of CamModelVersion?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of CamModelVersion?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t static CamModelVersion.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6)
  {
    return 0;
  }

  result = (a4 | a8) == 0;
  if (a4 && a8)
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      return OUTLINED_FUNCTION_6_7();
    }
  }

  return result;
}

id OUTLINED_FUNCTION_33(void *a1)
{

  return [a1 (v1 + 376)];
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

BOOL OUTLINED_FUNCTION_34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_8(uint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_12_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

unint64_t OUTLINED_FUNCTION_12_11()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(0x535F5050415F5349, 0xEF54554354524F48);
}

void OUTLINED_FUNCTION_12_18()
{

  JUMPOUT(0x26D5DCC90);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t outlined destroy of (CamLogOutput, CamModelMetadata)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for AutoSendHandler()
{
  result = type metadata singleton initialization cache for AutoSendHandler;
  if (!type metadata singleton initialization cache for AutoSendHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Result<AutoConfirming, AutoConfirmError>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7SiriCam14AutoConfirming_pAC0D12ConfirmErrorOGMd, &_ss6ResultOy7SiriCam14AutoConfirming_pAC0D12ConfirmErrorOGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26679B818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AutoSendInputFeatureExtractor();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26679B8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AutoSendInputFeatureExtractor();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26679B96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26679B9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26679BA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26679BAAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26679BB54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ResponseMode();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26679BBDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ResponseMode();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26679BE38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679BED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26679BF6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679C068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_1_10(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = OUTLINED_FUNCTION_1_10(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[7];
    }

    else
    {
      v9 = type metadata accessor for CamRequestContext();
      v16 = a3[11];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[6] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_26679C184(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  result = OUTLINED_FUNCTION_1_10(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = OUTLINED_FUNCTION_1_10(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[7];
    }

    else
    {
      v11 = type metadata accessor for CamRequestContext();
      v16 = a4[11];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_26679C2EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for RankedAction();
    v11 = &a1[*(a3 + 32)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_26679C374(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for RankedAction();
    v8 = &v5[*(a4 + 32)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679C3F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_26679C4B0()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26679C568()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26679C5A4()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_29_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26679C5D8()
{
  v1 = type metadata accessor for CamModelMetadata();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 40) != 1)
  {
  }

  v7 = *(v1 + 28);
  v8 = type metadata accessor for Locale();
  if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

char *_sSp14moveInitialize4from5countySpyxG_SitF7SiriCam31UncertaintyPromptActionEnforcer_p_Tg5_0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

unint64_t _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueAFSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RankedAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueSSvg_0(char a1)
{
  result = 0x646E6148776F6C66;
  switch(a1)
  {
    case 1:
      result = 0x6174614472657375;
      break;
    case 2:
      result = 0x6573726170;
      break;
    case 3:
      result = 0x74616E7265746C61;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26679C85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26679C928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26679CA48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for RankedAction();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_26679CA8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for RankedAction();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_26679CAD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_26679CB68(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679CC2C()
{
  v1 = type metadata accessor for CamInput();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = &v0[v3];
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2(v9);
  v11 = *(v10 + 8);
  v11(&v0[v3], v9);
  v11(&v0[v3 + v1[5]], v9);
  v12 = *&v0[v3 + 8 + v1[6]];

  v13 = v1[7];
  if (!__swift_getEnumTagSinglePayload(&v0[v3 + v13], 1, v9))
  {
    v11(&v8[v13], v9);
  }

  v14 = *&v8[v1[10]];

  v15 = *&v8[v1[11]];

  v16 = *&v8[v1[12]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26679CDB4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for RankedAction();
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_26679CE3C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for RankedAction();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAFSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CamUSOParse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6C646E7542707061;
      break;
    case 3:
      result = 0x646E4970756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s7SiriCam0B5ParseO24PommesResponseCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOs0F3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamParse.PommesResponseCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

unint64_t _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesResponse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6E6F437972657571;
  }

  return 0xD000000000000012;
}

uint64_t sub_26679D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = OUTLINED_FUNCTION_1_10(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v12 = OUTLINED_FUNCTION_1_10(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_26679D348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = OUTLINED_FUNCTION_1_10(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    result = OUTLINED_FUNCTION_1_10(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_26679D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26679D5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26679D674()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26679D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48();
  v6 = type metadata accessor for RankerContext();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26679D77C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RankerContext();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id _s7SiriCam0B15LoggingProtocolPAASo29CAMSchemaCAMResponseGeneratedC18DestinationMessageRczrlE3map6action18responseStatusCode8enforcerAESgSo0E9CAMActionVSg_AA0b8ResponsemN0OSSSgtFZAA08AutoSendQ6LoggerV_Tt2B5_0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D56C88]) init];
  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D56C78]) init];
    v9 = v8;
    if ((a1 & 0x100000000) != 0)
    {
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v13 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v13, static Logger.common);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266790000, v14, v15, "CAM action for logging is nil", v16, 2u);
        OUTLINED_FUNCTION_3_1();
      }

      if (a4)
      {
LABEL_4:
        if (v9)
        {
          v10 = v9;
          v11 = OUTLINED_FUNCTION_42_1();
          v12 = MEMORY[0x26D5DCC90](v11);
          [v10 setEnforcer_];

LABEL_12:
          [v9 setResponseStatusCode_];
        }

LABEL_13:
        [v7 setResponse_];

        return v7;
      }
    }

    else
    {
      [v8 setAction_];
      if (a4)
      {
        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  return v7;
}

uint64_t sub_26679DD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_26679DDB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679DE80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26679DEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26679DF40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26679E028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26679E108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26679E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26679E2B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CamParse(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for UUID();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26679E378()
{
  v1 = (type metadata accessor for AutoSendInput() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2(v8);
  v10 = *(v9 + 8);
  v10(&v0[v3], v8);

  v11 = *&v0[v3 + 8 + v1[8]];

  v10(&v0[v3 + v1[10]], v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26679E4AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26679E4E4()
{
  v1 = type metadata accessor for CamModelMetadata();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 40) != 1)
  {
  }

  v7 = *(v1 + 28);
  v8 = type metadata accessor for Locale();
  if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

uint64_t one-time initialization function for defaultModelMetadata()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x8000000266819F10;
  *(inited + 48) = OUTLINED_FUNCTION_0();
  *(inited + 56) = 0xD000000000000029;
  *(inited + 64) = 0x8000000266819F40;
  *(inited + 72) = OUTLINED_FUNCTION_0();
  *(inited + 80) = 0xD000000000000031;
  *(inited + 88) = 0x8000000266819F70;
  *(inited + 96) = OUTLINED_FUNCTION_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static AssetMetadataProvider.defaultModelMetadata = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MLMultiArrayDataType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  MLMultiArrayDataType.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLMultiArrayDataType@<X0>(uint64_t *a1@<X8>)
{
  result = destructiveProjectEnumData for FeatureDictionaryError(*v1);
  *a1 = result;
  return result;
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

void type metadata accessor for RepetitionType(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CamInputFeatureExtractor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CamInputFeatureExtractor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *static CamInputFeatureExtractor.extractedFeatures.getter()
{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  return &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

id CamInputFeatureExtractor.extractImpl(from:)(uint64_t a1, double a2)
{
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.ambiguityHandling);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266790000, v6, v7, "Extracting CAM features", v8, 2u);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
  }

  type metadata accessor for MLMultiArray();
  v31 = Dictionary.init(dictionaryLiteral:)();
  v9 = specialized FeatureExtracting.extract(from:)(a2);
  if (v2)
  {
  }

  OUTLINED_FUNCTION_0_0(v9);
  v11 = *(a1 + *(type metadata accessor for CamInput() + 32));
  if (v11)
  {
    v12 = v11;
    v13 = [v12 recognition];
    if (v13)
    {
      v14 = v13;
      v15 = [v12 audioAnalytics];
      if (v15)
      {
        v16 = v15;
        v17 = specialized FeatureExtracting.extract(from:)();
        OUTLINED_FUNCTION_0_0(v17);
        result = [v14 aceRecognition];
        if (result)
        {
          v26 = result;
          v29 = specialized FeatureExtracting.extract(from:)();

          OUTLINED_FUNCTION_0_0(v29);
          result = [v14 aceRecognition];
          if (result)
          {
            v27 = result;

            v28 = specialized FeatureExtracting.extract(from:)(v27);

            OUTLINED_FUNCTION_0_0(v28);

            goto LABEL_16;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v12;
    }
  }

LABEL_16:
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    swift_beginAccess();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_266790000, v18, v19, "Extracted CAM features: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D5DDCD0](v21, -1, -1);
    MEMORY[0x26D5DDCD0](v20, -1, -1);
  }

  swift_beginAccess();
  return v31;
}

unint64_t type metadata accessor for MLMultiArray()
{
  result = lazy cache variable for type metadata for MLMultiArray;
  if (!lazy cache variable for type metadata for MLMultiArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLMultiArray);
  }

  return result;
}

uint64_t LatticePathFeatureExtractor.getLatticePathFeatures(from:)(void *a1)
{
  v6 = v1;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  v84 = Dictionary.init(dictionaryLiteral:)();
  v81 = outlined bridged method (pb) of @objc SASRecognition.utterances.getter(a1);
  if (!v81)
  {
    goto LABEL_40;
  }

  v80 = outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(a1, &selRef_phrases, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
  if (!v80)
  {

LABEL_40:

    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.common);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_266790000, v52, v53, "LatticePathFeature Extractor failed due to empty SASRecognition", v54, 2u);
      MEMORY[0x26D5DDCD0](v54, -1, -1);
    }

    lazy protocol witness table accessor for type CamError and conformance CamError();
    v55 = OUTLINED_FUNCTION_6_2();
    *v56 = 0xD000000000000014;
    v56[1] = 0x800000026681A0A0;
    return OUTLINED_FUNCTION_2(v55, v56);
  }

  v8 = v81;
  v9 = specialized Array.count.getter(v81);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v77 = a1;
  v78 = v81 & 0xC000000000000001;
  v79 = -v9;
  v5 = MEMORY[0x277D84F90];
  v2 = 4;
  v83 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v12 = v81;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v79 + v2 == 4)
    {

      v58 = static MLMultiArray.make1DSetOrSequence(from:)(v5);
      if (!v6)
      {
        v59 = v58;
        v17 = 0;
        v60 = static MLMultiArray.make1DSetOrSequence(from:)(v8);

        v61 = static MLMultiArray.make1DSetOrSequence(from:)(v83);

        v62 = static MLMultiArray.make1DSetOrSequence(from:)(v10);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
        *(swift_initStackObject() + 16) = xmmword_266813E50;
        OUTLINED_FUNCTION_3_3();
        *(v63 + 32) = 0xD00000000000002CLL;
        *(v63 + 40) = v64;
        OUTLINED_FUNCTION_3_3();
        v65[6] = v61;
        v65[7] = v66;
        v65[8] = v67;
        v65[9] = v60;
        OUTLINED_FUNCTION_3_3();
        *(v69 + 80) = v68 | 1;
        *(v69 + 88) = v70;
        OUTLINED_FUNCTION_3_3();
        v71[12] = v59;
        v71[13] = v72;
        v71[14] = v73;
        v71[15] = v62;
        v3 = v61;
        v2 = v60;
        v5 = v59;
        v8 = v62;
        v74 = Dictionary.init(dictionaryLiteral:)();
        specialized Dictionary.update(other:allowDuplicateKeys:)(v74, 0);
        goto LABEL_54;
      }

LABEL_49:
    }

    v82 = v8;
    v8 = v10;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v2 - 4, v78 == 0, v12);
    v13 = v5;
    if (v78)
    {
      v14 = MEMORY[0x26D5DD230](v2 - 4, v12);
    }

    else
    {
      v14 = *(v12 + 8 * v2);
    }

    v3 = v14;
    LatticePathFeatureExtractor.getTokenConfidences(from:for:)(v80, v14);
    if (v6)
    {

      goto LABEL_49;
    }

    v5 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(v11 + 16);
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v37;
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    OUTLINED_FUNCTION_7();
    if (v19)
    {
      OUTLINED_FUNCTION_1_0(v18);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v38;
    }

    *(v11 + 16) = v12;
    *(v11 + 8 * v17 + 32) = v5;
    if (v2 - 4 > v17)
    {
      break;
    }

    v20 = specialized Sequence<>.max()(*(v11 + 8 * v2));
    OUTLINED_FUNCTION_5_0(v20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v5 = v13;
      v21 = v83;
    }

    else
    {
      v39 = *(v83 + 16);
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v40;
      v5 = v13;
    }

    v17 = *(v21 + 16);
    v22 = *(v21 + 24);
    OUTLINED_FUNCTION_7();
    v10 = v8;
    if (v19)
    {
      OUTLINED_FUNCTION_1_0(v24);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v23 = v41;
    }

    v8 = v82;
    *(v23 + 16) = v12;
    OUTLINED_FUNCTION_4_0(v23 + 8 * v17);
    if (v19)
    {
      goto LABEL_51;
    }

    v83 = v25;
    v26 = COERCE_DOUBLE(specialized Sequence<>.min()(*(v11 + 8 * v2)));
    if (v27)
    {
      v28 = 1000.0;
    }

    else
    {
      v28 = v26;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = v82[2];
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v43;
    }

    v17 = v8[2];
    v29 = v8[3];
    OUTLINED_FUNCTION_7();
    if (v19)
    {
      OUTLINED_FUNCTION_1_0(v30);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v44;
    }

    v8[2] = v12;
    OUTLINED_FUNCTION_4_0(&v8[v17]);
    if (v19)
    {
      goto LABEL_52;
    }

    v31 = specialized Array<A>.avg()(*(v11 + 8 * v2));
    OUTLINED_FUNCTION_5_0(v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = v5[2];
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = v46;
    }

    v17 = v5[2];
    v32 = v5[3];
    OUTLINED_FUNCTION_7();
    if (v19)
    {
      OUTLINED_FUNCTION_1_0(v33);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = v47;
    }

    v5[2] = v12;
    OUTLINED_FUNCTION_4_0(&v5[v17]);
    if (v19)
    {
      goto LABEL_53;
    }

    v34 = specialized Array<A>.variance()(*(v11 + 8 * v2));
    OUTLINED_FUNCTION_5_0(v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = *(v10 + 16);
      OUTLINED_FUNCTION_0_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v49;
    }

    v6 = 0;
    v35 = *(v10 + 16);
    if (v35 >= *(v10 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v50;
    }

    *(v10 + 16) = v35 + 1;
    *(v10 + 8 * v35 + 32) = v28;
    ++v2;
    v12 = v81;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  LatticePathFeatureExtractor.getTopLatticePathScoresFeatures(tokenConfidences:meanConfidences:)(v11);
  if (v17)
  {
    OUTLINED_FUNCTION_9_0();

    goto LABEL_49;
  }

  v76 = v75;

  specialized Dictionary.update(other:allowDuplicateKeys:)(v76, 0);

  v9 = LatticePathFeatureExtractor.getTopLatticePathLeadingSilenceFeature(recognition:)(v77);
  v4 = 0;
LABEL_58:
  specialized Dictionary.update(other:allowDuplicateKeys:)(v9, 0);
  if (v4)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {

    return v84;
  }
}

uint64_t specialized Sequence<>.min()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Array<A>.avg()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v4 = *(a1 + 32 + 8 * v2++);
      v3 = v3 + v4;
    }

    while (v1 != v2);
    *&result = v3 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t specialized Array<A>.variance()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    v4 = 0.0;
    do
    {
      v5 = v3[v2++];
      v4 = v4 + v5;
    }

    while (v1 != v2);
    v6 = v4 / v1;
    v7 = 0.0;
    v8 = *(a1 + 16);
    do
    {
      v9 = *v3++;
      v7 = v7 + (v6 - v9) * (v6 - v9);
      --v8;
    }

    while (v8);
    *&result = v7 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void LatticePathFeatureExtractor.getTopLatticePathScoresFeatures(tokenConfidences:meanConfidences:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
    v3 = *(v2 + 16);

    v4 = static MLMultiArray.makeScalar(from:)(v3);
    if (v1)
    {
    }

    else
    {
      v7 = v4;
      v8 = static MLMultiArray.make1DSetOrSequence(from:)(v2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
      *(swift_initStackObject() + 16) = xmmword_266813E60;
      OUTLINED_FUNCTION_3_3();
      v9[4] = 0xD00000000000002BLL;
      v9[5] = v10;
      v9[6] = v7;
      v9[7] = 0xD00000000000002CLL;
      v9[8] = 0x8000000266818E70;
      v9[9] = v8;
      Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    lazy protocol witness table accessor for type CamError and conformance CamError();
    v5 = OUTLINED_FUNCTION_6_2();
    *v6 = 0xD000000000000014;
    v6[1] = 0x800000026681A080;
    OUTLINED_FUNCTION_2(v5, v6);
  }
}

void LatticePathFeatureExtractor.getTokenConfidences(from:for:)(uint64_t a1, void *a2)
{
  if (outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(a2, &selRef_interpretationIndices, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0))
  {

    v2 = specialized Zip2Sequence.Iterator.next()();
    if (v2)
    {
      v4 = v2;
      v5 = v3;
      static Int._conditionallyBridgeFromObjectiveC(_:result:)();

      lazy protocol witness table accessor for type CamError and conformance CamError();
      v6 = OUTLINED_FUNCTION_6_2();
      *v7 = 0xD000000000000022;
      v7[1] = 0x800000026681A020;
      OUTLINED_FUNCTION_2(v6, v7);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LatticePathFeatureExtractor.getTopLatticePathLeadingSilenceFeature(recognition:)(void *a1)
{
  result = outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(a1, &selRef_phrases, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
  if (!result)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = result;
  if (!specialized Array.count.getter(result))
  {
    goto LABEL_27;
  }

  v5 = OUTLINED_FUNCTION_8_1();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D5DD230](0, v4);
  }

  else
  {
    v7 = *(v4 + 32);
  }

  v8 = v7;

  v9 = outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(v8, &selRef_interpretations, &lazy cache variable for type metadata for SASInterpretation, 0x277D47710);
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  result = outlined bridged method (pb) of @objc SASRecognition.utterances.getter(a1);
  if (!result)
  {
    goto LABEL_38;
  }

  v11 = result;
  if (!specialized Array.count.getter(result))
  {
LABEL_24:

    goto LABEL_27;
  }

  v12 = OUTLINED_FUNCTION_8_1();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v12, v13, v11);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26D5DD230](0, v11);
  }

  else
  {
    v14 = *(v11 + 32);
  }

  v15 = v14;

  result = outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(v15, &selRef_interpretationIndices, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = result;
  if (!specialized Array.count.getter(result))
  {
    goto LABEL_24;
  }

  v17 = OUTLINED_FUNCTION_8_1();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v17, v18, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26D5DD230](0, v16);
  }

  else
  {
    v19 = *(v16 + 32);
  }

  v20 = v19;

  v21 = Int.init(truncating:)();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v21, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D5DD230](v21, v10);
  }

  else
  {
    v22 = *(v10 + 8 * v21 + 32);
  }

  result = outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(v22, &selRef_tokens, &lazy cache variable for type metadata for SASToken, 0x277D477A0);
  if (result)
  {
    v23 = result;

    if (specialized Array.count.getter(v23))
    {
      v24 = OUTLINED_FUNCTION_8_1();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v24, v25, v23);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D5DD230](0, v23);
      }

      else
      {
        v26 = *(v23 + 32);
      }

      v27 = v26;

      v28 = [v27 startTime];

      if (v28)
      {
        v29 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
        v30 = MEMORY[0x26D5DCF40](v28);
        v31 = static MLMultiArray.makeScalar(from:)(v30);
        if (v1)
        {
        }

        else
        {
          v34 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
          *(swift_initStackObject() + 16) = xmmword_266813E60;
          OUTLINED_FUNCTION_3_3();
          v35[4] = 0xD00000000000002CLL;
          v35[5] = v36;
          v35[6] = v34;
          v35[7] = 0xD00000000000001BLL;
          v35[8] = 0x8000000266818E20;
          v35[9] = v34;
          v37 = v34;
          v29 = Dictionary.init(dictionaryLiteral:)();
        }

        return v29;
      }

LABEL_28:
      v29 = 0x8000000266819FE0;
      lazy protocol witness table accessor for type CamError and conformance CamError();
      v32 = OUTLINED_FUNCTION_6_2();
      *v33 = 0xD000000000000038;
      v33[1] = 0x8000000266819FE0;
      OUTLINED_FUNCTION_2(v32, v33);
      return v29;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc SASUtterance.interpretationIndices.getter(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  type metadata accessor for MLMultiArray(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined bridged method (ob) of @objc SASInterpretation.tokens.getter(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for MLMultiArray(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

unint64_t lazy protocol witness table accessor for type CamError and conformance CamError()
{
  result = lazy protocol witness table cache variable for type CamError and conformance CamError;
  if (!lazy protocol witness table cache variable for type CamError and conformance CamError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamError and conformance CamError);
  }

  return result;
}

uint64_t type metadata accessor for MLMultiArray(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id static CamModelLogger.map(from:)(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for CamModelMetadata();
  v4 = OUTLINED_FUNCTION_0_2(v42);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v42 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  *(&v42 - v21) = a1;
  outlined init with copy of CamModelMetadata(a2, &v42 + *(v16 + 56) - v21);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v22, v20, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v23 = *v20;
  outlined init with take of CamModelMetadata(v20 + *(v16 + 56), v14);
  v24 = one-time initialization token for common;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.common);
  outlined init with copy of CamModelMetadata(v14, v12);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43 = v29;
    *v28 = 136315138;
    outlined init with copy of CamModelMetadata(v12, v9);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    outlined destroy of CamModelMetadata(v12);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v43);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_266790000, v26, v27, "Model metadata used for logging: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x26D5DDCD0](v29, -1, -1);
    MEMORY[0x26D5DDCD0](v28, -1, -1);
  }

  else
  {

    outlined destroy of CamModelMetadata(v12);
  }

  v34 = objc_allocWithZone(MEMORY[0x277D56C58]);
  v35 = [v34 init];
  if (!v35)
  {

LABEL_13:
    outlined destroy of CamModelMetadata(v14);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
    return v35;
  }

  v36 = _s7SiriCam20ModelLoggingProtocolPAAE19setAssetInformation13modelMetadata9namespaceSo08SISchemaG0CSgAA0bcJ0V_SStFZAA0bC6LoggerV_Tt1g5Tm(v14, 0xD000000000000013, 0x800000026681A0C0);
  result = [v35 setAsset_];
  v38 = *(v23 + 16);
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v38))
  {
    [v35 setPrediction_];
    v39 = *(v23 + 24);
    *&v39 = v39;
    [v35 setPredictionScore_];
    v40 = *(v23 + 32);
    *&v40 = v40;
    [v35 setPredictionThreshold_];
    v41 = *(v14 + 48);
    if (v41 != 2)
    {
      [v35 setIsShadowLog_];
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *_s7SiriCam20ModelLoggingProtocolPAAE19setAssetInformation13modelMetadata9namespaceSo08SISchemaG0CSgAA0bcJ0V_SStFZAA0bC6LoggerV_Tt1g5Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277D5A7A0]) init];
  v16 = v15;
  if (v15)
  {
    v37 = v14;
    v17 = v11;
    v18 = *a1;
    v19 = a1[1];
    v20 = v15;
    v21 = MEMORY[0x26D5DCC90](v18, v19);
    [v20 setAssetName_];

    v22 = v20;
    v23 = _s7SiriCam20ModelLoggingProtocolPAAE08generateC7Version5usingSo08SISchemaG0CSgAA0bC8MetadataV_tFZAA0bC6LoggerV_Tt0g5Tm(a1);
    [v22 setAssetVersion_];

    v24 = v22;
    v25 = MEMORY[0x26D5DCC90](a2, a3);
    [v24 setTrialNamespace_];

    v11 = v17;
    v14 = v37;
  }

  v26 = type metadata accessor for CamModelMetadata();
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1 + *(v26 + 28), v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v42 = Locale.identifier.getter();
    v43 = v27;
    v40 = 95;
    v41 = 0xE100000000000000;
    v38 = 45;
    v39 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v30 = v29;

    if (v16)
    {
      v31 = objc_opt_self();
      v32 = v16;
      v33 = MEMORY[0x26D5DCC90](v28, v30);

      v34 = [v31 convertLanguageCodeToSchemaLocale_];

      [v32 setAssetLocale_];
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      (*(v11 + 8))(v14, v10);
    }
  }

  return v16;
}

void *_s7SiriCam20ModelLoggingProtocolPAAE08generateC7Version5usingSo08SISchemaG0CSgAA0bC8MetadataV_tFZAA0bC6LoggerV_Tt0g5Tm(void *a1)
{
  v1 = a1[5];
  if (v1 == 1)
  {
    return 0;
  }

  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[2];
  v6 = [objc_allocWithZone(MEMORY[0x277D5AC98]) init];
  v2 = v6;
  if (v6)
  {
    [v6 setMajor_];
    [v2 setMinor_];
    [v2 setPatch_];
    v7 = v2;
    if (v1)
    {
      v1 = MEMORY[0x26D5DCC90](v3, v1);
    }

    [v2 setPrerelease_];
  }

  return v2;
}

uint64_t outlined init with copy of (CamLogOutput, CamModelMetadata)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AutoSendPersonalFeatureExtractor()
{
  result = type metadata singleton initialization cache for AutoSendPersonalFeatureExtractor;
  if (!type metadata singleton initialization cache for AutoSendPersonalFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AutoSendPersonalFeatureExtractor()
{
  result = type metadata accessor for AutoSendInputFeatureExtractor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PersonalContextFeatureExtractor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static AutoSendPersonalFeatureExtractor.extractedFeatures.getter()
{
  if (one-time initialization token for extractedFeatures != -1)
  {
    swift_once();
  }

  v2 = static PersonalContextFeatureExtractor.extractedFeatures;

  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for CRR_FEATURES);
  v0 = static AutoSendInputFeatureExtractor.extractedFeatures.getter();
  specialized Array.append<A>(contentsOf:)(v0);
  return v2;
}

uint64_t AutoSendPersonalFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam13AutoSendInputV04autodE0_SDySSSiG10crrSignalstMd, &_s7SiriCam13AutoSendInputV04autodE0_SDySSSiG10crrSignalstMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  outlined init with copy of AutoSendInput(a1, &v33[-v11]);
  *&v12[*(v9 + 56)] = a2;
  v13 = one-time initialization token for autoSend;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.autoSend);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_266790000, v15, v16, "Extracting Personal AutoSend features", v17, 2u);
    MEMORY[0x26D5DDCD0](v17, -1, -1);
  }

  type metadata accessor for MLMultiArray();
  v35 = Dictionary.init(dictionaryLiteral:)();
  v18 = v5;
  v19 = specialized FeatureExtracting.extract(from:)(v12);
  if (v4)
  {

    outlined destroy of (autoSendInput: AutoSendInput, crrSignals: [String : Int])(v12);
  }

  else
  {
    v20 = v19;
    v21 = specialized FeatureExtracting.extract(from:)(a2);
    v22 = *(v5 + *(type metadata accessor for AutoSendPersonalFeatureExtractor() + 20));
    v24 = specialized FeatureExtracting.extract(from:)();
    specialized Dictionary.update(other:allowDuplicateKeys:)(v20, 0);

    specialized Dictionary.update(other:allowDuplicateKeys:)(v21, 0);

    specialized Dictionary.update(other:allowDuplicateKeys:)(v24, 0);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      swift_beginAccess();

      v29 = Dictionary.Keys.description.getter();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v34);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_266790000, v25, v26, "Extracted Personal AutoSend features: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D5DDCD0](v28, -1, -1);
      MEMORY[0x26D5DDCD0](v27, -1, -1);
    }

    swift_beginAccess();
    v18 = v35;
    outlined destroy of (autoSendInput: AutoSendInput, crrSignals: [String : Int])(v12);
  }

  return v18;
}

uint64_t outlined init with copy of AutoSendInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutoSendPersonalHandlerProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AutoSendPersonalHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  outlined destroy of AutoSendPersonalFeatureExtractor(v0 + OBJC_IVAR____TtC7SiriCam23AutoSendPersonalHandler_autoSendPersonalFeatureExtractor);
  return v0;
}

uint64_t AutoSendPersonalHandler.__deallocating_deinit()
{
  AutoSendPersonalHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AutoSendPersonalHandler()
{
  result = type metadata singleton initialization cache for AutoSendPersonalHandler;
  if (!type metadata singleton initialization cache for AutoSendPersonalHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AutoSendPersonalHandler()
{
  result = type metadata accessor for AutoSendPersonalFeatureExtractor();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of AutoSendPersonalFeatureExtractor(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendPersonalFeatureExtractor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationHistoryFeatureExtractor.extractImpl(from:)(void *a1)
{
  v2 = *(v1 + 24);
  v4 = 0;
  if (v2)
  {
    v3 = *a1 == *(v1 + 16) && v2 == a1[1];
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000002668193F0;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t ConversationHistoryFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t type metadata accessor for MLFeatureValue()
{
  result = lazy cache variable for type metadata for MLFeatureValue;
  if (!lazy cache variable for type metadata for MLFeatureValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLFeatureValue);
  }

  return result;
}

uint64_t Array<A>.topTwo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) >= 2uLL)
  {
    v7 = *(type metadata accessor for RankedAction() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    outlined init with copy of RankedAction(v8, a2);
    v9 = type metadata accessor for TopTwo();
    outlined init with copy of RankedAction(v8 + *(v7 + 72), a2 + *(v9 + 20));
    v4 = a2;
    v5 = 0;
    v3 = v9;
  }

  else
  {
    v3 = type metadata accessor for TopTwo();
    v4 = a2;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
}

uint64_t outlined init with copy of RankedAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TopTwo()
{
  result = type metadata singleton initialization cache for TopTwo;
  if (!type metadata singleton initialization cache for TopTwo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Array<A>.nonTopTwo.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 3)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = specialized Array.subscript.getter(2uLL, v1, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
LABEL_3:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v4, v6, v8);
    v10 = v9;
LABEL_11:
    swift_unknownObjectRelease();
    return v10;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return v10;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SiriCam12RankedActionV_Tt1g5((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(type metadata accessor for RankedAction() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t type metadata completion function for TopTwo()
{
  result = type metadata accessor for RankedAction();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [String : MLFeatureValue].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t Dictionary<>.debugDescription.getter(uint64_t a1)
{
  v2 = 0xD00000000000001ALL;
  v16 = 0xD00000000000001ALL;
  v17 = 0x800000026681A240;

  v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(v3);

  specialized MutableCollection<>.sort(by:)(&v14);

  v4 = v14[2];
  if (!v4)
  {

    return v2;
  }

  v5 = v14 + 5;
  do
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v14 = 0;
    v15 = 0xE000000000000000;

    MEMORY[0x26D5DCD80](8237, 0xE200000000000000);
    MEMORY[0x26D5DCD80](v7, v6);
    MEMORY[0x26D5DCD80](8250, 0xE200000000000000);
    if (*(a1 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(a1 + 56) + 8 * v8);
        v12 = v11;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = 0;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14MLFeatureValueCSgMd, &_sSo14MLFeatureValueCSgMR);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x26D5DCD80](10, 0xE100000000000000);
    MEMORY[0x26D5DCD80](v14, v15);

    v5 += 2;
    --v4;
  }

  while (v4);

  return v16;
}

void *Dictionary<>.toFeatureDictionary()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo14MLFeatureValueCGMd, _ss18_DictionaryStorageCySSSo14MLFeatureValueCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v26 + 56) + 8 * v15);
      v20 = objc_opt_self();

      result = [v20 featureValueWithInt64_];
      *&v25[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      v21 = (v3[6] + 16 * v15);
      *v21 = v18;
      v21[1] = v17;
      *(v3[7] + 8 * v15) = result;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SiriCam12RankedActionV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS13flowHandlerId_10Foundation4UUIDV05parseJ0Si13affinityScoret_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS13flowHandlerId_10Foundation4UUIDV05parseF0Si13affinityScoretGMd, &_ss23_ContiguousArrayStorageCySS13flowHandlerId_10Foundation4UUIDV05parseF0Si13affinityScoretGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 40 * a3;
  v6 = result - a3;
  while (2)
  {
    v45 = a3;
    v37 = v6;
    v38 = v5;
    while (1)
    {
      outlined init with copy of SignalProviding(v5, v42);
      outlined init with copy of SignalProviding(v5 - 40, v39);
      v7 = v43;
      v8 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v9 = (*(v8 + 40))(v7, v8);
      if (!v10)
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      v14 = v40;
      v13 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v15 = (*(v13 + 40))(v14, v13);
      if (!v16)
      {
        goto LABEL_31;
      }

      v17 = v11 == v15 && v12 == v16;
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_17;
      }

      v18 = v43;
      v19 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v20 = ActionProtocol.actionRepresentation.getter(v18, v19);
      v22 = v21;
      v23 = v40;
      v24 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v25 = ActionProtocol.actionRepresentation.getter(v23, v24);
      v27 = v26;
      if (v22)
      {
        if (v26)
        {
          if (v20 == v25 && v22 == v26)
          {

LABEL_31:

            break;
          }

LABEL_17:
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          goto LABEL_25;
        }
      }

      if (one-time initialization token for ranker != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.ranker);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_266790000, v31, v32, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v33, 2u);
        MEMORY[0x26D5DDCD0](v33, -1, -1);
      }

      v29 = v27 == 0;
LABEL_25:

      __swift_destroy_boxed_opaque_existential_0(v39);
      result = __swift_destroy_boxed_opaque_existential_0(v42);
      if (v29)
      {
        if (!v4)
        {
          __break(1u);
          return result;
        }

        outlined init with take of ActionProtocol(v5, v42);
        v34 = *(v5 - 24);
        *v5 = *(v5 - 40);
        *(v5 + 16) = v34;
        *(v5 + 32) = *(v5 - 8);
        result = outlined init with take of ActionProtocol(v42, v5 - 40);
        v5 -= 40;
        if (!__CFADD__(v6++, 1))
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    __swift_destroy_boxed_opaque_existential_0(v39);
    result = __swift_destroy_boxed_opaque_existential_0(v42);
LABEL_33:
    a3 = v45 + 1;
    v5 = v38 + 40;
    v6 = v37 - 1;
    if (v45 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v92, *a1, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

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

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  v1 = *(a1 + 16);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t getEnumTagSinglePayload for MixingModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MixingModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AppLaunchCountFeatureExtractor.extractedFeatures.getter()
{
  if (one-time initialization token for APP_LAUNCH_COUNT != -1)
  {
    swift_once();
  }
}

uint64_t AppLaunchCountFeatureExtractor.extractAppLaunchCount(from:)(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = ActionProtocol.inferBundleId()();
  if (v4.value._object)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    type metadata accessor for AppLaunchCountSignal();
    v6 = MEMORY[0x26D5DC3E0]();
    v7 = *v5;
    v8 = SiriSignalsContainer.get(from:query:defaultVal:)(v6, v4.value._countAndFlagsBits, v4.value._object, 0);
    if (v2)
    {
    }

    else
    {
      v11 = v8;

      v12 = Dictionary<>.toFeatureDictionary()(v11);

      return v12;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v10 = 0xD000000000000022;
    *(v10 + 8) = 0x800000026681A260;
    *(v10 + 16) = 1;
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type CaarError and conformance CaarError()
{
  result = lazy protocol witness table cache variable for type CaarError and conformance CaarError;
  if (!lazy protocol witness table cache variable for type CaarError and conformance CaarError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaarError and conformance CaarError);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchCountFeatureExtractor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppLaunchCountFeatureExtractor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for modelOutputToAutoConfirmAction()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static AutoSendOutput.modelOutputToAutoConfirmAction = result;
  return result;
}

uint64_t AutoSendOutput.init(decision:score:threshold:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  if (one-time initialization token for modelOutputToAutoConfirmAction != -1)
  {
    swift_once();
  }

  v8 = static AutoSendOutput.modelOutputToAutoConfirmAction;
  if (*(static AutoSendOutput.modelOutputToAutoConfirmAction + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
    *(v4 + 57) = v11;
    *(v4 + 56) = v11;
    return CamLogOutput.init(prediction:score:threshold:)(a1, a2, a3);
  }

  else
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x26D5DCD80](0xD000000000000044, 0x800000026681A2D0);
    v20[5] = a1;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v13);

    if (one-time initialization token for autoSend != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.autoSend);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v20);
      _os_log_impl(&dword_266790000, v15, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5DDCD0](v18, -1, -1);
      MEMORY[0x26D5DDCD0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 16) = 5;
    swift_willThrow();
    type metadata accessor for AutoSendOutput();
    return swift_deallocPartialClassInstance();
  }
}

uint64_t AutoSendOutput.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 58, 7);
}

unint64_t lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError()
{
  result = lazy protocol witness table cache variable for type AutoConfirmError and conformance AutoConfirmError;
  if (!lazy protocol witness table cache variable for type AutoConfirmError and conformance AutoConfirmError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoConfirmError and conformance AutoConfirmError);
  }

  return result;
}

uint64_t type metadata accessor for AutoSendInput()
{
  result = type metadata singleton initialization cache for AutoSendInput;
  if (!type metadata singleton initialization cache for AutoSendInput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for AutoSendInput()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for AFSpeechPackage();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

unint64_t type metadata accessor for AFSpeechPackage()
{
  result = lazy cache variable for type metadata for AFSpeechPackage;
  if (!lazy cache variable for type metadata for AFSpeechPackage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFSpeechPackage);
  }

  return result;
}

void AutoSendOutputProvider.toAutoSendOutput(from:)(void *a1)
{
  v2 = MEMORY[0x26D5DCC90](0xD00000000000001ALL, 0x800000026681A320);
  v3 = [a1 featureValueForName_];

  if (v3 && (v4 = [v3 multiArrayValue], v3, v4))
  {
    v5 = MLMultiArray.toDoubleScalar()();

    if (v6)
    {
      return;
    }

    v7 = "rom output feature name : ";
    v8 = MEMORY[0x26D5DCC90](0xD00000000000001ELL, 0x800000026681A380);
    v9 = [a1 objectForKeyedSubscript_];

    if (v9 && (v10 = [v9 multiArrayValue], v9, v10))
    {
      v11 = MLMultiArray.toDoubleScalar()();

      if (v12)
      {
        return;
      }

      v7 = "ld from output feature: ";
      v13 = MEMORY[0x26D5DCC90](0xD00000000000001DLL, 0x800000026681A3E0);
      v14 = [a1 featureValueForName_];

      if (v14)
      {
        v15 = [v14 multiArrayValue];

        if (v15)
        {
          v16 = MLMultiArray.toIntScalar()();

          if (!v17)
          {
            type metadata accessor for AutoSendOutput();
            swift_allocObject();
            AutoSendOutput.init(decision:score:threshold:)(v16, v5, v11);
          }

          return;
        }
      }

      OUTLINED_FUNCTION_0_3();
      _StringGuts.grow(_:)(63);
      MEMORY[0x26D5DCD80](0xD00000000000003DLL, 0x800000026681A400);
      v19 = 0xD00000000000001DLL;
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      _StringGuts.grow(_:)(58);
      MEMORY[0x26D5DCD80](0xD000000000000038, 0x800000026681A3A0);
      v19 = 0xD00000000000001ELL;
    }

    v18 = v7 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(60);
    MEMORY[0x26D5DCD80](0xD00000000000003ALL, 0x800000026681A340);
    v18 = 0x800000026681A320;
    v19 = 0xD00000000000001ALL;
  }

  MEMORY[0x26D5DCD80](v19, v18);
  v20 = v28[0];
  v21 = v28[1];
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.autoSend);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v28);
    _os_log_impl(&dword_266790000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26D5DDCD0](v26, -1, -1);
    MEMORY[0x26D5DDCD0](v25, -1, -1);
  }

  lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError();
  swift_allocError();
  *v27 = v20;
  *(v27 + 8) = v21;
  *(v27 + 16) = 5;
  swift_willThrow();
}

uint64_t RankerContext.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RankerContext() + 20);
  v4 = type metadata accessor for ResponseMode();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RankerContext()
{
  result = type metadata singleton initialization cache for RankerContext;
  if (!type metadata singleton initialization cache for RankerContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RankerContext.previousConversationHandlerId.getter()
{
  v1 = (v0 + *(type metadata accessor for RankerContext() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RankerContext.maxNLProba.getter()
{
  v1 = (v0 + *(type metadata accessor for RankerContext() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t RankerContext.init(rrCandidates:responseMode:previousConversationHandlerId:maxNLProba:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for RankerContext();
  v14 = v13[5];
  v15 = type metadata accessor for ResponseMode();
  result = (*(*(v15 - 8) + 32))(&a7[v14], a2, v15);
  v17 = &a7[v13[6]];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &a7[v13[7]];
  *v18 = a5;
  v18[8] = a6 & 1;
  return result;
}

uint64_t RankerContext.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(100);
  MEMORY[0x26D5DCD80](0xD00000000000001CLL, 0x800000026681A440);
  v2 = *v0;
  v3 = type metadata accessor for RRCandidate();
  v4 = MEMORY[0x26D5DCE80](v2, v3);
  MEMORY[0x26D5DCD80](v4);

  MEMORY[0x26D5DCD80](0xD000000000000010, 0x800000026681A460);
  v5 = type metadata accessor for RankerContext();
  v6 = v1 + v5[5];
  v7 = ResponseMode.aceValue.getter();
  MEMORY[0x26D5DCD80](v7);

  MEMORY[0x26D5DCD80](0xD000000000000021, 0x800000026681A480);
  v8 = (v1 + v5[6]);
  v13 = *v8;
  v15 = v8[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v9);

  MEMORY[0x26D5DCD80](0x504C4E78616D202CLL, 0xEE00203A61626F72);
  v10 = v1 + v5[7];
  v14 = *v10;
  LOBYTE(v15) = v10[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v11);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  return 0;
}

void type metadata completion function for RankerContext()
{
  type metadata accessor for [RRCandidate]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ResponseMode();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [RRCandidate]()
{
  if (!lazy cache variable for type metadata for [RRCandidate])
  {
    type metadata accessor for RRCandidate();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [RRCandidate]);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CaarError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for CaarError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5DD300);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t static MLMultiArray.make1DSetOrSequence(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_266813FC0;
      *(v5 + 32) = v4;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 8 * v7 + 32) = v5;
      ++v3;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  v8 = OUTLINED_FUNCTION_18_1();
  v9 = static MLMultiArray.make1DSetOrSequence(from:)(v8);

  return v9;
}

{
  v3 = *(a1 + 16);
  if (!v3)
  {
    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    OUTLINED_FUNCTION_6_2();
    *v16 = 0xD000000000000037;
    *(v16 + 8) = 0x800000026681A4E0;
    *(v16 + 16) = 1;
    swift_willThrow();
    return v1;
  }

  v4 = a1 + 32;
  v5 = *(*(a1 + 32) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 1;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v7 = specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v1 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v8 = @nonobjc MLMultiArray.init(shape:dataType:)(v7, 65600);
  if (v2)
  {
    return v1;
  }

  v1 = v8;
  v9 = 0;
  v17 = v3;
LABEL_4:
  if (v9 == v3)
  {
    return v1;
  }

  v10 = *(v4 + 8 * v9);
  v11 = *(v10 + 16);

  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      v3 = v17;
      ++v9;
      goto LABEL_4;
    }

    if (i >= *(v10 + 16))
    {
      break;
    }

    v14 = *(v10 + 8 * i + 32);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_266813C70;
    *(v15 + 32) = 0;
    *(v15 + 40) = v9;
    *(v15 + 48) = i;
    specialized MLMultiArray.safeAssign<A>(_:at:)(v15, v14);
  }

  __break(1u);
  return result;
}

uint64_t static MLMultiArray.makeScalar(from:)(double a1)
{
  v3 = specialized _arrayForceCast<A, B>(_:)(&outlined read-only object #0 of static MLMultiArray.makeScalar(from:));
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  @nonobjc MLMultiArray.init(shape:dataType:)(v3, 65600);
  if (!v1)
  {
    specialized MLMultiArray.safeAssign<A>(_:at:)(&outlined read-only object #1 of static MLMultiArray.makeScalar(from:), a1);
  }

  return OUTLINED_FUNCTION_18_1();
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.toDoubleScalar()()
{
  if ([v0 count] == 1)
  {
    v1 = [v0 objectAtIndexedSubscript_];
    v2 = MEMORY[0x26D5DCF40]();

    return v2;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_1_1();
    v4 = [v0 shape];
    v5 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_8_0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x26D5DCE80](v6, v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_21();

    OUTLINED_FUNCTION_7_0();
    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_6_3(v7, v8);
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.toIntScalar()()
{
  if ([v0 count] == 1)
  {
    v1 = [v0 objectAtIndexedSubscript_];
    v2 = Int.init(truncating:)();

    return v2;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_1_1();
    v4 = [v0 shape];
    v5 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_8_0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x26D5DCE80](v6, v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_21();

    OUTLINED_FUNCTION_7_0();
    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v7 = OUTLINED_FUNCTION_6_2();
    return OUTLINED_FUNCTION_6_3(v7, v8);
  }
}

uint64_t MLMultiArrayDataType.description.getter(uint64_t a1)
{
  v1 = 0x656C62756F64;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 65552)
  {
    v2 = 0x363174616F6C66;
  }

  if (a1 != 65600)
  {
    v1 = v2;
  }

  if (a1 == 65568)
  {
    v1 = 0x323374616F6C66;
  }

  if (a1 == 131104)
  {
    return 0x3233746E69;
  }

  else
  {
    return v1;
  }
}

void specialized MLMultiArray.safeAssign<A>(_:at:)(uint64_t a1, double a2)
{
  MLMultiArray.indexExists(_:)(a1);
  if (!v3)
  {
    if (v6)
    {
      v7 = MEMORY[0x26D5DCF50](a2);
      specialized _arrayForceCast<A, B>(_:)(a1);
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setObject:v7 forKeyedSubscript:isa];
    }

    else
    {
      _StringGuts.grow(_:)(38);

      v9 = MEMORY[0x26D5DCE80](a1, MEMORY[0x277D83B88]);
      MEMORY[0x26D5DCD80](v9);

      MEMORY[0x26D5DCD80](0xD00000000000001CLL, 0x800000026681A520);
      v10 = [v2 shape];
      v11 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = MEMORY[0x26D5DCE80](v12, v11);
      v15 = v14;

      MEMORY[0x26D5DCD80](v13, v15);

      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v16 = 0x207865646E49;
      *(v16 + 8) = 0xE600000000000000;
      *(v16 + 16) = 2;
      swift_willThrow();
    }
  }
}

void specialized MLMultiArray.safeAssign<A>(_:at:)(uint64_t a1, uint64_t a2)
{
  MLMultiArray.indexExists(_:)(a2);
  if (!v3)
  {
    if (v5)
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      specialized _arrayForceCast<A, B>(_:)(a2);
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v7 = Array._bridgeToObjectiveC()().super.isa;

      [v2 setObject:isa forKeyedSubscript:v7];
    }

    else
    {
      _StringGuts.grow(_:)(38);

      v8 = MEMORY[0x26D5DCE80](a2, MEMORY[0x277D83B88]);
      MEMORY[0x26D5DCD80](v8);

      MEMORY[0x26D5DCD80](0xD00000000000001CLL, 0x800000026681A520);
      v9 = [v2 shape];
      v10 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = MEMORY[0x26D5DCE80](v11, v10);
      v14 = v13;

      MEMORY[0x26D5DCD80](v12, v14);

      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v15 = 0x207865646E49;
      *(v15 + 8) = 0xE600000000000000;
      *(v15 + 16) = 2;
      swift_willThrow();
    }
  }
}

void MLMultiArray.indexExists(_:)(uint64_t a1)
{
  v3 = [v1 shape];
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter(v4);
  v6 = 0;
  v7 = a1;
  v8 = a1 + 32;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_12:

      return;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v9 = MEMORY[0x26D5DD230](v6, v4);
LABEL_6:
    v10 = v9;
    v11 = Int.init(exactly:)();
    if (v12)
    {

      _StringGuts.grow(_:)(39);

      v15 = [v10 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      MEMORY[0x26D5DCD80](v16, v18);

      MEMORY[0x26D5DCD80](0x746E69206F7420, 0xE700000000000000);
      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v19 = 0xD00000000000001ELL;
      *(v19 + 8) = 0x800000026681A540;
      *(v19 + 16) = 0;
      swift_willThrow();

      return;
    }

    if (v6 >= *(v7 + 16))
    {
      goto LABEL_15;
    }

    v13 = v11;
    v14 = *(v8 + 8 * v6);

    if ((v14 & 0x8000000000000000) == 0)
    {
      ++v6;
      if (v14 < v13)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v4 + 8 * v6 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      Int._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v7 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of SignalProviding(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of CaarHandler(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = type metadata accessor for RankedAction();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v21;
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      outlined init with copy of RankedAction(v12, v9);
      v21 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
        v11 = v21;
      }

      v19 = v2;
      v20 = &protocol witness table for RankedAction;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      outlined init with copy of RankedAction(v9, boxed_opaque_existential_1);
      *(v11 + 16) = v15 + 1;
      outlined init with take of CaarHandler(&v18, v11 + 40 * v15 + 32);
      outlined destroy of RankedAction(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

id static MLMultiArray.makeScalar(from:)(uint64_t a1)
{
  v3 = specialized _arrayForceCast<A, B>(_:)(&outlined read-only object #0 of static MLMultiArray.makeScalar(from:));
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = @nonobjc MLMultiArray.init(shape:dataType:)(v3, 131104);
  if (!v1)
  {
    specialized MLMultiArray.safeAssign<A>(_:at:)(a1, &outlined read-only object #1 of static MLMultiArray.makeScalar(from:));
  }

  return v5;
}