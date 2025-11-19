uint64_t sub_1DC6B551C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t specialized withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19ManagedContinuationCySo13SABaseCommandCSgGMd, &_s14SiriKitRuntime19ManagedContinuationCySo13SABaseCommandCSgGMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v2[3] = v8;
  v9 = *(*v8 + 88);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = v8 + *(*v8 + 96);
  *v11 = 0;
  *(v11 + 8) = -1;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v8 + *(*v8 + 104)) = v12;
  v13 = v12;
  v14 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v13 setName_];

  v15 = swift_task_alloc();
  v2[4] = v15;
  v15[2] = v8;
  v15[3] = a1;
  v15[4] = a2;
  v16 = *(MEMORY[0x1E69E88F8] + 4);
  v17 = swift_task_alloc();
  v2[5] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  *v17 = v2;
  v17[1] = specialized withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE20](v2 + 2, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v15, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v8, v18);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19ManagedContinuationCyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime19ManagedContinuationCyAA18RemoteConversation_pSgGMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v2[4] = v8;
  v9 = *(*v8 + 88);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = v8 + *(*v8 + 96);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = -1;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v8 + *(*v8 + 104)) = v12;
  v13 = v12;
  v14 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v13 setName_];

  v15 = swift_task_alloc();
  v2[5] = v15;
  v15[2] = v8;
  v15[3] = a1;
  v15[4] = a2;
  v16 = *(MEMORY[0x1E69E88F8] + 4);
  v17 = swift_task_alloc();
  v2[6] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pSgMd, &_s14SiriKitRuntime18RemoteConversation_pSgMR);
  *v17 = v2;
  v17[1] = specialized withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE20](v2 + 2, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v15, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v8, v18);
}

uint64_t outlined init with copy of Conversation.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  return MEMORY[0x1EEE6DFA0](Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:), v7, 0);
}

uint64_t Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)()
{
  v56 = v0;
  v1 = v0[13];
  if (!v1)
  {
LABEL_37:
    v51 = v0[1];

    return v51();
  }

  v2 = v0[13];

  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_37;
  }

  v3 = v0[15];
  if (v3)
  {
LABEL_7:

    SiriEnvironment.currentRequest.getter();

    SiriEnvironment.currentRequest.getter();

    v7 = CurrentRequest.overrideProperties.getter();

    if (v7)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.executor);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1DC659000, v9, v10, "Applying overrides on request", v11, 2u);
        MEMORY[0x1E12A2F50](v11, -1, -1);
      }

      static CurrentRequestOverrides.applyOverrides(on:overrides:)();

      v12 = v0[16];
      if (v12)
      {
LABEL_16:
        if (v3)
        {
          v13 = swift_allocObject();
          *(v13 + 16) = v3;
          *(v13 + 24) = v12;
          v14 = type metadata accessor for AnyChildCompletion();
          v15 = *(v14 + 48);
          v16 = *(v14 + 52);
          swift_allocObject();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v12 = AnyChildCompletion.init<A>(_:)();
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {

      v12 = v0[16];
      if (v12)
      {
        goto LABEL_16;
      }
    }

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v4 = v0[12];
  if (v4)
  {
    v5 = *(*(v4 + 16) + 112);

    v3 = dispatch thunk of AnyFlow.siriEnvironment.getter();

    v6 = v0[15];
    goto LABEL_7;
  }

  v12 = v0[16];
LABEL_21:
  v17 = *(v0[17] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);

  v3 = 0;
LABEL_22:
  v0[18] = v3;
  v0[19] = v12;
  v18 = v0[17];

  dispatch thunk of AnyFlow.siriEnvironment.setter();
  v19 = *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
  v20 = v19[4];
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v19);
  v21 = v0[17];
  OS_dispatch_semaphore.signal()();
  v22 = *(v21 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
  v23 = SiriEnvironment.currentProcess.getter();
  v24 = dispatch thunk of CurrentProcess.idleTracker.getter();

  if (v24)
  {
    v25 = dispatch thunk of IdleTracker.track(name:)();
  }

  else
  {
    v25 = 0;
  }

  v26 = v0[17];
  v27 = v0[12];
  v28 = *(v26 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity);
  *(v26 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = v25;

  v29 = v0[14];
  if (v27)
  {
    v30 = *(*(v0[12] + 16) + 152);

    if (!v29)
    {

LABEL_30:
      v32 = v31;
      v53 = v31;
      goto LABEL_31;
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
    if (!v29)
    {
      goto LABEL_30;
    }
  }

  v53 = v31;
  v32 = v29;
LABEL_31:
  v0[20] = v32;
  v33 = v0[17];
  v52 = v0[12];
  v34 = *(v33 + 112);
  v35 = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo);
  type metadata accessor for FlowAgent();
  v36 = swift_allocObject();

  v37 = v35;
  swift_defaultActor_initialize();
  *(v36 + 130) = 0;
  *(v36 + 136) = 0;
  *(v36 + 144) = 0;
  *(v36 + 112) = v1;
  *(v36 + 120) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  v38 = v0[5] != 0;
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v36 + 128) = v38;
  *(v36 + 129) = v38;
  *(v36 + 152) = v32;
  *(v36 + 160) = v37;
  v55 = v36;
  v39 = *(*v34 + 208);

  v39(&v55, v52);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B18_Nlu_External_TaskV_Tt1g5(v32, v53);

  if ((v40 & 1) != 0 || (v41 = v0[17] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver, swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[21] = Strong) == 0))
  {

    goto LABEL_37;
  }

  v43 = *(v41 + 8);
  ObjectType = swift_getObjectType();
  v45 = *(v43 + 24);
  v54 = (v45 + *v45);
  v46 = v45[1];
  v47 = swift_task_alloc();
  v0[22] = v47;
  *v47 = v0;
  v47[1] = Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:);
  v48 = v0[10];
  v49 = v0[11];

  return v54(v32, v48, v49, ObjectType, v43);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 136);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:), v4, 0);
}

{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DC6B60F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *initializeWithCopy for UserInputResult(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

uint64_t destroy for UserInputResult(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for Input();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ConversationCanHandleResult) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

id ConversationCanHandleResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v23 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A870, v20);
  v24 = [a1 containsValueForKey_];

  if (!v24)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.executor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Could not decode ConversationCanHandleResultXPC: No value for key directlySupported";
    goto LABEL_13;
  }

  v25 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A870);
  v65 = [a1 decodeBoolForKey_];

  v26 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  v27 = [a1 containsValueForKey_];

  if ((v27 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.executor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Could not decode ConversationCanHandleResultXPC: No value for key exclude";
LABEL_13:
    _os_log_impl(&dword_1DC659000, v40, v41, v43, v42, 2u);
    MEMORY[0x1E12A2F50](v42, -1, -1);
LABEL_14:

    swift_getObjectType();
    v45 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v46 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  v64 = [a1 decodeBoolForKey_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v29)
  {
    v30 = v29;
    v62 = v22;
    v63 = v7;
    v31 = type metadata accessor for PropertyListDecoder();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v34 = type metadata accessor for Input();
    v35 = v30;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v36, v38);

    (*(*(v34 - 8) + 56))(v18, 0, 1, v34);
    v22 = v62;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v18, v62, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v7 = v63;
  }

  else
  {
    v48 = type metadata accessor for Input();
    (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v49 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v49)
  {
    v50 = v49;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = type metadata accessor for UUID();
  (*(*(v52 - 8) + 56))(v10, v51, 1, v52);
  v53 = v10;
  v54 = v67;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v53, v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v55 = v66;
  outlined init with copy of ReferenceResolutionClientProtocol?(v22, v66, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v54, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult();
  v57 = objc_allocWithZone(CanHandleResult);
  v58 = v64;
  v57[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = v65;
  v57[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = v58;
  outlined init with copy of ReferenceResolutionClientProtocol?(v55, &v57[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v57[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v68.receiver = v57;
  v68.super_class = CanHandleResult;
  v59 = objc_msgSendSuper2(&v68, sel_init);

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  swift_getObjectType();
  v60 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v61 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v59;
}

uint64_t type metadata accessor for ConversationCanHandleResult()
{
  result = type metadata singleton initialization cache for ConversationCanHandleResult;
  if (!type metadata singleton initialization cache for ConversationCanHandleResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMd, &_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v28 = a1;
  v30 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMd, &_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Input();
  lazy protocol witness table accessor for type RemoteConversationClient and conformance RemoteConversationClient(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v18 = v17;

  if (!v6)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v20 = MEMORY[0x1E12A1410](a5, v27);
    (*(v9 + 16))(v12, v28, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v22 = swift_allocObject();
    (*(v9 + 32))(v22 + v21, v12, v8);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
    aBlock[3] = &block_descriptor_225;
    v23 = _Block_copy(aBlock);

    v24 = isa;
    [v30 canHandleWithInputData:isa rcId:v20 reply:v23];
    _Block_release(v23);

    return outlined consume of Data._Representation(v16, v18);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void closure #1 in closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (a2)
    {
      v10 = a2;
      if (one-time initialization token for ace != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.ace);
      v12 = a2;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v32);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1DC659000, v13, v14, "AceServiceInvokerImpl: ignoring command submission error due to barge-in override logic: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1E12A2F50](v16, -1, -1);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }

      v32 = a5;
      v33 = a6 & 1;
      ManagedContinuation.resume(with:)();

      return;
    }

    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.ace);
        v22 = a1;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = v26;
          *v25 = 136315138;
          v27 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_1DC659000, v23, v24, "AceServiceInvokerImpl: ignoring SACommandFailed due to barge-in override logic: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x1E12A2F50](v26, -1, -1);
          MEMORY[0x1E12A2F50](v25, -1, -1);
        }

        v32 = a5;
        v33 = a6 & 1;
        ManagedContinuation.resume(with:)();
        return;
      }
    }

LABEL_23:
    ManagedContinuation.resume(returning:)();
    return;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  v31 = a2;
  ManagedContinuation.resume(throwing:)();
}

uint64_t AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[18];
  v3 = v0[14];

  v4 = v0[1];

  return v4(v1);
}

{
  v1 = *(*(v0 + 88) + 152);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Attempting to submit a command on an invalidated AceServiceInvoker. Skipping straight to barge-in response.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v7 = *(v0 + 25);

    v8 = *(v0 + 72);
    if (v7)
    {
      *(v0 + 56) = v8;
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
      v10 = *(v0 + 144);
      v11 = *(v0 + 112);

      v12 = *(v0 + 8);

      return v12();
    }

    else
    {
      v29 = *(v0 + 144);
      v30 = *(v0 + 112);
      v31 = v8;

      v32 = *(v0 + 8);

      return v32(v8);
    }
  }

  else
  {
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 88);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v33 = *(v0 + 25);
    (*(v17 + 16))(v14, *(v0 + 80), v16);
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v0 + 152) = v23;
    *(v23 + 16) = v20;
    *(v23 + 24) = v18;
    (*(v17 + 32))(v23 + v21, v14, v16);
    v24 = v23 + v22;
    *v24 = v19;
    *(v24 + 8) = v33 & 1;
    outlined copy of Result<SABaseCommand?, Error>(v19);
    v25 = *(MEMORY[0x1E69D3658] + 4);
    v26 = v20;

    v27 = swift_task_alloc();
    *(v0 + 160) = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    *v27 = v0;
    v27[1] = AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);

    return MEMORY[0x1EEE412A8](v0 + 32, partial apply for closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:), v23, v28);
  }
}

{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  *(v0 + 40) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {

    v23 = *(v0 + 168);
    goto LABEL_9;
  }

  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 25);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.ace);
  outlined copy of Result<SABaseCommand?, Error>(v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  outlined consume of Result<SABaseCommand?, Error>(v6);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 72);
    v12 = *(v0 + 25);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    *(v0 + 16) = v11;
    *(v0 + 24) = v12 & 1;
    outlined copy of Result<SABaseCommand?, Error>(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandCSgs5Error_pGMd, &_ss6ResultOySo13SABaseCommandCSgs5Error_pGMR);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v9, v10, "AceServiceInvokerImpl: submission response was simulated because user barged in. Simulated result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);
  if (*(v0 + 25))
  {
    *(v0 + 48) = v21;
    v22 = v21;
    swift_willThrowTypedImpl();
    (*(v19 + 8))(v18, v20);

LABEL_9:
    v24 = *(v0 + 144);
    v25 = *(v0 + 112);

    v26 = *(v0 + 8);

    return v26();
  }

  (*(v19 + 8))(*(v0 + 112), *(v0 + 96));

  v28 = *(v0 + 72);
  v29 = *(v0 + 144);
  v30 = *(v0 + 112);
  v31 = v21;

  v32 = *(v0 + 8);

  return v32(v28);
}

uint64_t closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 64));

  *v4 = v1;
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 24);
  v2 = AceServiceInvokerImpl.preparedCommand(_:options:)(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C7738]) init];
    v4 = 0;
  }

  else
  {
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
    v3 = swift_allocError();
    BargeInError.init(rawError:)();
    v4 = 1;
  }

  *(v0 + 96) = v4;
  *(v0 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);

  return AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(v2, v3, v4, v6);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 64));

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3();
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  else
  {
    v3 = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  lazy protocol witness table accessor for type SerialSubmissionError and conformance SerialSubmissionError();
  swift_allocError();
  *v7 = v2;
  v7[1] = v1;
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v97 = a6;
  v98 = a8;
  v95 = a7;
  v96 = a5;
  v93 = a4;
  v102 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v94 = *(v24 - 8);
  v25 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v101 = &v70 - v26;
  v27 = type metadata accessor for Date();
  v92 = *(v27 - 8);
  v28 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ActivityType();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v70 - v34;
  v36 = *(v21 + 16);
  if (v36)
  {
    v75 = a3;
    v78 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = a21;
    v88 = a19;
    v89 = a20;
    v99 = a18;
    v87 = a17;
    v86 = a16;
    v84 = a15;
    v82 = a14;
    v81 = a13;
    v79 = a12;
    v83 = a11;
    v80 = a10;
    v90 = a9;
    v37 = v27;
    v74 = v27;
    v38 = v35;
    v85 = v36;
    v91 = v38;
    static TaskPriority.background.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    v40 = v30;
    v41 = *(v30 + 16);
    v77 = v29;
    v41(&v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v29);
    v42 = v92;
    (*(v92 + 16))(v100, v75, v37);
    outlined init with copy of SiriKitReliabilityCodes?(v76, v101);
    v43 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v44 = (v31 + *(v42 + 80) + v43) & ~*(v42 + 80);
    v45 = (v28 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
    v71 = (*(v94 + 80) + v49 + 16) & ~*(v94 + 80);
    v72 = (v25 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 2) = 0;
    *(v50 + 3) = 0;
    *(v50 + 4) = v102;
    (*(v40 + 32))(&v50[v43], v78, v77);
    (*(v42 + 32))(&v50[v44], v100, v74);
    *&v50[v45] = v79;
    v51 = &v50[v46];
    v53 = v82;
    v52 = v83;
    *v51 = v81;
    *(v51 + 1) = v53;
    v54 = &v50[v47];
    *v54 = v80;
    *(v54 + 1) = v52;
    v55 = &v50[v48];
    v56 = v86;
    *v55 = v84;
    *(v55 + 1) = v56;
    v57 = &v50[v73];
    v58 = v99;
    *v57 = v87;
    *(v57 + 1) = v58;
    v59 = &v50[v49];
    v60 = v89;
    *v59 = v88;
    *(v59 + 1) = v60;
    outlined init with take of SiriKitReliabilityCodes?(v101, &v50[v71]);
    v61 = &v50[v72];
    v62 = v96;
    v63 = v95;
    *v61 = v97;
    *(v61 + 1) = v63;
    v64 = &v50[v76];
    *v64 = v93;
    *(v64 + 1) = v62;
    v65 = &v50[v94];
    v66 = v90;
    *v65 = v98;
    *(v65 + 1) = v66;
    v67 = v85;
    *&v50[v75] = v85;

    v68 = v67;

    v69 = v91;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v91, &async function pointer to partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:), v50);

    outlined destroy of ReferenceResolutionClientProtocol?(v69, &_sScPSgMd, &_sScPSgMR);
  }
}

uint64_t sub_1DC6B846C()
{
  v32 = type metadata accessor for ActivityType();
  v1 = *(v32 - 8);
  v36 = *(v1 + 80);
  v2 = (v36 + 40) & ~v36;
  v3 = *(v1 + 64);
  v31 = type metadata accessor for Date();
  v4 = *(v31 - 8);
  v35 = *(v4 + 80);
  v5 = (v2 + v3 + v35) & ~v35;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v34 = *(v10 + 80);
  v11 = (v34 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v34;
  v33 = *(v10 + 64);
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v1 + 8))(v0 + v2, v32);
  (*(v4 + 8))(v0 + v5, v31);
  v14 = *(v0 + v6);

  v15 = *(v0 + v7 + 8);

  v16 = *(v0 + v8 + 8);

  v17 = *(v0 + v9 + 8);

  v18 = *(v0 + v30 + 8);

  v19 = *(v0 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v20 = type metadata accessor for SiriKitReliabilityCodes();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v0 + v11, 1, v20))
  {
    (*(v21 + 8))(v0 + v11, v20);
  }

  v22 = (v33 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v22 + 8);

  v27 = *(v0 + v23 + 8);

  v28 = *(v0 + v24 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v25 + 8, v36 | v35 | v34 | 7);
}

uint64_t SiriKitFlowActivity.__deallocating_deinit()
{
  SiriKitFlowActivity.deinit();

  return swift_deallocClassInstance();
}

uint64_t SiriKitFlowActivity.deinit()
{
  v0 = DefaultFlowActivity.deinit();
  v1 = *(v0 + direct field offset for SiriKitFlowActivity.appBundleId + 8);

  v2 = *(v0 + direct field offset for SiriKitFlowActivity.appName + 8);

  v3 = *(v0 + direct field offset for SiriKitFlowActivity.appVersion + 8);

  v4 = *(v0 + direct field offset for SiriKitFlowActivity.build + 8);

  v5 = *(v0 + direct field offset for SiriKitFlowActivity.errorCodeDescription + 8);

  v6 = *(v0 + direct field offset for SiriKitFlowActivity.eventReliabilityCode + 8);

  v7 = *(v0 + direct field offset for SiriKitFlowActivity.responseId + 8);

  v8 = *(v0 + direct field offset for SiriKitFlowActivity.slotName + 8);

  v9 = *(v0 + direct field offset for SiriKitFlowActivity.executionRequestId + 8);

  return v0;
}

uint64_t TaskData.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64496B736174;
    v6 = 0x657079546B736174;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6552737574617473;
    if (a1 != 5)
    {
      v7 = 0x6570795470657473;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6974697669746361;
    v2 = 0x655364726143656DLL;
    v3 = 0x64656D726F666572;
    if (a1 != 3)
    {
      v3 = 0x496B736154666572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7475626972747461;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SiriKitRequestEvent and conformance SiriKitRequestEvent()
{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent and conformance SiriKitRequestEvent;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent and conformance SiriKitRequestEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent and conformance SiriKitRequestEvent);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SiriKitRequestEvent.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6449707061;
  v3 = 0xD000000000000014;
  v4 = 0x646F43726F727265;
  if (v1 != 4)
  {
    v4 = 0x614E746E65746E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C70736944707061;
  if (v1 != 1)
  {
    v5 = 0x6973726556707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t destroy for MetricsEventInformation(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[7];

  v6 = a1[9];
}

uint64_t destroy for SiriKitRequestEvent(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[7];

  v6 = a1[10];
}

uint64_t initializeWithCopy for SiriKitRequestEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t specialized TaskLoggingService.createRequestContentString(siriKitRequestEvent:interactionId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (!a3)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.instrumentation);
    outlined init with copy of SiriKitRequestEvent(a1, v38);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined destroy of SiriKitRequestEvent(a1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v38[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 72), *(a1 + 80), v38);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 48), *(a1 + 56), v38);
      _os_log_impl(&dword_1DC659000, v14, v15, "#TaskLoggingService - interactionId from MetricsState is Nil, not logging this request for intentName: %s, with eventReliabilityCode: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    return 0;
  }

  v8 = type metadata accessor for JSONEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v11 = *(a1 + 48);
  v38[2] = *(a1 + 32);
  v38[3] = v11;
  v38[4] = *(a1 + 64);
  v39 = *(a1 + 80);
  v12 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v12;
  lazy protocol witness table accessor for type SiriKitRequestEvent and conformance SiriKitRequestEvent();
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v19;
  static String.Encoding.utf8.getter();
  v21 = String.init(data:encoding:)();
  if (!v22)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.instrumentation);

    outlined init with copy of SiriKitRequestEvent(a1, v38);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    outlined destroy of SiriKitRequestEvent(a1);

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v38[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 72), *(a1 + 80), v38);
      *(v35 + 12) = 2080;
      *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v38);
      _os_log_impl(&dword_1DC659000, v33, v34, "#TaskLoggingService - JSON encoding error, requestEventString is Nil for intentName: %s, interactionId: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v36, -1, -1);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }

    outlined consume of Data._Representation(v18, v20);

    return 0;
  }

  v37 = a2;
  v23 = v21;
  v24 = one-time initialization token for instrumentation;
  v25 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.instrumentation);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v38[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v38);
    *(v29 + 12) = 2080;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, a3, v38);
    _os_log_impl(&dword_1DC659000, v27, v28, "#TaskLoggingService - created requestEvent: %s, for interactionId: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    outlined consume of Data._Representation(v18, v20);
  }

  else
  {
    outlined consume of Data._Representation(v18, v20);
  }

  return v23;
}

uint64_t SiriKitRequestEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v23[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v23[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v23[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v23[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[9];
  v22 = v3[10];
  v23[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

unint64_t MetricsEventInformation.dictionaryRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA69C10;
  v2 = *v0;
  v11 = v0[1];
  v3 = v11;
  v12 = v2;
  *(inited + 48) = v2;
  *(inited + 80) = v3;
  v4 = v0[3];
  v10 = v0[4];
  *(inited + 112) = v10;
  v9 = v0[2];
  *(inited + 144) = v9;
  *(inited + 32) = 0x6B736154776F6C66;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x80000001DCA84CF0;
  *(inited + 96) = 0x6C646E7542707061;
  *(inited + 104) = 0xEB00000000644965;
  strcpy((inited + 128), "interactionId");
  *(inited + 142) = -4864;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001DCA7AB40;
  v8 = v4;
  *(inited + 176) = v4;
  outlined init with copy of String(&v12, v7);
  outlined init with copy of String(&v11, v7);
  outlined init with copy of String(&v10, v7);
  outlined init with copy of String(&v9, v7);
  outlined init with copy of String(&v8, v7);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  return v5;
}

void TaskLoggingService.logViaSAMetrics(aceServiceInvoker:eventInformation:timings:originalCommandId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 160);
  if (v6)
  {
    oslog = v6;
    if (([oslog isOptedOutOfMTE]& 1) != 0)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.instrumentation);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DC659000, v11, v12, "#TaskLoggingService#MTEOptOut skipping sending metrics command because device is opted out of MTE", v13, 2u);
        MEMORY[0x1E12A2F50](v13, -1, -1);
      }
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69C7910]) init];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v17 setTimings_];

      v19 = MEMORY[0x1E12A1410](0xD000000000000022, 0x80000001DCA8B0B0);
      [v17 setCategory_];

      v20 = MEMORY[0x1E12A1410](a4, a5);
      [v17 setOriginalCommandId_];

      v21 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v17 setEventInformation_];

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.instrumentation);
      v11 = v17;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v11;
        *v26 = v11;
        v27 = v11;
        _os_log_impl(&dword_1DC659000, v23, v24, "#TaskLoggingService sending: %@", v25, 0xCu);
        outlined destroy of ReferenceResolutionClientProtocol?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v26, -1, -1);
        MEMORY[0x1E12A2F50](v25, -1, -1);
      }

      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of AceServiceInvokerAsync.submitAndForget(_:setRefId:)();
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.instrumentation);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v15, "#TaskLoggingService#MTEOptOut skipping sending metrics command because unable to initialize sensitivityManager", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14SASRecognitionCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__n128 protocol witness for CurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:) in conformance SiriKitCurareDonator(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v22 = *v21;
  SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  return result;
}

uint64_t type metadata accessor for UserInputResult()
{
  result = type metadata singleton initialization cache for UserInputResult;
  if (!type metadata singleton initialization cache for UserInputResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SiriKitReliabilityCodes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SiriKitEventContext.withOverrides(_:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = SiriKitEventOverrides.resultCandidateId.getter();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if ((v3 != 12589 || v4 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  SiriKitEventOverrides.taskId.getter();
  if (!v7)
  {
    SiriKitEventOverrides.interactionId.getter();
    if (!v8)
    {

      return v0;
    }
  }

  v5 = 0;
  v6 = 0;
LABEL_9:

  v9 = SiriKitEventOverrides.interactionId.getter();
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v6;
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 4), (v12 + 4));
  v13 = v1[10];
  v14 = v1[11];
  v12[9] = v1[9];
  v12[10] = v13;
  v12[11] = v14;
  if (!v11)
  {
    v9 = v1[12];
    v11 = v1[13];
  }

  v12[12] = v9;
  v12[13] = v11;
  return v12;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
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

id AceServiceInvokerImpl.preparedCommand(_:options:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v54 = 0;
  p_aBlock = &aBlock;
  v17 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v50, a2) ^ 1;
  AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(a1, v17 & 1);
  specialized AceServiceInvokerImpl.addMissingComponentIds(_:setRefId:)(a1, v17 & 1);
  if (AceServiceInvokerImpl.shouldWrapCommandForExecution(_:)(a1))
  {
    _s14SiriKitRuntime16AceMetricsLoggerO18logRemoteAnalytics7service7commandy0aB4Flow0D19ServiceInvokerAsync_p_So12SAAceCommand_ptFZTf4een_nAA0dmN4ImplC_So06SABaseQ0CTt1g5(v2, a1);
    v18 = specialized AceServiceInvokerImpl.wrapCommandForExecution(_:assistantId:)(a1, *(v2 + 72), *(v2 + 80));
LABEL_11:
    v36 = v18;
    AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v18, v17 & 1);

    return v36;
  }

  else
  {
    v19 = (a2 + 40);
    v20 = *(a2 + 16) + 1;
    while (--v20)
    {
      v21 = v19 + 2;
      v22 = *v19;
      v19 += 2;
      if (v22)
      {
        v23 = *(v21 - 3);
        v24 = one-time initialization token for ace;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.ace);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v49 = v23;
          v29 = v28;
          v30 = swift_slowAlloc();
          aBlock = v30;
          *v29 = 136315138;
          v31 = MEMORY[0x1E12A16D0](a2, &type metadata for AceServiceInvokerImpl.AceSubmitOptions);
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &aBlock);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_1DC659000, v26, v27, "Submitting to remote assistant: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1E12A2F50](v30, -1, -1);
          v34 = v29;
          v23 = v49;
          MEMORY[0x1E12A2F50](v34, -1, -1);
        }

        _s14SiriKitRuntime16AceMetricsLoggerO18logRemoteAnalytics7service7commandy0aB4Flow0D19ServiceInvokerAsync_p_So12SAAceCommand_ptFZTf4een_nAA0dmN4ImplC_So06SABaseQ0CTt1g5(v3, a1);
        v35 = specialized AceServiceInvokerImpl.wrapCommandForExecution(_:assistantId:)(a1, v23, v22);

        v18 = v35;
        goto LABEL_11;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    (*(v13 + 104))(v16, *MEMORY[0x1E69E7F98], v12);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v57 = partial apply for closure #1 in AceServiceInvokerImpl.preparedCommand(_:options:);
    v58 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v56 = &block_descriptor_244;
    v40 = _Block_copy(&aBlock);
    v44 = a1;
    static DispatchQoS.unspecified.getter();
    v52 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v41 = v46;
    v42 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1E12A1B20](0, v11, v41, v40);
    _Block_release(v40);

    (*(v48 + 8))(v41, v42);
    (*(v45 + 8))(v11, v47);

    v43 = v44;

    return v43;
  }
}

uint64_t sub_1DC6BA908()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t ActivityType.asSELFTypeAndReason(_:)(uint64_t a1)
{
  v41 = a1;
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for ActivityType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v22, *MEMORY[0x1E69CFDC0], v17, v20);
  lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type ActivityType and conformance ActivityType, MEMORY[0x1E69CFDE8]);
  v39 = v1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v44 == v42 && v45 == v43)
  {
    (*(v18 + 8))(v22, v17);

    v23 = v41;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v18 + 8))(v22, v17);

    v23 = v41;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  (*(v3 + 104))(v16, *MEMORY[0x1E69CFCA8], v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v25 = *(v40 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v23, v8, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16, &v8[v25], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v26 = *(v3 + 48);
  if (v26(v8, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    if (v26(&v8[v25], 1, v2) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
LABEL_15:
      v30 = 0x2B00000000;
      v28 = 27;
      return v30 | v28;
    }

    goto LABEL_10;
  }

  v27 = v37;
  outlined init with copy of ReferenceResolutionClientProtocol?(v8, v37, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v26(&v8[v25], 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v3 + 8))(v27, v2);
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
    goto LABEL_11;
  }

  v32 = v36;
  (*(v3 + 32))(v36, &v8[v25], v2);
  lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, MEMORY[0x1E69CFCD0]);
  LODWORD(v41) = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v3 + 8);
  v33(v32, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v33(v27, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v41)
  {
    goto LABEL_15;
  }

LABEL_11:
  v28 = ActivityType.flowStateType.getter();
  v29 = v38;
  outlined init with copy of ReferenceResolutionClientProtocol?(v23, v38, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if ((*(v3 + 48))(v29, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v30 = 0;
  }

  else
  {
    v31 = SiriKitReliabilityCodes.flowStatusReason.getter();
    (*(v3 + 8))(v29, v2);
    v30 = v31 << 32;
  }

  return v30 | v28;
}

uint64_t lazy protocol witness table accessor for type ActivityType and conformance ActivityType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriKitEventContext.resultCandidateId.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = one-time initialization token for instrumentation;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.instrumentation);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, &v18);
    v9 = "SiriKitEventContext: Vending overriden rcId: %s";
LABEL_6:
    _os_log_impl(&dword_1DC659000, v5, v6, v9, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
LABEL_7:

    return v2;
  }

  type metadata accessor for SiriEnvironment();
  if (static SiriEnvironment.forCurrentTask.getter())
  {
    SiriEnvironment.currentRequest.getter();

    v2 = CurrentRequest.resultCandidateId.getter();
    v11 = v10;

    if (v11)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.instrumentation);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_7;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v11, &v18);
      v9 = "SiriKitEventContext: Vending rcId from SiriEnvironment's current flow invocation request: %s";
      goto LABEL_6;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.instrumentation);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "SiriKitEventContext: No rcId found in SiriEnvironment. This event might be getting sent from a detached Task or dispatch queue, which loses SiriEnvironment context, and is a bug in the code which is emitting this event.", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  return 0;
}

void *TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v133 = a6;
  v134 = a5;
  v135 = a4;
  v132 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v114 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v114 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v114 - v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v120 = &v114 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v114 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v129 = &v114 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v114 - v35;
  v37 = [objc_allocWithZone(MEMORY[0x1E69CEB58]) init];
  if (!v37)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.instrumentation);
    v40 = v133;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v136[0] = v44;
      *v43 = 136315650;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v136);
      *(v43 + 12) = 2080;
      *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v40, v136);
      *(v43 + 22) = 2080;
      *(v43 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v135, v136);
      _os_log_impl(&dword_1DC659000, v41, v42, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v44, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    return 0;
  }

  v38 = v37;
  v124 = a1;
  v127 = a2;
  UUID.init(uuidString:)();
  v130 = *(v25 + 48);
  v131 = v25 + 48;
  if (v130(v23, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v25 + 32))(v36, v23, v24);
    v45 = v20;
    v46 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v48 = [v46 initWithNSUUID_];

    [v38 setTrpId_];
    v20 = v45;
    (*(v25 + 8))(v36, v24);
  }

  v49 = MEMORY[0x1E12A1410](v124, v127);
  [v38 setResultCandidateId_];

  v50 = v133;
  UUID.init(uuidString:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v20, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v130(v17, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.instrumentation);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v50;
      v57 = v55;
      v136[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v56, v136);
      _os_log_impl(&dword_1DC659000, v52, v53, "#TaskLoggingService SELF Log - current taskId: %s is not a valid UUID String, cannot emit SELF message", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  v118 = *(v25 + 32);
  v119 = v25 + 32;
  v118(v129, v17, v24);
  v58 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  v59 = UUID._bridgeToObjectiveC()().super.isa;
  v60 = [v58 initWithNSUUID_];

  [v38 setTaskId_];
  v61 = [objc_allocWithZone(MEMORY[0x1E69CF650]) init];
  if (v61)
  {
    v62 = v61;
    [v61 setMajor_];
    [v62 setMinor_];
    [v38 setVersion_];
  }

  v63 = v128;
  TaskLoggingService.createFlowId(executionRequestId:)(v128);
  v64 = v63;
  v65 = v122;
  outlined init with copy of ReferenceResolutionClientProtocol?(v64, v122, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v130(v65, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.instrumentation);

    v67 = v127;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = v50;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122 = v25;
      v73 = v72;
      v136[0] = v72;
      *v71 = 136315394;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v70, v136);
      *(v71 + 12) = 2080;
      *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v67, v136);
      _os_log_impl(&dword_1DC659000, v68, v69, "#TaskLoggingService SELF Log - metadata has flowId: nil, taskId: %s, rcId: %s", v71, 0x16u);
      swift_arrayDestroy();
      v74 = v73;
      v25 = v122;
      MEMORY[0x1E12A2F50](v74, -1, -1);
      MEMORY[0x1E12A2F50](v71, -1, -1);
    }

    v75 = 0x1E69CF000;
  }

  else
  {
    v118(v125, v65, v24);
    v76 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    v77 = UUID._bridgeToObjectiveC()().super.isa;
    v78 = [v76 initWithNSUUID_];

    [v38 setFlowId_];
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.instrumentation);
    v80 = v120;
    (*(v25 + 16))(v120, v125, v24);

    v81 = v127;

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    v117 = v83;
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v122 = v25;
      v85 = v84;
      v116 = swift_slowAlloc();
      v136[0] = v116;
      *v85 = 136315650;
      v115 = v82;
      v86 = UUID.uuidString.getter();
      v87 = v38;
      v88 = v20;
      v90 = v89;
      v91 = *(v122 + 8);
      v91(v80, v24);
      v92 = v91;
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v90, v136);
      v20 = v88;
      v38 = v87;

      *(v85 + 4) = v93;
      *(v85 + 12) = 2080;
      *(v85 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v133, v136);
      *(v85 + 22) = 2080;
      *(v85 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v81, v136);
      v94 = v115;
      _os_log_impl(&dword_1DC659000, v115, v117, "#TaskLoggingService SELF Log - metadata has flowId: %s, taskId: %s, rcId: %s", v85, 0x20u);
      v95 = v116;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v95, -1, -1);
      v96 = v85;
      v25 = v122;
      MEMORY[0x1E12A2F50](v96, -1, -1);

      v92(v125, v24);
    }

    else
    {

      v97 = *(v25 + 8);
      v97(v80, v24);
      v97(v125, v24);
    }

    v75 = 0x1E69CF000uLL;
  }

  v98 = v123;
  UUID.init(uuidString:)();
  if (v130(v98, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    __swift_project_value_buffer(v99, static Logger.instrumentation);

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v136[0] = v103;
      *v102 = 136315138;
      *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v135, v136);
      _os_log_impl(&dword_1DC659000, v100, v101, "#TaskLoggingService: invalid UUID for executionRequestId %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x1E12A2F50](v103, -1, -1);
      MEMORY[0x1E12A2F50](v102, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v25 + 8))(v129, v24);
  }

  else
  {
    v104 = v121;
    v118(v121, v98, v24);
    v105 = objc_allocWithZone(*(v75 + 1592));
    v106 = UUID._bridgeToObjectiveC()().super.isa;
    v107 = [v105 initWithNSUUID_];

    v108 = v126[24];
    v109 = v126[25];
    __swift_project_boxed_opaque_existential_1(v126 + 21, v108);
    v110 = (*(v109 + 16))(v108, v109);
    v111 = &selRef_setSubRequestId_;
    if ((v110 & 1) == 0)
    {
      v111 = &selRef_setRequestId_;
    }

    [v38 *v111];

    v112 = *(v25 + 8);
    v112(v104, v24);
    outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v112(v129, v24);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v38;
}

uint64_t TaskLoggingService.createFlowId(executionRequestId:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.instrumentation);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "#TaskLoggingService SELF Log - invalid executionRequestId string, cannot derive flowId form it", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return (*(v8 + 56))(a1, 1, 1, v7);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v17 = *(v1 + 128);
    v18 = *(v1 + 136);
    v17(v11);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t closure #1 in default argument 4 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponentName:3 fromSourceIdentifier:isa];

  if (v4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t closure #1 in default argument 5 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppInformationResolver();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = AppInformationResolver.init(app:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for AppInformationResolver;
  *a1 = result;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = [*(Strong + 24) requestID];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    static ServiceBridgeDelegate.fetchContextsDefault(for:includesNearByDevices:requestId:serviceHelper:completion:)(a1, a2 & 1, v13, v15, v4[3], a3, a4);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.conversationBridge);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = Set.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DC659000, v17, v18, "RunSiriKitExecutorProcessor already released, ignoring fetchContexts of %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    return a3(0);
  }
}

void closure #2 in AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(void *a1, NSObject *a2, const char *a3, const char *a4)
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.ace);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DC659000, v9, v10, a3, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);

      return;
    }

    v26 = a2;
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ace);
    v19 = a1;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgmMd, &_sSo13SABaseCommandCSgmMR);
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DC659000, oslog, v20, a4, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
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
    v17 = MEMORY[0x1E69E7CC0];
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

void AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 aceId];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v16 = v17;
    (*(v7 + 8))(v11, v6);
  }

  v18 = MEMORY[0x1E12A1410](v14, v16);

  [a1 setAceId_];

  if (a2)
  {
    if (v3[8])
    {
      v19 = v3[7];
      v20 = v3[8];
    }

    else
    {
      v19 = v3[5];
      v20 = v3[6];
    }

    v21 = MEMORY[0x1E12A1410](v19, v20);

    [a1 setRefId_];
  }
}

uint64_t AceServiceInvokerImpl.shouldWrapCommandForExecution(_:)(void *a1)
{
  v3 = specialized static ExecuteOnRemoteCmds.includes(_:)(a1);
  if (*(v1 + 24))
  {
    v4 = 0x6F69747563657845;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (*(v1 + 24))
  {
    v5 = 0xEF6563697665446ELL;
  }

  else
  {
    v5 = 0x80000001DCA7AA10;
  }

  if (*(v1 + 24) == 1 && v5 == 0xEF6563697665446ELL)
  {

    v8 = v3;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 & v3;
  }

  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.ace);
  v10 = a1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v11, v12))
  {

LABEL_31:
    return v8 & 1;
  }

  v28 = v8;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v29 = v14;
  *v13 = 136446978;
  v15 = [v10 encodedClassName];

  if (v15)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v29);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    if (v3)
    {
      v22 = 0x746F6D65526E7552;
    }

    else
    {
      v22 = 0x6C61636F4C6E7552;
    }

    if (v3)
    {
      v23 = 0xE900000000000065;
    }

    else
    {
      v23 = 0xE800000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

    *(v13 + 24) = v24;
    *(v13 + 32) = 2080;
    v8 = v28;
    if (v28)
    {
      v25 = 1163219540;
    }

    else
    {
      v25 = 0x45534C4146;
    }

    if (v28)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

    *(v13 + 34) = v27;
    _os_log_impl(&dword_1DC659000, v11, v12, "AceServiceInvoker shouldWrapCommand=%{public}s runLocation=%s remoteCmdType=%s returns shouldExecuteRemote=%s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

BOOL specialized static ExecuteOnRemoteCmds.includes(_:)(void *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = outlined read-only object #0 of static ExecuteOnRemoteCmds.allCases.getter[v2++ + 32];
    switch(v3)
    {
      case 1:
        v4 = &lazy cache variable for type metadata for SACFProvideContext;
        v5 = 0x1E69C7748;
        break;
      case 2:
        v4 = &lazy cache variable for type metadata for SAInitiateHandoffOnCompanion;
        v5 = 0x1E69C7828;
        break;
      case 3:
        v4 = &lazy cache variable for type metadata for SAPhoneClientCoordinationPhoneCall;
        v5 = 0x1E69C7948;
        break;
      case 4:
        v4 = &lazy cache variable for type metadata for SASendCommands;
        v5 = 0x1E69C7A48;
        break;
      case 5:
        v4 = &lazy cache variable for type metadata for SAUIAddViews;
        v5 = 0x1E69C7AF8;
        break;
      case 6:
        v4 = &lazy cache variable for type metadata for SAUISayIt;
        v5 = 0x1E69C7BB0;
        break;
      case 7:
        v4 = &lazy cache variable for type metadata for SAUpdateReadingState;
        v5 = 0x1E69C7BF8;
        break;
      case 8:
        v4 = &lazy cache variable for type metadata for SALogStringEvent;
        v5 = 0x1E69C78C8;
        break;
      case 9:
        v4 = &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate;
        v5 = 0x1E69C7998;
        break;
      case 10:
        v4 = &lazy cache variable for type metadata for SAUIShowRequestHandlingStatus;
        v5 = 0x1E69C7BB8;
        break;
      case 11:
        v4 = &lazy cache variable for type metadata for SAUIUpdateVisualResponseSnippet;
        v5 = 0x1E69C7BE8;
        break;
      case 12:
        v4 = &lazy cache variable for type metadata for SAUIHideSiriOverlay;
        v5 = 0x1E69C7B68;
        break;
      case 13:
        v4 = &lazy cache variable for type metadata for SAUISnippetDisplayConfigurationRequest;
        v5 = 0x1E69C7BC8;
        break;
      default:
        v4 = &lazy cache variable for type metadata for SAAceView;
        v5 = 0x1E69C7708;
        break;
    }

    type metadata accessor for OS_dispatch_queue(0, v4, v5);
    if ([a1 isKindOfClass_])
    {
      break;
    }

    if (v2 == 14)
    {
      LODWORD(v3) = 14;
      return v3 != 14;
    }
  }

  return v3 != 14;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void specialized AceServiceInvokerImpl.addMissingComponentIds(_:setRefId:)(unint64_t a1, int a2)
{
  v95 = a2;
  v94 = type metadata accessor for UUID();
  v3 = *(v94 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v94);
  v6 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v92 = a1;
    v9 = [v8 dialogs];
    if (v9)
    {
      v10 = v9;
      v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADialog, 0x1E69C77A0);
      i = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (i >> 62)
      {
        goto LABEL_74;
      }

      v13 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }

LABEL_75:

LABEL_76:
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v8 setDialogs_];
    goto LABEL_83;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    return;
  }

  v8 = v32;
  v89 = a1;
  v33 = [v8 views];
  if (v33)
  {
    v34 = v33;
    v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = v35;
    if (v35 >> 62)
    {
      goto LABEL_79;
    }

    for (i = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v83[1] = v11;
      v84 = v8;
      v85 = a1;
      v97 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      v37 = 0;
      v88 = v93 & 0xFFFFFFFFFFFFFF8;
      v91 = v3 + 1;
      v92 = (v93 & 0xC000000000000001);
      v38 = off_1E8646000;
      *&v36 = 136315138;
      v86 = v36;
      v87 = i;
      while (1)
      {
        if (v92)
        {
          v42 = MEMORY[0x1E12A1FE0](v37, v93);
          goto LABEL_39;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        if (v37 >= *(v88 + 16))
        {
          break;
        }

        v42 = *(v93 + 8 * v37 + 32);
LABEL_39:
        v41 = v42;
        v43 = [v42 v38[427]];
        if (!v43)
        {
          goto LABEL_43;
        }

        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v46;

        v47 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v47 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (!v47)
        {
LABEL_43:
          UUID.init()();
          v48 = UUID.uuidString.getter();
          v50 = v49;
          (*v91)(v6, v94);
          v51 = MEMORY[0x1E12A1410](v48, v50);

          [v41 setAceId_];

          if (one-time initialization token for ace != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          __swift_project_value_buffer(v52, static Logger.ace);
          v53 = v41;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v90 = v41;
            v57 = v56;
            v8 = swift_slowAlloc();
            v96 = v8;
            *v57 = v86;
            v58 = [v53 description];
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            a1 = v60;

            v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, a1, &v96);

            *(v57 + 4) = v61;
            i = v87;
            _os_log_impl(&dword_1DC659000, v54, v55, "Set missing aceId to: %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v8);
            MEMORY[0x1E12A2F50](v8, -1, -1);
            v62 = v57;
            v41 = v90;
            MEMORY[0x1E12A2F50](v62, -1, -1);
          }

          v38 = off_1E8646000;
        }

        if (v95)
        {
          v63 = [v41 refId];
          if (!v63)
          {
            goto LABEL_53;
          }

          v64 = v63;
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v66;

          v67 = HIBYTE(a1) & 0xF;
          if ((a1 & 0x2000000000000000) == 0)
          {
            v67 = v65 & 0xFFFFFFFFFFFFLL;
          }

          if (!v67)
          {
LABEL_53:
            v68 = [v89 refId];
            [v41 setRefId_];
          }
        }

        v69 = [v41 dialog];
        v70 = v69;
        if (v69)
        {
          v11 = v41;
          v40 = v69;
          v71 = [v40 v38[427]];
          if (!v71)
          {
            goto LABEL_59;
          }

          v72 = v71;
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v73;

          v74 = HIBYTE(v8) & 0xF;
          if ((v8 & 0x2000000000000000) == 0)
          {
            v74 = a1 & 0xFFFFFFFFFFFFLL;
          }

          if (!v74)
          {
LABEL_59:
            UUID.init()();
            v75 = UUID.uuidString.getter();
            a1 = v76;
            (*v91)(v6, v94);
            v77 = MEMORY[0x1E12A1410](v75, a1);

            [v40 setAceId_];
          }

          if (v95)
          {
            v78 = [v40 refId];
            if (!v78)
            {
              goto LABEL_31;
            }

            v79 = v78;
            a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v8 = v80;

            v81 = HIBYTE(v8) & 0xF;
            if ((v8 & 0x2000000000000000) == 0)
            {
              v81 = a1 & 0xFFFFFFFFFFFFLL;
            }

            if (!v81)
            {
LABEL_31:
              v39 = [v89 refId];
              [v40 setRefId_];

              v40 = v39;
            }
          }

          v41 = v11;
        }

        ++v37;
        [v41 setDialog_];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v3 = *(v97 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (i == v37)
        {

          v8 = v84;
          a1 = v85;
          goto LABEL_81;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
        goto LABEL_75;
      }

LABEL_5:
      v90 = v11;
      v91 = v8;
      v85 = a1;
      v97 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = 0;
        a1 = i & 0xC000000000000001;
        v93 = i & 0xFFFFFFFFFFFFFF8;
        v15 = v3 + 1;
        while (1)
        {
          if (a1)
          {
            v17 = MEMORY[0x1E12A1FE0](v14, i);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }

            if (v14 >= *(v93 + 16))
            {
              goto LABEL_71;
            }

            v17 = *(i + 8 * v14 + 32);
          }

          v3 = v17;
          v18 = [v17 aceId];
          if (!v18)
          {
            goto LABEL_18;
          }

          v19 = v18;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (!v22)
          {
LABEL_18:
            UUID.init()();
            v23 = UUID.uuidString.getter();
            v25 = v24;
            (*v15)(v6, v94);
            v26 = MEMORY[0x1E12A1410](v23, v25);

            [v3 setAceId_];
          }

          if (v95)
          {
            v27 = [v3 refId];
            if (!v27)
            {
              goto LABEL_7;
            }

            v28 = v27;
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v11 = v30;

            v31 = HIBYTE(v11) & 0xF;
            if ((v11 & 0x2000000000000000) == 0)
            {
              v31 = v29 & 0xFFFFFFFFFFFFLL;
            }

            if (!v31)
            {
LABEL_7:
              v16 = [v92 refId];
              [v3 setRefId_];
            }
          }

          ++v14;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v97 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v13 == v14)
          {

            a1 = v85;
            v8 = v91;
            goto LABEL_76;
          }
        }
      }

      __break(1u);
LABEL_79:
      ;
    }

LABEL_81:
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v8 setViews_];
LABEL_83:
}

void AceServiceInvokerImpl.closeServerRequestIfRequired(givenCommand:)()
{
  v1 = v0;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ace);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Checking to see if server request should be closed..", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  if (one-time initialization token for userFacingResponseCommandList != -1)
  {
    swift_once();
  }

  v6 = static AceServiceInvokerImpl.userFacingResponseCommandList;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCmMd, &_sSo13SABaseCommandCmMR);
  LODWORD(v6) = [v6 containsObject_];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = *(v1 + 168);
    os_unfair_lock_lock((v7 + 20));
    closure #1 in AceServiceInvokerImpl.closeServerRequest()partial apply((v7 + 16));
    os_unfair_lock_unlock((v7 + 20));
  }
}

id ConversationOutputSubmitter.extractAllCommands(inside:results:)(unint64_t a1, void *a2)
{
  v4 = swift_unknownObjectRetain();
  MEMORY[0x1E12A1680](v4);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = [a1 callbacks];
    if (!result)
    {
      return result;
    }

    v6 = result;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAResultCallback, 0x1E69C79C8);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_30:
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_30;
      }
    }

    v8 = 0;
    v21 = a1;
    v22 = a1 & 0xC000000000000001;
    v18 = a1 + 32;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = v7;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x1E12A1FE0](v8, a1);
      }

      else
      {
        if (v8 >= *(v19 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v18 + 8 * v8);
      }

      v10 = v9;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v12 = [v9 commands];
      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        v15 = __CocoaSet.count.getter();
        if (v15)
        {
LABEL_16:
          if (v15 < 1)
          {
            goto LABEL_26;
          }

          for (i = 0; i != v15; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x1E12A1FE0](i, v14);
            }

            else
            {
              v17 = *(v14 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            ConversationOutputSubmitter.extractAllCommands(inside:results:)(v17, a2);
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_16;
        }
      }

      v7 = v20;
      a1 = v21;
LABEL_7:

      if (v8 == v7)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }
}

void *ConversationOutputSubmitter.muxContextMessage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void specialized PersonaUniqueIdentifierAccepting.accept(siriSharedUserIdentifier:muxContextMessage:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Unable to attach personaUniqueIdentifier on this platform.", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t destroy for InvocationStateImpl(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 24);

  v6 = a2[6];
  v7 = type metadata accessor for InputOrigin();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a2[7];
  v9 = type metadata accessor for InteractionType();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
  v10 = a2[8];
  v11 = type metadata accessor for AudioSource();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1 + v10, 1, v11))
  {
    (*(v12 + 8))(a1 + v10, v11);
  }

  v13 = a2[9];
  v14 = type metadata accessor for AudioDestination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(a1 + v13, 1, v14))
  {
    (*(v15 + 8))(a1 + v13, v14);
  }

  v16 = a2[10];
  v17 = type metadata accessor for ResponseMode();
  (*(*(v17 - 8) + 8))(a1 + v16, v17);
  v18 = a2[11];
  v19 = type metadata accessor for MultiUserContext();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(a1 + v18, 1, v19))
  {
    (*(v20 + 8))(a1 + v18, v19);
  }

  v21 = *(a1 + a2[12] + 8);

  v22 = a2[18];
  v23 = type metadata accessor for Locale();
  (*(*(v23 - 8) + 8))(a1 + v22, v23);
  v24 = a2[19];
  v25 = type metadata accessor for SiriVoiceGender();
  (*(*(v25 - 8) + 8))(a1 + v24, v25);

  v26 = *(a1 + a2[21] + 8);

  v27 = *(a1 + a2[22] + 8);

  v28 = *(a1 + a2[23] + 8);

  v29 = a2[24];
  v30 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(a1 + v29, 1, v30))
  {
    (*(v31 + 8))(a1 + v29, v30);
  }

  v32 = a2[25];
  v33 = type metadata accessor for BargeInContext();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(a1 + v32, 1, v33))
  {
    (*(v34 + 8))(a1 + v32, v33);
  }

  v35 = a2[26];
  v36 = type metadata accessor for Restrictions();
  (*(*(v36 - 8) + 8))(a1 + v35, v36);
  v37 = a2[27];
  v38 = type metadata accessor for HomeInfo();
  v39 = *(v38 - 8);
  if (!(*(v39 + 48))(a1 + v37, 1, v38))
  {
    (*(v39 + 8))(a1 + v37, v38);
  }

  v40 = *(a1 + a2[28] + 8);

  v41 = *(a1 + a2[29]);
}

uint64_t ConversationTurnStateImpl.setSiriKitFlowGlobals()()
{
  v8 = *v0;
  v9 = &protocol witness table for ConversationTurnStateImpl;
  *&v7 = v0;
  type metadata accessor for ConversationTurnStateImpl.CommandHandler();
  v1 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v7, v1 + 16);
  v2 = *(*(*(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker) + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v3 = type metadata accessor for PeerInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v8 = v3;
  v9 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, type metadata accessor for PeerInfoProvider);
  *&v7 = v4;
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type ConversationTurnStateImpl.CommandHandler and conformance ConversationTurnStateImpl.CommandHandler, type metadata accessor for ConversationTurnStateImpl.CommandHandler);

  v5 = v2;
  SiriKitCommandHandler.notifyBegin(peerInfo:)();

  return outlined destroy of ReferenceResolutionClientProtocol?(&v7, &_s11SiriKitFlow17PeerInfoProviding_pSgMd, &_s11SiriKitFlow17PeerInfoProviding_pSgMR);
}

uint64_t PeerInfoProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t InvocationScopedSiriKitEventSender.sendAsync(_:)()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](InvocationScopedSiriKitEventSender.sendAsync(_:), 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v10 = v0[8];
  v11 = v0[7];
  v12 = v0[6];
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v2(v5, v7);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v2(v6, v7);

  v8 = v0[1];

  return v8();
}

{
  v40 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = static Log.executor;
  v0[13] = static Log.executor;
  v9 = v8;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  SiriKitEvent.overrides.getter();
  v10 = *(v7 + 16);
  outlined init with copy of SiriKitEventOverrides?(v2, v3);
  v11 = (*(v5 + 48))(v3, 1, v4);
  v12 = v0[8];
  if (v11 == 1)
  {
    outlined destroy of SiriKitEventOverrides?(v0[8]);
  }

  else
  {
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[5];
    (*(v15 + 32))(v13, v0[7], v14);

    v16 = SiriKitEventContext.withOverrides(_:)();
    (*(v15 + 8))(v13, v14);
    outlined destroy of SiriKitEventOverrides?(v12);

    v10 = v16;
  }

  v0[14] = v10;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v17 = v0[2];
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.instrumentation);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[2];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136315394;
    v24 = SiriKitEvent.debugDescription.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v39);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;

    v27 = SiriKitEventContext.description.getter();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v39);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v19, v20, "Dispatching async event to sinks: %s with context: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];
  v34 = v0[2];
  type metadata accessor for IntentLoggingEventSink();
  swift_initStaticObject();
  specialized IntentLoggingEventSink.receive(_:_:)();
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v35 = *(v32 + 8);
  v0[15] = v35;
  v0[16] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v31, v33);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v36 = swift_task_alloc();
  v0[17] = v36;
  *v36 = v0;
  v36[1] = InvocationScopedSiriKitEventSender.sendAsync(_:);
  v37 = v0[2];

  return TaskLoggingEventSink.receiveAsync(_:_:)(v37, v10);
}

unint64_t lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions()
{
  result = lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions;
  if (!lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions)
  {
    type metadata accessor for DeviceRestrictions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions);
  }

  return result;
}

uint64_t protocol witness for DeviceState.interactionType.getter in conformance DefaultDeviceState@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t protocol witness for DeviceState.isLockedWithPasscode.getter in conformance DefaultDeviceState()
{
  v1 = *v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure;
  v2 = *(v1 + 8);
  return (*v1)() & 1;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for OS_dispatch_source()
{
  result = lazy cache variable for type metadata for OS_dispatch_source;
  if (!lazy cache variable for type metadata for OS_dispatch_source)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_source);
  }

  return result;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

char *specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t *a14, uint64_t a15, void *a16, char *a17)
{
  v161 = a8;
  v190 = a7;
  object = a16;
  v177 = a15;
  v201 = a14;
  inited = a12;
  v189 = a9;
  v171 = *a17;
  v175 = type metadata accessor for DeviceRestrictions();
  v174 = *(v175 - 8);
  v23 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v172 = &v152 - v26;
  v188 = type metadata accessor for Restrictions();
  v187 = *(v188 - 8);
  v27 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v185 = &v152 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v184 = &v152 - v34;
  v200 = type metadata accessor for SiriVoiceGender();
  v183 = *(v200 - 8);
  v35 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Locale();
  v182 = *(v199 - 8);
  v37 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MultiUserState();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v196 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DeviceIdiom();
  v180 = *(v181 - 8);
  v42 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v194 = &v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for InteractionType();
  v179 = *(v195 - 8);
  v44 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for InputOrigin();
  v178 = *(v193 - 8);
  v46 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v152 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for InvocationStateImpl();
  v49 = *(*(v48 - 1) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v160 = (&v152 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210[3] = v51;
  v210[4] = &protocol witness table for InvocationStateImpl;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v210);
  outlined init with take of InvocationStateImpl(a10, boxed_opaque_existential_0);
  v53 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  v54 = type metadata accessor for SessionConfiguration();
  (*(*(v54 - 8) + 56))(&a17[v53], 1, 1, v54);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge] = a1;
  v167 = a2;
  *(a17 + 2) = a2;
  *(a17 + 3) = a3;
  v168 = a4;
  *(a17 + 4) = a4;
  *(a17 + 5) = a5;
  v176 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v169 = a5;

  v166 = a3;

  outlined assign with copy of SessionConfiguration?(v190, &a17[v53]);
  swift_endAccess();
  v55 = a1;
  v56 = object;
  outlined init with copy of ReferenceResolutionClientProtocol?(v189, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v57 = type metadata accessor for SharedContextServiceImpl();
  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  v59 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService];
  v59[3] = v57;
  v59[4] = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, type metadata accessor for SharedContextServiceImpl);
  *v59 = v58;
  v60 = v177;
  v61 = inited;
  outlined init with copy of ReferenceResolutionClientProtocol(v210, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState]);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_requestContextData] = v61;
  v62 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData];
  *v62 = v60;
  v62[1] = v56;
  v63 = *(boxed_opaque_existential_0 + v48[20]);
  if (v63)
  {

    v64 = v61;
    outlined copy of Data?(v60, v56);
    v65 = [v63 runLocation];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v65 = v67;
      goto LABEL_6;
    }
  }

  else
  {

    v70 = v61;
    outlined copy of Data?(v60, v56);
    v65 = 0;
  }

  v69 = 0;
LABEL_6:
  v177 = a11;
  LODWORD(object) = a13;
  LODWORD(v163) = specialized static RunLocation.convert(aceRunLocation:)(v65, v69);

  v170 = v55;
  if (v63)
  {
    v71 = [v63 invocationDeviceAssistantId];
    if (v71)
    {
      v72 = v71;
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v78 = [v63 executionDeviceAssistantId];
    v76 = v61;
    if (v78)
    {
      v79 = v78;
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v80;
    }

    else
    {
      v162 = 0;
      v77 = 0;
    }
  }

  else
  {
    v76 = v61;
    v162 = 0;
    v77 = 0;
    v73 = 0;
    v75 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v201, &v207);
  type metadata accessor for AceServiceInvokerImpl();
  v81 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v82 = swift_allocObject();
  *(v82 + 20) = 0;
  *(v82 + 16) = 0;
  *(v81 + 152) = v82;
  type metadata accessor for SubmissionTaskRegistry();
  v83 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v84 = swift_allocObject();
  *(v84 + 24) = 0;
  *(v84 + 16) = MEMORY[0x1E69E7CD0];
  *(v83 + 16) = v84;
  *(v81 + 160) = v83;
  v85 = swift_allocObject();
  *(v85 + 20) = 0;
  *(v85 + 16) = 0;
  *(v81 + 168) = v85;
  *(v81 + 16) = v170;
  v86 = v168;
  *(v81 + 48) = v166;
  *(v81 + 56) = v86;
  v87 = v167;
  *(v81 + 32) = v76;
  *(v81 + 40) = v87;
  *(v81 + 24) = v163 & 1;
  *(v81 + 64) = v169;
  *(v81 + 72) = v73;
  v88 = v162;
  *(v81 + 80) = v75;
  *(v81 + 88) = v88;
  *(v81 + 96) = v77;
  *(v81 + 104) = object & 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v207, &v202, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v89 = v203;

  v90 = v76;
  if (v89)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v207, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v202, &v204);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v202, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v91 = type metadata accessor for ReferenceResolutionClient();
    v92 = ReferenceResolutionClient.__allocating_init()();
    v205 = v91;
    v206 = MEMORY[0x1E69D01B0];
    *&v204 = v92;
    outlined destroy of ReferenceResolutionClientProtocol?(&v207, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v204, v81 + 112);
  v93 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker;
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker] = v81;
  outlined init with copy of ReferenceResolutionClientProtocol?(v177, &v204, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  if (v205)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v204, &v207);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v210, &v207);
    v94 = v208;
    v95 = __swift_mutable_project_boxed_opaque_existential_1(&v207, v208);
    v170 = &v152;
    v96 = *(*(v94 - 8) + 64);
    v97 = MEMORY[0x1EEE9AC00](v95);
    v99 = &v152 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v100 + 16))(v99, v97);
    v101 = type metadata accessor for InvocationScopedSiriKitEventSender();
    v102 = swift_allocObject();
    v103 = v160;
    outlined init with take of InvocationStateImpl(v99, v160);
    v104 = v161;

    v106 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v105, v104, v103, v102);
    __swift_destroy_boxed_opaque_existential_1Tm(&v207);
    v208 = v101;
    v209 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender, type metadata accessor for InvocationScopedSiriKitEventSender);
    *&v207 = v106;
    if (v205)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v204, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v207, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender]);
  outlined init with copy of ReferenceResolutionClientProtocol(v201, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient]);
  static AuthenticationStateImpl.from(invocationState:)(v210, &v207);
  v107 = *(*(*&a17[v93] + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  type metadata accessor for PeerInfoProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v107;
  v108 = boxed_opaque_existential_0 + v48[6];
  v161 = *(v178 + 16);
  v161(v191, v108, v193);
  v109 = boxed_opaque_existential_0 + v48[7];
  v160 = *(v179 + 16);
  (v160)(v192, v109, v195);
  v170 = v107;
  if (v107 && (v110 = [v107 userInterfaceIdiom]) != 0)
  {
    v111 = v110;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }

  outlined init with copy of InvocationStateImpl(boxed_opaque_existential_0 + v48[11], v196, MEMORY[0x1E69CE578]);
  v112 = boxed_opaque_existential_0 + v48[18];
  v158 = *(v182 + 16);
  v158(v197, v112, v199);
  v113 = boxed_opaque_existential_0 + v48[19];
  v157 = *(v183 + 16);
  v157(v198, v113, v200);
  v114 = v48[14];
  v153 = *(boxed_opaque_existential_0 + v48[13]);
  v154 = *(boxed_opaque_existential_0 + v114);
  v155 = *(boxed_opaque_existential_0 + v48[15]);
  v156 = *(boxed_opaque_existential_0 + v48[17]);
  v115 = swift_allocObject();
  v116 = v171;
  v168 = v115;
  *(v115 + 16) = v90;
  *(v115 + 24) = v116;
  v117 = (boxed_opaque_existential_0 + v48[12]);
  v118 = v117[1];
  v169 = *v117;
  v119 = v48[24];
  v120 = (boxed_opaque_existential_0 + v48[23]);
  v121 = v120[1];
  v166 = *v120;
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v119, v184, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v48[25], v185, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v167 = v121;

  v122 = v90;
  v171 = v118;

  v123 = PeerInfoProvider.getPeerName()();
  inited = v123.value._countAndFlagsBits;
  object = v123.value._object;
  v124 = *&v122[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo];
  if (v124 && (v125 = [v124 identifier]) != 0)
  {
    v126 = v125;
    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v162 = v127;
  }

  else
  {
    v163 = 0;
    v162 = 0;
  }

  (*(v187 + 16))(v186, boxed_opaque_existential_0 + v48[26], v188);
  outlined init with copy of ReferenceResolutionClientProtocol(&v207, &v204);
  v159 = v122[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen];
  v128 = type metadata accessor for DefaultDeviceState();
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  v131 = swift_allocObject();
  v132 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v131 + v132) = MGGetSInt32Answer() == 7;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v133 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v131 + v133) = MGGetSInt32Answer() == 1;
  v134 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v131 + v134) = MGGetSInt32Answer() == 3;
  v135 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v131 + v135) = MGGetSInt32Answer() == 2;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v161((v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin), v191, v193);
  (v160)(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType, v192, v195);
  (*(v180 + 16))(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom, v194, v181);
  outlined init with copy of InvocationStateImpl(v196, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState, MEMORY[0x1E69CE578]);
  v158((v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale), v197, v199);
  v157((v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender), v198, v200);
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v153;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v154;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v155;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v156;
  v136 = v172;
  Restrictions.deviceRestrictions.getter();
  v137 = v173;
  static DeviceRestrictions.starkMode.getter();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610]);
  v138 = v175;
  LOBYTE(v135) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v139 = *(v174 + 8);
  v139(v137, v138);
  v139(v136, v138);
  if (v135)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v140 = 0;
    v141 = getEnumTag for AffinityScore;
  }

  else
  {
    v141 = partial apply for closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:);
    v140 = v168;
  }

  (*(v183 + 8))(v198, v200);
  (*(v182 + 8))(v197, v199);
  outlined destroy of InvocationStateImpl(v196, MEMORY[0x1E69CE578]);
  (*(v180 + 8))(v194, v181);
  (*(v179 + 8))(v192, v195);
  (*(v178 + 8))(v191, v193);
  v142 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v142 = v141;
  v142[1] = v140;
  v143 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v144 = v171;
  *v143 = v169;
  v143[1] = v144;
  v145 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v146 = v167;
  *v145 = v166;
  v145[1] = v146;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v184, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v185, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v147 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v148 = object;
  *v147 = inited;
  v147[1] = v148;
  (*(v187 + 32))(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands, v186, v188);
  v149 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v150 = v162;
  *v149 = v163;
  v149[1] = v150;
  outlined init with take of ReferenceResolutionClientProtocol(&v204, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v159;
  v205 = v128;
  v206 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type DefaultDeviceState and conformance DefaultDeviceState, type metadata accessor for DefaultDeviceState);

  *&v204 = v131;
  __swift_destroy_boxed_opaque_existential_1Tm(v201);
  outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v189, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v190, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v207);
  outlined init with take of ReferenceResolutionClientProtocol(&v204, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState]);
  __swift_destroy_boxed_opaque_existential_1Tm(v210);
  return a17;
}

{
  v161 = a8;
  v190 = a7;
  object = a16;
  v177 = a15;
  v201 = a14;
  inited = a12;
  v189 = a9;
  v171 = *a17;
  v175 = type metadata accessor for DeviceRestrictions();
  v174 = *(v175 - 8);
  v23 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v172 = &v152 - v26;
  v188 = type metadata accessor for Restrictions();
  v187 = *(v188 - 8);
  v27 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v185 = &v152 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v184 = &v152 - v34;
  v200 = type metadata accessor for SiriVoiceGender();
  v183 = *(v200 - 8);
  v35 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Locale();
  v182 = *(v199 - 8);
  v37 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MultiUserState();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v196 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DeviceIdiom();
  v180 = *(v181 - 8);
  v42 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v194 = &v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for InteractionType();
  v179 = *(v195 - 8);
  v44 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for InputOrigin();
  v178 = *(v193 - 8);
  v46 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v152 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for InvocationStateImpl();
  v49 = *(*(v48 - 1) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v160 = (&v152 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210[3] = v51;
  v210[4] = &protocol witness table for InvocationStateImpl;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v210);
  outlined init with take of InvocationStateImpl(a10, boxed_opaque_existential_0);
  v53 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  v54 = type metadata accessor for SessionConfiguration();
  (*(*(v54 - 8) + 56))(&a17[v53], 1, 1, v54);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge] = a1;
  v167 = a2;
  *(a17 + 2) = a2;
  *(a17 + 3) = a3;
  v168 = a4;
  *(a17 + 4) = a4;
  *(a17 + 5) = a5;
  v176 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v169 = a5;

  swift_unknownObjectRetain();
  v166 = a3;

  outlined assign with copy of SessionConfiguration?(v190, &a17[v53]);
  swift_endAccess();
  v55 = a1;
  v56 = object;
  outlined init with copy of ReferenceResolutionClientProtocol?(v189, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v57 = type metadata accessor for SharedContextServiceImpl();
  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  v59 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService];
  v59[3] = v57;
  v59[4] = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, type metadata accessor for SharedContextServiceImpl);
  *v59 = v58;
  v60 = v177;
  v61 = inited;
  outlined init with copy of ReferenceResolutionClientProtocol(v210, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState]);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_requestContextData] = v61;
  v62 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData];
  *v62 = v60;
  v62[1] = v56;
  v63 = *(boxed_opaque_existential_0 + v48[20]);
  if (v63)
  {
    swift_unknownObjectRetain();
    v64 = v61;
    outlined copy of Data?(v60, v56);
    v65 = [v63 runLocation];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v65 = v67;
      goto LABEL_6;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v70 = v61;
    outlined copy of Data?(v60, v56);
    v65 = 0;
  }

  v69 = 0;
LABEL_6:
  v177 = a11;
  LODWORD(object) = a13;
  LODWORD(v163) = specialized static RunLocation.convert(aceRunLocation:)(v65, v69);

  v170 = v55;
  if (v63)
  {
    v71 = [v63 invocationDeviceAssistantId];
    if (v71)
    {
      v72 = v71;
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v78 = [v63 executionDeviceAssistantId];
    v76 = v61;
    if (v78)
    {
      v79 = v78;
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v80;
    }

    else
    {
      v162 = 0;
      v77 = 0;
    }
  }

  else
  {
    v76 = v61;
    v162 = 0;
    v77 = 0;
    v73 = 0;
    v75 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v201, &v207);
  type metadata accessor for AceServiceInvokerImpl();
  v81 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v82 = swift_allocObject();
  *(v82 + 20) = 0;
  *(v82 + 16) = 0;
  *(v81 + 152) = v82;
  type metadata accessor for SubmissionTaskRegistry();
  v83 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v84 = swift_allocObject();
  *(v84 + 24) = 0;
  *(v84 + 16) = MEMORY[0x1E69E7CD0];
  *(v83 + 16) = v84;
  *(v81 + 160) = v83;
  v85 = swift_allocObject();
  *(v85 + 20) = 0;
  *(v85 + 16) = 0;
  *(v81 + 168) = v85;
  *(v81 + 16) = v170;
  v86 = v168;
  *(v81 + 48) = v166;
  *(v81 + 56) = v86;
  v87 = v167;
  *(v81 + 32) = v76;
  *(v81 + 40) = v87;
  *(v81 + 24) = v163 & 1;
  *(v81 + 64) = v169;
  *(v81 + 72) = v73;
  v88 = v162;
  *(v81 + 80) = v75;
  *(v81 + 88) = v88;
  *(v81 + 96) = v77;
  *(v81 + 104) = object & 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v207, &v202, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v89 = v203;
  swift_unknownObjectRetain();
  v90 = v76;
  if (v89)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v207, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v202, &v204);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v202, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v91 = type metadata accessor for ReferenceResolutionClient();
    v92 = ReferenceResolutionClient.__allocating_init()();
    v205 = v91;
    v206 = MEMORY[0x1E69D01B0];
    *&v204 = v92;
    outlined destroy of ReferenceResolutionClientProtocol?(&v207, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v204, v81 + 112);
  v93 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker;
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker] = v81;
  outlined init with copy of ReferenceResolutionClientProtocol?(v177, &v204, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  if (v205)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v204, &v207);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v210, &v207);
    v94 = v208;
    v95 = __swift_mutable_project_boxed_opaque_existential_1(&v207, v208);
    v170 = &v152;
    v96 = *(*(v94 - 8) + 64);
    v97 = MEMORY[0x1EEE9AC00](v95);
    v99 = &v152 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v100 + 16))(v99, v97);
    v101 = type metadata accessor for InvocationScopedSiriKitEventSender();
    v102 = swift_allocObject();
    v103 = v160;
    outlined init with take of InvocationStateImpl(v99, v160);
    v104 = v161;

    v106 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v105, v104, v103, v102);
    __swift_destroy_boxed_opaque_existential_1Tm(&v207);
    v208 = v101;
    v209 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender, type metadata accessor for InvocationScopedSiriKitEventSender);
    *&v207 = v106;
    if (v205)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v204, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v207, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender]);
  outlined init with copy of ReferenceResolutionClientProtocol(v201, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient]);
  static AuthenticationStateImpl.from(invocationState:)(v210, &v207);
  v107 = *(*(*&a17[v93] + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  type metadata accessor for PeerInfoProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v107;
  v108 = boxed_opaque_existential_0 + v48[6];
  v161 = *(v178 + 16);
  v161(v191, v108, v193);
  v109 = boxed_opaque_existential_0 + v48[7];
  v160 = *(v179 + 16);
  (v160)(v192, v109, v195);
  v170 = v107;
  if (v107 && (v110 = [v107 userInterfaceIdiom]) != 0)
  {
    v111 = v110;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }

  outlined init with copy of MultiUserState(boxed_opaque_existential_0 + v48[11], v196);
  v112 = boxed_opaque_existential_0 + v48[18];
  v158 = *(v182 + 16);
  v158(v197, v112, v199);
  v113 = boxed_opaque_existential_0 + v48[19];
  v157 = *(v183 + 16);
  v157(v198, v113, v200);
  v114 = v48[14];
  v153 = *(boxed_opaque_existential_0 + v48[13]);
  v154 = *(boxed_opaque_existential_0 + v114);
  v155 = *(boxed_opaque_existential_0 + v48[15]);
  v156 = *(boxed_opaque_existential_0 + v48[17]);
  v115 = swift_allocObject();
  v116 = v171;
  v168 = v115;
  *(v115 + 16) = v90;
  *(v115 + 24) = v116;
  v117 = (boxed_opaque_existential_0 + v48[12]);
  v118 = v117[1];
  v169 = *v117;
  v119 = v48[24];
  v120 = (boxed_opaque_existential_0 + v48[23]);
  v121 = v120[1];
  v166 = *v120;
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v119, v184, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v48[25], v185, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v167 = v121;

  v122 = v90;
  v171 = v118;

  v123 = PeerInfoProvider.getPeerName()();
  inited = v123.value._countAndFlagsBits;
  object = v123.value._object;
  v124 = *&v122[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo];
  if (v124 && (v125 = [v124 identifier]) != 0)
  {
    v126 = v125;
    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v162 = v127;
  }

  else
  {
    v163 = 0;
    v162 = 0;
  }

  (*(v187 + 16))(v186, boxed_opaque_existential_0 + v48[26], v188);
  outlined init with copy of ReferenceResolutionClientProtocol(&v207, &v204);
  v159 = v122[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen];
  v128 = type metadata accessor for DefaultDeviceState();
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  v131 = swift_allocObject();
  v132 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v131 + v132) = MGGetSInt32Answer() == 7;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v133 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v131 + v133) = MGGetSInt32Answer() == 1;
  v134 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v131 + v134) = MGGetSInt32Answer() == 3;
  v135 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v131 + v135) = MGGetSInt32Answer() == 2;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v161((v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin), v191, v193);
  (v160)(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType, v192, v195);
  (*(v180 + 16))(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom, v194, v181);
  outlined init with copy of MultiUserState(v196, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v158((v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale), v197, v199);
  v157((v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender), v198, v200);
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v153;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v154;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v155;
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v156;
  v136 = v172;
  Restrictions.deviceRestrictions.getter();
  v137 = v173;
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610]);
  v138 = v175;
  LOBYTE(v135) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v139 = *(v174 + 8);
  v139(v137, v138);
  v139(v136, v138);
  if (v135)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v140 = 0;
    v141 = getEnumTag for AffinityScore;
  }

  else
  {
    v141 = closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)partial apply;
    v140 = v168;
  }

  (*(v183 + 8))(v198, v200);
  (*(v182 + 8))(v197, v199);
  outlined destroy of MultiUserState(v196);
  (*(v180 + 8))(v194, v181);
  (*(v179 + 8))(v192, v195);
  (*(v178 + 8))(v191, v193);
  v142 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v142 = v141;
  v142[1] = v140;
  v143 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v144 = v171;
  *v143 = v169;
  v143[1] = v144;
  v145 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v146 = v167;
  *v145 = v166;
  v145[1] = v146;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v184, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v185, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v147 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v148 = object;
  *v147 = inited;
  v147[1] = v148;
  (*(v187 + 32))(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands, v186, v188);
  v149 = (v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v150 = v162;
  *v149 = v163;
  v149[1] = v150;
  outlined init with take of ReferenceResolutionClientProtocol(&v204, v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v131 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v159;
  v205 = v128;
  v206 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DefaultDeviceState and conformance DefaultDeviceState, type metadata accessor for DefaultDeviceState);

  *&v204 = v131;
  __swift_destroy_boxed_opaque_existential_1Tm(v201);
  outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v189, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v190, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v207);
  outlined init with take of ReferenceResolutionClientProtocol(&v204, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState]);
  __swift_destroy_boxed_opaque_existential_1Tm(v210);
  return a17;
}

uint64_t sub_1DC6C135C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined init with take of InvocationStateImpl(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationStateImpl();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized static RunLocation.convert(aceRunLocation:)(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.info.getter();
    os_log(_:dso:log:type:_:)();
    return 0;
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLocation.init(rawValue:), v4);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DCA66060;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v6 = 1;
LABEL_9:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DCA66060;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  os_log(_:dso:log:type:_:)();

  return v6;
}

uint64_t specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiriKitEventContext();
  v8 = swift_allocObject();
  v26[3] = type metadata accessor for AceServiceInvokerImpl();
  v26[4] = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl);
  v26[0] = a1;
  v8[2] = 0;
  v8[3] = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v26, (v8 + 4));
  v8[9] = a2;
  v9 = type metadata accessor for InvocationStateImpl();
  v10 = (a3 + *(v9 + 84));
  v11 = v10[1];
  v8[10] = *v10;
  v8[11] = v11;
  v12 = (a3 + *(v9 + 88));
  v14 = *v12;
  v13 = v12[1];

  outlined destroy of InvocationStateImpl(a3, type metadata accessor for InvocationStateImpl);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v8[12] = v14;
  v8[13] = v13;
  *(a4 + 16) = v8;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.instrumentation);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315138;
    v20 = *(a4 + 16);

    v21 = SiriKitEventContext.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v26);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1DC659000, v16, v17, "InternalSiriKitEventSender ready with: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  return a4;
}

char *initializeBufferWithCopyOfBuffer for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = type metadata accessor for InputOrigin();
    v11 = *(*(v10 - 8) + 16);

    v11(&v4[v9], &a2[v9], v10);
    v12 = a3[7];
    v13 = type metadata accessor for InteractionType();
    (*(*(v13 - 8) + 16))(&v4[v12], &a2[v12], v13);
    v14 = a3[8];
    v15 = type metadata accessor for AudioSource();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(&a2[v14], 1, v15))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      memcpy(&v4[v14], &a2[v14], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v4[v14], &a2[v14], v15);
      (*(v16 + 56))(&v4[v14], 0, 1, v15);
    }

    v19 = a3[9];
    v20 = type metadata accessor for AudioDestination();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(&a2[v19], 1, v20))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
      memcpy(&v4[v19], &a2[v19], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(&v4[v19], &a2[v19], v20);
      (*(v21 + 56))(&v4[v19], 0, 1, v20);
    }

    v23 = a3[10];
    v24 = type metadata accessor for ResponseMode();
    (*(*(v24 - 8) + 16))(&v4[v23], &a2[v23], v24);
    v25 = a3[11];
    v26 = type metadata accessor for MultiUserContext();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(&a2[v25], 1, v26))
    {
      v28 = type metadata accessor for MultiUserState();
      memcpy(&v4[v25], &a2[v25], *(*(v28 - 8) + 64));
    }

    else
    {
      (*(v27 + 16))(&v4[v25], &a2[v25], v26);
      (*(v27 + 56))(&v4[v25], 0, 1, v26);
    }

    v29 = a3[12];
    v30 = a3[13];
    v31 = &v4[v29];
    v32 = &a2[v29];
    v33 = *(v32 + 1);
    *v31 = *v32;
    *(v31 + 1) = v33;
    v4[v30] = a2[v30];
    v34 = a3[15];
    v4[a3[14]] = a2[a3[14]];
    v4[v34] = a2[v34];
    v35 = a3[17];
    v4[a3[16]] = a2[a3[16]];
    v4[v35] = a2[v35];
    v36 = a3[18];
    v37 = type metadata accessor for Locale();
    v38 = *(*(v37 - 8) + 16);

    v38(&v4[v36], &a2[v36], v37);
    v39 = a3[19];
    v40 = type metadata accessor for SiriVoiceGender();
    (*(*(v40 - 8) + 16))(&v4[v39], &a2[v39], v40);
    v41 = a3[20];
    v42 = a3[21];
    v78 = *&a2[v41];
    *&v4[v41] = v78;
    v43 = &v4[v42];
    v44 = &a2[v42];
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = a3[22];
    v47 = a3[23];
    v48 = &v4[v46];
    v49 = &a2[v46];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    v51 = &v4[v47];
    v52 = &a2[v47];
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    v54 = a3[24];
    v55 = type metadata accessor for PersonalDomainsAuthenticationMode();
    v56 = *(v55 - 8);
    v77 = *(v56 + 48);
    v57 = v78;

    if (v77(&a2[v54], 1, v55))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
      memcpy(&v4[v54], &a2[v54], *(*(v58 - 8) + 64));
    }

    else
    {
      (*(v56 + 16))(&v4[v54], &a2[v54], v55);
      (*(v56 + 56))(&v4[v54], 0, 1, v55);
    }

    v59 = a3[25];
    v60 = type metadata accessor for BargeInContext();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(&a2[v59], 1, v60))
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
      memcpy(&v4[v59], &a2[v59], *(*(v62 - 8) + 64));
    }

    else
    {
      (*(v61 + 16))(&v4[v59], &a2[v59], v60);
      (*(v61 + 56))(&v4[v59], 0, 1, v60);
    }

    v63 = a3[26];
    v64 = type metadata accessor for Restrictions();
    (*(*(v64 - 8) + 16))(&v4[v63], &a2[v63], v64);
    v65 = a3[27];
    v66 = type metadata accessor for HomeInfo();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(&a2[v65], 1, v66))
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
      memcpy(&v4[v65], &a2[v65], *(*(v68 - 8) + 64));
    }

    else
    {
      (*(v67 + 16))(&v4[v65], &a2[v65], v66);
      (*(v67 + 56))(&v4[v65], 0, 1, v66);
    }

    v69 = a3[28];
    v70 = a3[29];
    v71 = &v4[v69];
    v72 = &a2[v69];
    v73 = *(v72 + 1);
    *v71 = *v72;
    *(v71 + 1) = v73;
    *&v4[v70] = *&a2[v70];
    v74 = a3[31];
    *&v4[a3[30]] = *&a2[a3[30]];
    v4[v74] = a2[v74];
    v75 = a3[33];
    v4[a3[32]] = a2[a3[32]];
    v4[v75] = a2[v75];
  }

  return v4;
}

uint64_t outlined destroy of InvocationStateImpl(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t static AuthenticationStateImpl.from(invocationState:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for DeviceRestrictions();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v12 = a1[3];
  v11 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v11 + 184);
  v29 = v13;
  v30 = v14;
  v14(v12, v11);
  static DeviceRestrictions.unauthenticatedByWatchProximity.getter();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v31 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v10, v3);
  v30(v12, v11);
  static DeviceRestrictions.unauthenticatedByHeadphonesState.getter();
  v16 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15(v7, v3);
  v15(v10, v3);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v31;
  if (v20)
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = (v21 & 1) == 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "Is watch authenticated? %{BOOL}d", v22, 8u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    v26 = v16 ^ 1;
    *(v25 + 4) = (v16 ^ 1) & 1;
    _os_log_impl(&dword_1DC659000, v23, v24, "Is headphones authenticated? %{BOOL}d", v25, 8u);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  else
  {

    v26 = v16 ^ 1;
  }

  v27 = v32;
  *(v32 + 24) = &type metadata for AuthenticationStateImpl;
  result = lazy protocol witness table accessor for type AuthenticationStateImpl and conformance AuthenticationStateImpl();
  *(v27 + 32) = result;
  *v27 = (v21 & 1) == 0;
  *(v27 + 1) = v26 & 1;
  return result;
}

Swift::String_optional __swiftcall PeerInfoProvider.getPeerName()()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_8;
  }

  v1 = [v1 name];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v1 = 0;
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v1 = v3;
LABEL_9:
  result.value._object = v6;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for DefaultDeviceState()
{
  result = type metadata singleton initialization cache for DefaultDeviceState;
  if (!type metadata singleton initialization cache for DefaultDeviceState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthenticationStateImpl and conformance AuthenticationStateImpl()
{
  result = lazy protocol witness table cache variable for type AuthenticationStateImpl and conformance AuthenticationStateImpl;
  if (!lazy protocol witness table cache variable for type AuthenticationStateImpl and conformance AuthenticationStateImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationStateImpl and conformance AuthenticationStateImpl);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for SiriKitCommandHandler.deviceState.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t protocol witness for SiriKitCommandHandler.aceServiceInvoker.getter in conformance ConversationTurnStateImpl.CommandHandler@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v5 = (*(v4 + 64))(v3, v4);
  a1[3] = type metadata accessor for AceServiceInvokerImpl();
  result = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t protocol witness for SiriKitCommandHandler.sharedContextService.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t protocol witness for SiriKitCommandHandler.eventSender.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t protocol witness for SiriKitCommandHandler.flowContextPublisher.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  v3 = (*(v2 + 64))(v1, v2);
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl);
  return v3;
}

uint64_t ConversationTurnStateImpl.CommandHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ConversationTurnStateImpl.__deallocating_deinit()
{
  v0 = *ConversationTurnStateImpl.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ConversationTurnStateImpl.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender));
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState));

  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData), *(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData + 8));
  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient));
  return v0;
}

uint64_t DefaultDeviceState.__deallocating_deinit()
{
  DefaultDeviceState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of MultiUserState(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PeerInfoProvider.getDeviceIdiom()()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = [v1 userInterfaceIdiom]) != 0)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }
}

uint64_t TaskLoggingEventSink.SiriKitEventMetricsState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t DefaultDeviceState.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin;
  v2 = type metadata accessor for InputOrigin();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType;
  v4 = type metadata accessor for InteractionType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of MultiUserState(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v5 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale;
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender;
  v8 = type metadata accessor for SiriVoiceGender();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom;
  v10 = type metadata accessor for DeviceIdiom();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID + 8);

  v12 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode + 8);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v13 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId + 8);

  v14 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v15 = type metadata accessor for Restrictions();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState));
  v16 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName + 8);

  v17 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure + 8);

  return v0;
}

uint64_t protocol witness for SiriKitEventSending.sendAsync(_:) in conformance InvocationScopedSiriKitEventSender(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return InvocationScopedSiriKitEventSender.sendAsync(_:)(a1);
}

uint64_t InvocationScopedSiriKitEventSender.sendAsync(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SiriKitEventOverrides();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InvocationScopedSiriKitEventSender.sendAsync(_:), 0, 0);
}

uint64_t static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider(), 0, 0);
}

{
  v1 = v0[2];
  type metadata accessor for SiriSuggestionsBrokerProvider();
  v0[3] = static SiriSuggestionsBrokerProvider.instance.getter();
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider(&lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider, MEMORY[0x1E69CFA60]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider(), v4, v3);
}

{
  v2 = v0[3];
  v1 = v0[4];
  dispatch thunk of SiriSuggestionsBrokerProvider.initialize(initialize:postInit:)();

  v3 = v0[1];

  return v3();
}

uint64_t lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:);
  }

  else
  {
    v3 = closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)()
{
  return partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR, specialized closure #2 in ManagedContinuation.updateState(continuation:result:));
}

{
  return partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR, specialized closure #2 in ManagedContinuation.updateState(continuation:result:));
}

{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(v0 + v2, v3);
}

uint64_t specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

{
  v2 = *a2;
  if (*(a2 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

{
  v4 = *a2;
  if (*(a2 + 16))
  {
    v2 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v5 = *(a2 + 8);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void destroy for CamBridgeImpl.CamState(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  switch(v2)
  {
    case 2u:
      v4 = *a1;

      break;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    case 0u:
      v3 = *a1;

      break;
  }
}

uint64_t assignWithCopy for CamBridgeImpl.CamState(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 41);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      case 0u:
        v5 = *a1;

        break;
    }

    v6 = *(a2 + 41);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      *(a1 + 41) = 2;
    }

    else if (v6 == 1)
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 41) = 1;
    }

    else if (v6)
    {
      v10 = *a2;
      v11 = a2[1];
      *(a1 + 26) = *(a2 + 26);
      *a1 = v10;
      *(a1 + 16) = v11;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  return a1;
}

uint64_t RealCamWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void CamBridgeImpl.camState.didset()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v10);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, oslog, v3, "CamBridge: camState set to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {
  }
}

void CamBridgeImpl.caarState.didset()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    outlined init with copy of CamBridgeImpl.CaarState((v1 + 192), v10);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, oslog, v3, "CamBridge: caarState set to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t getEnumTag for CamBridgeImpl.CaarState(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t SharedFlowPluginConnection.__deallocating_deinit()
{
  SharedFlowPluginConnection.deinit();

  return swift_deallocClassInstance();
}

void *SharedFlowPluginConnection.deinit()
{
  v1 = v0[10];
  v2 = *(**(v0[9] + 32) + 128);

  v2(v1);

  v3 = v0[3];

  v4 = v0[5];

  v5 = v0[6];
  swift_unknownObjectRelease();
  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[11];

  return v0;
}

uint64_t RemoteConversationService.__deallocating_deinit()
{
  RemoteConversationService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v9 = v8;
  v110 = a8;
  v107 = a5;
  v112 = a2;
  v15 = type metadata accessor for InvocationStateImpl();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v99 - v19;
  v21 = MEMORY[0x1E69E7CC8];
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks) = MEMORY[0x1E69E7CC8];
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_needsASRReveal) = v21;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_topNlParse) = v21;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnInput) = v21;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_nlResponseCode) = v21;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem) = v21;
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(a1, v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData, type metadata accessor for RemoteConversationTurnData);
  v22 = (v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge);
  *v22 = a3;
  v22[1] = a4;
  v23 = type metadata accessor for RemoteConversationTurnData(0);
  v24 = *(a1 + *(v23 + 48));
  v114 = a7;
  v111 = v20;
  v109 = a6;
  if (v24)
  {
    ObjectType = swift_getObjectType();
    v26 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a4);
    v27 = a1[1];
    v108 = *a1;
    v113 = v27;
    v28 = *&v24[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8];
    if (v28)
    {
      v103 = *&v24[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
      v104 = v28;
    }

    else
    {
      v43 = a1[3];
      v103 = a1[2];
      v104 = v43;
    }

    v105 = *(a1 + *(v23 + 32));
    v44 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution;
    v45 = *&v24[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution];
    if (v45)
    {

      swift_unknownObjectRetain();
      v46 = v24;

      v47 = [v45 runLocation];
      if (v47)
      {
        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v47 = v49;
        goto LABEL_12;
      }
    }

    else
    {

      swift_unknownObjectRetain();
      v52 = v24;

      v47 = 0;
    }

    v51 = 0;
LABEL_12:
    v102 = specialized static RunLocation.convert(aceRunLocation:)(v47, v51);

    v53 = *&v24[v44];
    v101 = a1;
    if (!v53)
    {
      v60 = 0;
      v61 = 0;
      v100 = 0;
      v62 = 0;
LABEL_22:
      outlined init with copy of ReferenceResolutionClientProtocol(v114, &v122);
      type metadata accessor for AceServiceInvokerImpl();
      v34 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
      v66 = swift_allocObject();
      *(v66 + 20) = 0;
      *(v66 + 16) = 0;
      *(v34 + 152) = v66;
      type metadata accessor for SubmissionTaskRegistry();
      v67 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
      v68 = swift_allocObject();
      *(v68 + 24) = 0;
      *(v68 + 16) = MEMORY[0x1E69E7CD0];
      *(v67 + 16) = v68;
      *(v34 + 160) = v67;
      v69 = swift_allocObject();
      *(v69 + 20) = 0;
      *(v69 + 16) = 0;
      *(v34 + 168) = v69;
      *(v34 + 16) = v26;
      v70 = v103;
      *(v34 + 48) = v113;
      *(v34 + 56) = v70;
      v71 = v108;
      v72 = v105;
      *(v34 + 32) = v105;
      *(v34 + 40) = v71;
      *(v34 + 24) = v102 & 1;
      *(v34 + 64) = v104;
      *(v34 + 72) = v61;
      v73 = v100;
      *(v34 + 80) = v60;
      *(v34 + 88) = v73;
      *(v34 + 96) = v62;
      *(v34 + 104) = v109 & 1;
      outlined init with copy of ReferenceResolutionClientProtocol?(&v122, &v117, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
      v74 = v118;

      v75 = v72;
      if (v74)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
        outlined init with take of ReferenceResolutionClientProtocol(&v117, &v119);
      }

      else
      {
        swift_unknownObjectRetain();
        outlined destroy of ReferenceResolutionClientProtocol?(&v117, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
        v76 = type metadata accessor for ReferenceResolutionClient();
        v77 = ReferenceResolutionClient.__allocating_init()();
        v120 = v76;
        v121 = MEMORY[0x1E69D01B0];
        swift_unknownObjectRelease();
        *&v119 = v77;
        outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
      }

      outlined init with take of ReferenceResolutionClientProtocol(&v119, v34 + 112);
      a1 = v101;
      v78 = v75;
      v79 = v111;
      InvocationStateImpl.init(proxiedRequestContext:localRequestContextData:executionRequestId:)(v24, v78, v108, v113, v111);
      goto LABEL_28;
    }

    v54 = [v53 invocationDeviceAssistantId];
    if (v54)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = *&v24[v44];
      if (!v59)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v56 = 0;
      v58 = 0;
      v59 = *&v24[v44];
      if (!v59)
      {
        goto LABEL_20;
      }
    }

    v63 = [v59 executionDeviceAssistantId];
    if (v63)
    {
      v64 = v63;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v65;

LABEL_21:
      v60 = v58;
      v61 = v56;
      goto LABEL_22;
    }

LABEL_20:
    v100 = 0;
    v62 = 0;
    goto LABEL_21;
  }

  v29 = swift_getObjectType();
  v113 = ServiceBridgeDelegate.xpcWrapper.getter(v29, a4);
  v30 = a1[1];
  v108 = *a1;
  v31 = a1[2];
  v32 = a1[3];
  v33 = *(a1 + *(v23 + 32));
  outlined init with copy of ReferenceResolutionClientProtocol(a7, &v122);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v122, &v119, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  type metadata accessor for AceServiceInvokerImpl();
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v35 = swift_allocObject();
  *(v35 + 20) = 0;
  *(v35 + 16) = 0;
  *(v34 + 152) = v35;
  type metadata accessor for SubmissionTaskRegistry();
  v36 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 16) = MEMORY[0x1E69E7CD0];
  *(v36 + 16) = v37;
  *(v34 + 160) = v36;
  v38 = v108;
  v39 = swift_allocObject();
  *(v39 + 20) = 0;
  *(v39 + 16) = 0;
  *(v34 + 168) = v39;
  *(v34 + 16) = v113;
  *(v34 + 48) = v30;
  *(v34 + 56) = v31;
  *(v34 + 64) = v32;
  *(v34 + 32) = v33;
  *(v34 + 40) = v38;
  *(v34 + 24) = 0;
  v40 = v109 & 1;
  *(v34 + 72) = 0u;
  *(v34 + 88) = 0u;
  *(v34 + 104) = v40;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v119, &v115, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v41 = v116;

  swift_bridgeObjectRetain_n();
  v42 = v33;
  swift_unknownObjectRetain();
  if (v41)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v119, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v115, &v117);
    outlined init with take of ReferenceResolutionClientProtocol(&v117, v34 + 112);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v115, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v80 = type metadata accessor for ReferenceResolutionClient();
    v81 = ReferenceResolutionClient.__allocating_init()();
    v82 = MEMORY[0x1E69D01B0];
    *(v34 + 136) = v80;
    *(v34 + 144) = v82;
    *(v34 + 112) = v81;
    outlined destroy of ReferenceResolutionClientProtocol?(&v119, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v79 = v111;
  InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(v38, v30, v42, &v122, v111);
LABEL_28:
  v83 = v114;
  if (v110)
  {
    v84 = type metadata accessor for NoopSiriKitEventSender();
    v85 = swift_allocObject();
    v86 = (v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender);
    *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender + 24) = v84;
    v87 = &lazy protocol witness table cache variable for type NoopSiriKitEventSender and conformance NoopSiriKitEventSender;
    v88 = type metadata accessor for NoopSiriKitEventSender;
  }

  else
  {
    v89 = type metadata accessor for InvocationScopedSiriKitEventSender();
    v90 = swift_allocObject();
    v91 = v106;
    _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v79, v106, type metadata accessor for InvocationStateImpl);

    v92 = v107;

    v85 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v34, v92, v91, v90);
    v86 = (v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender);
    *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender + 24) = v89;
    v87 = &lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender;
    v88 = type metadata accessor for InvocationScopedSiriKitEventSender;
  }

  v86[4] = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(v87, 255, v88);
  *v86 = v85;
  v93 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_conversationLoggingId;
  v94 = type metadata accessor for UUID();
  v95 = *(v94 - 8);
  v96 = v9 + v93;
  v97 = v112;
  (*(v95 + 16))(v96, v112, v94);
  *(&v123 + 1) = type metadata accessor for AceServiceInvokerImpl();
  v124 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, 255, type metadata accessor for AceServiceInvokerImpl);
  *&v122 = v34;
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  (*(v95 + 8))(v97, v94);
  outlined destroy of ConversationService.EagerResult(a1, type metadata accessor for RemoteConversationTurnData);
  outlined destroy of ConversationService.EagerResult(v79, type metadata accessor for InvocationStateImpl);
  outlined init with take of ReferenceResolutionClientProtocol(&v122, v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker);
  return v9;
}

uint64_t ConversationService.bridge(didReceiveRequestContextData:from:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = ConversationService.bridge(didReceiveRequestContextData:from:);
  }

  else
  {
    v9 = v4[18];
    v10 = v4[19];
    v11 = v4[13];

    v4[22] = a1;
    v8 = ConversationService.bridge(didReceiveRequestContextData:from:);
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t specialized InterruptibleTaskManager.perform<A>(_:)()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v2, 0);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);

  swift_beginAccess();
  v6 = specialized Dictionary._Variant.removeValue(forKey:)();
  swift_endAccess();
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v6);

  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  v9 = *(v0 + 8);

  return v9(v7, v8);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v2, 0);
}

{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);

  swift_beginAccess();
  v6 = specialized Dictionary._Variant.removeValue(forKey:)();
  swift_endAccess();
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v6);

  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 104);

  v10 = *(v0 + 8);

  return v10(v8, v7, v9);
}

uint64_t closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(v2, v3, v4, v5, v6, v9, v7, v8);
}

uint64_t static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v2, v6);
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()()
{
  v43 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  v1 = *(v0 + 408);
  *(v0 + 352) = *(v0 + 392);
  *(v0 + 368) = v1;
  *(v0 + 384) = *(v0 + 424);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 352, v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
  if (!*(v0 + 536))
  {
    v6 = *(v0 + 872);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
    goto LABEL_10;
  }

  v2 = *(v0 + 840);
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 512), v0 + 472);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 472, v0 + 256);
  *(v0 + 296) = 1;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState((v0 + 256), v2 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  outlined destroy of CamBridgeImpl.CaarState(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v2 + 144), v0 + 112);
  if (*(v0 + 153) == 3 && !*(v0 + 152) && *(v0 + 112) == 1)
  {
    v3 = vorrq_s8(*(v0 + 120), *(v0 + 136));
    if (!*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
    {
      v4 = *(v0 + 872);
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

      outlined destroy of CamBridgeImpl.CamState(v0 + 112);
LABEL_10:
      v7 = *(v0 + 864);

      v8 = *(v0 + 8);

      return v8();
    }
  }

  outlined destroy of CamBridgeImpl.CamState(v0 + 112);
  outlined init with copy of CamBridgeImpl.CamState((v2 + 144), v0 + 160);
  if (*(v0 + 201) == 1)
  {
    v5 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  }

  else
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 160);
    v5 = 4;
  }

  *(v0 + 58) = v5;
  (*(*(v0 + 856) + 104))(*(v0 + 864), *MEMORY[0x1E69CE348], *(v0 + 848));
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1, v10);
  }

  v13 = *(v0 + 880);
  v14 = *(v0 + 864);
  v15 = *(v0 + 856);
  v16 = *(v0 + 848);
  v17 = *(v0 + 840);
  v10[2] = v12 + 1;
  (*(v15 + 32))(v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, v14, v16);
  swift_beginAccess();
  v18 = *(v17 + 96);
  *(v17 + 96) = v10;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 848);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136315138;
    v24 = *(v17 + 96);

    v26 = MEMORY[0x1E12A16D0](v25, v21);
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1DC659000, v19, v20, "CamBridge: Adding feature flags: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v30 = *(v0 + 880);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v31, v32, "CamBridge: Trying to initialise CAM", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v34 = *(v0 + 840);

  v35 = v34[5];
  v36 = v34[6];
  __swift_project_boxed_opaque_existential_1(v34 + 2, v35);
  v37 = *(v17 + 96);
  *(v0 + 904) = v37;
  v38 = *(v36 + 8);

  v41 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 912) = v40;
  *v40 = v0;
  v40[1] = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();

  return v41(v0 + 592, v37, v35, v36);
}

{
  v53 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 880) = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "CamBridge: Trying to initialise CAAR", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 840);

  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + 56, v0 + 432, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  v6 = *(v0 + 456);
  if (v6)
  {
    v7 = *(v0 + 464);
    __swift_project_boxed_opaque_existential_1((v0 + 432), *(v0 + 456));
    v8 = *(v7 + 8);
    v51 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 888) = v10;
    *v10 = v0;
    v10[1] = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();

    return v51(v0 + 392, v6, v7);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 432, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 352, v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
  if (!*(v0 + 536))
  {
    v16 = *(v0 + 872);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
    goto LABEL_18;
  }

  v12 = *(v0 + 840);
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 512), v0 + 472);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 472, v0 + 256);
  *(v0 + 296) = 1;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState((v0 + 256), v12 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  outlined destroy of CamBridgeImpl.CaarState(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v12 + 144), v0 + 112);
  if (*(v0 + 153) == 3 && !*(v0 + 152) && *(v0 + 112) == 1)
  {
    v13 = vorrq_s8(*(v0 + 120), *(v0 + 136));
    if (!*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
    {
      v14 = *(v0 + 872);
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

      outlined destroy of CamBridgeImpl.CamState(v0 + 112);
LABEL_18:
      v17 = *(v0 + 864);

      v18 = *(v0 + 8);

      return v18();
    }
  }

  outlined destroy of CamBridgeImpl.CamState(v0 + 112);
  outlined init with copy of CamBridgeImpl.CamState((v12 + 144), v0 + 160);
  if (*(v0 + 201) == 1)
  {
    v15 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  }

  else
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 160);
    v15 = 4;
  }

  *(v0 + 58) = v15;
  (*(*(v0 + 856) + 104))(*(v0 + 864), *MEMORY[0x1E69CE348], *(v0 + 848));
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v19);
  }

  v22 = *(v0 + 880);
  v23 = *(v0 + 864);
  v24 = *(v0 + 856);
  v25 = *(v0 + 848);
  v26 = *(v0 + 840);
  v19[2] = v21 + 1;
  (*(v24 + 32))(v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v23, v25);
  swift_beginAccess();
  v27 = *(v26 + 96);
  *(v26 + 96) = v19;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 848);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136315138;
    v33 = *(v26 + 96);

    v35 = MEMORY[0x1E12A16D0](v34, v30);
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v52);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v28, v29, "CamBridge: Adding feature flags: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1E12A2F50](v32, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  v39 = *(v0 + 880);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1DC659000, v40, v41, "CamBridge: Trying to initialise CAM", v42, 2u);
    MEMORY[0x1E12A2F50](v42, -1, -1);
  }

  v43 = *(v0 + 840);

  v44 = v43[5];
  v45 = v43[6];
  __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
  v46 = *(v26 + 96);
  *(v0 + 904) = v46;
  v47 = *(v45 + 8);

  v50 = (v47 + *v47);
  v48 = v47[1];
  v49 = swift_task_alloc();
  *(v0 + 912) = v49;
  *v49 = v0;
  v49[1] = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();

  return v50(v0 + 592, v46, v44, v45);
}

{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = *(v2 + 872);
  if (v0)
  {
    v6 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  else
  {
    v6 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *(*v1 + 904);
  v5 = *v1;
  *(*v1 + 920) = v0;

  v6 = *(v2 + 872);
  if (v0)
  {
    v7 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  else
  {
    v7 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = *(v0 + 58);
  v2 = *(v0 + 872);
  v3 = *(v0 + 840);

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 592), v0 + 552);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 552, v0 + 208);
  *(v0 + 248) = v1;
  *(v0 + 249) = 1;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CamState((v0 + 208), v3 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();
  outlined destroy of CamBridgeImpl.CamState(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 552));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
  v4 = *(v0 + 864);

  v5 = *(v0 + 8);

  return v5();
}

{
  v22 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 896);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    *(v0 + 832) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v5, v6, "CamBridge: Error initializing CAAR(will retry on next Siri session): %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v14 = *(v0 + 896);
  v15 = *(v0 + 840);
  *(v0 + 304) = v14;
  *(v0 + 344) = 2;
  swift_beginAccess();
  v16 = v14;
  outlined assign with copy of CamBridgeImpl.CaarState((v0 + 304), v15 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  outlined destroy of CamBridgeImpl.CaarState(v0 + 304);
  *(v0 + 64) = v14;
  *(v0 + 105) = 2;
  swift_beginAccess();
  v17 = v14;
  outlined assign with copy of CamBridgeImpl.CamState((v0 + 64), v15 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();

  outlined destroy of CamBridgeImpl.CamState(v0 + 64);
  v18 = *(v0 + 864);

  v19 = *(v0 + 8);

  return v19();
}

{
  v21 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 920);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v0 + 824) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v5, v6, "CamBridge: Error initializing CAM (will retry on next Siri session): %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v14 = *(v0 + 920);
  v15 = *(v0 + 840);
  *(v0 + 16) = v14;
  *(v0 + 57) = 2;
  swift_beginAccess();
  v16 = v14;
  outlined assign with copy of CamBridgeImpl.CamState((v0 + 16), v15 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();

  outlined destroy of CamBridgeImpl.CamState(v0 + 16);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
  v17 = *(v0 + 864);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t ConversationBridgeProcessorDelegate.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_175Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_43Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_43Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void specialized TaskLoggingService.updateFlowTaskState(aceServiceInvoker:taskName:interactionId:taskId:)(void *a1, uint64_t a2, unint64_t a3, NSObject *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v47 = a2;
  v13 = type metadata accessor for NLContextUpdate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (a7)
    {
      NLContextUpdate.init()();
      v18 = [objc_allocWithZone(MEMORY[0x1E69C78A0]) init];
      v45 = a6;
      v19 = MEMORY[0x1E12A1410](a6, a7);
      [v18 setTaskId_];

      v46 = a4;
      v20 = MEMORY[0x1E12A1410](a4, a5);
      [v18 setInteractionId_];

      v21 = MEMORY[0x1E12A1410](v47, a3);
      [v18 setIntentTypeName_];

      [v18 setMetricsStateOrigin_];
      v22 = v18;
      NLContextUpdate.siriKitMetrics.setter();
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.instrumentation);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v42 = v22;
        v43 = v13;
        v27 = v26;
        v28 = swift_slowAlloc();
        v44 = v14;
        v29 = v28;
        v48 = v28;
        *v27 = 136315650;
        v13 = v43;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, a3, &v48);
        *(v27 + 12) = 2080;
        *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, a7, &v48);
        *(v27 + 22) = 2080;
        *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, a5, &v48);
        _os_log_impl(&dword_1DC659000, v24, v25, "#TaskLoggingService update FlowTaskState from Client with taskName: %s taskId: %s interactionId: %s", v27, 0x20u);
        swift_arrayDestroy();
        v30 = v29;
        v14 = v44;
        MEMORY[0x1E12A2F50](v30, -1, -1);
        v31 = v27;
        v22 = v42;
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v33 = NLContextUpdate.toAceContextUpdate()();
      AceServiceInvokerAsync.submitAndForget(_:)();

      (*(v14 + 8))(v17, v13);
      return;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.instrumentation);

    v46 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, a3, &v48);
      v38 = "#TaskLoggingService invalid taskId, failed to update FlowTaskState from Client for taskName: %s";
      goto LABEL_16;
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.instrumentation);

    v46 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, a3, &v48);
      v38 = "#TaskLoggingService invalid interactionId, failed to update FlowTaskState from Client for taskName: %s";
LABEL_16:
      _os_log_impl(&dword_1DC659000, v46, v35, v38, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);

      return;
    }
  }

  v40 = v46;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in RemoteConversationClient.ensureReady()(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

id outlined copy of Result<(), Error>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for DecisionMaking.newSessionStarted() in conformance DecisionEngine()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  ActionGenerator.newSessionStarted()();
  DecisionEngine.ambiguityService.getter(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  swift_beginAccess();
  v5 = *(v1 + 184);
  *(v1 + 184) = 0;
}

Swift::Void __swiftcall ActionGenerator.newSessionStarted()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23[-v4];
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
  if (*(static SiriKitFlowFeatureFlagDefinitions.forceEnabled + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) != 0))
  {
    if (*(*(v6 + 56) + v7) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = &type metadata for SiriKitFlowFeatureFlagDefinitions;
    v26 = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
    v9 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = *(v1 + 16);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = one-time initialization token for shared;

  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MessageBusActor.shared;
  v14 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v10;

  v16 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime20LinkExpansionContextV07SessionJ0C_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v15);
  v17 = *(v10 + 104);
  *(v10 + 104) = v16;

LABEL_11:
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static LinkFeature.forceEnabled;
  if (!*(static LinkFeature.forceEnabled + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(), (v20 & 1) == 0))
  {
    v25 = &type metadata for LinkFeature;
    v26 = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v21 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    if ((v21 & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (*(*(v18 + 56) + v19) == 1)
  {
LABEL_18:
    v22 = *(v1 + 24);
    AppShortcutExpansionContextBuilder.newSessionStarted()();
  }
}

uint64_t sub_1DC6C74EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions()
{
  result = lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions;
  if (!lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions;
  if (!lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions;
  if (!lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature()
{
  result = lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature;
  if (!lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature;
  if (!lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature;
  if (!lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature);
  }

  return result;
}

Swift::Void __swiftcall AppShortcutExpansionContextBuilder.newSessionStarted()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[AppShortcutExpansionContext] New session started", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  type metadata accessor for ConditionalIntentMetadataStore();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v7 = *(v1 + 16);
  *(v1 + 16) = v6;
}

uint64_t IntentStatesStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t DecisionEngine.ambiguityService.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + 200, &v9, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  if (v10)
  {
    return outlined init with take of ReferenceResolutionClientProtocol(&v9, a1);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v9, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  v4 = *(v1 + 40);
  outlined init with copy of ReferenceResolutionClientProtocol(v1 + 136, &v9);
  v5 = type metadata accessor for AmbiguityService();
  v6 = swift_allocObject();
  type metadata accessor for ServerFallbackDisablingUtils();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager());

  v7[2] = [v8 init];
  v7[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v7[4] = 0;
  *(v6 + 64) = v7;
  *(v6 + 16) = v4;
  outlined init with take of ReferenceResolutionClientProtocol(&v9, v6 + 24);
  a1[3] = v5;
  a1[4] = &protocol witness table for AmbiguityService;
  *a1 = v6;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v9);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v9, v1 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return swift_endAccess();
}

uint64_t CamBridgeImpl.asyncWarmUpIfSupported()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState(v0 + 18, &v22);
  if (v26 != 3 || v25 || v22 != 1 || (v6 = vorrq_s8(v23, v24), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL))))
  {
    outlined destroy of CamBridgeImpl.CamState(&v22);
  }

  else
  {
    outlined destroy of CamBridgeImpl.CamState(&v22);
    swift_beginAccess();
    outlined init with copy of CamBridgeImpl.CaarState(v0 + 24, &v22);
    if (v25 == 3 && v22 == 1)
    {
      v7 = vorrq_s8(v23, v24);
      if (!*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))
      {
        outlined destroy of CamBridgeImpl.CaarState(&v22);
        v8 = type metadata accessor for TaskPriority();
        (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v9 = static MessageBusActor.shared;
        v10 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        *(v11 + 24) = v10;

        return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CamBridgeImpl.asyncWarmUpIfSupported(), v11);
      }
    }

    outlined destroy of CamBridgeImpl.CaarState(&v22);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v0;
  v17[5] = v1;

  v12 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #2 in CamBridgeImpl.asyncWarmUpIfSupported(), v17);
  outlined init with copy of CamBridgeImpl.CamState(v0 + 18, &v22);
  if (v26 != 3 || v25 || v22 != 1 || (v18 = vorrq_s8(v23, v24), *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL))))
  {
    outlined destroy of CamBridgeImpl.CamState(&v22);
    v22 = v12;
    v26 = 0;
    swift_beginAccess();

    outlined assign with copy of CamBridgeImpl.CamState(&v22, (v0 + 18));
    swift_endAccess();
    CamBridgeImpl.camState.didset();
  }

  outlined destroy of CamBridgeImpl.CamState(&v22);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState(v0 + 24, &v22);
  if (v25 != 3 || v22 != 1 || (v19 = vorrq_s8(v23, v24), *&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL))))
  {
    outlined destroy of CamBridgeImpl.CaarState(&v22);
    v22 = v12;
    v25 = 0;
    swift_beginAccess();

    outlined assign with copy of CamBridgeImpl.CaarState(&v22, (v0 + 24));
    swift_endAccess();
    CamBridgeImpl.caarState.didset();
  }

  outlined destroy of CamBridgeImpl.CaarState(&v22);
  return v12;
}

uint64_t sub_1DC6C7DDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC6C7E1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t protocol witness for AmbiguityServiceProviding.newSessionStarted() in conformance AmbiguityService()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t initializeWithCopy for CamBridgeImpl.CamState(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 41);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v6 = *a2;
    v7 = *a2;
    *a1 = v6;
    *(a1 + 41) = 2;
  }

  else if (v3 == 1)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 41) = 1;
  }

  else if (v3)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 26) = *(a2 + 26);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t getEnumTag for CamBridgeImpl.CamState(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

void destroy for CamBridgeImpl.CaarState(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  switch(v2)
  {
    case 2u:
      v4 = *a1;

      break;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    case 0u:
      v3 = *a1;

      break;
  }
}

uint64_t initializeWithCopy for CamBridgeImpl.CaarState(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v5 = *a2;
    v6 = *a2;
    *a1 = v5;
    *(a1 + 40) = 2;
  }

  else if (v3 == 1)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 1;
  }

  else if (v3)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for CamBridgeImpl.CaarState(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      case 0u:
        v5 = *a1;

        break;
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      *(a1 + 40) = 2;
    }

    else if (v6 == 1)
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v10 = *a2;
      v11 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v10;
      *(a1 + 16) = v11;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t RemoteConversationClient.__deallocating_deinit()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = v0[22];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.LoadedConversationTracker.releaseLoadedConversation(serial:)(Swift::Int serial)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(serial);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    specialized _NativeDictionary._delete(at:)(v7, v10);
    *(v2 + 16) = v10;
  }

  swift_endAccess();
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.registerLoadedConversation(_:serial:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in SharedFlowPluginServiceClient.LoadedConversationTracker.registerLoadedConversation(_:serial:), v4, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v8;
  swift_endAccess();
}

uint64_t sub_1DC6C847C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t SendableRemoteConversationXPCWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t *RemoteConversationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  v3 = v0[20];

  v4 = v0[21];

  outlined destroy of RemoteConversationService.State(v0 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state, type metadata accessor for RemoteConversationService.State);
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider + 8);

  return v0;
}

uint64_t AsyncSerialQueue.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 8);

  v6 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 56) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a3;
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), 0, 0);
}

uint64_t objectdestroy_20Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 280);
  v7 = *v3;
  *(v5 + 288) = a1;
  *(v5 + 296) = v2;

  if (v2)
  {
    v8 = *(v5 + 248);
    v9 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v10 = *(v5 + 272);
    v11 = *(v5 + 248);

    *(v5 + 352) = a2;
    v9 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v5 = *v3;
  v6 = *(*v3 + 328);
  v7 = *v3;
  *(v5 + 336) = a1;
  *(v5 + 344) = v2;

  if (v2)
  {
    v8 = *(v5 + 248);
    v9 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v10 = *(v5 + 320);
    v11 = *(v5 + 248);

    *(v5 + 353) = a2;
    v9 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t partial apply for closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()(a1, v4, v5, v7);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[105] = a4;
  v5 = type metadata accessor for CamFeature();
  v4[106] = v5;
  v6 = *(v5 - 8);
  v4[107] = v6;
  v7 = *(v6 + 64) + 15;
  v4[108] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v4[109] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in CamBridgeImpl.asyncWarmUpIfSupported(), v8, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t protocol witness for CaarProviding.provideCaarInstance() in conformance RealCaarProvider(uint64_t *a1)
{
  v8 = v1;
  type metadata accessor for CaarProvider();
  static CaarProvider.caar()();
  v3 = type metadata accessor for RealCaarWrapper();
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v7, v4 + 16);
  a1[3] = v3;
  a1[4] = &protocol witness table for RealCaarWrapper;
  *a1 = v4;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(v2, v3, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  v9 = (a1 + *a1);
  v6 = a1[1];
  v7 = swift_task_alloc();
  *(v5 + 40) = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:);

  return v9();
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = v0[2];
  v8 = v0[5];
  v17 = v0[4];
  v18 = v0[3];
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);
  v13 = *(v0 + v7);
  v14 = *(v0 + v7 + 8);
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(v20, v18, v17, v8, v0 + v3, v9, v10);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return (specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:))(a4, a5, a6, a7, v15);
}

uint64_t specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 232) = a7;
  *(v8 + 240) = v7;
  *(v8 + 216) = a4;
  *(v8 + 224) = a6;
  *(v8 + 896) = a5;
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v14 = type metadata accessor for SiriKitEventPayload();
  *(v8 + 336) = v14;
  v15 = *(v14 - 8);
  *(v8 + 344) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v18 = type metadata accessor for DecisionEngineResponse();
  *(v8 + 368) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v20 = type metadata accessor for ExecutionLocation();
  *(v8 + 384) = v20;
  v21 = *(v20 - 8);
  *(v8 + 392) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR) - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v25 = type metadata accessor for Parse();
  *(v8 + 432) = v25;
  v26 = *(v25 - 8);
  *(v8 + 440) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  v28 = type metadata accessor for TimeoutError();
  *(v8 + 456) = v28;
  v29 = *(v28 - 8);
  *(v8 + 464) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  v31 = type metadata accessor for OSSignpostID();
  *(v8 + 480) = v31;
  v32 = *(v31 - 8);
  *(v8 + 488) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 496) = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMR) - 8) + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  v35 = type metadata accessor for Input();
  *(v8 + 512) = v35;
  v36 = *(v35 - 8);
  *(v8 + 520) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR) - 8) + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = static MessageBusActor.shared;
  *(v8 + 608) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v40, 0);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam0E7FeatureOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam0E7FeatureOGMR, MEMORY[0x1E69CE350]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR, MEMORY[0x1E69D0B48]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11IntentTopicVGMR, MEMORY[0x1E69CFD68]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_11SiriKitFlow5ParseOtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_11SiriKitFlow5ParseOtGMR, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMR, MEMORY[0x1E69D0A28]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMR, MEMORY[0x1E69D0BA0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel25RRDataSourceMetadataValueOGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel25RRDataSourceMetadataValueOGMR, MEMORY[0x1E69D2920]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x1E69D1790]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x1E69D2828]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMR, MEMORY[0x1E69D1740]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR, MEMORY[0x1E69D1730]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology14AsrAlternativeVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology14AsrAlternativeVGMR, MEMORY[0x1E69D17A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionV03topG0_SayAC0E5ParseOG17alternativeParsestGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionV03topG0_SayAC0E5ParseOG17alternativeParsestGMR, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMR, MEMORY[0x1E69CE310]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime13StubCamBridgeC12RankCallArgsVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime13StubCamBridgeC12RankCallArgsVGMR, type metadata accessor for StubCamBridge.RankCallArgs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMR, MEMORY[0x1E69CFE08]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, MEMORY[0x1E69D2948]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_TaskVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_TaskVGMR, MEMORY[0x1E69D0948]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMR, MEMORY[0x1E69D0BE8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes0D16XActionCandidateVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes0D16XActionCandidateVGMR, MEMORY[0x1E69D03F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR, MEMORY[0x1E69D0188]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR, MEMORY[0x1E69D0A68]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMR, MEMORY[0x1E69D0058]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow14IdentifiedUserVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow14IdentifiedUserVGMR, MEMORY[0x1E69CFE58]);
}

uint64_t protocol witness for CamProviding.provideCamInstance(camEnabledFeatures:) in conformance RealCamProvider(uint64_t *a1)
{
  v8 = v1;
  type metadata accessor for CamSingletonProvider();
  static CamSingletonProvider.cam(camEnabledFeatures:)();
  v3 = type metadata accessor for RealCamWrapper();
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v7, v4 + 16);
  a1[3] = v3;
  a1[4] = &protocol witness table for RealCamWrapper;
  *a1 = v4;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t getEnumTagSinglePayload for ConversationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v199 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 240);
  v3 = type metadata accessor for Logger();
  *(v0 + 616) = __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)();
  *(v0 + 624) = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeBegin(rcId:)();

  v4 = type metadata accessor for RequestPositionInSession();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v1, 1, 1, v4);
  swift_beginAccess();
  v7 = *(v2 + 120);
  v8 = *(v0 + 600);
  if (v7 >> 6)
  {
    v189 = v3;
    v9 = *(v2 + 112);
    v186 = *(v2 + 120);
    v183 = v9;
    if (v7 >> 6 == 1)
    {
      v10 = *(v0 + 552);
      v11 = *(v0 + 544);
      v12 = *(v2 + 120);
      v13 = v9;
      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
      v179 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
      v174 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8];
      v176 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
      v195 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8];
      outlined init with copy of ReferenceResolutionClientProtocol?(&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = MEMORY[0x1E69CE598];
      if ((v12 & 1) == 0)
      {
        v14 = MEMORY[0x1E69CE5A8];
      }

      (*(v5 + 104))(v11, *v14, v4);
      v6(v11, 0, 1, v4);
      v15 = v195;
      v16 = v174;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11, v10, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
      v17 = one-time initialization token for conversationBridge;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 600);
      v19 = *(v0 + 592);
      __swift_project_value_buffer(v189, static Logger.conversationBridge);
      outlined init with copy of ReferenceResolutionClientProtocol?(v18, v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 592);
      if (!v22)
      {
        outlined consume of ConversationService.State(v183, v186);

        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v39 = v176;
        v29 = v179;
        goto LABEL_35;
      }

      v24 = 7104878;
      v25 = *(v0 + 584);
      v26 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v198[0] = v190;
      *v26 = 136315650;
      if (v195)
      {
        v24 = v176;
        v27 = v195;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v198);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;

      v29 = v179;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v174, v198);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol?(v23, v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v31 = type metadata accessor for UUID();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v25, 1, v31) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 584), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v33 = 0xE300000000000000;
        v34 = 7104878;
      }

      else
      {
        v58 = *(v0 + 584);
        v34 = UUID.uuidString.getter();
        v33 = v59;
        v60 = v58;
        v29 = v179;
        (*(v32 + 8))(v60, v31);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 592), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, v198);

      *(v26 + 24) = v61;
      v62 = "ConversationService bridge - state - awaitingRequestContextData rootrequestId - %s and startTurnRequestId - %s and sessionId - %s";
    }

    else
    {
      v40 = &v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v29 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v16 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8];
      v39 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 16];
      v15 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 24];
      v41 = v9;
      v42 = type metadata accessor for RemoteConversationTurnData(0);
      outlined init with copy of ReferenceResolutionClientProtocol?(&v40[*(v42 + 24)], v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      outlined copy of ConversationService.State(v41, v7);
      v43 = one-time initialization token for conversationBridge;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 600);
      v45 = *(v0 + 576);
      __swift_project_value_buffer(v189, static Logger.conversationBridge);
      outlined init with copy of ReferenceResolutionClientProtocol?(v44, v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v46 = os_log_type_enabled(v20, v21);
      v47 = *(v0 + 576);
      if (!v46)
      {
        outlined consume of ConversationService.State(v183, v186);

        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_35;
      }

      v48 = v39;
      v49 = *(v0 + 568);
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v190 = v50;
      *v26 = 136315650;
      v176 = v48;
      v180 = v29;
      if (v15)
      {
        v51 = v15;
      }

      else
      {
        v48 = 7104878;
        v51 = 0xE300000000000000;
      }

      v195 = v15;
      v198[0] = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v51, v198);
      v29 = v180;

      *(v26 + 4) = v52;
      *(v26 + 12) = 2080;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v16, v198);

      *(v26 + 14) = v53;
      *(v26 + 22) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol?(v47, v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54 = type metadata accessor for UUID();
      v55 = *(v54 - 8);
      if ((*(v55 + 48))(v49, 1, v54) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 568), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = 0xE300000000000000;
        v57 = 7104878;
      }

      else
      {
        v63 = *(v0 + 568);
        v57 = UUID.uuidString.getter();
        v56 = v64;
        v65 = v63;
        v29 = v180;
        (*(v55 + 8))(v65, v54);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 576), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v198);

      *(v26 + 24) = v66;
      v62 = "ConversationService bridge - state - turnStarted with rootrequestId - %s and startTurnRequestId - %s and sessionId - %s";
    }

    _os_log_impl(&dword_1DC659000, v20, v21, v62, v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v190, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);

    outlined consume of ConversationService.State(v183, v186);
    v15 = v195;
    v39 = v176;
  }

  else
  {
    v35 = type metadata accessor for UUID();
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "ConversationService bridge - state - idle state - rootRequestId - nil and startTurnRequestId - nil", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v29 = 0;
    v16 = 0;
    v39 = 0;
    v15 = 0;
  }

LABEL_35:
  *(v0 + 640) = v15;
  *(v0 + 632) = v39;
  v67 = *(v0 + 552);
  v68 = *(v0 + 504);
  v69 = *(v0 + 240);
  v70 = *(v0 + 208);
  v71 = *(v0 + 192);
  v72.value._countAndFlagsBits = v29;
  v72.value._object = v16;
  v73 = SAIntentGroupRunSiriKitExecutor.executionRequestId(previousExecutionRequestId:)(v72);
  *(v0 + 648) = v73;

  v74 = ConversationService.combineTurnDataContext(rske:positionInSession:incomingRequestContextData:)(v71, v67, v70);
  *(v0 + 664) = v74;
  ConversationService.markBusy(doing:)();
  v75 = *(**(v69 + 200) + 128);

  v75(&async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v69);

  static SiriKitExecutorRunUtils.getInputAndRRData(from:requestContextData:)(v71, v74, v68);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
  if ((*(*(v76 - 8) + 48))(v68, 1, v76) == 1)
  {
    v191 = v74;
    v77 = *(v0 + 608);
    v78 = *(v0 + 504);
    v80 = *(v0 + 296);
    v79 = *(v0 + 304);
    v81 = *(v0 + 264);
    v82 = *(v0 + 272);
    v84 = *(v0 + 248);
    v83 = *(v0 + 256);

    outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMR);
    v85 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v85 - 8) + 56))(v79, 1, 1, v85);
    (*(v83 + 104))(v82, *MEMORY[0x1E69D0678], v84);
    v86 = *(v83 + 16);
    v86(v81, v82, v84);
    outlined init with copy of ReferenceResolutionClientProtocol?(v79, v80, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v196 = type metadata accessor for ExecutionOutput();
    v87 = objc_allocWithZone(v196);
    *&v87[OBJC_IVAR___SKRExecutionOutput_executionRequestId] = v73;
    v88 = &v87[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v88 = 0;
    *(v88 + 1) = 0;
    v89 = &v87[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v89 = 0;
    *(v89 + 1) = 0;
    v90 = &v87[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v90 = 0;
    *(v90 + 1) = 0;
    v91 = &v87[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v91 = 0;
    *(v91 + 1) = 0;
    v86(&v87[OBJC_IVAR___SKRExecutionOutput_executionSource], v81, v84);
    outlined init with copy of ReferenceResolutionClientProtocol?(v80, &v87[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v198[0] = v96;
      *v94 = 136315394;
      *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v198);
      *(v94 + 12) = 2112;
      *(v94 + 14) = 0;
      *v95 = 0;
      _os_log_impl(&dword_1DC659000, v92, v93, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v94, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v95, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v95, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x1E12A2F50](v96, -1, -1);
      MEMORY[0x1E12A2F50](v94, -1, -1);
    }

    v187 = *(v0 + 328);
    v97 = *(v0 + 296);
    v98 = *(v0 + 264);
    v177 = *(v0 + 272);
    v181 = *(v0 + 304);
    v99 = *(v0 + 248);
    v100 = *(v0 + 256);
    v101 = *(v0 + 232);
    v193 = *(v0 + 240);
    v102 = *(v0 + 224);
    ObjectType = swift_getObjectType();
    *&v87[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v87[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    *(v0 + 112) = v87;
    *(v0 + 120) = v196;
    v103 = objc_msgSendSuper2((v0 + 112), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v104 = *(v100 + 8);
    v104(v98, v99);
    v104(v177, v99);
    outlined destroy of ReferenceResolutionClientProtocol?(v181, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    (*(v101 + 32))(v103, 0xD00000000000001FLL, 0x80000001DCA817D0, ObjectType, v101);

    v105 = type metadata accessor for TaskPriority();
    (*(*(v105 - 8) + 56))(v187, 1, 1, v105);
    v106 = swift_allocObject();
    v106[2] = 0;
    v106[3] = 0;
    v106[4] = v193;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v187, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v106);

    v107 = *(v0 + 600);
    v108 = *(v0 + 592);
    v109 = *(v0 + 584);
    v110 = *(v0 + 576);
    v111 = *(v0 + 568);
    v112 = *(v0 + 560);
    v113 = *(v0 + 544);
    v114 = *(v0 + 536);
    v161 = *(v0 + 528);
    v162 = *(v0 + 504);
    v163 = *(v0 + 496);
    v164 = *(v0 + 472);
    v165 = *(v0 + 448);
    v166 = *(v0 + 424);
    v167 = *(v0 + 416);
    v168 = *(v0 + 408);
    v169 = *(v0 + 400);
    v170 = *(v0 + 376);
    v171 = *(v0 + 360);
    v172 = *(v0 + 352);
    v173 = *(v0 + 328);
    v175 = *(v0 + 320);
    v178 = *(v0 + 312);
    v182 = *(v0 + 304);
    v185 = *(v0 + 296);
    v188 = *(v0 + 288);
    v192 = *(v0 + 280);
    v194 = *(v0 + 272);
    v197 = *(v0 + 264);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 552), &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v115 = *(v0 + 8);

    v115();
    return;
  }

  v116 = *(v0 + 536);
  v117 = *(v0 + 520);
  v118 = *(v0 + 512);
  v119 = *(v0 + 192);
  v120 = (*(v0 + 504) + *(v76 + 48));
  *(v0 + 672) = *v120;
  *(v0 + 680) = v120[1];
  v121 = *(v117 + 32);
  *(v0 + 688) = v121;
  *(v0 + 696) = (v117 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v121(v116);
  v122 = [v119 remoteExecution];
  if (v122)
  {
    v123 = *(v0 + 192);

    v124 = [v123 remoteExecution];
    if (!v124)
    {
      __break(1u);
      goto LABEL_58;
    }

    v125 = v124;
    v126 = [v124 speechPackageData];

    if (v126)
    {
      v127 = *(v0 + 192);
      v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;

      outlined consume of Data._Representation(v128, v130);
      v131 = [v127 remoteExecution];
      if (v131)
      {
        v132 = v131;
        v133 = [v131 speechPackageData];

        if (v133)
        {
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPackage, 0x1E698D228);
          v134 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;

          v137 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
          outlined consume of Data._Representation(v134, v136);
          *(v0 + 720) = v137;
          v149 = *(v0 + 192);
          v150 = swift_task_alloc();
          *(v0 + 728) = v150;
          *v150 = v0;
          v150[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
          v151 = *(v0 + 672);
          v152 = *(v0 + 664);
          v153 = *(v0 + 656);
          v154 = *(v0 + 648);
          v155 = *(v0 + 640);
          v156 = *(v0 + 632);
          v157 = *(v0 + 600);
          v158 = *(v0 + 232);
          v159 = *(v0 + 240);
          v160 = *(v0 + 200);
          v202 = *(v0 + 224);
          v203 = v158;
          v201 = v151;

          ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v154, v153, v156, v155, v157, v160, v152, v149);
          return;
        }

LABEL_59:
        __break(1u);
        return;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_1DC659000, v138, v139, "rske does not contain remoteExecution payload", v140, 2u);
    MEMORY[0x1E12A2F50](v140, -1, -1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v141 = *(v0 + 496);
  v142 = *(v0 + 224);
  v143 = type metadata accessor for OSSignposter();
  v144 = __swift_project_value_buffer(v143, static Signposter.executor);
  swift_unknownObjectRetain();
  static OSSignpostID.exclusive.getter();
  v145 = swift_task_alloc();
  *(v0 + 704) = v145;
  *v145 = v0;
  v145[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v146 = *(v0 + 496);
  v147 = *(v0 + 224);
  v148 = *(v0 + 232);

  (specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:))("FetchSpeechInfo", 15, 2, v146, v144, v147, v148);
}

{
  v1 = v0;
  v34 = v0[95];
  v35 = v0[96];
  v39 = v0[92];
  v2 = v0[90];
  v3 = v0[67];
  v4 = v0[56];
  v5 = v0[53];
  v33 = v0[54];
  v43 = v5;
  v6 = v0[51];
  v7 = v0[52];
  v8 = v0[50];
  v9 = v1[49];
  v37 = v1[30];
  v38 = v1[48];
  v36 = *(v1 + 896);
  v40 = v1[27];
  v10 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = type metadata accessor for FlowRedirectContext();
  v32 = v7;
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = v2;
  v13 = v2;
  static ExecutionLocation.unknown.getter();
  Input.parse.getter();
  v14 = v8;
  Parse.nlLocation.getter();
  v34(v4, v33);
  v15 = type metadata accessor for RemoteConversationSpeechData();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v17 = 12589;
  v17[1] = 0xE200000000000000;
  v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = 0;
  *&v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v40;
  *&v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v40;
  v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v36;
  *&v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v13;
  v18 = &v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v20 = 0;
  v20[1] = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v43, &v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v21 = *(v9 + 16);
  v21(&v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v6, v38);
  v21(&v16[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v8, v38);
  v1[16] = v16;
  v1[17] = v15;
  v22 = v40;
  v1[100] = objc_msgSendSuper2(v1 + 8, sel_init);
  v23 = *(v9 + 8);
  v23(v14, v38);
  v23(v6, v38);
  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v24 = v37[6];
  __swift_project_boxed_opaque_existential_1(v37 + 2, v37[5]);
  swift_beginAccess();
  v1[101] = v37[13];
  v25 = *(v24 + 16);

  v41 = v25 + *v25;
  v26 = v25[1];
  v27 = swift_task_alloc();
  v1[102] = v27;
  *v27 = v1;
  v27[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v28 = v1[67];
  v29 = v1[47];
  v30 = v1[28];
  v31 = v1[29];

  __asm { BRAA            X8, X16 }
}

id outlined copy of ConversationService.State(id result, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  if (v2 == 1)
  {
    return result;
  }

  return result;
}

Swift::String __swiftcall SAIntentGroupRunSiriKitExecutor.executionRequestId(previousExecutionRequestId:)(Swift::String_optional previousExecutionRequestId)
{
  object = previousExecutionRequestId.value._object;
  countAndFlagsBits = previousExecutionRequestId.value._countAndFlagsBits;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 refId];
  if (v10)
  {
    v11 = v10;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v12;
  }

  else if (object)
  {
    v13 = one-time initialization token for executor;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "[Conversation] RSKE has no refId: Falling back on previous executionRequestId", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "[Conversation] RSKE has no refId: Will generate new executionRequestId", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    UUID.init()();
    countAndFlagsBits = UUID.uuidString.getter();
    object = v22;
    (*(v5 + 8))(v9, v4);
  }

  v23 = countAndFlagsBits;
  v24 = object;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t ConversationService.combineTurnDataContext(rske:positionInSession:incomingRequestContextData:)(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v67 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = type metadata accessor for RequestPositionInSession();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v60 - v25;
  v27 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x170);
  v66 = a3;
  v28 = v27(v24);
  swift_beginAccess();
  v29 = *(v4 + 120);
  if ((v29 & 0xC0) == 0x80)
  {
    v30 = *(v4 + 112);

    v31 = [a1 mode];
    if (v31)
    {
    }

    else
    {
      v32 = v30;
      v62 = v29;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "Fallback to ResponseMode in RequestContextData when rske mode is nil", v36, 2u);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }

      v37 = &v32[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v61 = *&v37[*(type metadata accessor for RemoteConversationTurnData(0) + 32)];
      v38 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
      v39 = type metadata accessor for ResponseMode();
      v40 = *(v39 - 8);
      v41 = v61 + v38;
      v30 = v32;
      (*(v40 + 16))(v26, v41, v39);
      (*(v40 + 56))(v26, 0, 1, v39);
      (*(*v28 + 1064))(v26);

      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v29 = v62;
    }

    if (*&v66[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId])
    {
      outlined consume of ConversationService.State(v30, v29);
    }

    else
    {
      v62 = v29;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.executor);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v30;
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1DC659000, v43, v44, "Fallback to voiceAudioSessionId in RequestContextData when incoming session is unset", v46, 2u);
        v47 = v46;
        v30 = v45;
        MEMORY[0x1E12A2F50](v47, -1, -1);
      }

      v48 = &v30[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v49 = *(*&v48[*(type metadata accessor for RemoteConversationTurnData(0) + 32)] + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
      v50 = *(*v28 + 1216);
      v68 = 0;
      v50(v49);
      outlined consume of ConversationService.State(v30, v62);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v67, v15, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v51 = *(v17 + 48);
  if (v51(v15, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    v52 = *(v17 + 16);
    v52(v12, &v66[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v16);
    v53 = *(v17 + 56);
    v53(v12, 0, 1, v16);
    (*(*v28 + 1248))(v12);

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  }

  else
  {
    v54 = v63;
    (*(v17 + 32))(v63, v15, v16);
    v52 = *(v17 + 16);
    v52(v12, v54, v16);
    v53 = *(v17 + 56);
    v53(v12, 0, 1, v16);
    (*(*v28 + 1248))(v12);

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    (*(v17 + 8))(v54, v16);
  }

  v55 = v65;
  outlined init with copy of ReferenceResolutionClientProtocol?(v67, v65, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  if (v51(v55, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    v52(v12, &v66[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v16);
    v53(v12, 0, 1, v16);
    (*(*v28 + 1248))(v12);

    v56 = outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  }

  else
  {
    v57 = v64;
    (*(v17 + 32))(v64, v55, v16);
    v52(v12, v57, v16);
    v53(v12, 0, 1, v16);
    (*(*v28 + 1248))(v12);

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    v56 = (*(v17 + 8))(v57, v16);
  }

  v58 = (*(*v28 + 1280))(v56);

  return v58;
}

uint64_t protocol witness for DecisionMaking.newTurnStarted(executionUUID:) in conformance DecisionEngine(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  *(*v1 + 176) = 0;

  v5 = *(v3 + 16);
  ActionGenerator.newTurnStarted()();
  DecisionEngine.ambiguityService.getter(v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 16))(a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

Swift::Void __swiftcall ActionGenerator.newTurnStarted()()
{
  v1 = v0;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
  if (!*(static SiriKitFlowFeatureFlagDefinitions.forceEnabled + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(), (v4 & 1) == 0))
  {
    v13 = &type metadata for SiriKitFlowFeatureFlagDefinitions;
    v14 = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(*(v2 + 56) + v3) == 1)
  {
LABEL_8:
    v6 = *(v1 + 16);
    LinkExpansionContextBuilder.newTurnStarted()();
  }

LABEL_9:
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static LinkFeature.forceEnabled;
  if (!*(static LinkFeature.forceEnabled + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) == 0))
  {
    v13 = &type metadata for LinkFeature;
    v14 = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v10 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

  if (*(*(v7 + 56) + v8) == 1)
  {
LABEL_16:
    v11 = *(v1 + 24);
    AppShortcutExpansionContextBuilder.newTurnStarted()();
  }
}

Swift::Void __swiftcall AppShortcutExpansionContextBuilder.newTurnStarted()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[AppShortcutExpansionContext] New turn started", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = 0;
  outlined consume of AppShortcutExpansionContext?(v6);
}

uint64_t outlined consume of AppShortcutExpansionContext?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t protocol witness for AmbiguityServiceProviding.newTurnStarted(executionUUID:) in conformance AmbiguityService(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 56);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), v4);
  (*(v5 + 64))(a1, v4, v5);
  v6 = *(v3 + 16);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  return (*(v8 + 8))(a1, v7, v8);
}

uint64_t CamBridgeImpl.setupNewTurn(executionUUID:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v64 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v72 = v64 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v75 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v64 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v64 - v24;
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.makeCamIdAndEmitRequestLink(executionUUID:)();

  static ConversationSELFHelper.shared.getter();
  v77 = v22;
  dispatch thunk of ConversationSELFHelper.makeCaarIdAndEmitRequestLink(executionUUID:)();

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.executor);
  v27 = v11[2];
  v27(v19, a1, v10);
  v76 = v25;
  v27(v16, v25, v10);
  v71 = v27;
  v27(v75, v77, v10);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v69 = v7;
    v31 = v30;
    v67 = swift_slowAlloc();
    v78[0] = v67;
    *v31 = 136315650;
    v64[1] = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v66 = v28;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v68 = a1;
    v65 = v29;
    v35 = v11[1];
    v70 = (v11 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v19, v10);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v78);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v35(v16, v10);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v78);

    *(v31 + 14) = v40;
    *(v31 + 22) = 2080;
    v41 = v75;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v75 = v35;
    v35(v41, v10);
    a1 = v68;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v78);

    *(v31 + 24) = v45;
    v46 = v66;
    _os_log_impl(&dword_1DC659000, v66, v65, "CamBridge: Setup new turn with executionUUID: %s, camId:%s, caarId: %s.", v31, 0x20u);
    v47 = v67;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v47, -1, -1);
    v48 = v31;
    v7 = v69;
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  else
  {

    v49 = v11[1];
    v70 = (v11 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49(v75, v10);
    v49(v16, v10);
    v75 = v49;
    v49(v19, v10);
  }

  v50 = v71;
  v51 = v72;
  v71(v72, a1, v10);
  v52 = v11[7];
  v52(v51, 0, 1, v10);
  v53 = v7;
  v50(v7, v76, v10);
  v52(v7, 0, 1, v10);
  v54 = v73;
  v55 = v77;
  v50(v73, v77, v10);
  v52(v54, 0, 1, v10);
  v56 = type metadata accessor for CamBridgeState();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  *(v59 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v51, v59 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v53, v59 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v54, v59 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v60 = v74;
  swift_beginAccess();
  v61 = *(v60 + 240);
  *(v60 + 240) = v59;

  CamBridgeImpl.camBridgeState.didset();

  v62 = v75;
  (v75)(v55, v10);
  return v62(v76, v10);
}