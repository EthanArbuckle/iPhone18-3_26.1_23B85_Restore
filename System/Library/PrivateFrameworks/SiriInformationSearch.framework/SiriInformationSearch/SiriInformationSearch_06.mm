NSObject *_s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v5)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = SISchemaComponentName.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = SISchemaComponentName.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2232BB000, v6, v18, "Failed to create RequestLink event for source component: %s and target component: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v7)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = SISchemaComponentName.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2232BB000, v28, v29, "Failed to create source link event for source component: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      v41 = SISchemaComponentName.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2232BB000, v37, v38, "Failed to create target link event for target component: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DE0F80](v40, -1, -1);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  [v8 setComponent_];
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithNSUUID_];

  [v8 setUuid_];
  [v10 setComponent_];
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithNSUUID_];

  [v10 setUuid_];
  [v6 setSource:v8];
  [v6 setTarget:v10];

  return v6;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

Swift::Int DataProviderError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AnyDataProvider.oneTimeInit.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t AnyDataProvider.name.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AnyDataProvider.__allocating_init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t (*implicit closure #1 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
}

uint64_t (*implicit closure #3 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
}

uint64_t (*implicit closure #5 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
}

uint64_t (*implicit closure #7 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
}

uint64_t AnyDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 96), *(v2 + 104), v31);
    _os_log_impl(&dword_2232BB000, v9, v10, "%s preparing ...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v31[0] = v13;
  v31[1] = v14;

  MEMORY[0x223DDF6D0](0x7261706572705F20, 0xEB00000000292865);
  v15 = v31[0];
  Date.init()();
  v16 = &v7[v3[5]];
  *v16 = "SiriInformationSearch/DataProvider.swift";
  *(v16 + 1) = 40;
  v16[16] = 2;
  *&v7[v3[6]] = 61;
  v17 = &v7[v3[7]];
  *v17 = "prepare(dispatchQueue:)";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v18 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v15);
  v20 = v19;

  v21 = &v7[v3[8]];
  *v21 = v18;
  v21[1] = v20;
  v22 = *(v2 + 24);
  v23 = v31[3];
  (*(v2 + 16))(v30);
  if (!v23)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v31);
      _os_log_impl(&dword_2232BB000, v24, v25, "%s prepare complete", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v7, 0);
  return outlined destroy of PerformanceUtil.Ticket(v7);
}

uint64_t AnyDataProvider.wait(timeout:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v27 = a5;
  v6 = *v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static PerformanceUtil.shared;
  v14 = v5[13];
  v28 = v5[12];
  v29 = v14;

  v15 = MEMORY[0x223DDF6D0](0x2868637465665F20, 0xE900000000000029);
  v16 = v28;
  v17 = v29;
  MEMORY[0x28223BE20](v15, v18);
  v22 = v24;
  v19 = *(v6 + 80);
  v20 = type metadata accessor for Optional();
  Date.init()();
  LOBYTE(v22) = 2;
  (*(*v13 + 200))(v16, v17, 0, v12, "SiriInformationSearch/DataProvider.swift", 40, 2, 102, "fetch(for:assistantData:serviceHelper:dispatchQueue:)", 53, v22, partial apply for closure #1 in AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:), &v23 - 8, v20);

  return (*(v8 + 8))(v12, v7);
}

uint64_t AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v52 = a3;
  v53 = a4;
  v50 = a1;
  v51 = a2;
  v57 = a6;
  v9 = *v6;
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v9 + 80);
  v56 = type metadata accessor for Optional();
  v17 = *(v56 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v56, v19);
  v54 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v50 - v23;
  (*(*(v16 - 8) + 56))(&v50 - v23, 1, 1, v16);
  v25 = v7[13];
  v55 = v7[12];
  v58[0] = v55;
  v58[1] = v25;

  MEMORY[0x223DDF6D0](0x6420686374656620, 0xEB00000000617461);
  v26 = v58[0];
  Date.init()();
  v27 = &v15[v11[7]];
  *v27 = "SiriInformationSearch/DataProvider.swift";
  *(v27 + 1) = 40;
  v27[16] = 2;
  *&v15[v11[8]] = 116;
  v28 = &v15[v11[9]];
  *v28 = "fetch(for:assistantData:serviceHelper:dispatchQueue:timeout:)";
  *(v28 + 1) = 61;
  v28[16] = 2;
  v29 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v26);
  v31 = v30;

  v32 = &v15[v11[10]];
  *v32 = v29;
  v32[1] = v31;
  v33 = v7[10];
  MEMORY[0x223DDFB80](a5);
  (*(*v7 + 224))(a5);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v15, 0);
  if (static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v34 = v54;
    (*(*v7 + 232))(v50, v51, v52, v53);
    v35 = v56;
    (*(v17 + 40))(v24, v34, v56);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v25, v58);
      *(v39 + 12) = 2080;
      swift_beginAccess();
      (*(v17 + 16))(v34, v24, v35);
      v41 = String.init<A>(describing:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v58);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_2232BB000, v37, v38, "%s fetch complete %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v40, -1, -1);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    outlined destroy of PerformanceUtil.Ticket(v15);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pommes);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v58[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v25, v58);
      _os_log_impl(&dword_2232BB000, v45, v46, "%s timeout while waiting for fetch", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x223DE0F80](v48, -1, -1);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    outlined destroy of PerformanceUtil.Ticket(v15);
    v35 = v56;
  }

  swift_beginAccess();
  (*(v17 + 16))(v57, v24, v35);
  return (*(v17 + 8))(v24, v35);
}

uint64_t AnyDataProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 104);

  return v0;
}

uint64_t AnyDataProvider.__deallocating_deinit()
{
  AnyDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyDataProvider.waitForPrepare(timeout:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContinuousClock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = 1;
  ContinuousClock.init()();
  v20 = &v24;
  v21 = v2;
  v22 = a1;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  Clock.measure(_:)();
  (*(v5 + 8))(v9, v4);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = Duration.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 96), *(v2 + 104), &v23);
    _os_log_impl(&dword_2232BB000, v11, v12, "Waited %s for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  return v24;
}

uint64_t *specialized AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[10] = dispatch_group_create();
  *(v3 + 44) = 0;
  v8 = *(v7 + 80);
  v3[2] = implicit closure #1 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[3] = v9;
  v3[4] = implicit closure #3 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[5] = v10;
  v3[6] = implicit closure #5 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[7] = v11;
  v3[8] = implicit closure #7 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[9] = v12;
  swift_getMetatypeMetadata();
  v3[12] = String.init<A>(describing:)();
  v3[13] = v13;
  return v3;
}

uint64_t *specialized AnyDataProvider.__allocating_init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  type metadata accessor for AnyDataProvider();
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(a1, a2, a3);
}

uint64_t partial apply for closure #1 in AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v2 + 56);
  return (*(v2 + 48))(v1, v3, v4, v5);
}

uint64_t partial apply for closure #1 in AnyDataProvider.waitForPrepare(timeout:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[3] + 80);
  result = MEMORY[0x223DDFB80](v2);
  *v1 = result & 1;
  return result;
}

uint64_t dispatch thunk of DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *(a6 + 32);
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v10 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v10;
  v12[4] = *(a2 + 64);
  v13 = v6;
  v14 = v7;
  return v8(a1, v12);
}

uint64_t dispatch thunk of AnyDataProvider.prepare(dispatchQueue:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

uint64_t dispatch thunk of AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 232);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t dispatch thunk of AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:timeout:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 240);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

BOOL UsoTask.isSmartPlayTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v9)
  {
    outlined destroy of Any?(v8);
    return 0;
  }

  type metadata accessor for UsoTask_play_uso_NoEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_283695520, v0);

  v2 = v1 >> 62 ? __CocoaSet.count.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2)
  {
    return 0;
  }

  v3 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c13Entity_uso_NoP0C_Tt3g5(MEMORY[0x277D84F90], byte_283695548, v0);

  v4 = v3 >> 62 ? __CocoaSet.count.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
    return 0;
  }

  v5 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C26Entity_common_EventTriggerC_Tt3g5(MEMORY[0x277D84F90], byte_283695570, v0);

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

uint64_t UsoTask.isOfflineSupportedPlayTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(&v3, &v1);
  if (*(&v2 + 1))
  {
    type metadata accessor for UsoTask_play_uso_NoEntity();
    if (swift_dynamicCast())
    {

      outlined destroy of Any?(&v3);
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for UsoTask_play_common_MediaItem();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  return 0;
}

BOOL UsoTask.isSummarizeMediaTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    outlined destroy of Any?(v4);
    goto LABEL_5;
  }

  type metadata accessor for UsoTask_summarise_common_MediaItem();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  v0 = v3;
LABEL_6:
  v1 = v0 != 0;

  return v1;
}

uint64_t Siri_Nlu_External_UserParse.firstSmartPlayTask()()
{
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (v0)
  {
    return result;
  }

  if (v2 >> 62)
  {
    goto LABEL_107;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_108:
    v64 = 0;
    goto LABEL_109;
  }

LABEL_4:
  v55 = v4;
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  v8 = v2 + 32;
  v56 = v2;
  v61 = v2 & 0xC000000000000001;
  v62 = v2 & 0xFFFFFFFFFFFFFF8;
  v63 = v2 + 32;
  while (1)
  {
    if (v6)
    {
      MEMORY[0x223DDFF80](v5, v2);
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_106;
      }

      v9 = *(v8 + 8 * v5);

      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_105;
      }
    }

    static UsoTask_CodegenConverter.convert(task:)();
    if (!v65[3])
    {

      outlined destroy of Any?(v65);
      goto LABEL_6;
    }

    v64 = v11;
    type metadata accessor for UsoTask_play_uso_NoEntity();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    v12 = byte_283698340;
    v13 = UsoTask.arguments.getter();
    v14 = 0x636E657265666572;
    if (v12 != 2)
    {
      v14 = 0x72656767697274;
    }

    v15 = 0xE700000000000000;
    if (v12 == 2)
    {
      v15 = 0xE900000000000065;
    }

    v16 = 0x69746E4572657375;
    if (v12)
    {
      v16 = 0x746567726174;
    }

    v17 = 0xE600000000000000;
    if (!v12)
    {
      v17 = 0xEC00000073656974;
    }

    v18 = v12 <= 1 ? v16 : v14;
    v19 = v12 <= 1 ? v17 : v15;
    if (*(v13 + 16))
    {
      break;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_47:
    v8 = v63;
    if (v30 >> 62)
    {
      v51 = __CocoaSet.count.getter();
      v8 = v63;

      if (v51)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v31)
      {
        goto LABEL_85;
      }
    }

    v32 = byte_283698368;
    v33 = UsoTask.arguments.getter();
    v34 = 0x636E657265666572;
    if (v32 != 2)
    {
      v34 = 0x72656767697274;
    }

    v35 = 0xE700000000000000;
    if (v32 == 2)
    {
      v35 = 0xE900000000000065;
    }

    v36 = 0x69746E4572657375;
    if (v32)
    {
      v36 = 0x746567726174;
    }

    v37 = 0xE600000000000000;
    if (!v32)
    {
      v37 = 0xEC00000073656974;
    }

    if (v32 <= 1)
    {
      v38 = v36;
    }

    else
    {
      v38 = v34;
    }

    if (v32 <= 1)
    {
      v39 = v37;
    }

    else
    {
      v39 = v35;
    }

    if (*(v33 + 16))
    {
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
      v42 = v41;

      if (v42)
      {
        v58 = v5;
        v43 = *(*(v33 + 56) + 8 * v40);

        v65[0] = MEMORY[0x277D84F90];
        if (v43 >> 62)
        {
          v44 = __CocoaSet.count.getter();
        }

        else
        {
          v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v45 = 0;
        v60 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v44 == v45)
          {

            v65[0] = MEMORY[0x277D84F90];
            specialized Array.append<A>(contentsOf:)(v60);
            v49 = v65[0];
            v4 = v55;
            v2 = v56;
            v5 = v58;
            goto LABEL_82;
          }

          if ((v43 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v45, v43);
            v2 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_104;
            }

            v46 = *(v43 + 8 * v45 + 32);

            v2 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              v4 = __CocoaSet.count.getter();
              if (!v4)
              {
                goto LABEL_108;
              }

              goto LABEL_4;
            }
          }

          type metadata accessor for UsoEntity_uso_NoEntity();
          dispatch thunk of UsoValue.getAsEntity()();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          ++v45;
          if (v66)
          {
            MEMORY[0x223DDF820](v47);
            if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v60 = v65[0];
            v45 = v2;
          }
        }
      }

      v49 = MEMORY[0x277D84F90];
LABEL_82:
      v6 = v61;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v8 = v63;
    if (v49 >> 62)
    {
      v52 = __CocoaSet.count.getter();
      v8 = v63;

      if (v52)
      {
LABEL_85:

        v7 = v62;
        goto LABEL_6;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v50)
      {
        goto LABEL_85;
      }
    }

    v53 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C26Entity_common_EventTriggerC_Tt3g5(MEMORY[0x277D84F90], byte_283698390, v64);

    if (v53 >> 62)
    {
      v54 = __CocoaSet.count.getter();
      v8 = v63;
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v54)
    {
      goto LABEL_109;
    }

    v7 = v62;
LABEL_6:
    if (v5 == v4)
    {
      v64 = 0;
      goto LABEL_109;
    }
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    v30 = MEMORY[0x277D84F90];
LABEL_46:
    v6 = v61;
    goto LABEL_47;
  }

  v57 = v5;
  v23 = *(*(v13 + 56) + 8 * v20);

  v65[0] = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v24 == v25)
    {

      v65[0] = MEMORY[0x277D84F90];
      specialized Array.append<A>(contentsOf:)(v59);
      v30 = v65[0];
      v4 = v55;
      v2 = v56;
      v5 = v57;
      goto LABEL_46;
    }

    if ((v23 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x223DDFF80](v25, v23);
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_100;
    }

LABEL_35:
    type metadata accessor for UsoEntity_common_UserEntity();
    dispatch thunk of UsoValue.getAsEntity()();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    ++v25;
    if (v66)
    {
      MEMORY[0x223DDF820](v28);
      if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v59 = v65[0];
      v25 = v27;
    }
  }

  if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_101;
  }

  v26 = *(v23 + 8 * v25 + 32);

  v27 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_35;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_109:

  return v64;
}

uint64_t Siri_Nlu_External_UserParse.firstOfflineSupportedPlayTask()()
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (!v0)
  {
    if (v3 >> 62)
    {
      goto LABEL_24;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x223DDFF80](v5, v3);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

            outlined destroy of Any?(&v10);
LABEL_22:

            return v1;
          }

LABEL_10:

          static UsoTask_CodegenConverter.convert(task:)();

          outlined init with copy of Any?(&v10, &v8);
          if (*(&v9 + 1))
          {
            type metadata accessor for UsoTask_play_uso_NoEntity();
            if (swift_dynamicCast())
            {
              goto LABEL_20;
            }
          }

          else
          {
            outlined destroy of Any?(&v8);
          }

          v8 = v10;
          v9 = v11;
          if (*(&v11 + 1))
          {
            type metadata accessor for UsoTask_play_common_MediaItem();
            if (swift_dynamicCast())
            {

              goto LABEL_22;
            }
          }

          else
          {

            outlined destroy of Any?(&v8);
          }

          ++v5;
          if (v6 == v4)
          {
            goto LABEL_25;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_25;
        }
      }

      v1 = *(v3 + 8 * v5 + 32);

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

LABEL_25:

    return 0;
  }

  return v1;
}

uint64_t Siri_Nlu_External_UserParse.firstSummarizeMediaTask()()
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (!v0)
  {
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x223DDFF80](v5, v3);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v1;
          }

LABEL_10:

          static UsoTask_CodegenConverter.convert(task:)();

          if (v8[3])
          {
            type metadata accessor for UsoTask_summarise_common_MediaItem();
            if (swift_dynamicCast())
            {
              goto LABEL_16;
            }
          }

          else
          {

            outlined destroy of Any?(v8);
          }

          ++v5;
          if (v6 == v4)
          {
            goto LABEL_19;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_18:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_19;
        }
      }

      v1 = *(v3 + 8 * v5 + 32);

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_19:

    return 0;
  }

  return v1;
}

uint64_t RunningBoardForegroundAppProvider.getForegroundAppProfileSlice()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized RunningBoardForegroundAppProvider.getForegroundAppId()();

  _s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v11 = v7;
  _s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
  static Message.with(_:)();
  (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  return (*(v3 + 8))(v7, v2);
}

void closure #1 in RunningBoardForegroundAppProvider.getForegroundAppId()(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 taskState] != 4)
  {
    goto LABEL_9;
  }

  v4 = [v3 endowmentNamespaces];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v5) = specialized Set.contains(_:)(0xD00000000000001FLL, 0x80000002234D9410, v6);

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [v3 process];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 bundle];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v9 identifier];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v15 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v11, v13, 0);
  if (!v15 || (v16 = v15, v17 = [v15 developerType], v16, v17 != 3))
  {

LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  *a2 = v11;
  a2[1] = v13;
}

uint64_t closure #1 in RunningBoardForegroundAppProvider.buildForegroundAppProfileSliceValue(_:)()
{
  v0 = type metadata accessor for Google_Protobuf_Any();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  (*(v13 + 104))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AE8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v4 + 104))(v8, *MEMORY[0x277D39D58], v3);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
  Google_Protobuf_Any.init()();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t closure #1 in RunningBoardForegroundAppProvider.getForegroundAppProfileSlice()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  (*(v7 + 104))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39700]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2234CF920;
  (*(v9 + 16))(v12 + v11, a2, v8);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

void specialized RunningBoardForegroundAppProvider.getForegroundAppId()()
{
  v54[9] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setEndowmentNamespaces_];

  [v1 setValues_];
  v54[0] = 0;
  v47 = [objc_opt_self() predicateMatchingProcessTypeApplication];
  v48 = v1;
  v3 = [objc_opt_self() statesForPredicate:v47 withDescriptor:v1 error:v54];
  v4 = v54[0];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for RBSProcessState();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    v46 = 0;
  }

  else
  {
    v8 = v54[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v46 = 0;
    v6 = MEMORY[0x277D84F90];
  }

  v49 = v6 >> 62;
  v10 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = v6 & 0xC000000000000001;
  v14 = v6 + 32;
  v15 = &unk_2784DB000;
  v50 = v6;
  v51 = v6 + 32;
  v52 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v11)
    {
      v12 = v11;
      if (v49)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      v17 = MEMORY[0x223DDFF80](v12, v50);
      goto LABEL_13;
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    v17 = *(v14 + 8 * v12);
LABEL_13:
    v0 = v17;
    if ([v17 v15[324]] == 4 && (v18 = objc_msgSend(v0, sel_endowmentNamespaces)) != 0)
    {
      v19 = v18;
      v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16))
      {
        v21 = v10;
        v22 = v15;
        v23 = *(v20 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = -1 << *(v20 + 32);
        v26 = v24 & ~v25;
        if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
LABEL_24:

          v14 = v51;
          v15 = v22;
LABEL_33:
          v10 = v21;
          v13 = v52;
          goto LABEL_8;
        }

        v27 = ~v25;
        while (1)
        {
          v28 = (*(v20 + 48) + 16 * v26);
          v29 = *v28 == 0xD00000000000001FLL && 0x80000002234D9410 == v28[1];
          if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v30 = [v0 process];
        v15 = v22;
        if (!v30)
        {

          v14 = v51;
          goto LABEL_33;
        }

        v31 = v30;
        v32 = [v30 bundle];

        v10 = v21;
        if (v32)
        {
          v33 = [v32 identifier];

          v13 = v52;
          if (v33)
          {
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = objc_allocWithZone(MEMORY[0x277CC1E70]);

            v38 = MEMORY[0x223DDF550](v34, v36);

            v54[0] = 0;
            v39 = [v37 initWithBundleIdentifier:v38 allowPlaceholder:0 error:v54];

            if (v39)
            {
              v40 = v54[0];
              v41 = [v39 developerType];

              if (v41 == 3)
              {
                goto LABEL_47;
              }

              v14 = v51;
            }

            else
            {
              v42 = v54[0];
              v43 = _convertNSErrorToError(_:)();

              swift_willThrow();

              v46 = 0;
              v14 = v51;
            }
          }

          else
          {

            v14 = v51;
          }
        }

        else
        {

          v14 = v51;
          v13 = v52;
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_8:
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:

  v14 = v51;
  if (v49)
  {
LABEL_48:
    if (v12 == __CocoaSet.count.getter())
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (v12 == *(v10 + 16))
  {
LABEL_49:

    v45 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_40:
  if (v13)
  {
    v44 = MEMORY[0x223DDFF80](v12, v50);
  }

  else
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
    }

    v44 = *(v14 + 8 * v12);
  }

  v53 = v44;
  closure #1 in RunningBoardForegroundAppProvider.getForegroundAppId()(&v53, v54);

  if (v54[1])
  {
    goto LABEL_49;
  }

  __break(1u);
}

uint64_t _s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for RBSProcessState()
{
  result = lazy cache variable for type metadata for RBSProcessState;
  if (!lazy cache variable for type metadata for RBSProcessState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSProcessState);
  }

  return result;
}

uint64_t SportsResolver.makeRecommendation(entities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA10SportsItemVGMd, &_s13SiriInference14RecommendationOyAA10SportsItemVGMR);
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = *(v93 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v89 = &v87 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v87 - v25;
  v27 = type metadata accessor for SportsRecommendationQuery();
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v88 = v9;
    v91 = v31;
    v92 = v30;
    v96 = a2;

    v34 = SportsRecommendationQuery.init(sportsPersonalizationEntities:)();
    if (one-time initialization token for shared != -1)
    {
      v34 = swift_once();
    }

    v90 = &v87;
    v36 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v34, v35);
    v85 = v97;
    v86 = v33;
    v95 = v33;
    Date.init()();
    v37 = *(*v36 + 200);
    v85 = &v84;
    v86 = v18;
    LOBYTE(v84) = 2;
    v38 = v26;
    v37(0xD000000000000025, 0x80000002234DBA90, 0, v17, "SiriInformationSearch/SportsInferenceQuerying.swift", 51, 2, 33, "makeRecommendation(entities:)", 29, v84, partial apply for closure #1 in SportsResolver.makeRecommendation(entities:));
    (*(v13 + 8))(v17, v12);
    outlined init with copy of Result<Recommendation<SportsItem>, Error>(v26, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = *v23;
      v40 = v96;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.pommes);
      v42 = v39;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v98 = v39;
        v99[0] = v46;
        *v45 = 136315138;
        v47 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v48 = String.init<A>(describing:)();
        v50 = v38;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v99);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_2232BB000, v43, v44, "Got error calling inference for sports recommendation: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x223DE0F80](v46, -1, -1);
        MEMORY[0x223DE0F80](v45, -1, -1);

        v52 = v50;
      }

      else
      {

        v52 = v38;
      }

      outlined destroy of Result<Recommendation<SportsItem>, Error>(v52);
      v66 = v95;
      v67 = type metadata accessor for SportsItem();
      (*(*(v67 - 8) + 56))(v40, 1, 1, v67);
      return (*(v91 + 8))(v66, v92);
    }

    else
    {
      v61 = v93;
      v60 = v94;
      v62 = (*(v93 + 88))(v23, v94);
      v63 = v96;
      if (v62 == *MEMORY[0x277D56080])
      {
        outlined destroy of Result<Recommendation<SportsItem>, Error>(v26);
        (*(v61 + 96))(v23, v60);
        v64 = type metadata accessor for SportsItem();
        v65 = *(v64 - 8);
        (*(v65 + 32))(v63, v23, v64);
        (*(v65 + 56))(v63, 0, 1, v64);
        return (*(v91 + 8))(v95, v92);
      }

      else
      {
        v68 = v89;
        (*(v61 + 32))(v89, v23, v60);
        v69 = v95;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        __swift_project_value_buffer(v70, static Logger.pommes);
        v71 = v88;
        (*(v61 + 16))(v88, v68, v60);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v99[0] = v75;
          *v74 = 136315138;
          v76 = Recommendation.description.getter();
          v78 = v77;
          v79 = *(v61 + 8);
          v79(v71);
          v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v99);
          v69 = v95;

          *(v74 + 4) = v80;
          _os_log_impl(&dword_2232BB000, v72, v73, "Got non-confident sports recommendation, will not select: '%s'", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          v81 = v75;
          v63 = v96;
          MEMORY[0x223DE0F80](v81, -1, -1);
          MEMORY[0x223DE0F80](v74, -1, -1);

          (v79)(v89, v60);
        }

        else
        {

          v82 = *(v61 + 8);
          v82(v71, v60);
          v82(v68, v60);
        }

        outlined destroy of Result<Recommendation<SportsItem>, Error>(v38);
        v83 = type metadata accessor for SportsItem();
        (*(*(v83 - 8) + 56))(v63, 1, 1, v83);
        return (*(v91 + 8))(v69, v92);
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.pommes);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2232BB000, v54, v55, "Got no sports items from the alternative result entities. Nothing to recommend against...", v56, 2u);
      MEMORY[0x223DE0F80](v56, -1, -1);
    }

    v57 = type metadata accessor for SportsItem();
    v58 = *(*(v57 - 8) + 56);

    return v58(a2, 1, 1, v57);
  }
}

uint64_t closure #1 in SportsResolver.makeRecommendation(entities:)@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  SportsResolver.makeRecommendation(query:)();
  if (v1)
  {
    *a1 = v1;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    return outlined init with take of Result<Recommendation<SportsItem>, Error>(v7, a1);
  }
}

uint64_t partial apply for closure #1 in SportsResolver.makeRecommendation(entities:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in SportsResolver.makeRecommendation(entities:)(a1);
}

uint64_t outlined init with copy of Result<Recommendation<SportsItem>, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<Recommendation<SportsItem>, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Result<Recommendation<SportsItem>, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FeatureFlag.isOn.getter()
{
  v6[3] = &type metadata for FeatureFlag;
  v6[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  outlined init with copy of FeatureFlag(v0, &v5);
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

const char *FeatureFlag.domain.getter()
{
  if (*(v0 + 32) != 3)
  {
    return "Pommes";
  }

  v1 = *(v0 + 16) | *(v0 + 24) | *(v0 + 8);
  if (*v0 == 4 && v1 == 0)
  {
    return "SiriVideo";
  }

  if (*v0 != 6 || v1 != 0)
  {
    return "Pommes";
  }

  return "SiriSettings";
}

const char *specialized FeatureFlag.domainFeature(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73676E6974697277 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "writings_search";
  }

  if (a1 == 7300455 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936744813 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "geo_search";
  }

  if (a1 == 0x6D6E696174756465 && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "edutainment_search";
  }

  if (a1 == 0x74616C736E617274 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "translation_search";
  }

  if (a1 == 0x636E75616C707061 && a2 == 0xE900000000000068)
  {
    return "applaunch_search";
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = a1 == 1936748641 && a2 == 0xE400000000000000;
  result = "applaunch_search";
  if ((v5 & 1) == 0 && !v7)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return "applaunch_search";
    }

    result = "emergency_search";
    if (a1 != 0x636E656772656D65 || a2 != 0xE900000000000079)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return "emergency_search";
      }

      else
      {
        return "";
      }
    }
  }

  return result;
}

const char *specialized FeatureFlag.domainLocaleFeature(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x223DDF6D0](95, 0xE100000000000000);
  MEMORY[0x223DDF6D0](v4, v5);

  v6 = a1 == 0x7A5F7374726F7073 && a2 == 0xEC0000004E435F68;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "sports_zh_CN";
  }

  else if (a1 == 0xD000000000000011 && 0x80000002234DBC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "edutainment_zh_CN";
  }

  else if (a1 == 0x687A5F636973756DLL && a2 == 0xEB000000004E435FLL)
  {

    return "music_zh_CN";
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return "music_zh_CN";
    }

    else
    {
      return "";
    }
  }
}

const char *specialized FeatureFlag.disableDeviceFeature(_:)()
{
  v0 = String.lowercased()();
  if (v0._countAndFlagsBits == 808596834 && v0._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "disable_b520";
  }

  else if (v0._countAndFlagsBits == 0x706130323562 && v0._object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "disable_b520ap";
  }

  else if (v0._countAndFlagsBits == 808597090 && v0._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "disable_b620";
  }

  else if (v0._countAndFlagsBits == 0x706130323662 && v0._object == 0xE600000000000000)
  {

    return "disable_b620ap";
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      return "disable_b620ap";
    }

    else
    {
      return "";
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch11FeatureFlagO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FeatureFlag(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void *PommesSearchRequestProcessor.__allocating_init(remoteClient:localClients:pegasusCacheManager:domainWarmup:pommesSearchRequest:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a2;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v57 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55, v18);
  v56 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v54 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v7 + 48);
  v30 = *(v7 + 52);
  v31 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v32 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = v32;
  v31[6] = v33;
  *(v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  outlined init with copy of PommesSearchRequest(a5, v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v34 = a1;
  v35 = v52;
  v31[2] = a1;
  v31[3] = v35;
  v31[4] = a3;
  v31[5] = a4;
  *(v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager) = a6;
  outlined init with copy of PommesSearchRequest(a5, v28, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *v28;
  v37 = v28[1];
  v60 = a5;
  v53 = v34;
  v51[1] = a4;
  v51[2] = a6;
  v51[0] = a3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v28[3];

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      v41 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v42 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v43 = v28 + *(v40 + 64);
    }

    else
    {
      v45 = v28[2];

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v47 = *(v46 + 64);
      v48 = *(v28 + *(v46 + 80) + 8);

      v41 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v42 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v43 = v28 + v47;
    }

    outlined destroy of MediaUserStateCenter?(v43, v41, v42);
  }

  else
  {
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    outlined destroy of PommesSearchRequest(v28 + v44, type metadata accessor for NLXResultCandidate);
  }

  type metadata accessor for OS_dispatch_queue();
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v61 = 0xD000000000000021;
  v62 = 0x80000002234DA3B0;
  MEMORY[0x223DDF6D0](v38, v37);

  static DispatchQoS.userInitiated.getter();
  v61 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v58 + 104))(v57, *MEMORY[0x277D85260], v59);
  v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  outlined destroy of PommesSearchRequest(v60, type metadata accessor for PommesSearchRequest);
  *(v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue) = v49;
  return v31;
}

uint64_t key path setter for PommesSearchRequestProcessor.pommesSearchRequest : PommesSearchRequestProcessor(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesSearchRequest(a1, v8, type metadata accessor for PommesSearchRequest);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  outlined assign with take of PommesSearchRequest(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t PommesSearchRequestProcessor.pommesSearchRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  return outlined init with copy of PommesSearchRequest(v1 + v3, a1, type metadata accessor for PommesSearchRequest);
}

void *PommesSearchRequestProcessor.init(remoteClient:localClients:pegasusCacheManager:domainWarmup:pommesSearchRequest:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v50 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v19);
  v49 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v47[3] = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = (v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AnalyticsComponentIdGenerator();
  v30 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = v30;
  v7[6] = v31;
  *(v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  outlined init with copy of PommesSearchRequest(a5, v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  *(v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager) = a6;
  outlined init with copy of PommesSearchRequest(a5, v29, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = *v29;
  v33 = v29[1];
  v53 = a5;
  v47[1] = a4;
  v47[2] = a6;
  v47[0] = a3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v29[3];

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      v37 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v38 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v39 = v29 + *(v36 + 64);
    }

    else
    {
      v41 = v29[2];

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v43 = *(v42 + 64);
      v44 = *(v29 + *(v42 + 80) + 8);

      v37 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v38 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v39 = v29 + v43;
    }

    outlined destroy of MediaUserStateCenter?(v39, v37, v38);
  }

  else
  {
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    outlined destroy of PommesSearchRequest(v29 + v40, type metadata accessor for NLXResultCandidate);
  }

  type metadata accessor for OS_dispatch_queue();
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v54 = 0xD000000000000021;
  v55 = 0x80000002234DA3B0;
  MEMORY[0x223DDF6D0](v34, v33);

  static DispatchQoS.userInitiated.getter();
  v54 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v51 + 104))(v50, *MEMORY[0x277D85260], v52);
  v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  outlined destroy of PommesSearchRequest(v53, type metadata accessor for PommesSearchRequest);
  *(v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue) = v45;
  return v7;
}

uint64_t PommesSearchRequestProcessor.search(completion:)(uint64_t a1, uint64_t a2)
{
  closure #1 in PommesSearchRequestProcessor.search(completion:)();
  v5 = *(*v2 + 216);
  v7 = v6 & 1;

  return v5(v7, a1, a2);
}

void closure #1 in PommesSearchRequestProcessor.search(completion:)()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v42 = v2;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, v44);
      _os_log_impl(&dword_2232BB000, v6, v7, "Checking if %s is enabled for POMMES", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DE0F80](v9, -1, -1);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v45 = &type metadata for FeatureFlag;
    v10 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
    v46 = v10;
    v11 = swift_allocObject();
    v44[0] = v11;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 3;
    v12 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v44);
    v13 = [objc_opt_self() isSiriPommesEnabledForLanguage_];

    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    v14 = MEMORY[0x223DDF550](0x536C65646F4D5748, 0xEA00000000007274);
    v15 = MGGetStringAnswer();

    if (v15)
    {

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v45 = &type metadata for FeatureFlag;
      v46 = v10;
      v19 = swift_allocObject();
      v44[0] = v19;
      *(v19 + 16) = v16;
      *(v19 + 24) = v18;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;

      v43 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v44);
      if ((v12 & 1) == 0)
      {
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = v13;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2232BB000, v20, v21, "Siri is disabled for POMMES", v23, 2u);
          v24 = v23;
          v13 = v22;
          MEMORY[0x223DE0F80](v24, -1, -1);
        }
      }

      if (v13)
      {
      }

      else
      {

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v44[0] = v32;
          *v31 = 136315138;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v4, v44);

          *(v31 + 4) = v33;
          _os_log_impl(&dword_2232BB000, v29, v30, "%s is disabled for POMMES", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x223DE0F80](v32, -1, -1);
          MEMORY[0x223DE0F80](v31, -1, -1);
        }

        else
        {
        }
      }

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v44[0] = v37;
        *v36 = 136315394;
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v44);

        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;
        if (v43)
        {
          v39 = 7562585;
        }

        else
        {
          v39 = 28494;
        }

        if (v43)
        {
          v40 = 0xE300000000000000;
        }

        else
        {
          v40 = 0xE200000000000000;
        }

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v44);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_2232BB000, v34, v35, "Checking if device(%s) is disabled for POMMES, disabled: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v37, -1, -1);
        MEMORY[0x223DE0F80](v36, -1, -1);
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

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "No languageCode available", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }
  }
}

void CurrentDevice.codename.getter()
{
  v0 = MEMORY[0x223DDF550](0x536C65646F4D5748, 0xEA00000000007274);
  v1 = MGGetStringAnswer();

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t PommesSearchRequestProcessor.search(enabled:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v4 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v4;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in PommesSearchRequestProcessor.search(enabled:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v18, v13, v20);
  _Block_release(v20);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v23);
}

void closure #1 in PommesSearchRequestProcessor.search(enabled:completion:)(char a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (a1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2232BB000, v8, v9, "POMMES is enabled", v10, 2u);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = *(*a2 + 224);

    v12(partial apply for closure #1 in closure #1 in PommesSearchRequestProcessor.search(enabled:completion:), v11);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "POMMES is disabled", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v17 = swift_allocError();
    *v18 = -127;
    a3(v17, 1);
  }
}

uint64_t PommesSearchRequestProcessor.search_sync(completion:)(uint64_t (*a1)(void *, void), uint64_t a2)
{
  v3 = v2;
  v136 = a1;
  v137 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v138 = &v115 - v7;
  v8 = type metadata accessor for DispatchTimeInterval();
  v132 = *(v8 - 8);
  v133 = v8;
  v9 = *(v132 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v129 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DispatchTime();
  v130 = *(v12 - 8);
  v131 = v12;
  v13 = *(v130 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v126 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v127 = &v115 - v18;
  v19 = type metadata accessor for PommesSearchRequest(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SignpostToken();
  v123 = *(v24 - 8);
  v25 = v123[8];
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v121 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v115 - v29;
  v31 = type metadata accessor for PerformanceUtil.Ticket(0);
  v120 = *(v31 - 1);
  v32 = *(v120 + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v125 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v124 = &v115 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v119 = &v115 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v115 - v42;
  v122 = dispatch_semaphore_create(0);
  v140 = dispatch_semaphore_create(0);
  v141 = swift_allocBox();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v47 = *(*(v46 - 8) + 56);
  v128 = v45;
  v47(v45, 1, 1, v46);
  v48 = swift_allocObject();
  v143 = v48;
  *(v48 + 16) = 0;
  v115 = (v48 + 16);
  Date.init()();
  v49 = &v43[v31[5]];
  *v49 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v49 + 1) = 56;
  v49[16] = 2;
  *&v43[v31[6]] = 108;
  v50 = &v43[v31[7]];
  *v50 = "search_sync(completion:)";
  *(v50 + 1) = 24;
  v50[16] = 2;
  v51 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000034);
  v52 = &v43[v31[8]];
  *v52 = v51;
  v52[1] = v53;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v54, static Signposter.pommes);
  v55 = OSSignposter.begin(name:context:)("search.remote", 13, 2u, v3, v30);
  v116 = v3[2];
  v56 = (*v3 + 152);
  v117 = *v56;
  v118 = v56;
  (v117)(v55);
  v57 = swift_allocObject();
  v139 = v23;
  v142 = v3;
  v58 = v57;
  swift_weakInit();
  v134 = v43;
  v59 = v119;
  outlined init with copy of PommesSearchRequest(v43, v119, type metadata accessor for PerformanceUtil.Ticket);
  v135 = v30;
  v60 = v121;
  outlined init with copy of PommesSearchRequest(v30, v121, type metadata accessor for SignpostToken);
  v61 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v62 = (v32 + *(v123 + 80) + v61) & ~*(v123 + 80);
  v63 = (v25 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v59, v65 + v61, type metadata accessor for PerformanceUtil.Ticket);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v60, v65 + v62, type metadata accessor for SignpostToken);
  v66 = v116;
  v67 = v122;
  *(v65 + v63) = v122;
  *(v65 + v64) = v58;
  *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v141;
  v68 = *(*v66 + 568);
  v123 = v67;

  v69 = v139;
  v68(v139, partial apply for closure #1 in PommesSearchRequestProcessor.search_sync(completion:), v65);

  v122 = type metadata accessor for PommesSearchRequest;
  outlined destroy of PommesSearchRequest(v69, type metadata accessor for PommesSearchRequest);

  v70 = v124;
  Date.init()();
  v71 = &v70[v31[5]];
  *v71 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v71 + 1) = 56;
  v71[16] = 2;
  *&v70[v31[6]] = 123;
  v72 = &v70[v31[7]];
  *v72 = "search_sync(completion:)";
  *(v72 + 1) = 24;
  v72[16] = 2;
  v73 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000016);
  v74 = &v70[v31[8]];
  *v74 = v73;
  v74[1] = v75;
  v76 = v125;
  Date.init()();
  v77 = &v76[v31[5]];
  *v77 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v77 + 1) = 56;
  v77[16] = 2;
  *&v76[v31[6]] = 124;
  v78 = &v76[v31[7]];
  *v78 = "search_sync(completion:)";
  *(v78 + 1) = 24;
  v78[16] = 2;
  v79 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000024);
  v80 = &v76[v31[8]];
  *v80 = v79;
  v80[1] = v81;
  v82 = v142;
  v83 = v142[4];
  v117();
  v84 = v82[5];
  v85 = swift_allocObject();
  swift_weakInit();
  v86 = swift_allocObject();
  v87 = v140;
  v86[2] = v140;
  v86[3] = v85;
  v86[4] = v143;
  v88 = *(*v83 + 200);
  v140 = v87;

  v89 = v139;
  v88(v139, v84, partial apply for closure #2 in PommesSearchRequestProcessor.search_sync(completion:), v86);

  outlined destroy of PommesSearchRequest(v89, v122);

  v90 = v126;
  static DispatchTime.now()();
  v91 = v129;
  *v129 = 200;
  v93 = v132;
  v92 = v133;
  (*(v132 + 104))(v91, *MEMORY[0x277D85178], v133);
  v94 = v127;
  DispatchTime.advanced(by:)();
  (*(v93 + 8))(v91, v92);
  v95 = v131;
  v96 = *(v130 + 8);
  v96(v90, v131);
  MEMORY[0x223DDFC40](v94);
  v96(v94, v95);
  v97 = v76;
  v98 = v70;
  v99 = v141;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v100 = *(*static PerformanceUtil.shared + 184);
  v100(v97, 1);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (v101 = v115, swift_beginAccess(), (v102 = *v101) != 0))
  {
    v103 = v102;
    v136(v102, 0);
    v104 = v123;
    OS_dispatch_semaphore.wait()();
    v100(v98, 1);
    v105 = v128;
    swift_beginAccess();
    v106 = v105;
    v107 = v138;
    outlined init with copy of MediaUserStateCenter?(v106, v138, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);

    v108 = v142;

    specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(v107, v108, v108, v99);
  }

  else
  {
    v109 = v123;
    OS_dispatch_semaphore.wait()();
    v100(v98, 1);
    v110 = v128;
    swift_beginAccess();
    v111 = v110;
    v107 = v138;
    outlined init with copy of MediaUserStateCenter?(v111, v138, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);

    v112 = v142;

    v113 = v137;

    specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(v107, v112, v136, v113, v112, v99);
  }

  outlined destroy of MediaUserStateCenter?(v107, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  outlined destroy of PommesSearchRequest(v97, type metadata accessor for PerformanceUtil.Ticket);
  outlined destroy of PommesSearchRequest(v98, type metadata accessor for PerformanceUtil.Ticket);
  outlined destroy of PommesSearchRequest(v135, type metadata accessor for SignpostToken);
  outlined destroy of PommesSearchRequest(v134, type metadata accessor for PerformanceUtil.Ticket);
}

Swift::Int closure #1 in PommesSearchRequestProcessor.search_sync(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15[-v9];
  v11 = swift_projectBox();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    outlined init with copy of MediaUserStateCenter?(a1, v10, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v10, v11, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a2, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v13, static Signposter.pommes);
  OSSignposter.end(token:message:)(a3, 0, 0xE000000000000000);
  return OS_dispatch_semaphore.signal()();
}

Swift::Int closure #2 in PommesSearchRequestProcessor.search_sync(completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a1;
    v7 = a1;
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(void *a1, int a2, uint64_t a3)
{
  LODWORD(v47) = a2;
  v45 = a1;
  v46 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v46, v5);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PegasusSearchResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v41 - v20;
  v22 = type metadata accessor for PommesSearchRequest(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  (*(*a3 + 152))();
  v29 = *&v27[*(v23 + 60)];

  outlined destroy of PommesSearchRequest(v27, type metadata accessor for PommesSearchRequest);
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
    v43 = *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  }

  else
  {
    v43 = 0;
    v30 = 0;
  }

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v28, v21, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  outlined init with copy of MediaUserStateCenter?(v21, v18, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  if ((*(*(v31 - 8) + 48))(v18, 1, v31) == 1)
  {
    v32 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v33 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_8:
    outlined destroy of MediaUserStateCenter?(v18, v32, v33);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v33 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_8;
  }

  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v18, v12, type metadata accessor for PegasusSearchResponse);
  if ((v47 & 1) == 0)
  {
    v34 = *(a3 + 32);
    v47 = *(v8 + 20);
    *v7 = 5;
    v35 = v44;
    v36 = v46;
    (*(v44 + 104))(v7, *MEMORY[0x277D85188], v46);
    v42 = *(*v34 + 208);
    v37 = v45;
    v38 = v45;
    v42(v43, v30, &v12[v47], v38, v7, closure #1 in PommesSearchRequestProcessor.handleResponseCaching(siriRequestId:searchResult:pommesResult:), 0);
    outlined consume of Result<PommesResponse, Error>(v37);
    (*(v35 + 8))(v7, v36);
  }

  outlined destroy of PommesSearchRequest(v12, type metadata accessor for PegasusSearchResponse);
LABEL_12:

  v39 = outlined destroy of MediaUserStateCenter?(v21, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  return (*(**(a3 + 40) + 200))(v39);
}

uint64_t closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(void *a1, int a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  v54 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v54 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v54, v10);
  v51 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for PegasusSearchResponse(0);
  v12 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50, v13);
  v55 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v49 - v22;
  v24 = type metadata accessor for PommesSearchRequest(0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_projectBox();
  LODWORD(v56) = a2;
  v53 = a1;
  v31 = a3(a1, a2 & 1);
  (*(*a5 + 152))(v31);
  v32 = *&v29[*(v25 + 60)];

  outlined destroy of PommesSearchRequest(v29, type metadata accessor for PommesSearchRequest);
  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v34 = *(v32 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v30, v23, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  outlined init with copy of MediaUserStateCenter?(v23, v20, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  if ((*(*(v35 - 8) + 48))(v20, 1, v35) == 1)
  {
    v36 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v37 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_8:
    outlined destroy of MediaUserStateCenter?(v20, v36, v37);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v37 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_8;
  }

  v38 = v55;
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v20, v55, type metadata accessor for PegasusSearchResponse);
  if ((v56 & 1) == 0)
  {
    v39 = *(a5 + 32);
    v40 = v51;
    v56 = *(v50 + 20);
    *v51 = 5;
    v41 = v52;
    v42 = v33;
    v43 = v54;
    (*(v52 + 104))(v40, *MEMORY[0x277D85188], v54);
    v44 = *(*v39 + 208);
    v49[1] = *v39 + 208;
    v50 = v44;
    v45 = v53;
    v46 = v53;
    (v50)(v42, v34, v38 + v56, v46, v40, closure #1 in PommesSearchRequestProcessor.handleResponseCaching(siriRequestId:searchResult:pommesResult:), 0);
    outlined consume of Result<PommesResponse, Error>(v45);
    (*(v41 + 8))(v40, v43);
  }

  outlined destroy of PommesSearchRequest(v38, type metadata accessor for PegasusSearchResponse);
LABEL_12:

  v47 = outlined destroy of MediaUserStateCenter?(v23, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  return (*(**(a5 + 40) + 200))(v47);
}

void closure #1 in PommesSearchRequestProcessor.handleResponseCaching(siriRequestId:searchResult:pommesResult:)(char a1, int a2)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    if (a1)
    {
      v8 = 0x6465726F7473;
    }

    else
    {
      v8 = 0x726F747320746F6ELL;
    }

    if (a1)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xEA00000000006465;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2;
    _os_log_impl(&dword_2232BB000, oslog, v5, "PommesSearchRequestProcessor : POMMES response caching complete : %s : %d expired", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DE0F80](v7, -1, -1);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }
}

uint64_t PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v59 = (&v56 - v5);
  v57 = type metadata accessor for PommesSearchRequest(0);
  v6 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v57, v7);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SignpostToken();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search.client", 13, 2u, 0, v23);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v25 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v27 = v26;
  (*(v14 + 8))(v18, v13);
  if (v25 == 0x616964656DLL && v27 == 0xE500000000000000)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
LABEL_22:
      v46 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }
  }

  v30 = v60[3];
  if (!*(v30 + 16))
  {
    goto LABEL_22;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of AppDataProviding(*(v30 + 56) + 40 * v31, &v62);
  outlined init with take of DomainWarmupHandling(&v62, v65);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.pommes);
  outlined init with copy of AppDataProviding(v65, &v62);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = os_log_type_enabled(v34, v35);
  v56 = a1;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61 = v38;
    *v37 = 136315138;
    v39 = v63;
    v40 = v64;
    __swift_project_boxed_opaque_existential_1(&v62, v63);
    v41 = (*(v40 + 8))(v39, v40);
    if (v41)
    {
      v42 = 0x636973756DLL;
    }

    else
    {
      v42 = 1701736302;
    }

    if (v41)
    {
      v43 = 0xE500000000000000;
    }

    else
    {
      v43 = 0xE400000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v61);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_2232BB000, v34, v35, "PommesSearchRequestProcessor#clientSearch searching local %s domain", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x223DE0F80](v38, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  else
  {

    v45 = __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  v47 = v60[6];
  v48 = *(*v60 + 152);
  v48(v45);
  v49 = &v12[*(v57 + 32)];
  v50 = v49[1];
  v57 = *v49;

  v51 = outlined destroy of PommesSearchRequest(v12, type metadata accessor for PommesSearchRequest);
  v52 = v58;
  v48(v51);
  v53 = v59;
  PommesSearchRequest.pommesCandidateId.getter(v59);
  outlined destroy of PommesSearchRequest(v52, type metadata accessor for PommesSearchRequest);
  v54 = type metadata accessor for PommesCandidateId();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  (*(*v47 + 128))(v57, v50, v53, 1);

  outlined destroy of MediaUserStateCenter?(v53, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v46 = PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(v56, v65);
  __swift_destroy_boxed_opaque_existential_1(v65);
LABEL_25:
  OSSignposter.end(token:message:)(v23, 0, 0xE000000000000000);
  outlined destroy of PommesSearchRequest(v23, type metadata accessor for SignpostToken);
  return v46;
}

uint64_t PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(uint64_t a1, void *a2)
{
  v69 = a2;
  v73 = a1;
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PommesCandidateId();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v70 = v13;
  v71 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (v65 - v15);
  v17 = type metadata accessor for PommesSearchRequest(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v74 = v23;
  *(v23 + 16) = MEMORY[0x277D84F90];
  v72 = v23 + 16;
  v24 = *(*v2 + 152);
  v25 = *v2 + 152;
  v24();
  v26 = &v22[*(v18 + 40)];
  v27 = *v26;
  v67 = *(v26 + 1);
  v68 = v27;

  v28 = outlined destroy of PommesSearchRequest(v22, type metadata accessor for PommesSearchRequest);
  v65[1] = v25;
  v66 = v24;
  (v24)(v28);
  PommesSearchRequest.pommesCandidateId.getter(v16);
  outlined destroy of PommesSearchRequest(v22, type metadata accessor for PommesSearchRequest);
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v77 = v2;
  type metadata accessor for PommesSearchRequestProcessor();

  v29 = String.init<A>(describing:)();
  v31 = v30;

  v77 = v29;
  v78 = v31;
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DBF00);
  v32 = v77;
  Date.init()();
  v33 = &v8[v4[7]];
  *v33 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v33 + 1) = 56;
  v33[16] = 2;
  *&v8[v4[8]] = 244;
  v34 = &v8[v4[9]];
  *v34 = "clientSearchForMusic(_:musicDomainClient:)";
  *(v34 + 1) = 42;
  v34[16] = 2;
  v35 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v32);
  v37 = v36;

  v38 = v4[10];
  v76 = v8;
  v39 = &v8[v38];
  *v39 = v35;
  v39[1] = v37;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.pommes);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v77 = v44;
    *v43 = 136315138;
    v45 = MEMORY[0x223DDF850](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v47 = v16;
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v77);

    *(v43 + 4) = v48;
    v16 = v47;
    _os_log_impl(&dword_2232BB000, v41, v42, "PommesSearchRequestProcessor#clientSearchForMusic calling musicDomainClient.search sharedUserIds: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x223DE0F80](v44, -1, -1);
    MEMORY[0x223DE0F80](v43, -1, -1);
  }

  v65[0] = v16;
  v49 = v69[3];
  v50 = v69[4];
  v69 = __swift_project_boxed_opaque_existential_1(v69, v49);
  v66();
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = v75;
  v53 = v71;
  (*(v75 + 16))(v71, v16, v9);
  v54 = (*(v52 + 80) + 40) & ~*(v52 + 80);
  v55 = (v70 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v67;
  v58 = v68;
  *(v56 + 2) = v51;
  *(v56 + 3) = v58;
  *(v56 + 4) = v57;
  (*(v52 + 32))(&v56[v54], v53, v9);
  v59 = v74;
  *&v56[v55] = v74;
  v71 = v9;
  v60 = *(v50 + 24);

  v60(v22, v73, 0, MEMORY[0x277D84F90], partial apply for closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:), v56, v49, v50);

  outlined destroy of PommesSearchRequest(v22, type metadata accessor for PommesSearchRequest);

  swift_beginAccess();
  v61 = *(v59 + 16);
  v62 = one-time initialization token for shared;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = v76;
  (*(*static PerformanceUtil.shared + 184))(v76, 1);
  outlined destroy of PommesSearchRequest(v63, type metadata accessor for PerformanceUtil.Ticket);
  (*(v52 + 8))(v65[0], v71);

  return v61;
}

void closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v38[-1] - v16;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 48);

      v20 = type metadata accessor for PommesCandidateId();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v17, a6, v20);
      (*(v21 + 56))(v17, 0, 1, v20);
      (*(*v19 + 144))(a4, a5, v17, 1);

      outlined destroy of MediaUserStateCenter?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      v38[3] = a1;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v38);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v24, v25, "PommesSearchRequestProcessor#clientSearchForMusic local client search failed : %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + 48);

      v34 = type metadata accessor for PommesCandidateId();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v17, a6, v34);
      (*(v35 + 56))(v17, 0, 1, v34);
      (*(*v33 + 136))(a4, a5, v17);

      outlined destroy of MediaUserStateCenter?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    swift_beginAccess();
    v36 = *(a7 + 16);
    *(a7 + 16) = a1;
  }
}

uint64_t closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v19 - v11;
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = type metadata accessor for ClientExperienceSignals();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, a3, v15);
  (*(v16 + 56))(v12, 0, 1, v15);
  v17 = (*(v13 + 8))(a2, v12, v14, v13);
  result = outlined destroy of MediaUserStateCenter?(v12, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a4 = v17;
  return result;
}

void closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v164 = a8;
  v174 = a7;
  v170 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v165 = &v161 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v175 = &v161 - v19;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v172 = *(Context - 8);
  v20 = *(v172 + 64);
  MEMORY[0x28223BE20](Context, v21);
  v171 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PommesSearchReason();
  v167 = *(v168 - 8);
  v23 = *(v167 + 64);
  MEMORY[0x28223BE20](v168, v24);
  v166 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v178 = (&v161 - v29);
  v183 = type metadata accessor for PommesSearchRequest(0);
  v30 = *(*(v183 - 1) + 64);
  v32 = MEMORY[0x28223BE20](v183, v31);
  v163 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v162 = &v161 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v169 = &v161 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v182 = &v161 - v41;
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v43 = *(v42 - 8);
  v194 = v42;
  v195 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v193 = &v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v51 = MEMORY[0x28223BE20](v47, v50);
  v176 = &v161 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v177 = &v161 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v161 - v57;

  PommesResponse.Builder.experiences.setter();

  PommesResponse.Builder.clientResults.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
  PommesResponse.Builder.conversationContext.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v59 = *(v48 + 8);
  v59(v58, v47);
  PommesResponse.Builder.metadataDomainName.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.isFallbackTriggered.getter();
  v179 = v58;
  v187 = v48 + 8;
  v188 = v47;
  v186 = v59;
  v59(v58, v47);
  PommesResponse.Builder.metadataFallbackTriggered.setter();
  if (a2 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v184 = a5;
    v185 = a4;
    v189 = a1;
    v192 = a2;
    if (!i)
    {
      break;
    }

    a5 = 0;
    a1 = a2 & 0xC000000000000001;
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a1)
      {
        v62 = MEMORY[0x223DDFF80](a5, v192);
      }

      else
      {
        if (a5 >= *(a2 + 16))
        {
          goto LABEL_82;
        }

        v62 = *(v192 + 8 * a5 + 32);
      }

      v63 = v62;
      v64 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      v65 = dispatch thunk of Experience.renderedTexts.getter();

      v66 = *(v65 + 16);
      v67 = *(v61 + 2);
      a4 = v67 + v66;
      if (__OFADD__(v67, v66))
      {
        goto LABEL_83;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && a4 <= *(v61 + 3) >> 1)
      {
        if (*(v65 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v67 <= a4)
        {
          v69 = v67 + v66;
        }

        else
        {
          v69 = v67;
        }

        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v69, 1, v61);
        if (*(v65 + 16))
        {
LABEL_20:
          if ((*(v61 + 3) >> 1) - *(v61 + 2) < v66)
          {
            goto LABEL_91;
          }

          swift_arrayInitWithCopy();

          if (v66)
          {
            v70 = *(v61 + 2);
            v71 = __OFADD__(v70, v66);
            v72 = v70 + v66;
            if (v71)
            {
              goto LABEL_93;
            }

            *(v61 + 2) = v72;
          }

          goto LABEL_6;
        }
      }

      if (v66)
      {
        goto LABEL_84;
      }

LABEL_6:
      ++a5;
      if (v64 == i)
      {
        PommesResponse.Builder.renderedTexts.setter();
        v73 = 0;
        a5 = MEMORY[0x277D84F90];
        while (1)
        {
          if (a1)
          {
            v74 = MEMORY[0x223DDFF80](v73, v192);
          }

          else
          {
            if (v73 >= *(a2 + 16))
            {
              goto LABEL_88;
            }

            v74 = *(v192 + 8 * v73 + 32);
          }

          v75 = v74;
          v76 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_87;
          }

          v77 = dispatch thunk of Experience.redactedRenderedTexts.getter();

          v78 = *(v77 + 16);
          v79 = *(a5 + 2);
          a4 = v79 + v78;
          if (__OFADD__(v79, v78))
          {
            goto LABEL_89;
          }

          v80 = swift_isUniquelyReferenced_nonNull_native();
          if (v80 && a4 <= *(a5 + 3) >> 1)
          {
            if (!*(v77 + 16))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v79 <= a4)
            {
              v81 = v79 + v78;
            }

            else
            {
              v81 = v79;
            }

            a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80, v81, 1, a5);
            if (!*(v77 + 16))
            {
LABEL_26:

              if (v78)
              {
                goto LABEL_90;
              }

              goto LABEL_27;
            }
          }

          if ((*(a5 + 3) >> 1) - *(a5 + 2) < v78)
          {
            goto LABEL_92;
          }

          swift_arrayInitWithCopy();

          if (v78)
          {
            v82 = *(a5 + 2);
            v71 = __OFADD__(v82, v78);
            v83 = v82 + v78;
            if (v71)
            {
              goto LABEL_94;
            }

            *(a5 + 2) = v83;
          }

LABEL_27:
          ++v73;
          if (v76 == i)
          {
            goto LABEL_47;
          }
        }
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    ;
  }

  PommesResponse.Builder.renderedTexts.setter();
LABEL_47:
  PommesResponse.Builder.redactedRenderedTexts.setter();
  v84 = v179;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v85 = v193;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v186(v84, v188);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
  v86 = v194;
  v87 = v195 + 8;
  v88 = *(v195 + 1);
  v88(v85, v194);
  PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v186(v84, v188);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
  v190 = v88;
  v191 = v87;
  v88(v85, v86);
  PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
  if (i)
  {
    v89 = v184;
    if ((v192 & 0xC000000000000001) != 0)
    {
      v90 = MEMORY[0x223DDFF80](0);
    }

    else
    {
      if (!*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_98;
      }

      v90 = *(v192 + 32);
    }

    v91 = v90;
    dispatch thunk of Experience.listenAfterSpeaking.getter();
  }

  else
  {
    v89 = v184;
  }

  v92 = MEMORY[0x277D84F90];
  v93 = PommesResponse.Builder.listenAfterSpeaking.setter();
  v94 = *(*v89 + 152);
  v95 = *v89 + 152;
  v96 = v182;
  v94(v93);
  v97 = (v96 + v183[8]);
  v98 = *v97;
  v99 = v97[1];

  a5 = type metadata accessor for PommesSearchRequest;
  outlined destroy of PommesSearchRequest(v96, type metadata accessor for PommesSearchRequest);
  v100 = PommesResponse.Builder.requestId.setter();
  v180 = v95;
  v181 = v94;
  v94(v100);
  v101 = v178;
  PommesSearchRequest.pommesCandidateId.getter(v178);
  outlined destroy of PommesSearchRequest(v96, type metadata accessor for PommesSearchRequest);
  v102 = type metadata accessor for PommesCandidateId();
  (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
  PommesResponse.Builder.pommesCandidateId.setter();
  PommesResponse.Builder.isHandledByPreflight.setter();
  PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
  v103 = v177;
  a1 = v185;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v104 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v186(v103, v188);
  v105 = *(v104 + 16);
  if (v105)
  {
    v196 = v92;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
    a2 = 0;
    a4 = v196;
    v192 = v104 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
    while (a2 < *(v104 + 16))
    {
      a1 = v105;
      v106 = v194;
      v107 = v193;
      (*(v195 + 2))(v193, v192 + *(v195 + 9) * a2, v194);
      v108 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
      v110 = v109;
      v190(v107, v106);
      v196 = a4;
      a5 = *(a4 + 16);
      v111 = *(a4 + 24);
      if (a5 >= v111 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), (a5 + 1), 1);
        a4 = v196;
      }

      ++a2;
      *(a4 + 16) = a5 + 1;
      v112 = a4 + 16 * a5;
      *(v112 + 32) = v108;
      *(v112 + 40) = v110;
      v105 = a1;
      if (a1 == a2)
      {

        v89 = v184;
        a1 = v185;
        v92 = MEMORY[0x277D84F90];
        goto LABEL_61;
      }
    }

    goto LABEL_85;
  }

LABEL_61:
  PommesResponse.Builder.taskStepLogs.setter();
  v113 = v176;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v114 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v186(v113, v188);
  v115 = *(v114 + 16);
  if (v115)
  {
    v196 = v92;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
    a2 = 0;
    a4 = v196;
    v192 = v114 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
    while (a2 < *(v114 + 16))
    {
      a1 = v115;
      v116 = v194;
      v117 = v193;
      (*(v195 + 2))(v193, v192 + *(v195 + 9) * a2, v194);
      v118 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
      v120 = v119;
      v190(v117, v116);
      v196 = a4;
      a5 = *(a4 + 16);
      v121 = *(a4 + 24);
      if (a5 >= v121 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), (a5 + 1), 1);
        a4 = v196;
      }

      ++a2;
      *(a4 + 16) = a5 + 1;
      v122 = a4 + 16 * a5;
      *(v122 + 32) = v118;
      *(v122 + 40) = v120;
      v115 = a1;
      if (a1 == a2)
      {

        v89 = v184;
        goto LABEL_69;
      }
    }

    goto LABEL_86;
  }

LABEL_69:
  PommesResponse.Builder.userSensitiveTier1Logs.setter();

  v123 = PommesResponse.Builder.componentsWarmedUp.setter();
  v125 = v181;
  v124 = v182;
  v181(v123);
  v126 = v183;
  v127 = *(v124 + v183[20]);
  v195 = type metadata accessor for PommesSearchRequest;
  outlined destroy of PommesSearchRequest(v124, type metadata accessor for PommesSearchRequest);
  v128 = MEMORY[0x277D56668];
  if (!v127)
  {
    v128 = MEMORY[0x277D56670];
  }

  (*(v167 + 104))(v166, *v128, v168);
  v129 = PommesResponse.Builder.searchReason.setter();
  v125(v129);
  v130 = (v124 + v126[5]);
  v131 = *v130;
  v132 = v130[1];

  outlined destroy of PommesSearchRequest(v124, type metadata accessor for PommesSearchRequest);
  PommesResponse.Builder.searchRequestUtterance.setter();
  v133 = v171;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  (*(v172 + 8))(v133, Context);
  PommesResponse.Builder.requestCountryCode.setter();
  closure #3 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)();
  PommesResponse.Builder.requestLocation.setter();
  v134 = PommesResponse.Builder.isCachedResponse.setter();
  v125(v134);
  v135 = (v124 + v126[21]);
  v136 = *v135;
  v137 = v135[1];

  v138 = v195;
  outlined destroy of PommesSearchRequest(v124, v195);
  v139 = PommesResponse.Builder.sharedUserId.setter();
  v140 = v169;
  v125(v139);
  v141 = *(v140 + v126[18]);
  v142 = v141;
  outlined destroy of PommesSearchRequest(v140, v138);
  if (v141)
  {
    v143 = [v142 recognition];

    v144 = v175;
    if (v143)
    {
      v145 = [v143 aceRecognition];

      goto LABEL_75;
    }

LABEL_98:
    __break(1u);
  }

  else
  {
    v144 = v175;
LABEL_75:
    PommesResponse.Builder.asrRecognition.setter();
    closure #4 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v89);
    v146 = PommesResponse.Builder.encodedNLUserParses.setter();
    v147 = v162;
    v181(v146);
    PommesSearchRequest.fallbackParse.getter(v144);
    outlined destroy of PommesSearchRequest(v147, type metadata accessor for PommesSearchRequest);
    v148 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v149 = *(v148 - 8);
    if ((*(v149 + 48))(v144, 1, v148) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v144, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }

    else
    {
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Siri_Nlu_External_DelegatedUserDialogAct and conformance Siri_Nlu_External_DelegatedUserDialogAct, MEMORY[0x277D5DD80]);
      Message.serializedData(partial:)();
      (*(v149 + 8))(v144, v148);
    }

    v150 = PommesResponse.Builder.encodedNLFallbackParse.setter();
    v151 = v181;
    v152 = v182;
    v181(v150);
    PommesSearchRequest.responseVariantResult.getter();
    outlined destroy of PommesSearchRequest(v152, type metadata accessor for PommesSearchRequest);
    PommesResponse.Builder.responseVariantResult.setter();
    v153 = *v164;
    PommesResponse.Builder.isLowConfidenceKnowledgeResult.setter();

    v154 = PommesResponse.Builder.albusMultiturnRewrite.setter();
    v151(v154);
    v155 = v183;
    outlined init with copy of MediaUserStateCenter?(v152 + v183[10], v165, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of PommesSearchRequest(v152, type metadata accessor for PommesSearchRequest);
    PommesResponse.Builder.previousPommesContext.setter();
    v156 = v179;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
    v186(v156, v188);
    PommesResponse.Builder.domainUseCases.setter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.getter();
    Direct = PommesResponse.Builder.isQueryDirectQuestion.setter();
    v158 = v163;
    v151(Direct);
    v159 = *(v158 + v155[13]);

    outlined destroy of PommesSearchRequest(v158, type metadata accessor for PommesSearchRequest);
    if (v159)
    {
      v160 = *(v159 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
    }

    PommesResponse.Builder.isRelatedQuestion.setter();
  }
}

id closure #3 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v7 = *(Context - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Context, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  v12 = Apple_Parsec_Search_PegasusQueryContext.hasLocation.getter();
  v13 = *(v7 + 8);
  v13(v11, Context);
  result = 0;
  if (v12)
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
    Apple_Parsec_Search_PegasusQueryContext.location.getter();
    v15 = (v13)(v11, Context);
    v16 = MEMORY[0x223DDA150](v15);
    Apple_Parsec_Search_V2_Location.longitude.getter();
    v18 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v16 longitude:v17];
    (*(v1 + 8))(v5, v0);
    return v18;
  }

  return result;
}

uint64_t closure #4 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PommesSearchRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = JSONEncoder.init()();
  (*(*a1 + 152))();
  v17 = PommesSearchRequest.userParses.getter();
  outlined destroy of PommesSearchRequest(v12, type metadata accessor for PommesSearchRequest);
  v18 = *(v17 + 16);
  if (v18)
  {
    v34[1] = v17;
    v34[2] = v16;
    v20 = *(v3 + 16);
    v19 = v3 + 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v35 = *(v19 + 56);
    v36 = v20;
    v22 = (v19 - 8);
    v23 = MEMORY[0x277D84F90];
    v34[3] = v19;
    v20(v7, v21, v2);
    while (1)
    {
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
      v24 = Message.serializedData(partial:)();
      v26 = v25;
      (*v22)(v7, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v27 = v23;
      v28 = *(v23 + 2);
      v29 = v27;
      v30 = *(v27 + 3);
      if (v28 >= v30 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 1, 1, v29);
      }

      *(v29 + 2) = v28 + 1;
      v31 = &v29[16 * v28];
      v23 = v29;
      *(v31 + 4) = v24;
      *(v31 + 5) = v26;
      v21 += v35;
      if (!--v18)
      {
        break;
      }

      v36(v7, v21, v2);
    }

    if (!*(v23 + 2))
    {
      goto LABEL_14;
    }

LABEL_13:
    v37 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [Data] and conformance <A> [A]();
    v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();

    return v32;
  }

  v23 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_13;
  }

LABEL_14:

  return 0;
}

uint64_t closure #1 in PommesSearchRequestProcessor.handleFailure(with:completion:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, MEMORY[0x277D38D90]);
  static Message.with(_:)();
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
}

void *PommesSearchRequestProcessor.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  outlined destroy of PommesSearchRequest(v0 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager);

  v7 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels);

  return v0;
}

uint64_t PommesSearchRequestProcessor.__deallocating_deinit()
{
  PommesSearchRequestProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CurrentDevice.supportsGenerativeModelSystems.getter()
{
  v0 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DBDD0);
  v1 = MGGetBoolAnswer();

  return v1;
}

uint64_t outlined init with copy of PommesSearchRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Int partial apply for closure #1 in PommesSearchRequestProcessor.search_sync(completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SignpostToken() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = *(v1 + v9);
  v12 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in PommesSearchRequestProcessor.search_sync(completion:)(a1, v1 + v4, v1 + v7);
}

void specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(NSObject *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v352 = a3;
  v345 = a1;
  v350 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v361 = *(v350 - 8);
  v12 = *(v361 + 64);
  v14 = MEMORY[0x28223BE20](v350, v13);
  v314 = &v312 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v364 = &v312 - v17;
  v365 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v356 = *(v365 - 1);
  v18 = *(v356 + 64);
  v20 = MEMORY[0x28223BE20](v365, v19);
  v313 = &v312 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v362 = &v312 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v353 = &v312 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v363 = (&v312 - v30);
  MEMORY[0x28223BE20](v29, v31);
  v316 = &v312 - v32;
  v359 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v315 = *(v359 - 8);
  v33 = *(v315 + 64);
  MEMORY[0x28223BE20](v359, v34);
  v358 = (&v312 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v354 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v360 = *(v354 - 8);
  v36 = *(v360 + 8);
  MEMORY[0x28223BE20](v354, v37);
  v351 = (&v312 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v342 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v341 = *(v342 - 8);
  v39 = v341[8];
  v41 = MEMORY[0x28223BE20](v342, v40);
  v318 = &v312 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v340 = &v312 - v44;
  v327 = type metadata accessor for Date();
  v326 = *(v327 - 8);
  v45 = *(v326 + 64);
  MEMORY[0x28223BE20](v327, v46);
  v325 = &v312 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for ClientExperienceSignals();
  v322 = *(v323 - 8);
  v48 = *(v322 + 64);
  MEMORY[0x28223BE20](v323, v49);
  v346 = &v312 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for PommesSearchRequest(0);
  v51 = *(*(v319 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v319, v52);
  v317 = &v312 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v55);
  v324 = &v312 - v56;
  v343 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v338 = *(v343 - 8);
  v57 = *(v338 + 64);
  MEMORY[0x28223BE20](v343, v58);
  v335 = (&v312 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v337 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  isa = v337[-1].isa;
  v60 = *(isa + 8);
  MEMORY[0x28223BE20](v337, v61);
  v334 = &v312 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v67 = MEMORY[0x28223BE20](v63, v66);
  v339 = &v312 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v67, v69);
  v332 = &v312 - v71;
  v73 = MEMORY[0x28223BE20](v70, v72);
  v321 = &v312 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v320 = &v312 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v81 = &v312 - v80;
  MEMORY[0x28223BE20](v79, v82);
  v84 = &v312 - v83;
  v85 = swift_allocObject();
  v328 = a4;
  v85[2] = a4;
  v85[3] = a5;
  v85[4] = a6;
  v85[5] = a7;
  v333 = v85;
  v371[3] = &type metadata for CallBusinessNoResultsExperiencesResolver;
  v371[4] = &protocol witness table for CallBusinessNoResultsExperiencesResolver;
  v371[0] = a2;
  v86 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v349 = v64;
  v89 = *(v64 + 16);
  v87 = v64 + 16;
  v88 = v89;
  (v89)(v84, v345 + v86, v63);
  v90 = one-time initialization token for pommes;
  v329 = a5;

  v330 = a6;

  v331 = a7;

  if (v90 != -1)
  {
LABEL_49:
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  v92 = __swift_project_value_buffer(v91, static Logger.pommes);
  v355 = v84;
  v348 = v87;
  (v88)(v81, v84, v63);
  v357 = v92;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  v95 = os_log_type_enabled(v93, v94);
  v347 = v88;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v368[0] = v97;
    *v96 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v98 = Message.textFormatString()();
    v344 = *(v349 + 8);
    v344(v81, v63);
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98._countAndFlagsBits, v98._object, v368);

    *(v96 + 4) = v99;
    _os_log_impl(&dword_2232BB000, v93, v94, "PireneResponse: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x223DE0F80](v97, -1, -1);
    MEMORY[0x223DE0F80](v96, -1, -1);
  }

  else
  {

    v344 = *(v349 + 8);
    v344(v81, v63);
  }

  v100 = v343;
  v101 = v338;
  v102 = v337;
  v103 = isa;
  v104 = v335;
  v105 = v334;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v106 = (*(v103 + 1))(v105, v102);
  v107 = MEMORY[0x223DDBA80](v106);
  (*(v101 + 8))(v104, v100);
  v108 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v343 = v63;
  if (v108)
  {
    v109 = *(v107 + 16);
    v110 = v346;
    if (v109)
    {
      *&v368[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
      v81 = *&v368[0];
      v111 = *(v361 + 16);
      v112 = (*(v361 + 80) + 32) & ~*(v361 + 80);
      v341 = v107;
      v113 = v107 + v112;
      v114 = *(v361 + 72);
      v361 += 16;
      v358 = (v361 - 8);
      v354 = v356 + 32;
      v339 = (v107 + v112);
      v340 = v109;
      v115 = v109;
      v87 = v350;
      v84 = v316;
      v360 = v111;
      v359 = v114;
      do
      {
        v116 = v364;
        v117 = (v111)(v364, v113, v87);
        MEMORY[0x223DDBB90](v117);
        v118 = *v358;
        (*v358)(v116, v87);
        *&v368[0] = v81;
        v120 = *(v81 + 16);
        v119 = *(v81 + 24);
        if (v120 >= v119 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v119 > 1, v120 + 1, 1);
          v81 = *&v368[0];
        }

        *(v81 + 16) = v120 + 1;
        v121 = (v81 + ((*(v356 + 80) + 32) & ~*(v356 + 80)));
        v122 = *(v356 + 72);
        (*(v356 + 32))(v121 + v122 * v120, v84, v365);
        v113 += v359;
        --v115;
        v111 = v360;
      }

      while (v115);
      v347 = v121;
      v348 = v120 + 1;
      v354 = v81;
      v351 = v118;
      v63 = v352;
      v346 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v124 = 0;
      v364 = v356 + 16;
      v125 = (v356 + 8);
      *&v126 = 134218240;
      v342 = v126;
      v88 = v365;
      v127 = v353;
      v128 = v363;
      while (v124 != v348)
      {
        if (v124 >= *(v354 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v356 = v124;
        v131 = *v364;
        (*v364)(v128, v347 + v124 * v122, v88);
        v132 = *&v346[v63];
        if (*(v132 + 16))
        {
          v133 = *(v132 + 40);
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);

          v134 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v135 = -1 << *(v132 + 32);
          v136 = v134 & ~v135;
          if ((*(v132 + 56 + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v136))
          {
            v137 = ~v135;
            v138 = v362;
            do
            {
              v139 = v365;
              v131(v138, *(v132 + 48) + v136 * v122, v365);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
              v81 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v125)(v138, v139);
              if (v81)
              {
                break;
              }

              v136 = (v136 + 1) & v137;
              v138 = v362;
            }

            while (((*(v132 + 56 + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v136) & 1) != 0);
          }

          else
          {
            v81 = 0;
          }

          v127 = v353;
          v128 = v363;
        }

        else
        {
          v81 = 0;
        }

        v88 = v365;
        v131(v127, v128, v365);
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = v342;
          v345 = v140;
          v143 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v129 = *v125;
          (*v125)(v127, v88);
          *(v142 + 4) = v143;
          v140 = v345;
          *(v142 + 12) = 1024;
          *(v142 + 14) = v81 & 1;
          _os_log_impl(&dword_2232BB000, v140, v141, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v142, 0x12u);
          MEMORY[0x223DE0F80](v142, -1, -1);
        }

        else
        {
          v129 = *v125;
          (*v125)(v127, v88);
        }

        v63 = v352;
        v130 = v356 + 1;

        v128 = v363;
        v129(v363, v88);
        v124 = v130;
        v84 = v355;
        v87 = v350;
        v127 = v353;
        if (v81)
        {

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 0;
            _os_log_impl(&dword_2232BB000, v196, v197, "Already attempted profile slice resolution; yielding error response", v198, 2u);
            MEMORY[0x223DE0F80](v198, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v199 = swift_allocError();
          *v200 = 69;
          closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v199, 1, v328, v329, v330);

          v192 = v343;
          goto LABEL_88;
        }
      }

      v365 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      v176 = v314;
      v177 = v313;
      v178 = v362;
      v179 = v340;
      v180 = v63;
      v181 = v339;
      do
      {
        v182 = (v360)(v176, v181, v87);
        MEMORY[0x223DDBB90](v182);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v178, v177);
        (*v125)(v178, v88);
        swift_endAccess();
        v351(v176, v87);
        v181 += v359;
        --v179;
      }

      while (v179);
      v183 = v180;
      v184 = v341;

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v366 = v188;
        *v187 = 136315138;
        v189 = MEMORY[0x223DDF850](v184, v87);
        v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v190, &v366);

        *(v187 + 4) = v191;
        _os_log_impl(&dword_2232BB000, v185, v186, "Adding profile slice resolution requests: %s", v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v188);
        MEMORY[0x223DE0F80](v188, -1, -1);
        MEMORY[0x223DE0F80](v187, -1, -1);
      }

      v192 = v343;
      v84 = v355;
      v193 = v183 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      v194 = *(v319 + 92);
      v195 = *(v193 + v194);
      *(v193 + v194) = v184;

      (*(*v183 + 224))(closure #4 in PommesSearchRequestProcessor.search_sync(completion:)partial apply, v333);
      goto LABEL_88;
    }
  }

  else
  {

    v110 = v346;
  }

  v144 = v352;
  v145 = v352[5];
  v146 = *(*v352 + 152);
  v147 = *v352 + 152;
  v148 = v324;
  (v146)(v123);
  v149 = v355;
  v361 = (*(*v145 + 168))(v148, v355);
  v150 = outlined destroy of PommesSearchRequest(v148, type metadata accessor for PommesSearchRequest);
  v151 = v144[2];
  v364 = v147;
  v365 = v146;
  (v146)(v150);
  (*(*v151 + 712))(v148);
  v152 = outlined destroy of PommesSearchRequest(v148, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v152 = swift_once();
  }

  v154 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v152, v153);
  v308 = v371;
  v309 = v149;
  v310 = v110;
  v155 = v325;
  Date.init()();
  v156 = *(*v154 + 200);
  v310 = v307;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v308) = 2;
  v156(v368, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v155, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v308, closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)partial apply);
  (*(v326 + 8))(v155, v327);
  v157 = *&v368[0];
  v158 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v149);
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();
  v161 = os_log_type_enabled(v159, v160);
  v356 = v158;
  if (v161)
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *&v368[0] = v163;
    *v162 = 136315138;
    v164 = type metadata accessor for PommesResult();
    v165 = MEMORY[0x223DDF870](v158, v164);
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v368);

    *(v162 + 4) = v167;
    _os_log_impl(&dword_2232BB000, v159, v160, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v162, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v163);
    MEMORY[0x223DE0F80](v163, -1, -1);
    MEMORY[0x223DE0F80](v162, -1, -1);
  }

  if (!(v157 >> 62))
  {
    if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_51:
    v171 = 0xE700000000000000;
    v169 = 0x6E776F6E6B6E55;
    v175 = 0;
    goto LABEL_52;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v157 & 0xC000000000000001) != 0)
  {
    v305 = MEMORY[0x223DDFF80](0, v157);
    v169 = dispatch thunk of Experience.pluginIdentifier.getter();
    v171 = v306;

    v172 = MEMORY[0x223DDFF80](0, v157);
    goto LABEL_39;
  }

  if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v168 = v157[4];
    v169 = dispatch thunk of Experience.pluginIdentifier.getter();
    v171 = v170;

    if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v172 = v157[4];
LABEL_39:
      v173 = v172;
      dispatch thunk of Experience.queryConfidence.getter();
      v175 = v174;

LABEL_52:

      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *&v368[0] = v204;
        *v203 = 136315394;
        v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, v368);

        *(v203 + 4) = v205;
        *(v203 + 12) = 2048;
        *(v203 + 14) = v175;
        _os_log_impl(&dword_2232BB000, v201, v202, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v203, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v204);
        MEMORY[0x223DE0F80](v204, -1, -1);
        MEMORY[0x223DE0F80](v203, -1, -1);
      }

      else
      {
      }

      v206 = v343;
      v207 = v347;
      v208 = v320;
      (v347)(v320, v355, v343);
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        *v211 = 67109120;
        v212 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v344(v208, v206);
        *(v211 + 4) = v212;
        _os_log_impl(&dword_2232BB000, v209, v210, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v211, 8u);
        MEMORY[0x223DE0F80](v211, -1, -1);
      }

      else
      {
        v344(v208, v206);
      }

      v353 = v157;

      v213 = v355;
      v370 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v214 = v340;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v338 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v350 = v215;
      v217 = v341 + 1;
      v216 = v341[1];
      v218 = v342;
      (v216)(v214, v342);
      v219 = v321;
      (v207)(v321, v213, v206);
      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();
      v222 = os_log_type_enabled(v220, v221);
      v362 = v216;
      if (v222)
      {
        v223 = swift_slowAlloc();
        v341 = v223;
        v363 = swift_slowAlloc();
        *&v368[0] = v363;
        *v223 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v224 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v225 = v206;
        v227 = v226;
        v228 = v218;
        v229 = v217;
        (v216)(v214, v228);
        v344(v219, v225);
        v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v227, v368);

        v231 = v341;
        *(v341 + 4) = v230;
        v232 = v231;
        _os_log_impl(&dword_2232BB000, v220, v221, "got albusMultiturnRewrite as: %s", v231, 0xCu);
        v233 = v363;
        __swift_destroy_boxed_opaque_existential_1(v363);
        v207 = v347;
        MEMORY[0x223DE0F80](v233, -1, -1);
        MEMORY[0x223DE0F80](v232, -1, -1);
      }

      else
      {
        v229 = v217;

        v344(v219, v206);
      }

      v234 = v339;

      v235 = Logger.logObject.getter();
      v236 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        *&v368[0] = v238;
        *v237 = 136315138;
        v239 = v317;
        v365();
        v240 = *(v239 + *(v319 + 52));

        outlined destroy of PommesSearchRequest(v239, type metadata accessor for PommesSearchRequest);
        if (v240)
        {
          v241 = *(v240 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v241 = 2;
        }

        v242 = v229;
        LOBYTE(v366) = v241;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v243 = String.init<A>(describing:)();
        v245 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v243, v244, v368);

        *(v237 + 4) = v245;
        _os_log_impl(&dword_2232BB000, v235, v236, "got isRelatedQuestion as: %s", v237, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v238);
        MEMORY[0x223DE0F80](v238, -1, -1);
        MEMORY[0x223DE0F80](v237, -1, -1);

        v207 = v347;
      }

      else
      {

        v242 = v229;
      }

      v246 = v332;
      v247 = v362;
      v192 = v343;
      (v207)(v332, v355, v343);
      v248 = Logger.logObject.getter();
      v249 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v248, v249))
      {
        LODWORD(isa) = v249;
        v337 = v248;
        v250 = swift_slowAlloc();
        v335 = swift_slowAlloc();
        v366 = v335;
        *v250 = 136315138;
        v251 = v318;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v252 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v253 = v251;
        v254 = v252;
        v247(v253, v342);
        v255 = *(v254 + 16);
        if (v255)
        {
          v334 = v250;
          v341 = v242;
          v367 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v255, 0);
          v256 = v367;
          v365 = *(v360 + 2);
          v257 = (v360[80] + 32) & ~v360[80];
          v327 = v254;
          v258 = v254 + v257;
          v364 = *(v360 + 9);
          v363 = (v315 + 8);
          v360 += 16;
          v259 = (v360 - 8);
          do
          {
            v260 = v351;
            v261 = v354;
            (v365)(v351, v258, v354);
            *&v368[0] = 0;
            *(&v368[0] + 1) = 0xE000000000000000;
            v262 = v358;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v263 = v359;
            _print_unlocked<A, B>(_:_:)();
            (*v363)(v262, v263);
            v264 = v368[0];
            (*v259)(v260, v261);
            v367 = v256;
            v266 = *(v256 + 16);
            v265 = *(v256 + 24);
            if (v266 >= v265 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v265 > 1), v266 + 1, 1);
              v256 = v367;
            }

            *(v256 + 16) = v266 + 1;
            *(v256 + 16 * v266 + 32) = v264;
            v258 += v364;
            --v255;
          }

          while (v255);

          v192 = v343;
          v246 = v332;
          v247 = v362;
          v250 = v334;
        }

        else
        {

          v256 = MEMORY[0x277D84F90];
        }

        v267 = MEMORY[0x223DDF850](v256, MEMORY[0x277D837D0]);
        v269 = v268;

        v344(v246, v192);
        v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, v269, &v366);

        *(v250 + 4) = v270;
        v271 = v337;
        _os_log_impl(&dword_2232BB000, v337, isa, "got usecases as: %s", v250, 0xCu);
        v272 = v335;
        __swift_destroy_boxed_opaque_existential_1(v335);
        MEMORY[0x223DE0F80](v272, -1, -1);
        MEMORY[0x223DE0F80](v250, -1, -1);

        v234 = v339;
        v207 = v347;
      }

      else
      {

        v344(v246, v192);
      }

      (v207)(v234, v355, v192);
      v273 = Logger.logObject.getter();
      v274 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v273, v274))
      {
        v275 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        *&v368[0] = v276;
        *v275 = 136315138;
        v277 = v247;
        v278 = v340;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v279 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v281 = v280;
        v277(v278, v342);
        v344(v234, v343);
        v282 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v279, v281, v368);
        v192 = v343;

        *(v275 + 4) = v282;
        _os_log_impl(&dword_2232BB000, v273, v274, "got domain as: %s", v275, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v276);
        MEMORY[0x223DE0F80](v276, -1, -1);
        MEMORY[0x223DE0F80](v275, -1, -1);
      }

      else
      {

        v344(v234, v192);
      }

      v283 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v283, v284);
      v285 = v356;
      *(&v312 - 10) = v353;
      *(&v312 - 9) = v285;
      v84 = v355;
      v286 = v352;
      *(&v312 - 8) = v355;
      *(&v312 - 7) = v286;
      v307[0] = v361;
      v307[1] = v345;
      v308 = &v370;
      v309 = v338;
      v310 = v350;
      v287 = PommesResponse.__allocating_init(_:)();

      if (v287)
      {
        v288 = v287;
        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v289, v290))
        {
          v291 = swift_slowAlloc();
          v292 = swift_slowAlloc();
          *&v368[0] = v292;
          *v291 = 136315138;
          v293 = [v288 debugDescription];
          v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v296 = v295;

          v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v296, v368);
          v84 = v355;

          *(v291 + 4) = v297;
          _os_log_impl(&dword_2232BB000, v289, v290, "PommesSearchRequestProcessor#handleSuccess response: %s", v291, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v292);
          v298 = v292;
          v192 = v343;
          MEMORY[0x223DE0F80](v298, -1, -1);
          MEMORY[0x223DE0F80](v291, -1, -1);
        }

        v369 = 0;
        memset(v368, 0, sizeof(v368));
        static CurareDonation.donateCurareInfo(for:with:into:)(v84, v288, v368);
        outlined destroy of MediaUserStateCenter?(v368, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v299 = v288;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v287, 0, v328, v329, v330);
      }

      else
      {
        v300 = Logger.logObject.getter();
        v301 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v300, v301))
        {
          v302 = swift_slowAlloc();
          *v302 = 0;
          _os_log_impl(&dword_2232BB000, v300, v301, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v302, 2u);
          MEMORY[0x223DE0F80](v302, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v303 = swift_allocError();
        *v304 = 0x80;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v303, 1, v328, v329, v330);
      }

      (*(v322 + 8))(v346, v323);
LABEL_88:
      v344(v84, v192);
      __swift_destroy_boxed_opaque_existential_1(v371);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(unsigned __int8 a1, void *a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v113 = a6;
  v114 = a5;
  v115 = a4;
  v111 = a2;
  v112 = a3;
  v107 = type metadata accessor for PegasusSearchResponse(0);
  v7 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v8);
  v109 = (&v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v108 = *(v110 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v110, v11);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v105 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v106 = &v101 - v20;
  v21 = type metadata accessor for NLXResultCandidate();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = (&v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v101 - v34;
  v36 = type metadata accessor for PommesSearchRequest(0);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v101 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v101 - v44;
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v101 - v47;
  if (a1 <= 5u)
  {
    if (a1 <= 2u)
    {
      v49 = v112;
      if (a1)
      {
        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v51 = swift_allocError();
        if (a1 == 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = -126;
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v49 = v112;
    if (a1 - 4 < 2)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v51 = swift_allocError();
      v52 = 68;
      goto LABEL_12;
    }

LABEL_11:
    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v51 = swift_allocError();
    v52 = 67;
    goto LABEL_12;
  }

  if (a1 > 8u)
  {
    if (a1 == 9)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v51 = swift_allocError();
      v59 = 3;
      goto LABEL_20;
    }

    if (a1 == 10)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v51 = swift_allocError();
      v59 = 4;
LABEL_20:
      *v58 = v59;
      v53 = v115;

      v54 = v114;

      v55 = v51;
      v56 = v112;
      goto LABEL_13;
    }

    v102 = v13;
    v60 = (*v111 + 152);
    v61 = *v60;
    v101 = v30;
    v62 = v60;

    v103 = v62;
    v104 = v61;
    (v61)(v63);
    LOBYTE(v61) = v48[*(v36 + 80)];
    v64 = outlined destroy of PommesSearchRequest(v48, type metadata accessor for PommesSearchRequest);
    if ((v61 & 1) == 0)
    {
      goto LABEL_38;
    }

    v65 = v104;
    (v104)(v64);
    outlined init with copy of MediaUserStateCenter?(&v45[*(v36 + 40)], v35, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of PommesSearchRequest(v45, type metadata accessor for PommesSearchRequest);
    v66 = type metadata accessor for PommesContext();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v35, 1, v66) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v35, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
LABEL_38:
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v86 = swift_allocError();
      *v87 = -127;
      closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v86, 1, v112, v115, v114);

LABEL_39:
    }

    v68 = PommesContext.domain.getter();
    v70 = v69;
    (*(v67 + 8))(v35, v66);
    if (!v70)
    {
      goto LABEL_38;
    }

    if (v68 == 0x656E6F6870 && v70 == 0xE500000000000000)
    {
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v71 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_2232BB000, v73, v74, "Handling no results from fallback request for phone domain as successful", v75, 2u);
      MEMORY[0x223DE0F80](v75, -1, -1);
    }

    v65();
    v76 = v101;
    outlined init with copy of PommesSearchRequest(v41, v101, type metadata accessor for PommesSearchRequest.ParseState);
    outlined destroy of PommesSearchRequest(v41, type metadata accessor for PommesSearchRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v78 = v76[1];

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v79 = v76[3];

        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
        v81 = v106;
        outlined init with take of TCUMappedNLResponse?(v76 + *(v80 + 64), v106);
        v82 = v105;
        outlined init with copy of MediaUserStateCenter?(v81, v105, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v83 = type metadata accessor for TCUMappedNLResponse();
        v84 = *(v83 - 8);
        if ((*(v84 + 48))(v82, 1, v83) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v82, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          v85 = MEMORY[0x277D84F90];
        }

        else
        {
          v96 = TCUMappedNLResponse.nlResponse.getter();
          (*(v84 + 8))(v82, v83);
          v85 = NLParseResponse.userParses.getter();
        }

        v95 = v108;
        v94 = v109;
        outlined destroy of MediaUserStateCenter?(v81, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v92 = v112;
        v93 = v110;
        goto LABEL_45;
      }

      v85 = v76[2];
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v90 = *(v89 + 64);
      v91 = *(v76 + *(v89 + 80) + 8);

      outlined destroy of MediaUserStateCenter?(v76 + v90, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }

    else
    {
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v76 + *(v88 + 48), v25, type metadata accessor for NLXResultCandidate);
      v85 = *v25;

      outlined destroy of PommesSearchRequest(v25, type metadata accessor for NLXResultCandidate);
    }

    v92 = v112;
    v94 = v109;
    v93 = v110;
    v95 = v108;
LABEL_45:
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v97 = v102;
    static Message.with(_:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.init()();
    (*(v95 + 16))(v94 + *(v107 + 20), v97, v93);
    v98 = v115;

    v99 = v114;

    v100 = v113;

    specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v94, v85, v111, v92, v98, v99, v100);

    outlined destroy of PommesSearchRequest(v94, type metadata accessor for PegasusSearchResponse);
    (*(v95 + 8))(v97, v93);
    goto LABEL_39;
  }

  v49 = v112;
  if (a1 - 7 < 2)
  {
    goto LABEL_11;
  }

  lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
  v51 = swift_allocError();
  v52 = 69;
LABEL_12:
  *v50 = v52;
  v53 = v115;

  v54 = v114;

  v55 = v51;
  v56 = v49;
LABEL_13:
  closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v55, 1, v56, v53, v54);
}

void specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(NSObject *a1, uint64_t a2, char *a3, uint64_t (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v350 = a3;
  v343 = a1;
  v348 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v359 = *(v348 - 8);
  v12 = *(v359 + 64);
  v14 = MEMORY[0x28223BE20](v348, v13);
  v313 = &v312 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v362 = &v312 - v17;
  v363 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v354 = *(v363 - 1);
  v18 = *(v354 + 64);
  v20 = MEMORY[0x28223BE20](v363, v19);
  v312 = &v312 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v360 = &v312 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v351 = &v312 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v361 = (&v312 - v30);
  MEMORY[0x28223BE20](v29, v31);
  v315 = &v312 - v32;
  v357 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v314 = *(v357 - 8);
  v33 = *(v314 + 64);
  MEMORY[0x28223BE20](v357, v34);
  v356 = (&v312 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v352 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v358 = *(v352 - 8);
  v36 = *(v358 + 8);
  MEMORY[0x28223BE20](v352, v37);
  v349 = (&v312 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v340 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v339 = *(v340 - 8);
  v39 = v339[8];
  v41 = MEMORY[0x28223BE20](v340, v40);
  v317 = &v312 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v338 = &v312 - v44;
  v326 = type metadata accessor for Date();
  v325 = *(v326 - 8);
  v45 = *(v325 + 64);
  MEMORY[0x28223BE20](v326, v46);
  v324 = &v312 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for ClientExperienceSignals();
  v321 = *(v322 - 8);
  v48 = *(v321 + 64);
  MEMORY[0x28223BE20](v322, v49);
  v344 = &v312 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for PommesSearchRequest(0);
  v51 = *(*(v318 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v318, v52);
  v316 = &v312 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v55);
  v323 = &v312 - v56;
  v341 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v336 = *(v341 - 8);
  v57 = *(v336 + 64);
  MEMORY[0x28223BE20](v341, v58);
  v335 = (&v312 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v334 = *(v60 - 8);
  v61 = *(v334 + 64);
  MEMORY[0x28223BE20](v60, v62);
  v333 = (&v312 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  v68 = MEMORY[0x28223BE20](v64, v67);
  v337 = &v312 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v331 = &v312 - v72;
  v74 = MEMORY[0x28223BE20](v71, v73);
  v320 = &v312 - v75;
  v77 = MEMORY[0x28223BE20](v74, v76);
  v319 = &v312 - v78;
  v80 = MEMORY[0x28223BE20](v77, v79);
  v82 = &v312 - v81;
  MEMORY[0x28223BE20](v80, v83);
  v85 = &v312 - v84;
  v86 = swift_allocObject();
  v327 = a4;
  v86[2] = a4;
  v86[3] = a5;
  v86[4] = a6;
  v86[5] = a7;
  v332 = v86;
  v369[3] = &type metadata for DefaultExperiencesResolver;
  v369[4] = &protocol witness table for DefaultExperiencesResolver;
  v369[0] = swift_allocObject();
  outlined init with copy of DefaultExperiencesResolver(a2, v369[0] + 16);
  v87 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v347 = v65;
  v90 = *(v65 + 16);
  v89 = v65 + 16;
  v88 = v90;
  (v90)(v85, v343 + v87, v64);
  v91 = one-time initialization token for pommes;
  v328 = a5;

  v329 = a6;

  v330 = a7;

  if (v91 != -1)
  {
LABEL_49:
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  v93 = __swift_project_value_buffer(v92, static Logger.pommes);
  v353 = v85;
  v346 = v89;
  (v88)(v82, v85, v64);
  v355 = v93;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();
  v96 = os_log_type_enabled(v94, v95);
  v97 = v64;
  v345 = v88;
  if (v96)
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v366[0] = v99;
    *v98 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v100 = Message.textFormatString()();
    v342 = *(v347 + 8);
    v342(v82, v97);
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100._countAndFlagsBits, v100._object, v366);

    *(v98 + 4) = v101;
    _os_log_impl(&dword_2232BB000, v94, v95, "PireneResponse: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x223DE0F80](v99, -1, -1);
    MEMORY[0x223DE0F80](v98, -1, -1);
  }

  else
  {

    v342 = *(v347 + 8);
    v342(v82, v64);
  }

  v102 = v341;
  v103 = v336;
  v104 = v335;
  v105 = v334;
  v106 = v333;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v107 = (*(v105 + 8))(v106, v60);
  v108 = MEMORY[0x223DDBA80](v107);
  (*(v103 + 8))(v104, v102);
  v109 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v341 = v97;
  if (v109)
  {
    v110 = *(v108 + 16);
    v111 = v344;
    if (v110)
    {
      *&v366[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110, 0);
      v60 = *&v366[0];
      v112 = *(v359 + 16);
      v113 = (*(v359 + 80) + 32) & ~*(v359 + 80);
      v339 = v108;
      v114 = v108 + v113;
      v115 = *(v359 + 72);
      v359 += 16;
      v356 = (v359 - 8);
      v352 = v354 + 32;
      v337 = (v108 + v113);
      v338 = v110;
      v116 = v110;
      v89 = v348;
      v85 = v315;
      v358 = v112;
      v357 = v115;
      do
      {
        v117 = v362;
        v118 = (v112)(v362, v114, v89);
        MEMORY[0x223DDBB90](v118);
        v119 = *v356;
        (*v356)(v117, v89);
        *&v366[0] = v60;
        v121 = *(v60 + 16);
        v120 = *(v60 + 24);
        v122 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1);
          v60 = *&v366[0];
        }

        *(v60 + 16) = v122;
        v123 = (v60 + ((*(v354 + 80) + 32) & ~*(v354 + 80)));
        v124 = *(v354 + 72);
        (*(v354 + 32))(&v123[v124 * v121], v85, v363);
        v88 = v357;
        v114 += v357;
        --v116;
        v112 = v358;
      }

      while (v116);
      v345 = v123;
      v346 = v122;
      v352 = v60;
      v349 = v119;
      v82 = v350;
      v344 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v126 = 0;
      v362 = v354 + 16;
      v127 = (v354 + 8);
      *&v128 = 134218240;
      v340 = v128;
      v64 = v363;
      v129 = v351;
      v130 = v361;
      while (v126 != v346)
      {
        if (v126 >= *(v352 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v354 = v126;
        v88 = *v362;
        (*v362)(v130, &v345[v126 * v124], v64);
        v133 = *&v344[v82];
        if (*(v133 + 16))
        {
          v134 = *(v133 + 40);
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);

          v135 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v136 = -1 << *(v133 + 32);
          v137 = v135 & ~v136;
          if ((*(v133 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137))
          {
            v138 = ~v136;
            v139 = v360;
            do
            {
              v140 = v363;
              (v88)(v139, *(v133 + 48) + v137 * v124, v363);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
              v60 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v127)(v139, v140);
              if (v60)
              {
                break;
              }

              v137 = (v137 + 1) & v138;
              v139 = v360;
            }

            while (((*(v133 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) != 0);
          }

          else
          {
            v60 = 0;
          }

          v129 = v351;
          v130 = v361;
        }

        else
        {
          v60 = 0;
        }

        v64 = v363;
        (v88)(v129, v130, v363);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v88 = swift_slowAlloc();
          *v88 = v340;
          v343 = v141;
          v143 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v131 = *v127;
          (*v127)(v129, v64);
          *(v88 + 4) = v143;
          v141 = v343;
          *(v88 + 6) = 1024;
          *(v88 + 14) = v60 & 1;
          _os_log_impl(&dword_2232BB000, v141, v142, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v88, 0x12u);
          MEMORY[0x223DE0F80](v88, -1, -1);
        }

        else
        {
          v131 = *v127;
          (*v127)(v129, v64);
        }

        v82 = v350;
        v132 = v354 + 1;

        v130 = v361;
        v131(v361, v64);
        v126 = v132;
        v85 = v353;
        v89 = v348;
        v129 = v351;
        if (v60)
        {

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 0;
            _os_log_impl(&dword_2232BB000, v196, v197, "Already attempted profile slice resolution; yielding error response", v198, 2u);
            MEMORY[0x223DE0F80](v198, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v199 = swift_allocError();
          *v200 = 69;
          closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v199, 1, v327, v328, v329);

          v192 = v341;
          goto LABEL_88;
        }
      }

      v363 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      v176 = v313;
      v177 = v312;
      v178 = v360;
      v179 = v338;
      v180 = v82;
      v181 = v337;
      do
      {
        v182 = (v358)(v176, v181, v89);
        MEMORY[0x223DDBB90](v182);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v178, v177);
        (*v127)(v178, v64);
        swift_endAccess();
        v349(v176, v89);
        v181 += v357;
        --v179;
      }

      while (v179);
      v183 = v180;
      v184 = v339;

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v364 = v188;
        *v187 = 136315138;
        v189 = MEMORY[0x223DDF850](v184, v89);
        v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v190, &v364);

        *(v187 + 4) = v191;
        _os_log_impl(&dword_2232BB000, v185, v186, "Adding profile slice resolution requests: %s", v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v188);
        MEMORY[0x223DE0F80](v188, -1, -1);
        MEMORY[0x223DE0F80](v187, -1, -1);
      }

      v192 = v341;
      v85 = v353;
      v193 = &v183[OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest];
      swift_beginAccess();
      v194 = *(v318 + 92);
      v195 = *&v193[v194];
      *&v193[v194] = v184;

      (*(*v183 + 224))(partial apply for closure #4 in PommesSearchRequestProcessor.search_sync(completion:), v332);
      goto LABEL_88;
    }
  }

  else
  {

    v111 = v344;
  }

  v144 = v350;
  v145 = *(v350 + 5);
  v146 = *(*v350 + 152);
  v147 = *v350 + 152;
  v148 = v323;
  (v146)(v125);
  v149 = v353;
  v359 = (*(*v145 + 168))(v148, v353);
  v150 = outlined destroy of PommesSearchRequest(v148, type metadata accessor for PommesSearchRequest);
  v151 = *(v144 + 2);
  v362 = v147;
  v363 = v146;
  (v146)(v150);
  (*(*v151 + 712))(v148);
  v152 = outlined destroy of PommesSearchRequest(v148, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v152 = swift_once();
  }

  v154 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v152, v153);
  v308 = v369;
  v309 = v149;
  v310 = v111;
  v155 = v324;
  Date.init()();
  v156 = *(*v154 + 200);
  v310 = v307;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v308) = 2;
  v156(v366, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v155, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v308, closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)partial apply);
  (*(v325 + 8))(v155, v326);
  v157 = *&v366[0];
  v158 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v149);
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();
  v161 = os_log_type_enabled(v159, v160);
  v354 = v158;
  if (v161)
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *&v366[0] = v163;
    *v162 = 136315138;
    v164 = type metadata accessor for PommesResult();
    v165 = MEMORY[0x223DDF870](v158, v164);
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v366);

    *(v162 + 4) = v167;
    _os_log_impl(&dword_2232BB000, v159, v160, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v162, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v163);
    MEMORY[0x223DE0F80](v163, -1, -1);
    MEMORY[0x223DE0F80](v162, -1, -1);
  }

  if (!(v157 >> 62))
  {
    if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_51:
    v171 = 0xE700000000000000;
    v169 = 0x6E776F6E6B6E55;
    v175 = 0;
    goto LABEL_52;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v157 & 0xC000000000000001) != 0)
  {
    v305 = MEMORY[0x223DDFF80](0, v157);
    v169 = dispatch thunk of Experience.pluginIdentifier.getter();
    v171 = v306;

    v172 = MEMORY[0x223DDFF80](0, v157);
    goto LABEL_39;
  }

  if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v168 = v157[4];
    v169 = dispatch thunk of Experience.pluginIdentifier.getter();
    v171 = v170;

    if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v172 = v157[4];
LABEL_39:
      v173 = v172;
      dispatch thunk of Experience.queryConfidence.getter();
      v175 = v174;

LABEL_52:

      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *&v366[0] = v204;
        *v203 = 136315394;
        v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, v366);

        *(v203 + 4) = v205;
        *(v203 + 12) = 2048;
        *(v203 + 14) = v175;
        _os_log_impl(&dword_2232BB000, v201, v202, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v203, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v204);
        MEMORY[0x223DE0F80](v204, -1, -1);
        MEMORY[0x223DE0F80](v203, -1, -1);
      }

      else
      {
      }

      v206 = v341;
      v207 = v345;
      v208 = v319;
      (v345)(v319, v353, v341);
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        *v211 = 67109120;
        v212 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v342(v208, v206);
        *(v211 + 4) = v212;
        _os_log_impl(&dword_2232BB000, v209, v210, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v211, 8u);
        MEMORY[0x223DE0F80](v211, -1, -1);
      }

      else
      {
        v342(v208, v206);
      }

      v351 = v157;

      v213 = v353;
      v368 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v214 = v338;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v336 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v348 = v215;
      v217 = v339 + 1;
      v216 = v339[1];
      v218 = v340;
      (v216)(v214, v340);
      v219 = v320;
      v207(v320, v213, v206);
      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();
      v222 = os_log_type_enabled(v220, v221);
      v360 = v216;
      if (v222)
      {
        v223 = swift_slowAlloc();
        v339 = v223;
        v361 = swift_slowAlloc();
        *&v366[0] = v361;
        *v223 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v224 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v225 = v206;
        v227 = v226;
        v228 = v218;
        v229 = v217;
        (v216)(v214, v228);
        v342(v219, v225);
        v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v227, v366);

        v231 = v339;
        *(v339 + 4) = v230;
        v232 = v231;
        _os_log_impl(&dword_2232BB000, v220, v221, "got albusMultiturnRewrite as: %s", v231, 0xCu);
        v233 = v361;
        __swift_destroy_boxed_opaque_existential_1(v361);
        v207 = v345;
        MEMORY[0x223DE0F80](v233, -1, -1);
        MEMORY[0x223DE0F80](v232, -1, -1);
      }

      else
      {
        v229 = v217;

        v342(v219, v206);
      }

      v234 = v337;

      v235 = Logger.logObject.getter();
      v236 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        *&v366[0] = v238;
        *v237 = 136315138;
        v239 = v316;
        v363();
        v240 = *(v239 + *(v318 + 52));

        outlined destroy of PommesSearchRequest(v239, type metadata accessor for PommesSearchRequest);
        if (v240)
        {
          v241 = *(v240 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v241 = 2;
        }

        v242 = v229;
        LOBYTE(v364) = v241;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v243 = String.init<A>(describing:)();
        v245 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v243, v244, v366);

        *(v237 + 4) = v245;
        _os_log_impl(&dword_2232BB000, v235, v236, "got isRelatedQuestion as: %s", v237, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v238);
        MEMORY[0x223DE0F80](v238, -1, -1);
        MEMORY[0x223DE0F80](v237, -1, -1);

        v207 = v345;
      }

      else
      {

        v242 = v229;
      }

      v246 = v360;
      v247 = v331;
      v192 = v341;
      v207(v331, v353, v341);
      v248 = Logger.logObject.getter();
      v249 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v248, v249))
      {
        LODWORD(v334) = v249;
        v335 = v248;
        v250 = swift_slowAlloc();
        v333 = swift_slowAlloc();
        v364 = v333;
        *v250 = 136315138;
        v251 = v317;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v252 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v253 = v251;
        v254 = v252;
        v246(v253, v340);
        v255 = *(v254 + 16);
        if (v255)
        {
          v326 = v250;
          v339 = v242;
          v365 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v255, 0);
          v256 = v365;
          v363 = *(v358 + 2);
          v257 = (v358[80] + 32) & ~v358[80];
          v325 = v254;
          v258 = v254 + v257;
          v362 = *(v358 + 9);
          v361 = (v314 + 8);
          v358 += 16;
          v259 = (v358 - 8);
          do
          {
            v260 = v349;
            v261 = v352;
            (v363)(v349, v258, v352);
            *&v366[0] = 0;
            *(&v366[0] + 1) = 0xE000000000000000;
            v262 = v356;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v263 = v357;
            _print_unlocked<A, B>(_:_:)();
            (*v361)(v262, v263);
            v264 = v366[0];
            (*v259)(v260, v261);
            v365 = v256;
            v266 = *(v256 + 16);
            v265 = *(v256 + 24);
            if (v266 >= v265 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v265 > 1), v266 + 1, 1);
              v256 = v365;
            }

            *(v256 + 16) = v266 + 1;
            *(v256 + 16 * v266 + 32) = v264;
            v258 += v362;
            --v255;
          }

          while (v255);

          v192 = v341;
          v247 = v331;
          v246 = v360;
          v250 = v326;
        }

        else
        {

          v256 = MEMORY[0x277D84F90];
        }

        v267 = MEMORY[0x223DDF850](v256, MEMORY[0x277D837D0]);
        v269 = v268;

        v342(v247, v192);
        v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, v269, &v364);

        *(v250 + 4) = v270;
        v271 = v335;
        _os_log_impl(&dword_2232BB000, v335, v334, "got usecases as: %s", v250, 0xCu);
        v272 = v333;
        __swift_destroy_boxed_opaque_existential_1(v333);
        MEMORY[0x223DE0F80](v272, -1, -1);
        MEMORY[0x223DE0F80](v250, -1, -1);

        v234 = v337;
        v207 = v345;
      }

      else
      {

        v342(v247, v192);
      }

      v207(v234, v353, v192);
      v273 = Logger.logObject.getter();
      v274 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v273, v274))
      {
        v275 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        *&v366[0] = v276;
        *v275 = 136315138;
        v277 = v246;
        v278 = v338;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v279 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v281 = v280;
        v277(v278, v340);
        v342(v234, v341);
        v282 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v279, v281, v366);
        v192 = v341;

        *(v275 + 4) = v282;
        _os_log_impl(&dword_2232BB000, v273, v274, "got domain as: %s", v275, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v276);
        MEMORY[0x223DE0F80](v276, -1, -1);
        MEMORY[0x223DE0F80](v275, -1, -1);
      }

      else
      {

        v342(v234, v192);
      }

      v283 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v283, v284);
      v285 = v354;
      *(&v312 - 10) = v351;
      *(&v312 - 9) = v285;
      v85 = v353;
      v286 = v350;
      *(&v312 - 8) = v353;
      *(&v312 - 7) = v286;
      v307[0] = v359;
      v307[1] = v343;
      v308 = &v368;
      v309 = v336;
      v310 = v348;
      v287 = PommesResponse.__allocating_init(_:)();

      if (v287)
      {
        v288 = v287;
        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v289, v290))
        {
          v291 = swift_slowAlloc();
          v292 = swift_slowAlloc();
          *&v366[0] = v292;
          *v291 = 136315138;
          v293 = [v288 debugDescription];
          v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v296 = v295;

          v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v296, v366);
          v85 = v353;

          *(v291 + 4) = v297;
          _os_log_impl(&dword_2232BB000, v289, v290, "PommesSearchRequestProcessor#handleSuccess response: %s", v291, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v292);
          v298 = v292;
          v192 = v341;
          MEMORY[0x223DE0F80](v298, -1, -1);
          MEMORY[0x223DE0F80](v291, -1, -1);
        }

        v367 = 0;
        memset(v366, 0, sizeof(v366));
        static CurareDonation.donateCurareInfo(for:with:into:)(v85, v288, v366);
        outlined destroy of MediaUserStateCenter?(v366, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v299 = v288;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v287, 0, v327, v328, v329);
      }

      else
      {
        v300 = Logger.logObject.getter();
        v301 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v300, v301))
        {
          v302 = swift_slowAlloc();
          *v302 = 0;
          _os_log_impl(&dword_2232BB000, v300, v301, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v302, 2u);
          MEMORY[0x223DE0F80](v302, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v303 = swift_allocError();
        *v304 = 0x80;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v303, 1, v327, v328, v329);
      }

      (*(v321 + 8))(v344, v322);
LABEL_88:
      v342(v85, v192);
      __swift_destroy_boxed_opaque_existential_1(v369);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(uint64_t a1, char *a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a2;
  v47 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v46 - v17;
  v19 = type metadata accessor for PegasusSearchResponse(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = (&v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MediaUserStateCenter?(a1, v18, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v18, 1, v24) == 1)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v27 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v18, v23, type metadata accessor for PegasusSearchResponse);
      v49 = 0;
      memset(v48, 0, sizeof(v48));
      memset(v50, 0, sizeof(v50));
      v51 = 0;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      outlined assign with take of MediaUserStateCenter?(v48, v50, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);

      specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v23, v50, v46, v47, a4, a5, a6);

      outlined destroy of PommesSearchRequest(v23, type metadata accessor for PegasusSearchResponse);
      outlined destroy of DefaultExperiencesResolver(v50);
LABEL_20:

      goto LABEL_21;
    }

    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v27 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
  }

  outlined destroy of MediaUserStateCenter?(v18, v26, v27);
  outlined init with copy of MediaUserStateCenter?(a1, v15, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  if (v25(v15, 1, v24) == 1)
  {
    v28 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v29 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v15, v28, v29);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.pommes);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2232BB000, v40, v41, "PireneResponse failure: none", v42, 2u);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }

    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v43 = swift_allocError();
    *v44 = 0x80;
    closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v43, 1, v47, a4, a5);

    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v29 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_15;
  }

  v30 = *v15;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.pommes);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v50[0] = v35;
    *v34 = 136315138;
    LOBYTE(v48[0]) = v30;
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v50);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2232BB000, v32, v33, "POMMES-CURARE: {error:%s}", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223DE0F80](v35, -1, -1);
    MEMORY[0x223DE0F80](v34, -1, -1);
  }

  specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(v30, v46, v47, a4, a5, a6);

LABEL_21:
}

void specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v352 = a3;
  v350 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v359 = *(v350 - 8);
  v9 = *(v359 + 64);
  v11 = MEMORY[0x28223BE20](v350, v10);
  v314 = &v313 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v362 = &v313 - v14;
  v363 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v354 = *(v363 - 1);
  v15 = *(v354 + 64);
  v17 = MEMORY[0x28223BE20](v363, v16);
  v313 = &v313 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v360 = &v313 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v342 = &v313 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v361 = &v313 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v316 = &v313 - v29;
  v357 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v315 = *(v357 - 8);
  v30 = *(v315 + 64);
  MEMORY[0x28223BE20](v357, v31);
  v356 = (&v313 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v353 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v358 = *(v353 - 8);
  v33 = *(v358 + 8);
  MEMORY[0x28223BE20](v353, v34);
  v351 = (&v313 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v340 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v348 = *(v340 - 8);
  v36 = *(v348 + 64);
  v38 = MEMORY[0x28223BE20](v340, v37);
  v318 = &v313 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v339 = &v313 - v41;
  v328 = type metadata accessor for Date();
  v327 = *(v328 - 8);
  v42 = *(v327 + 64);
  MEMORY[0x28223BE20](v328, v43);
  v326 = &v313 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for ClientExperienceSignals();
  v323 = *(v324 - 8);
  v45 = *(v323 + 64);
  MEMORY[0x28223BE20](v324, v46);
  v346 = &v313 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for PommesSearchRequest(0);
  v48 = *(*(v319 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v319, v49);
  v317 = &v313 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v325 = &v313 - v53;
  v337 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v54 = *(v337 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v337, v56);
  v336 = (&v313 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v335 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v334 = *(v335 - 8);
  v58 = *(v334 + 64);
  MEMORY[0x28223BE20](v335, v59);
  v333 = (&v313 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v65 = MEMORY[0x28223BE20](v61, v64);
  v338 = &v313 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65, v67);
  v331 = (&v313 - v69);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v321 = &v313 - v72;
  v74 = MEMORY[0x28223BE20](v71, v73);
  v320 = (&v313 - v75);
  v77 = MEMORY[0x28223BE20](v74, v76);
  v79 = (&v313 - v78);
  MEMORY[0x28223BE20](v77, v80);
  v82 = &v313 - v81;
  v83 = swift_allocObject();
  *(v83 + 16) = a4;
  *(v83 + 24) = a5;
  v332 = v83;
  v369[3] = &type metadata for CallBusinessNoResultsExperiencesResolver;
  v369[4] = &protocol witness table for CallBusinessNoResultsExperiencesResolver;
  v369[0] = a2;
  v84 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v349 = v62;
  v87 = *(v62 + 16);
  v86 = (v62 + 16);
  v85 = v87;
  v322 = a1;
  v87(v82, a1 + v84, v61);
  v88 = one-time initialization token for pommes;
  v329 = a4;

  v330 = a5;

  if (v88 != -1)
  {
LABEL_47:
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  v90 = __swift_project_value_buffer(v89, static Logger.pommes);
  *&v341 = v86;
  v347 = v85;
  (v85)(v79, v82, v61);
  v355 = v90;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.debug.getter();
  v93 = os_log_type_enabled(v91, v92);
  v345 = v61;
  v343 = v82;
  if (v93)
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v366[0] = v95;
    *v94 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v96 = Message.textFormatString()();
    v344 = *(v349 + 8);
    v344(v79, v61);
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96._countAndFlagsBits, v96._object, v366);

    *(v94 + 4) = v97;
    _os_log_impl(&dword_2232BB000, v91, v92, "PireneResponse: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x223DE0F80](v95, -1, -1);
    v98 = v94;
    v99 = v343;
    MEMORY[0x223DE0F80](v98, -1, -1);
  }

  else
  {
    v99 = v82;

    v344 = *(v349 + 8);
    v344(v79, v61);
  }

  v100 = v337;
  v101 = v336;
  v102 = v335;
  v103 = v334;
  v104 = v333;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v105 = (*(v103 + 8))(v104, v102);
  v106 = MEMORY[0x223DDBA80](v105);
  (*(v54 + 8))(v101, v100);
  v107 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v108 = v346;
  v109 = v350;
  if (v107)
  {
    v110 = *(v106 + 16);
    if (v110)
    {
      *&v366[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110, 0);
      v111 = *&v366[0];
      v112 = *(v359 + 16);
      v113 = (*(v359 + 80) + 32) & ~*(v359 + 80);
      v340 = v106;
      v114 = v106 + v113;
      v115 = *(v359 + 72);
      v359 += 16;
      v356 = (v359 - 8);
      v353 = v354 + 32;
      v338 = (v106 + v113);
      v339 = v110;
      v116 = v110;
      v85 = v316;
      v358 = v112;
      v357 = v115;
      do
      {
        v117 = v362;
        v118 = (v112)(v362, v114, v109);
        MEMORY[0x223DDBB90](v118);
        v119 = *v356;
        (*v356)(v117, v109);
        *&v366[0] = v111;
        v121 = *(v111 + 16);
        v120 = *(v111 + 24);
        v122 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1);
          v111 = *&v366[0];
        }

        *(v111 + 16) = v122;
        v123 = (v111 + ((*(v354 + 80) + 32) & ~*(v354 + 80)));
        v124 = *(v354 + 72);
        (*(v354 + 32))(&v123[v124 * v121], v85, v363);
        v61 = v357;
        v114 += v357;
        --v116;
        v112 = v358;
      }

      while (v116);
      v347 = v123;
      v348 = v122;
      v353 = v111;
      v351 = v119;
      v346 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v54 = 0;
      v362 = v354 + 16;
      v82 = v354 + 8;
      *&v156 = 134218240;
      v341 = v156;
      v86 = v342;
      v157 = v361;
      while (v54 != v348)
      {
        v79 = v363;
        if (v54 >= *(v353 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v159 = *v362;
        (*v362)(v157, v347 + v54 * v124, v363);
        v160 = *&v346[v352];
        v161 = *(v160 + 16);
        v354 = v54;
        if (v161)
        {
          v162 = *(v160 + 40);
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);

          v163 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v164 = -1 << *(v160 + 32);
          v165 = v163 & ~v164;
          if ((*(v160 + 56 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165))
          {
            v166 = ~v164;
            do
            {
              v167 = v360;
              v168 = v363;
              v159(v360, *(v160 + 48) + v165 * v124, v363);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
              v85 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v82)(v167, v168);
              if (v85)
              {
                break;
              }

              v165 = (v165 + 1) & v166;
            }

            while (((*(v160 + 56 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) != 0);
          }

          else
          {
            v85 = 0;
          }

          v79 = v363;
          v86 = v342;
          v157 = v361;
        }

        else
        {
          v85 = 0;
        }

        v159(v86, v157, v79);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.debug.getter();
        v61 = v82 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          *v171 = v341;
          v172 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v158 = *v82;
          (*v82)(v86, v363);
          *(v171 + 4) = v172;
          *(v171 + 12) = 1024;
          *(v171 + 14) = v85 & 1;
          _os_log_impl(&dword_2232BB000, v169, v170, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v171, 0x12u);
          MEMORY[0x223DE0F80](v171, -1, -1);
        }

        else
        {
          v158 = *v82;
          (*v82)(v86, v363);
        }

        v109 = v350;
        v54 = v354 + 1;

        v157 = v361;
        v158(v361, v363);
        if (v85)
        {

          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.debug.getter();
          v195 = os_log_type_enabled(v193, v194);
          v189 = v343;
          if (v195)
          {
            v196 = swift_slowAlloc();
            *v196 = 0;
            _os_log_impl(&dword_2232BB000, v193, v194, "Already attempted profile slice resolution; yielding error response", v196, 2u);
            MEMORY[0x223DE0F80](v196, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v197 = swift_allocError();
          *v198 = 69;
          closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v197, 1, v329);

          v188 = v345;
          goto LABEL_86;
        }
      }

      v173 = v352;
      v174 = v314;
      v175 = v313;
      v176 = v360;
      v177 = v339;
      v178 = v338;
      do
      {
        v179 = (v358)(v174, v178, v109);
        MEMORY[0x223DDBB90](v179);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v176, v175);
        (*v82)(v176, v363);
        swift_endAccess();
        v351(v174, v109);
        v178 += v357;
        --v177;
      }

      while (v177);
      v180 = v340;

      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v364 = v184;
        *v183 = 136315138;
        v185 = MEMORY[0x223DDF850](v180, v109);
        v187 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v186, &v364);

        *(v183 + 4) = v187;
        _os_log_impl(&dword_2232BB000, v181, v182, "Adding profile slice resolution requests: %s", v183, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v184);
        MEMORY[0x223DE0F80](v184, -1, -1);
        MEMORY[0x223DE0F80](v183, -1, -1);
      }

      v188 = v345;
      v189 = v343;
      v190 = v173 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      v191 = *(v319 + 92);
      v192 = *&v190[v191];
      *&v190[v191] = v180;

      (*(*v173 + 224))(closure #3 in PommesSearchRequestProcessor.search_sync(completion:)partial apply, v332);
      goto LABEL_86;
    }
  }

  v126 = v352;
  v127 = v352[5];
  v128 = *(*v352 + 152);
  v129 = *v352 + 152;
  v130 = v325;
  (v128)(v125);
  v359 = (*(*v127 + 168))(v130, v99);
  v131 = outlined destroy of PommesSearchRequest(v130, type metadata accessor for PommesSearchRequest);
  v132 = v126[2];
  v362 = v129;
  v363 = v128;
  (v128)(v131);
  (*(*v132 + 712))(v130);
  v133 = outlined destroy of PommesSearchRequest(v130, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v133 = swift_once();
  }

  v135 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v133, v134);
  v309 = v369;
  v310 = v99;
  v311 = v108;
  v136 = v326;
  Date.init()();
  v137 = *(*v135 + 200);
  v311 = v308;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v309) = 2;
  v137(v366, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v136, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v309, closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)partial apply);
  (*(v327 + 8))(v136, v328);
  v138 = *&v366[0];
  v139 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v343);
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v366[0] = v143;
    *v142 = 136315138;
    v144 = type metadata accessor for PommesResult();
    v145 = MEMORY[0x223DDF870](v139, v144);
    v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v366);

    *(v142 + 4) = v147;
    _os_log_impl(&dword_2232BB000, v140, v141, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v143);
    MEMORY[0x223DE0F80](v143, -1, -1);
    MEMORY[0x223DE0F80](v142, -1, -1);
  }

  if (!(v138 >> 62))
  {
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_49:
    v151 = 0xE700000000000000;
    v149 = 0x6E776F6E6B6E55;
    v155 = 0;
    goto LABEL_50;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v138 & 0xC000000000000001) != 0)
  {
    v306 = MEMORY[0x223DDFF80](0, v138);
    v149 = dispatch thunk of Experience.pluginIdentifier.getter();
    v151 = v307;

    v152 = MEMORY[0x223DDFF80](0, v138);
    goto LABEL_22;
  }

  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v148 = *(v138 + 32);
    v149 = dispatch thunk of Experience.pluginIdentifier.getter();
    v151 = v150;

    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v152 = *(v138 + 32);
LABEL_22:
      v153 = v152;
      dispatch thunk of Experience.queryConfidence.getter();
      v155 = v154;

LABEL_50:

      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.debug.getter();

      v201 = os_log_type_enabled(v199, v200);
      v350 = v139;
      if (v201)
      {
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *&v366[0] = v203;
        *v202 = 136315394;
        v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, v366);

        *(v202 + 4) = v204;
        *(v202 + 12) = 2048;
        *(v202 + 14) = v155;
        _os_log_impl(&dword_2232BB000, v199, v200, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v202, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v203);
        MEMORY[0x223DE0F80](v203, -1, -1);
        MEMORY[0x223DE0F80](v202, -1, -1);
      }

      else
      {
      }

      v205 = v343;
      v206 = v321;
      v354 = v138;
      v207 = v320;
      v208 = v347;
      v347(v320, v343, v345);
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        *v211 = 67109120;
        v212 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v344(v207, v345);
        *(v211 + 4) = v212;
        _os_log_impl(&dword_2232BB000, v209, v210, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v211, 8u);
        v213 = v211;
        v208 = v347;
        MEMORY[0x223DE0F80](v213, -1, -1);
      }

      else
      {
        v344(v207, v345);
      }

      v214 = v340;
      v215 = v348;

      v368 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v216 = v339;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v337 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v342 = v217;
      v218 = *(v215 + 8);
      v218(v216, v214);
      v208(v206, v205, v345);
      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.debug.getter();
      v221 = os_log_type_enabled(v219, v220);
      v360 = v218;
      v348 = v215 + 8;
      if (v221)
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&v366[0] = v223;
        *v222 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v224 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v225 = v214;
        v226 = v206;
        v228 = v227;
        v218(v216, v225);
        v344(v226, v345);
        v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v228, v366);

        *(v222 + 4) = v229;
        _os_log_impl(&dword_2232BB000, v219, v220, "got albusMultiturnRewrite as: %s", v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v223);
        MEMORY[0x223DE0F80](v223, -1, -1);
        MEMORY[0x223DE0F80](v222, -1, -1);
      }

      else
      {

        v344(v206, v345);
      }

      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.debug.getter();

      v232 = os_log_type_enabled(v230, v231);
      v233 = v338;
      if (v232)
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        *&v366[0] = v235;
        *v234 = 136315138;
        v236 = v317;
        v363();
        v237 = *(v236 + *(v319 + 52));

        outlined destroy of PommesSearchRequest(v236, type metadata accessor for PommesSearchRequest);
        if (v237)
        {
          v238 = *(v237 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v238 = 2;
        }

        v188 = v345;
        LOBYTE(v364) = v238;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v239 = String.init<A>(describing:)();
        v241 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v239, v240, v366);

        *(v234 + 4) = v241;
        _os_log_impl(&dword_2232BB000, v230, v231, "got isRelatedQuestion as: %s", v234, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v235);
        MEMORY[0x223DE0F80](v235, -1, -1);
        MEMORY[0x223DE0F80](v234, -1, -1);
      }

      else
      {

        v188 = v345;
      }

      v242 = v360;
      v243 = v331;
      v189 = v343;
      v244 = v347;
      v347(v331, v343, v188);
      v245 = Logger.logObject.getter();
      v246 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v245, v246))
      {
        LODWORD(v334) = v246;
        v336 = v245;
        v247 = swift_slowAlloc();
        v333 = swift_slowAlloc();
        v364 = v333;
        v335 = v247;
        *v247 = 136315138;
        v248 = v318;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v249 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v250 = v248;
        v251 = v249;
        v242(v250, v340);
        v252 = *(v251 + 16);
        if (v252)
        {
          v365 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v252, 0);
          v253 = v365;
          v363 = *(v358 + 2);
          v254 = (v358[80] + 32) & ~v358[80];
          v328 = v251;
          v255 = v251 + v254;
          v362 = *(v358 + 9);
          v361 = (v315 + 8);
          v358 += 16;
          v256 = (v358 - 8);
          do
          {
            v257 = v351;
            v258 = v353;
            (v363)(v351, v255, v353);
            *&v366[0] = 0;
            *(&v366[0] + 1) = 0xE000000000000000;
            v259 = v356;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v260 = v357;
            _print_unlocked<A, B>(_:_:)();
            (*v361)(v259, v260);
            v261 = v366[0];
            (*v256)(v257, v258);
            v365 = v253;
            v263 = *(v253 + 16);
            v262 = *(v253 + 24);
            if (v263 >= v262 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v262 > 1), v263 + 1, 1);
              v253 = v365;
            }

            *(v253 + 16) = v263 + 1;
            *(v253 + 16 * v263 + 32) = v261;
            v255 += v362;
            --v252;
          }

          while (v252);

          v188 = v345;
          v189 = v343;
          v244 = v347;
          v243 = v331;
        }

        else
        {

          v253 = MEMORY[0x277D84F90];
        }

        v264 = MEMORY[0x223DDF850](v253, MEMORY[0x277D837D0]);
        v266 = v265;

        v344(v243, v188);
        v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v266, &v364);

        v268 = v335;
        *(v335 + 4) = v267;
        v269 = v336;
        _os_log_impl(&dword_2232BB000, v336, v334, "got usecases as: %s", v268, 0xCu);
        v270 = v333;
        __swift_destroy_boxed_opaque_existential_1(v333);
        MEMORY[0x223DE0F80](v270, -1, -1);
        MEMORY[0x223DE0F80](v268, -1, -1);

        v233 = v338;
        v242 = v360;
      }

      else
      {

        v344(v243, v188);
      }

      v244(v233, v189, v188);
      v271 = Logger.logObject.getter();
      v272 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        v274 = v242;
        v275 = swift_slowAlloc();
        *&v366[0] = v275;
        *v273 = 136315138;
        v276 = v339;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v277 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v279 = v278;
        v274(v276, v340);
        v344(v233, v188);
        v280 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v277, v279, v366);
        v189 = v343;

        *(v273 + 4) = v280;
        _os_log_impl(&dword_2232BB000, v271, v272, "got domain as: %s", v273, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v275);
        MEMORY[0x223DE0F80](v275, -1, -1);
        MEMORY[0x223DE0F80](v273, -1, -1);
      }

      else
      {

        v344(v233, v188);
      }

      v281 = v346;
      v282 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v282, v283);
      v284 = v350;
      *(&v313 - 10) = v354;
      *(&v313 - 9) = v284;
      v285 = v352;
      *(&v313 - 8) = v189;
      *(&v313 - 7) = v285;
      v308[0] = v359;
      v308[1] = v322;
      v309 = &v368;
      v310 = v337;
      v311 = v342;
      v286 = PommesResponse.__allocating_init(_:)();

      if (v286)
      {
        v287 = v286;
        v288 = Logger.logObject.getter();
        v289 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v288, v289))
        {
          v290 = swift_slowAlloc();
          v291 = swift_slowAlloc();
          *&v366[0] = v291;
          *v290 = 136315138;
          v292 = [v287 debugDescription];
          v293 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v295 = v294;

          v296 = v293;
          v188 = v345;
          v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v296, v295, v366);

          *(v290 + 4) = v297;
          _os_log_impl(&dword_2232BB000, v288, v289, "PommesSearchRequestProcessor#handleSuccess response: %s", v290, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v291);
          v298 = v291;
          v189 = v343;
          MEMORY[0x223DE0F80](v298, -1, -1);
          v299 = v290;
          v281 = v346;
          MEMORY[0x223DE0F80](v299, -1, -1);
        }

        v367 = 0;
        memset(v366, 0, sizeof(v366));
        static CurareDonation.donateCurareInfo(for:with:into:)(v189, v287, v366);
        outlined destroy of MediaUserStateCenter?(v366, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v300 = v287;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v286, 0, v329);
      }

      else
      {
        v301 = Logger.logObject.getter();
        v302 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          *v303 = 0;
          _os_log_impl(&dword_2232BB000, v301, v302, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v303, 2u);
          MEMORY[0x223DE0F80](v303, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v304 = swift_allocError();
        *v305 = 0x80;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v304, 1, v329);
      }

      (*(v323 + 8))(v281, v324);
LABEL_86:
      v344(v189, v188);
      __swift_destroy_boxed_opaque_existential_1(v369);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

{
  v350 = a3;
  v348 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v357 = *(v348 - 8);
  v9 = *(v357 + 64);
  v11 = MEMORY[0x28223BE20](v348, v10);
  v313 = &v311 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v360 = (&v311 - v14);
  v361 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v352 = *(v361 - 1);
  v15 = *(v352 + 64);
  v17 = MEMORY[0x28223BE20](v361, v16);
  v312 = &v311 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v358 = &v311 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v340 = &v311 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v359 = &v311 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v315 = &v311 - v29;
  v355 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v314 = *(v355 - 8);
  v30 = *(v314 + 64);
  MEMORY[0x28223BE20](v355, v31);
  v354 = (&v311 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v351 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v356 = *(v351 - 8);
  v33 = *(v356 + 8);
  MEMORY[0x28223BE20](v351, v34);
  v349 = (&v311 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v339 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v345 = *(v339 - 8);
  v36 = *(v345 + 64);
  v38 = MEMORY[0x28223BE20](v339, v37);
  v317 = &v311 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v338 = &v311 - v41;
  v327 = type metadata accessor for Date();
  v326 = *(v327 - 1);
  v42 = *(v326 + 64);
  MEMORY[0x28223BE20](v327, v43);
  v325 = &v311 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ClientExperienceSignals();
  v322 = *(v45 - 8);
  v46 = *(v322 + 64);
  MEMORY[0x28223BE20](v45, v47);
  v344 = &v311 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for PommesSearchRequest(0);
  v49 = *(*(v318 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v318, v50);
  v316 = &v311 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v324 = &v311 - v54;
  v336 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v335 = *(v336 - 8);
  v55 = *(v335 + 64);
  MEMORY[0x28223BE20](v336, v56);
  v58 = &v311 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  isa = v334[-1].isa;
  v59 = *(isa + 8);
  MEMORY[0x28223BE20](v334, v60);
  v332 = &v311 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v66 = MEMORY[0x28223BE20](v62, v65);
  v337 = &v311 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v66, v68);
  v330 = &v311 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v320 = &v311 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v319 = &v311 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v80 = &v311 - v79;
  MEMORY[0x28223BE20](v78, v81);
  v83 = (&v311 - v82);
  v84 = swift_allocObject();
  *(v84 + 16) = a4;
  *(v84 + 24) = a5;
  v331 = v84;
  v367[3] = &type metadata for DefaultExperiencesResolver;
  v367[4] = &protocol witness table for DefaultExperiencesResolver;
  v367[0] = swift_allocObject();
  outlined init with copy of DefaultExperiencesResolver(a2, v367[0] + 16);
  v85 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v347 = v63;
  v86 = v63;
  v87 = v83;
  v88 = v86 + 16;
  v89 = *(v86 + 16);
  v321 = a1;
  v89(v87, a1 + v85, v62);
  v90 = one-time initialization token for pommes;
  v328 = a4;

  v329 = a5;

  if (v90 != -1)
  {
LABEL_47:
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  v92 = __swift_project_value_buffer(v91, static Logger.pommes);
  v89(v80, v87, v62);
  v353 = v92;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  v95 = os_log_type_enabled(v93, v94);
  v343 = v62;
  v341 = v87;
  v323 = v45;
  v346 = v89;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v364[0] = v97;
    *v96 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    v98 = Message.textFormatString()();
    v342 = *(v347 + 8);
    v342(v80, v62);
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98._countAndFlagsBits, v98._object, v364);

    *(v96 + 4) = v99;
    _os_log_impl(&dword_2232BB000, v93, v94, "PireneResponse: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x223DE0F80](v97, -1, -1);
    v100 = v96;
    v87 = v341;
    MEMORY[0x223DE0F80](v100, -1, -1);
  }

  else
  {

    v342 = *(v347 + 8);
    v342(v80, v62);
  }

  v101 = v332;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v102 = (*(isa + 1))(v101, v334);
  v103 = MEMORY[0x223DDBA80](v102);
  (*(v335 + 8))(v58, v336);
  v104 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v105 = v344;
  v106 = v348;
  v107 = v357;
  if (v104)
  {
    v108 = *(v103 + 16);
    if (v108)
    {
      *&v364[0] = MEMORY[0x277D84F90];
      v109 = v108;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108, 0);
      v110 = *&v364[0];
      v113 = *(v107 + 16);
      v112 = v107 + 16;
      v111 = v113;
      v114 = (*(v112 + 64) + 32) & ~*(v112 + 64);
      v338 = v103;
      v87 = (v103 + v114);
      v115 = *(v112 + 56);
      v357 = v112;
      v354 = (v112 - 8);
      v351 = v352 + 32;
      v336 = v103 + v114;
      v337 = v109;
      v80 = v315;
      v356 = v113;
      v355 = v115;
      do
      {
        v116 = v360;
        v117 = v111(v360, v87, v106);
        MEMORY[0x223DDBB90](v117);
        v118 = *v354;
        (*v354)(v116, v106);
        *&v364[0] = v110;
        v120 = *(v110 + 16);
        v119 = *(v110 + 24);
        v121 = (v120 + 1);
        if (v120 >= v119 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v119 > 1, v120 + 1, 1);
          v110 = *&v364[0];
        }

        *(v110 + 16) = v121;
        v122 = v110 + ((*(v352 + 80) + 32) & ~*(v352 + 80));
        v89 = *(v352 + 72);
        (*(v352 + 32))(v122 + v89 * v120, v80, v361);
        v88 = v355;
        v87 = (v87 + v355);
        --v109;
        v111 = v356;
      }

      while (v109);
      v345 = v122;
      v346 = v121;
      v351 = v110;
      v349 = v118;
      v344 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v58 = 0;
      v360 = (v352 + 16);
      v45 = v352 + 8;
      *&v155 = 134218240;
      v339 = v155;
      v156 = v340;
      v157 = v359;
      while (v58 != v346)
      {
        v62 = v361;
        if (v58 >= *(v351 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v159 = *v360;
        (*v360)(v157, v345 + v58 * v89, v361);
        v160 = *&v344[v350];
        v161 = *(v160 + 16);
        v352 = v58;
        if (v161)
        {
          v162 = *(v160 + 40);
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);

          v163 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v164 = -1 << *(v160 + 32);
          v165 = v163 & ~v164;
          if ((*(v160 + 56 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165))
          {
            v166 = ~v164;
            do
            {
              v167 = v358;
              v168 = v361;
              v159(v358, *(v160 + 48) + v165 * v89, v361);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
              v80 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v45)(v167, v168);
              if (v80)
              {
                break;
              }

              v165 = (v165 + 1) & v166;
            }

            while (((*(v160 + 56 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) != 0);
          }

          else
          {
            v80 = 0;
          }

          v62 = v361;
          v156 = v340;
          v157 = v359;
        }

        else
        {
          v80 = 0;
        }

        v159(v156, v157, v62);
        v87 = Logger.logObject.getter();
        v169 = static os_log_type_t.debug.getter();
        v88 = v45 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (os_log_type_enabled(v87, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = v339;
          v171 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v158 = *v45;
          (*v45)(v156, v361);
          *(v170 + 4) = v171;
          *(v170 + 12) = 1024;
          *(v170 + 14) = v80 & 1;
          _os_log_impl(&dword_2232BB000, v87, v169, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v170, 0x12u);
          MEMORY[0x223DE0F80](v170, -1, -1);
        }

        else
        {
          v158 = *v45;
          (*v45)(v156, v361);
        }

        v106 = v348;
        v58 = v352 + 1;

        v157 = v359;
        v158(v359, v361);
        if (v80)
        {

          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.debug.getter();
          v195 = os_log_type_enabled(v193, v194);
          v189 = v341;
          if (v195)
          {
            v196 = swift_slowAlloc();
            *v196 = 0;
            _os_log_impl(&dword_2232BB000, v193, v194, "Already attempted profile slice resolution; yielding error response", v196, 2u);
            MEMORY[0x223DE0F80](v196, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v197 = swift_allocError();
          *v198 = 69;
          closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v197, 1, v328);

          v188 = v343;
          goto LABEL_86;
        }
      }

      v172 = v350;
      v173 = v313;
      v174 = v312;
      v175 = v358;
      v176 = v337;
      v177 = v336;
      do
      {
        v178 = v356(v173, v177, v106);
        MEMORY[0x223DDBB90](v178);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v175, v174);
        (*v45)(v175, v361);
        swift_endAccess();
        v349(v173, v106);
        v177 += v355;
        --v176;
      }

      while (v176);
      v179 = v338;

      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v362 = v183;
        *v182 = 136315138;
        v184 = MEMORY[0x223DDF850](v338, v106);
        v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v185, &v362);

        *(v182 + 4) = v186;
        _os_log_impl(&dword_2232BB000, v180, v181, "Adding profile slice resolution requests: %s", v182, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v183);
        MEMORY[0x223DE0F80](v183, -1, -1);
        v187 = v182;
        v179 = v338;
        MEMORY[0x223DE0F80](v187, -1, -1);
      }

      v188 = v343;
      v189 = v341;
      v190 = v172 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      v191 = *(v318 + 92);
      v192 = *&v190[v191];
      *&v190[v191] = v179;

      (*(*v172 + 224))(partial apply for closure #3 in PommesSearchRequestProcessor.search_sync(completion:), v331);
      goto LABEL_86;
    }
  }

  v124 = v350;
  v125 = v350[5];
  v126 = *(*v350 + 152);
  v127 = *v350 + 152;
  v128 = v324;
  (v126)(v123);
  v357 = (*(*v125 + 168))(v128, v87);
  v129 = outlined destroy of PommesSearchRequest(v128, type metadata accessor for PommesSearchRequest);
  v130 = v124[2];
  v361 = v127;
  (v126)(v129);
  (*(*v130 + 712))(v128);
  v131 = outlined destroy of PommesSearchRequest(v128, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v131 = swift_once();
  }

  v133 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v131, v132);
  v307 = v367;
  v308 = v87;
  v309 = v105;
  v134 = v325;
  Date.init()();
  v135 = *(*v133 + 200);
  v309 = v306;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v307) = 2;
  v135(v364, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v134, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v307, partial apply for closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:));
  (*(v326 + 8))(v134, v327);
  v136 = *&v364[0];
  v137 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v341);
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.debug.getter();
  v140 = os_log_type_enabled(v138, v139);
  v352 = v137;
  if (v140)
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v364[0] = v142;
    *v141 = 136315138;
    v143 = type metadata accessor for PommesResult();
    v144 = MEMORY[0x223DDF870](v137, v143);
    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, v364);

    *(v141 + 4) = v146;
    _os_log_impl(&dword_2232BB000, v138, v139, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v142);
    MEMORY[0x223DE0F80](v142, -1, -1);
    MEMORY[0x223DE0F80](v141, -1, -1);
  }

  if (!(v136 >> 62))
  {
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_49:
    v150 = 0xE700000000000000;
    v148 = 0x6E776F6E6B6E55;
    v154 = 0;
    goto LABEL_50;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v136 & 0xC000000000000001) != 0)
  {
    v304 = MEMORY[0x223DDFF80](0, v136);
    v148 = dispatch thunk of Experience.pluginIdentifier.getter();
    v150 = v305;

    v151 = MEMORY[0x223DDFF80](0, v136);
    goto LABEL_22;
  }

  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v147 = *(v136 + 32);
    v148 = dispatch thunk of Experience.pluginIdentifier.getter();
    v150 = v149;

    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v151 = *(v136 + 32);
LABEL_22:
      v152 = v151;
      dispatch thunk of Experience.queryConfidence.getter();
      v154 = v153;

LABEL_50:
      v348 = v136;

      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *&v364[0] = v202;
        *v201 = 136315394;
        v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, v364);

        *(v201 + 4) = v203;
        *(v201 + 12) = 2048;
        *(v201 + 14) = v154;
        _os_log_impl(&dword_2232BB000, v199, v200, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v201, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v202);
        MEMORY[0x223DE0F80](v202, -1, -1);
        MEMORY[0x223DE0F80](v201, -1, -1);
      }

      else
      {
      }

      v204 = v341;
      v205 = v320;
      v360 = v126;
      v206 = v319;
      v346(v319, v341, v343);
      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        *v209 = 67109120;
        v210 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v342(v206, v343);
        *(v209 + 4) = v210;
        _os_log_impl(&dword_2232BB000, v207, v208, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v209, 8u);
        MEMORY[0x223DE0F80](v209, -1, -1);
      }

      else
      {
        v342(v206, v343);
      }

      v211 = v339;
      v212 = v345;

      v366 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v213 = v338;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v336 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v340 = v214;
      v215 = *(v212 + 8);
      v215(v213, v211);
      v346(v205, v204, v343);
      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.debug.getter();
      v218 = os_log_type_enabled(v216, v217);
      v358 = v215;
      v345 = v212 + 8;
      if (v218)
      {
        v219 = swift_slowAlloc();
        v335 = v88;
        v220 = v219;
        v221 = swift_slowAlloc();
        *&v364[0] = v221;
        *v220 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v222 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v223 = v211;
        v224 = v205;
        v226 = v225;
        v215(v213, v223);
        v342(v224, v343);
        v227 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v226, v364);

        *(v220 + 4) = v227;
        _os_log_impl(&dword_2232BB000, v216, v217, "got albusMultiturnRewrite as: %s", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v221);
        MEMORY[0x223DE0F80](v221, -1, -1);
        v228 = v220;
        v88 = v335;
        MEMORY[0x223DE0F80](v228, -1, -1);
      }

      else
      {

        v342(v205, v343);
      }

      v229 = Logger.logObject.getter();
      v230 = static os_log_type_t.debug.getter();

      v231 = os_log_type_enabled(v229, v230);
      v232 = v337;
      if (v231)
      {
        v233 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        *&v364[0] = v234;
        *v233 = 136315138;
        v235 = v316;
        v360();
        v236 = *(v235 + *(v318 + 52));

        outlined destroy of PommesSearchRequest(v235, type metadata accessor for PommesSearchRequest);
        if (v236)
        {
          v237 = *(v236 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v237 = 2;
        }

        v188 = v343;
        LOBYTE(v362) = v237;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v238 = String.init<A>(describing:)();
        v240 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v238, v239, v364);

        *(v233 + 4) = v240;
        _os_log_impl(&dword_2232BB000, v229, v230, "got isRelatedQuestion as: %s", v233, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v234);
        MEMORY[0x223DE0F80](v234, -1, -1);
        MEMORY[0x223DE0F80](v233, -1, -1);
      }

      else
      {

        v188 = v343;
      }

      v241 = v330;
      v189 = v341;
      v346(v330, v341, v188);
      v242 = Logger.logObject.getter();
      v243 = static os_log_type_t.info.getter();
      v244 = os_log_type_enabled(v242, v243);
      v245 = v358;
      if (v244)
      {
        LODWORD(v332) = v243;
        v334 = v242;
        v246 = swift_slowAlloc();
        v327 = swift_slowAlloc();
        v362 = v327;
        isa = v246;
        *v246 = 136315138;
        v247 = v317;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v248 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v249 = v247;
        v250 = v248;
        v245(v249, v339);
        v251 = *(v250 + 16);
        if (v251)
        {
          v335 = v88;
          v363 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v251, 0);
          v252 = v363;
          v361 = *(v356 + 2);
          v253 = (*(v356 + 80) + 32) & ~*(v356 + 80);
          v326 = v250;
          v254 = v250 + v253;
          v360 = *(v356 + 9);
          v359 = (v314 + 8);
          v356 = (v356 + 16);
          v255 = (v356 - 8);
          do
          {
            v256 = v349;
            v257 = v351;
            (v361)(v349, v254, v351);
            *&v364[0] = 0;
            *(&v364[0] + 1) = 0xE000000000000000;
            v258 = v354;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v259 = v355;
            _print_unlocked<A, B>(_:_:)();
            (*v359)(v258, v259);
            v260 = v364[0];
            (*v255)(v256, v257);
            v363 = v252;
            v262 = *(v252 + 16);
            v261 = *(v252 + 24);
            if (v262 >= v261 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v262 + 1, 1);
              v252 = v363;
            }

            *(v252 + 16) = v262 + 1;
            *(v252 + 16 * v262 + 32) = v260;
            v254 += v360;
            --v251;
          }

          while (v251);

          v188 = v343;
          v189 = v341;
          v241 = v330;
        }

        else
        {

          v252 = MEMORY[0x277D84F90];
        }

        v263 = MEMORY[0x223DDF850](v252, MEMORY[0x277D837D0]);
        v265 = v264;

        v342(v241, v188);
        v266 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v263, v265, &v362);

        v267 = isa;
        *(isa + 4) = v266;
        v268 = v334;
        _os_log_impl(&dword_2232BB000, v334, v332, "got usecases as: %s", v267, 0xCu);
        v269 = v327;
        __swift_destroy_boxed_opaque_existential_1(v327);
        MEMORY[0x223DE0F80](v269, -1, -1);
        MEMORY[0x223DE0F80](v267, -1, -1);

        v232 = v337;
      }

      else
      {

        v342(v241, v188);
      }

      v346(v232, v189, v188);
      v270 = Logger.logObject.getter();
      v271 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v270, v271))
      {
        v272 = swift_slowAlloc();
        v273 = swift_slowAlloc();
        *&v364[0] = v273;
        *v272 = 136315138;
        v274 = v338;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v275 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v277 = v276;
        (v358)(v274, v339);
        v342(v232, v188);
        v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v275, v277, v364);
        v189 = v341;

        *(v272 + 4) = v278;
        _os_log_impl(&dword_2232BB000, v270, v271, "got domain as: %s", v272, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v273);
        MEMORY[0x223DE0F80](v273, -1, -1);
        MEMORY[0x223DE0F80](v272, -1, -1);
      }

      else
      {

        v342(v232, v188);
      }

      v279 = v344;
      v280 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v280, v281);
      v282 = v352;
      *(&v311 - 10) = v348;
      *(&v311 - 9) = v282;
      v283 = v350;
      *(&v311 - 8) = v189;
      *(&v311 - 7) = v283;
      v306[0] = v357;
      v306[1] = v321;
      v307 = &v366;
      v308 = v336;
      v309 = v340;
      v284 = PommesResponse.__allocating_init(_:)();

      if (v284)
      {
        v285 = v284;
        v286 = Logger.logObject.getter();
        v287 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v286, v287))
        {
          v288 = swift_slowAlloc();
          v289 = swift_slowAlloc();
          *&v364[0] = v289;
          *v288 = 136315138;
          v290 = [v285 debugDescription];
          v291 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v293 = v292;

          v294 = v291;
          v188 = v343;
          v295 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v293, v364);

          *(v288 + 4) = v295;
          _os_log_impl(&dword_2232BB000, v286, v287, "PommesSearchRequestProcessor#handleSuccess response: %s", v288, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v289);
          v296 = v289;
          v189 = v341;
          MEMORY[0x223DE0F80](v296, -1, -1);
          v297 = v288;
          v279 = v344;
          MEMORY[0x223DE0F80](v297, -1, -1);
        }

        v365 = 0;
        memset(v364, 0, sizeof(v364));
        static CurareDonation.donateCurareInfo(for:with:into:)(v189, v285, v364);
        outlined destroy of MediaUserStateCenter?(v364, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v298 = v285;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v284, 0, v328);
      }

      else
      {
        v299 = Logger.logObject.getter();
        v300 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v299, v300))
        {
          v301 = swift_slowAlloc();
          *v301 = 0;
          _os_log_impl(&dword_2232BB000, v299, v300, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v301, 2u);
          MEMORY[0x223DE0F80](v301, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v302 = swift_allocError();
        *v303 = 0x80;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v302, 1, v328);
      }

      (*(v322 + 8))(v279, v323);
LABEL_86:
      v342(v189, v188);
      __swift_destroy_boxed_opaque_existential_1(v367);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v105 = a3;
  v103 = a2;
  v99 = type metadata accessor for PegasusSearchResponse(0);
  v5 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99, v6);
  v101 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v8 = *(v102 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v102, v10);
  v100 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v97 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v98 = &v93 - v18;
  v19 = type metadata accessor for NLXResultCandidate();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = (&v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v93 - v32;
  v34 = type metadata accessor for PommesSearchRequest(0);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v93 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v93 - v45;
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 - 7 >= 2)
      {
        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v48 = swift_allocError();
        v49 = 69;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (a1 == 9)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v48 = swift_allocError();
      v49 = 3;
      goto LABEL_12;
    }

    if (a1 == 10)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v48 = swift_allocError();
      v49 = 4;
      goto LABEL_12;
    }

    v93 = v8;
    v52 = (*v103 + 152);
    v53 = *v52;
    v96 = v28;
    v54 = v52;

    v94 = v53;
    v95 = v54;
    (v53)(v55);
    v56 = v96;
    LOBYTE(v53) = v46[*(v34 + 80)];
    v57 = outlined destroy of PommesSearchRequest(v46, type metadata accessor for PommesSearchRequest);
    if ((v53 & 1) == 0)
    {
LABEL_36:
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v80 = swift_allocError();
      *v81 = -127;
      closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v80, 1, v105);
    }

    v58 = v94;
    (v94)(v57);
    outlined init with copy of MediaUserStateCenter?(&v43[*(v34 + 40)], v33, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of PommesSearchRequest(v43, type metadata accessor for PommesSearchRequest);
    v59 = type metadata accessor for PommesContext();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v33, 1, v59) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v33, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      goto LABEL_36;
    }

    v61 = PommesContext.domain.getter();
    v63 = v62;
    (*(v60 + 8))(v33, v59);
    if (!v63)
    {
      goto LABEL_36;
    }

    v64 = v58;
    if (v61 == 0x656E6F6870 && v63 == 0xE500000000000000)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v66 = v93;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.pommes);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2232BB000, v68, v69, "Handling no results from fallback request for phone domain as successful", v70, 2u);
      MEMORY[0x223DE0F80](v70, -1, -1);
    }

    v64();
    outlined init with copy of PommesSearchRequest(v39, v56, type metadata accessor for PommesSearchRequest.ParseState);
    outlined destroy of PommesSearchRequest(v39, type metadata accessor for PommesSearchRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v56[1];

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v73 = v56[3];

        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
        v75 = v98;
        outlined init with take of TCUMappedNLResponse?(v56 + *(v74 + 64), v98);
        v76 = v97;
        outlined init with copy of MediaUserStateCenter?(v75, v97, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v77 = type metadata accessor for TCUMappedNLResponse();
        v78 = *(v77 - 8);
        if ((*(v78 + 48))(v76, 1, v77) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v76, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          v79 = MEMORY[0x277D84F90];
        }

        else
        {
          v90 = TCUMappedNLResponse.nlResponse.getter();
          (*(v78 + 8))(v76, v77);
          v79 = NLParseResponse.userParses.getter();
        }

        v87 = v101;
        v86 = v102;
        v88 = v99;
        v89 = v100;
        outlined destroy of MediaUserStateCenter?(v75, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        goto LABEL_42;
      }

      v79 = v56[2];
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v84 = *(v83 + 64);
      v85 = *(v56 + *(v83 + 80) + 8);

      outlined destroy of MediaUserStateCenter?(v56 + v84, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }

    else
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v56 + *(v82 + 48), v23, type metadata accessor for NLXResultCandidate);
      v79 = *v23;

      outlined destroy of PommesSearchRequest(v23, type metadata accessor for NLXResultCandidate);
    }

    v87 = v101;
    v86 = v102;
    v88 = v99;
    v89 = v100;
LABEL_42:
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
    static Message.with(_:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.init()();
    (*(v66 + 16))(v87 + *(v88 + 20), v89, v86);
    v91 = v105;

    v92 = v104;

    specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v87, v79, v103, v91, v92);

    outlined destroy of PommesSearchRequest(v87, type metadata accessor for PegasusSearchResponse);
    (*(v66 + 8))(v89, v86);
  }

  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v48 = swift_allocError();
      v49 = 68;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v48 = swift_allocError();
    v49 = 67;
    goto LABEL_12;
  }

  lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
  v48 = swift_allocError();
  if (a1 == 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = -126;
  }

LABEL_12:
  *v47 = v49;
  v50 = v105;

  closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v48, 1, v50);
}

uint64_t specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v44 - v15;
  v17 = type metadata accessor for PegasusSearchResponse(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v16, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v16, 1, v22) == 1)
  {
    swift_retain_n();
    swift_retain_n();
    v24 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v25 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v16, v21, type metadata accessor for PegasusSearchResponse);
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      memset(v46, 0, sizeof(v46));
      v47 = 0;
      swift_retain_n();
      swift_retain_n();
      outlined assign with take of MediaUserStateCenter?(v44, v46, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);

      specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v21, v46, a2, a3, a4);

      outlined destroy of PommesSearchRequest(v21, type metadata accessor for PegasusSearchResponse);
      outlined destroy of DefaultExperiencesResolver(v46);
LABEL_20:
    }

    swift_retain_n();
    swift_retain_n();
    v24 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v25 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
  }

  outlined destroy of MediaUserStateCenter?(v16, v24, v25);
  outlined init with copy of MediaUserStateCenter?(a1, v13, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  if (v23(v13, 1, v22) == 1)
  {
    v26 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v27 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v13, v26, v27);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.pommes);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2232BB000, v38, v39, "PireneResponse failure: none", v40, 2u);
      MEMORY[0x223DE0F80](v40, -1, -1);
    }

    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v41 = swift_allocError();
    *v42 = 0x80;
    closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v41, 1, a3);

    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v27 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_15;
  }

  v28 = *v13;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.pommes);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v46[0] = v33;
    *v32 = 136315138;
    LOBYTE(v44[0]) = v28;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v46);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2232BB000, v30, v31, "POMMES-CURARE: {error:%s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x223DE0F80](v33, -1, -1);
    MEMORY[0x223DE0F80](v32, -1, -1);
  }

  specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(v28, a2, a3, a4);
}

uint64_t type metadata accessor for PommesSearchRequestProcessor()
{
  result = type metadata singleton initialization cache for PommesSearchRequestProcessor;
  if (!type metadata singleton initialization cache for PommesSearchRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PommesSearchRequestProcessor()
{
  result = type metadata accessor for PommesSearchRequest(319);
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

void partial apply for closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2)
{
  v5 = *(type metadata accessor for PommesCandidateId() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t outlined assign with take of PommesSearchRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PommesSearchRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Data] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Data] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with take of TCUMappedNLResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_44Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void partial apply for closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(unint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t partial apply for closure #1 in closure #1 in PommesSearchRequestProcessor.search(enabled:completion:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t static ServiceHelperManager.shared.setter(uint64_t a1)
{
  swift_beginAccess();
  static ServiceHelperManager.shared = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path setter for static ServiceHelperManager.shared : ServiceHelperManager.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static ServiceHelperManager.shared = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ServiceHelperManager.setServiceHelper(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_unknownObjectRelease();
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.sage);
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pMd, &_sSo32AFRequestDispatcherServiceHelper_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v6, v7, "ServiceHelperUtil: setting service helper (underlying: %s)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  *v2 = a1;
  return swift_unknownObjectRetain();
}

uint64_t ServiceHelperManager.getServiceHelper()(uint64_t a1)
{
  specialized ServiceHelperManager.getServiceHelper()(a1);

  return swift_unknownObjectRetain();
}

uint64_t specialized ServiceHelperManager.getServiceHelper()(uint64_t a1)
{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sage);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pSgMd, &_sSo32AFRequestDispatcherServiceHelper_pSgMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2232BB000, v3, v4, "ServiceHelperUtil: Retrieving service helper (underlying: %s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223DE0F80](v6, -1, -1);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ServiceHelperManager(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceHelperManager(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t NSProcessInfo.isRunningUnitTests.getter()
{
  v1 = [v0 environment];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000002234DBFA0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t WholeHomeAudioPreflightClient.__allocating_init(dataProviderManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t WholeHomeAudioPreflightClient.currentlyPlayingMediaType()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v96 = *(v2 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v87 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v89 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
  v10 = *(v93 - 8);
  v11 = v10[8];
  v13 = MEMORY[0x28223BE20](v93, v12);
  v91 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v90 = v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v85 - v20;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v97 = *(v22 - 8);
  v23 = *(v97 + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v88 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = v85 - v28;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.pommes);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v92 = v10;
    v35 = v6;
    v36 = v29;
    v37 = v22;
    v38 = v31;
    v39 = v2;
    v40 = a1;
    v41 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2232BB000, v32, v33, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType", v34, 2u);
    v42 = v41;
    a1 = v40;
    v2 = v39;
    v31 = v38;
    v22 = v37;
    v29 = v36;
    v6 = v35;
    v10 = v92;
    MEMORY[0x223DE0F80](v42, -1, -1);
  }

  (*(**(v95 + 16) + 424))();
  v43 = v97;
  if ((*(v97 + 48))(v21, 1, v22) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v21, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2232BB000, v44, v45, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: queue state is nil", v46, 2u);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }

LABEL_17:
    v75 = 1;
    return (*(v96 + 56))(a1, v75, 1, v2);
  }

  (*(v43 + 32))(v29, v21, v22);
  if ((Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.hasAudioQueueStateItem.getter() & 1) == 0)
  {
    v69 = v22;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v29;
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2232BB000, v70, v71, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: queue state does not have an audio item", v73, 2u);
      v74 = v73;
      v29 = v72;
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

    (*(v43 + 8))(v29, v69);
    goto LABEL_17;
  }

  v85[1] = v31;
  v86 = v2;
  v95 = a1;
  v47 = v90;
  Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter();
  v48 = *MEMORY[0x277D392B0];
  v49 = v91;
  v50 = v93;
  v85[0] = v10[13];
  (v85[0])(v91, v48, v93);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState, MEMORY[0x277D392B8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v51 = v50;
  v54 = v10[1];
  v53 = v10 + 1;
  v52 = v54;
  v54(v49, v51);
  v54(v47, v51);
  if (v99 == v98 || (v92 = v53, Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter(), (v85[0])(v49, *MEMORY[0x277D39298], v51), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v52(v49, v51), v52(v47, v51), v99 == v98))
  {
    v55 = v97;
    v56 = *(v97 + 16);
    v57 = v88;
    v93 = v29;
    v56(v88, v29, v22);
    v58 = v22;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v92 = v6;
      v62 = v61;
      *v61 = 134217984;
      v63 = v89;
      Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.getter();
      v64 = v87;
      Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter();
      v65 = (*(v94 + 8))(v63, v92);
      v91 = MEMORY[0x223DDBA00](v65);
      v66 = v57;
      v2 = v86;
      (*(v96 + 8))(v64, v86);
      v67 = *(v55 + 8);
      v67(v66, v58);
      *(v62 + 1) = v91;
      _os_log_impl(&dword_2232BB000, v59, v60, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: %ld", v62, 0xCu);
      v68 = v62;
      v6 = v92;
      MEMORY[0x223DE0F80](v68, -1, -1);
    }

    else
    {
      v67 = *(v55 + 8);
      v67(v57, v58);
      v2 = v86;
      v63 = v89;
    }

    v77 = v93;
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.getter();
    v78 = v95;
    Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter();
    (*(v94 + 8))(v63, v6);
    v67(v77, v58);
    a1 = v78;
    v75 = 0;
  }

  else
  {
    v79 = v22;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v29;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2232BB000, v80, v81, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: queue state item is not playing or interrupted", v83, 2u);
      v84 = v83;
      v29 = v82;
      MEMORY[0x223DE0F80](v84, -1, -1);
    }

    (*(v97 + 8))(v29, v79);
    v75 = 1;
    a1 = v95;
    v2 = v86;
  }

  return (*(v96 + 56))(a1, v75, 1, v2);
}

uint64_t WholeHomeAudioPreflightClient.sameMediaType(queueItemType:taskItemType:)(uint64_t a1, uint64_t a2)
{
  v268 = a2;
  v267 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v270 = *(v267 - 8);
  v3 = *(v270 + 64);
  MEMORY[0x28223BE20](v267, v4);
  v263 = &v236 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v6 = *(*(v269 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v269, v7);
  v239 = &v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v244 = &v236 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v250 = &v236 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v254 = &v236 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v253 = &v236 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v257 = &v236 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v262 = &v236 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v265 = &v236 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v236 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v236 = &v236 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v241 = &v236 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v238 = &v236 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v237 = &v236 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v243 = &v236 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v245 = &v236 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v240 = &v236 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v247 = &v236 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v248 = &v236 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v242 = &v236 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v251 = &v236 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v252 = &v236 - v71;
  v73 = MEMORY[0x28223BE20](v70, v72);
  v246 = &v236 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v259 = (&v236 - v77);
  v79 = MEMORY[0x28223BE20](v76, v78);
  v260 = (&v236 - v80);
  v82 = MEMORY[0x28223BE20](v79, v81);
  v249 = &v236 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v255 = &v236 - v86;
  v88 = MEMORY[0x28223BE20](v85, v87);
  v256 = &v236 - v89;
  v91 = MEMORY[0x28223BE20](v88, v90);
  v258 = (&v236 - v92);
  v94 = MEMORY[0x28223BE20](v91, v93);
  v96 = &v236 - v95;
  v98 = MEMORY[0x28223BE20](v94, v97);
  v100 = &v236 - v99;
  v102 = MEMORY[0x28223BE20](v98, v101);
  v261 = &v236 - v103;
  v105 = MEMORY[0x28223BE20](v102, v104);
  v266 = (&v236 - v106);
  v108 = MEMORY[0x28223BE20](v105, v107);
  v264 = &v236 - v109;
  v111 = MEMORY[0x28223BE20](v108, v110);
  v113 = &v236 - v112;
  v115 = MEMORY[0x28223BE20](v111, v114);
  v117 = &v236 - v116;
  MEMORY[0x28223BE20](v115, v118);
  v120 = &v236 - v119;
  v121 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v122 = *(v121 - 8);
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v121, v124);
  v126 = &v236 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v122 + 16))(v126, a1, v121);
  v127 = (*(v122 + 88))(v126, v121);
  v128 = 0;
  if (v127 != *MEMORY[0x277D39B40] && v127 != *MEMORY[0x277D39B38] && v127 != *MEMORY[0x277D39B48])
  {
    if (v127 == *MEMORY[0x277D39B68])
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      v129 = *MEMORY[0x277D5ED28];
      v130 = v270;
      v131 = v267;
      v260 = *(v270 + 104);
      v260(v117, v129, v267);
      v132 = *(v130 + 56);
      v262 = v130 + 56;
      v259 = v132;
      (v132)(v117, 0, 1, v131);
      v133 = *(v269 + 48);
      outlined init with copy of MediaUserStateCenter?(v120, v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v117, &v33[v133], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v134 = *(v130 + 48);
      if (v134(v33, 1, v131) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v117, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v120, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v135 = v131;
        if (v134(&v33[v133], 1, v131) == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      outlined init with copy of MediaUserStateCenter?(v33, v113, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      if (v134(&v33[v133], 1, v131) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v117, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v120, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*(v270 + 8))(v113, v131);
        v135 = v131;
LABEL_16:
        v258 = v134;
        outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
LABEL_17:
        v144 = v264;
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
        v145 = v266;
        v260(v266, *MEMORY[0x277D5EDE8], v135);
        (v259)(v145, 0, 1, v135);
        v146 = *(v269 + 48);
        v33 = v265;
        outlined init with copy of MediaUserStateCenter?(v144, v265, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v145, &v33[v146], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v147 = v258;
        if (v258(v33, 1, v135) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v145, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v144, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v147(&v33[v146], 1, v135) == 1)
          {
LABEL_19:
            v143 = v33;
            goto LABEL_20;
          }

          goto LABEL_23;
        }

        v148 = v261;
        outlined init with copy of MediaUserStateCenter?(v33, v261, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v147(&v33[v146], 1, v135) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v266, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v144, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v270 + 8))(v148, v135);
LABEL_23:
          v149 = v33;
LABEL_24:
          outlined destroy of MediaUserStateCenter?(v149, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
LABEL_41:
          v128 = 0;
          return v128 & 1;
        }

        v165 = v270;
        v166 = v263;
        (*(v270 + 32))(v263, &v33[v146], v135);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
        v128 = dispatch thunk of static Equatable.== infix(_:_:)();
        v167 = *(v165 + 8);
        v167(v166, v135);
        outlined destroy of MediaUserStateCenter?(v266, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v144, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v168 = v148;
        v169 = v135;
LABEL_32:
        v167(v168, v169);
        v170 = v33;
LABEL_33:
        outlined destroy of MediaUserStateCenter?(v170, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        return v128 & 1;
      }

      v258 = v134;
      v150 = v263;
      (*(v270 + 32))(v263, &v33[v133], v131);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
      LODWORD(v257) = dispatch thunk of static Equatable.== infix(_:_:)();
      v151 = *(v270 + 8);
      v151(v150, v131);
      outlined destroy of MediaUserStateCenter?(v117, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v120, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v151(v113, v131);
      outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v135 = v131;
      if ((v257 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      v128 = 1;
      return v128 & 1;
    }

    v128 = 0;
    if (v127 != *MEMORY[0x277D39B58] && v127 != *MEMORY[0x277D39B30])
    {
      if (v127 == *MEMORY[0x277D39B60])
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
        v136 = *MEMORY[0x277D5EE08];
        v137 = v270;
        v138 = v267;
        v265 = *(v270 + 104);
        (v265)(v96, v136, v267);
        v264 = *(v137 + 56);
        (v264)(v96, 0, 1, v138);
        v139 = *(v269 + 48);
        v140 = v262;
        outlined init with copy of MediaUserStateCenter?(v100, v262, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v96, v140 + v139, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v141 = *(v137 + 48);
        v142 = v141(v140, 1, v138);
        v266 = v141;
        if (v142 == 1)
        {
          outlined destroy of MediaUserStateCenter?(v96, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v100, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v141(v140 + v139, 1, v138) == 1)
          {
            v143 = v140;
LABEL_20:
            outlined destroy of MediaUserStateCenter?(v143, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v128 = 1;
            return v128 & 1;
          }
        }

        else
        {
          v171 = v258;
          outlined init with copy of MediaUserStateCenter?(v140, v258, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v141(v140 + v139, 1, v138) != 1)
          {
            v187 = v140;
            v188 = v270;
            v189 = v187 + v139;
            v190 = v263;
            (*(v270 + 32))(v263, v189, v138);
            lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
            LODWORD(v261) = dispatch thunk of static Equatable.== infix(_:_:)();
            v191 = *(v188 + 8);
            v191(v190, v138);
            outlined destroy of MediaUserStateCenter?(v96, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined destroy of MediaUserStateCenter?(v100, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v191(v258, v138);
            outlined destroy of MediaUserStateCenter?(v262, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            if (v261)
            {
              goto LABEL_26;
            }

LABEL_37:
            v172 = v256;
            dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
            v173 = v255;
            v174 = v267;
            (v265)(v255, *MEMORY[0x277D5ED58], v267);
            (v264)(v173, 0, 1, v174);
            v175 = *(v269 + 48);
            v176 = v257;
            outlined init with copy of MediaUserStateCenter?(v172, v257, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined init with copy of MediaUserStateCenter?(v173, v176 + v175, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v177 = v266;
            if (v266(v176, 1, v174) == 1)
            {
              outlined destroy of MediaUserStateCenter?(v173, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined destroy of MediaUserStateCenter?(v172, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v177(v176 + v175, 1, v174) == 1)
              {
                v143 = v176;
                goto LABEL_20;
              }
            }

            else
            {
              v179 = v249;
              outlined init with copy of MediaUserStateCenter?(v176, v249, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v177(v176 + v175, 1, v174) != 1)
              {
                v192 = v270;
                v193 = v263;
                (*(v270 + 32))(v263, v176 + v175, v174);
                lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
                v128 = dispatch thunk of static Equatable.== infix(_:_:)();
                v194 = *(v192 + 8);
                v194(v193, v174);
                outlined destroy of MediaUserStateCenter?(v173, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                outlined destroy of MediaUserStateCenter?(v172, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                v194(v179, v174);
                v170 = v176;
                goto LABEL_33;
              }

              outlined destroy of MediaUserStateCenter?(v173, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined destroy of MediaUserStateCenter?(v172, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              (*(v270 + 8))(v179, v174);
            }

            v149 = v176;
            goto LABEL_24;
          }

          outlined destroy of MediaUserStateCenter?(v96, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v100, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v270 + 8))(v171, v138);
        }

        outlined destroy of MediaUserStateCenter?(v140, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
        goto LABEL_37;
      }

      if (v127 != *MEMORY[0x277D39B50])
      {
        (*(v122 + 8))(v126, v121);
        goto LABEL_41;
      }

      v152 = v260;
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      v153 = *MEMORY[0x277D5ED90];
      v154 = v270;
      v155 = v259;
      v156 = v267;
      v266 = *(v270 + 104);
      v264 = (v270 + 104);
      v266(v259, v153, v267);
      v157 = v154 + 56;
      v265 = *(v154 + 56);
      (v265)(v155, 0, 1, v156);
      v158 = *(v269 + 48);
      v159 = v253;
      outlined init with copy of MediaUserStateCenter?(v152, v253, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v155, v159 + v158, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v160 = *(v154 + 48);
      v161 = v160(v159, 1, v156);
      v262 = v154 + 48;
      if (v161 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v155, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v152, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v162 = v160(v159 + v158, 1, v156);
        v163 = v159;
        v164 = v254;
        if (v162 == 1)
        {
          v143 = v159;
          goto LABEL_20;
        }
      }

      else
      {
        v180 = v246;
        outlined init with copy of MediaUserStateCenter?(v159, v246, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v163 = v159;
        if (v160(v159 + v158, 1, v156) != 1)
        {
          v201 = v180;
          v202 = v270;
          v203 = v159 + v158;
          v204 = v263;
          (*(v270 + 32))(v263, v203, v156);
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
          LODWORD(v261) = dispatch thunk of static Equatable.== infix(_:_:)();
          v205 = *(v202 + 8);
          v205(v204, v267);
          outlined destroy of MediaUserStateCenter?(v259, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v260, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v205(v201, v267);
          v156 = v267;
          outlined destroy of MediaUserStateCenter?(v159, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v164 = v254;
          if (v261)
          {
            goto LABEL_26;
          }

LABEL_49:
          v181 = v157;
          v182 = v252;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
          v183 = v160;
          v184 = v251;
          v266(v251, *MEMORY[0x277D5EDB0], v156);
          v261 = v181;
          (v265)(v184, 0, 1, v156);
          v185 = *(v269 + 48);
          outlined init with copy of MediaUserStateCenter?(v182, v164, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined init with copy of MediaUserStateCenter?(v184, v164 + v185, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v183(v164, 1, v156) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v184, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined destroy of MediaUserStateCenter?(v182, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v186 = v183;
            if (v183(v164 + v185, 1, v156) == 1)
            {
              v143 = v164;
              goto LABEL_20;
            }
          }

          else
          {
            v195 = v242;
            outlined init with copy of MediaUserStateCenter?(v164, v242, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v186 = v183;
            if (v183(v164 + v185, 1, v156) != 1)
            {
              v214 = v164;
              v215 = v270;
              v216 = v214 + v185;
              v217 = v263;
              (*(v270 + 32))(v263, v216, v156);
              lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
              v218 = dispatch thunk of static Equatable.== infix(_:_:)();
              v219 = *(v215 + 8);
              v219(v217, v267);
              outlined destroy of MediaUserStateCenter?(v251, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined destroy of MediaUserStateCenter?(v252, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              v219(v195, v267);
              v156 = v267;
              outlined destroy of MediaUserStateCenter?(v214, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v218)
              {
                goto LABEL_26;
              }

LABEL_58:
              v196 = v248;
              dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
              v197 = v247;
              v266(v247, *MEMORY[0x277D5EE18], v156);
              (v265)(v197, 0, 1, v156);
              v198 = *(v269 + 48);
              v199 = v250;
              outlined init with copy of MediaUserStateCenter?(v196, v250, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined init with copy of MediaUserStateCenter?(v197, v199 + v198, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v186(v199, 1, v156) == 1)
              {
                outlined destroy of MediaUserStateCenter?(v197, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                v200 = v250;
                outlined destroy of MediaUserStateCenter?(v196, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                if (v186(v200 + v198, 1, v156) == 1)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v206 = v240;
                outlined init with copy of MediaUserStateCenter?(v199, v240, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                if (v186(v199 + v198, 1, v156) != 1)
                {
                  v225 = v270;
                  v226 = v199 + v198;
                  v227 = v263;
                  (*(v270 + 32))(v263, v226, v156);
                  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
                  LODWORD(v261) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v228 = *(v225 + 8);
                  v228(v227, v267);
                  outlined destroy of MediaUserStateCenter?(v247, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  outlined destroy of MediaUserStateCenter?(v248, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  v228(v206, v267);
                  v156 = v267;
                  outlined destroy of MediaUserStateCenter?(v199, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  v207 = v266;
                  if (v261)
                  {
                    goto LABEL_26;
                  }

LABEL_66:
                  v208 = v245;
                  dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
                  v209 = v243;
                  v207(v243, *MEMORY[0x277D5ED98], v156);
                  (v265)(v209, 0, 1, v156);
                  v210 = *(v269 + 48);
                  v211 = v208;
                  v212 = v244;
                  outlined init with copy of MediaUserStateCenter?(v211, v244, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  v213 = v212;
                  outlined init with copy of MediaUserStateCenter?(v209, v212 + v210, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  if (v186(v212, 1, v156) == 1)
                  {
                    outlined destroy of MediaUserStateCenter?(v209, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    v200 = v244;
                    outlined destroy of MediaUserStateCenter?(v245, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    if (v186(v200 + v210, 1, v156) == 1)
                    {
LABEL_68:
                      v143 = v200;
                      goto LABEL_20;
                    }
                  }

                  else
                  {
                    v220 = v237;
                    outlined init with copy of MediaUserStateCenter?(v212, v237, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    if (v186(v212 + v210, 1, v156) != 1)
                    {
                      v230 = v270;
                      v231 = v213 + v210;
                      v232 = v263;
                      (*(v270 + 32))(v263, v231, v156);
                      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
                      LODWORD(v261) = dispatch thunk of static Equatable.== infix(_:_:)();
                      v233 = *(v230 + 8);
                      v233(v232, v267);
                      outlined destroy of MediaUserStateCenter?(v243, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      outlined destroy of MediaUserStateCenter?(v245, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      v233(v220, v267);
                      v156 = v267;
                      outlined destroy of MediaUserStateCenter?(v213, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      v221 = v266;
                      if (v261)
                      {
                        goto LABEL_26;
                      }

LABEL_74:
                      v222 = v238;
                      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
                      v223 = v241;
                      v221(v241, *MEMORY[0x277D5EDC0], v156);
                      (v265)(v223, 0, 1, v156);
                      v224 = *(v269 + 48);
                      v33 = v239;
                      outlined init with copy of MediaUserStateCenter?(v222, v239, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      outlined init with copy of MediaUserStateCenter?(v223, &v33[v224], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      if (v186(v33, 1, v156) == 1)
                      {
                        outlined destroy of MediaUserStateCenter?(v223, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        outlined destroy of MediaUserStateCenter?(v222, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        if (v186(&v33[v224], 1, v156) == 1)
                        {
                          goto LABEL_19;
                        }

                        goto LABEL_23;
                      }

                      v229 = v236;
                      outlined init with copy of MediaUserStateCenter?(v33, v236, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      if (v186(&v33[v224], 1, v156) == 1)
                      {
                        outlined destroy of MediaUserStateCenter?(v241, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        outlined destroy of MediaUserStateCenter?(v222, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        (*(v270 + 8))(v229, v156);
                        goto LABEL_23;
                      }

                      v234 = v270;
                      v235 = v263;
                      (*(v270 + 32))(v263, &v33[v224], v156);
                      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
                      v128 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v167 = *(v234 + 8);
                      v167(v235, v156);
                      outlined destroy of MediaUserStateCenter?(v241, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      outlined destroy of MediaUserStateCenter?(v222, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      v168 = v229;
                      v169 = v156;
                      goto LABEL_32;
                    }

                    outlined destroy of MediaUserStateCenter?(v243, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    v200 = v244;
                    outlined destroy of MediaUserStateCenter?(v245, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    (*(v270 + 8))(v220, v156);
                  }

                  outlined destroy of MediaUserStateCenter?(v200, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
                  v221 = v266;
                  goto LABEL_74;
                }

                outlined destroy of MediaUserStateCenter?(v247, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                v200 = v250;
                outlined destroy of MediaUserStateCenter?(v248, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                (*(v270 + 8))(v206, v156);
              }

              outlined destroy of MediaUserStateCenter?(v200, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
              v207 = v266;
              goto LABEL_66;
            }

            outlined destroy of MediaUserStateCenter?(v251, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined destroy of MediaUserStateCenter?(v252, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            (*(v270 + 8))(v195, v156);
          }

          outlined destroy of MediaUserStateCenter?(v164, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_58;
        }

        outlined destroy of MediaUserStateCenter?(v259, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v260, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*(v270 + 8))(v180, v156);
        v164 = v254;
      }

      outlined destroy of MediaUserStateCenter?(v163, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
      goto LABEL_49;
    }
  }

  return v128 & 1;
}