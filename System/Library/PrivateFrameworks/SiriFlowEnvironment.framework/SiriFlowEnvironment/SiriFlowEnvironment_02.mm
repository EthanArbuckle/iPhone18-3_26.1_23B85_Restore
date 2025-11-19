void HomeKitProvider.$homeKitHelper.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    HomeKitProvider.$homeKitHelper.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    HomeKitProvider.$homeKitHelper.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t HomeKitProvider.__allocating_init(storage:)()
{
  v0 = swift_allocObject();
  HomeKitProvider.init(storage:)();
  return v0;
}

uint64_t HomeKitProvider.init(storage:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + 16) = 0;
  v10 = [objc_allocWithZone(HomeKitHelper) init];
  v37[3] = type metadata accessor for HomeKitHelper();
  v37[4] = &protocol witness table for HomeKitHelper;
  v37[0] = v10;
  outlined init with copy of SiriLocationProvider(v37, v36);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = MockablePublished.init(wrappedValue:)();
  __swift_destroy_boxed_opaque_existential_1(v37);
  *(v1 + 24) = v14;
  *(v1 + 32) = 0;
  *(v1 + 34) = 0;
  static Logger.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DD354000, v15, v16, "HomeKitProvider init", v17, 2u);
    MEMORY[0x1E12AE9C0](v17, -1, -1);
  }

  (*(v5 + 8))(v9, v2);
  OUTLINED_FUNCTION_6_4();
  v19 = *(v18 + 144);
  v19(v37);
  OUTLINED_FUNCTION_5_3();
  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_2_4();
  *(v1 + 32) = v23(v22) & 1;
  v24 = __swift_destroy_boxed_opaque_existential_1(v37);
  (v19)(v37, v24);
  OUTLINED_FUNCTION_5_3();
  v26 = *(v25 + 16);
  v27 = OUTLINED_FUNCTION_2_4();
  *(v1 + 33) = v28(v27) & 1;
  v29 = __swift_destroy_boxed_opaque_existential_1(v37);
  (v19)(v37, v29);
  OUTLINED_FUNCTION_5_3();
  v31 = *(v30 + 24);
  v32 = OUTLINED_FUNCTION_2_4();
  v34 = v33(v32);

  *(v1 + 34) = v34 & 1;
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v1;
}

unint64_t type metadata accessor for HomeKitHelper()
{
  result = lazy cache variable for type metadata for HomeKitHelper;
  if (!lazy cache variable for type metadata for HomeKitHelper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HomeKitHelper);
  }

  return result;
}

Swift::Bool __swiftcall HomeKitProvider.areHomesConfigured(refresh:)(Swift::Bool refresh)
{
  if (refresh)
  {
    OUTLINED_FUNCTION_6_4();
    (*(v2 + 144))(v8);
    v3 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = *(v3 + 8);
    v5 = OUTLINED_FUNCTION_3_5();
    *(v1 + 32) = v6(v5) & 1;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return *(v1 + 32);
}

Swift::Bool __swiftcall HomeKitProvider.areAnyAccessoriesConfigured(refresh:)(Swift::Bool refresh)
{
  if (refresh)
  {
    OUTLINED_FUNCTION_6_4();
    (*(v2 + 144))(v8);
    v3 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = *(v3 + 16);
    v5 = OUTLINED_FUNCTION_3_5();
    *(v1 + 33) = v6(v5) & 1;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return *(v1 + 33);
}

Swift::Bool __swiftcall HomeKitProvider.areAnySpeakersConfigured(refresh:)(Swift::Bool refresh)
{
  if (refresh)
  {
    OUTLINED_FUNCTION_6_4();
    (*(v2 + 144))(v8);
    v3 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = *(v3 + 24);
    v5 = OUTLINED_FUNCTION_3_5();
    *(v1 + 34) = v6(v5) & 1;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return *(v1 + 34);
}

uint64_t HomeKitProvider.debugInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD3855C0;
  OUTLINED_FUNCTION_8_3();
  *(v2 + 32) = 0xD000000000000035;
  *(v2 + 40) = v3;
  _StringGuts.grow(_:)(22);

  OUTLINED_FUNCTION_8_3();
  v15 = v4;
  if (v0[32])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[32])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v5, v6);

  *(v1 + 48) = 0xD000000000000014;
  *(v1 + 56) = v15;
  _StringGuts.grow(_:)(31);

  OUTLINED_FUNCTION_8_3();
  v16 = v7;
  if (v0[33])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v0[33])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v8, v9);

  *(v1 + 64) = 0xD00000000000001DLL;
  *(v1 + 72) = v16;
  _StringGuts.grow(_:)(28);

  OUTLINED_FUNCTION_8_3();
  v17 = v10;
  if (v0[34])
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v0[34])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v11, v12);

  *(v1 + 80) = 0xD00000000000001ALL;
  *(v1 + 88) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v13 = BidirectionalCollection<>.joined(separator:)();

  return v13;
}

uint64_t HomeKitProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t HomeKitProvider.__deallocating_deinit()
{
  HomeKitProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance HomeKitProvider(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 136))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance HomeKitProvider;
}

void protocol witness for MockableEnvironmentProvider.mock.modify in conformance HomeKitProvider(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for MockableEnvironmentProvider.install(_:) in conformance HomeKitProvider(uint64_t a1)
{
  v2 = type metadata accessor for HomeKitProvider();

  return MEMORY[0x1EEE412A0](a1, v2);
}

uint64_t protocol witness for static MockableEnvironmentProvider.adjustMock(_:) in conformance HomeKitProvider()
{
  type metadata accessor for HomeKitProvider();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HomeKitProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HomeKitProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HomeKitProvider and conformance HomeKitProvider(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(unint64_t *a1)
{

  return lazy protocol witness table accessor for type HomeKitProvider and conformance HomeKitProvider(a1);
}

uint64_t TapToRadarManager.init()()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v0[7] = 0xD000000000000014;
  v0[8] = 0x80000001DD387D20;
  v0[9] = 0x7274745F69726973;
  v0[10] = 0xE800000000000000;
  v0[11] = 0x726F727265;
  v0[12] = 0xE500000000000000;
  v0[13] = 40;
  v0[14] = swift_slowAlloc();
  result = GetSystemBuildVersionString();
  if (result)
  {
    v0[15] = String.init(cString:)();
    v0[16] = v2;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v74 = v26;
  v78 = v27;
  v75 = v28;
  v30 = v29;
  v77 = v31;
  v72 = v32;
  v76 = v33;
  v71 = v34;
  v73 = *v25;
  v82 = type metadata accessor for DispatchWorkItemFlags();
  v35 = OUTLINED_FUNCTION_0(v82);
  v81 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v41 = v40 - v39;
  v80 = type metadata accessor for DispatchQoS();
  v42 = OUTLINED_FUNCTION_0(v80);
  v79 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_0();
  v48 = v47 - v46;
  v49 = type metadata accessor for Logger();
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_7_0();
  v57 = v56 - v55;
  v58 = v30[1];
  v85 = *v30;
  v86 = v58;
  v87 = *(v30 + 4);
  v59 = a22[1];
  v88 = *a22;
  v89 = v59;
  v90 = *(a22 + 4);
  static Logger.logger.getter();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_13_0();
    *v62 = 0;
    _os_log_impl(&dword_1DD354000, v60, v61, "TapToRadarManager#createProblem, attempting to create problem...", v62, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v52 + 8))(v57, v49);
  if (one-time initialization token for runQueue != -1)
  {
    OUTLINED_FUNCTION_6_5();
  }

  v63 = swift_allocObject();
  *(v63 + 16) = v25;
  *(v63 + 24) = v71;
  *(v63 + 32) = v76;
  *(v63 + 40) = v72;
  *(v63 + 48) = v77;
  *(v63 + 56) = a23;
  *(v63 + 64) = a24;
  *(v63 + 72) = v74;
  *(v63 + 80) = a21;
  v64 = v86;
  *(v63 + 88) = v85;
  *(v63 + 104) = v64;
  *(v63 + 120) = v87;
  *(v63 + 128) = v75;
  *(v63 + 136) = v78;
  v65 = v89;
  v66 = v90;
  *(v63 + 144) = v88;
  *(v63 + 160) = v65;
  *(v63 + 176) = v66;
  *(v63 + 184) = v73;
  v84[4] = partial apply for closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:);
  v84[5] = v63;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 1107296256;
  OUTLINED_FUNCTION_4_4();
  v84[2] = v67;
  v84[3] = &block_descriptor;
  v68 = _Block_copy(v84);

  outlined init with copy of TTRComponentInfo(&v85, v83);

  outlined init with copy of RadarFilingExtras?(&v88, v83);
  static DispatchQoS.unspecified.getter();
  v83[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_5();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v48, v41, v68);
  _Block_release(v68);
  (*(v81 + 8))(v41, v82);
  (*(v79 + 8))(v48, v80);

  OUTLINED_FUNCTION_170();
}

void *TapToRadarManager.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[16];

  return v0;
}

uint64_t TapToRadarManager.requestID.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.requestID.setter()
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_19_1();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t TapToRadarManager.ttrRequestManager.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 32);
}

uint64_t TapToRadarManager.ttrRequestManager.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t TapToRadarManager.requestText.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.requestText.setter()
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_19_1();
  v3 = *(v1 + 48);
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

Swift::Void __swiftcall TapToRadarManager.populateSiriRequestText()()
{
  OUTLINED_FUNCTION_171();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  v9 = v8 - v7;
  v22 = type metadata accessor for DispatchQoS();
  v10 = OUTLINED_FUNCTION_0(v22);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v17 = v16 - v15;
  if (one-time initialization token for runQueue != -1)
  {
    OUTLINED_FUNCTION_6_5();
  }

  v23[4] = partial apply for closure #1 in TapToRadarManager.populateSiriRequestText();
  v23[5] = v0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_4_4();
  v23[2] = v18;
  v23[3] = &block_descriptor_4;
  v19 = _Block_copy(v23);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_5();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v17, v9, v19);
  _Block_release(v19);
  (*(v4 + 8))(v9, v1);
  (*(v12 + 8))(v17, v22);

  OUTLINED_FUNCTION_170();
}

Swift::OpaquePointer_optional __swiftcall TapToRadarManager.getDefaultsContents(userDefaultSuiteName:)(Swift::String userDefaultSuiteName)
{
  v2 = v1;
  object = userDefaultSuiteName._object;
  countAndFlagsBits = userDefaultSuiteName._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v5 = @nonobjc NSUserDefaults.init(suiteName:)(countAndFlagsBits, object);
  if (!v5)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(&v13, &_sypSgMd, &_sypSgMR);
    v10 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = MEMORY[0x1E12ADF20](*(v2 + 72), *(v2 + 80));
  v8 = [v6 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDyS2SGGMd, &_sSDySSSDyS2SGGMR);
  if (swift_dynamicCast())
  {
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  result.value._rawValue = v10;
  result.is_nil = v9;
  return result;
}

Swift::Void __swiftcall TapToRadarManager.writeDefaultsContents(contents:userDefaultSuiteName:)(Swift::OpaquePointer contents, Swift::String userDefaultSuiteName)
{
  v3 = v2;
  object = userDefaultSuiteName._object;
  countAndFlagsBits = userDefaultSuiteName._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v6 = @nonobjc NSUserDefaults.init(suiteName:)(countAndFlagsBits, object);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v9 = MEMORY[0x1E12ADF20](*(v3 + 72), *(v3 + 80));
    [v7 setValue:isa forKey:v9];
  }
}

void TapToRadarManager.setupLaunchTTR(createDraftContainer:title:completion:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v39 = *v0;
  v40 = v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_0(v6);
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchQoS();
  v15 = OUTLINED_FUNCTION_0(v14);
  v41 = v16;
  v42 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for Logger();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_0();
  v30 = v29 - v28;
  memcpy(v46, v4, 0x70uLL);
  static Logger.logger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_13_0();
    *v33 = 0;
    _os_log_impl(&dword_1DD354000, v31, v32, "TapToRadarManager#setupLaunchTTR", v33, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v25 + 8))(v30, v22);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v34 = static OS_dispatch_queue.main.getter();
  v35 = swift_allocObject();
  memcpy(v35 + 2, v46, 0x70uLL);
  v35[16] = v40;
  v35[17] = v2;
  v35[18] = v39;
  v45[4] = partial apply for closure #1 in TapToRadarManager.setupLaunchTTR(createDraftContainer:title:completion:);
  v45[5] = v35;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 1107296256;
  v45[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v45[3] = &block_descriptor_10;
  v36 = _Block_copy(v45);
  outlined init with copy of TapToRadarManager.CreateDraftContainer(v46, &v44);

  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_5();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v21, v13, v36);
  _Block_release(v36);

  (*(v43 + 8))(v13, v6);
  (*(v41 + 8))(v21, v42);
  OUTLINED_FUNCTION_170();
}

Swift::Bool __swiftcall TapToRadarManager.hasFiledThisIssue(errStatus:userDefaultSuiteName:)(Swift::String errStatus, Swift::String userDefaultSuiteName)
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_8_4();
  v8 = (*(v5 + 248))(v6, v7);
  if (v8 && (v9 = specialized Dictionary.subscript.getter(*(v3 + 120), *(v3 + 128), v8), , v9))
  {
    v10 = 0;
    v11 = *(v9 + 64);
    v12 = *(v9 + 32);
    OUTLINED_FUNCTION_9_3();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    while (v16)
    {
LABEL_9:
      v20 = (*(v9 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v16)))));
      if (*v20 != v4 || v20[1] != v2)
      {
        v16 &= v16 - 1;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (!result)
        {
          continue;
        }
      }

      v22 = 1;
LABEL_17:

      return v22;
    }

    while (1)
    {
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19 >= v18)
      {
        v22 = 0;
        goto LABEL_17;
      }

      v16 = *(v9 + 64 + 8 * v19);
      ++v10;
      if (v16)
      {
        v10 = v19;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

Swift::String __swiftcall TapToRadarManager.getRequestID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v12 - v2);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_5_4();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v4, v5);
  dispatch thunk of SiriEnvironment.subscript.getter();

  CurrentRequest.flowTaskMetadata.getter();

  v6 = type metadata accessor for FlowTaskMetadata();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6))
  {
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v3, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  }

  else
  {
    v7 = *v3;
    v8 = v3[1];

    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v3, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
  v8 = 0xE000000000000000;
LABEL_5:
  v9 = v7;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t TapToRadarManager.writeDefaults(errStatus:userDefaultSuiteName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v31 = a3;
  v32 = a4;
  v9 = @nonobjc NSUserDefaults.init(suiteName:)(a3, a4);
  if (!v9)
  {
    v35 = 0u;
    v36 = 0u;
LABEL_9:
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(&v35, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = MEMORY[0x1E12ADF20](v5[9], v5[10]);
  v12 = [v10 objectForKey_];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDyS2SGGMd, &_sSDySSSDyS2SGGMR);
  if (swift_dynamicCast())
  {
    v13 = v33;
    goto LABEL_11;
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v13 = Dictionary.init(dictionaryLiteral:)();
LABEL_11:
  v14 = v5[15];
  v15 = v5[16];
  v16 = specialized Dictionary.subscript.getter(v14, v15, v13);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = Dictionary.init(dictionaryLiteral:)();
  }

  v18 = *(v17 + 16);

  v19 = v5[11];
  v20 = v5[12];
  *&v35 = v18 + 1;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v22;
  *&v35 = v19;
  *(&v35 + 1) = v20;

  MEMORY[0x1E12ADF70](v21, v23);

  v24 = v35;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a2, v24, *(&v24 + 1), isUniquelyReferenced_nonNull_native);

  v26 = v35;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = v13;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v14, v15, v27);
  (*(*v5 + 256))(v35, v31, v32);
}

uint64_t TapToRadarManager.isRadarValid(radarComponentInfo:title:description:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = a1[1];
  v18 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v17) & 0xF;
  }

  if (v18 && ((v19 = a1[3], (v19 & 0x2000000000000000) != 0) ? (v20 = HIBYTE(v19) & 0xF) : (v20 = a1[2] & 0xFFFFFFFFFFFFLL), v20))
  {
    if (a3)
    {
      v21 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v21 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        return 1;
      }
    }

    static Logger.logger.getter();
    v23 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v26))
    {
      v27 = OUTLINED_FUNCTION_13_0();
      *v27 = 0;
      _os_log_impl(&dword_1DD354000, v23, v26, "TapToRadarManager#isRadarValid, no radar title specified", v27, 2u);
      goto LABEL_18;
    }
  }

  else
  {
    static Logger.logger.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_13_0();
      *v25 = 0;
      _os_log_impl(&dword_1DD354000, v23, v24, "TapToRadarManager#isRadarValid, either radar component ID or component name/version need to be specified", v25, 2u);
      v14 = v16;
LABEL_18:
      OUTLINED_FUNCTION_9_2();
      goto LABEL_19;
    }

    v14 = v16;
  }

LABEL_19:

  (*(v9 + 8))(v14, v6);
  return 0;
}

uint64_t TapToRadarManager.shouldFileTTRWithRequestID()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = *(v0 + 152);
  v1();

  OUTLINED_FUNCTION_21_1();
  if (!v3)
  {
    OUTLINED_FUNCTION_8_4();
    (*(v4 + 280))();
    OUTLINED_FUNCTION_8_4();
    v2 = (*(v5 + 160))();
  }

  (v1)(v2);

  OUTLINED_FUNCTION_21_1();
  if (!v6)
  {
    return 1;
  }

  v7 = (v1)();
  v9 = v8;
  OUTLINED_FUNCTION_8_4();
  v11 = (*(v10 + 176))();
  LODWORD(v7) = specialized Dictionary.subscript.getter(v7, v9, v11);

  if (v7 != 2)
  {
    return 0;
  }

  v13 = (v1)(v12);
  v15 = v14;
  OUTLINED_FUNCTION_8_4();
  v17 = (*(v16 + 192))(v25);
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v19;
  v22 = 1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v13, v15, isUniquelyReferenced_nonNull_native);
  *v19 = v24;

  v17(v25, 0);
  return v22;
}

void TapToRadarManager.updateTTRForRequestID(ttrLaunch:)(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8_4();
  v41 = *(v4 + 152);
  v5 = v41();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (a1 & 1) != 0)
  {
    v9 = (*(*v2 + 216))(v43);
    String.removeAll(keepingCapacity:)(0);
    v10 = v9(v43, 0);
    v11 = (*(*v2 + 176))(v10);
    v12 = 0;
    v13 = *(v11 + 64);
    v14 = *(v11 + 32);
    OUTLINED_FUNCTION_9_3();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    while (v17)
    {
LABEL_11:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = (*(v11 + 48) + ((v12 << 10) | (16 * v21)));
      v23 = *v22;
      v24 = v22[1];

      if (v23 == (v41)(v25) && v24 == v26)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
        }

        else
        {
          v40 = (*(*v2 + 192))(v43);
          v30 = v29;
          v31 = *v29;
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
          LOBYTE(v31) = v33;

          if (v31)
          {
            v34 = *v30;
            isUnique = swift_isUniquelyReferenced_nonNull_native();
            v42 = *v30;
            v35 = *v30;
            *v30 = 0x8000000000000000;
            v36 = *(v35 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v36);
            v37 = *(*(v42 + 48) + 16 * v32 + 8);

            _NativeDictionary._delete(at:)();
            v38 = *v30;
            *v30 = v42;
          }

          v40(v43, 0);
        }
      }
    }

    while (1)
    {
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20 >= v19)
      {

        return;
      }

      v17 = *(v11 + 64 + 8 * v20);
      ++v12;
      if (v17)
      {
        v12 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t TapToRadarManager.generateRequestInfoHeader(providedDescription:)(uint64_t a1, unint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    _StringGuts.grow(_:)(24);

    MEMORY[0x1E12ADF70](0xD000000000000016, 0x80000001DD387E30);
    return a1;
  }

  return v2;
}

void TapToRadarManager.createSiriRequestDescription(providedDescription:)()
{
  OUTLINED_FUNCTION_171();
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_0(v1);
  v32 = v3;
  v33 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  v8 = v7 - v6;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v30 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v10 = v9;

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v11 = dispatch thunk of CurrentDevice.deviceRegionCode.getter();
  v13 = v12;

  v14 = OUTLINED_FUNCTION_3_6();
  v16 = TapToRadarManager.generateRequestInfoHeader(providedDescription:)(v14, v15);
  v18 = v17;

  v35 = v16;
  v36 = v18;
  v20 = *(*v0 + 200);
  v20(v19);

  OUTLINED_FUNCTION_20_1();
  if (v21)
  {
    _StringGuts.grow(_:)(16);

    strcpy(&v34, "\n\tUtterance:\t\t");
    HIBYTE(v34) = -18;
    v23 = (v20)(v22);
    MEMORY[0x1E12ADF70](v23);

    OUTLINED_FUNCTION_11_2();
  }

  if (v13)
  {
    v24 = v13;
  }

  else
  {
    v24 = 0xE700000000000000;
  }

  v25 = 0x6E776F6E6B6E75;
  if (v13)
  {
    v25 = v11;
  }

  v31 = v25;
  if (v10)
  {
    v26 = v30;
  }

  else
  {
    v10 = 0xED00006465696669;
    v26 = 0x6365707320746F6ELL;
  }

  _StringGuts.grow(_:)(18);

  *&v34 = 0xD000000000000010;
  *(&v34 + 1) = 0x80000001DD387DF0;
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v28;
  (*(v32 + 8))(v8, v33);
  MEMORY[0x1E12ADF70](v27, v29);

  OUTLINED_FUNCTION_11_2();

  _StringGuts.grow(_:)(19);

  MEMORY[0x1E12ADF70](v26, v10);

  OUTLINED_FUNCTION_11_2();

  strcpy(&v34, "\n\tRegion:\t\t\t");
  HIWORD(v34) = -5120;
  MEMORY[0x1E12ADF70](v31, v24);

  OUTLINED_FUNCTION_11_2();

  OUTLINED_FUNCTION_170();
}

void TapToRadarManager.internalPopulateSiriRequestText()()
{
  OUTLINED_FUNCTION_171();
  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_8_4();
  v11 = *(v10 + 200);
  v12 = v11();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
LABEL_4:
    OUTLINED_FUNCTION_170();
    return;
  }

  v65 = v1;
  v66 = v11;
  v72 = v0;
  v63 = v4;
  v64 = v9;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_5_4();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v16, v17);
  OUTLINED_FUNCTION_16_1();

  v18 = CurrentRequest.speechPackage.getter();

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = [v18 recognition];

  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(v19, &selRef_phrases, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
  if (v20)
  {
    v21 = specialized Array._getCount()(v20);

    if (v21)
    {
      static SiriEnvironment.default.getter();
      OUTLINED_FUNCTION_16_1();

      v22 = CurrentRequest.speechPackage.getter();

      if (!v22)
      {
        goto LABEL_4;
      }

      v23 = [v22 recognition];
LABEL_13:
      v24 = v23;

      if (!v24)
      {
        goto LABEL_4;
      }

      v25 = outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(v24, &selRef_phrases, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
      if (!v25)
      {
        goto LABEL_4;
      }

      v26 = v25;
      v27 = specialized Array._getCount()(v25);
      v28 = 0;
      v29 = v26 & 0xC000000000000001;
      v30 = v26 & 0xFFFFFFFFFFFFFF8;
      v62 = v26;
      v31 = v26 + 32;
      v69 = v26 & 0xC000000000000001;
      v70 = v27;
      v67 = v26 + 32;
      v68 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        while (1)
        {
          if (v28 == v27)
          {

            (v66)(v52);

            OUTLINED_FUNCTION_20_1();
            if (v53)
            {
              v54 = (*(*v72 + 216))(&v73);
              specialized RangeReplaceableCollection<>.removeLast()(v54);

              v54(&v73, 0);
            }

            static Logger.logger.getter();

            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v73 = v58;
              *v57 = 136315138;
              v59 = v66();
              v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v73);

              *(v57 + 4) = v61;
              _os_log_impl(&dword_1DD354000, v55, v56, "TapToRadarManager#internalPopulateSiriRequestText, requestText: %s", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v58);
              OUTLINED_FUNCTION_9_2();
              OUTLINED_FUNCTION_9_2();
            }

            (*(v63 + 8))(v64, v65);
            goto LABEL_4;
          }

          if (v29)
          {
            v32 = MEMORY[0x1E12AE180](v28, v62);
          }

          else
          {
            if (v28 >= *(v30 + 16))
            {
              goto LABEL_56;
            }

            v32 = *(v31 + 8 * v28);
          }

          v33 = v32;
          if (__OFADD__(v28++, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v35 = outlined bridged method (pb) of @objc AFSpeechPhrase.interpretations.getter(v32);
          if (!v35)
          {
            goto LABEL_59;
          }

          v36 = v35;
          v37 = v35 & 0xFFFFFFFFFFFFFF8;
          if (!(v35 >> 62))
          {
            break;
          }

          if (v35 >= 0)
          {
            v35 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          if (MEMORY[0x1E12AE1F0](v35))
          {
            goto LABEL_24;
          }

LABEL_44:
        }

        if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

LABEL_24:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1E12AE180](0, v36);
        }

        else
        {
          if (!*(v37 + 16))
          {
            goto LABEL_57;
          }

          v38 = *(v36 + 32);
        }

        v39 = v38;

        v40 = outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(v39, &selRef_tokens, &lazy cache variable for type metadata for AFSpeechToken, 0x1E698D248);
        if (v40)
        {
          v41 = v40;
          v71 = v33;
          if (v40 >> 62)
          {
            if (v40 >= 0)
            {
              v40 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v42 = MEMORY[0x1E12AE1F0](v40);
            if (!v42)
            {
              goto LABEL_49;
            }

LABEL_30:
            if (v42 < 1)
            {
              goto LABEL_58;
            }

            for (i = 0; i != v42; ++i)
            {
              if ((v41 & 0xC000000000000001) != 0)
              {
                v44 = MEMORY[0x1E12AE180](i, v41);
              }

              else
              {
                v44 = *(v41 + 8 * i + 32);
              }

              v45 = v44;
              v46 = outlined bridged method (pb) of @objc AFSpeechToken.text.getter(v44);
              if (v47)
              {
                v73 = v46;
                v74 = v47;
                MEMORY[0x1E12ADF70](32, 0xE100000000000000);
                v48 = v73;
                v49 = v74;
                OUTLINED_FUNCTION_8_4();
                v51 = (*(v50 + 216))(&v73);
                MEMORY[0x1E12ADF70](v48, v49);

                v51(&v73, 0);
              }
            }

            v29 = v69;
            v27 = v70;
            v31 = v67;
            v30 = v68;
          }

          else
          {
            v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42)
            {
              goto LABEL_30;
            }

LABEL_49:
          }
        }

        else
        {
        }
      }
    }

LABEL_11:
    static SiriEnvironment.default.getter();
    OUTLINED_FUNCTION_16_1();

    v22 = CurrentRequest.speechPackage.getter();

    if (!v22)
    {
      goto LABEL_4;
    }

    v23 = [v22 unfilteredRecognition];
    goto LABEL_13;
  }

LABEL_60:
  __break(1u);
}

uint64_t TTRComponentInfo.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TTRComponentInfo.componentVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t RadarFilingExtras.displayReason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t key path setter for TapToRadarManager.requestID : TapToRadarManager(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t key path setter for TapToRadarManager.ttrRequestManager : TapToRadarManager(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t key path setter for TapToRadarManager.requestText : TapToRadarManager(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t TapToRadarManager.defaultDisplayTitle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.defaultsKey.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.contentKeyError.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.sysBuildVer.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t one-time initialization function for runQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.default.getter();
  v11 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static TapToRadarManager.runQueue = result;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.radarComponentInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 TapToRadarManager.CreateDraftContainer.radarComponentInfo.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v2 = *(a1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);

  result = v6;
  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.CreateDraftContainer.title.setter()
{
  OUTLINED_FUNCTION_295();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.description.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.CreateDraftContainer.description.setter()
{
  OUTLINED_FUNCTION_295();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.radarFilingExtras.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of RadarFilingExtras?(v2);
}

__n128 TapToRadarManager.CreateDraftContainer.radarFilingExtras.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  outlined consume of RadarFilingExtras?(v1[9]);
  result = *a1;
  *(v1 + 11) = *(a1 + 16);
  *(v1 + 9) = result;
  v1[13] = v3;
  return result;
}

__n128 TapToRadarManager.CreateDraftContainer.init(radarComponentInfo:title:description:radarFilingExtras:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a6 + 32);
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 32) = v8;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  result = *a6;
  v11 = *(a6 + 16);
  *(a7 + 72) = *a6;
  *(a7 + 88) = v11;
  *(a7 + 104) = v9;
  return result;
}

uint64_t TapToRadarManager.__allocating_init()()
{
  v0 = swift_allocObject();
  TapToRadarManager.init()();
  return v0;
}

uint64_t closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v71 = a8;
  v73 = a6;
  v74 = a7;
  v72 = type metadata accessor for Logger();
  v19 = *(v72 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v72);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v62 - v27;
  if (!IsAppleInternalBuild() || (v29 = *(*a1 + 272), v70 = a5, (v29(a2, a3, a4, a5) & 1) != 0))
  {
    static Logger.logger.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DD354000, v30, v31, "TapToRadarManager#createProblem not filing issue", v32, 2u);
      MEMORY[0x1E12AE9C0](v32, -1, -1);
    }

    (*(v19 + 8))(v28, v72);
    return v73(0);
  }

  v68 = a4;
  v69 = a2;
  v67 = a3;
  if ((TapToRadarManager.shouldFileTTRWithRequestID()() & 1) == 0)
  {
    static Logger.logger.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1DD354000, v59, v60, "TapToRadarManager#createProblem, already filed for this requestID, skipping", v61, 2u);
      MEMORY[0x1E12AE9C0](v61, -1, -1);
    }

    (*(v19 + 8))(v26, v72);
    return v73(0);
  }

  v34 = a12;
  TapToRadarManager.internalPopulateSiriRequestText()();
  TapToRadarManager.createSiriRequestDescription(providedDescription:)();
  v65 = v35;
  v37 = v36;
  v38 = *(a10 + 16);
  __src[0] = *a10;
  __src[1] = v38;
  v71 = a10;
  *&__src[2] = *(a10 + 32);

  v66 = a11;
  v39 = TapToRadarManager.isRadarValid(radarComponentInfo:title:description:)(__src, a11, a12);

  if ((v39 & 1) == 0)
  {

    return v73(0);
  }

  v40 = v37;
  v64 = a14;
  static Logger.logger.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v63 = a12;
    v44 = v43;
    *v43 = 0;
    _os_log_impl(&dword_1DD354000, v41, v42, "TapToRadarManager#createProblem, valid information provided", v43, 2u);
    v45 = v44;
    v34 = v63;
    MEMORY[0x1E12AE9C0](v45, -1, -1);
  }

  (*(v19 + 8))(v23, v72);
  v46 = v71;
  v47 = *(v71 + 16);
  __src[0] = *v71;
  __src[1] = v47;
  v48 = *(a13 + 16);
  *(&__src[4] + 8) = *a13;
  v49 = *(v71 + 32);
  *(&__src[5] + 8) = v48;
  v50 = *(a13 + 32);
  *&__src[2] = v49;
  *(&__src[2] + 1) = v66;
  *&__src[3] = v34;
  *(&__src[3] + 1) = v65;
  *(&__src[6] + 1) = v50;
  *&__src[4] = v40;
  memcpy(v76, __src, sizeof(v76));
  v51 = a1[8];
  v72 = a1[7];
  v66 = v51;
  v52 = swift_allocObject();
  v53 = v68;
  v54 = v69;
  v52[2] = a1;
  v52[3] = v54;
  v52[4] = v67;
  v52[5] = v53;
  v55 = v73;
  v56 = v74;
  v52[6] = v70;
  v52[7] = v55;
  v57 = v64;
  v52[8] = v56;
  v52[9] = v57;
  v73 = (*a1 + 264);
  v58 = *v73;
  outlined init with copy of TTRComponentInfo(v46, v75);

  outlined init with copy of RadarFilingExtras?(a13, v75);

  v58(v76, v72, v66, partial apply for closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:), v52);

  return outlined destroy of TapToRadarManager.CreateDraftContainer(__src);
}

uint64_t closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a7;
  v28 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v18 = *(v32 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for runQueue != -1)
  {
    swift_once();
  }

  v31 = static TapToRadarManager.runQueue;
  v22 = swift_allocObject();
  *(v22 + 16) = a1 & 1;
  v24 = v28;
  v23 = v29;
  *(v22 + 24) = a2;
  *(v22 + 32) = v24;
  *(v22 + 40) = a4;
  *(v22 + 48) = v23;
  v25 = v30;
  *(v22 + 56) = a6;
  *(v22 + 64) = v25;
  *(v22 + 72) = a8;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v21, v17, v26);
  _Block_release(v26);
  (*(v14 + 8))(v17, v13);
  (*(v18 + 8))(v21, v32);
}

uint64_t closure #1 in closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (a1)
  {
    TapToRadarManager.writeDefaults(errStatus:userDefaultSuiteName:)(a3, a4, a5, a6);
  }

  TapToRadarManager.updateTTRForRequestID(ttrLaunch:)(a1 & 1);
  return a7(a1 & 1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of RadarFilingExtras?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, &_s19SiriFlowEnvironment17RadarFilingExtrasVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static TapToRadarManager.launchTTR(createDraftContainer:completion:)()
{
  OUTLINED_FUNCTION_171();
  v39 = v0;
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = OUTLINED_FUNCTION_0(v3);
  v37 = v5;
  v38 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v36 = v9 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2[6];
  v17 = v2[7];
  v18 = v2[8];
  isa = v2[9];
  v21 = v2[10];
  v20 = v2[11];
  v22 = v2[12];
  v23 = v2[13];
  v33 = v22;
  v34 = v20;
  v35 = MEMORY[0x1E12ADF20](v10, v11);
  v24 = MEMORY[0x1E12ADF20](v12, v13);
  v25.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v26 = MEMORY[0x1E12ADF20](v15, v16);
  v27 = MEMORY[0x1E12ADF20](v17, v18);
  if (isa)
  {
    if (isa == 1)
    {
      v23 = 0;
      v28 = 0;
      v21 = 0;
      isa = 0;
      goto LABEL_10;
    }

    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (v21)
  {
    v21 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (v34)
  {
    v28 = Array._bridgeToObjectiveC()().super.isa;
    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = 0;
  if (v23)
  {
LABEL_9:
    v23 = MEMORY[0x1E12ADF20](v33, v23);
  }

LABEL_10:
  v29 = [objc_opt_self() createProblem:v35 componentVersion:v24 componentID:v25.super.super.isa title:v26 description:v27 attachmentURLs:isa extensionIDs:v21 deviceIDs:v28 displayReason:v23];

  static Logger.logger.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = v29;
    _os_log_impl(&dword_1DD354000, v30, v31, "TapToRadarManager#launchTTR result: %{BOOL}d", v32, 8u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v37 + 8))(v36, v38);
  v39(v29);
  OUTLINED_FUNCTION_170();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t TapToRadarManager.__deallocating_deinit()
{
  TapToRadarManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E12ADF20]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void partial apply for closure #1 in TapToRadarManager.setupLaunchTTR(createDraftContainer:title:completion:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  static TapToRadarManager.launchTTR(createDraftContainer:completion:)();
}

uint64_t outlined copy of RadarFilingExtras?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of RadarFilingExtras?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1E12AE1F0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
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

uint64_t getEnumTagSinglePayload for TTRComponentInfo(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRComponentInfo(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RadarFilingExtras(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RadarFilingExtras(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment17RadarFilingExtrasVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for TapToRadarManager.CreateDraftContainer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TapToRadarManager.CreateDraftContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSDyS2SGGMd, &_ss17_NativeDictionaryVySSSDyS2SGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v23);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v16) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1 & 1, v21);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc AFSpeechPhrase.interpretations.getter(void *a1)
{
  v1 = [a1 interpretations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechInterpretation, 0x1E698D220);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc AFSpeechToken.text.getter(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for OS_dispatch_queue(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return swift_beginAccess();
}

uint64_t Builder.subscript.getter()
{
  return MEMORY[0x1EEE412F0]();
}

{
  return MEMORY[0x1EEE41300]();
}