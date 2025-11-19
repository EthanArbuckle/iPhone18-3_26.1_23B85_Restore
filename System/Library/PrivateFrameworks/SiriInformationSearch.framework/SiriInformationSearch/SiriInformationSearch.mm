void PommesBridge.handleSessionStarted(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.pommes);
  v17 = a1;
  v54 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v55 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v53 = v8;
    v23 = v22;
    v57[0] = v22;
    *v21 = 136315138;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v10 + 8))(v55, v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v57);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_2232BB000, v18, v19, "handling session started for session id: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v28 = v23;
    v8 = v53;
    MEMORY[0x223DE0F80](v28, -1, -1);
    v29 = v21;
    v14 = v55;
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  SessionMessageBase.sessionId.getter();
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(*v2 + class metadata base offset for PommesBridge + 80))(v8);
  MessageDispatchingBridgeBase.conversationSessionsManaging.getter();
  __swift_project_boxed_opaque_existential_1(v57, v58);
  SessionMessageBase.sessionId.getter();
  dispatch thunk of ConversationSessionsManaging.conversationSessionState(forConversationSessionId:)();
  v30 = v14;
  v31 = *(v10 + 8);
  v31(v30, v9);
  (*(*v2 + class metadata base offset for PommesBridge + 104))(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = *(v2 + direct field offset for PommesBridge.pommesSearch);
  v33 = v10 + 8;
  if (v32)
  {
    v34 = *(*v32 + 312);
    v35 = *(v2 + direct field offset for PommesBridge.pommesSearch);

    v34(v36);
  }

  v37 = v17;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v33;
    v42 = v41;
    v56[0] = v41;
    *v40 = 136315394;
    (*(*v2 + class metadata base offset for PommesBridge + 96))(v57);
    v43 = v58;
    outlined destroy of MediaUserStateCenter?(v57, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = 544501582;
    }

    if (v43)
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE400000000000000;
    }

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v56);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    v47 = v55;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v31(v47, v9);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v56);

    *(v40 + 14) = v51;
    _os_log_impl(&dword_2232BB000, v38, v39, "%sFound session state for session id %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v42, -1, -1);
    MEMORY[0x223DE0F80](v40, -1, -1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t outlined assign with take of MediaUserStateCenter?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

Swift::Void __swiftcall PommesSearch.prepareForSearchAtSessionStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(*(v2 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 184))(v5))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 224))();
  }

  Date.init()();
  v8 = &v7[v2[5]];
  *v8 = "SiriInformationSearch/PommesSearch.swift";
  *(v8 + 1) = 40;
  v8[16] = 2;
  *&v7[v2[6]] = 395;
  v9 = &v7[v2[7]];
  *v9 = "prepareForSearchAtSessionStart()";
  *(v9 + 1) = 32;
  v9[16] = 2;
  v10 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000033);
  v11 = &v7[v2[8]];
  *v11 = v10;
  v11[1] = v12;
  v21[3] = &type metadata for FeatureFlag;
  v21[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v13 = swift_allocObject();
  v21[0] = v13;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 3;
  v14 = isFeatureEnabled(_:)();
  v15 = __swift_destroy_boxed_opaque_existential_1(v21);
  if (v14)
  {
    (*(**(v1 + 24) + 528))(v15);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2232BB000, v17, v18, "Sphinx FF is disabled, skipping prepareForSearchAtSessionStart", v19, 2u);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v7, 0);
  outlined destroy of PommesSearchRequest.ParseState(v7, type metadata accessor for PerformanceUtil.Ticket);
  swift_beginAccess();
  *(v1 + 112) = 1;
}

uint64_t sub_2232BF1E0()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t PommesBridge.sessionState.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridge.sessionState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + v3, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  return swift_endAccess();
}

uint64_t PommesBridge.currentSessionId.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridge.currentSessionId;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(uint64_t a1)
{
  if (String.count.getter() < 101)
  {
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 100;
      _os_log_impl(&dword_2232BB000, v3, v4, "Description is too long. Trimming to %ld characters.", v5, 0xCu);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    String.index(_:offsetBy:)();
    v6 = String.subscript.getter();
    v7 = MEMORY[0x223DDF600](v6);

    MEMORY[0x223DDF6D0](3026478, 0xE300000000000000);

    return v7;
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Void __swiftcall PerformanceUtil.resetMeasurements()()
{
  v1 = *(v0 + 48);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 40);
  *(v0 + 40) = MEMORY[0x277D84F90];

  [v1 unlock];
}

unint64_t lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag()
{
  result = lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag);
  }

  return result;
}

Swift::Void __swiftcall PegasusProxy.prepareForSearchAtSessionStart()()
{
  v1 = type metadata accessor for PerformanceUtil.Ticket(0);
  v2 = *(*(v1 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - v8;
  v10 = *(v0 + 72);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;

  Date.init()();
  v11 = &v9[v1[5]];
  *v11 = "SiriInformationSearch/PegasusProxy.swift";
  *(v11 + 1) = 40;
  v11[16] = 2;
  *&v9[v1[6]] = 342;
  v12 = &v9[v1[7]];
  *v12 = "prepareForSearchAtSessionStart()";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v13 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000026);
  v14 = &v9[v1[8]];
  *v14 = v13;
  v14[1] = v15;
  (*(**(v0 + 184) + 312))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = *(*static PerformanceUtil.shared + 184);
  v16(v9, 0);
  Date.init()();
  v17 = &v6[v1[5]];
  *v17 = "SiriInformationSearch/PegasusProxy.swift";
  *(v17 + 1) = 40;
  v17[16] = 2;
  *&v6[v1[6]] = 346;
  v18 = &v6[v1[7]];
  *v18 = "prepareForSearchAtSessionStart()";
  *(v18 + 1) = 32;
  v18[16] = 2;
  v19 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000021);
  v20 = &v6[v1[8]];
  *v20 = v19;
  v20[1] = v21;
  (*(*v0 + 344))();
  v23 = v22;
  ObjectType = swift_getObjectType();
  (*(v23 + 56))(ObjectType, v23);
  swift_unknownObjectRelease();
  v16(v6, 0);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v6, type metadata accessor for PerformanceUtil.Ticket);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v9, type metadata accessor for PerformanceUtil.Ticket);
}

Swift::Void __swiftcall DataProviderManager.prepareForSearchAtSessionStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v23 = *(v1 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AssistantDataCacheCSgMd, &_s21SiriInformationSearch18AssistantDataCacheCSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2232BB000, v8, v9, "DataProviderManager scheduling work to prepare for search at session start (helper: %s)...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223DE0F80](v11, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  v15 = *(v1 + 16);
  (*(**(v1 + 32) + 216))(v15);
  (*(**(v1 + 40) + 216))(v15);
  (*(**(v1 + 48) + 216))(v15);
  (*(**(v1 + 56) + 216))(v15);
  (*(**(v1 + 24) + 216))(v15);
  (*(**(v1 + 64) + 216))(v15);
  (*(**(v1 + 72) + 216))(v15);
  (*(**(v1 + 80) + 216))(v15);
  (*(**(v1 + 88) + 216))(v15);
  (*(**(v1 + 96) + 216))(v15);
  Date.init()();
  v16 = &v6[v2[5]];
  *v16 = "SiriInformationSearch/DataProviderManager.swift";
  *(v16 + 1) = 47;
  v16[16] = 2;
  *&v6[v2[6]] = 113;
  v17 = &v6[v2[7]];
  *v17 = "prepareForSearchAtSessionStart()";
  *(v17 + 1) = 32;
  v17[16] = 2;
  v18 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000032);
  v19 = &v6[v2[8]];
  *v19 = v18;
  v19[1] = v20;
  v21 = *(v1 + 128);
  if (v21)
  {
    v22 = *(*v21 + 176);

    v22(v15, 0);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v6, 0);
  outlined destroy of PerformanceUtil.Ticket(v6);
}

void AnyDataProvider.prepare(dispatchQueue:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 89))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);

    v28 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[12], v2[13], aBlock);
      _os_log_impl(&dword_2232BB000, v28, v19, "%s skipping prepared", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DE0F80](v21, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    else
    {
      v25 = v28;
    }
  }

  else
  {
    v27 = v2[10];
    v28 = v15;
    dispatch_group_enter(v27);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = *(v4 + 80);
    v23[3] = v22;
    v23[4] = a1;
    aBlock[4] = partial apply for closure #1 in AnyDataProvider.prepare(dispatchQueue:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_5;
    v24 = _Block_copy(aBlock);

    a1;
    static DispatchQoS.unspecified.getter();
    v29 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](v27, v17, v10, v24);
    _Block_release(v24);
    (*(v6 + 8))(v10, v5);
    (*(v12 + 8))(v17, v28);
  }
}

uint64_t sub_2232C01F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232C022C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

const char *protocol witness for FeatureFlagsKey.domain.getter in conformance FeatureFlag()
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

const char *FeatureFlag.feature.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32) > 1u)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (*(v0 + 32) == 2)
    {
      return specialized FeatureFlag.domainLocaleFeature(_:_:)(v1, v2, v4, v5);
    }

    else if (v4 | v2 | v1 | v5)
    {
      v6 = v4 | v2 | v5;
      if (v1 != 1 || v6)
      {
        if (v1 != 2 || v6)
        {
          if (v1 != 3 || v6)
          {
            if (v1 != 4 || v6)
            {
              if (v1 == 5 && v6 == 0)
              {
                return "phase2_domains";
              }

              else
              {
                return "settings_tell_me_generated";
              }
            }

            else
            {
              return "third_party_app_intents";
            }
          }

          else
          {
            return "GeoPersonalizationShadowLogging";
          }
        }

        else
        {
          return "plugin_warmup";
        }
      }

      else
      {
        return "Canyonlands";
      }
    }

    else
    {
      return "Sphinx";
    }
  }

  else if (*(v0 + 32))
  {
    return specialized FeatureFlag.domainFeature(for:)(v1, v2);
  }

  else
  {
    return specialized FeatureFlag.disableDeviceFeature(_:)();
  }
}

Swift::Void __swiftcall PommesSearch.prepareForSearchAtRequestStart(requestId:location:)(Swift::String requestId, CLLocation_optional location)
{
  v3 = v2;
  isa = location.value.super.isa;
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2232BB000, v8, v9, "POMMES preparing for search at request start", v10, 2u);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  v25[3] = &type metadata for FeatureFlag;
  v25[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v11 = swift_allocObject();
  v25[0] = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 3;
  v12 = isFeatureEnabled(_:)();
  v13 = __swift_destroy_boxed_opaque_existential_1(v25);
  if (v12)
  {
    v14 = ((*v3)[26])(v13);
    v15 = specialized Set.contains(_:)(countAndFlagsBits, object, v14);

    if (v15)
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
        _os_log_impl(&dword_2232BB000, v16, v17, "requestId=%s is already prepared, skipping prepareForSearchAtRequestStart()", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x223DE0F80](v19, -1, -1);
        MEMORY[0x223DE0F80](v18, -1, -1);
      }
    }

    else
    {
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v24, countAndFlagsBits, object);
      swift_endAccess();

      v23 = (*(*v3[3] + 552))(countAndFlagsBits, object, isa);
      (*(*v3[5] + 184))(v23);
    }
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "Sphinx FF is disabled, skipping prepareForSearchAtRequestStart", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }
  }
}

uint64_t outlined consume of FeatureFlag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

void AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for PerformanceUtil.Ticket(0);
  v50 = *(v6 - 1);
  v7 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(*v3 + 120))(&v57, v17);
    v20 = v57;
    if (v59)
    {
      LOBYTE(aBlock[0]) = v57;
      *(aBlock + 1) = *v58;
      aBlock[2] = *&v58[15];
      v53 = v59;
      v54 = v60;
      v55 = v61;
      v56[0] = v62[0];
      *(v56 + 10) = *(v62 + 10);
      outlined destroy of AssistantDataSnapshot?(aBlock);
      if ((v20 & 1) == 0)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.pommes);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2232BB000, v22, v23, "#AssistantData Skipping snapshot update", v24, 2u);
          MEMORY[0x223DE0F80](v24, -1, -1);
        }

        return;
      }
    }

    else
    {
      LOBYTE(aBlock[0]) = v57;
      *(aBlock + 1) = *v58;
      aBlock[2] = *&v58[15];
      v53 = 0;
      v54 = v60;
      v55 = v61;
      v56[0] = v62[0];
      *(v56 + 10) = *(v62 + 10);
      outlined destroy of AssistantDataSnapshot?(aBlock);
    }
  }

  v49 = a1;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v14 + 8))(v19, v13);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.pommes);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, aBlock);
    _os_log_impl(&dword_2232BB000, v29, v30, "#AssistantData Updating snapshot from POMMES service helper (request aceId=%s)", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x223DE0F80](v32, -1, -1);
    MEMORY[0x223DE0F80](v31, -1, -1);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D47308]) init];
  v34 = MEMORY[0x223DDF550](v25, v27);

  [v33 setAceId_];

  v35 = v33;
  [v35 setRefId_];
  Date.init()();
  v36 = &v12[v6[5]];
  *v36 = "SiriInformationSearch/AssistantDataCache.swift";
  *(v36 + 1) = 46;
  v36[16] = 2;
  *&v12[v6[6]] = 74;
  v37 = &v12[v6[7]];
  *v37 = "updateSnapshot(on:onlyIfNeeded:)";
  *(v37 + 1) = 32;
  v37[16] = 2;
  v38 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL);
  v39 = &v12[v6[8]];
  *v39 = v38;
  v39[1] = v40;
  v41 = v3[3];
  v42 = v51;
  outlined init with copy of PerformanceUtil.Ticket(v12, v51);
  v43 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v44 = (v7 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  outlined init with take of PerformanceUtil.Ticket(v42, v45 + v43);
  *(v45 + v44) = v3;
  v46 = v49;
  *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  *&v54 = partial apply for closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:);
  *(&v54 + 1) = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  v53 = &block_descriptor_21;
  v47 = _Block_copy(aBlock);

  v48 = v46;

  [v41 handleCommand:v35 completion:v47];
  _Block_release(v47);

  outlined destroy of PerformanceUtil.Ticket(v12);
}

uint64_t sub_2232C1188()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[10] + 8);

  v9 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t closure #1 in AnyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = (*(*result + 208))(a2);
    if ((*(*v4 + 152))(v5))
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.pommes);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136315138;
        v11 = *(v4 + 96);
        v12 = *(v4 + 104);

        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_2232BB000, v7, v8, "%s set isPrepared", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x223DE0F80](v10, -1, -1);
        MEMORY[0x223DE0F80](v9, -1, -1);
      }

      *(v4 + 89) = 1;
    }

    dispatch_group_leave(*(v4 + 80));
  }

  return result;
}

uint64_t outlined destroy of PerformanceUtil.Ticket(uint64_t a1)
{
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PommesSearchError(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformanceUtil.recordMeasurement(for:logMeasurement:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC6TicketVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC6TicketVGMR);
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234CF920;
  outlined init with copy of PerformanceUtil.Ticket(a1, v8 + v7, type metadata accessor for PerformanceUtil.Ticket);
  (*(*v2 + 192))(v8, a2);
}

uint64_t outlined init with take of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t outlined init with take of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PerformanceUtil.Measurement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for SOMediaNowPlayingObserver()
{
  result = lazy cache variable for type metadata for SOMediaNowPlayingObserver;
  if (!lazy cache variable for type metadata for SOMediaNowPlayingObserver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SOMediaNowPlayingObserver);
  }

  return result;
}

void AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PerformanceUtil.Ticket(0);
  v71 = *(v7 - 1);
  v8 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v76 = (&v68 - v14);
  v72 = v15;
  MEMORY[0x28223BE20](v13, v16);
  v75 = &v68 - v17;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v74 = a3;
  if (v21)
  {
    v22 = 0xEB00000000646569;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v77[0] = v24;
    *v23 = 136315394;
    v69 = v24;
    v70 = a1;
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v25 = 3;
        v26 = 0xE700000000000000;
        v27 = 0x646570706F7473;
        goto LABEL_20;
      }

      if (a2 == 4)
      {
        v25 = 4;
        v27 = 0x7075727265746E69;
        v26 = 0xEB00000000646574;
LABEL_20:
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v77);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        if (v74 > 2)
        {
          if (v74 == 3)
          {
            v22 = 0xE700000000000000;
            v30 = 0x646570706F7473;
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v74 != 4)
            {
              a1 = v70;
              if (v74 == 5)
              {
                v22 = 0xE700000000000000;
                v30 = 0x676E696B656573;
                goto LABEL_35;
              }

LABEL_31:
              v22 = 0xE700000000000000;
              v30 = 0x6E776F6E6B6E75;
              goto LABEL_35;
            }

            v30 = 0x7075727265746E69;
            v22 = 0xEB00000000646574;
          }
        }

        else
        {
          if (!v74)
          {
            a2 = v25;
            a1 = v70;
            v30 = 0x6669636570736E75;
            goto LABEL_35;
          }

          a2 = v25;
          if (v74 != 1)
          {
            a1 = v70;
            if (v74 == 2)
            {
              v22 = 0xE600000000000000;
              v30 = 0x646573756170;
LABEL_35:
              v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v22, v77);

              *(v23 + 14) = v31;
              _os_log_impl(&dword_2232BB000, v19, v20, "AudioQueueStateManager : now playing state changed from %s to %s", v23, 0x16u);
              v32 = v69;
              swift_arrayDestroy();
              MEMORY[0x223DE0F80](v32, -1, -1);
              MEMORY[0x223DE0F80](v23, -1, -1);

              a3 = v74;
              goto LABEL_36;
            }

            goto LABEL_31;
          }

          v22 = 0xE700000000000000;
          v30 = 0x676E6979616C70;
        }

        a1 = v70;
        goto LABEL_35;
      }

      if (a2 != 5)
      {
LABEL_16:
        v25 = a2;
        v26 = 0xE700000000000000;
        v27 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      v25 = 5;
      v26 = 0xE700000000000000;
      v28 = 1801807219;
    }

    else
    {
      if (!a2)
      {
        v25 = 0;
        v27 = 0x6669636570736E75;
        v26 = 0xEB00000000646569;
        goto LABEL_20;
      }

      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v25 = 2;
          v26 = 0xE600000000000000;
          v27 = 0x646573756170;
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      v25 = 1;
      v26 = 0xE700000000000000;
      v28 = 2036427888;
    }

    v27 = v28 | 0x676E6900000000;
    goto LABEL_20;
  }

LABEL_36:
  if (*(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache) && *(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache + 8) && (*(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache + 8) & 1) == 0 && a2 == a3)
  {
    v76 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2232BB000, v76, v33, "AudioQueueStateManager : update skipped", v34, 2u);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    v35 = v76;
  }

  else
  {
    v36 = a1;
    v37 = v75;
    Date.init()();
    v38 = v37 + v7[5];
    *v38 = "SiriInformationSearch/AudioQueueStateManager.swift";
    *(v38 + 8) = 50;
    *(v38 + 16) = 2;
    *(v37 + v7[6]) = 186;
    v39 = v37 + v7[7];
    *v39 = "nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)";
    *(v39 + 8) = 66;
    *(v39 + 16) = 2;
    v40 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000036);
    v41 = (v37 + v7[8]);
    *v41 = v40;
    v41[1] = v42;
    v43 = v76;
    Date.init()();
    v44 = v43 + v7[5];
    *v44 = "SiriInformationSearch/AudioQueueStateManager.swift";
    *(v44 + 1) = 50;
    v44[16] = 2;
    *(&v43->isa + v7[6]) = 187;
    v45 = v43 + v7[7];
    *v45 = "nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)";
    *(v45 + 1) = 66;
    v45[16] = 2;
    v46 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003FLL);
    v47 = (v43 + v7[8]);
    v48 = v36;
    *v47 = v46;
    v47[1] = v49;
    v50 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup);
    dispatch_group_enter(v50);
    dispatch_group_enter(v50);
    outlined init with copy of MediaNowPlayingObserving?(v36, v77);
    v51 = v78;
    if (v78)
    {
      v52 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = v73;
      outlined init with copy of PerformanceUtil.Ticket(v76, v73);
      v55 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v56 = (v72 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      outlined init with take of PerformanceUtil.Ticket(v54, v57 + v55);
      *(v57 + v56) = v53;
      v58 = *(v52 + 24);

      v58(partial apply for closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:), v57, v51, v52);

      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(v77, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
    }

    outlined init with copy of MediaNowPlayingObserving?(v48, v77);
    v59 = v78;
    if (v78)
    {
      v60 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = v75;
      v63 = v73;
      outlined init with copy of PerformanceUtil.Ticket(v75, v73);
      v64 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v65 = (v72 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      outlined init with take of PerformanceUtil.Ticket(v63, v66 + v64);
      *(v66 + v65) = v61;
      *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v74;
      v67 = *(v60 + 16);

      v67(partial apply for closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:), v66, v59, v60);

      outlined destroy of PerformanceUtil.Ticket(v76);
      outlined destroy of PerformanceUtil.Ticket(v62);

      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      outlined destroy of PerformanceUtil.Ticket(v76);
      outlined destroy of PerformanceUtil.Ticket(v75);
      outlined destroy of MediaUserStateCenter?(v77, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
    }
  }
}

uint64_t sub_2232C27A0()
{
  MEMORY[0x223DE1050](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232C27D8()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[10] + 8);

  v8 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2232C28E0()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[10] + 8);

  v8 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t type metadata accessor for SignpostToken()
{
  result = type metadata singleton initialization cache for SignpostToken;
  if (!type metadata singleton initialization cache for SignpostToken)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OSSignposter.begin(name:context:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  LODWORD(v8) = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29[-v17];
  if (a4)
  {
    swift_unknownObjectRetain();
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:object:)();
  }

  else
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
  }

  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v31 = a2;
  v30 = v8;
  if ((v8 & 1) == 0)
  {
    if (v32)
    {
      v8 = v32;
LABEL_12:
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_2232BB000, v19, v20, v23, v8, "", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
      a2 = v31;
      LOBYTE(v8) = v30;
LABEL_13:

      (*(v10 + 16))(v15, v18, v9);
      v24 = type metadata accessor for OSSignpostIntervalState();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = OSSignpostIntervalState.init(id:isOpen:)();
      *a5 = v32;
      *(a5 + 8) = a2;
      *(a5 + 16) = v8;
      v28 = type metadata accessor for SignpostToken();
      result = (*(v10 + 32))(a5 + *(v28 + 20), v18, v9);
      *(a5 + *(v28 + 24)) = v27;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v32 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    if (v32 >> 16 <= 0x10)
    {
      v8 = &v33;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_17:
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
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Void __swiftcall PerformanceUtil.recordMeasurement(for:logMeasurement:)(Swift::OpaquePointer a1, Swift::Bool logMeasurement)
{
  v3 = v2;
  v4 = logMeasurement;
  v43 = type metadata accessor for Date();
  v40 = *(v43 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v43, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PerformanceUtil.Measurement(0);
  v44 = *(v42 - 8);
  v16 = *(v44 + 64);
  v18 = MEMORY[0x28223BE20](v42, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v36 - v22;
  v24 = *(a1._rawValue + 2);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v37 = v20;
    v38 = v4;
    v39 = v3;
    v45 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = v45;
    v26 = a1._rawValue + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v41 = *(v11 + 72);
    v27 = (v40 + 8);
    do
    {
      outlined init with copy of PerformanceUtil.Ticket(v26, v15, type metadata accessor for PerformanceUtil.Ticket);
      outlined init with copy of PerformanceUtil.Ticket(v15, v23, type metadata accessor for PerformanceUtil.Ticket);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v29 = v28;
      (*v27)(v9, v43);
      outlined destroy of PerformanceUtil.Measurement(v15, type metadata accessor for PerformanceUtil.Ticket);
      *&v23[*(v42 + 20)] = v29 * 1000.0;
      v45 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
        v25 = v45;
      }

      *(v25 + 16) = v31 + 1;
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_1(v23, v25 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31, type metadata accessor for PerformanceUtil.Measurement);
      v26 += v41;
      --v24;
    }

    while (v24);
    v3 = v39;
    LOBYTE(v4) = v38;
    v20 = v37;
  }

  if (v4 || *(v3 + 56) == 1)
  {
    v32 = *(v25 + 16);
    if (v32)
    {
      v33 = v25 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v34 = *(v44 + 72);
      do
      {
        outlined init with copy of PerformanceUtil.Ticket(v33, v20, type metadata accessor for PerformanceUtil.Measurement);
        PerformanceUtil.Measurement.log()();
        outlined destroy of PerformanceUtil.Measurement(v20, type metadata accessor for PerformanceUtil.Measurement);
        v33 += v34;
        --v32;
      }

      while (v32);
    }
  }

  v35 = *(v3 + 48);
  [v35 lock];
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v25);
  swift_endAccess();
  [v35 unlock];
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMR, type metadata accessor for PerformanceUtil.Measurement);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR, MEMORY[0x277D5DB08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR, MEMORY[0x277D5E460]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMR, MEMORY[0x277D5E4A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, MEMORY[0x277D5FEB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMR, MEMORY[0x277D5DA48]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_AudioAttributeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_AudioAttributeOGMR, MEMORY[0x277D395D0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, MEMORY[0x277D39440]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D11DisplayHintVGMR, MEMORY[0x277D38C88]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D13SemanticValueVGMR, MEMORY[0x277D38C98]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x277D39100]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVGMR, MEMORY[0x277D38CA8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR, MEMORY[0x277D39438]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR, MEMORY[0x277D39740]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI46Apple_Parsec_Siri_V2alpha_AppVocabularyConceptVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI46Apple_Parsec_Siri_V2alpha_AppVocabularyConceptVGMR, MEMORY[0x277D39968]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoV0J0VGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoV0J0VGMR, MEMORY[0x277D393E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x277D5E4F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch32PommesBridgeResultCandidateStateVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch32PommesBridgeResultCandidateStateVGMR, type metadata accessor for PommesBridgeResultCandidateState);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR, MEMORY[0x277D39B70]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMR, MEMORY[0x277D56160]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMR, MEMORY[0x277D39648]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV09PlayVideokM0V0O8CategoryOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV09PlayVideokM0V0O8CategoryOGMR, MEMORY[0x277D39C08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06ShowInj19StringSearchResultskM0V0pQ5ScopeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06ShowInj19StringSearchResultskM0V0pQ5ScopeOGMR, MEMORY[0x277D39BD8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ASRInterpretationVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ASRInterpretationVGMR, MEMORY[0x277D396C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_InterpretationTokenVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_InterpretationTokenVGMR, MEMORY[0x277D39918]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_Context_ClientEntityAlignmentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_Context_ClientEntityAlignmentVGMR, MEMORY[0x277D399F8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMR, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMR, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall AudioQueueStateManager.registerObserver()()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered;
  if ((*(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 24);
    v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver), v2);
    (*(v3 + 32))(v0, &protocol witness table for AudioQueueStateManager, v2, v3);
    *(v0 + v1) = 1;
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PerformanceUtil.Measurement);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D5FE08]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D39460]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D39438]);
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void SOMediaNowPlayingObserver.register(_:)(uint64_t a1, uint64_t a2, const char **a3, const char *a4)
{
  if (a1)
  {
    v5 = *a3;

    [v4 v5];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v8, a4, v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }
  }
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t SiriKitAppInfoDataProvider.getForegroundSiriKitAppInfo()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory();
  v115 = *(v113 - 8);
  v10 = *(v115 + 64);
  MEMORY[0x28223BE20](v113, v11);
  v112 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType();
  v116 = *(v13 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.init()();
  if (!AFIsATV())
  {
    return (*(v19 + 32))(a1, v23, v18);
  }

  v114 = v23;
  v110 = v19;
  v111 = v18;
  v109 = v9;
  v24 = v2[12];
  v25 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v24);
  v26 = (*(v25 + 8))(v24, v25);
  if (!v27)
  {
    return (*(v110 + 32))(a1, v114, v111);
  }

  v28 = v26;
  v29 = v27;
  v30 = v2[5];
  v31 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v30);
  (*(v31 + 16))(&v118, v28, v29, 0, v30, v31);

  v32 = v119;
  if (!v119)
  {
    return (*(v110 + 32))(a1, v114, v111);
  }

  v106 = v5;
  v107 = v4;
  v104 = a1;
  v117 = v120;
  v105 = v121;
  v122 = v118;
  v123 = v119;
  v33 = 1 << *(v119 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v119 + 56);
  v36 = (v33 + 63) >> 6;
  v103 = v116 + 16;
  v102[1] = v116 + 8;
  result = swift_bridgeObjectRetain_n();
  v38 = 0;
  for (i = MEMORY[0x277D84F90]; v35; *&v51[8 * v50 + 32] = v48)
  {
    while (1)
    {
LABEL_13:
      v40 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v35)))));
      v42 = *v40;
      v41 = v40[1];
      v43 = one-time initialization token for intentValues;

      if (v43 != -1)
      {
        swift_once();
      }

      v35 &= v35 - 1;
      v44 = static SiriKitAppInfoDataProvider.intentValues;
      if (*(static SiriKitAppInfoDataProvider.intentValues + 2))
      {
        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
        if (v46)
        {
          break;
        }
      }

      if (!v35)
      {
        goto LABEL_9;
      }
    }

    v47 = v116;
    (*(v116 + 16))(v17, v44[7] + *(v116 + 72) * v45, v13);
    v48 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();

    (*(v47 + 8))(v17, v13);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
      i = result;
    }

    v50 = *(i + 2);
    v49 = *(i + 3);
    if (v50 >= v49 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, i);
      i = result;
    }

    v51 = i;
    *(i + 2) = v50 + 1;
  }

  while (1)
  {
LABEL_9:
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = *(v32 + 56 + 8 * v39);
    ++v38;
    if (v35)
    {
      v38 = v39;
      goto LABEL_13;
    }
  }

  outlined destroy of MediaUserStateCenter?(&v123, &_sShySSGMd, &_sShySSGMR);
  v52 = *(i + 2);
  if (v52)
  {
    v53 = i + 32;
    v54 = MEMORY[0x277D84F90];
    do
    {
      v56 = *v53;
      v53 += 8;
      v55 = v56;
      if (!HIDWORD(v56))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v58 = *(v54 + 2);
        v57 = *(v54 + 3);
        if (v58 >= v57 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v54);
        }

        *(v54 + 2) = v58 + 1;
        *&v54[4 * v58 + 32] = v55;
      }

      --v52;
    }

    while (v52);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v59 = *(v54 + 2);
  if (!v59)
  {
LABEL_39:

    Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.supportedIntents.setter();
    v124 = v117;
    v64 = v117 + 56;
    v65 = 1 << *(v117 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v117 + 56);
    v68 = (v65 + 63) >> 6;
    v116 = v115 + 16;
    i = (v115 + 8);
    result = swift_bridgeObjectRetain_n();
    v69 = 0;
    for (j = MEMORY[0x277D84F90]; v67; *(j + 8 * v83 + 32) = v103)
    {
      while (1)
      {
LABEL_48:
        v72 = (*(v117 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v67)))));
        v74 = *v72;
        v73 = v72[1];
        v75 = one-time initialization token for mediaCategoryValues;

        if (v75 != -1)
        {
          swift_once();
        }

        v67 &= v67 - 1;
        v76 = static SiriKitAppInfoDataProvider.mediaCategoryValues;
        if (*(static SiriKitAppInfoDataProvider.mediaCategoryValues + 2))
        {
          v77 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v73);
          if (v78)
          {
            break;
          }
        }

        if (!v67)
        {
          goto LABEL_44;
        }
      }

      v79 = v115;
      v80 = v76[7] + *(v115 + 72) * v77;
      v81 = v112;
      (*(v115 + 16))(v112, v80, v113);
      v103 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.rawValue.getter();

      (*(v79 + 8))(v81, v113);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(j + 16) + 1, 1, j);
        j = result;
      }

      v83 = *(j + 16);
      v82 = *(j + 24);
      if (v83 >= v82 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, j);
        j = result;
      }

      *(j + 16) = v83 + 1;
    }

LABEL_44:
    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_78;
      }

      if (v71 >= v68)
      {
        v125 = v122;
        outlined destroy of MediaUserStateCenter?(&v125, &_sSSSgMd, &_sSSSgMR);
        outlined destroy of MediaUserStateCenter?(&v123, &_sShySSGMd, &_sShySSGMR);
        outlined destroy of MediaUserStateCenter?(&v124, &_sShySSGMd, &_sShySSGMR);
        v126 = v105;
        outlined destroy of MediaUserStateCenter?(&v126, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

        outlined destroy of MediaUserStateCenter?(&v124, &_sShySSGMd, &_sShySSGMR);
        v84 = *(j + 16);
        if (v84)
        {
          v85 = (j + 32);
          v86 = MEMORY[0x277D84F90];
          v88 = v110;
          v87 = v111;
          v89 = v114;
          do
          {
            v91 = *v85++;
            v90 = v91;
            if (!HIDWORD(v91))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
              }

              v93 = *(v86 + 2);
              v92 = *(v86 + 3);
              if (v93 >= v92 >> 1)
              {
                v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v86);
              }

              *(v86 + 2) = v93 + 1;
              *&v86[4 * v93 + 32] = v90;
            }

            --v84;
          }

          while (v84);
        }

        else
        {
          v86 = MEMORY[0x277D84F90];
          v88 = v110;
          v87 = v111;
          v89 = v114;
        }

        v94 = *(v86 + 2);
        if (v94)
        {
          v95 = 0;
          v96 = (v86 + 32);
          v97 = v107;
          v98 = v106;
          while (1)
          {
            v99 = *v96++;
            v63 = __CFADD__(v95, v99);
            v95 += v99;
            if (v63)
            {
              goto LABEL_80;
            }

            if (!--v94)
            {
              goto LABEL_74;
            }
          }
        }

        v97 = v107;
        v98 = v106;
LABEL_74:

        Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.supportedIntentMediaCategories.setter();
        v100 = v109;
        (*(v98 + 104))(v109, *MEMORY[0x277D38CB0], v97);
        v101 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
        result = (*(v98 + 8))(v100, v97);
        if ((v101 & 0x8000000000000000) == 0)
        {
          if (HIDWORD(v101))
          {
            goto LABEL_82;
          }

          Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.appContext.setter();
          return (*(v88 + 32))(v104, v89, v87);
        }

        goto LABEL_81;
      }

      v67 = *(v64 + 8 * v71);
      ++v69;
      if (v67)
      {
        v69 = v71;
        goto LABEL_48;
      }
    }
  }

  v60 = 0;
  v61 = (v54 + 32);
  while (1)
  {
    v62 = *v61++;
    v63 = __CFADD__(v60, v62);
    v60 += v62;
    if (v63)
    {
      break;
    }

    if (!--v59)
    {
      goto LABEL_39;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of MediaUserStateCenter?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of MediaUserStateCenter?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t PegasusProxy.client.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t outlined assign with take of ForegroundAppProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMR, type metadata accessor for PerformanceUtil.Measurement);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR, MEMORY[0x277D5E460]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x277D5E4F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x277D5FE08]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV_0D28ReferenceResolutionDataModel8RREntityVtGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV_0D28ReferenceResolutionDataModel8RREntityVtGMR, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMR, MEMORY[0x277D396D8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x277D39100]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentVGMR, MEMORY[0x277D39670]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR, MEMORY[0x277D39450]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR, MEMORY[0x277D39438]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI36Apple_Parsec_Search_DevicePolicyTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI36Apple_Parsec_Search_DevicePolicyTypeOGMR, MEMORY[0x277D39238]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMR, MEMORY[0x277D566D0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_H14CommandBuilderVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_H14CommandBuilderVGMR, MEMORY[0x277D38D48]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR, MEMORY[0x277D5DB80]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMR, MEMORY[0x277D5DB38]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMR, MEMORY[0x277D5DD28]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR, MEMORY[0x277D5DB08]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMR, MEMORY[0x277D39018]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D26_Nlu_External_SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D26_Nlu_External_SpanPropertyVGMR, MEMORY[0x277D5DB18]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI37Apple_Parsec_Siri_V2alpha_RestrictionVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI37Apple_Parsec_Siri_V2alpha_RestrictionVGMR, MEMORY[0x277D39360]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_jL0OGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_jL0OGMR, MEMORY[0x277D39A60]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_K0OGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_K0OGMR, MEMORY[0x277D39668]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_d9_V2alpha_dJ8ResponseV0D11InstructionV11instructiontGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_d9_V2alpha_dJ8ResponseV0D11InstructionV11instructiontGMR, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMR, MEMORY[0x277D39648]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy28SiriPrivateLearningInference22PimsSuggestionMetadataVGMd, &_ss23_ContiguousArrayStorageCy28SiriPrivateLearningInference22PimsSuggestionMetadataVGMR, MEMORY[0x277D5FDC8]);
}

void PommesBridge.handleSessionEnded(_:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3, v6);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v69 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v74 = &v67 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v67 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v67 - v28;
  v30 = *(*v1 + class metadata base offset for PommesBridge + 72);
  v70 = v1;
  v30(v27);
  v72 = a1;
  SessionMessageBase.sessionId.getter();
  v31 = v4 + 7;
  v32 = v4[7];
  v32(v25, 0, 1, v3);
  v33 = *(v9 + 56);
  outlined init with copy of MediaUserStateCenter?(v29, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of MediaUserStateCenter?(v25, &v13[v33], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v73 = v4;
  v34 = v4[6];
  if (v34(v13, 1, v3) == 1)
  {
    v67 = v32;
    v68 = v31;
    outlined destroy of MediaUserStateCenter?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35 = v3;
    if (v34(&v13[v33], 1, v3) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.pommes);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v70;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2232BB000, v53, v54, "setting sessionId and sessionState to nil", v57, 2u);
        MEMORY[0x223DE0F80](v57, -1, -1);
      }

      v58 = *(v56 + direct field offset for PommesBridge.pommesSearch);
      if (v58)
      {
        v59 = *(*v58 + 352);
        v60 = *(v56 + direct field offset for PommesBridge.pommesSearch);

        v59(v61);
      }

      v62 = v69;
      v67(v69, 1, 1, v35);
      (*(*v56 + class metadata base offset for PommesBridge + 80))(v62);
      v76 = 0;
      memset(v75, 0, sizeof(v75));
      (*(*v56 + class metadata base offset for PommesBridge + 104))(v75);
      v63 = dispatch thunk of CandidateRequestAwareBridgeBase.requestIdToCandidateRequestProcessor.modify();
      v65 = v64;
      v66 = *v64;

      *v65 = MEMORY[0x277D84F98];
      v63(v75, 0);
      return;
    }

    goto LABEL_6;
  }

  outlined init with copy of MediaUserStateCenter?(v13, v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v34(&v13[v33], 1, v3) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (v73[1])(v74, v3);
    v35 = v3;
LABEL_6:
    outlined destroy of MediaUserStateCenter?(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_7;
  }

  v67 = v32;
  v68 = v31;
  v47 = v73;
  v48 = v71;
  (v73[4])(v71, &v13[v33], v3);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v49 = v74;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v47[1];
  v51(v48, v3);
  outlined destroy of MediaUserStateCenter?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v51(v49, v3);
  outlined destroy of MediaUserStateCenter?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v35 = v3;
  if (v50)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.pommes);
  v37 = v72;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v75[0] = v41;
    *v40 = 136315138;
    v42 = v71;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (v73[1])(v42, v35);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v75);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_2232BB000, v38, v39, "SessionId: %s is not the current session, ignoring", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x223DE0F80](v41, -1, -1);
    MEMORY[0x223DE0F80](v40, -1, -1);
  }
}

uint64_t PommesBridge.currentSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridge.currentSessionId;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

Swift::Void __swiftcall PommesSearch.tearDown()()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  *(v0 + 120) = MEMORY[0x277D84FA0];

  v3 = (*(**(v0 + 24) + 560))(v2);
  v4 = (*(**(v0 + 40) + 192))(v3);
  (*(**(v0 + 48) + 184))(v4);
}

Swift::Void __swiftcall PegasusProxy.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for Google_Protobuf_Duration();
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Apple_Parsec_Search_LRConversationThread();
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v65, v9);
  v64 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v0 + 184) + 328))(v19);
  v22 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
  v23 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8);
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  outlined consume of Data?(v22, v23);
  v24 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  swift_beginAccess();
  v25 = *(v16 + 16);
  v57 = v24;
  v25(v21, v1 + v24, v15);
  v26 = Apple_Parsec_Search_SearchConversationContext.lrcThreads.getter();
  (*(v16 + 8))(v21, v15);
  v28 = *(v26 + 16);
  if (v28)
  {
    v53 = v21;
    v54 = v16;
    v55 = v15;
    v56 = v1;
    v31 = *(v7 + 16);
    v29 = v7 + 16;
    v30 = v31;
    v32 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v52 = v26;
    v33 = v26 + v32;
    v34 = *(v29 + 56);
    v67 = (v69 + 8);
    v68 = v34;
    v69 = v29;
    v66 = (v29 - 8);
    *&v27 = 136315138;
    v60 = v27;
    v36 = v64;
    v35 = v65;
    v61 = v2;
    v63 = v31;
    v58 = v14;
    v59 = v6;
    v31(v14, (v26 + v32), v65);
    while (1)
    {
      Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.getter();
      v37 = Google_Protobuf_Duration.seconds.getter();
      (*v67)(v6, v2);
      if (v37 <= 0)
      {
        (*v66)(v14, v35);
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.pommes);
        v30(v36, v14, v35);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v70 = v42;
          *v41 = v60;
          v43 = Apple_Parsec_Search_LRConversationThread.id.getter();
          v45 = v44;
          v62 = *v66;
          v62(v64, v65);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v70);
          v6 = v59;
          v36 = v64;

          *(v41 + 4) = v46;
          _os_log_impl(&dword_2232BB000, v39, v40, "Long-Running Conversation Thread %s requires disk persistence (currently unsupported).", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v47 = v42;
          v2 = v61;
          MEMORY[0x223DE0F80](v47, -1, -1);
          v48 = v41;
          v35 = v65;
          MEMORY[0x223DE0F80](v48, -1, -1);

          v49 = v58;
          v62(v58, v35);
          v14 = v49;
        }

        else
        {

          v50 = *v66;
          (*v66)(v36, v35);
          v50(v14, v35);
        }

        v30 = v63;
      }

      v33 += v68;
      if (!--v28)
      {
        break;
      }

      v30(v14, v33, v35);
    }

    v1 = v56;
    v15 = v55;
    v16 = v54;
    v21 = v53;
  }

  else
  {
  }

  Apple_Parsec_Search_SearchConversationContext.init()();
  v51 = v57;
  swift_beginAccess();
  (*(v16 + 40))(v1 + v51, v21, v15);
  swift_endAccess();
}

Swift::Void __swiftcall DataProviderManager.tearDown()()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "DataProviderManager tearing down data providers ...", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = (*(*v1[3] + 248))();
  v7 = (*(*v1[4] + 248))(v6);
  v8 = (*(*v1[5] + 248))(v7);
  v9 = (*(*v1[6] + 248))(v8);
  v10 = (*(*v1[7] + 248))(v9);
  v11 = (*(*v1[8] + 248))(v10);
  v12 = (*(*v1[9] + 248))(v11);
  v13 = (*(*v1[10] + 248))(v12);
  v14 = (*(*v1[11] + 248))(v13);
  (*(*v1[12] + 248))(v14);
}

Swift::Void __swiftcall AnyDataProvider.reset()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 96), *(v1 + 104), v32);
    _os_log_impl(&dword_2232BB000, v8, v9, "%s reseting ...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223DE0F80](v11, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  v32[0] = v12;
  v32[1] = v13;

  MEMORY[0x223DDF6D0](0x2874657365725F20, 0xE900000000000029);
  v14 = v32[0];
  Date.init()();
  v15 = &v6[v2[5]];
  *v15 = "SiriInformationSearch/DataProvider.swift";
  *(v15 + 1) = 40;
  v15[16] = 2;
  *&v6[v2[6]] = 133;
  v16 = &v6[v2[7]];
  *v16 = "reset()";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v17 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v14);
  v19 = v18;

  v21 = &v6[v2[8]];
  *v21 = v17;
  v21[1] = v19;
  v22 = *(v1 + 72);
  (*(v1 + 64))(v20);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = (*(*static PerformanceUtil.shared + 184))(v6, 0);
  if ((*(*v1 + 152))(v23))
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v32);
      _os_log_impl(&dword_2232BB000, v24, v25, "%s reset isPrepared", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    *(v1 + 89) = 0;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v32);
    _os_log_impl(&dword_2232BB000, v28, v29, "%s reset complete", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DE0F80](v31, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  outlined destroy of PerformanceUtil.Ticket(v6);
}

uint64_t partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 240))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xB0))();
}

{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 256))();
}

Swift::Void __swiftcall AmpDataProvider.reset()()
{
  (*(*v0 + 128))(MEMORY[0x277D84F90]);
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  (*(*v0 + 104))(v1);
}

Swift::Void __swiftcall AudioQueueStateManager.unregisterObserver()()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered;
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 24);
    v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver), v2);
    (*(v3 + 40))(v0, &protocol witness table for AudioQueueStateManager, v2, v3);
    *(v0 + v1) = 0;
    v4 = v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache;
    *v4 = 0;
    *(v4 + 8) = 1;
    v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache);
    *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache) = 0;

    *v4 = 0;
    *(v4 + 8) = 1;
    v6 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache);
    v7 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache + 8);
    *v6 = 0;
    v6[1] = 0;
  }
}

uint64_t MarketplaceInfoDataProvider.marketplaceInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Search_V2_MarketplaceInfo?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void CarPlaySessionDataProvider.sessionDidConnect(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2232BB000, v6, v7, "CarPlaySessionDataProvider sessionDidConnect %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect) = 1;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MediaNowPlayingObserving?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void protocol witness for MediaNowPlayingObserving.getNowPlayingApplicationBundleIdentifier(_:) in conformance SOMediaNowPlayingObserver(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?) -> ();
    v5[3] = &block_descriptor_16;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 getNowPlayingApplicationBundleIdentifier_];
  _Block_release(v4);
}

void protocol witness for MediaNowPlayingObserving.getNowPlayingInfoForCurrentItem(completion:) in conformance SOMediaNowPlayingObserver(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
    v5[3] = &block_descriptor_27;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 getNowPlayingInfoForCurrentItemWithCompletion_];
  _Block_release(v4);
}

uint64_t partial apply for closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(a1, a2, v2 + v6);
}

uint64_t closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
    v8 = Strong;
    [*(Strong + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock) lock];
    v9 = &v8[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache];
    v10 = *&v8[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache + 8];
    *v9 = a1;
    *(v9 + 1) = a2;

    [*&v8[v7] unlock];
    dispatch_group_leave(*&v8[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup]);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static PerformanceUtil.shared + 184))(a3, 1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

Swift::Void __swiftcall PerformanceUtil.Measurement.log()()
{
  v1 = type metadata accessor for PerformanceUtil.Measurement(0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v51 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v51 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v51 - v20;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pommes);
  outlined init with copy of PerformanceUtil.Ticket(v0, v21, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v18, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v14, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v10, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v6, type metadata accessor for PerformanceUtil.Measurement);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v55;
    *v25 = 136316162;
    v26 = type metadata accessor for PerformanceUtil.Ticket(0);
    v27 = &v21[v26[8]];
    v52 = v1;
    v54 = v24;
    v29 = *v27;
    v28 = v27[1];

    v53 = v23;
    outlined destroy of PerformanceUtil.Measurement(v21, type metadata accessor for PerformanceUtil.Measurement);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v56);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = &v18[v26[5]];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = v31[16];
    v35 = StaticString.description.getter();
    v37 = v36;
    outlined destroy of PerformanceUtil.Measurement(v18, type metadata accessor for PerformanceUtil.Measurement);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v56);

    *(v25 + 14) = v38;
    *(v25 + 22) = 2080;
    v39 = &v14[v26[7]];
    v40 = *v39;
    v41 = *(v39 + 1);
    v42 = v39[16];
    v43 = StaticString.description.getter();
    v45 = v44;
    outlined destroy of PerformanceUtil.Measurement(v14, type metadata accessor for PerformanceUtil.Measurement);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v56);

    *(v25 + 24) = v46;
    *(v25 + 32) = 2048;
    v47 = *&v10[v26[6]];
    outlined destroy of PerformanceUtil.Measurement(v10, type metadata accessor for PerformanceUtil.Measurement);
    *(v25 + 34) = v47;
    *(v25 + 42) = 2048;
    v48 = *&v6[*(v52 + 20)];
    outlined destroy of PerformanceUtil.Measurement(v6, type metadata accessor for PerformanceUtil.Measurement);
    *(v25 + 44) = v48;
    v49 = v53;
    _os_log_impl(&dword_2232BB000, v53, v54, "[PerformanceUtil#Ticket] [%s] %s#%s#%ld %f ms", v25, 0x34u);
    v50 = v55;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v50, -1, -1);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  else
  {
    outlined destroy of PerformanceUtil.Measurement(v10, type metadata accessor for PerformanceUtil.Measurement);

    outlined destroy of PerformanceUtil.Measurement(v6, type metadata accessor for PerformanceUtil.Measurement);
    outlined destroy of PerformanceUtil.Measurement(v14, type metadata accessor for PerformanceUtil.Measurement);
    outlined destroy of PerformanceUtil.Measurement(v18, type metadata accessor for PerformanceUtil.Measurement);
    outlined destroy of PerformanceUtil.Measurement(v21, type metadata accessor for PerformanceUtil.Measurement);
  }
}

uint64_t partial apply for closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.pommes);
      v12 = a2;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v27 = v16;
        *v15 = 136315138;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_2232BB000, v13, v14, "nowPlayingObserver returned an error : %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x223DE0F80](v16, -1, -1);
        MEMORY[0x223DE0F80](v15, -1, -1);
      }
    }

    else
    {
      v21 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
      [*(Strong + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock) lock];
      if (a1)
      {
        v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v22.super.isa = 0;
      }

      v23 = *&v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache];
      *&v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache] = v22;

      if (a5 == 4)
      {
        v24 = 1;
      }

      else
      {
        v24 = a5;
      }

      v25 = &v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache];
      *v25 = v24;
      v25[8] = 0;
      [*&v10[v21] unlock];
    }

    dispatch_group_leave(*&v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup]);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static PerformanceUtil.shared + 184))(a3, 1);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void partial apply for closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(a1, a2, v2 + v6, v8, v9);
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

char *closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(void *a1, uint64_t a2)
{
  v96 = a2;
  v95 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(v95 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v95, v5);
  v7 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v85 - v9;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v93 = v3;
  v94 = v4;
  v92 = v12;
  if (v15)
  {
    v89 = v14;
    v91 = v13;
    v16 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v98[0] = v88;
    *v16 = 136316419;
    v17 = [v12 countryCode];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v97[0] = v19;
    v97[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v98);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2085;
    v25 = [v12 meCards];
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v27 = v25;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v90 = v16;
    if (v28 >> 62)
    {
      v29 = __CocoaSet.count.getter();
      if (v29)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_13:
        v97[0] = v26;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          __break(1u);
          return result;
        }

        v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v87 = v10;
        v31 = 0;
        v32 = v97[0];
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x223DDFF80](v31, v28);
          }

          else
          {
            v33 = *(v28 + 8 * v31 + 32);
          }

          v34 = v33;
          v35 = [v33 description];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v97[0] = v32;
          v40 = v32[2];
          v39 = v32[3];
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            v32 = v97[0];
          }

          ++v31;
          v32[2] = v40 + 1;
          v41 = &v32[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
        }

        while (v29 != v31);

        v7 = v86;
        v10 = v87;
        v3 = v93;
        v4 = v94;
        v12 = v92;
        goto LABEL_24;
      }
    }

    v32 = MEMORY[0x277D84F90];
LABEL_24:
    v42 = MEMORY[0x223DDF850](v32, MEMORY[0x277D837D0]);
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v98);

    v46 = v90;
    *(v90 + 14) = v45;
    *(v46 + 22) = 2080;
    v97[0] = [v12 mediaContentRatingRestrictions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32SAMediaContentRatingRestrictionsCSgMd, &_sSo32SAMediaContentRatingRestrictionsCSgMR);
    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v98);

    *(v46 + 24) = v49;
    *(v46 + 32) = 2080;
    v97[0] = [v12 uiScale];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    v50 = String.init<A>(describing:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v98);

    *(v46 + 34) = v52;
    *(v46 + 42) = 2080;
    v53 = [v12 censorSpeech];
    v54 = v53 == 0;
    if (v53)
    {
      v55 = 1702195828;
    }

    else
    {
      v55 = 0x65736C6166;
    }

    if (v54)
    {
      v56 = 0xE500000000000000;
    }

    else
    {
      v56 = 0xE400000000000000;
    }

    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v98);

    *(v46 + 44) = v57;
    *(v46 + 52) = 2080;
    v97[0] = [v12 allowUserGeneratedContent];
    v58 = String.init<A>(describing:)();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v98);

    *(v46 + 54) = v60;
    v61 = v91;
    _os_log_impl(&dword_2232BB000, v91, v89, "#AssistantData Service helper response:\ncountryCode: %s\nmeCards: %{sensitive}s\ncontentRestrictions: %s\nuiScale: %s\ncensorSpeech: %s\nallowUserGeneratedContent: %s", v46, 0x3Eu);
    v62 = v88;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v62, -1, -1);
    MEMORY[0x223DE0F80](v46, -1, -1);

    goto LABEL_31;
  }

LABEL_31:
  v63 = [v12 meCards];
  if (v63)
  {
    v64 = v63;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v7;
    if (v65 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v68 = 0;
      while (1)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223DDFF80](v68, v65);
        }

        else
        {
          if (v68 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v69 = *(v65 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        v97[0] = v69;
        closure #2 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(v97);

        ++v68;
        if (v71 == i)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_45:

    v7 = v66;
    v3 = v93;
    v4 = v94;
    v12 = v92;
  }

  Date.init()();
  v72 = v95;
  v73 = &v10[*(v95 + 20)];
  *v73 = "SiriInformationSearch/AssistantDataCache.swift";
  *(v73 + 1) = 46;
  v73[16] = 2;
  *&v10[v72[6]] = 118;
  v74 = &v10[v72[7]];
  *v74 = "handleSASetAssistantData(_:updateQueue:)";
  *(v74 + 1) = 40;
  v74[16] = 2;
  v75 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000043);
  v76 = &v10[v72[8]];
  *v76 = v75;
  v76[1] = v77;
  v78 = [v12 meCards];
  if (v78)
  {
    v79 = v78;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v80 = 0;
  }

  outlined init with copy of PerformanceUtil.Ticket(v10, v7);
  v81 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v82 = (v4 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  outlined init with take of PerformanceUtil.Ticket(v7, v83 + v81);
  *(v83 + v82) = v12;
  *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v96;
  v84 = v12;

  AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:)(v80, partial apply for closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:), v83);

  return outlined destroy of PerformanceUtil.Ticket(v10);
}

uint64_t sub_2232C7A78()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[10] + 8);

  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t outlined destroy of PerformanceUtil.Ticket(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of PommesSearchRequest.ParseState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PommesBridge.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridge.sessionState;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV9RadioTypeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV9RadioTypeOGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV6DecadeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV6DecadeOGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch11MUXUserInfoVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch11MUXUserInfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t AmpDataProvider.cachedMediaUserStates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void PairedDeviceDataProvider.pairedWatch.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t type metadata accessor for CNContactStore(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of AppDataProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OSSignposter.end(token:message:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v36 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 16);
  v18 = *(a1 + *(type metadata accessor for SignpostToken() + 24));

  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v33 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {

    return (*(v11 + 8))(v15, v10);
  }

  v32 = v10;
  if (v17)
  {
    if (!(v16 >> 32))
    {
      if ((v16 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v16 >> 16 <= 0x10)
      {
        v22 = a3;

        v21 = &v37;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = a3;
LABEL_10:

  checkForErrorAndConsumeState(state:)();

  v24 = v34;
  v23 = v35;
  v25 = v11;
  if ((*(v34 + 88))(v9, v35) == *MEMORY[0x277D85B00])
  {
    v26 = 0;
    v27 = 0;
    v28 = "[Error] Interval already ended";
  }

  else
  {
    (*(v24 + 8))(v9, v23);
    v28 = "%s";
    v27 = 2;
    v26 = 1;
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v37 = v30;
  *v29 = v27;
  *(v29 + 1) = v26;
  *(v29 + 2) = 2080;
  *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v22, &v37);
  v31 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_2232BB000, v19, v33, v31, v21, v28, v29, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v30);
  MEMORY[0x223DE0F80](v30, -1, -1);
  MEMORY[0x223DE0F80](v29, -1, -1);

  return (*(v25 + 8))(v15, v32);
}

uint64_t outlined destroy of SignpostToken(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch13SignpostTokenVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AmpDataProvider.mediaUserStateCenter.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t outlined assign with take of MediaUserStateCenter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MarketplaceInfoDataProvider.marketplaceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  swift_beginAccess();
  return outlined init with copy of Apple_Parsec_Search_V2_MarketplaceInfo?(v1 + v3, a1);
}

uint64_t outlined init with copy of Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for ICMediaUserStateCenter()
{
  result = lazy cache variable for type metadata for ICMediaUserStateCenter;
  if (!lazy cache variable for type metadata for ICMediaUserStateCenter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICMediaUserStateCenter);
  }

  return result;
}

uint64_t outlined init with take of DomainWarmupHandling(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id protocol witness for MediaUserStateCenter.activeState.getter in conformance ICMediaUserStateCenter@<X0>(void *a1@<X8>)
{
  result = [*v1 activeUserState];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
    v5 = &protocol witness table for ICMediaUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void *PairedDeviceDataProvider.pairedWatch.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch7AppDataV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch7AppDataVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch7AppDataVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v24 = result;
    v25 = a3;
    result = 0;
    v9 = 0;
    v23 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = a4;
      v16 = (*(a4 + 56) + 40 * (v14 | (v9 << 6)));
      v17 = v16[1];
      v19 = v16[2];
      v18 = v16[3];
      v20 = v16[4];
      *v8 = *v16;
      v8[1] = v17;
      v8[2] = v19;
      v8[3] = v18;
      v8[4] = v20;
      if (v11 == v25)
      {

        a4 = v15;
        v5 = v23;
        result = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v8 += 5;

      result = v11;
      v21 = __OFADD__(v11++, 1);
      a4 = v15;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v22 = v9 + 1;
    }

    else
    {
      v22 = v10;
    }

    v9 = v22 - 1;
    a3 = result;
    v5 = v23;
    result = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.readSatisfyingAppDatas(setValue:)(void (*a1)(void *))
{
  v2 = *(v1 + 128);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch7AppDataV_Tt1g5(v3, 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v8, v4 + 4, v3, v2);

    result = outlined consume of Set<String>.Iterator._Variant();
    if (v5 != v3)
    {
      __break(1u);
      return result;
    }

    a1(v4);
  }

  else
  {
    a1(MEMORY[0x277D84F90]);
  }
}

uint64_t outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall PreferredNavigationAppDataProvider.reset()()
{
  [*(v0 + 64) invalidate];
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;

  v2 = *(v0 + 72);
  *(v0 + 72) = 0;

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(v3, v0 + 80);
  swift_endAccess();
}

Swift::Void __swiftcall SiriKitAppInfoDataProvider.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(v5, v0 + v7);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v8 = v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v8 = 0;
  *(v8 + 8) = 1;
}

Swift::Void __swiftcall MarketplaceInfoDataProvider.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v7 - v4;
  v6 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(*v0 + 96))(v5);
}

Swift::Void __swiftcall CarPlaySessionDataProvider.reset()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus);
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus) = 0;

  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect) = 0;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall PegasusCacheManager.reset()()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v2 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v3 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    if (v5)
    {
LABEL_4:
      v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
      v7 = swift_allocObject();
      *(v7 + 16) = partial apply for closure #1 in PegasusCacheManager.reset();
      *(v7 + 24) = v0;
      v9[4] = partial apply for thunk for @callee_guaranteed () -> ();
      v9[5] = v7;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = thunk for @escaping @callee_guaranteed () -> ();
      v9[3] = &block_descriptor_6;
      v8 = _Block_copy(v9);

      dispatch_sync(v6, v8);
      _Block_release(v8);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall PommesMUXContextManager.reset()()
{
  v1 = (*(*v0 + 144))(v4);
  v3 = *v2;
  *v2 = MEMORY[0x277D84F90];

  v1(v4, 0);
}

void closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  if (a2)
  {
    v9 = a2;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2232BB000, v12, v13, "#AssistantData Service helper returned an error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DE0F80](v15, -1, -1);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(a1, a5);
  }
}

uint64_t AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v3;
    v46 = partial apply for closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:);
    v47 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v45 = &block_descriptor_28;
    v19 = _Block_copy(&aBlock);
    v20 = a1;

    static DispatchQoS.unspecified.getter();
    v41 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v15, v10, v19);
    _Block_release(v19);

    (*(v6 + 8))(v10, v5);
    (*(v39 + 8))(v15, v40);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pommes);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = v6;
      v26 = v25;
      v27 = swift_slowAlloc();
      v41 = a1;
      aBlock = v27;
      *v26 = 136315138;
      v28 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &aBlock);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v23, v24, "#AssistantData Service helper response was <%s>, not SASetAssistantData. Creating fallback snapshot.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      v32 = v26;
      v6 = v37;
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    v33 = swift_allocObject();
    swift_weakInit();
    v46 = partial apply for closure #1 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:);
    v47 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v45 = &block_descriptor_22_1;
    v34 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v15, v10, v34);
    _Block_release(v34);
    (*(v6 + 8))(v10, v5);
    (*(v39 + 8))(v15, v40);
  }
}

uint64_t sub_2232C9DF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232C9E28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:)(unint64_t a1, void (*a2)(unint64_t, void), uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 >> 62)
    {
      v45 = v17;
      v37 = __CocoaSet.count.getter();
      v17 = v45;
      if (v37)
      {
LABEL_4:
        v44 = v8;
        v45 = v17;
        v43 = v14;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x223DDFF80](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_27:
            swift_once();
LABEL_14:
            v32 = type metadata accessor for Logger();
            __swift_project_value_buffer(v32, static Logger.pommes);
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              *v35 = 0;
              _os_log_impl(&dword_2232BB000, v33, v34, "#AssistantData SAPerson Me cards likely have genuine data. Skipping Contacts fetch", v35, 2u);
              MEMORY[0x223DE0F80](v35, -1, -1);
            }

            a2(a1, 0);
            v36 = v46;

            return;
          }

          v20 = *(a1 + 32);
        }

        v46 = v20;
        v21 = [v20 internalGUID];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          if (v23 == 0xD000000000000012 && 0x80000002234E2340 == v25)
          {

LABEL_12:
            v27 = v3[2];
            v28 = swift_allocObject();
            v29 = v3[4];
            *(v28 + 24) = v3[5];
            swift_unknownObjectWeakInit();
            v30 = swift_allocObject();
            v30[2] = v28;
            v30[3] = a2;
            v30[4] = a3;
            aBlock[4] = partial apply for closure #1 in AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:);
            aBlock[5] = v30;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            aBlock[3] = &block_descriptor_16_0;
            v31 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            v47 = MEMORY[0x277D84F90];
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x223DDFBF0](0, v19, v12, v31);
            _Block_release(v31);

            (*(v44 + 8))(v12, v7);
            (*(v43 + 8))(v19, v45);

            return;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_12;
          }
        }

        if (one-time initialization token for pommes == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.pommes);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2232BB000, v39, v40, "#AssistantData No SAPerson Me cards. Skipping Contacts fetch", v41, 2u);
    MEMORY[0x223DE0F80](v41, -1, -1);
  }

  a2(MEMORY[0x277D84F90], 0);
}

uint64_t sub_2232CA43C()
{
  MEMORY[0x223DE1050](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232CA474()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(a1, a2 & 1, v2 + v6, v8, v9);
}

uint64_t closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(uint64_t a1, char a2, uint64_t a3, void *a4, _OWORD *a5)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  if (a2)
  {
    *&v21[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a4 setMeCards_];

  specialized AssistantDataSnapshot.init(_:replacementMeCards:)(a4, v23);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v12, v13, "#AssistantData Service helper updating with assistantData", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  swift_beginAccess();
  v15 = a5[6];
  v21[2] = a5[5];
  v21[3] = v15;
  v22[0] = a5[7];
  *(v22 + 10) = *(a5 + 122);
  v16 = a5[4];
  v21[0] = a5[3];
  v21[1] = v16;
  v17 = v23[3];
  v18 = v24[0];
  v19 = v23[1];
  a5[5] = v23[2];
  a5[6] = v17;
  a5[7] = v18;
  *(a5 + 122) = *(v24 + 10);
  a5[3] = v23[0];
  a5[4] = v19;
  return outlined destroy of AssistantDataSnapshot?(v21);
}

void specialized AssistantDataSnapshot.init(_:replacementMeCards:)(void *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = [a1 countryCode];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v7;
  }

  else
  {
    v6 = 0;
    v47 = 0;
  }

  v8 = [a1 mediaContentRatingRestrictions];
  v9 = [a1 uiScale];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 allowUserGeneratedContent];
  if (v13)
  {
    v14 = v13;
    v46 = [v13 BOOLValue];
  }

  else
  {
    v46 = 1;
  }

  v45 = [a1 censorSpeech];
  v15 = [a1 temperatureUnit];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v18;
    v44 = v17;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2232BB000, v20, v21, "#AssistantData Creating snapshot with SAPerson card(s)", v22, 2u);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  v23 = [a1 meCards];
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = v23;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v26 >> 62))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_19:
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        goto LABEL_20;
      }

LABEL_32:

      if (v8)
      {
LABEL_29:
        v38 = v8;
        v39 = [v38 movieRestriction];
        v40 = [v38 tvRestriction];

LABEL_34:
        *a2 = 0;
        *(a2 + 8) = v6;
        *(a2 + 16) = v47;
        *(a2 + 24) = v24;
        *(a2 + 32) = v39;
        *(a2 + 40) = v40;
        *(a2 + 48) = v8 == 0;
        *(a2 + 56) = v12;
        *(a2 + 64) = v10 == 0;
        *(a2 + 72) = v44;
        *(a2 + 80) = v43;
        *(a2 + 88) = v46;
        *(a2 + 89) = v45;
        return;
      }

LABEL_33:
      v39 = 0;
      v40 = 0;
      goto LABEL_34;
    }
  }

  v27 = __CocoaSet.count.getter();
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_20:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v41 = v8;
    v42 = v6;
    v28 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x223DDFF80](v28, v26);
      }

      else
      {
        v29 = *(v26 + 8 * v28 + 32);
      }

      specialized AssistantDataSnapshot.MeCard.init(_:)(v29, v48);
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
      }

      ++v28;
      *(v24 + 16) = v31 + 1;
      v32 = v24 + 104 * v31;
      v33 = v48[0];
      v34 = v48[2];
      *(v32 + 48) = v48[1];
      *(v32 + 64) = v34;
      *(v32 + 32) = v33;
      v35 = v48[3];
      v36 = v48[4];
      v37 = v48[5];
      *(v32 + 128) = v49;
      *(v32 + 96) = v36;
      *(v32 + 112) = v37;
      *(v32 + 80) = v35;
    }

    while (v27 != v28);

    v6 = v42;
    v8 = v41;
    if (v41)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  __break(1u);
}

uint64_t outlined destroy of AssistantDataSnapshot?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardV14ContactAddressVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardV14ContactAddressVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void closure #2 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v37 - v5;
  v7 = *a1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136643331;
    v14 = [v9 identifier];
    if (v14)
    {
      v15 = v14;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    }

    else
    {
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    }

    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2085;
    v21 = [v9 internalGUID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v38 = v23;
    v39 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v40);

    *(v12 + 14) = v28;
    *(v12 + 22) = 2085;
    v29 = [v9 fullDescription];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v38 = v31;
    v39 = v33;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v40);

    *(v12 + 24) = v36;
    _os_log_impl(&dword_2232BB000, v10, v11, "#AssistantData Service helper response Me card SAPerson:\nidentifier: %{sensitive}s\ninternal GUID: %{sensitive}s\nfull description: %{sensitive}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    a2();

    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "#AssistantData No fallback contact-fetching helper. Skipping Contacts fetch", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return (a2)(MEMORY[0x277D84F90], 0);
  }
}

_OWORD *CNContactStore.fetchMeCards()()
{
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  isa = [v1 descriptorsForRequiredKeys];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v40[0] = 0;
  v3 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v4 = v40[0];
  if (v3)
  {
    v5 = one-time initialization token for pommes;
    v6 = v40[0];
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v11 = 136642819;
      v12 = v8;
      v13 = [v12 description];
      v14 = v8;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = v15;
      v8 = v14;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v40);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_2232BB000, v9, v10, "Fetched Me card from Contacts: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x223DE0F80](v38, -1, -1);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    v20 = [v1 createSAPersonFromCNContact_];
    if (v20)
    {
      v21 = v20;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40[0] = v25;
        *v24 = 136315138;
        v26 = v21;
        v27 = [v26 description];
        v39 = v8;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v40);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_2232BB000, v22, v23, "Converted Me card from Contacts: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x223DE0F80](v25, -1, -1);
        MEMORY[0x223DE0F80](v24, -1, -1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v4 = swift_allocObject();
        v4[1] = xmmword_2234D0FE0;
        *(v4 + 4) = v26;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v4 = swift_allocObject();
        v4[1] = xmmword_2234D0FE0;
        *(v4 + 4) = v21;
      }
    }

    else
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2232BB000, v33, v34, "Unable to convert Me CNContact to SAPerson. Proceeding as if there were no Me contact", v35, 2u);
        MEMORY[0x223DE0F80](v35, -1, -1);
      }

      v4 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v32 = v40[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v36 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t specialized AssistantDataSnapshot.MeCard.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v78 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v63 - v16;
  v18 = [a1 firstName];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [a1 middleName];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v26;
    v77 = v25;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v27 = [a1 lastName];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v30;
    v75 = v29;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  v31 = [a1 nickName];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v34;
    v73 = v33;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v35 = [a1 fullName];
  if (v35)
  {
    v36 = v35;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v37;
  }

  else
  {
    v71 = 0;
    v70 = 0;
  }

  v38 = [a1 addresses];
  v39 = MEMORY[0x277D84F90];
  if (!v38)
  {
    goto LABEL_30;
  }

  v40 = v38;
  v68 = v22;
  v69 = v20;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SALocation, 0x277D47508);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = __CocoaSet.count.getter();
    if (v42)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
LABEL_29:

    v20 = v69;
    v22 = v68;
LABEL_30:
    v45 = v78;
    goto LABEL_31;
  }

LABEL_19:
  v79 = v39;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
    __break(1u);
    return result;
  }

  v63 = v17;
  v64 = v9;
  v65 = v5;
  v66 = v4;
  v67 = a1;
  v44 = 0;
  v45 = v78;
  v39 = v79;
  do
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x223DDFF80](v44, v41);
    }

    else
    {
      v46 = *(v41 + 8 * v44 + 32);
    }

    specialized AssistantDataSnapshot.MeCard.ContactAddress.init(_:)(v46, v80);
    v79 = v39;
    v48 = *(v39 + 16);
    v47 = *(v39 + 24);
    if (v48 >= v47 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
      v45 = v78;
      v39 = v79;
    }

    ++v44;
    *(v39 + 16) = v48 + 1;
    v49 = (v39 + 96 * v48);
    v50 = v80[1];
    v49[2] = v80[0];
    v49[3] = v50;
    v51 = v80[2];
    v52 = v80[3];
    v53 = v80[5];
    v49[6] = v80[4];
    v49[7] = v53;
    v49[4] = v51;
    v49[5] = v52;
  }

  while (v42 != v44);

  a1 = v67;
  v4 = v66;
  v5 = v65;
  v9 = v64;
  v20 = v69;
  v22 = v68;
  v17 = v63;
LABEL_31:
  v54 = [a1 identifier];
  if (v54)
  {
    v55 = v54;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v78;
    (*(v5 + 56))(v78, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v45, 1, 1, v4);
  }

  outlined init with take of URL?(v45, v17);
  if ((*(v5 + 48))(v17, 1, v4))
  {

    result = outlined destroy of URL?(v17);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    (*(v5 + 16))(v9, v17, v4);
    outlined destroy of URL?(v17);
    v56 = URL.absoluteString.getter();
    v57 = v58;

    result = (*(v5 + 8))(v9, v4);
  }

  *a2 = v20;
  a2[1] = v22;
  v59 = v76;
  a2[2] = v77;
  a2[3] = v59;
  v60 = v74;
  a2[4] = v75;
  a2[5] = v60;
  v61 = v72;
  a2[6] = v73;
  a2[7] = v61;
  v62 = v70;
  a2[8] = v71;
  a2[9] = v62;
  a2[10] = v39;
  a2[11] = v56;
  a2[12] = v57;
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *PommesBridge.createRequestProcessor(withRequestId:assistantId:sessionId:isCandidateRequest:rootRequestId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v113 = a8;
  v115 = a7;
  v112 = a6;
  v116 = a4;
  v114 = a3;
  v129 = a2;
  v121 = a1;
  v110 = type metadata accessor for DispatchTimeInterval();
  v109 = *(v110 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v110, v11);
  v108 = &v106[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v124 = &v106[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v111 = &v106[-v21];
  MEMORY[0x28223BE20](v20, v22);
  v122 = &v106[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v106[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v120 = &v106[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v33, v35);
  v125 = &v106[-v37];
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v106[-v40];
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v106[-v44];
  v46 = *v8;
  v47 = *(*v8 + class metadata base offset for PommesBridge + 72);
  v126 = v8;
  v119 = v46 + class metadata base offset for PommesBridge + 72;
  v118 = v47;
  (v47)(v43);
  v48 = *(v14 + 16);
  v123 = a5;
  v128 = v14 + 16;
  v127 = v48;
  v48(v41, a5, v13);
  (*(v14 + 56))(v41, 0, 1, v13);
  v49 = *(v25 + 56);
  outlined init with copy of MediaUserStateCenter?(v45, v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of MediaUserStateCenter?(v41, &v29[v49], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v137 = v14;
  v50 = *(v14 + 48);
  v51 = v50(v29, 1, v13);
  v117 = v50;
  if (v51 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v52 = v50(&v29[v49], 1, v13);
    v53 = v13;
    v54 = v126;
    if (v52 == 1)
    {
      v55 = outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  outlined init with copy of MediaUserStateCenter?(v29, v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v50(&v29[v49], 1, v13) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v137 + 8))(v125, v13);
    v53 = v13;
LABEL_6:
    outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_7:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.pommes);
    v57 = v124;
    v127(v124, v123, v53);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v136 = v126;
      *v60 = 136315650;
      v61 = v120;
      v118();
      if (v117(v61, 1, v53))
      {
        outlined destroy of MediaUserStateCenter?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v62 = 0xE300000000000000;
        v63 = 7104878;
        v64 = v137;
      }

      else
      {
        v90 = v122;
        v127(v122, v61, v53);
        outlined destroy of MediaUserStateCenter?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v91 = UUID.uuidString.getter();
        v62 = v92;
        v64 = v137;
        (*(v137 + 8))(v90, v53);
        v63 = v91;
      }

      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v136);

      *(v60 + 4) = v93;
      *(v60 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v94 = v124;
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      (*(v64 + 8))(v94, v53);
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v136);

      *(v60 + 14) = v98;
      *(v60 + 22) = 2080;
      *(v60 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v129, &v136);
      _os_log_impl(&dword_2232BB000, v58, v59, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v60, 0x20u);
      v99 = v126;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v99, -1, -1);
      MEMORY[0x223DE0F80](v60, -1, -1);
    }

    else
    {

      (*(v137 + 8))(v57, v53);
    }

    lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError();
    swift_allocError();
    *v100 = 0;
    goto LABEL_25;
  }

  v65 = v122;
  (*(v137 + 32))(v122, &v29[v49], v13);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v66 = v125;
  v107 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v137 + 8);
  v67(v65, v13);
  outlined destroy of MediaUserStateCenter?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v67(v66, v13);
  v55 = outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v53 = v13;
  v54 = v126;
  if ((v107 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  (*(*v54 + class metadata base offset for PommesBridge + 96))(&v134, v55);
  if (!v135)
  {
    outlined destroy of MediaUserStateCenter?(&v134, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2232BB000, v58, v87, "Unable to find SessionState to pass to RequestProcessor", v88, 2u);
      MEMORY[0x223DE0F80](v88, -1, -1);
    }

    lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError();
    swift_allocError();
    *v89 = 1;
LABEL_25:
    swift_willThrow();
    return v58;
  }

  outlined init with take of DomainWarmupHandling(&v134, &v136);
  v68 = *(v54 + direct field offset for PommesBridge.pommesSearch);
  if (v68)
  {
    v127(v122, v123, v53);

    v126 = MessageDispatchingBridgeBase.name.getter();
    v125 = v69;
    MessageDispatchingBridgeBase.messagePublisher.getter();
    v124 = MessageDispatchingBridgeBase.serviceHelper.getter();
    v70 = outlined init with copy of AppDataProviding(&v136, v133);
    v71 = *(v54 + direct field offset for PommesBridge.instrumentationUtil);
    LODWORD(v123) = (*(*v54 + class metadata base offset for PommesBridge + 120))(v70);
    LODWORD(v120) = (*(*v54 + class metadata base offset for PommesBridge + 144))();
    v72 = type metadata accessor for PommesBridgeRequestProcessor(0);
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    v75 = swift_allocObject();
    *(v75 + direct field offset for PommesBridgeRequestProcessor.isRequestFinished) = 0;
    *(v75 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = 0;
    v76 = v75 + direct field offset for PommesBridgeRequestProcessor.sessionState;
    *(v76 + 32) = 0;
    *v76 = 0u;
    *(v76 + 16) = 0u;
    v77 = (v75 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
    *v77 = 0;
    v77[1] = 0;
    *(v75 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = 0;
    *(v75 + direct field offset for PommesBridgeRequestProcessor.pommesSearch) = v68;
    v78 = *(*v68 + 160);

    v78(v130, v79);
    v81 = v131;
    v80 = v132;
    __swift_project_boxed_opaque_existential_1(v130, v131);
    v82 = (*(v80 + 8))(0, v81, v80);
    v83 = v108;
    static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)(v82 & 1, v108);
    __swift_destroy_boxed_opaque_existential_1(v130);
    (*(v109 + 32))(v75 + direct field offset for PommesBridgeRequestProcessor.timeout, v83, v110);
    specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()();
    *(v75 + direct field offset for PommesBridgeRequestProcessor.pommesDUDAThreshold) = v84;
    swift_beginAccess();
    outlined assign with copy of ConversationSessionState?(v133, v76);
    swift_endAccess();
    *(v75 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil) = v71;
    *(v75 + direct field offset for PommesBridgeRequestProcessor.isMultiUser) = v123 & 1;
    *(v75 + direct field offset for PommesBridgeRequestProcessor.isCandidateRequest) = v112 & 1;
    *(v75 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome) = v120 & 1;
    v85 = v122;
    v127(v111, v122, v53);
    outlined init with copy of AppDataProviding(&v134, v130);

    v58 = RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)();

    outlined destroy of MediaUserStateCenter?(v133, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v134);
    (*(v137 + 8))(v85, v53);
    __swift_destroy_boxed_opaque_existential_1(&v136);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    __swift_project_value_buffer(v102, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_2232BB000, v58, v103, "PommesSearch instance not available - timing error with async bridge setup?", v104, 2u);
      MEMORY[0x223DE0F80](v104, -1, -1);
    }

    lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError();
    swift_allocError();
    *v105 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v136);
  }

  return v58;
}

uint64_t PommesBridge.isMultiUser.getter()
{
  v1 = direct field offset for PommesBridge.isMultiUser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesBridge.isOnlyUserInHome.getter()
{
  v1 = direct field offset for PommesBridge.isOnlyUserInHome;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Bool __swiftcall PommesServerFallbackPreferences.shouldDisableServerFallbackNL(isDomainDirected:)(Swift::Bool isDomainDirected)
{
  v2 = &selRef_shouldDisableServerFallbackDomain;
  v3 = *(v1 + 16);
  if (!isDomainDirected)
  {
    v2 = &selRef_shouldDisableServerFallbackNL;
  }

  return [*(v1 + 16) *v2];
}

uint64_t static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = MEMORY[0x223DDF550](0xD00000000000001BLL, 0x80000002234DE290);
    v8 = [v6 integerForKey_];

    v9 = 5;
    if (a1)
    {
      v9 = 8;
    }

    if (v8)
    {
      v9 = v8;
    }

    v10 = MEMORY[0x277D85178];
    if (!v8)
    {
      v10 = MEMORY[0x277D85188];
    }
  }

  else
  {
    v9 = 5;
    if (a1)
    {
      v9 = 8;
    }

    v10 = MEMORY[0x277D85188];
  }

  *a2 = v9;
  v11 = *v10;
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

void specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234DE1F0);
    [v2 doubleForKey_];
  }
}

uint64_t outlined assign with copy of ConversationSessionState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PommesBridgeRequestProcessor.handleStartRequestMessage(_:location:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v79 = &v60[-v5];
  v6 = type metadata accessor for UUID();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v76 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v60[-v12];
  v14 = type metadata accessor for InputOrigin();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);
  v21 = RequestMessageBase.requestId.getter();
  (*(*v20 + 336))(v21);

  StartRequestMessageBase.inputOrigin.getter();
  v22 = InputOrigin.aceInputOrigin.getter();
  v24 = v23;
  (*(v15 + 8))(v19, v14);
  v25 = (v1 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
  v26 = *(v1 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8);
  *v25 = v22;
  v25[1] = v24;

  result = StartRequestMessageBase.optionalRequestContextData.getter();
  if (result)
  {
    v28 = result;
    v29 = MessageBase.assistantId.getter();
    v72 = v30;
    v73 = v29;
    SessionMessageBase.sessionId.getter();
    v31 = RequestMessageBase.requestId.getter();
    v74 = v32;
    v75 = v31;
    v34 = v76;
    v33 = v77;
    v35 = v78;
    (*(v77 + 16))(v76, v13, v78);
    v36 = RequestContextData.audioSource.getter();
    v69 = v37;
    v70 = v36;
    v38 = RequestContextData.audioDestination.getter();
    v67 = v39;
    v68 = v38;
    v40 = RequestContextData.responseMode.getter();
    v65 = v41;
    v66 = v40;
    v63 = RequestContextData.isEyesFree.getter();
    v61 = RequestContextData.isVoiceTriggerEnabled.getter();
    v42 = RequestContextData.isTextToSpeechEnabled.getter();
    v64 = RequestContextData.isTriggerlessFollowup.getter();
    v62 = RequestContextData.bargeInModes.getter();
    v43 = v79;
    RequestContextData.approximatePreviousTTSInterval.getter();
    v71 = RequestContextData.deviceRestrictions.getter();
    v44 = RequestContextData.suggestionRequestType.getter();
    v46 = v45;
    (*(v33 + 8))(v13, v35);
    v47 = type metadata accessor for PommesRequestContext();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    v51 = v72;
    *(v50 + 16) = v73;
    *(v50 + 24) = v51;
    (*(v33 + 32))(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v34, v35);
    v52 = (v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v53 = v74;
    *v52 = v75;
    v52[1] = v53;
    v54 = (v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    v55 = v69;
    *v54 = v70;
    v54[1] = v55;
    v56 = (v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    v57 = v67;
    *v56 = v68;
    v56[1] = v57;
    v58 = (v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    v59 = v65;
    *v58 = v66;
    v58[1] = v59;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = v63 & 1;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = v61 & 1;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = v42 & 1;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = v64 & 1;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = v62;
    outlined init with take of PommesSearchReason?(v43, v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v71;
    *(v50 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = (v44 == 1) & ~v46;
    PommesBridgeRequestProcessor.setRequestContextAndBeginSearchIfReady(_:)(v50);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PommesSearch.preparedRequestsIds.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v38 = *(matched - 8);
  v39 = matched;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](matched, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v36 = v2;
    v37 = v9;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v38 + 72);
      outlined init with copy of PommesSearchRequest.ParseState(v24 + v25 * (v21 | (v13 << 6)), v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      v26 = *(v12 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
      dispatch thunk of Hashable.hash(into:)();
      v27 = *(v39 + 20);
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = outlined init with take of PerformanceUtil.Ticket(v8, *(v12 + 48) + v20 * v25, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      ++*(v12 + 16);
      v9 = v37;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v36;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v12;
  }

  return result;
}

{
  v2 = v1;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  v11 = static _SetStorage.resize(original:capacity:move:)();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for VideoCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v53 = &v44 - v16;
  v17 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v18 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v20 = result;
  if (*(v17 + 16))
  {
    v50 = v4;
    v44 = v2;
    v21 = 0;
    v22 = v17 + 56;
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 56);
    v26 = (v23 + 63) >> 6;
    v48 = (v5 + 48);
    v49 = v17;
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v27 = result + 56;
    while (v25)
    {
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_17:
      v32 = *(v17 + 48);
      v52 = *(v51 + 72);
      v33 = v53;
      outlined init with copy of MediaUserStateCenter?(v32 + v52 * (v29 | (v21 << 6)), v53, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v34 = *(v20 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v33, v14, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v35 = v50;
      if ((*v48)(v14, 1, v50) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v36 = v47;
        (*v46)(v47, v14, v35);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
        dispatch thunk of Hashable.hash(into:)();
        (*v45)(v36, v35);
      }

      result = Hasher._finalize()();
      v37 = -1 << *(v20 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      v17 = v49;
      if (((-1 << v38) & ~*(v27 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v27 + 8 * v39);
          if (v43 != -1)
          {
            v28 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v28 = __clz(__rbit64((-1 << v38) & ~*(v27 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = outlined init with take of PommesSearchReason?(v53, *(v20 + 48) + v28 * v52, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      ++*(v20 + 16);
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v26)
      {

        v2 = v44;
        goto LABEL_31;
      }

      v31 = *(v22 + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v25 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v20;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for StringSearchScope();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v53 = &v44 - v16;
  v17 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v18 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v20 = result;
  if (*(v17 + 16))
  {
    v50 = v4;
    v44 = v2;
    v21 = 0;
    v22 = v17 + 56;
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 56);
    v26 = (v23 + 63) >> 6;
    v48 = (v5 + 48);
    v49 = v17;
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v27 = result + 56;
    while (v25)
    {
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_17:
      v32 = *(v17 + 48);
      v52 = *(v51 + 72);
      v33 = v53;
      outlined init with copy of MediaUserStateCenter?(v32 + v52 * (v29 | (v21 << 6)), v53, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v34 = *(v20 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v33, v14, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v35 = v50;
      if ((*v48)(v14, 1, v50) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v36 = v47;
        (*v46)(v47, v14, v35);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
        dispatch thunk of Hashable.hash(into:)();
        (*v45)(v36, v35);
      }

      result = Hasher._finalize()();
      v37 = -1 << *(v20 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      v17 = v49;
      if (((-1 << v38) & ~*(v27 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v27 + 8 * v39);
          if (v43 != -1)
          {
            v28 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v28 = __clz(__rbit64((-1 << v38) & ~*(v27 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = outlined init with take of PommesSearchReason?(v53, *(v20 + 48) + v28 * v52, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      ++*(v20 + 16);
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v26)
      {

        v2 = v44;
        goto LABEL_31;
      }

      v31 = *(v22 + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v25 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v20;
  }

  return result;
}

Swift::Void __swiftcall PegasusProxy.prepareForSearchAtRequestStart(requestId:location:)(Swift::String requestId, CLLocation_optional location)
{
  v3 = v2;
  isa = location.value.super.isa;
  v43 = requestId;
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v6 = *(*(v5 - 1) + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v43 - v12;
  if (isa)
  {
    v14 = one-time initialization token for pommes;
    v15 = isa;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134283777;
      [(objc_class *)v17 coordinate];
      *(v20 + 4) = v21;
      *(v20 + 12) = 2049;
      [(objc_class *)v17 coordinate];
      *(v20 + 14) = v22;
      _os_log_impl(&dword_2232BB000, v18, v19, "Received location: (%{private}f, %{private}f) from startSpeechRequest", v20, 0x16u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    v23 = v3[15];
    v24 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v23);
    (*(v24 + 16))(v17, v23, v24);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2232BB000, v26, v27, "Fetching location", v28, 2u);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  Date.init()();
  v29 = &v13[v5[5]];
  *v29 = "SiriInformationSearch/PegasusProxy.swift";
  *(v29 + 1) = 40;
  v29[16] = 2;
  *&v13[v5[6]] = 371;
  v30 = &v13[v5[7]];
  *v30 = "prepareForSearchAtRequestStart(requestId:location:)";
  *(v30 + 1) = 51;
  v30[16] = 2;
  v31 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000024);
  v32 = &v13[v5[8]];
  *v32 = v31;
  v32[1] = v33;
  v34 = v3[15];
  v35 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v34);
  (*(v35 + 8))(v34, v35);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v36 = *(*static PerformanceUtil.shared + 184);
  v36(v13, 0);
  Date.init()();
  v37 = &v10[v5[5]];
  *v37 = "SiriInformationSearch/PegasusProxy.swift";
  *(v37 + 1) = 40;
  v37[16] = 2;
  *&v10[v5[6]] = 375;
  v38 = &v10[v5[7]];
  *v38 = "prepareForSearchAtRequestStart(requestId:location:)";
  *(v38 + 1) = 51;
  v38[16] = 2;
  v39 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000048);
  v40 = &v10[v5[8]];
  *v40 = v39;
  v40[1] = v41;
  v42 = (*(*v3 + 368))();
  if (v42)
  {
    (*(*v42 + 128))(v43._countAndFlagsBits, v43._object, destructiveProjectEnumData for SearchError, 0);
  }

  v36(v10, 0);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v10, type metadata accessor for PerformanceUtil.Ticket);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v13, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t AssistantLocationProvider.fetchLocation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v10 - v5;
  MEMORY[0x223DDF970](v4);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in AssistantLocationProvider.fetchLocation(), v8);
}

uint64_t sub_2232CE750()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t PegasusProxy.phoneCallStateManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

void PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v26);
    _os_log_impl(&dword_2232BB000, v11, v12, "Fetching isUserOnPhoneCall status for requestId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v17 = *(v5 + 40);
  *(v5 + 40) = 0;

  outlined consume of PommesPhoneCallStateManager.Status(v15, v16, v17);
  v18 = *(v5 + 16);
  if ([v18 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    v20 = *MEMORY[0x277CEEFD0];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v21;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = v5;
    v22[5] = a3;
    v22[6] = a4;

    isa = Set._bridgeToObjectiveC()().super.isa;
    v24 = MEMORY[0x223DDF550](a1, a2);
    v26[4] = partial apply for closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:completion:);
    v26[5] = v22;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    v26[3] = &block_descriptor_22;
    v25 = _Block_copy(v26);

    [v18 fetchContextsForKeys:isa forRequestID:v24 includesNearbyDevices:0 completion:v25];
    _Block_release(v25);
  }
}