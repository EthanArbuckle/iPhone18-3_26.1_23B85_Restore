void FlowExtensionContext.init(inputItems:listenerEndpoint:contextUUID:overrideFlowExtension:overrideSiriKitRuntime:overrideExtensionId:overrideIntentTopics:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v75 = a8;
  v68 = a5;
  v69 = a7;
  v72 = a4;
  v73 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = &v9[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension];
  *v22 = 0;
  *(v22 + 1) = 0;
  v66 = OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime;
  *&v9[OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime] = 0;
  v23 = &v9[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId];
  *v23 = 0;
  *(v23 + 1) = 0;
  v67 = OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics;
  *&v9[OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics] = 0;
  *&v9[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService] = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v76 = a9;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  outlined init with copy of UUID?(a3, v21);
  v25 = a2;
  v63 = a2;
  v26 = v25;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v64 = v28;
  v29 = os_log_type_enabled(v27, v28);
  v30 = MEMORY[0x1E69E7CA0];
  v74 = a1;
  v70 = v26;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v60 = v14;
    v32 = v31;
    v61 = swift_slowAlloc();
    v78 = v61;
    *v32 = 136315650;
    v33 = MEMORY[0x1E12A16D0](a1, v30 + 8);
    v62 = a3;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v78);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v77 = v63;
    v36 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSXPCListenerEndpointCSgMd, &_sSo21NSXPCListenerEndpointCSgMR);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v78);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    outlined init with copy of UUID?(v21, v65);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    outlined destroy of UUID?(v21);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v78);
    a3 = v62;

    *(v32 + 24) = v43;
    _os_log_impl(&dword_1DC659000, v27, v64, "FlowExtensionContext inputItems: %s, listenerEndpoint: %s, contextUUID: %s", v32, 0x20u);
    v44 = v61;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v21);
  }

  v45 = *v22;
  v46 = v68;
  *v22 = v72;
  *(v22 + 1) = v46;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v47 = *&v10[v66];
  *&v10[v66] = v73;

  v48 = *(v23 + 1);
  v49 = v75;
  *v23 = v69;
  *(v23 + 1) = v49;

  v50 = *&v10[v67];
  *&v10[v67] = v76;

  v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v52 = a3;
  v53 = v71;
  outlined init with copy of UUID?(a3, v71);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  isa = 0;
  if ((*(v55 + 48))(v53, 1, v54) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v55 + 8))(v53, v54);
  }

  v57 = type metadata accessor for FlowExtensionContext();
  v79.receiver = v10;
  v79.super_class = v57;
  v58 = v70;
  v59 = objc_msgSendSuper2(&v79, sel_initWithInputItems_listenerEndpoint_contextUUID_, v51.super.isa, v70, isa);

  if (v59)
  {
    outlined destroy of UUID?(v52);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id FlowExtensionContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FlowExtensionContext.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = (*(ObjectType + 216))(MEMORY[0x1E69E7CC0]);
  swift_deallocPartialClassInstance();
  return v6;
}

id FlowExtensionContext.__allocating_init(inputItems:)()
{
  v1 = objc_allocWithZone(v0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithInputItems_];

  return v3;
}

uint64_t FlowExtensionContext.init(inputItems:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = (*(ObjectType + 216))(a1, 0, v5, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  swift_deallocPartialClassInstance();
  return v8;
}

id FlowExtensionContext.__allocating_init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithInputItems:v7.super.isa listenerEndpoint:a2 contextUUID:isa];

  return v11;
}

uint64_t FlowExtensionContext.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  ObjectType = swift_getObjectType();
  outlined init with copy of UUID?(a3, v9);
  v11 = (*(ObjectType + 216))(a1, a2, v9, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  outlined destroy of UUID?(a3);
  swift_deallocPartialClassInstance();
  return v11;
}

id @objc static FlowExtensionContext._extensionAuxiliaryVendorProtocol()(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t FlowExtensionContext.remoteConversationService.getter()
{
  v1 = OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService;
  if (*&v0[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService])
  {
    v2 = *&v0[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService];
  }

  else
  {
    v2 = closure #1 in FlowExtensionContext.remoteConversationService.getter(v0);
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t closure #1 in FlowExtensionContext.remoteConversationService.getter(char *a1)
{
  v2 = type metadata accessor for FlowPluginBundleImpl();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension])
  {
    v10 = [a1 _principalObject];
    if (v10)
    {
      v9 = v10;
      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1E12A1580](0xD000000000000035, 0x80000001DCA837E0);
    *&v39[0] = [a1 _principalObject];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v34);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v41, *(&v41 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/FlowExtension/FlowExtensionContext.swift", 128, 2, 82);
    __break(1u);
    return result;
  }

  v8 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension + 8];
  v9 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension];
LABEL_5:
  v36 = v8;
  v37 = v7;
  v11 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime];
  if (v11)
  {
    swift_unknownObjectRetain();
    v35 = v11;
  }

  else
  {
    v12 = type metadata accessor for NoopSiriKitEventSender();
    v13 = swift_allocObject();
    *(&v42 + 1) = v12;
    v43 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type NoopSiriKitEventSender and conformance NoopSiriKitEventSender, v14, type metadata accessor for NoopSiriKitEventSender);
    *&v41 = v13;
    type metadata accessor for SiriKitRuntimeState();
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    swift_allocObject();
    swift_unknownObjectRetain();
    v35 = SiriKitRuntimeState.init(customEventSender:rrClient:)(&v41, v39);
  }

  v15 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId + 8];
  v38 = v3;
  if (v15)
  {
    v16 = v2;
    v17 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId];
    if (*&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics])
    {
      v18 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics];
    }

    swift_retain_n();
    v19 = v15;
  }

  else
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    swift_retain_n();
    v22 = [v21 bundleForClass_];
    v17 = NSBundle.packageId.getter();
    v24 = v23;
    v25 = [v22 infoDictionary];
    if (v25)
    {
      v26 = v25;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v16 = v2;
    static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

    v19 = v24;
  }

  v27 = type metadata accessor for RemoteConversationService(0);
  ObjectType = swift_getObjectType();
  swift_bridgeObjectRetain_n();
  v29 = v37;
  FlowPluginBundleImpl.init(bundlePath:supportedTopics:)();
  type metadata accessor for SnippetManager();
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  v30 = static SnippetManager.sharedInstance.getter();
  *&v39[0] = v9;
  v31 = *(*(v36 + 8) + 8);
  swift_unknownObjectRetain();
  v32 = specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v39, v17, v19, v29, v35, closure #1 in closure #1 in FlowExtensionContext.remoteConversationService.getter, 0, v30, &v41, v27, ObjectType, v16, v31, MEMORY[0x1E69CFB90]);
  swift_unknownObjectRelease_n();

  (*(v38 + 8))(v29, v16);
  return v32;
}

uint64_t FlowExtensionContext.remoteConversationService.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService);
  *(v1 + OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService) = a1;
}

uint64_t (*FlowExtensionContext.remoteConversationService.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = FlowExtensionContext.remoteConversationService.getter();
  return FlowExtensionContext.remoteConversationService.modify;
}

uint64_t FlowExtensionContext.remoteConversationService.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService);
  *(v1 + OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService) = v2;
}

uint64_t FlowExtensionContext.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v22 - v12;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))(v11);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  Logger.debugF(file:function:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = one-time initialization token for shared;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = static ConversationActor.shared;
  v19 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v14;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in RemoteConversationService.warmup(refId:reply:), v20);
}

uint64_t FlowExtensionContext.canHandle(inputData:rcId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v26 - v15;
  v17 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE0))(v14);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);
  Logger.debugF(file:function:)();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  outlined copy of Data._Representation(a1, a2);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static ConversationActor.shared;
  v22 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a5;
  v23[7] = a6;
  v24 = v27;
  v23[8] = v17;
  v23[9] = v24;
  v23[10] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:), v23);
}

uint64_t FlowExtensionContext.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE0))();
  RemoteConversationService.cancel(cancellationReason:reply:)(a1, a2, a3);
}

uint64_t FlowExtensionContext.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v23 - v13;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE0))(v12);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = one-time initialization token for shared;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static ConversationActor.shared;
  v20 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v15;
  v21[5] = a1;
  v21[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, a6, v21);
}

uint64_t FlowExtensionContext.startTurn(turnData:bridge:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))();
  RemoteConversationService.startTurn(turnData:bridge:reply:)(a1, a2, a3, a4);
}

uint64_t FlowExtensionContext.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))();
  RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(a1, a2, a3, a4);
}

uint64_t FlowExtensionContext.accept(inputData:speechData:reply:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v25 - v14;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE0))(v13);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  Logger.debugF(file:function:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  outlined copy of Data._Representation(a1, a2);
  v19 = one-time initialization token for shared;

  v20 = a3;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static ConversationActor.shared;
  v22 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a4;
  v23[7] = a5;
  v23[8] = v16;
  v23[9] = v20;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v23);
}

uint64_t @objc FlowExtensionContext.reset(reply:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t FlowExtensionContext.drainAsyncWork(reply:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17 - v8;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(v7);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = one-time initialization token for shared;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  v14 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v10;
  v15[5] = a1;
  v15[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in RemoteConversationService.drainAsyncWork(reply:), v15);
}

id FlowExtensionContext.__allocating_init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithInputItems:v5.super.isa contextUUID:isa];

  return v9;
}

id FlowExtensionContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *NoopSiriKitEventSender.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static NoopSiriKitEventSender.instance;
}

uint64_t protocol witness for SiriKitEventSending.sendAsync(_:) in conformance NoopSiriKitEventSender(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E69CFC68] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return MEMORY[0x1EEE39340](a1, a2, a3);
}

uint64_t partial apply for closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in RemoteConversationService.paraphrase(reply:)(a1, v4, v5, v6, v7, v8);
}

void specialized NoopSiriKitEventSender.send(_:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Dropping SiriKitEvent since we're running in an external process. rdar://83367714 (Support event bus from flows running in external processes)", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.isCorrectable(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in RemoteConversationService.drainAsyncWork(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.drainAsyncWork(reply:)(a1, v4, v5, v6, v7, v8);
}

id FlowExtensionContextHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowExtensionContextHost.init()()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 initWithInputItems:isa listenerEndpoint:0 contextUUID:0];

  return v2;
}

id FlowExtensionContextHost.__allocating_init(inputItems:)()
{
  v1 = objc_allocWithZone(v0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithInputItems_];

  return v3;
}

id FlowExtensionContextHost.init(inputItems:)()
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithInputItems:isa listenerEndpoint:0 contextUUID:0];

  return v2;
}

id FlowExtensionContextHost.__allocating_init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithInputItems:v7.super.isa listenerEndpoint:a2 contextUUID:isa];

  return v11;
}

uint64_t FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  specialized FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(a1, a2, a3);
  v5 = v4;

  return v5;
}

id FlowExtensionContextHost.__allocating_init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithInputItems:v5.super.isa contextUUID:isa];

  return v9;
}

id FlowExtensionContextHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionContextHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  outlined init with copy of UUID?(a3, v10);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  v15 = type metadata accessor for FlowExtensionContextHost();
  v17.receiver = v4;
  v17.super_class = v15;
  v16 = objc_msgSendSuper2(&v17, sel_initWithInputItems_listenerEndpoint_contextUUID_, v11.super.isa, a2, isa);

  if (v16)
  {
    outlined destroy of UUID?(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t FlowExtensionConversationHandler.init(remoteConversationClient:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);

  return a1;
}

uint64_t FlowExtensionConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized FlowExtensionConversationHandler.warmup(refId:)(a1, a2, a3);
}

uint64_t FlowExtensionConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteConversationClient.startTurn(turnData:bridge:)(a1, a5, a6);
}

uint64_t FlowExtensionConversationHandler.findConversation(for:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = FlowExtensionConversationHandler.findConversation(for:rcId:);

  return RemoteConversationClient.canHandle(input:rcId:)(a2, a3, a4);
}

uint64_t FlowExtensionConversationHandler.findConversation(for:rcId:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](FlowExtensionConversationHandler.findConversation(for:rcId:), 0, 0);
  }
}

uint64_t FlowExtensionConversationHandler.findConversation(for:rcId:)()
{
  v1 = v0[5];
  v2 = v0[2];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v0[3]);

  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for ConversationHandler.id.getter in conformance FlowExtensionConversationHandler()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t protocol witness for ConversationHandler.warmup(refId:) in conformance FlowExtensionConversationHandler(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized FlowExtensionConversationHandler.warmup(refId:)(a1, a2, v6);
}

uint64_t protocol witness for ConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:) in conformance FlowExtensionConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteConversationClient.startTurn(turnData:bridge:)(a1, a5, a6);
}

uint64_t protocol witness for ConversationHandler.findConversation(for:rcId:) in conformance FlowExtensionConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v5[2] = a1;
  v5[3] = v9;
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = FlowExtensionConversationHandler.findConversation(for:rcId:);

  return RemoteConversationClient.canHandle(input:rcId:)(a2, a3, a4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance FlowExtensionConversationHandler@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t specialized FlowExtensionConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](specialized FlowExtensionConversationHandler.warmup(refId:), a3, 0);
}

uint64_t specialized FlowExtensionConversationHandler.warmup(refId:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)();
  v5 = v2[19];
  v6 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v5);
  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = *(v6 + 16);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = specialized FlowExtensionConversationHandler.warmup(refId:);
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return (v13)(v0 + 7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.warmup(refId:), v7, v11, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {

    v7 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {

    v7 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

unint64_t instantiation function for generic protocol witness table for FlowExtensionConversationHandler(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for FlowExtensionConversationHandler(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];
}

void *initializeBufferWithCopyOfBuffer for FlowExtensionConversationHandler(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for FlowExtensionConversationHandler(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;

  return a1;
}

uint64_t *assignWithTake for FlowExtensionConversationHandler(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = a1[2];
  a1[1] = a2[1];
  a1[2] = v5;

  return a1;
}

uint64_t partial apply for closure #1 in RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in RemoteConversationClient.warmup(refId:)(a1, a2, a3, v9, v8);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:);

  return FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)(a2, a3, a4, a5);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:)(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:)()
{
  v1 = v0[4];
  if (v1)
  {
    v3 = *(v1 + 112);
    v2 = *(v1 + 120);
    v4 = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

    v5 = &type metadata for FlowExtensionConversationHandler;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v5 = 0;
    v4 = 0;
  }

  v6 = v0[2];
  *v6 = v1;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v7 = v0[1];

  return v7();
}

uint64_t FlowExtensionDiscoverer.__allocating_init(observer:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static FlowExtensionDiscoverer.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:)()
{
  v40 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 320);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v2 = IntentTopic.makeCacheKeyAndWildcardFallbacks()();
  *(v0 + 352) = v2;
  v3 = v2[2];
  *(v0 + 360) = v3;
  if (v3)
  {
    *(v0 + 368) = *(*(v0 + 344) + 16);
    *(v0 + 376) = 0;
    if (v2[2])
    {
      *(v0 + 384) = v2[4];
      *(v0 + 392) = v2[5];
      v4 = one-time initialization token for shared;

      if (v4 == -1)
      {
LABEL_4:
        v5 = static ConversationActor.shared;
        *(v0 + 400) = static ConversationActor.shared;

        return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), v5, 0);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (*(v0 + 160))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
    v7 = static os_log_type_t.debug.getter();
    v8 = Logger.logObject.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v9 = 136315650;
      v11 = StaticString.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v37);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = StaticString.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v37);

      *(v9 + 14) = v16;
      *(v9 + 22) = 2080;
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v38 = 0xD000000000000025;
      v39 = 0x80000001DCA839A0;
      v17 = *(v0 + 200);
      v18 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v17);
      v19 = (*(v18 + 8))(v17, v18);
      MEMORY[0x1E12A1580](v19);

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v37);

      *(v9 + 24) = v20;
      _os_log_impl(&dword_1DC659000, v8, v7, "%s:%s: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    v22 = *(v0 + 328);
    v21 = *(v0 + 336);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
    v23 = type metadata accessor for FlowExtensionConnection();
    swift_allocObject();

    v24 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v22, v21);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v25);
    v27 = (*(v26 + 8))(v25, v26);
    v29 = v28;
    *(v0 + 280) = v23;
    *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
    *(v0 + 256) = v24;
    type metadata accessor for RemoteConversationClient();
    v30 = swift_allocObject();
    swift_defaultActor_initialize();
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    *(v30 + 168) = 0;
    *(v30 + 176) = 0;
    *(v30 + 184) = 2;
    *(v30 + 112) = v27;
    *(v30 + 120) = v29;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v30 + 128);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v32, v33, "No extensions support input", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    v30 = 0;
  }

  v35 = *(v0 + 8);

  return v35(v30);
}

{
  v1 = *(v0 + 368);
  v2 = *(v1 + 48);
  *(v0 + 408) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86C0] + 4);

    v4 = swift_task_alloc();
    *(v0 + 416) = v4;
    *v4 = v0;
    v4[1] = FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:);
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v4, v2, v5);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v1 + 64);
    if (v6)
    {
      if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 384), *(v0 + 392)), (v8 & 1) != 0))
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v6 + 56) + 40 * v7, v0 + 56);
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      v9 = *(v0 + 392);
      swift_endAccess();
    }

    else
    {
      v10 = *(v0 + 392);
      swift_endAccess();

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), 0, 0);
  }
}

{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), v3, 0);
}

{
  v1 = *(v0 + 368);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 384), *(v0 + 392)), (v4 & 1) != 0))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v0 + 56);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    v5 = *(v0 + 392);
    swift_endAccess();
  }

  else
  {
    v6 = *(v0 + 392);
    swift_endAccess();

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), 0, 0);
}

{
  v44 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 352);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);

    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
LABEL_5:
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (*(v0 + 160))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.executor);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
      v6 = static os_log_type_t.debug.getter();
      v7 = Logger.logObject.getter();
      if (os_log_type_enabled(v7, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v41 = v9;
        *v8 = 136315650;
        v10 = StaticString.description.getter();
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v41);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = StaticString.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v41);

        *(v8 + 14) = v15;
        *(v8 + 22) = 2080;
        v42 = 0;
        v43 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v42 = 0xD000000000000025;
        v43 = 0x80000001DCA839A0;
        v16 = *(v0 + 200);
        v17 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
        v18 = (*(v17 + 8))(v16, v17);
        MEMORY[0x1E12A1580](v18);

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v41);

        *(v8 + 24) = v19;
        _os_log_impl(&dword_1DC659000, v7, v6, "%s:%s: %s", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v9, -1, -1);
        MEMORY[0x1E12A2F50](v8, -1, -1);
      }

      v20 = *(v0 + 328);
      v21 = *(v0 + 336);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
      v22 = type metadata accessor for FlowExtensionConnection();
      swift_allocObject();

      v23 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v20, v21);
      v24 = *(v0 + 120);
      v25 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v24);
      v26 = (*(v25 + 8))(v24, v25);
      v28 = v27;
      *(v0 + 280) = v22;
      *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
      *(v0 + 256) = v23;
      type metadata accessor for RemoteConversationClient();
      v29 = swift_allocObject();
      swift_defaultActor_initialize();
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      *(v29 + 168) = 0;
      *(v29 + 176) = 0;
      *(v29 + 184) = 2;
      *(v29 + 112) = v26;
      *(v29 + 120) = v28;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v29 + 128);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.executor);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "No extensions support input", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      v29 = 0;
    }

    v34 = *(v0 + 8);

    return v34(v29);
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 376) + 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (v3 == v2)
  {
    v4 = *(v0 + 352);

    goto LABEL_5;
  }

  v36 = *(v0 + 376) + 1;
  *(v0 + 376) = v36;
  v37 = *(v0 + 352);
  if (v36 >= *(v37 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = v37 + 16 * v36;
  *(v0 + 384) = *(v38 + 32);
  *(v0 + 392) = *(v38 + 40);
  v39 = one-time initialization token for shared;

  if (v39 != -1)
  {
LABEL_25:
    swift_once();
  }

  v40 = static ConversationActor.shared;
  *(v0 + 400) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), v40, 0);
}

uint64_t FlowExtensionObserver.findExtension(matchingTopicKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v4[9] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(matchingTopicKey:), v5, 0);
}

uint64_t FlowExtensionObserver.findExtension(matchingTopicKey:)()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86C0] + 4);

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = FlowExtensionObserver.findExtension(matchingTopicKey:);
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v4, v2, v5);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v1 + 64);
    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
        v9 = v8;
        v10 = v0[5];
        if (v9)
        {
          outlined init with copy of ReferenceResolutionClientProtocol(*(v6 + 56) + 40 * v7, v10);
        }

        else
        {
          *(v10 + 32) = 0;
          *v10 = 0u;
          *(v10 + 16) = 0u;
        }
      }

      else
      {
        v12 = v0[5];
        *(v12 + 32) = 0;
        *v12 = 0u;
        *(v12 + 16) = 0u;
      }

      swift_endAccess();
    }

    else
    {
      v11 = v0[5];
      swift_endAccess();
      *(v11 + 32) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
    }

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(matchingTopicKey:), v3, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
      v5 = v4;
      v6 = v0[5];
      if (v5)
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v6);
      }

      else
      {
        *(v6 + 32) = 0;
        *v6 = 0u;
        *(v6 + 16) = 0u;
      }
    }

    else
    {
      v8 = v0[5];
      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    v7 = v0[5];
    swift_endAccess();
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  v9 = v0[1];

  return v9();
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)()
{
  v1 = *(v0[26] + 16);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:);
  v3 = v0[22];
  v4 = v0[23];

  return FlowExtensionObserver.findExtension(withIdentifier:)((v0 + 7), v3, v4);
}

{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:), 0, 0);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 96);
    v3 = type metadata accessor for FlowExtensionConnection();
    swift_allocObject();

    v4 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 96), v1, v2);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    *(v0 + 136) = v4;
    *(v0 + 160) = v3;
    *(v0 + 168) = &protocol witness table for FlowExtensionConnection;
    type metadata accessor for RemoteConversationClient();
    v10 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v10 + 168) = 0;
    *(v10 + 176) = 0;
    *(v10 + 184) = 2;
    *(v10 + 112) = v7;
    *(v10 + 120) = v9;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v10 + 128);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t FlowExtensionObserver.findExtension(withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v4[9] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(withIdentifier:), v5, 0);
}

uint64_t FlowExtensionObserver.findExtension(withIdentifier:)()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86C0] + 4);

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = FlowExtensionObserver.findExtension(withIdentifier:);
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v4, v2, v5);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v1 + 56);
    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
        v9 = v8;
        v10 = v0[5];
        if (v9)
        {
          outlined init with copy of ReferenceResolutionClientProtocol(*(v6 + 56) + 40 * v7, v10);
        }

        else
        {
          *(v10 + 32) = 0;
          *v10 = 0u;
          *(v10 + 16) = 0u;
        }
      }

      else
      {
        v12 = v0[5];
        *(v12 + 32) = 0;
        *v12 = 0u;
        *(v12 + 16) = 0u;
      }

      swift_endAccess();
    }

    else
    {
      v11 = v0[5];
      swift_endAccess();
      *(v11 + 32) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
    }

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(withIdentifier:), v3, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
      v5 = v4;
      v6 = v0[5];
      if (v5)
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v6);
      }

      else
      {
        *(v6 + 32) = 0;
        *v6 = 0u;
        *(v6 + 16) = 0u;
      }
    }

    else
    {
      v8 = v0[5];
      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    v7 = v0[5];
    swift_endAccess();
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  v9 = v0[1];

  return v9();
}

uint64_t FlowExtensionDiscoverer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FlowExtensionDiscoverer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for kSharedFlowExtensionObserver()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  type metadata accessor for FlowExtensionObserver();
  v4 = swift_allocObject();
  v5 = type metadata accessor for TaskPriority();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v8 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver, v9);

  kSharedFlowExtensionObserver = v4;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver, v5, 0);
}

uint64_t closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver()
{
  v1 = *(v0 + 16);
  FlowExtensionObserver.begin()();
  v2 = *(v0 + 8);

  return v2();
}

void FlowExtensionObserver.begin()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v46 - v5);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  if (v0[6])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v46 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v46, v16, "FlowExtensionObserver.begin() called multiple times while still gathering initial extensions. Ignoring.", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v18 = v46;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v19, static Signposter.executor);
    static OSSignpostID.exclusive.getter();
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v46 = v6;
      v23 = v2;
      v24 = v22;
      *v22 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v20, v21, v25, "LoadAllFlowExtensions", "", v24, 2u);
      v26 = v24;
      v2 = v23;
      v6 = v46;
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    (*(v8 + 16))(v11, v14, v7);
    v27 = type metadata accessor for OSSignpostIntervalState();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v8 + 8))(v14, v7);
    v31 = objc_opt_self();
    if (one-time initialization token for extensionPointAttributes != -1)
    {
      swift_once();
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v53 = partial apply for closure #1 in FlowExtensionObserver.begin();
    v54 = v1;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v52 = thunk for @escaping @callee_guaranteed (@guaranteed [Any]?, @guaranteed Error?) -> ();
    *(&v52 + 1) = &block_descriptor_12;
    v33 = _Block_copy(&aBlock);

    v34 = [v31 beginMatchingExtensionsWithAttributes:isa completion:v33];
    _Block_release(v33);

    if (v34)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    aBlock = v49;
    v52 = v50;
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
    v36 = one-time initialization token for shared;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = static ConversationActor.shared;
    v38 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor();
    v39 = swift_allocObject();
    v39[2] = v37;
    v39[3] = v38;
    v39[4] = v30;
    v39[5] = v1;
    v39[6] = v2;

    v40 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in FlowExtensionObserver.begin(), v39);
    outlined init with copy of ReferenceResolutionClientProtocol?(&aBlock, &v47, &_sypSgMd, &_sypSgMR);
    if (v48)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);

      outlined init with take of Any(&v47, &v49);
      outlined init with take of Any(&v49, &v47);
      swift_beginAccess();
      outlined assign with take of Any?(&v47, (v1 + 2));
      swift_endAccess();
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v47, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.executor);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1DC659000, v42, v43, "Could not set up NSExtension observer, new extensions will not be discovered until assistantd is killed", v44, 2u);
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      else
      {
      }

      outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v45 = v1[6];
    v1[6] = v40;
  }
}

uint64_t one-time initialization function for extensionPointAttributes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA65720;
  v1 = *MEMORY[0x1E696A2F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x1E69E6158];
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v2;
  *(inited + 72) = 0xD00000000000001DLL;
  *(inited + 80) = 0x80000001DCA7F880;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = 1;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  result = swift_arrayDestroy();
  static FlowExtensionObserver.extensionPointAttributes = v3;
  return result;
}

uint64_t FlowExtensionObserver.__allocating_init(forceKnownExtensions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FlowExtensionObserver.init(forceKnownExtensions:)(a1);
  return v2;
}

uint64_t FlowExtensionObserver.init(forceKnownExtensions:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 64) = 0;
  v3 = specialized static FlowExtensionObserver.reduceSeenExtensions(_:)(a1);
  swift_beginAccess();
  v4 = *(v1 + 56);
  *(v1 + 56) = v3;

  v5 = specialized static FlowExtensionObserver.reduceSeenTopics(_:)(a1);

  swift_beginAccess();
  v6 = *(v1 + 64);
  *(v1 + 64) = v5;

  return v1;
}

void closure #1 in FlowExtensionObserver.begin()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - v8;
  if (v7 && (v10 = specialized _arrayConditionalCast<A, B>(_:)(v7)) != 0)
  {
    v11 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);

    v13 = a2;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = static ConversationActor.shared;
    v15 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = a3;
    v16[5] = v11;
    v16[6] = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in FlowExtensionObserver.begin(), v16);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v22 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v22, v18, "Error when matching new NSExtensions: Could not cast as [NSExtensionProtocol]? Assuming no results.", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v20 = v22;
  }
}

uint64_t closure #1 in closure #1 in FlowExtensionObserver.begin()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in FlowExtensionObserver.begin(), v7, 0);
}

uint64_t closure #1 in closure #1 in FlowExtensionObserver.begin()()
{
  v1 = *(v0 + 16);
  FlowExtensionObserver.foundExtensions(_:error:)(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

void FlowExtensionObserver.foundExtensions(_:error:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1DC659000, v6, v7, "FlowExtensionObserver: %ld extensions found", v8, 0xCu);
    MEMORY[0x1E12A2F50](v8, -1, -1);

    if (a2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = specialized static FlowExtensionObserver.reduceSeenExtensions(_:)(a1);
    swift_beginAccess();
    v19 = *(v2 + 56);
    *(v2 + 56) = v18;

    v20 = specialized static FlowExtensionObserver.reduceSeenTopics(_:)(a1);
    swift_beginAccess();
    v21 = *(v2 + 64);
    *(v2 + 64) = v20;

    return;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v10, v11, "Error finding Flow Extensions: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [Any]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t closure #2 in FlowExtensionObserver.begin()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](closure #2 in FlowExtensionObserver.begin(), v6, 0);
}

uint64_t closure #2 in FlowExtensionObserver.begin()()
{
  v31 = v0;
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  if (one-time initialization token for extensionPointAttributes != -1)
  {
    swift_once();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[5] = 0;
  v3 = [v1 extensionsWithMatchingAttributes:isa error:v0 + 5];

  v4 = v0[5];
  if (v3)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v4;

    v7 = specialized _arrayConditionalCast<A, B>(_:)(v5);

    if (v7)
    {
      v8 = v0[8];
      FlowExtensionObserver.foundExtensions(_:error:)(v7, 0);
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.executor);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "Error initially finding NSExtensions: Could not cast as [NSExtensionProtocol]? Assuming no results.", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }
    }
  }

  else
  {
    v9 = v4;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v18 = v0[2];
      v17 = v0[3];
      v19 = v0[4];
      v20 = Error.localizedDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v30);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v13, v14, "Error initially finding NSExtensions: %{public}s? Assuming no results.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }
  }

  $defer #1 () in closure #2 in FlowExtensionObserver.begin()(v0[7], v0[8]);
  v27 = v0[1];
  v28 = *MEMORY[0x1E69E9840];

  return v27();
}

uint64_t $defer #1 () in closure #2 in FlowExtensionObserver.begin()(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static Signposter.executor);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v13, v14, v17, "LoadAllFlowExtensions", v15, v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v18 = *(v21 + 48);
  *(v21 + 48) = 0;
}

Swift::Void __swiftcall FlowExtensionObserver.stop()()
{
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, &v2, &_sypSgMd, &_sypSgMR);
  if (*(&v3 + 1))
  {
    outlined init with take of Any(&v2, v4);
    v1 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    [v1 endMatchingExtensions_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    v2 = 0u;
    v3 = 0u;
    swift_beginAccess();
    outlined assign with take of Any?(&v2, v0 + 16);
    swift_endAccess();
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v2, &_sypSgMd, &_sypSgMR);
  }
}

void *FlowExtensionObserver.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_sypSgMd, &_sypSgMR);
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return v0;
}

uint64_t FlowExtensionObserver.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_sypSgMd, &_sypSgMR);
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t NSExtension.identifierString.getter()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000033, 0x80000001DCA83A10, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/FlowExtension/FlowExtensionDiscovery.swift", 130, 2, 289);
    __break(1u);
  }

  return result;
}

id static NSExtension.findExtension(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];

  v6 = MEMORY[0x1E12A1410](a1, a2);

  v12[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    a3[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSExtension, 0x1E696ABD0);
    a3[4] = &protocol witness table for NSExtension;
    *a3 = v7;
    result = v8;
  }

  else
  {
    v10 = v12[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NSExtension.extensionContextAsProtocol(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v16 - v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  v13 = [v3 _extensionContextForUUID_];

  if (v13)
  {
    result = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSExtensionContext, 0x1E696ABD8);
    v15 = &protocol witness table for NSExtensionContext;
  }

  else
  {
    result = 0;
    v15 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v13;
  a2[3] = result;
  a2[4] = v15;
  return result;
}

unint64_t NSExtension.stringIndexedAttributes.getter()
{
  v1 = [v0 attributes];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v3);

    if (v4)
    {
      return v4;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgmMd, &_sSDys11AnyHashableVypGSgmMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v21);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_1DC659000, v8, v9, "Extension %s has wrong type for attributes: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v14, v29);
        outlined init with copy of Any(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        outlined init with copy of AnyHashable(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        outlined init with copy of Any(v27 + 8, v22);
        outlined destroy of ReferenceResolutionClientProtocol?(v26, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
        v23 = v20;
        outlined init with take of Any(v22, v24);
        v15 = v23;
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = outlined init with take of Any(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t protocol witness for NSExtensionProtocol.identifierString.getter in conformance NSExtension()
{
  v1 = [*v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000033, 0x80000001DCA83A10, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/FlowExtension/FlowExtensionDiscovery.swift", 130, 2, 289);
    __break(1u);
  }

  return result;
}

id @nonobjc NSExtension.beginRequest(options:inputItems:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v11[0] = 0;
  v6 = [v3 beginExtensionRequestWithOptions:a1 inputItems:v5.super.isa error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id protocol witness for NSExtensionContextProtocol._auxiliaryConnection.getter in conformance NSExtensionContext()
{
  v1 = [*v0 _auxiliaryConnection];

  return v1;
}

uint64_t specialized static FlowExtensionObserver.reduceSeenExtensions(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
  v4 = MEMORY[0x1E12A1320](v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);
  if (!v2)
  {
    return v4;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(i, v29);
    v8 = v30;
    v9 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    outlined init with copy of ReferenceResolutionClientProtocol(v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    v16 = *(v4 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (*(v4 + 24) < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v6 = v14;

      v4 = v27;
      v7 = (v27[7] + 40 * v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      outlined init with take of ReferenceResolutionClientProtocol(v28, v7);
      goto LABEL_4;
    }

LABEL_11:
    v4 = v27;
    v27[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v27[6] + 16 * v14);
    *v22 = v10;
    v22[1] = v12;
    outlined init with take of ReferenceResolutionClientProtocol(v28, v27[7] + 40 * v14);
    v23 = v27[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v27[2] = v24;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static FlowExtensionObserver.reduceSeenTopics(_:)(uint64_t a1)
{
  v2 = type metadata accessor for IntentTopic();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
  v9 = MEMORY[0x1E12A1320](v7, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
  v59 = v7;
  if (!v7)
  {
    return v9;
  }

  v11 = 0;
  v58 = a1 + 32;
  v66 = v3 + 16;
  v65 = (v3 + 8);
  *&v10 = 136315650;
  v61 = v10;
  v63 = v2;
  while (1)
  {
    v60 = v11;
    outlined init with copy of ReferenceResolutionClientProtocol(v58 + 40 * v11, v76);
    v12 = v77;
    v13 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v13 + 16))(v12, v13);
    v14 = static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

    v67 = *(v14 + 16);
    if (v67)
    {
      break;
    }

LABEL_3:
    v11 = v60 + 1;

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (v11 == v59)
    {
      return v9;
    }
  }

  v15 = 0;
  v64 = v14;
  while (v15 < *(v14 + 16))
  {
    (*(v3 + 16))(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v2);
    v17 = IntentTopic.cacheKey.getter();
    v19 = v17;
    v20 = v18;
    if (v9[2] && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v22 & 1) != 0))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v9[7] + 40 * v21, v75);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.executor);
      outlined init with copy of ReferenceResolutionClientProtocol(v75, v72);
      outlined init with copy of ReferenceResolutionClientProtocol(v76, v69);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v68 = v62;
        *v26 = v61;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v68);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = v73;
        v29 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v30 = (*(v29 + 8))(v28, v29);
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v68);

        *(v26 + 14) = v33;
        *(v26 + 22) = 2080;
        v34 = v70;
        v35 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v36 = (*(v35 + 8))(v34, v35);
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v68);

        *(v26 + 24) = v39;
        _os_log_impl(&dword_1DC659000, v24, v25, "Multiple extensions support topic %s, using %s and ignoring %s", v26, 0x20u);
        v40 = v62;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v40, -1, -1);
        v41 = v26;
        v14 = v64;
        MEMORY[0x1E12A2F50](v41, -1, -1);

        v42 = v75;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v42 = v69;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v2 = v63;
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v76, v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72[0] = v9;
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
      v46 = v9[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_28;
      }

      v50 = v45;
      if (v9[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = v44;
          specialized _NativeDictionary.copy()();
          v44 = v55;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_30;
        }
      }

      v14 = v64;
      v9 = v72[0];
      if (v50)
      {
        v16 = (*(v72[0] + 56) + 40 * v44);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        outlined init with take of ReferenceResolutionClientProtocol(v75, v16);
      }

      else
      {
        *(v72[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v52 = (v9[6] + 16 * v44);
        *v52 = v19;
        v52[1] = v20;
        outlined init with take of ReferenceResolutionClientProtocol(v75, v9[7] + 40 * v44);
        v53 = v9[2];
        v48 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v48)
        {
          goto LABEL_29;
        }

        v9[2] = v54;
      }
    }

    ++v15;
    (*v65)(v6, v2);
    if (v67 == v15)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor()
{
  result = lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor;
  if (!lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor)
  {
    type metadata accessor for ConversationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in FlowExtensionObserver.begin()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in FlowExtensionObserver.begin()(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in FlowExtensionObserver.begin()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in FlowExtensionObserver.begin()(a1, v4, v5, v6, v7, v8);
}

id static FlowExtensionSubsystem.initForPlugInKit()()
{
  [objc_opt_self() _startListening];
  v0 = objc_allocWithZone(type metadata accessor for FlowExtensionSubsystem());

  return [v0 init];
}

id FlowExtensionSubsystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowExtensionSubsystem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionSubsystem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlowExtensionSubsystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionSubsystem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FlowPluginInfo.init(supportsOnDeviceNL:isPersonalRequest:sensitivityPolicy:isEmergencyRequest:)(char a1, char a2, uint64_t a3, char a4, char a5)
{
  v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL] = a1;
  v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest] = (a2 == 2) | a2 & 1;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  *&v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy] = v6;
  v5[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isEmergencyRequest] = a5 & 1;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for FlowPluginInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

id FlowPluginInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowPluginInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowPluginInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *GenericContextTransformer.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static GenericContextTransformer.sharedInstance;
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for GenericContextTransformer()) init];
  static GenericContextTransformer.sharedInstance = result;
  return result;
}

id static GenericContextTransformer.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static GenericContextTransformer.sharedInstance;

  return v1;
}

id GenericContextTransformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericContextTransformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int HALFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for phoneCallStateQueryTimeoutInMillis()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static HALUtils.phoneCallStateQueryTimeoutInMillis);
  *__swift_project_value_buffer(v0, static HALUtils.phoneCallStateQueryTimeoutInMillis) = 50;
  v1 = *MEMORY[0x1E69E7F38];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t HALUtils.phoneCallStateQueryTimeoutInMillis.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static HALUtils.phoneCallStateQueryTimeoutInMillis);
}

uint64_t static HALUtils.phoneCallStateQueryTimeoutInMillis.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static HALUtils.phoneCallStateQueryTimeoutInMillis);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E12A1FE0](0, a1);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = [v11 serializedContextByKey];

  if (v13)
  {
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *MEMORY[0x1E698D060];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      v20 = v19;

      if (v20)
      {
        outlined init with copy of Any(*(v14 + 56) + 32 * v18, v29);

        v21 = objc_allocWithZone(MEMORY[0x1E698D0F0]);
        __swift_project_boxed_opaque_existential_1(v29, v29[3]);
        v22 = [v21 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        if ([v22 callState])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);

          v13 = 1;
        }

        else
        {
          v23 = [v22 callState];

          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v13 = (v23 >> 1) & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_15:
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.conversationBridge);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = v13;
    *(v27 + 8) = 2080;
    *(v27 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v29);
    _os_log_impl(&dword_1DC659000, v25, v26, "Retrieved isUserOnPhoneCall status: %{BOOL}d for requestId: %s", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  return a5(v13);
}

uint64_t specialized static HALUtils.isUserOnPhoneCall(_:_:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v40 = type metadata accessor for OSSignpostID();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a3, aBlock);
    _os_log_impl(&dword_1DC659000, v15, v16, "Fetching isUserOnPhoneCall status for requestId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    v20 = *MEMORY[0x1E698D060];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v21;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v22 = *(v7 + 16);
    v36 = a1;
    v23 = v40;
    v22(v9, v12, v40);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v7 + 32))(v26 + v24, v9, v23);
    v27 = (v26 + v25);
    v29 = v38;
    v28 = v39;
    *v27 = v39;
    v27[1] = a3;
    v30 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v30 = v37;
    v30[1] = v29;

    isa = Set._bridgeToObjectiveC()().super.isa;
    v32 = MEMORY[0x1E12A1410](v28, a3);
    aBlock[4] = partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    aBlock[3] = &block_descriptor_13;
    v33 = _Block_copy(aBlock);

    [v36 fetchContextsForKeys:isa forRequestID:v32 includesNearbyDevices:0 completion:v33];
    _Block_release(v33);
  }

  return (*(v7 + 8))(v12, v40);
}

uint64_t specialized static HALUtils.isUserOnPhoneCall(_:_:)(void *a1, uint64_t a2, unint64_t a3)
{
  v34 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  v17 = dispatch_semaphore_create(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;

  v19 = v17;
  specialized static HALUtils.isUserOnPhoneCall(_:_:completion:)(a1, a2, v34, partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:), v18);

  static DispatchTime.now()();
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = __swift_project_value_buffer(v20, static HALUtils.phoneCallStateQueryTimeoutInMillis);
  MEMORY[0x1E12A1280](v12, v21);
  v22 = *(v9 + 8);
  v22(v12, v8);
  MEMORY[0x1E12A1BE0](v15);
  v22(v15, v8);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "Timed out fetching phoneCallState.", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    static os_signpost_type_t.event.getter();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = v31;
    static OSSignpostID.exclusive.getter();
    v28 = 2;
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v32 + 8))(v27, v33);
  }

  else
  {

    swift_beginAccess();
    v28 = *(v16 + 16);
  }

  return v28;
}

uint64_t partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:)(unint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return closure #1 in static HALUtils.isUserOnPhoneCall(_:_:completion:)(a1, v1 + v4, v8, v9, v10);
}

Swift::Int partial apply for closure #1 in static HALUtils.isUserOnPhoneCall(_:_:)(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t HangUpOverride.__allocating_init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t HangUpOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t HangUpOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t HangUpOverride.bridge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge + 8);
  return swift_unknownObjectRetain();
}

uint64_t HangUpOverride.isBlushingPhantomEnabled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isBlushingPhantomEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isBlushingPhantomEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isBlushingPhantomEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.isQuickStopCallBellEnabled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isQuickStopCallBellEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isQuickStopCallBellEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isQuickStopCallBellEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.isCancelCallBellEnabled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isCancelCallBellEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isCancelCallBellEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isCancelCallBellEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.isActiveDropInCall.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isActiveDropInCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HangUpOverride.isActiveDropInCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isActiveDropInCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  *(v6 + 16) = 0;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isBlushingPhantomEnabled) = AFSupportsSiriInCall();
  v12 = (v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge);
  *v12 = a2;
  v12[1] = a3;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isSpeechRequest) = a4;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isNlEmpty) = a5;
  v13 = one-time initialization token for forceEnabled;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_beginAccess();
  v15 = static SiriPlaybackControlFeature.forceEnabled;
  if (*(static SiriPlaybackControlFeature.forceEnabled + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + v16);
  }

  else
  {
    v26 = &type metadata for SiriPlaybackControlFeature;
    v27 = lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature();
    v18 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isQuickStopCallBellEnabled) = v18 & 1;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v19 = swift_beginAccess();
  v20 = static SiriPhoneFeature.forceEnabled;
  if (*(static SiriPhoneFeature.forceEnabled + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + v21);

    swift_unknownObjectRelease();
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  }

  else
  {
    v26 = &type metadata for SiriPhoneFeature;
    v27 = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
    v23 = isFeatureEnabled(_:)();
    swift_unknownObjectRelease();
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isCancelCallBellEnabled) = v23 & 1;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isActiveDropInCall) = 0;
  return v6;
}

uint64_t HangUpOverride.evaluate()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](HangUpOverride.evaluate(), 0, 0);
}

uint64_t HangUpOverride.evaluate()()
{
  if ((*(**(v0 + 24) + 176))())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ExecutionOverride] [HangUpOverride]: ff enabled. Return .accept", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    **(v0 + 16) = 11;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 32) = v7;
    *v7 = v0;
    v7[1] = HangUpOverride.evaluate();
    v8 = *(v0 + 24);

    return HangUpOverride.isUserOnPhoneCall()();
  }
}

{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 24);
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isSpeechRequest) == 1 && *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isNlEmpty) == 1)
    {
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
        _os_log_impl(&dword_1DC659000, v3, v4, "[ExecutionOverride] [HangUpOverride]: User on phone call and NL is empty. Return .mitigateEmptyASR", v5, 2u);
        MEMORY[0x1E12A2F50](v5, -1, -1);
      }

      v6 = 7;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.executor);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DC659000, v12, v13, "[ExecutionOverride] [HangUpOverride]: User on phone call. Checking if valid active phone call request...", v14, 2u);
        MEMORY[0x1E12A2F50](v14, -1, -1);
      }

      v15 = *(v0 + 24);

      if (HangUpOverride.isValidActivePhoneCallRequest()())
      {
        v6 = 11;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "[ExecutionOverride] [HangUpOverride]: User not on phone call. Return .accept", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v6 = 11;
  }

  **(v0 + 16) = v6;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t HangUpOverride.evaluate()(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](HangUpOverride.evaluate(), 0, 0);
}

uint64_t HangUpOverride.isValidActivePhoneCallRequest()()
{
  v128 = type metadata accessor for IdentifierNamespace();
  v123 = *(v128 - 8);
  v0 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v124 = v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
  v2 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = v112 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v125 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v130 = v112 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v129 = v112 - v10;
  v133 = type metadata accessor for IdentifierAppBundle();
  v122 = *(v133 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v131 = v112 - v14;
  v15 = type metadata accessor for UsoIdentifier();
  v134 = *(v15 - 8);
  v135 = v15;
  v16 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v136 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v138 = v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v139 = v112 - v23;
  v24 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v25 = *(v24 - 8);
  v140 = v24;
  v141 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v137 = v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v112 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOSgGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOSgGMR);
  v33 = *(v29 + 72);
  v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1DCA65720;
  v36 = v35 + v34;
  v37 = *MEMORY[0x1E69D3448];
  v38 = type metadata accessor for DeviceClass();
  v39 = *(v38 - 8);
  v40 = *(v39 + 104);
  v40(v36, v37, v38);
  v41 = *(v39 + 56);
  v41(v36, 0, 1, v38);
  v40(v36 + v33, *MEMORY[0x1E69D3438], v38);
  v41(v36 + v33, 0, 1, v38);
  v42 = v142;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceClass.getter();

  LOBYTE(v41) = specialized Sequence<>.contains(_:)(v32, v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  if ((v41 & 1) != 0 && (*(v42 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_isSpeechRequest) & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.executor);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "[ExecutionOverride] [HangUpOverride] [TypeToSiri]: Returning true for non-speech request.", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    return 1;
  }

  v43 = v138;
  outlined init with copy of ReferenceResolutionClientProtocol?(v42 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, v138, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v44 = type metadata accessor for Siri_Nlu_External_UserParse();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v46 = v139;
    (*(v141 + 56))(v139, 1, 1, v140);
LABEL_14:
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.executor);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC659000, v58, v59, "[ExecutionOverride] Unable to retrieve UserDialogAct from parse. Cannot determine request type; presuming request is not valid active phone call request.", v60, 2u);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    return 0;
  }

  v47 = MEMORY[0x1E129C0F0]();
  (*(v45 + 8))(v43, v44);
  v46 = v139;
  v48 = v140;
  if (*(v47 + 16))
  {
    v49 = v141;
    (*(v141 + 16))(v139, v47 + ((*(v141 + 80) + 32) & ~*(v141 + 80)), v140);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v141;
  }

  v56 = v137;

  (*(v49 + 56))(v46, v50, 1, v48);
  if ((*(v49 + 48))(v46, 1, v48) == 1)
  {
    goto LABEL_14;
  }

  v61 = (*(v49 + 32))(v56, v46, v48);
  if ((*(*v42 + 224))(v61) & 1) != 0 && ((*(*v42 + 248))() & 1) != 0 && (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    if (one-time initialization token for executor == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_94;
  }

  v66 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_91:

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.executor);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1DC659000, v68, v69, "[ExecutionOverride] UserDialog was not of type UsoTask. Cannot determine request type; presuming request is not valid active phone call request.", v70, 2u);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    goto LABEL_32;
  }

LABEL_90:
  v110 = v66;
  v111 = __CocoaSet.count.getter();
  v66 = v110;
  if (!v111)
  {
    goto LABEL_91;
  }

LABEL_37:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v71 = MEMORY[0x1E12A1FE0](0);
  }

  else
  {
    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_94:
      swift_once();
LABEL_23:
      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.executor);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1DC659000, v63, v64, "[ExecutionOverride] [HangUpOverride]: userDialogAct:UserCancelled: Conditions met to end the call. Return .accept.", v65, 2u);
        MEMORY[0x1E12A2F50](v65, -1, -1);
      }

      goto LABEL_25;
    }

    v71 = *(v66 + 32);
  }

  if ((*(*v42 + 200))(v72) & 1) != 0 && ((*(*v42 + 248))() & 1) != 0 && (specialized HangUpOverride.isQuickStopTask(task:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.executor);
    v63 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v63, v74))
    {

      goto LABEL_26;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_1DC659000, v63, v74, "[ExecutionOverride] [HangUpOverride]: Conditions met to quick stop dropIn call. Return .accept.", v75, 2u);
    MEMORY[0x1E12A2F50](v75, -1, -1);

LABEL_25:

LABEL_26:
    (*(v49 + 8))(v56, v48);
    return 1;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v145)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v144, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.executor);
    v68 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v68, v77))
    {

      goto LABEL_33;
    }

    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_1DC659000, v68, v77, "[ExecutionOverride] Unable to initialize UsoTask. Cannot determine request type; presuming request is not valid active phone call request.", v78, 2u);
    MEMORY[0x1E12A2F50](v78, -1, -1);

LABEL_32:

LABEL_33:
    (*(v49 + 8))(v56, v48);
    return 0;
  }

  outlined init with take of Any(&v144, &v146);
  outlined init with copy of Any(&v146, &v144);
  type metadata accessor for UsoTask_hangup_common_PhoneCall();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v146);
    (*(v49 + 8))(v56, v48);

    return 1;
  }

  outlined init with copy of Any(&v146, &v144);
  type metadata accessor for UsoTask_action_common_SocialConversation();
  if (!swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v146);
    goto LABEL_33;
  }

  v79 = v143;

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();

  if (v144 && (v80 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , v80))
  {
    v66 = v80;
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  v142 = *(v66 + 16);
  if (v142)
  {
    v112[1] = v79;
    v112[2] = v71;
    v49 = 0;
    v139 = (v66 + ((*(v134 + 80) + 32) & ~*(v134 + 80)));
    v138 = v134 + 16;
    v121 = *MEMORY[0x1E69D1AF0];
    v120 = (v122 + 104);
    v122 += 8;
    v118 = *MEMORY[0x1E69D1B08];
    v117 = (v123 + 104);
    v116 = (v123 + 56);
    v115 = (v123 + 48);
    v113 = (v123 + 32);
    v114 = (v123 + 8);
    v123 = v134 + 8;
    v81 = &_s12SiriOntology19IdentifierNamespaceOSgMd;
    v42 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
    v48 = v129;
    v56 = v136;
    v119 = v66;
    while (1)
    {
      if (v49 >= *(v66 + 16))
      {
        __break(1u);
        goto LABEL_90;
      }

      (*(v134 + 16))(v56, &v139[*(v134 + 72) * v49], v135);
      v82 = v131;
      UsoIdentifier.appBundleSemantic.getter();
      v84 = v132;
      v83 = v133;
      (*v120)(v132, v121, v133);
      v85 = MEMORY[0x1E129CA00](v82, v84);
      v86 = *v122;
      (*v122)(v84, v83);
      v87 = v82;
      v56 = v136;
      v86(v87, v83);
      if ((v85 & 1) == 0)
      {
        goto LABEL_65;
      }

      UsoIdentifier.namespaceSemantic.getter();
      v88 = v130;
      v89 = v128;
      (*v117)(v130, v118, v128);
      (*v116)(v88, 0, 1, v89);
      v90 = *(v127 + 48);
      v91 = v48;
      v92 = v48;
      v93 = v126;
      outlined init with copy of ReferenceResolutionClientProtocol?(v91, v126, v81, v42);
      outlined init with copy of ReferenceResolutionClientProtocol?(v88, v93 + v90, v81, v42);
      v94 = v42;
      v95 = v81;
      v96 = *v115;
      if ((*v115)(v93, 1, v89) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v88, v81, v94);
        outlined destroy of ReferenceResolutionClientProtocol?(v92, v81, v94);
        if (v96(v93 + v90, 1, v89) != 1)
        {
          goto LABEL_64;
        }

        v42 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
        outlined destroy of ReferenceResolutionClientProtocol?(v93, v81, &_s12SiriOntology19IdentifierNamespaceOSgMR);
        v48 = v129;
        v56 = v136;
      }

      else
      {
        v97 = v125;
        outlined init with copy of ReferenceResolutionClientProtocol?(v93, v125, v81, v94);
        if (v96(v93 + v90, 1, v89) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v130, v81, v94);
          outlined destroy of ReferenceResolutionClientProtocol?(v129, v81, v94);
          (*v114)(v97, v89);
LABEL_64:
          outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
          v48 = v129;
          v42 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
          v56 = v136;
LABEL_65:
          (*v123)(v56, v135);
          goto LABEL_66;
        }

        v98 = v124;
        (*v113)(v124, v93 + v90, v89);
        lazy protocol witness table accessor for type IdentifierNamespace and conformance IdentifierNamespace(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, MEMORY[0x1E69D1B40]);
        v99 = dispatch thunk of static Equatable.== infix(_:_:)();
        v100 = *v114;
        (*v114)(v98, v89);
        outlined destroy of ReferenceResolutionClientProtocol?(v130, v95, v94);
        v101 = v129;
        outlined destroy of ReferenceResolutionClientProtocol?(v129, v95, v94);
        v100(v125, v89);
        v102 = v93;
        v48 = v101;
        outlined destroy of ReferenceResolutionClientProtocol?(v102, v95, v94);
        v81 = v95;
        v42 = v94;
        v56 = v136;
        if ((v99 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (UsoIdentifier.value.getter() == 0x6563696F566C6164 && v103 == 0xEF72656767697254)
      {

        (*v123)(v56, v135);
LABEL_82:

        v105 = 1;
LABEL_83:
        v48 = v140;
        v49 = v141;
        v56 = v137;
        goto LABEL_84;
      }

      v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v123)(v56, v135);
      if (v104)
      {
        goto LABEL_82;
      }

LABEL_66:
      ++v49;
      v66 = v119;
      if (v142 == v49)
      {

        v105 = 0;
        goto LABEL_83;
      }
    }
  }

  v105 = 0;
LABEL_84:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  __swift_project_value_buffer(v106, static Logger.executor);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 67109120;
    *(v109 + 4) = v105;
    _os_log_impl(&dword_1DC659000, v107, v108, "[ExecutionOverride] [HangUpOverride] Received canned UsoTask, isVoiceTrigger = %{BOOL}d", v109, 8u);
    MEMORY[0x1E12A2F50](v109, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v146);
  (*(v49 + 8))(v56, v48);
  return v105;
}

uint64_t HangUpOverride.isUserOnPhoneCall()()
{
  *(v1 + 88) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 96) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](HangUpOverride.isUserOnPhoneCall(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[ExecutionOverride] [HangUpOverride]: Checking if User on Phone call", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = static MessageBusActor.shared;
  v0[14] = static MessageBusActor.shared;
  v6 = lazy protocol witness table accessor for type IdentifierNamespace and conformance IdentifierNamespace(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v7 = *(MEMORY[0x1E69E88D0] + 4);

  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22AFServiceDeviceContextCGSgMd, &_sSaySo22AFServiceDeviceContextCGSgMR);
  v0[16] = v9;
  *v8 = v0;
  v8[1] = HangUpOverride.isUserOnPhoneCall();
  v10 = v0[11];

  return MEMORY[0x1EEE6DDE0](v0 + 9, v5, v6, 0xD000000000000013, 0x80000001DCA83F10, partial apply for closure #1 in HangUpOverride.isUserOnPhoneCall(), v10, v9);
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](HangUpOverride.isUserOnPhoneCall(), v3, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = *(v0 + 72);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315138;
    *(v0 + 80) = v3;

    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v42);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ExecutionOverride] [HangUpOverride]: fetched context: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  if (v3 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1E12A1FE0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v3 + 32);
  }

  v14 = v13;

  v15 = [v14 serializedContextByKey];

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *MEMORY[0x1E698D060];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_15;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_15:

LABEL_16:
    v26 = *(v0 + 104);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "[ExecutionOverride] [HangUpOverride]: Failed to retrieve phone call state before running Hangup Rule.", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    v25 = 0;
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v20, v0 + 16);

  v23 = objc_allocWithZone(MEMORY[0x1E698D0F0]);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v24 = [v23 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  if ([v24 callState])
  {
    v25 = 1;
  }

  else
  {
    v25 = ([v24 callState] >> 1) & 1;
  }

  v31 = *(v0 + 104);
  (*(**(v0 + 88) + 256))([v24 isDropInCall]);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 88);
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = (*(*v35 + 248))() & 1;

    _os_log_impl(&dword_1DC659000, v32, v33, "[ExecutionOverride] [HangUpOverride]: phoneCall state retrieved and is user on drop in call? Ans: %{BOOL}d", v36, 8u);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  else
  {
    v37 = *(v0 + 88);
  }

  v38 = *(v0 + 104);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = v25;
    _os_log_impl(&dword_1DC659000, v39, v40, "[ExecutionOverride] [HangUpOverride]: phoneCall state retrieved and is user on call? Ans: %{BOOL}d", v41, 8u);
    MEMORY[0x1E12A2F50](v41, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_19:
  v30 = *(v0 + 8);

  return v30(v25);
}

uint64_t closure #1 in HangUpOverride.isUserOnPhoneCall()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge + 8);
  v10 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  v12 = *MEMORY[0x1E698D060];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v8, v4);
  (*(v9 + 120))(v14, 0, partial apply for closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall(), v16, ObjectType, v9);
}

uint64_t closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t HangUpOverride.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HangUpOverride.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14HangUpOverride_bridge);
  swift_unknownObjectRelease();
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance HangUpOverride(uint64_t a1)
{
  v4 = *(**v1 + 280);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8(a1);
}

uint64_t type metadata accessor for HangUpOverride()
{
  result = type metadata singleton initialization cache for HangUpOverride;
  if (!type metadata singleton initialization cache for HangUpOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HangUpOverride()
{
  type metadata accessor for Siri_Nlu_External_UserParse?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of HangUpOverride.evaluate()(uint64_t a1)
{
  v4 = *(*v1 + 280);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8(a1);
}

uint64_t specialized HangUpOverride.isQuickStopTask(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v7)
  {
    outlined init with take of Any(&v6, v8);
    outlined init with take of Any(v8, &v6);
    type metadata accessor for UsoTask_stop_uso_NoEntity();
    result = swift_dynamicCast();
    if (result)
    {
      v1 = result;

      return v1;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v6, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "[ExecutionOverride] Unable to initialize UsoTask. Rejecting.", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IdentifierNamespace and conformance IdentifierNamespace(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall()()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in HangUpOverride.isUserOnPhoneCall()();
}

uint64_t HangUpRule.ruleType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

_BYTE *HangUpRule.__allocating_init(isUserOnActivePhoneCall:isActiveCallFallbackAllowed:)(char a1, char a2)
{
  result = swift_allocObject();
  result[16] = 0;
  result[17] = a1;
  result[18] = a2;
  return result;
}

_BYTE *HangUpRule.init(isUserOnActivePhoneCall:isActiveCallFallbackAllowed:)(char a1, char a2)
{
  v2[16] = 0;
  v2[17] = a1;
  v2[18] = a2;
  return v2;
}

SiriKitRuntime::PreExecutionDecision __swiftcall HangUpRule.evaluate()()
{
  if (*(v0 + 18))
  {
    return 11;
  }

  v2 = *(v0 + 17);
  if (v2 == 2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "PhoneCallState is nil for HangUpRule. This should never happen! Failing request for privacy reasons.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    return 9;
  }

  else if (v2)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t static HealthNLUtils.hasMeasurementUnits(from:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - v6;
  if (!a1)
  {
    return 0;
  }

  result = dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter();
  if (!result)
  {
    return result;
  }

  v9 = result;
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    swift_arrayDestroy();

    return 0;
  }

  v10 = result;
  v26[1] = v9;
  v32 = *(result + 16);
  if (v32)
  {
    v11 = 0;
    v27 = (v34 + 8);
    v29 = (v34 + 32);
    v30 = v34 + 16;
    v12 = MEMORY[0x1E69E7CC0];
    v28 = v2;
    v31 = result;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v14 = *(v34 + 72);
      (*(v34 + 16))(v7, v10 + v13 + v14 * v11, v2);
      v15 = UsoIdentifier.namespace.getter();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v35[0] = v17;
      v35[1] = v18;
      MEMORY[0x1EEE9AC00](v15);
      v26[-2] = v35;
      v19 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v26[-4], &outlined read-only object #0 of static HealthNLUtils.hasMeasurementUnits(from:));

      if (v19)
      {
        v20 = *v29;
        (*v29)(v33, v7, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
          v12 = v36;
        }

        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
          v12 = v36;
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + v13 + v23 * v14;
        v2 = v28;
        result = (v20)(v24, v33, v28);
      }

      else
      {
        result = (*v27)(v7, v2);
      }

      ++v11;
      v10 = v31;
      if (v32 == v11)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
    swift_arrayDestroy();

    v25 = *(v12 + 16);

    return v25 != 0;
  }

  return result;
}

uint64_t HealthAffinityScorer.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HealthAffinityScorer.score(input:environment:)()
{
  if (!specialized HealthAffinityScorer.getUsoTask(input:)())
  {
    return 1;
  }

  v0 = specialized HealthAffinityScorer.isExplicitlySupported(usoTask:)();

  if (v0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for AffinityScoring.score(input:environment:) in conformance HealthAffinityScorer()
{
  if (!specialized HealthAffinityScorer.getUsoTask(input:)())
  {
    return 1;
  }

  v0 = specialized HealthAffinityScorer.isExplicitlySupported(usoTask:)();

  if (v0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

unint64_t specialized HealthAffinityScorer.getUsoTask(input:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    v10 = specialized static AffinityScorerUtils.getTask(_:)();
    (*(v6 + 8))(v9, v5);
    result = v10;
    if (v10)
    {
      return result;
    }
  }

  else
  {
    (*(v1 + 8))(v4, v0);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DC659000, v13, v14, "#HealthAffinityScorer did not find any relevant usoParses, returning low affinity score.", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  return 0;
}

uint64_t specialized static HealthNLUtils.extractHealthLog(from:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v6, v4);
  if (v5)
  {
    outlined init with copy of Any?(v4, v3);
    type metadata accessor for UsoTask_create_common_HealthLog();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_12:

      outlined destroy of Any?(v6);
      v0 = v2;
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      goto LABEL_13;
    }

    type metadata accessor for UsoTask_requestLog_common_HealthLog();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceMeasurementUnit.reference.getter();
      goto LABEL_12;
    }

    type metadata accessor for UsoTask_open_common_HealthLog();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_checkExistence_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_delete_common_HealthLog(), swift_dynamicCast()))
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_12;
    }

    outlined destroy of Any?(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  v0 = 0;
LABEL_13:
  outlined destroy of Any?(v4);
  return v0;
}

uint64_t specialized static HealthNLUtils.hasHealthDataType(from:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  if (!a1)
  {
    return 0;
  }

  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    swift_arrayDestroy();

    return 0;
  }

  v14 = result;
  v34 = *(result + 16);
  if (!v34)
  {
LABEL_16:

    return 0;
  }

  v29 = v9;
  v30 = v12;
  v15 = 0;
  v33 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = a1;
  v32 = v3 + 16;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v3 + 16))(v6, v33 + *(v3 + 72) * v15, v2);
    v16 = UsoIdentifier.namespace.getter();
    v18 = v17 ? v16 : 0;
    v19 = v17 ? v17 : 0xE000000000000000;
    v35[0] = v18;
    v35[1] = v19;
    MEMORY[0x1EEE9AC00](v16);
    *(&v28 - 2) = v35;
    v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v28 - 4), &outlined read-only object #0 of static HealthNLUtils.hasHealthDataType(from:));

    if (v20)
    {
      break;
    }

    ++v15;
    result = (*(v3 + 8))(v6, v2);
    if (v34 == v15)
    {
      goto LABEL_16;
    }
  }

  v21 = *(v3 + 32);
  v22 = v29;
  v21(v29, v6, v2);
  v23 = v30;
  v21(v30, v22, v2);
  v24 = UsoIdentifier.value.getter();
  v26 = v25;

  (*(v3 + 8))(v23, v2);

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  return v27 != 0;
}

uint64_t specialized HealthAffinityScorer.isExplicitlySupported(usoTask:)()
{
  v0 = type metadata accessor for UsoIdentifier();
  v57 = *(v0 - 8);
  v1 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v56 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v38 - v4;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v60[3])
  {
    outlined init with copy of Any?(v60, v59);
    type metadata accessor for UsoTask_open_common_HealthLog();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_create_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_delete_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_update_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_noVerb_common_HealthLog(), swift_dynamicCast()) || (type metadata accessor for UsoTask_requestLog_common_HealthLog(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      outlined destroy of Any?(v60);
      result = specialized static HealthNLUtils.extractHealthLog(from:)();
      if (!result)
      {
        return result;
      }

      v6 = result;
      if (specialized static HealthNLUtils.hasHealthDataType(from:)(result))
      {
LABEL_10:

        return 1;
      }

      if (dispatch thunk of UsoEntity_common_HealthLog.value.getter())
      {
        v7 = dispatch thunk of UsoEntity_common_Measurement.components.getter();

        if (v7)
        {
          v8 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v7 >> 62)
          {
            goto LABEL_75;
          }

          v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
          v39 = v7;
          v38[1] = v6;
          if (v9)
          {
            v10 = 0;
            v7 = 0;
            v47 = v39 + 32;
            v48 = v39 & 0xC000000000000001;
            v53 = v57 + 16;
            v50 = (v57 + 8);
            v11 = MEMORY[0x1E69E7CC0];
            v51 = v0;
            v52 = (v57 + 32);
            v41 = v8;
            v40 = v9;
            while (1)
            {
              if (v48)
              {
                v6 = MEMORY[0x1E12A1FE0](v10, v39);
                v12 = __OFADD__(v10++, 1);
                if (v12)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                if (v10 >= *(v8 + 16))
                {
                  goto LABEL_74;
                }

                v6 = *(v47 + 8 * v10);

                v12 = __OFADD__(v10++, 1);
                if (v12)
                {
                  goto LABEL_73;
                }
              }

              dispatch thunk of CodeGenListEntry.entry.getter();
              v13 = v59[0];
              if (!v59[0])
              {
                goto LABEL_42;
              }

              v14 = dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter();
              if (!v14)
              {
                break;
              }

              v15 = v14;
              v46 = v13;
              v16 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
              if (!v16)
              {

                swift_arrayDestroy();
                goto LABEL_43;
              }

              v42 = v15;
              v43 = v6;
              v44 = v11;
              v45 = v10;
              v17 = v49;
              v55 = *(v16 + 16);
              if (v55)
              {
                v6 = 0;
                v18 = MEMORY[0x1E69E7CC0];
                v54 = v16;
                while (v6 < *(v16 + 16))
                {
                  v19 = (*(v57 + 80) + 32) & ~*(v57 + 80);
                  v20 = *(v57 + 72);
                  (*(v57 + 16))(v17, v16 + v19 + v20 * v6, v0);
                  v21 = v17;
                  v22 = UsoIdentifier.namespace.getter();
                  if (v23)
                  {
                    v24 = v22;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  if (v23)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = 0xE000000000000000;
                  }

                  v60[0] = v24;
                  v60[1] = v25;
                  MEMORY[0x1EEE9AC00](v22);
                  v38[-2] = v60;
                  v8 = v0;
                  v26 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v38[-4], &outlined read-only object #0 of HealthAffinityScorer.isExplicitlySupported(usoTask:));

                  if (v26)
                  {
                    v27 = *v52;
                    (*v52)(v56, v21, v8);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v58 = v18;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v17 = v21;
                    }

                    else
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
                      v17 = v49;
                      v18 = v58;
                    }

                    v30 = *(v18 + 16);
                    v29 = *(v18 + 24);
                    if (v30 >= v29 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
                      v17 = v49;
                      v18 = v58;
                    }

                    *(v18 + 16) = v30 + 1;
                    v0 = v51;
                    v27((v18 + v19 + v30 * v20), v56, v51);
                  }

                  else
                  {
                    (*v50)(v21, v8);
                    v17 = v21;
                    v0 = v8;
                  }

                  ++v6;
                  v16 = v54;
                  if (v55 == v6)
                  {
                    goto LABEL_50;
                  }
                }

                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v9 = __CocoaSet.count.getter();
                goto LABEL_15;
              }

              v18 = MEMORY[0x1E69E7CC0];
LABEL_50:

              swift_arrayDestroy();

              v33 = *(v18 + 16);

              v6 = v33 != 0;
              v11 = v44;
              v34 = swift_isUniquelyReferenced_nonNull_native();
              v8 = v41;
              v9 = v40;
              v10 = v45;
              if ((v34 & 1) == 0)
              {
LABEL_51:
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
              }

LABEL_44:
              v32 = *(v11 + 2);
              v31 = *(v11 + 3);
              if (v32 >= v31 >> 1)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v11);
              }

              *(v11 + 2) = v32 + 1;
              v11[v32 + 32] = v6;
              if (v10 == v9)
              {
                goto LABEL_56;
              }
            }

LABEL_42:

LABEL_43:
            v6 = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_44;
          }

          v11 = MEMORY[0x1E69E7CC0];
LABEL_56:

          v35 = *(v11 + 2);
          v36 = (v11 + 32);
          while (v35)
          {
            v37 = *v36++;
            --v35;
            if (v37 == 1)
            {

              goto LABEL_10;
            }
          }
        }
      }

      return 0;
    }

    type metadata accessor for UsoTask_checkExistence_common_MedicationEvent();
    if (swift_dynamicCast())
    {
      goto LABEL_71;
    }

    type metadata accessor for UsoTask_create_common_MedicationEvent();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_snooze_common_MedicationEvent(), swift_dynamicCast()) || (type metadata accessor for UsoTask_checkExistence_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_delete_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_update_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_create_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_summarise_common_MedicationSchedule(), swift_dynamicCast()) || (type metadata accessor for UsoTask_request_common_MedicationSchedule(), swift_dynamicCast()))
    {
LABEL_71:

      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      outlined destroy of Any?(v60);
      return 1;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  outlined destroy of Any?(v60);
  return 0;
}

SiriKitRuntime::HomeAutomationAffinityScorer __swiftcall HomeAutomationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CB00;
  v1 = 0xD00000000000002FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall UsoEntitySpan.anyPropertiesMatch(key:value:)(Swift::String key, Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v24 = key._object;
  v2 = key._countAndFlagsBits;
  v3 = type metadata accessor for SpanProperty();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UsoEntitySpan.properties.getter();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v23 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v22 = v4 + 16;
    v12 = (v4 + 8);
    do
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return v8;
      }

      (*(v4 + 16))(v7, v23 + *(v4 + 72) * v11, v3);
      if (SpanProperty.key.getter() == v2 && v13 == v24)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v15 = SpanProperty.valueString.getter();
      if (!v16)
      {
LABEL_3:
        LOBYTE(v8) = (*v12)(v7, v3);
        goto LABEL_4;
      }

      if (v15 == countAndFlagsBits && v16 == object)
      {

        (*v12)(v7, v3);
LABEL_17:

        LOBYTE(v8) = 1;
        return v8;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v8) = (*v12)(v7, v3);
      if (v17)
      {
        goto LABEL_17;
      }

LABEL_4:
      ++v11;
    }

    while (v10 != v11);
  }

  LOBYTE(v8) = 0;
  return v8;
}

unint64_t HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    if (a1 == 8)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001BLL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000017;
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
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000012;
    if (a1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (!a1)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace()
{
  HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HomeAutomationAffinityScorer.HomeAutomationNamespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HomeAutomationAffinityScorer.HomeAutomationNamespace@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationAffinityScorer.HomeAutomationNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for kHAGeneralNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHAGeneralNamespaceMatches);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kHAGeneralNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches;
}

uint64_t one-time initialization function for kHAExactNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHAExactNamespaceMatches);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kHAExactNamespaceMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHAExactNamespaceMatches);
  result = swift_arrayDestroy();
  static SystemCommandsAffinityScorer.kHAExactNamespaceMatches = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kHAExactNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kHAExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kHAExactNamespaceMatches;
}

uint64_t *HomeAutomationAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kAppBundleIdMatches;
}

uint64_t one-time initialization function for kSummariseSettingStrictValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kSummariseSettingStrictValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kSummariseSettingStrictValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kSummariseSettingStrictValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kSummariseSettingStrictValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kSummariseSettingStrictValues;
}

uint64_t one-time initialization function for kPauseOrResumeSettingStrictValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kPauseOrResumeSettingStrictValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kPauseOrResumeSettingStrictValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kPauseOrResumeSettingStrictValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kPauseOrResumeSettingStrictValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kPauseOrResumeSettingStrictValues;
}

uint64_t one-time initialization function for kVacuumingOrMoppingEntityTagStrictValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kVacuumingOrMoppingEntityTagStrictValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kVacuumingOrMoppingEntityTagStrictValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues;
}

uint64_t one-time initialization function for kHKEntityTypes()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHKEntityTypes);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kHKEntityTypes = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kHKEntityTypes);
  result = swift_arrayDestroy();
  static SystemCommandsAffinityScorer.kHKEntityTypes = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kHKEntityTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for kHKEntityTypes != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kHKEntityTypes;
}

uint64_t one-time initialization function for kLockRelatedValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kLockRelatedValues);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kLockRelatedValues = v0;
  return result;
}

uint64_t *HomeAutomationAffinityScorer.kLockRelatedValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kLockRelatedValues != -1)
  {
    swift_once();
  }

  return &static HomeAutomationAffinityScorer.kLockRelatedValues;
}

uint64_t HomeAutomationAffinityScorer.HAMatchConditions.description.getter(uint64_t a1, __int16 a2)
{
  _StringGuts.grow(_:)(315);
  MEMORY[0x1E12A1580](0xD000000000000036, 0x80000001DCA83FA0);
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v4, v5);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA83FE0);
  if ((a1 & 0x100) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v6, v7);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA84000);
  if ((a1 & 0x10000) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v8, v9);

  MEMORY[0x1E12A1580](0xD00000000000001DLL, 0x80000001DCA84020);
  if ((a1 & 0x1000000) != 0)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if ((a1 & 0x1000000) != 0)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v10, v11);

  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84040);
  if ((a1 & 0x100000000) != 0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v12, v13);

  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84070);
  if ((a1 & 0x10000000000) != 0)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v14, v15);

  MEMORY[0x1E12A1580](0xD000000000000017, 0x80000001DCA840A0);
  if ((a1 & 0x1000000000000) != 0)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if ((a1 & 0x1000000000000) != 0)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v16, v17);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA840C0);
  if ((a1 & 0x100000000000000) != 0)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v18, v19);

  MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA840E0);
  if (a2)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (a2)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v20, v21);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA84110);
  if ((a2 & 0x100) != 0)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if ((a2 & 0x100) != 0)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v22, v23);

  MEMORY[0x1E12A1580](32010, 0xE200000000000000);
  return 0;
}

SiriKitRuntime::HomeAutomationAffinityScorer::HAMatchConditions __swiftcall HomeAutomationAffinityScorer.HAMatchConditions.init(haSpanGeneralMatch:haSpanExactMatch:haSpanMatch:haSpanLemmatizationMatch:homeKitEntityTypeExactMatch:homeKitEntityTypeFuzzyMatch:appBundleIdMatch:placeHintGeneralMatch:visionOSExceptionWordMatch:iOSLockRequest:)(Swift::Bool haSpanGeneralMatch, Swift::Bool haSpanExactMatch, Swift::Bool haSpanMatch, Swift::Bool haSpanLemmatizationMatch, Swift::Bool homeKitEntityTypeExactMatch, Swift::Bool homeKitEntityTypeFuzzyMatch, Swift::Bool appBundleIdMatch, Swift::Bool placeHintGeneralMatch, Swift::Bool visionOSExceptionWordMatch, Swift::Bool iOSLockRequest)
{
  if (haSpanExactMatch)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFELL | haSpanGeneralMatch;
  v12 = 0x10000;
  if (!haSpanMatch)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!haSpanLemmatizationMatch)
  {
    v13 = 0;
  }

  v14 = v11 | v12 | v13;
  v15 = 0x100000000;
  if (!homeKitEntityTypeExactMatch)
  {
    v15 = 0;
  }

  v16 = 0x10000000000;
  if (!homeKitEntityTypeFuzzyMatch)
  {
    v16 = 0;
  }

  v17 = 0x1000000000000;
  if (!appBundleIdMatch)
  {
    v17 = 0;
  }

  v18 = v15 | v16;
  v19 = 0x100000000000000;
  if (!placeHintGeneralMatch)
  {
    v19 = 0;
  }

  v20 = v14 | v18 | v17;
  if (iOSLockRequest)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 & 0xFFFE | visionOSExceptionWordMatch;
  v23 = v20 | v19;
  result.haSpanGeneralMatch = v23;
  result.haSpanExactMatch = BYTE1(v23);
  result.haSpanMatch = BYTE2(v23);
  result.haSpanLemmatizationMatch = BYTE3(v23);
  result.homeKitEntityTypeExactMatch = BYTE4(v23);
  result.homeKitEntityTypeFuzzyMatch = BYTE5(v23);
  result.appBundleIdMatch = BYTE6(v23);
  result.placeHintGeneralMatch = HIBYTE(v23);
  result.visionOSExceptionWordMatch = v22;
  result.iOSLockRequest = HIBYTE(v22);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HomeAutomationAffinityScorer.HAMatchConditions()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  v3 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if ((v0[4] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v0[6] & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v6 | v7;
  v10 = 0x100000000000000;
  if ((v0[7] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = v5 | v9 | v8;
  if (v0[9])
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return HomeAutomationAffinityScorer.HAMatchConditions.description.getter(v11 | v10, v12 & 0xFFFE | v0[8] & 1u);
}

uint64_t HomeAutomationAffinityScorer.HomeAppEntityType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E45656369766544;
  v2 = 0x746E45656E656353;
  v3 = 0x79726F6765746143;
  if (a1 != 3)
  {
    v3 = 0x69746E456D6F6F52;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x69746E45656D6F48;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000079746974;
  v3 = 0x6E45656369766544;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x746E45656E656353;
  v7 = 0xEB00000000797469;
  v8 = 0x79726F6765746143;
  v9 = 0xEE00797469746E45;
  if (v4 != 3)
  {
    v8 = 0x69746E456D6F6F52;
    v9 = 0xEA00000000007974;
  }

  if (v4 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0x69746E45656D6F48;
  v11 = 0xEA00000000007974;
  if (!*a1)
  {
    v10 = 0x6E45656369766544;
    v11 = 0xEC00000079746974;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = 0x746E45656E656353;
  v15 = 0xEB00000000797469;
  v16 = 0x79726F6765746143;
  v17 = 0xEE00797469746E45;
  if (v5 != 3)
  {
    v16 = 0x69746E456D6F6F52;
    v17 = 0xEA00000000007974;
  }

  if (v5 != 2)
  {
    v14 = v16;
    v15 = v17;
  }

  if (*a2)
  {
    v3 = 0x69746E45656D6F48;
    v2 = 0xEA00000000007974;
  }

  if (*a2 <= 1u)
  {
    v18 = v3;
  }

  else
  {
    v18 = v14;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v15;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HomeAutomationAffinityScorer.HomeAppEntityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HomeAutomationAffinityScorer.HomeAppEntityType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HomeAutomationAffinityScorer.HomeAppEntityType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HomeAutomationAffinityScorer.HomeAppEntityType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E45656369766544;
  v5 = 0xEB00000000797469;
  v6 = 0x746E45656E656353;
  v7 = 0xEE00797469746E45;
  v8 = 0x79726F6765746143;
  if (v2 != 3)
  {
    v8 = 0x69746E456D6F6F52;
    v7 = 0xEA00000000007974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69746E45656D6F48;
    v3 = 0xEA00000000007974;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t HomeAutomationAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "HomeAutomationAffinityScorer - [Default] Got unexpected parse", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    return 2;
  }

  v118 = a3;
  (*(v13 + 96))(v16, v12);
  (*(v8 + 32))(v11, v16, v7);
  v17 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v17)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.executor);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DC659000, v26, v27, "HomeAutomationAffinityScorer - [Unsupported] Could not extract uso task", v28, 2u);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

    goto LABEL_16;
  }

  v18 = v17;
  v113 = a2;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.homeKitProvider.getter();

  v19 = dispatch thunk of HomeKitProvider.areHomesConfigured(refresh:)();

  if (v19)
  {
    v116 = 1;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.executor);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v30, v31, "HomeAutomationAffinityScorer - Refreshing home configuration", v32, 2u);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    static SiriEnvironment.default.getter();
    SiriEnvironment.homeKitProvider.getter();

    v116 = dispatch thunk of HomeKitProvider.areHomesConfigured(refresh:)();
  }

  v112 = a4;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v117 = __swift_project_value_buffer(v33, static Logger.executor);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v115 = v7;
    v38 = v8;
    v39 = v37;
    v119 = v37;
    *v36 = 136315138;
    static SiriEnvironment.default.getter();
    SiriEnvironment.homeKitProvider.getter();

    v40 = dispatch thunk of HomeKitProvider.debugInfo.getter();
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v119);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_1DC659000, v34, v35, "HomeAutomationAffinityScorer - Home configuration is %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v44 = v39;
    v8 = v38;
    v7 = v115;
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  v45 = specialized static AffinityScorerUtils.getEntitySpans(_:)();
  v46 = specialized HomeAutomationAffinityScorer.scorePauseOrResumeSetting(usoTask:usoEntitySpans:for:)(v18, v45, v11);
  if (v46 != 5)
  {
    v78 = v46;
    (*(v8 + 8))(v11, v7);

    return v78;
  }

  v110 = v18;
  v111 = v8;
  v47 = specialized HomeAutomationAffinityScorer.hasGeneralNamespaceMatch(_:)(v45);
  LODWORD(v48) = specialized HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:)();
  v49 = specialized HomeAutomationAffinityScorer.hasNamespaceMatch(_:)(v45);
  v50 = specialized HomeAutomationAffinityScorer.hasSpanLemmatizationMatch(_:)(v45);
  LODWORD(v115) = specialized HomeAutomationAffinityScorer.hasHKExactMatch(_:)(v45);
  v114 = specialized HomeAutomationAffinityScorer.hasHKFuzzyMatch(_:)(v45);
  v109 = specialized HomeAutomationAffinityScorer.hasAppBundleIdMatch(_:)(v45);
  LODWORD(v51) = specialized HomeAutomationAffinityScorer.hasPlaceHintMatch(_:)(v45);
  v52 = specialized HomeAutomationAffinityScorer.isiOSLockRequest(_:)(v45);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = os_log_type_enabled(v53, v54);
  v106 = v52;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v108 = v48;
    v48 = v56;
    v57 = swift_slowAlloc();
    v107 = v51;
    v51 = v57;
    v119 = v57;
    *v48 = 136315138;
    if (v108)
    {
      v58 = 256;
    }

    else
    {
      v58 = 0;
    }

    v59 = v58 & 0xFFFFFFFFFFFFFFFELL | v47 & 1;
    v60 = 0x10000;
    if (!v49)
    {
      v60 = 0;
    }

    v61 = 0x1000000;
    if (!v50)
    {
      v61 = 0;
    }

    v62 = v59 | v60 | v61;
    v63 = 0x100000000;
    if ((v115 & 1) == 0)
    {
      v63 = 0;
    }

    v64 = 0x10000000000;
    if (!v114)
    {
      v64 = 0;
    }

    v65 = 0x1000000000000;
    if ((v109 & 1) == 0)
    {
      v65 = 0;
    }

    v66 = v63 | v64;
    v67 = 0x100000000000000;
    if ((v107 & 1) == 0)
    {
      v67 = 0;
    }

    v68 = v62 | v66 | v65;
    v69 = (v68 | v67);
    if (v52)
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = HomeAutomationAffinityScorer.HAMatchConditions.description.getter(v68 | v67, v70);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v119);

    *(v48 + 4) = v73;
    _os_log_impl(&dword_1DC659000, v53, v54, "HomeAutomationAffinityScorer - MatchConditions computed:\n%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v74 = v51;
    LOBYTE(v51) = v107;
    MEMORY[0x1E12A2F50](v74, -1, -1);
    v75 = v48;
    LOBYTE(v48) = v108;
    MEMORY[0x1E12A2F50](v75, -1, -1);

    v77 = v114;
    v76 = v115;
  }

  else
  {

    if (v48)
    {
      v79 = 256;
    }

    else
    {
      v79 = 0;
    }

    v80 = v79 & 0xFFFFFFFFFFFFFFFELL | v47 & 1;
    v81 = 0x10000;
    if (!v49)
    {
      v81 = 0;
    }

    v82 = 0x1000000;
    if (!v50)
    {
      v82 = 0;
    }

    v83 = v80 | v81 | v82;
    v77 = v114;
    v76 = v115;
    v84 = 0x100000000;
    if ((v115 & 1) == 0)
    {
      v84 = 0;
    }

    v85 = 0x10000000000;
    if (!v114)
    {
      v85 = 0;
    }

    v86 = 0x1000000000000;
    if ((v109 & 1) == 0)
    {
      v86 = 0;
    }

    v87 = v84 | v85;
    v88 = 0x100000000000000;
    if ((v51 & 1) == 0)
    {
      v88 = 0;
    }

    v69 = (v83 | v87 | v86 | v88);
    LOBYTE(v70) = 0;
  }

  v89 = v110;
  v90 = specialized HomeAutomationAffinityScorer.scoreSummariseSetting(usoTask:_:)(v110, v69);
  v8 = v111;
  if (v90 != 5)
  {
    v91 = v90;
    (*(v111 + 8))(v11, v7);

    return v91;
  }

  if (v116)
  {
    if (HomeAutomationAffinityScorer.isOverrideScore(_:_:_:)(v89, v69, v70))
    {
      (*(v8 + 8))(v11, v7);

      return 4;
    }

    if (!(v76 & 1 | ((v106 & 1) == 0) | (v77 | v48) & 1 | v51 & 1))
    {
      (*(v8 + 8))(v11, v7);

      return 1;
    }

    if (HomeAutomationAffinityScorer.isHighScore(_:_:_:)(v89, v69))
    {
      (*(v8 + 8))(v11, v7);

      return 3;
    }

    if (specialized HomeAutomationAffinityScorer.isDefaultScore(_:_:_:)(v89, v69))
    {
      (*(v8 + 8))(v11, v7);

      return 2;
    }

    v93 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v105))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      v98 = "HomeAutomationAffinityScorer - [Low] Found no HomeAutomation spans";
      v99 = v105;
      v100 = v93;
      v101 = v97;
      v102 = 2;
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  v92 = v51;
  v93 = Logger.logObject.getter();
  if (((v51 | v48) & 1) == 0)
  {
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_1DC659000, v93, v103, "HomeAutomationAffinityScorer - [Unsupported] No home configured.", v104, 2u);
      MEMORY[0x1E12A2F50](v104, -1, -1);
    }

LABEL_16:
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = v48;
    v97 = v95;
    *v95 = 67109632;
    *(v95 + 8) = 1024;
    *(v95 + 10) = v92 & 1;
    *(v95 + 14) = 1024;
    *(v95 + 16) = v96 & 1;
    v98 = "HomeAutomationAffinityScorer - [Low]\nHome configured: %{BOOL}d &\n(placeHintGeneralMatch: %{BOOL}d || HASpanExactMatch: %{BOOL}d)";
    v99 = v94;
    v100 = v93;
    v101 = v95;
    v102 = 20;
LABEL_72:
    _os_log_impl(&dword_1DC659000, v100, v99, v98, v101, v102);
    MEMORY[0x1E12A2F50](v97, -1, -1);
  }

LABEL_73:

  (*(v8 + 8))(v11, v7);
  return 1;
}

uint64_t HomeAutomationAffinityScorer.isOverrideScore(_:_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for RRCandidate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  if (a3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = 1;
      _os_log_impl(&dword_1DC659000, v19, v20, "HomeAutomationAffinityScorer - usoEntitySpansConditions.visionOSExceptionWordMatch is %{BOOL}d", v21, 8u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    return 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.executor);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "HomeAutomationAffinityScorer - [Override] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && HomeKitEntityType.ExactMatch", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      return 1;
    }

    v22 = v15;
    v23 = UsoTask.arguments.getter();
    if (*(v23 + 16))
    {
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
      if (v25)
      {
        v26 = *(*(v23 + 56) + 8 * v24);

        if (v26 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_13:
            if ((v26 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12A1FE0](0, v26);
              swift_unknownObjectRelease();
            }

            else
            {
              v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (!v27)
              {
                __break(1u);
LABEL_33:
                swift_once();
LABEL_26:
                v33 = type metadata accessor for Logger();
                __swift_project_value_buffer(v33, static Logger.executor);
                (*(v10 + 16))(v13, v17, v22);
                v34 = Logger.logObject.getter();
                v35 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  v45 = v44;
                  *v36 = 136315138;
                  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x1E69D2828]);
                  v37 = dispatch thunk of CustomStringConvertible.description.getter();
                  v39 = v38;
                  v40 = *(v10 + 8);
                  v40(v13, v22);
                  v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v45);

                  *(v36 + 4) = v41;
                  _os_log_impl(&dword_1DC659000, v34, v35, "HomeAutomationAffinityScorer - [Override] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && HasSRRMatch %s", v36, 0xCu);
                  v42 = v44;
                  __swift_destroy_boxed_opaque_existential_1Tm(v44);
                  MEMORY[0x1E12A2F50](v42, -1, -1);
                  MEMORY[0x1E12A2F50](v36, -1, -1);

                  v40(v17, v22);
                }

                else
                {

                  v43 = *(v10 + 8);
                  v43(v13, v22);
                  v43(v17, v22);
                }

                return 1;
              }
            }

            HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(v8);
            if ((*(v10 + 48))(v8, 1, v22) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
              return 0;
            }

            (*(v10 + 32))(v17, v8, v22);
            if (one-time initialization token for executor == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_33;
          }
        }

        else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }
      }
    }
  }

  return 0;
}

uint64_t HomeAutomationAffinityScorer.isHighScore(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for RRCandidate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  if ((a2 & 0x100) == 0 || (a2 & 1) == 0)
  {
    if ((~a2 & 0x100000000010000) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.executor);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_36;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && PlaceHintGeneralMatches";
      goto LABEL_35;
    }

    if ((a2 & 0x100000000) != 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.executor);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_36;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\nHomeKitEntityType.ExactMatch";
      goto LABEL_35;
    }

    v49 = v13;
    v22 = UsoTask.arguments.getter();
    if (*(v22 + 16))
    {
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);

        if (v25 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_17:
            if ((v25 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12A1FE0](0, v25);
            }

            else
            {
              if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_46;
              }

              v26 = *(v25 + 32);
            }

            v27 = *(dispatch thunk of UsoValue.getEntitySpans()() + 16);

            if (v27)
            {

              if ((a2 & 0x1000000) == 0)
              {
                return 0;
              }

LABEL_31:
              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v30 = type metadata accessor for Logger();
              __swift_project_value_buffer(v30, static Logger.executor);
              v17 = Logger.logObject.getter();
              v18 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v17, v18))
              {
                goto LABEL_36;
              }

              v19 = swift_slowAlloc();
              *v19 = 0;
              v20 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition: Lemmatization alias matches a HA entity";
              goto LABEL_35;
            }

            HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(v6);
            if ((*(v8 + 48))(v6, 1, v49) == 1)
            {

              outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
              if ((a2 & 0x1000000) != 0)
              {
                goto LABEL_31;
              }

              return 0;
            }

            (*(v8 + 32))(v15, v6, v49);
            if (one-time initialization token for executor == -1)
            {
LABEL_39:
              v31 = type metadata accessor for Logger();
              __swift_project_value_buffer(v31, static Logger.executor);
              (*(v8 + 16))(v11, v15, v49);
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                v47 = v34;
                v48 = swift_slowAlloc();
                v50 = v48;
                *v34 = 136315138;
                lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x1E69D2828]);
                v35 = v49;
                v36 = dispatch thunk of CustomStringConvertible.description.getter();
                v38 = v37;
                v39 = *(v8 + 8);
                v39(v11, v35);
                v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v50);

                v41 = v47;
                *(v47 + 1) = v40;
                v42 = v33;
                v43 = v41;
                _os_log_impl(&dword_1DC659000, v32, v42, "HomeAutomationAffinityScorer - [High] Found salient HA entity %s", v41, 0xCu);
                v44 = v48;
                __swift_destroy_boxed_opaque_existential_1Tm(v48);
                MEMORY[0x1E12A2F50](v44, -1, -1);
                MEMORY[0x1E12A2F50](v43, -1, -1);

                v39(v15, v35);
              }

              else
              {

                v45 = *(v8 + 8);
                v46 = v49;
                v45(v11, v49);
                v45(v15, v46);
              }

              return 1;
            }

LABEL_46:
            swift_once();
            goto LABEL_39;
          }
        }

        else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }
    }

    if ((a2 & 0x1000000) != 0)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_36;
  }

  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\nGeneralNamespaceMatches && ExactNameSpaceMatch";
LABEL_35:
  _os_log_impl(&dword_1DC659000, v17, v18, v20, v19, 2u);
  MEMORY[0x1E12A2F50](v19, -1, -1);
LABEL_36:

  return 1;
}

BOOL UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(uint64_t a1)
{
  v29 = type metadata accessor for SpanProperty();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UsoEntitySpan.properties.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v25 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v30;
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v11 = *(v9 + 64);
    v24[1] = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v27 = *(v9 + 56);
    v28 = v10;
    v26 = (v9 - 8);
    do
    {
      v13 = v29;
      v14 = v9;
      v28(v5, v12, v29);
      v15 = SpanProperty.key.getter();
      v17 = v16;
      (*v26)(v5, v13);
      v30 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v12 += v27;
      --v7;
      v9 = v14;
    }

    while (v7);

    a1 = v25;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v8);

  v22 = specialized Set.isDisjoint(with:)(v21, a1);

  return (v22 & 1) == 0;
}

BOOL UsoEntitySpan.anyPropertiesValueMatchAny(value:)(uint64_t a1)
{
  v2 = type metadata accessor for SpanProperty();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UsoEntitySpan.properties.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v22[1] = v7;
    v23 = a1;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v25 = *(v9 + 56);
    v26 = v10;
    v12 = MEMORY[0x1E69E7CC0];
    v24 = v9;
    v10(v6, v11, v2);
    while (1)
    {
      v14 = SpanProperty.valueString.getter();
      v16 = v15;
      (*(v9 - 8))(v6, v2);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v13 = &v12[16 * v18];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v11 += v25;
      if (!--v8)
      {
        break;
      }

      v26(v6, v11, v2);
    }

    a1 = v23;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v12);

  v20 = specialized Set.isDisjoint(with:)(v19, a1);

  return (v20 & 1) == 0;
}

uint64_t static SpanMatchAccuracy.from(matchInfo:)@<X0>(char *a1@<X8>)
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v3 = *(matched - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatchInfo.MatchSignals.partialMatch.getter();
  v7 = MatchInfo.hasMatchSignals(_:)();
  v8 = *(v3 + 8);
  result = v8(v6, matched);
  if (v7 & 1) != 0 || (static MatchInfo.MatchSignals.approximateMatch.getter(), v10 = MatchInfo.hasMatchSignals(_:)(), result = v8(v6, matched), (v10))
  {
    v11 = 1;
  }

  else
  {
    static MatchInfo.MatchSignals.aliasMatch.getter();
    v12 = MatchInfo.hasMatchSignals(_:)();
    result = v8(v6, matched);
    if (v12)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }
  }

  *a1 = v11;
  return result;
}

uint64_t UsoEntitySpan.anyPropertiesKeyAndValueMatchAny(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpanProperty();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UsoEntitySpan.properties.getter();
  v29 = *(result + 16);
  if (!v29)
  {
LABEL_28:

    return 0;
  }

  v12 = 0;
  v31 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v30 = v7 + 16;
  v32 = (v7 + 8);
  v33 = result;
  v13 = a3 + 56;
  v27 = a2;
  v28 = a1;
  while (1)
  {
    if (v12 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    (*(v7 + 16))(v10, v31 + *(v7 + 72) * v12, v6);
    if (SpanProperty.key.getter() == a1 && v14 == a2)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        (*v32)(v10, v6);
        goto LABEL_4;
      }
    }

    v16 = SpanProperty.valueString.getter();
    v18 = v17 ? v16 : 0;
    v19 = v17 ? v17 : 0xE000000000000000;
    if (*(a3 + 16))
    {
      break;
    }

    (*v32)(v10, v6);

    a1 = v28;
LABEL_4:
    result = v33;
    if (++v12 == v29)
    {
      goto LABEL_28;
    }
  }

  v20 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v21 = Hasher._finalize()();
  v22 = -1 << *(a3 + 32);
  v23 = v21 & ~v22;
  if (((*(v13 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
LABEL_25:
    (*v32)(v10, v6);

    a2 = v27;
    a1 = v28;
    goto LABEL_4;
  }

  v24 = ~v22;
  while (1)
  {
    v25 = (*(a3 + 48) + 16 * v23);
    v26 = *v25 == v18 && v25[1] == v19;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v23 = (v23 + 1) & v24;
    if (((*(v13 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  (*v32)(v10, v6);

  return 1;
}

uint64_t HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RRCandidate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriEnvironment.salientEntitiesProvider.getter();
  v7 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v3 + 8);
    while (v9 < *(v7 + 16))
    {
      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
      if (closure #1 in HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(v6))
      {

        (*(v3 + 32))(a1, v6, v2);
        v11 = 0;
        return (*(v3 + 56))(a1, v11, 1, v2);
      }

      ++v9;
      (*v10)(v6, v2);
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    result = (*v10)(v6, v2);
    __break(1u);
  }

  else
  {
LABEL_6:

    v11 = 1;
    return (*(v3 + 56))(a1, v11, 1, v2);
  }

  return result;
}

BOOL closure #2 in HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = type metadata accessor for UsoEntitySpan();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v27[0] = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v10, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v18 = *(v12 + 48);
  v19 = v18(v10, 1, v11);
  v27[1] = a1;
  if (v19 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v20 = MEMORY[0x1E129C880](v17, a1);
    (*(v12 + 8))(v17, v11);
    if (v20)
    {
      return 0;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v7, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  if (v18(v7, 1, v11) != 1)
  {
    v21 = v27[0];
    (*(v12 + 32))(v27[0], v7, v11);
    v22 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #2 in HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:));
    outlined destroy of String(&unk_1F5827A10);
    v23 = UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(v22);

    if (!v23)
    {
      (*(v12 + 8))(v21, v11);
      goto LABEL_10;
    }

    v24 = UsoEntitySpan.indexesMatch(_:)();
    (*(v12 + 8))(v21, v11);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
LABEL_10:
  if (UsoEntitySpan.hasNLFuzzyMatch()() || UsoEntitySpan.hasVocabFuzzyMatch()())
  {
    return 0;
  }

  if (one-time initialization token for kHAExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(static HomeAutomationAffinityScorer.kHAExactNamespaceMatches);
}

Swift::Bool __swiftcall UsoEntitySpan.hasNLFuzzyMatch()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v16 = type metadata accessor for PayloadAttachmentInfo();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v3, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    return 0;
  }

  PayloadAttachmentInfo.attachmentType.getter();
  (*(v17 + 8))(v3, v16);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  (*(v9 + 32))(v15, v7, v8);
  (*(v9 + 104))(v12, *MEMORY[0x1E69D1B60], v8);
  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  return v20[1] == v20[0];
}

Swift::Bool __swiftcall UsoEntitySpan.hasVocabFuzzyMatch()()
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v1 = *(matched - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for MatchInfo();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpan.matchInfo.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    static MatchInfo.MatchSignals.approximateMatch.getter();
    v15 = MatchInfo.hasMatchSignals(_:)();
    v16 = *(v1 + 8);
    v16(v4, matched);
    if (v15 & 1) != 0 || (static MatchInfo.MatchSignals.partialMatch.getter(), v17 = MatchInfo.hasMatchSignals(_:)(), v16(v4, matched), (v17))
    {
      (*(v10 + 8))(v13, v9);
      v14 = 1;
    }

    else
    {
      static MatchInfo.MatchSignals.aliasMatch.getter();
      v14 = MatchInfo.hasMatchSignals(_:)();
      v16(v4, matched);
      (*(v10 + 8))(v13, v9);
    }
  }

  return v14 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.hasExactMatch()()
{
  v0 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  v5 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v55 - v6;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v61 = *(matched - 8);
  v62 = matched;
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v55 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v55 - v24;
  v26 = type metadata accessor for MatchInfo();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpan.matchInfo.getter();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v31 = &_s12SiriOntology9MatchInfoVSgMd;
    v32 = &_s12SiriOntology9MatchInfoVSgMR;
    v33 = v25;
LABEL_3:
    outlined destroy of ReferenceResolutionClientProtocol?(v33, v31, v32);
LABEL_12:
    v48 = 0;
    return v48 & 1;
  }

  v56 = v4;
  v34 = v0;
  v35 = *(v27 + 32);
  v59 = v30;
  v35(v30, v25, v26);
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v36 = type metadata accessor for PayloadAttachmentInfo();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v14, 1, v36) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    v38 = v64;
    v39 = v34;
    (*(v1 + 56))(v64, 1, 1, v34);
  }

  else
  {
    v38 = v64;
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v37 + 8))(v14, v36);
    v39 = v34;
  }

  static MatchInfo.MatchSignals.exactMatch.getter();
  v40 = v59;
  v41 = MatchInfo.hasMatchSignals(_:)();
  (*(v61 + 8))(v10, v62);
  v42 = v63;
  if ((v41 & 1) == 0)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v27 + 8))(v40, v26);
    goto LABEL_12;
  }

  (*(v1 + 104))(v63, *MEMORY[0x1E69D1B58], v39);
  (*(v1 + 56))(v42, 0, 1, v39);
  v43 = *(v58 + 48);
  v44 = v60;
  outlined init with copy of ReferenceResolutionClientProtocol?(v38, v60, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v62 = v43;
  outlined init with copy of ReferenceResolutionClientProtocol?(v42, v44 + v43, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v45 = v38;
  v46 = v1;
  v47 = *(v1 + 48);
  if (v47(v44, 1, v39) != 1)
  {
    v50 = v57;
    outlined init with copy of ReferenceResolutionClientProtocol?(v44, v57, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v51 = v62;
    if (v47(v44 + v62, 1, v39) != 1)
    {
      v52 = *(v1 + 32);
      v62 = v1 + 8;
      v53 = v56;
      v52(v56, v44 + v51, v39);
      lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v46 + 8);
      v54(v53, v39);
      outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      (*(v27 + 8))(v59, v26);
      v54(v57, v39);
      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      return v48 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v27 + 8))(v59, v26);
    (*(v1 + 8))(v50, v39);
    goto LABEL_16;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  (*(v27 + 8))(v59, v26);
  if (v47(v44 + v62, 1, v39) != 1)
  {
LABEL_16:
    v31 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd;
    v32 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR;
    v33 = v44;
    goto LABEL_3;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v48 = 1;
  return v48 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.hasApproximateHighScoreMatch()()
{
  v58 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v56 = *(v58 - 8);
  v0 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - v14;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v16 = *(matched - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v53 - v22;
  v24 = type metadata accessor for MatchInfo();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpan.matchInfo.getter();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
LABEL_14:
    v45 = 0;
    return v45 & 1;
  }

  (*(v25 + 32))(v28, v23, v24);
  static MatchInfo.MatchSignals.approximateMatch.getter();
  v29 = MatchInfo.hasMatchSignals(_:)();
  (*(v16 + 8))(v19, matched);
  if ((v29 & 1) == 0 || (v30 = MatchInfo.matchScore.getter(), (v30 & 0x100000000) != 0))
  {
LABEL_13:
    (*(v25 + 8))(v28, v24);
    goto LABEL_14;
  }

  v31 = *&v30;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v32 = type metadata accessor for PayloadAttachmentInfo();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v7, 1, v32) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    v34 = v56;
    v35 = v60;
    v36 = v58;
    (*(v56 + 56))(v60, 1, 1, v58);
    v37 = v57;
  }

  else
  {
    v38 = v60;
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v33 + 8))(v7, v32);
    v35 = v38;
    v37 = v57;
    v36 = v58;
    v34 = v56;
  }

  v39 = v59;
  if (v31 <= 0.7)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    goto LABEL_13;
  }

  (*(v34 + 104))(v59, *MEMORY[0x1E69D1B58], v36);
  (*(v34 + 56))(v39, 0, 1, v36);
  v40 = *(v55 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v35, v37, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v58 = v40;
  v41 = v37 + v40;
  v42 = v36;
  outlined init with copy of ReferenceResolutionClientProtocol?(v39, v41, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v43 = v34;
  v44 = *(v34 + 48);
  if (v44(v37, 1, v42) != 1)
  {
    v47 = v54;
    outlined init with copy of ReferenceResolutionClientProtocol?(v37, v54, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v48 = v58;
    if (v44(v37 + v58, 1, v42) != 1)
    {
      v49 = v43 + 32;
      v50 = v37 + v48;
      v51 = v53;
      (*(v43 + 32))(v53, v50, v42);
      lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68]);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v49 - 24);
      v52(v51, v42);
      outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      (*(v25 + 8))(v28, v24);
      v52(v54, v42);
      outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      return v45 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v25 + 8))(v28, v24);
    (*(v43 + 8))(v47, v42);
    goto LABEL_18;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  (*(v25 + 8))(v28, v24);
  if (v44(v37 + v58, 1, v42) != 1)
  {
LABEL_18:
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
    goto LABEL_14;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v45 = 1;
  return v45 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.anyPropertiesKeyMatchAny(value:)(Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v31 = type metadata accessor for SpanProperty();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UsoEntitySpan.properties.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v26 = countAndFlagsBits;
    v27 = object;
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v32;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    v25 = v7;
    v13 = v7 + ((v12 + 32) & ~v12);
    v29 = *(v10 + 56);
    v30 = v11;
    v28 = (v10 - 8);
    do
    {
      v14 = v31;
      v15 = v10;
      v30(v6, v13, v31);
      v16 = SpanProperty.key.getter();
      v18 = v17;
      (*v28)(v6, v14);
      v32 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v9 = v32;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += v29;
      --v8;
      v10 = v15;
    }

    while (v8);

    countAndFlagsBits = v26;
    object = v27;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v9);

  v23 = specialized Set.contains(_:)(countAndFlagsBits, object, v22);

  return v23 & 1;
}

uint64_t closure #1 in HomeAutomationAffinityScorer.smartHomeSalientEntity(environment:)(uint64_t a1)
{
  v81 = type metadata accessor for SpanProperty();
  v63 = *(v81 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for IdentifierNamespace();
  v4 = *(v73 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UsoEntitySpan();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RREntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v59 = a1;
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v18 = *(v12 + 8);
  v58 = v11;
  v57 = v12 + 8;
  v55 = v18;
  v18(v17, v11);
  v19 = UsoEntity.attributes.getter();

  if (!*(v19 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656D616ELL, 0xE500000000000000), (v21 & 1) == 0))
  {

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v17 = *(*(v19 + 56) + 8 * v20);

  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v17 + 32);

    while (1)
    {

      v24 = dispatch thunk of UsoValue.getEntitySpans()();

LABEL_8:
      v71 = *(v24 + 16);
      if (!v71)
      {
        break;
      }

      v25 = 0;
      v70 = v24 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v69 = v74 + 16;
      v68 = *MEMORY[0x1E69D1B18];
      v67 = (v4 + 13);
      v66 = (v4 + 1);
      v78 = (v63 + 8);
      v79 = v63 + 16;
      v65 = (v74 + 8);
      v64 = xmmword_1DCA66060;
      v62 = v7;
      v61 = v10;
      v60 = v24;
      while (v25 < *(v24 + 16))
      {
        v26 = *(v74 + 72);
        v77 = v25;
        (*(v74 + 16))(v10, v70 + v26 * v25, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v64;
        v29 = v72;
        v28 = v73;
        (*v67)(v72, v68, v73);
        v30 = IdentifierNamespace.rawValue.getter();
        v32 = v31;
        (*v66)(v29, v28);
        *(inited + 32) = v30;
        *(inited + 40) = v32;
        v33 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of String(inited + 32);
        v34 = UsoEntitySpan.properties.getter();
        v35 = *(v34 + 16);
        if (v35)
        {
          v76 = v33;
          v83 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
          v4 = v83;
          v36 = *(v63 + 80);
          v75 = v34;
          v37 = v34 + ((v36 + 32) & ~v36);
          v82 = *(v63 + 72);
          v38 = *(v63 + 16);
          do
          {
            v39 = v80;
            v40 = v81;
            v38(v80, v37, v81);
            v41 = SpanProperty.key.getter();
            v43 = v42;
            (*v78)(v39, v40);
            v83 = v4;
            v45 = v4[2];
            v44 = v4[3];
            if (v45 >= v44 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
              v4 = v83;
            }

            v4[2] = v45 + 1;
            v46 = &v4[2 * v45];
            v46[4] = v41;
            v46[5] = v43;
            v37 += v82;
            --v35;
          }

          while (v35);

          v7 = v62;
          v10 = v61;
          v24 = v60;
          v33 = v76;
        }

        else
        {

          v4 = MEMORY[0x1E69E7CC0];
        }

        v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);

        v47 = specialized Set.isDisjoint(with:)(v17, v33);

        (*v65)(v10, v7);
        if ((v47 & 1) == 0)
        {

          v48 = 1;
          goto LABEL_22;
        }

        v25 = v77 + 1;
        if (v77 + 1 == v71)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_28:
      MEMORY[0x1E12A1FE0](0, v17);
    }

LABEL_20:

    v48 = 0;
LABEL_22:
    v49 = v56;
    RRCandidate.entity.getter();
    v50 = RREntity.appBundleId.getter();
    v52 = v51;
    v55(v49, v58);
    if (v50 == 0xD00000000000001CLL && 0x80000001DCA84150 == v52)
    {

      v53 = 1;
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v53 = v48 | v54;
    }

    return v53 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t UsoEntitySpan.containsSubstring(in:substring:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = v15[1];
    v10 &= v10 - 1;
    v25 = *v15;
    v26 = v16;
    v23 = v21;
    v24 = v22;
    v17 = type metadata accessor for Locale();
    v18 = 1;
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol.range<A>(of:options:range:locale:)();
    v20 = v19;
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    if ((v20 & 1) == 0)
    {
LABEL_13:

      return v18;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v10 = *(a1 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall UsoEntitySpan.anyPropertiesValueContainAny(value:)(Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v3 = type metadata accessor for SpanProperty();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UsoEntitySpan.properties.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = countAndFlagsBits;
    v26 = object;
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = *(v10 + 64);
    v24 = v8;
    v13 = v8 + ((v12 + 32) & ~v12);
    v28 = *(v10 + 56);
    v29 = v11;
    v14 = MEMORY[0x1E69E7CC0];
    v27 = v10;
    v11(v7, v13, v3);
    while (1)
    {
      v16 = SpanProperty.valueString.getter();
      v18 = v17;
      (*(v10 - 8))(v7, v3);
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v15 = &v14[16 * v20];
        *(v15 + 4) = v16;
        *(v15 + 5) = v18;
      }

      v13 += v28;
      if (!--v9)
      {
        break;
      }

      v29(v7, v13, v3);
    }

    countAndFlagsBits = v25;
    object = v26;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v14);

  v22 = UsoEntitySpan.containsSubstring(in:substring:)(v21, countAndFlagsBits, object);

  return v22 & 1;
}

Swift::Bool __swiftcall UsoEntitySpan.isAttachmentFull()()
{
  v0 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v21 = type metadata accessor for PayloadAttachmentInfo();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    (*(v1 + 56))(v20, 1, 1, v0);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v22 + 8))(v11, v21);
  }

  (*(v1 + 104))(v17, *MEMORY[0x1E69D1B58], v0);
  (*(v1 + 56))(v17, 0, 1, v0);
  v23 = *(v4 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v20, v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v17, &v7[v23], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v24 = *(v1 + 48);
  if (v24(v7, 1, v0) != 1)
  {
    v26 = v31;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v31, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v24(&v7[v23], 1, v0) != 1)
    {
      v27 = v30;
      (*(v1 + 32))(v30, &v7[v23], v0);
      lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v1 + 8);
      v28(v27, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      v28(v26, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      return v25 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v1 + 8))(v26, v0);
    goto LABEL_9;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if (v24(&v7[v23], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
    v25 = 0;
    return v25 & 1;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v25 = 1;
  return v25 & 1;
}

unint64_t SpanMatchAccuracy.description.getter()
{
  v1 = 0x746365667265702ELL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x614D7361696C612ELL;
  }

  if (*v0)
  {
    v1 = 0x6C6169747261702ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

SiriKitRuntime::SpanMatchAccuracy_optional __swiftcall SpanMatchAccuracy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 4;
  }

  else
  {
    v2 = 4 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpanMatchAccuracy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](4 - v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpanMatchAccuracy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](4 - v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpanMatchAccuracy()
{
  v1 = 0x746365667265702ELL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x614D7361696C612ELL;
  }

  if (*v0)
  {
    v1 = 0x6C6169747261702ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized HomeAutomationAffinityScorer.extractHasDefiniteReferenceFromPauseOrResumeParse(_:)()
{
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v1 = *(v0 - 8);
  v65 = v0;
  v66 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v63 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v62 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v62 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v62 - v27;
  if (specialized static AffinityScorerUtils.getTask(_:)())
  {
    static UsoTask_CodegenConverter.convert(task:)();
    if (v71)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v70, v69, &_sypSgMd, &_sypSgMR);
      type metadata accessor for UsoTask_pause_uso_NoEntity();
      if (swift_dynamicCast())
      {
        v29 = v68;

        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        v64 = v29;

        if (v67 && (v30 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v30))
        {
          dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

          v31 = v65;
          v32 = v66;
        }

        else
        {
          v31 = v65;
          v32 = v66;
          (*(v66 + 56))(v28, 1, 1, v65);
        }

        (*(v32 + 104))(v25, *MEMORY[0x1E69D2070], v31);
        (*(v32 + 56))(v25, 0, 1, v31);
        v41 = *(v4 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol?(v28, v9, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v25, &v9[v41], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v42 = *(v32 + 48);
        if (v42(v9, 1, v31) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          if (v42(&v9[v41], 1, v31) == 1)
          {
            v43 = v9;
LABEL_31:
            outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
            v44 = 1;
LABEL_39:
            __swift_destroy_boxed_opaque_existential_1Tm(v69);
            outlined destroy of ReferenceResolutionClientProtocol?(v70, &_sypSgMd, &_sypSgMR);
            return v44 & 1;
          }

          goto LABEL_26;
        }

        outlined init with copy of ReferenceResolutionClientProtocol?(v9, v22, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        if (v42(&v9[v41], 1, v31) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          (*(v66 + 8))(v22, v31);
LABEL_26:
          v45 = v9;
LABEL_36:
          outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
          v44 = 0;
          goto LABEL_39;
        }

        v50 = v66;
        v51 = &v9[v41];
        v52 = v63;
        (*(v66 + 32))(v63, v51, v31);
        lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x1E69D2078]);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();

        v53 = *(v50 + 8);
        v53(v52, v31);
        outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v53(v22, v31);
        v54 = v9;
LABEL_38:
        outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        goto LABEL_39;
      }

      type metadata accessor for UsoTask_resume_uso_NoEntity();
      if (swift_dynamicCast())
      {
        v37 = v68;

        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        v62[1] = v37;

        if (v67 && (v38 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v38))
        {
          dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

          v39 = v65;
          v40 = v66;
        }

        else
        {
          v39 = v65;
          v40 = v66;
          (*(v66 + 56))(v19, 1, 1, v65);
        }

        (*(v40 + 104))(v16, *MEMORY[0x1E69D2070], v39);
        (*(v40 + 56))(v16, 0, 1, v39);
        v46 = *(v4 + 48);
        v47 = v64;
        outlined init with copy of ReferenceResolutionClientProtocol?(v19, v64, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v16, v47 + v46, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v48 = *(v40 + 48);
        v49 = v39;
        if (v48(v47, 1, v39) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          if (v48(v47 + v46, 1, v39) == 1)
          {
            v43 = v47;
            goto LABEL_31;
          }
        }

        else
        {
          outlined init with copy of ReferenceResolutionClientProtocol?(v47, v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          if (v48(v47 + v46, 1, v39) != 1)
          {
            v55 = v66;
            v56 = v47 + v46;
            v57 = v47;
            v58 = v63;
            (*(v66 + 32))(v63, v56, v49);
            lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x1E69D2078]);
            v59 = v49;
            v44 = dispatch thunk of static Equatable.== infix(_:_:)();

            v60 = *(v55 + 8);
            v60(v58, v59);
            outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
            v60(v13, v59);
            v54 = v57;
            goto LABEL_38;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          v47 = v64;
          outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          (*(v66 + 8))(v13, v39);
        }

        v45 = v47;
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v70, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DC659000, v34, v35, "MessagesAffinityScorer Could not extract usoTask from parse", v36, 2u);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }
  }

  v44 = 0;
  return v44 & 1;
}

uint64_t specialized HomeAutomationAffinityScorer.scorePauseOrResumeSetting(usoTask:usoEntitySpans:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v194 = a3;
  v200 = type metadata accessor for SpanProperty();
  v203 = *(v200 - 8);
  v4 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v6 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v193 = &v189 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v195 = &v189 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v201 = &v189 - v12;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v198 = *(matched - 8);
  v14 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v16 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v205 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v213 = &v189 - v21;
  v22 = type metadata accessor for MatchInfo();
  v197 = *(v22 - 8);
  v23 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v211 = &v189 - v26;
  v27 = type metadata accessor for UsoEntitySpan();
  v202 = *(v27 - 8);
  v28 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v206 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v189 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v207 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v214 = &v189 - v36;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v227)
  {
    type metadata accessor for UsoTask_pause_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v37 = v224;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v225, &_sypSgMd, &_sypSgMR);
    v37 = 0;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v227)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v225, &_sypSgMd, &_sypSgMR);
    v41 = v214;
    if (v37)
    {
      v196 = 0;
      goto LABEL_16;
    }

    return 5;
  }

  type metadata accessor for UsoTask_resume_uso_NoEntity();
  v38 = swift_dynamicCast();
  v39 = v224;
  if (v38)
  {
    v40 = v224;
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v196 = v40;
    v41 = v214;
    goto LABEL_16;
  }

  v41 = v214;
  if (!v40)
  {
    return 5;
  }

  v196 = v39;
LABEL_16:
  v215 = matched;
  v192 = v32;
  v190 = v6;
  v199 = v37;

  v42 = *(a2 + 16);
  v43 = v27;
  v212 = v27;
  v223 = v22;
  v191 = a2;
  v222 = v42;
  if (v42)
  {
    v44 = *(v202 + 16);
    v45 = a2 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v219 = *(v202 + 72);
    v220 = v44;
    v218 = (v197 + 48);
    v209 = (v197 + 32);
    v46 = (v198 + 8);
    v208 = (v197 + 8);
    v221 = v202 + 16;
    v217 = v202 + 8;
    v47 = MEMORY[0x1E69E7CC0];
    v210 = v16;
    v48 = v213;
    while (1)
    {
      v49 = v46;
      v220(v41, v45, v43);
      UsoEntitySpan.matchInfo.getter();
      if ((*v218)(v48, 1, v22) != 1)
      {
        break;
      }

      (*v217)(v41, v43);
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      v46 = v49;
LABEL_19:
      v45 += v219;
      v42 = (v42 - 1);
      if (!v42)
      {
        goto LABEL_35;
      }
    }

    v216 = v47;
    v50 = v48;
    v51 = v43;
    v52 = v211;
    (*v209)(v211, v50, v22);
    static MatchInfo.MatchSignals.partialMatch.getter();
    v53 = MatchInfo.hasMatchSignals(_:)();
    v54 = *v49;
    v55 = v215;
    (*v49)(v16, v215);
    if (v53 & 1) != 0 || (static MatchInfo.MatchSignals.approximateMatch.getter(), v56 = MatchInfo.hasMatchSignals(_:)(), v54(v16, v55), (v56))
    {
      v22 = v223;
      (*v208)(v52, v223);
      v41 = v214;
      (*v217)(v214, v51);
      v47 = v216;
      v57 = 3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v57 = 3;
LABEL_29:
        v48 = v213;
        v61 = *(v47 + 2);
        v60 = *(v47 + 3);
        if (v61 >= v60 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v47);
          v46 = v49;
          v47 = v62;
        }

        else
        {
          v46 = v49;
        }

        *(v47 + 2) = v61 + 1;
        *&v47[8 * v61 + 32] = v57;
        v43 = v212;
        v16 = v210;
        goto LABEL_19;
      }
    }

    else
    {
      static MatchInfo.MatchSignals.aliasMatch.getter();
      v58 = MatchInfo.hasMatchSignals(_:)();
      v54(v16, v55);
      v22 = v223;
      (*v208)(v52, v223);
      v41 = v214;
      (*v217)(v214, v51);
      v47 = v216;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v58)
      {
        v57 = 1;
      }

      else
      {
        v57 = 4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }
    }

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
    goto LABEL_29;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v216 = specialized Sequence<>.max()(v47);
  v64 = v63;

  if (v64)
  {
    if ((specialized HomeAutomationAffinityScorer.extractHasDefiniteReferenceFromPauseOrResumeParse(_:)() & 1) == 0)
    {
      v91 = 5;
      goto LABEL_199;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.executor);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = "HomeAutomationAffinityScorer - [Low] Pause/resume task has definite reference";
LABEL_186:
      _os_log_impl(&dword_1DC659000, v66, v67, v69, v68, 2u);
      v91 = 1;
      goto LABEL_196;
    }

    goto LABEL_187;
  }

  v70 = v222;
  if (v222)
  {
    v219 = *(v202 + 16);
    v208 = ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v71 = v208 + v191;
    v221 = *(v202 + 72);
    v72 = (v197 + 48);
    v214 = (v197 + 32);
    v211 = (v197 + 8);
    v218 = (v202 + 8);
    v220 = (v202 + 16);
    v210 = (v202 + 32);
    v217 = MEMORY[0x1E69E7CC0];
    v73 = v215;
    v74 = v205;
    v75 = v204;
    v76 = v207;
    v213 = (v198 + 8);
    v209 = (v197 + 48);
    do
    {
      v222 = v70;
      v219(v76, v71, v43);
      UsoEntitySpan.matchInfo.getter();
      v77 = v223;
      if ((*v72)(v74, 1, v223) == 1)
      {
        (*v218)(v76, v43);
        outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      }

      else
      {
        v78 = v43;
        (*v214)(v75, v74, v77);
        static MatchInfo.MatchSignals.partialMatch.getter();
        v79 = MatchInfo.hasMatchSignals(_:)();
        v80 = *v213;
        (*v213)(v16, v73);
        if (v79 & 1) != 0 || (static MatchInfo.MatchSignals.approximateMatch.getter(), v81 = MatchInfo.hasMatchSignals(_:)(), v80(v16, v73), (v81))
        {
          v82 = v73;
          (*v211)(v75, v223);
          v83 = v216 == 3;
        }

        else
        {
          static MatchInfo.MatchSignals.aliasMatch.getter();
          v90 = MatchInfo.hasMatchSignals(_:)();
          v82 = v73;
          v80(v16, v73);
          (*v211)(v75, v223);
          if (v90)
          {
            v83 = v216 == 1;
          }

          else
          {
            v83 = v216 == 4;
          }
        }

        v43 = v78;
        v72 = v209;
        if (v83)
        {
          v84 = *v210;
          v76 = v207;
          (*v210)(v206, v207, v43);
          v85 = v217;
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v87 = v85;
          v225 = v85;
          if ((v86 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 16) + 1, 1);
            v87 = v225;
          }

          v89 = *(v87 + 16);
          v88 = *(v87 + 24);
          if (v89 >= v88 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1);
            v87 = v225;
          }

          *(v87 + 16) = v89 + 1;
          v217 = v87;
          v84(v208 + v87 + v89 * v221, v206, v43);
          v73 = v215;
          v74 = v205;
          v75 = v204;
        }

        else
        {
          v76 = v207;
          (*v218)(v207, v43);
          v73 = v82;
        }
      }

      v71 += v221;
      v70 = v222 - 1;
    }

    while (v222 != 1);
  }

  else
  {
    v217 = MEMORY[0x1E69E7CC0];
  }

  v92 = v217;
  v93 = *(v217 + 16);
  if (!v93)
  {
LABEL_182:

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v183 = type metadata accessor for Logger();
    __swift_project_value_buffer(v183, static Logger.executor);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = "HomeAutomationAffinityScorer - [Low] No matches specific to Pause/Resume, falling back to default logic.";
      goto LABEL_186;
    }

LABEL_187:
    v91 = 1;
    goto LABEL_198;
  }

  v94 = v43;
  v95 = 0;
  v96 = (v217 + ((*(v202 + 80) + 32) & ~*(v202 + 80)));
  v221 = 0x80000001DCA794E0;
  v223 = v203 + 16;
  v222 = (v203 + 8);
  v218 = 0x80000001DCA794A0;
  v216 = 0x80000001DCA79540;
  v219 = (v202 + 8);
  v220 = 0x80000001DCA79520;
  v97 = 0x1ECC91000uLL;
  v98 = &static AnnounceExecutionOverride.announceTypes;
  v99 = v200;
  v100 = v201;
  v101 = v192;
  v213 = v96;
  v214 = v93;
  v211 = (v202 + 16);
  while (1)
  {
    if (v95 >= *(v92 + 16))
    {
      goto LABEL_204;
    }

    v102 = *(v202 + 72);
    v215 = v95;
    (*(v202 + 16))(v101, &v96[v102 * v95], v94);
    if (*(v97 + 3824) != -1)
    {
      swift_once();
    }

    v103 = v98[28];
    v104 = UsoEntitySpan.properties.getter();
    v105 = v104;
    v106 = *(v104 + 16);
    if (!v106)
    {

      goto LABEL_94;
    }

    v107 = 0;
    v108 = v104 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
    v109 = v103 + 56;
    do
    {
      if (v107 >= *(v105 + 16))
      {
        __break(1u);
        goto LABEL_182;
      }

      (*(v203 + 16))(v100, v108 + *(v203 + 72) * v107, v99);
      if (SpanProperty.key.getter() == 0xD000000000000015 && v221 == v110)
      {
      }

      else
      {
        v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v111 & 1) == 0)
        {
          (*v222)(v100, v99);
          goto LABEL_70;
        }
      }

      v112 = v100;
      v113 = SpanProperty.valueString.getter();
      if (v114)
      {
        v115 = v113;
      }

      else
      {
        v115 = 0;
      }

      if (v114)
      {
        v116 = v114;
      }

      else
      {
        v116 = 0xE000000000000000;
      }

      if (*(v103 + 16))
      {
        v117 = *(v103 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v118 = Hasher._finalize()();
        v119 = -1 << *(v103 + 32);
        v120 = v118 & ~v119;
        if ((*(v109 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
        {
          v121 = ~v119;
          do
          {
            v122 = (*(v103 + 48) + 16 * v120);
            v123 = *v122 == v115 && v122[1] == v116;
            if (v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v184 = &v228;
LABEL_189:
              v185 = *(v184 - 32);
              goto LABEL_193;
            }

            v120 = (v120 + 1) & v121;
          }

          while (((*(v109 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) != 0);
        }

        v100 = v201;
        v99 = v200;
        (*v222)(v201, v200);
      }

      else
      {
        (*v222)(v112, v99);

        v100 = v112;
      }

LABEL_70:
      ++v107;
    }

    while (v107 != v106);

    v101 = v192;
LABEL_94:
    v124 = UsoEntitySpan.properties.getter();
    v125 = v124;
    v126 = *(v124 + 16);
    if (v126)
    {
      v127 = 0;
      v128 = v124 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
      v129 = v103 + 56;
      v130 = v195;
      while (1)
      {
        if (v127 >= *(v125 + 16))
        {
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          swift_once();
          goto LABEL_194;
        }

        (*(v203 + 16))(v130, v128 + *(v203 + 72) * v127, v99);
        if (SpanProperty.key.getter() == 0xD00000000000001BLL && v220 == v131)
        {
          break;
        }

        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v132)
        {
          goto LABEL_101;
        }

        v130 = v195;
        (*v222)(v195, v99);
LABEL_120:
        if (++v127 == v126)
        {

          v101 = v192;
          goto LABEL_123;
        }
      }

LABEL_101:
      v130 = v195;
      v133 = SpanProperty.valueString.getter();
      if (v134)
      {
        v135 = v133;
      }

      else
      {
        v135 = 0;
      }

      if (v134)
      {
        v136 = v134;
      }

      else
      {
        v136 = 0xE000000000000000;
      }

      if (*(v103 + 16))
      {
        v137 = *(v103 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v138 = Hasher._finalize()();
        v139 = -1 << *(v103 + 32);
        v140 = v138 & ~v139;
        if ((*(v129 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140))
        {
          v141 = ~v139;
          do
          {
            v142 = (*(v103 + 48) + 16 * v140);
            v143 = *v142 == v135 && v142[1] == v136;
            if (v143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v186 = &v226;
              goto LABEL_192;
            }

            v140 = (v140 + 1) & v141;
          }

          while (((*(v129 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) != 0);
        }

        v130 = v195;
        v99 = v200;
        (*v222)(v195, v200);
      }

      else
      {
        (*v222)(v130, v99);
      }

      v100 = v201;
      goto LABEL_120;
    }

LABEL_123:
    v144 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of HomeAutomationAffinityScorer.scorePauseOrResumeSetting(usoTask:usoEntitySpans:for:));
    outlined destroy of String(&unk_1F5824FA8);
    result = UsoEntitySpan.properties.getter();
    v146 = result;
    v147 = *(result + 16);
    if (v147)
    {
      break;
    }

LABEL_149:
    v98 = &static AnnounceExecutionOverride.announceTypes;
    if (one-time initialization token for kVacuumingOrMoppingEntityTagStrictValues != -1)
    {
      swift_once();
    }

    v164 = static HomeAutomationAffinityScorer.kVacuumingOrMoppingEntityTagStrictValues;
    result = UsoEntitySpan.properties.getter();
    v165 = result;
    v210 = *(result + 16);
    if (v210)
    {
      v166 = 0;
      v167 = result + ((*(v203 + 80) + 32) & ~*(v203 + 80));
      v168 = v164 + 56;
      while (1)
      {
        if (v166 >= *(v165 + 16))
        {
          goto LABEL_207;
        }

        (*(v203 + 16))(v190, v167 + *(v203 + 72) * v166, v99);
        if (SpanProperty.key.getter() == 0xD000000000000017 && v216 == v169)
        {
        }

        else
        {
          v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v170 & 1) == 0)
          {
            result = (*v222)(v190, v99);
            goto LABEL_177;
          }
        }

        v171 = v190;
        v172 = SpanProperty.valueString.getter();
        if (v173)
        {
          v174 = v172;
        }

        else
        {
          v174 = 0;
        }

        if (v173)
        {
          v175 = v173;
        }

        else
        {
          v175 = 0xE000000000000000;
        }

        if (*(v164 + 16))
        {
          v176 = *(v164 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v177 = Hasher._finalize()();
          v178 = -1 << *(v164 + 32);
          v179 = v177 & ~v178;
          if ((*(v168 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179))
          {
            v180 = ~v178;
            while (1)
            {
              v181 = (*(v164 + 48) + 16 * v179);
              v182 = *v181 == v174 && v181[1] == v175;
              if (v182 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v179 = (v179 + 1) & v180;
              if (((*(v168 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179) & 1) == 0)
              {
                goto LABEL_173;
              }
            }

            v184 = &v222;
            goto LABEL_189;
          }

LABEL_173:
          v99 = v200;
          (*v222)(v190, v200);
        }

        else
        {
          (*v222)(v171, v99);
        }

        v100 = v201;
LABEL_177:
        if (++v166 == v210)
        {

          v101 = v192;
          v98 = &static AnnounceExecutionOverride.announceTypes;
          goto LABEL_181;
        }
      }
    }

LABEL_181:
    v95 = v215 + 1;
    v94 = v212;
    (*v219)(v101);
    v96 = v213;
    v92 = v217;
    v97 = 0x1ECC91000;
    if (v95 == v214)
    {
      goto LABEL_182;
    }
  }

  v148 = 0;
  v149 = result + ((*(v203 + 80) + 32) & ~*(v203 + 80));
  v150 = v144 + 56;
  while (1)
  {
    if (v148 >= *(v146 + 16))
    {
      __break(1u);
LABEL_207:
      __break(1u);
      return result;
    }

    (*(v203 + 16))(v193, v149 + *(v203 + 72) * v148, v99);
    if (SpanProperty.key.getter() == 0xD000000000000013 && v218 == v151)
    {
      break;
    }

    v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v152)
    {
      goto LABEL_130;
    }

LABEL_146:
    ++v148;
    result = (*v222)(v193, v99);
    v100 = v201;
    if (v148 == v147)
    {

      v101 = v192;
      goto LABEL_149;
    }
  }

LABEL_130:
  v153 = SpanProperty.valueString.getter();
  if (v154)
  {
    v155 = v153;
  }

  else
  {
    v155 = 0;
  }

  if (v154)
  {
    v156 = v154;
  }

  else
  {
    v156 = 0xE000000000000000;
  }

  if (!*(v144 + 16) || (v157 = *(v144 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v158 = Hasher._finalize()(), v159 = -1 << *(v144 + 32), v160 = v158 & ~v159, ((*(v150 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) == 0))
  {
LABEL_145:

    v99 = v200;
    goto LABEL_146;
  }

  v161 = ~v159;
  while (1)
  {
    v162 = (*(v144 + 48) + 16 * v160);
    v163 = *v162 == v155 && v162[1] == v156;
    if (v163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v160 = (v160 + 1) & v161;
    if (((*(v150 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) == 0)
    {
      goto LABEL_145;
    }
  }

  v186 = &v225;
LABEL_192:
  v185 = *(v186 - 32);
LABEL_193:

  (*v222)(v185, v200);
  (*v219)(v192, v212);
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_205;
  }

LABEL_194:
  v187 = type metadata accessor for Logger();
  __swift_project_value_buffer(v187, static Logger.executor);
  v66 = Logger.logObject.getter();
  v188 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v188))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1DC659000, v66, v188, "HomeAutomationAffinityScorer - [High] Pause/Resume spans have HA entity.", v68, 2u);
    v91 = 3;
LABEL_196:
    MEMORY[0x1E12A2F50](v68, -1, -1);
  }

  else
  {
    v91 = 3;
  }

LABEL_198:

LABEL_199:

  return v91;
}