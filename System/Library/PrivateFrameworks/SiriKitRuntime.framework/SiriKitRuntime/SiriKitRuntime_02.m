uint64_t RunSiriKitExecutorProcessor.loggedStartOfCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationRuntimeClient.sendRunSiriKitExecutor(_:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:withBridgeDelegate:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v45 = a8;
  v46 = a5;
  v47 = a7;
  v48 = a1;
  v44 = a6;
  v49 = a3;
  v50 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v43 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)();
  v18 = *(v8 + 24);
  v17 = *(v8 + 32);
  v43 = *(v9 + 40);
  v19 = v43;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v15, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v17;
  v23[4] = v19;
  v24 = v48;
  v23[5] = v48;
  outlined init with take of SessionConfiguration?(v15, v23 + v20);
  v26 = v49;
  v25 = v50;
  *(v23 + v21) = v49;
  *(v23 + v22) = v25;
  v27 = v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = v46;
  v29 = v47;
  *v27 = v46;
  v27[8] = v44 & 1;
  v30 = (v23 + ((v22 + 31) & 0xFFFFFFFFFFFFFFF8));
  v31 = v45;
  *v30 = v29;
  v30[1] = v31;
  v32 = v28;
  swift_unknownObjectRetain();

  v33 = v43;

  v34 = v24;
  v35 = v26;
  v36 = v25;
  v37 = StaticString.description.getter();
  v39 = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = v18;
  *(v40 + 24) = v17;
  *(v40 + 32) = v33;
  *(v40 + 40) = "bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)";
  *(v40 + 48) = 157;
  *(v40 + 56) = 2;
  *(v40 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  *(v40 + 72) = v23;
  v41 = *(*v17 + 208);

  v41(v37, v39, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v40);
}

uint64_t sub_1DC689214()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = type metadata accessor for SessionConfiguration();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v0 + v12);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v2 | 7);
}

uint64_t RequestContextData.deviceRestrictions.getter()
{
  return Restrictions.deviceRestrictions.getter();
}

{
  return MEMORY[0x1EEE3B1F0]();
}

uint64_t outlined init with take of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t SiriKitEventContext.__deallocating_deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t InvocationScopedSiriKitEventSender.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AceServiceInvokerImpl.__deallocating_deinit()
{
  AceServiceInvokerImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t AceServiceInvokerImpl.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v6 = *(v0 + 152);

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  return v0;
}

uint64_t outlined destroy of ConversationService.EagerResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConversationService.ActiveTurn.deinit()
{
  outlined destroy of ConversationService.EagerResult(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData, type metadata accessor for RemoteConversationTurnData);
  v1 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker));
  v2 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_conversationLoggingId;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks);

  v5 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_needsASRReveal);

  v6 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_topNlParse);

  v7 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnInput);

  v8 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_nlResponseCode);

  v9 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem);

  return v0;
}

uint64_t ConversationService.ActiveTurn.__deallocating_deinit()
{
  ConversationService.ActiveTurn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void destroy for RemoteConversationTurnData(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 24);

  v6 = a2[6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v10 = a2[7];
  v11 = type metadata accessor for SessionConfiguration();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1 + v10, 1, v11))
  {
    (*(v12 + 8))(a1 + v10, v11);
  }

  v13 = a2[9];
  if (!v9(a1 + v13, 1, v7))
  {
    (*(v8 + 8))(a1 + v13, v7);
  }

  v14 = *(a1 + a2[10]);

  v15 = (a1 + a2[13]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    v17 = *v15;

    outlined consume of Data._Representation(v17, v16);
  }
}

uint64_t SubmissionTaskRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
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

uint64_t type metadata accessor for ExecutionOutput()
{
  result = type metadata singleton initialization cache for ExecutionOutput;
  if (!type metadata singleton initialization cache for ExecutionOutput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_11Tm(uint64_t *a1, uint64_t *a2, void (*a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v3 + v8, v5);
  a3(*(v3 + v9), *(v3 + v9 + 8));

  return MEMORY[0x1EEE6BDD0](v3, v9 + 9, v7 | 7);
}

void RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v8 = *(*(v116 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v116);
  v115 = &v107[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v107[-v11];
  v13 = type metadata accessor for RequestType();
  v122 = *(v13 - 8);
  v123 = v13;
  v14 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v107[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v107[-v18];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV_SbtMd, &_s16SiriMessageTypes6UserIDV_SbtMR);
  v20 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v107[-v21];
  v22 = type metadata accessor for UserID();
  v126 = *(v22 - 8);
  v23 = *(v126 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v114 = &v107[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v120 = &v107[-v27];
  MEMORY[0x1EEE9AC00](v26);
  v125 = &v107[-v28];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.conversationBridge);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v117 = v12;
  v127 = a3;
  v124 = v19;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v130[0] = v110;
    *v35 = 136315138;
    v36 = [v31 debugDescription];
    v37 = v31;
    v38 = v30;
    v39 = a2;
    v40 = v36;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v4;
    v42 = v41;
    v43 = v22;
    v45 = v44;

    a2 = v39;
    v30 = v38;
    v31 = v37;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, v130);
    v22 = v43;

    *(v35 + 4) = v46;
    v4 = v112;
    _os_log_impl(&dword_1DC659000, v32, v33, "<<<--- %s", v35, 0xCu);
    v47 = v110;
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x1E12A2F50](v47, -1, -1);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  v48 = (*(*v4 + 448))();
  v49 = Logger.logObject.getter();
  if ((v48 & 1) == 0)
  {
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v49, v54, "Handling submit() from Execution kicked off by RSKE", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    v56 = v124;
    RunSiriKitExecutorProcessor.userMetadata.getter(v124);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
    v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
    v113 = v22;
    v111 = v30;
    if (v58 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
      v59 = 0;
    }

    else
    {
      v112 = a2;
      v60 = v56[*(v57 + 48)];
      v61 = v118;
      v62 = v119;
      v63 = *(v119 + 48);
      v64 = *(v126 + 32);
      (v64)(v118, v56, v22);
      v61[v63] = v60;
      v65 = v61[*(v62 + 48)];
      v124 = v64;
      (v64)(v125, v61, v22);
      v66 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source);
      v109 = v31;
      LODWORD(v119) = v65;
      if (v66 > 1)
      {
        LODWORD(v118) = 1;
      }

      else
      {
        LODWORD(v118) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v67 = v121;
      v68 = v122;
      v69 = v123;
      v70 = (*(v122 + 16))(v121, v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType, v123);
      v110 = (*(*v4 + 472))(v70);
      v72 = v125;
      v71 = v126;
      v73 = v120;
      v74 = (*(v126 + 16))(v120, v125, v22);
      v75 = v109;
      v108 = (*((*MEMORY[0x1E69E7D40] & *v109) + 0xB8))(v74);
      (*(v71 + 8))(v72, v22);
      LOBYTE(v72) = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold);
      updated = type metadata accessor for ConversationContextUpdateMetadata();
      v77 = *(updated + 48);
      v78 = *(updated + 52);
      v59 = swift_allocObject();
      *(v59 + 16) = v118 & 1;
      v79 = v67;
      v31 = v75;
      (*(v68 + 32))(v59 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v79, v69);
      *(v59 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v110;
      (v124)(v59 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v73, v22);
      *(v59 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v108 & 1;
      *(v59 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v119;
      *(v59 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v72;
      a2 = v112;
    }

    v80 = v4[6];
    v81 = v4[17];
    v123 = v4[18];
    v124 = v81;
    v125 = v4[3];
    v82 = v4[19];
    v121 = v4[20];
    v122 = v82;
    v120 = v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId;
    v84 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
    v83 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId + 8);
    v85 = swift_allocObject();
    v85[2] = v4;
    v85[3] = v31;
    v85[4] = a2;
    v85[5] = v127;
    v86 = *(*v80 + 296);
    v87 = v31;

    v86(v87, v124, v123, 0, 0, v4 + 12, v125, v59, v122, v121, v120, v84, v83, partial apply for closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:), v85);

    if (*(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source))
    {
      if (*(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) != 1)
      {

        v88 = v113;
LABEL_26:
        v90 = *&v87[OBJC_IVAR___SKRExecutionOutput_command];
        if (v90)
        {
          objc_opt_self();
          v91 = swift_dynamicCastObjCClass();
          if (v91)
          {
            v92 = v91;
            outlined init with copy of ReferenceResolutionClientProtocol?((v4 + 12), v128, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
            if (v129)
            {
              v127 = v59;
              outlined init with take of NSExtensionProtocol(v128, v130);
              v93 = *(*v4 + 328);
              v94 = v90;
              v95 = v117;
              v93();
              v96 = v126;
              if ((*(v126 + 48))(v95, 1, v88) != 1)
              {
                v105 = v114;
                (*(v96 + 32))(v114, v95, v88);
                v106 = v130[4];
                __swift_project_boxed_opaque_existential_1(v130, v130[3]);
                specialized static ResponseTextExtractionUtil.extractResponseText(fromAddViews:)(v92);
                (*(v106 + 32))();

                (*(v96 + 8))(v105, v88);
                __swift_destroy_boxed_opaque_existential_1Tm(v130);
                return;
              }

              outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
              __swift_destroy_boxed_opaque_existential_1Tm(v130);
            }

            else
            {
              v97 = v90;
              outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
            }

            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v130[0] = v101;
              *v100 = 136315138;
              (*(*v4 + 328))();
              v102 = String.init<A>(describing:)();
              v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v130);

              *(v100 + 4) = v104;
              _os_log_impl(&dword_1DC659000, v98, v99, "Not updating response text because ContextUpdater is nil or userId = %s", v100, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v101);
              MEMORY[0x1E12A2F50](v101, -1, -1);
              MEMORY[0x1E12A2F50](v100, -1, -1);
            }
          }
        }

LABEL_36:

        return;
      }

      v88 = v113;
    }

    else
    {
      v88 = v113;
    }

    v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v89 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1DC659000, v49, v50, "Ignoring submit because request already finished", v51, 2u);
    MEMORY[0x1E12A2F50](v51, -1, -1);
  }

  lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
  v52 = swift_allocError();
  *v53 = 1;
  a2(0, v52);
}

uint64_t sub_1DC68AC9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void, void), uint64_t a13)
{
  v166 = a7;
  v171 = a6;
  v174 = a10;
  v176 = a9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v173 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v154 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v162 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v165 = &v154 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v164 = &v154 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v161 = &v154 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v170 = &v154 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v154 - v36;
  v175 = type metadata accessor for UUID();
  v38 = *(*(v175 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v175);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v154 - v42;
  if (!a1)
  {
    a12(0, 0);
    return;
  }

  v159 = v41;
  v160 = v40;
  v168 = a12;
  v169 = a13;
  v44 = a1;
  v163 = a3;
  v167 = v44;
  v45 = SABaseCommand.copyWithFilledInIdentifiers(requestId:requestIdOverride:)(a2, a3, a4, a5);
  if (v45)
  {
    v46 = v45;
    v158 = a2;
    v47 = SABaseCommand.isListenAfterSpeaking.getter();
    v48 = v177;
    v49 = v163;
    v50 = v175;
    if ((v47 & 1) == 0)
    {
      goto LABEL_31;
    }

    v51 = v170;
    if (a8)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v176, v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v52 = v160;
      if ((*(v160 + 48))(v37, 1, v50) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        (*(v52 + 32))(v43, v37, v50);
        if (v49)
        {
          ConversationOutputSubmitter.sendSiriWillPrompt(assistantId:sessionId:requestId:)();
          (*(v52 + 8))(v43, v50);
          goto LABEL_31;
        }

        (*(v52 + 8))(v43, v50);
      }
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.conversationBridge);
    outlined init with copy of ReferenceResolutionClientProtocol?(v176, v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v157 = v58;
      v59 = 0x3E6C696E3CLL;
      v60 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v60 = 136315650;
      if (a8)
      {
        v59 = v166;
        v61 = a8;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &aBlock);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = v161;
      outlined init with copy of ReferenceResolutionClientProtocol?(v51, v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v64 = v160;
      if ((*(v160 + 48))(v63, 1, v50) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v65 = 0xE500000000000000;
        v66 = 0x3E6C696E3CLL;
      }

      else
      {
        v155 = v57;
        v67 = v63;
        v66 = UUID.uuidString.getter();
        v65 = v68;
        v69 = v67;
        v57 = v155;
        (*(v64 + 8))(v69, v50);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v170, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, &aBlock);

      *(v60 + 14) = v70;
      *(v60 + 22) = 2080;
      if (v49)
      {
        v71 = v158;
      }

      else
      {
        v71 = 0x3E6C696E3CLL;
      }

      if (v49)
      {
        v72 = v49;
      }

      else
      {
        v72 = 0xE500000000000000;
      }

      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &aBlock);

      *(v60 + 24) = v73;
      _os_log_impl(&dword_1DC659000, v57, v157, "Cannot send SiriWillPrompt: one of assistantId(%s), sessionId(%s), or requestId(%s) is nil", v60, 0x20u);
      v74 = v156;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v74, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);

      v50 = v175;
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

LABEL_31:
    v75 = SABaseCommand.isConfirmation.getter();
    v77 = v172;
    v76 = v173;
    if (v75)
    {
      if (!a8)
      {
LABEL_38:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        __swift_project_value_buffer(v83, static Logger.conversationBridge);
        v84 = v165;
        outlined init with copy of ReferenceResolutionClientProtocol?(v176, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v85, v86))
        {
          LODWORD(v176) = v86;
          v87 = 0x3E6C696E3CLL;
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          aBlock = v89;
          *v88 = 136315650;
          if (a8)
          {
            v87 = v166;
            v90 = a8;
          }

          else
          {
            v90 = 0xE500000000000000;
          }

          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v90, &aBlock);

          *(v88 + 4) = v91;
          *(v88 + 12) = 2080;
          v92 = v162;
          outlined init with copy of ReferenceResolutionClientProtocol?(v84, v162, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v93 = v160;
          v94 = v175;
          if ((*(v160 + 48))(v92, 1, v175) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v95 = 0xE500000000000000;
            v96 = 0x3E6C696E3CLL;
          }

          else
          {
            v96 = UUID.uuidString.getter();
            v95 = v97;
            (*(v93 + 8))(v92, v94);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, &aBlock);

          *(v88 + 14) = v98;
          *(v88 + 22) = 2080;
          if (v163)
          {
            v99 = v158;
          }

          else
          {
            v99 = 0x3E6C696E3CLL;
          }

          if (v163)
          {
            v100 = v163;
          }

          else
          {
            v100 = 0xE500000000000000;
          }

          v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &aBlock);

          *(v88 + 24) = v101;
          _os_log_impl(&dword_1DC659000, v85, v176, "Cannot send SiriWillAskForConfirmation: one of assistantId(%s), sessionId(%s), or requestId(%s) is nil", v88, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v89, -1, -1);
          MEMORY[0x1E12A2F50](v88, -1, -1);

          v77 = v172;
          v76 = v173;
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        v48 = v177;
        goto LABEL_56;
      }

      v78 = v164;
      outlined init with copy of ReferenceResolutionClientProtocol?(v176, v164, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v79 = v160;
      if ((*(v160 + 48))(v78, 1, v50) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_38;
      }

      v80 = v159;
      (*(v79 + 32))(v159, v78, v50);
      if (!v49)
      {
        (*(v79 + 8))(v80, v50);
        goto LABEL_38;
      }

      v81 = v177;
      ConversationOutputSubmitter.sendSiriWillAskForConfirmation(assistantId:sessionId:requestId:)();
      v82 = v80;
      v48 = v81;
      (*(v79 + 8))(v82, v50);
    }

LABEL_56:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.conversationBridge);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_1DC659000, v103, v104, "Execution is sending SACFProvideContext which is deprecated in SKY since the handling of this command on server races with a new request. Please use ContextUpdater.SARDNativeFlowContextUpdate instead to ensure consistency of state management on server.", v105, 2u);
        MEMORY[0x1E12A2F50](v105, -1, -1);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v174, v77, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v106 = type metadata accessor for UserID();
      v107 = *(v106 - 8);
      v108 = (*(v107 + 48))(v77, 1, v106);
      v109 = v46;
      if (v108 == 1)
      {
        v110 = outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      }

      else
      {
        UserID.sharedUserId.getter();
        v110 = (*(v107 + 8))(v77, v106);
      }

      v111 = (*(*v48 + 176))(v110);
      specialized SAClientBoundCommand.setPersonaData(siriSharedUserIdentifier:muxContextMessage:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
    }

    v184 = &unk_1F5850288;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v174, v76, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v112 = type metadata accessor for UserID();
      v113 = *(v112 - 8);
      v114 = (*(v113 + 48))(v76, 1, v112);
      v115 = v46;
      if (v114 == 1)
      {
        v116 = outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      }

      else
      {
        UserID.sharedUserId.getter();
        v116 = (*(v113 + 8))(v76, v112);
      }

      v117 = (*(*v48 + 176))(v116);
      specialized SAClientBoundCommand.setPersonaData(siriSharedUserIdentifier:muxContextMessage:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
    }

    if (v171)
    {
      v118 = one-time initialization token for conversationBridge;
      v119 = v171;
      if (v118 != -1)
      {
        swift_once();
      }

      v120 = type metadata accessor for Logger();
      __swift_project_value_buffer(v120, static Logger.conversationBridge);
      v121 = v46;
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        aBlock = v125;
        *v124 = 136315138;
        v126 = [v121 debugDescription];
        v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v129 = v128;

        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &aBlock);

        *(v124 + 4) = v130;
        _os_log_impl(&dword_1DC659000, v122, v123, "Submitting FlowCommand: %s with commandExecutionInfo", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        MEMORY[0x1E12A2F50](v125, -1, -1);
        MEMORY[0x1E12A2F50](v124, -1, -1);
      }

      v131 = v169;
      v132 = v48[3];
      v133 = swift_allocObject();
      v134 = v168;
      v133[2] = v121;
      v133[3] = v134;
      v133[4] = v131;
      v182 = partial apply for closure #1 in ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:);
      v183 = v133;
      aBlock = MEMORY[0x1E69E9820];
      v179 = 1107296256;
      v180 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      v181 = &block_descriptor_9;
      v135 = _Block_copy(&aBlock);
      v136 = v121;
      v137 = v119;

      [v132 handleCommand:v136 withExecutionContextMatchingInfo:v137 completion:v135];

      _Block_release(v135);
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v138 = type metadata accessor for Logger();
      __swift_project_value_buffer(v138, static Logger.conversationBridge);
      v139 = v46;
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        aBlock = v143;
        *v142 = 136315138;
        v144 = [v139 debugDescription];
        v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v147 = v146;

        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, &aBlock);

        *(v142 + 4) = v148;
        _os_log_impl(&dword_1DC659000, v140, v141, "Submitting FlowCommand: %s", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        MEMORY[0x1E12A2F50](v143, -1, -1);
        MEMORY[0x1E12A2F50](v142, -1, -1);
      }

      v149 = v168;
      v150 = v169;
      v151 = v48[3];
      v152 = swift_allocObject();
      v152[2] = v139;
      v152[3] = v149;
      v152[4] = v150;
      v182 = partial apply for closure #2 in ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:);
      v183 = v152;
      aBlock = MEMORY[0x1E69E9820];
      v179 = 1107296256;
      v180 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      v181 = &block_descriptor_6;
      v153 = _Block_copy(&aBlock);
      v137 = v139;

      [v151 handleCommand:v137 completion:v153];

      _Block_release(v153);
    }

    return;
  }

  lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
  v53 = swift_allocError();
  *v54 = 15;
  v168(0, v53);

  v55 = v167;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);
  v7 = StaticString.description.getter();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v6;
  v11 = *(*v5 + 208);

  v11(v7, v9, &async function pointer to partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DC68C158()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t type metadata accessor for DecisionEngineResponse()
{
  result = type metadata singleton initialization cache for DecisionEngineResponse;
  if (!type metadata singleton initialization cache for DecisionEngineResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:), v8, 0);
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ConversationOutputSubmitter.submit(executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v109 = a7;
  v100 = a6;
  v98 = a5;
  v97 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v95 = &v92 - v23;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v24 = a14;
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.conversationBridge);

  v27 = a1;
  v104 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v110 = a3;
  v99 = a14;
  v105 = a2;
  v103 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v113[0] = v32;
    *v31 = 136315394;
    v33 = *&v27[OBJC_IVAR___SKRExecutionOutput_command];
    v96 = v16;
    if (v33)
    {
      v34 = [v33 aceId];
      if (v34)
      {
        v35 = v34;
        v36 = a8;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = v37;
        a8 = v36;
        a2 = v105;
      }

      else
      {
        v39 = 0xE300000000000000;
        v40 = 7104878;
      }
    }

    else
    {
      v40 = 7104878;
      v39 = 0xE300000000000000;
    }

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, v113);

    *(v31 + 4) = v41;
    *(v31 + 12) = 2080;
    if (v110)
    {
      v42 = a2;
    }

    else
    {
      v42 = 7104878;
    }

    if (v110)
    {
      v43 = v110;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v113);

    *(v31 + 14) = v44;
    _os_log_impl(&dword_1DC659000, v28, v29, "About to submit ExecutionOutput with AceCommand aceId: %s for requestId:<%s>", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v32, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);

    v24 = v99;
    v16 = v96;
    v27 = v103;
  }

  else
  {
  }

  v101 = a15;
  v45 = a12;
  v46 = a13;
  v108 = a10;
  v106 = a11;
  v107 = a9;
  v47 = (*(*v16 + 200))();
  v102 = a8;
  if (v47)
  {
    (*(*v47 + 424))(v113, v27);
    v94 = LOBYTE(v113[0]);
    v48 = v27;
    v49 = v110;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v93 = a12;
      v53 = v52;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v96 = v16;
      v92 = v55;
      v113[0] = v55;
      *v53 = 136315650;
      LOBYTE(v111) = v94;
      v56 = SelfReflectionAgentDecision.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v113);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      if (v49)
      {
        v59 = v105;
      }

      else
      {
        v59 = 7104878;
      }

      if (v49)
      {
        v60 = v49;
      }

      else
      {
        v60 = 0xE300000000000000;
      }

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v113);
      v46 = a13;

      *(v53 + 14) = v61;
      *(v53 + 22) = 2112;
      *(v53 + 24) = v48;
      *v54 = v48;
      v62 = v48;
      _os_log_impl(&dword_1DC659000, v50, v51, "Self reflection decision: <%s> for requestId:<%s> execution output: %@", v53, 0x20u);
      outlined destroy of ReferenceResolutionClientProtocol?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = v54;
      v24 = v99;
      MEMORY[0x1E12A2F50](v63, -1, -1);
      v64 = v92;
      swift_arrayDestroy();
      v16 = v96;
      MEMORY[0x1E12A2F50](v64, -1, -1);
      v65 = v53;
      v45 = v93;
      MEMORY[0x1E12A2F50](v65, -1, -1);
    }

    a8 = v102;
    v27 = v103;
    if (v94 != 2)
    {
      LOBYTE(v113[0]) = v94;
      (*(*v16 + 288))(v113, v48, v105, v110, v97, v98, v100, v109, v102, v107, v108, v106, v45, v46, v24, v101);
    }

    a2 = v105;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v100, &v111, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (!v112)
  {
    v75 = a2;
    v76 = v46;
    v77 = v45;
    outlined destroy of ReferenceResolutionClientProtocol?(&v111, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
LABEL_35:
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1DC659000, v78, v79, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v80, 2u);
      MEMORY[0x1E12A2F50](v80, -1, -1);
    }

    v81 = v110;
    v45 = v77;
    v46 = v76;
    a2 = v75;
    a8 = v102;
    goto LABEL_39;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v111, v113);
  if (!a8)
  {
    v75 = a2;
    v76 = v46;
    v77 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    goto LABEL_35;
  }

  v66 = *&v27[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
  if (v66)
  {
    v67 = v46;
    v93 = v45;
    v68 = *(*v16 + 152);

    v69 = v66;
    v70 = v68();
    v71 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v70 & 1);
    v72 = v114;
    v73 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    (*(v73 + 8))(v69, a8, v71, v72, v73);

    v24 = v99;
    v45 = v93;
    v46 = v67;
    a2 = v105;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  v81 = v110;
LABEL_39:
  ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v27, a2, v81, v109, v107, v108, v106, v45, v46);
  v82 = *&v27[OBJC_IVAR___SKRExecutionOutput_command];
  if (a8)
  {
    v83 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
    v84 = type metadata accessor for UserID();
    v85 = *(v84 - 8);
    v86 = a8 + v83;
    v81 = v110;
    v87 = v95;
    (*(v85 + 16))(v95, v86, v84);
    (*(v85 + 56))(v87, 0, 1, v84);
    v88 = *(a8 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
    v89 = *(a8 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
  }

  else
  {
    v90 = type metadata accessor for UserID();
    v87 = v95;
    (*(*(v90 - 8) + 56))(v95, 1, 1, v90);
    v89 = 0;
    v88 = 0;
  }

  HIBYTE(v91) = v89;
  LOBYTE(v91) = v88;
  (*(*v16 + 328))(v82, a2, v81, v97, v98, v109, v107, v108, v106, v87, v91, v24, v101);
  return outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
}

void ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v100 = a8;
  v101 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v85 - v18;
  v19 = v9[17];
  v20 = v9[18];
  v95 = v9;
  __swift_project_boxed_opaque_existential_1(v9 + 14, v19);
  if ((*(v20 + 16))(v19, v20))
  {
    v96 = a9;
    v93 = a3;
    ConversationOutputSubmitter.sendDialogEngineOutputMessageIfNecessary(output:requestId:assistantId:sessionId:)(a1, a2, a3, a5, a6, a7);
    v21 = *(a1 + OBJC_IVAR___SKRExecutionOutput_command);
    v97 = a7;
    v98 = a5;
    v90 = a2;
    if (v21)
    {
      v102 = &unk_1F5850288;
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (v22)
      {
        v23 = v22;
        v103[0] = MEMORY[0x1E69E7CC0];
        v24 = v21;
        ConversationOutputSubmitter.extractAllCommands(inside:results:)(v23, v103);
        v26 = v103[0];
        v94 = a6;
        v86 = a1;
        v85 = v24;
        if (v103[0] >> 62)
        {
          goto LABEL_54;
        }

        v27 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v28 = v93;
        v29 = v26;
        if (v27)
        {
          v26 = v27;
          v30 = 0;
          v92 = (v86 + OBJC_IVAR___SKRExecutionOutput_executionSource);
          v31 = (v86 + OBJC_IVAR___SKRExecutionOutput_inAppResponse);
          v99 = v29 & 0xC000000000000001;
          v89 = v29 & 0xFFFFFFFFFFFFFF8;
          *&v25 = 138412290;
          v87 = v25;
          v91 = (v86 + OBJC_IVAR___SKRExecutionOutput_inAppResponse);
          while (1)
          {
            if (v99)
            {
              MEMORY[0x1E12A1FE0](v30, v29);
              v33 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v30 >= *(v89 + 16))
              {
                goto LABEL_53;
              }

              v34 = *(v29 + 8 * v30 + 32);
              swift_unknownObjectRetain();
              v33 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                v27 = __CocoaSet.count.getter();
                goto LABEL_6;
              }
            }

            v104[0] = 0;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }
            }

            v36 = type metadata accessor for FlowOutputMessage.InAppResponse();
            if ((*(*(v36 - 8) + 48))(v31, 1, v36) != 1)
            {
              v35 = swift_unknownObjectRetain();
LABEL_26:
              MEMORY[0x1EEE9AC00](v35);
              v37 = v94;
              *(&v85 - 12) = v98;
              *(&v85 - 11) = v37;
              *(&v85 - 10) = v97;
              *(&v85 - 9) = a2;
              v38 = v100;
              *(&v85 - 8) = v28;
              *(&v85 - 7) = v38;
              *(&v85 - 6) = v96;
              *(&v85 - 5) = v104;
              v39 = v92;
              *(&v85 - 4) = v101;
              *(&v85 - 3) = v39;
              *(&v85 - 2) = v31;
              v40 = objc_allocWithZone(type metadata accessor for FlowOutputMessage());
              v41 = FlowOutputMessage.init(build:)();
              if (v41)
              {
                v42 = v26;
                v43 = v29;
                v44 = one-time initialization token for conversationBridge;
                v45 = v41;
                if (v44 != -1)
                {
                  swift_once();
                }

                v46 = type metadata accessor for Logger();
                __swift_project_value_buffer(v46, static Logger.conversationBridge);
                v47 = Logger.logObject.getter();
                v48 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v47, v48))
                {
                  v49 = swift_slowAlloc();
                  v50 = swift_slowAlloc();
                  *v49 = v87;
                  swift_beginAccess();
                  v51 = v104[0];
                  *(v49 + 4) = v104[0];
                  *v50 = v51;
                  v52 = v51;
                  _os_log_impl(&dword_1DC659000, v47, v48, "Mirroring FlowOutputMessage with command %@ to IntelligenceFlowBridge, but will also submit command directly.", v49, 0xCu);
                  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1E12A2F50](v50, -1, -1);
                  v53 = v49;
                  a2 = v90;
                  MEMORY[0x1E12A2F50](v53, -1, -1);
                }

                v32 = v95[8];
                __swift_project_boxed_opaque_existential_1(v95 + 4, v95[7]);
                dispatch thunk of MessagePublishing.postMessage(_:)();

                swift_unknownObjectRelease_n();
                v28 = v93;
                v29 = v43;
                v26 = v42;
                v31 = v91;
              }

              else
              {
                if (one-time initialization token for conversationBridge != -1)
                {
                  swift_once();
                }

                v54 = type metadata accessor for Logger();
                __swift_project_value_buffer(v54, static Logger.conversationBridge);
                v55 = Logger.logObject.getter();
                v56 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  *v57 = 0;
                  _os_log_impl(&dword_1DC659000, v55, v56, "Could not construct FlowOutputMessage. Missing fields?", v57, 2u);
                  v58 = v57;
                  v28 = v93;
                  MEMORY[0x1E12A2F50](v58, -1, -1);
                }

                swift_unknownObjectRelease_n();
              }

              goto LABEL_9;
            }

            swift_unknownObjectRelease();
LABEL_9:
            ++v30;
            if (v33 == v26)
            {
              goto LABEL_36;
            }
          }

          swift_unknownObjectRetain();
          v35 = SABaseCommand.copyWithFilledInIdentifiers(requestId:requestIdOverride:)(a2, v28, 0, 0);
          v104[0] = v35;
          goto LABEL_26;
        }

LABEL_36:

        a6 = v94;
        a1 = v86;
      }
    }

    v59 = (a1 + OBJC_IVAR___SKRExecutionOutput_inAppResponse);
    v60 = a6;
    v61 = v88;
    outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR___SKRExecutionOutput_inAppResponse, v88, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v62 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v63 = *(*(v62 - 8) + 48);
    v64 = v63(v61, 1, v62);
    outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    if (v64 != 1)
    {
      v65 = v98;
      v104[0] = 0;
      v66 = v63(v59, 1, v62);
      if (v66 != 1)
      {
        MEMORY[0x1EEE9AC00](v66);
        *(&v85 - 12) = v65;
        *(&v85 - 11) = v60;
        v67 = v96;
        *(&v85 - 10) = v97;
        *(&v85 - 9) = v90;
        *(&v85 - 8) = v93;
        *(&v85 - 7) = v100;
        *(&v85 - 6) = v67;
        *(&v85 - 5) = v104;
        *(&v85 - 4) = v101;
        *(&v85 - 3) = v68;
        *(&v85 - 2) = v59;
        v69 = objc_allocWithZone(type metadata accessor for FlowOutputMessage());
        v70 = FlowOutputMessage.init(build:)();
        if (v70)
        {
          v71 = one-time initialization token for conversationBridge;
          v72 = v70;
          if (v71 != -1)
          {
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          __swift_project_value_buffer(v73, static Logger.conversationBridge);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 138412290;
            swift_beginAccess();
            v78 = v104[0];
            *(v76 + 4) = v104[0];
            *v77 = v78;
            v79 = v78;
            _os_log_impl(&dword_1DC659000, v74, v75, "Mirroring FlowOutputMessage with command %@ to IntelligenceFlowBridge, but will also submit command directly.", v76, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v77, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v77, -1, -1);
            MEMORY[0x1E12A2F50](v76, -1, -1);
          }

          v80 = v95[8];
          __swift_project_boxed_opaque_existential_1(v95 + 4, v95[7]);
          dispatch thunk of MessagePublishing.postMessage(_:)();
        }

        else
        {
          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          __swift_project_value_buffer(v81, static Logger.conversationBridge);
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_1DC659000, v82, v83, "Could not construct FlowOutputMessage. Missing fields?", v84, 2u);
            MEMORY[0x1E12A2F50](v84, -1, -1);
          }
        }
      }
    }
  }
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(v4, v1, v2, ObjectType, v6);
  v8 = v0[1];

  return v8();
}

void RunSiriKitExecutorProcessorExecutionDelegate.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 544))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "RunSiriKitExecutorProcessor already released, ignoring sumbit of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v13 = swift_allocError();
    *v14 = 0;
    a2(0, v13);
  }
}

uint64_t ExecutionOutput.debugDescription.getter()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - v5;
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(118);
  MEMORY[0x1E12A1580](538976288, 0xE400000000000000);
  v7 = type metadata accessor for ExecutionOutput();
  v41.receiver = v0;
  v41.super_class = v7;
  v8 = objc_msgSendSuper2(&v41, sel_debugDescription);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  MEMORY[0x1E12A1580](v9, v11);

  MEMORY[0x1E12A1580](0x20202020207B20, 0xE700000000000000);
  v40 = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8]);
  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v12 = *&v1[OBJC_IVAR___SKRExecutionOutput_command];
  if (v12)
  {
    v13 = [v12 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v14, v16);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v17 = *&v1[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
  if (v17)
  {
    v18 = [v17 debugDescription];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE500000000000000;
    v19 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v19, v21);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_fullPrint + 8])
  {
    v22 = *&v1[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    v23 = String.debugDescription.getter();
    v25 = v24;
  }

  else
  {
    v25 = 0xE500000000000000;
    v23 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v23, v25);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 4;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8])
  {
    v26 = *&v1[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    v27 = String.debugDescription.getter();
    v29 = v28;
  }

  else
  {
    v29 = 0xE500000000000000;
    v27 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v27, v29);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 5;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8])
  {
    v30 = *&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    v31 = String.debugDescription.getter();
    v33 = v32;
  }

  else
  {
    v33 = 0xE500000000000000;
    v31 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v31, v33);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8])
  {
    v34 = *&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    v2 = String.debugDescription.getter();
    v36 = v35;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v2, v36);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v40 = 7;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  type metadata accessor for RequestSummary.ExecutionSource();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](538976288, 0xE400000000000000);
  v40 = 8;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR___SKRExecutionOutput_inAppResponse], v6, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v37 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v37);

  MEMORY[0x1E12A1580](0x7D20202020, 0xE500000000000000);
  return v42;
}

uint64_t RunSiriKitExecutorProcessor.userMetadata.getter@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for UserID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - v13;
  v14 = type metadata accessor for RequestType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E69D0538], v14);
  _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v39 == v37 && v40 == v38)
  {
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v15 + 8))(v18, v14);

    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  UserSessionState.activeUserSharedUserId.getter();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v24 = *(v9 + 32);
    v25 = v34;
    v24(v34, v7, v8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
    v27 = *(v26 + 48);
    v28 = v36;
    v24(v36, v25, v8);
    v28[v27] = 1;
    return (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
  }

  v20 = outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
LABEL_7:
  v21 = v35;
  (*(*v1 + 328))(v20);
  if ((*(v9 + 48))(v21, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
    return (*(*(v22 - 8) + 56))(v36, 1, 1, v22);
  }

  v29 = v33;
  (*(v9 + 32))(v33, v21, v8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
  v30 = *(v26 + 48);
  v28 = v36;
  v31 = (*(v9 + 16))(v36, v29, v8);
  v32 = (*(*v1 + 352))(v31);
  (*(v9 + 8))(v29, v8);
  v28[v30] = v32 & 1;
  return (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
}

uint64_t objectdestroy_35Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = one-time initialization token for shared;
  v21 = a3;
  swift_retain_n();
  v22 = v21;

  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = static MessageBusActor.shared;
  v24 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v25[4] = a1;
  v25[5] = v22;
  v25[6] = a7;
  v25[7] = v18;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, a8, v25);
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:), 0, 0);
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:)()
{
  *(v0 + 80) = *(*(v0 + 56) + 72);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:), v1, 0);
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

LABEL_8:
  *(v0 + 88) = v6;
  v5 = TaskLoggingEventSink.receiveAsync(_:_:);
  v2 = 0;
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v34 = v0;
  v1 = v0[9];
  v2 = v0[6];
  SiriKitEvent.overrides.getter();
  v3 = type metadata accessor for SiriKitEventOverrides();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[9];
  if (v5 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[9], &_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = SiriKitEventOverrides.taskId.getter();
    v8 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = specialized static TaskLoggingEventSink.computeEffectiveTask(_:_:)(v0[11], v7, v8);
  v0[12] = v10;

  if (v10)
  {
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = TaskLoggingEventSink.receiveAsync(_:_:);
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];

    return TaskLoggingEventSink.receiveAsync(_:_:_:)(v14, v12, v10);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v17 = v0[6];
    v16 = v0[7];
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.instrumentation);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[6];
      v22 = v0[7];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      v0[5] = v21;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = SiriKitEventContext.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DC659000, v19, v20, "TaskLoggingEventSink - No active task, dropping event: %s context: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v31 = v0[9];

    v32 = v0[1];

    return v32();
  }
}

{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:), 0, 0);
}

{
  v1 = v0[12];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t specialized static TaskLoggingEventSink.computeEffectiveTask(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 || a1 && (*(a1 + 16) == a2 ? (v11 = *(a1 + 24) == a3) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    static Date.now.getter();
    v12 = type metadata accessor for FlowTask(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    a1 = swift_allocObject();
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = 256;
    (*(v7 + 32))(a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v10, v6);
  }

  return a1;
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for SiriKitEventPayload();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for SiriKitReliabilityEvent();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), 0, 0);
}

uint64_t lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static TaskLoggingEventSink.translateStartEvent(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitEventPayload();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v60 - v13);
  SiriKitEvent.payload.getter();
  v15 = (*(v5 + 88))(v14, v4);
  if (v15 == *MEMORY[0x1E69CFBF0])
  {
    (*(v5 + 96))(v14, v4);
    v17 = *v14;
    v16 = v14[1];
    v18 = v14[3];

    if (*(a2 + 33) == 1)
    {
      v19 = *MEMORY[0x1E69CFDC8];
      v20 = type metadata accessor for ActivityType();
      (*(*(v20 - 8) + 104))(v11, v19, v20);
      v70 = v17;
      v71 = v16;
      v68 = 0x203A746365726944;
      v69 = 0xE800000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.contains<A>(_:)())
      {
        v21 = 0x6465737261706E55;
        v22 = 0xEE00746E65746E49;
      }

      else
      {

        v21 = v17;
        v22 = v16;
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMR);
      v44 = &v11[v43[12]];
      v45 = v43[16];
      v46 = &v11[v43[20]];
      v47 = &v11[v43[24]];
      v48 = v43[28];
      v49 = v43[32];
      v50 = &v11[v43[36]];
      v51 = &v11[v43[40]];
      v52 = v43[44];
      v53 = v43[48];
      v54 = v43[52];
      *v44 = v21;
      v44[1] = v22;
      *&v11[v45] = 0;
      v55 = &v11[v52];
      *v46 = v17;
      *(v46 + 1) = v16;
      *v47 = 0u;
      *(v47 + 1) = 0u;
      *&v11[v48] = 0;
      *&v11[v49] = 0;
      *(v50 + 4) = 0;
      *v50 = 0u;
      *(v50 + 1) = 0u;
      *v51 = 0;
      *(v51 + 1) = 0;
      *v55 = 0;
      *(v55 + 1) = 0;
      *&v11[v53] = xmmword_1DCA77C40;
      v56 = *MEMORY[0x1E69CFCB0];
      v57 = type metadata accessor for SiriKitReliabilityCodes();
      v58 = *(v57 - 8);
      (*(v58 + 104))(&v11[v54], v56, v57);
      (*(v58 + 56))(&v11[v54], 0, 1, v57);
      (*(v5 + 104))(v11, *MEMORY[0x1E69CFBB8], v4);
      a1 = SiriKitEvent.withPayload(_:)();
      (*(v5 + 8))(v11, v4);
    }

    else
    {
    }
  }

  else
  {
    v23 = *(v5 + 8);
    if (v15 == *MEMORY[0x1E69CFC40])
    {
      v23(v14, v4);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMR);
      v25 = &v8[v24[12]];
      v26 = v24[16];
      v27 = &v8[v24[20]];
      v28 = &v8[v24[24]];
      v29 = v24[28];
      v63 = v24[32];
      v64 = v29;
      v30 = &v8[v24[36]];
      v31 = v24[40];
      v66 = a1;
      v32 = &v8[v31];
      v62 = &v8[v24[44]];
      v33 = &v8[v24[48]];
      v60 = v26;
      v61 = v33;
      v65 = v24[52];
      v67 = v23;
      v34 = *MEMORY[0x1E69CFDC8];
      v35 = type metadata accessor for ActivityType();
      (*(*(v35 - 8) + 104))(v8, v34, v35);
      strcpy(v25, "UnparsedIntent");
      v25[15] = -18;
      *&v8[v60] = 0;
      *v27 = 0;
      *(v27 + 1) = 0;
      *v28 = 0u;
      *(v28 + 1) = 0u;
      v36 = v63;
      *&v8[v64] = 0;
      *&v8[v36] = 0;
      *(v30 + 4) = 0;
      *v30 = 0u;
      *(v30 + 1) = 0u;
      *v32 = 0;
      *(v32 + 1) = 0;
      v37 = v61;
      v38 = v62;
      *v62 = 0;
      *(v38 + 1) = 0;
      *v37 = 0;
      *(v37 + 1) = 0;
      v39 = *MEMORY[0x1E69CFC98];
      v40 = type metadata accessor for SiriKitReliabilityCodes();
      v41 = *(v40 - 8);
      v42 = v65;
      (*(v41 + 104))(&v8[v65], v39, v40);
      (*(v41 + 56))(&v8[v42], 0, 1, v40);
      (*(v5 + 104))(v8, *MEMORY[0x1E69CFBB8], v4);
      a1 = SiriKitEvent.withPayload(_:)();
      v67(v8, v4);
    }

    else
    {

      v23(v14, v4);
    }
  }

  return a1;
}

void _s14SiriKitRuntime16AceMetricsLoggerO12logAnalytics7commandySo12SAAceCommand_p_tFZTf4en_nSo06SABaseK0C_Tt0g5(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    specialized static ViewMetricsLogger.logAnalytics(view:)(v8);
LABEL_20:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v3 + 8))(v6, v2);
    return;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    specialized static SayMetricsLogger.logAnalytics(command:)(v9);
    goto LABEL_20;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    specialized static DialogMetricsLogger.logAnalytics(dialog:)(v10);
    goto LABEL_20;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(v11);
    goto LABEL_20;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(v12);
    goto LABEL_20;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.instrumentation);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_19;
  }

  v17 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v25 = v24;
  *v17 = 136315138;
  v18 = [v14 encodedClassName];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v15, v16, "Command unsupported for Grading data logging. You need to add logging support for command: %s", v17, 0xCu);
    v23 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
LABEL_19:

    goto LABEL_20;
  }

  __break(1u);
}

uint64_t specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v27 - v6;
  if (a2)
  {
    if ((a1 || a2 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v27[2] = 0x6573726170;
      v27[3] = 0xE500000000000000;
      v27[0] = a1;
      v27[1] = a2;
      v9 = type metadata accessor for Locale();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol.range<A>(of:options:range:locale:)();
      v11 = v10;
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if (v11)
      {
        if (String.count.getter() < 251)
        {
          return a1;
        }

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.instrumentation);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134217984;
          *(v15 + 4) = 250;
          _os_log_impl(&dword_1DC659000, v13, v14, "#SiriKitMetricsUtils - truncating string at char side %ld", v15, 0xCu);
          MEMORY[0x1E12A2F50](v15, -1, -1);
        }

        String.index(_:offsetBy:)();
      }

      else
      {
        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.instrumentation);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1DC659000, v17, v18, "#SiriKitMetricsUtils - truncating string at parse", v19, 2u);
          MEMORY[0x1E12A2F50](v19, -1, -1);
        }
      }

      v20 = String.subscript.getter();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      a1 = MEMORY[0x1E12A1500](v20, v22, v24, v26);

      return a1;
    }
  }

  return a1;
}

uint64_t closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v102 = a3;
  v101 = type metadata accessor for UUID();
  v103 = *(v101 - 8);
  isa = v103[8].isa;
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v87 - v31;
  if (!a4)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.instrumentation);
    v103 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v103, v41))
    {
      goto LABEL_24;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "#TaskLoggingService SELF Log - current taskId is not set, cannot emit request link info";
LABEL_16:
    _os_log_impl(&dword_1DC659000, v103, v41, v43, v42, 2u);
    MEMORY[0x1E12A2F50](v42, -1, -1);
    goto LABEL_24;
  }

  if (!a2)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.instrumentation);
    v103 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v103, v41))
    {
      goto LABEL_24;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "#TaskLoggingService SELF Log - current executionRequestId is not set, cannot emit request link info";
    goto LABEL_16;
  }

  v98 = a1;
  v94 = v30;
  v33 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (v33)
  {
    v96 = v33;
    v97 = a2;
    v34 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v34)
    {
      v95 = v34;
      v35 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v35)
      {
        v92 = v35;
        [v95 setComponent_];
        v36 = v32;
        v93 = v4;
        TaskLoggingService.createFlowId(executionRequestId:)(v32);
        outlined init with copy of ReferenceResolutionClientProtocol?(v32, v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v37 = v103;
        v38 = v101;
        v90 = v103[6].isa;
        v91 = v103 + 6;
        v39 = v90(v28, 1, v101);
        v89 = v36;
        if (v39 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          (v37[4].isa)(v14, v28, v38);
          v52 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v53 = UUID._bridgeToObjectiveC()().super.isa;
          v54 = [v52 initWithNSUUID_];

          [v95 0x1FB75FC78];
          (v37[1].isa)(v14, v38);
        }

        v55 = v94;
        UUID.init(uuidString:)();
        outlined init with copy of ReferenceResolutionClientProtocol?(v55, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = v90(v24, 1, v38);
        v57 = v93;
        if (v56 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static Logger.instrumentation);
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.error.getter();
          v61 = os_log_type_enabled(v59, v60);
          v62 = v89;
          if (v61)
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_1DC659000, v59, v60, "#TaskLoggingService SELF Log - current executionRequestId is not a valid UUID String, cannot emit request link info", v63, 2u);
            MEMORY[0x1E12A2F50](v63, -1, -1);
          }
        }

        else
        {
          v94 = v103[4].isa;
          v94(v100, v24, v38);
          v64 = v57[24];
          v65 = v57[25];
          __swift_project_boxed_opaque_existential_1(v57 + 21, v64);
          if ((*(v65 + 16))(v64, v65))
          {
            v66 = 43;
          }

          else
          {
            v66 = 1;
          }

          v67 = v92;
          [v92 setComponent_];
          v68 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v69 = UUID._bridgeToObjectiveC()().super.isa;
          v70 = [v68 initWithNSUUID_];

          [v67 setUuid_];
          v71 = v96;
          [v96 setSource_];
          [v71 setTarget_];
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          __swift_project_value_buffer(v72, static Logger.instrumentation);
          v62 = v89;
          outlined init with copy of ReferenceResolutionClientProtocol?(v89, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v104 = v88;
            *v75 = 136315650;
            *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, a4, &v104);
            *(v75 + 12) = 2080;
            outlined init with copy of ReferenceResolutionClientProtocol?(v21, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            if (v90(v18, 1, v38) == 1)
            {
              v76 = 0xE300000000000000;
              v77 = 7104878;
            }

            else
            {
              v79 = v74;
              v80 = v99;
              v94(v99, v18, v38);
              v77 = UUID.uuidString.getter();
              v76 = v81;
              v82 = v80;
              v74 = v79;
              (v103[1].isa)(v82, v38);
            }

            v78 = v93;
            outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, &v104);

            *(v75 + 14) = v83;
            *(v75 + 22) = 2080;
            *(v75 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v97, &v104);
            _os_log_impl(&dword_1DC659000, v73, v74, "#TaskLoggingService SELF Log - logging request link for taskId: %s, flowId:%s, executionRequestId: %s", v75, 0x20u);
            v84 = v88;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v84, -1, -1);
            MEMORY[0x1E12A2F50](v75, -1, -1);
          }

          else
          {

            outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v78 = v93;
          }

          v85 = v78[13];
          v86 = v96;
          (v78[12])(v96);

          (v103[1].isa)(v100, v101);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return;
      }

      v45 = v95;
    }

    else
    {
      v45 = v96;
    }

    a2 = v97;
  }

  v46 = v98;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.instrumentation);

  v103 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v104 = v50;
    *v49 = 136315394;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, a4, &v104);
    *(v49 + 12) = 2080;
    *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, a2, &v104);
    _os_log_impl(&dword_1DC659000, v103, v48, "#TaskLoggingService SELF Log - unable to create request link info for SELF for taskId: %s, executionRequestId: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v50, -1, -1);
    MEMORY[0x1E12A2F50](v49, -1, -1);

    return;
  }

LABEL_24:
  v51 = v103;
}

uint64_t type metadata accessor for SiriKitFlowActivity()
{
  result = type metadata singleton initialization cache for SiriKitFlowActivity;
  if (!type metadata singleton initialization cache for SiriKitFlowActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriKitBiomeDonator.donateSiriExecutionTaskStep(activityType:eventTime:intentTypeName:appBundleId:requestId:slotName:statusReason:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v102 = a8;
  v112 = a7;
  v104 = a5;
  v105 = a6;
  v114 = a3;
  v115 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMR);
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v106 = &v96 - v21;
  v22 = type metadata accessor for ActivityType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v27 = a13;
  v101 = a11;
  v111 = a9;
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.instrumentation);
  v30 = *(v23 + 16);
  v103 = a1;
  v30(v26, a1, v22);

  v116 = a12;
  v100 = v29;
  v31 = Logger.logObject.getter();
  v32 = v116;
  v33 = v31;
  v34 = static os_log_type_t.debug.getter();

  LODWORD(v99) = v34;
  v35 = os_log_type_enabled(v33, v34);
  v117 = a13;
  v118 = a14;
  v113 = a10;
  v107 = a4;
  if (v35)
  {
    v36 = a4;
    v37 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v119[0] = v98;
    *v37 = 136316162;
    if (!a14)
    {
      v27 = 0x3E6C696E3CLL;
    }

    v97 = v33;
    if (a14)
    {
      v38 = a14;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v38, v119);

    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    v40 = v113;
    v41 = v36;
    v42 = v102;
    *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v41, v119);
    *(v37 + 22) = 2080;
    v43 = ActivityType.rawValue.getter();
    v45 = v44;
    (*(v23 + 8))(v26, v22);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v119);

    *(v37 + 24) = v46;
    *(v37 + 32) = 2080;
    v47 = v101;
    if (v32)
    {
      v48 = v101;
    }

    else
    {
      v48 = 0x3E6C696E3CLL;
    }

    if (v32)
    {
      v49 = v32;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v119);

    *(v37 + 34) = v50;
    *(v37 + 42) = 2080;
    if (v40)
    {
      v51 = v111;
    }

    else
    {
      v51 = 0x3E6C696E3CLL;
    }

    if (v40)
    {
      v52 = v40;
    }

    else
    {
      v52 = 0xE500000000000000;
    }

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v119);

    *(v37 + 44) = v53;
    v54 = v97;
    _os_log_impl(&dword_1DC659000, v97, v99, "#SiriKitBiomeDonator - donating execution event to BIOME for taskId: %s, taskType: %s, stepType: %s for statusReason:%s, with slotName: %s", v37, 0x34u);
    v55 = v98;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v26, v22);
    v47 = v101;
    v42 = v102;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  type metadata accessor for SiriEnvironment();
  v56 = static SiriEnvironment.forCurrentTask.getter();
  v57 = v112;
  if (!v56 || (SiriEnvironment.currentRequest.getter(), , v58 = CurrentRequest.rootRequestId.getter(), v60 = v59, , !v60))
  {

    v58 = 0;
    v60 = 0xE000000000000000;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  v63 = os_log_type_enabled(v61, v62);
  v102 = v60;
  v101 = v58;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v119[0] = v65;
    *v64 = 136315394;
    *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v119);
    *(v64 + 12) = 2080;
    if (v42)
    {
      v66 = v57;
    }

    else
    {
      v66 = 4999502;
    }

    if (v42)
    {
      v67 = v42;
    }

    else
    {
      v67 = 0xE300000000000000;
    }

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v119);
    v57 = v112;

    *(v64 + 14) = v68;
    _os_log_impl(&dword_1DC659000, v61, v62, "#SiriKitBiomeDonator rootRequestID: %s, interactionId: %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v65, -1, -1);
    MEMORY[0x1E12A2F50](v64, -1, -1);
  }

  v69 = v117;
  v70 = v111;
  if (!v118)
  {
    v69 = 1701736302;
  }

  v98 = v69;
  if (v118)
  {
    v71 = v118;
  }

  else
  {
    v71 = 0xE400000000000000;
  }

  LODWORD(v112) = ActivityType.executionTaskStep.getter();
  if (v116)
  {
    v72 = v47;
  }

  else
  {
    v72 = 1701736302;
  }

  v97 = v72;
  if (v116)
  {
    v73 = v116;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  if (v113)
  {
    v74 = v70;
  }

  else
  {
    v74 = 1701736302;
  }

  v99 = v74;
  if (v113)
  {
    v75 = v113;
  }

  else
  {
    v75 = 0xE400000000000000;
  }

  v76 = v104;
  if (!v105)
  {
    v76 = 1701736302;
  }

  v103 = v76;
  if (v105)
  {
    v77 = v105;
  }

  else
  {
    v77 = 0xE400000000000000;
  }

  v100 = v77;
  if (v42)
  {
    v78 = v57;
  }

  else
  {
    v78 = 1701736302;
  }

  v111 = v78;
  if (v42)
  {
    v79 = v42;
  }

  else
  {
    v79 = 0xE400000000000000;
  }

  v104 = v79;
  v80 = type metadata accessor for Date();
  v81 = *(v80 - 8);
  v82 = v106;
  (*(v81 + 16))(v106, v115, v80);
  (*(v81 + 56))(v82, 0, 1, v80);

  v116 = MEMORY[0x1E12A1410](v98, v71);

  v83 = MEMORY[0x1E12A1410](v97, v73);

  v84 = MEMORY[0x1E12A1410](v99, v75);

  v85 = MEMORY[0x1E12A1410](v114, v107);
  v86 = MEMORY[0x1E12A1410](v103, v100);

  v87 = MEMORY[0x1E12A1410](v111, v104);

  isa = 0;
  if ((*(v81 + 48))(v82, 1, v80) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v81 + 8))(v82, v80);
  }

  v89 = objc_allocWithZone(MEMORY[0x1E698EF08]);
  v90 = MEMORY[0x1E12A1410](v101, v102);

  v91 = v116;
  v92 = [v89 initWithTaskId:v116 taskStep:v112 statusReason:v83 slotValue:v84 intentName:v85 appBundleID:v86 interactionID:v87 absoluteTimestamp:isa rootInteractionID:v90];

  v119[0] = v92;
  v119[1] = v117;
  v119[2] = v118;

  v93 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v94 = v108;
  AsyncStream.Continuation.yield(_:)();

  return (*(v109 + 8))(v94, v110);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for AppShortcutExpansionContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, id a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v392 = a8;
  v401 = a7;
  v402 = a6;
  v419 = a5;
  v424 = a2;
  v425 = a4;
  v403 = a3;
  v426 = a1;
  v454 = *MEMORY[0x1E69E9840];
  v22 = type metadata accessor for String.Encoding();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v378 = &v378 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SiriKitReliabilityCodes();
  v411 = *(v25 - 8);
  v26 = *(v411 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v382 = &v378 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v413 = &v378 - v29;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
  v30 = *(*(v415 - 8) + 64);
  MEMORY[0x1EEE9AC00](v415);
  v32 = &v378 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v385 = &v378 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v391 = &v378 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v398 = &v378 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v414 = &v378 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v378 - v43;
  v45 = type metadata accessor for ActivityType();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v380 = &v378 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v387 = &v378 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v397 = &v378 - v53;
  MEMORY[0x1EEE9AC00](v54);
  MEMORY[0x1EEE9AC00](v55);
  v410 = &v378 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v417 = &v378 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v408 = &v378 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v412 = &v378 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v378 - v64;
  v67.n128_f64[0] = MEMORY[0x1EEE9AC00](v66);
  v69 = &v378 - v68;
  v379 = v70;
  v384 = v71;
  if (a11)
  {
    v420 = a10;
    v72 = a11;
  }

  else if (a9)
  {
    v73 = [a9 typeName];
    v427 = 0;
    v74 = v44;
    v75 = v32;
    v76 = v25;
    v77 = v65;
    v78 = v46;
    v79 = v73;
    v420 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v80;

    v46 = v78;
    v65 = v77;
    v25 = v76;
    v32 = v75;
    v44 = v74;
  }

  else
  {
    v72 = 0xE700000000000000;
    v420 = 0x6E776F6E6B6E55;
  }

  v81 = *MEMORY[0x1E69CFDC8];
  v421 = v46;
  v82 = *(v46 + 104);
  v395 = v81;
  v396 = v46 + 104;
  v394 = v82;
  v82(v69, v67);
  v83 = lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type ActivityType and conformance ActivityType, MEMORY[0x1E69CFDE8]);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v428 = v45;
  v393 = v83;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v416 = v25;
  if (v444 == v434)
  {
    v84 = 1;
  }

  else
  {
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v404 = a16;
  v400 = a15;
  v85 = a17;
  v418 = a18;
  v422 = *(v421 + 8);
  v423 = v421 + 8;
  v422(v69, v428);

  v427 = v72;
  v409 = a17;
  if ((v84 & 1) == 0)
  {
    goto LABEL_17;
  }

  v407 = v65;
  v86 = v411;
  v87 = v416;
  (*(v411 + 104))(v44, *MEMORY[0x1E69CFCA0], v416);
  (*(v86 + 56))(v44, 0, 1, v87);
  v88 = *(v415 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v418, v32, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v44, &v32[v88], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v89 = *(v86 + 48);
  if (v89(v32, 1, v87) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    if (v89(&v32[v88], 1, v87) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v90 = v427;
LABEL_24:
      v112 = v424;
      specialized TaskLoggingService.updateFlowTaskState(aceServiceInvoker:taskName:interactionId:taskId:)((v424 + 32), v420, v90, *(v424 + 96), *(v424 + 104), *(v425 + 16), *(v425 + 24));
      v115 = v421;
      v93 = *(v421 + 16);
      v113 = (v421 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v95 = v428;
      v94 = v426;
      v114 = v417;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v91 = v414;
  outlined init with copy of ReferenceResolutionClientProtocol?(v32, v414, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v89(&v32[v88], 1, v87) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v411 + 8))(v91, v87);
LABEL_15:
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
    v90 = v427;
    v65 = v407;
    goto LABEL_16;
  }

  v116 = v411;
  v117 = v413;
  (*(v411 + 32))(v413, &v32[v88], v87);
  lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, MEMORY[0x1E69CFCD0]);
  LODWORD(v415) = dispatch thunk of static Equatable.== infix(_:_:)();
  v118 = *(v116 + 8);
  v118(v117, v87);
  outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v118(v91, v87);
  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v90 = v427;
  v65 = v407;
  if (v415)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (*(v425 + 33))
  {
    goto LABEL_24;
  }

LABEL_17:
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  __swift_project_value_buffer(v92, static Logger.instrumentation);
  v93 = *(v421 + 16);
  v414 = (v421 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v94 = v426;
  v95 = v428;
  v93(v65, v426, v428);
  v96 = v425;

  v97 = v65;

  v98 = v424;

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    LODWORD(v407) = v100;
    v103 = v94;
    v104 = v102;
    *&v444 = v102;
    *v101 = 136315906;
    *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v96 + 16), *(v96 + 24), &v444);
    v415 = v93;
    v105 = v103;
    *(v101 + 12) = 2080;
    *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v420, v427, &v444);
    *(v101 + 22) = 2080;
    v106 = ActivityType.rawValue.getter();
    v108 = v107;
    v422(v97, v428);
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &v444);
    v95 = v428;

    *(v101 + 24) = v109;
    *(v101 + 32) = 2080;
    v110 = v105;
    v93 = v415;
    *(v101 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98[12], v98[13], &v444);
    _os_log_impl(&dword_1DC659000, v99, v407, "#TaskLoggingService - not updating flow task state for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v101, 0x2Au);
    swift_arrayDestroy();
    v111 = v104;
    v94 = v110;
    MEMORY[0x1E12A2F50](v111, -1, -1);
    MEMORY[0x1E12A2F50](v101, -1, -1);
  }

  else
  {

    v422(v65, v95);
  }

  v112 = v98;
  v85 = v409;
  v113 = v414;
  v114 = v417;
  v115 = v421;
LABEL_25:
  v399 = a14;
  v119 = v412;
  v93(v412, v94, v95);
  v120 = (*(v115 + 88))(v119, v95);
  v121 = *MEMORY[0x1E69CFDD8];
  v415 = v93;
  if (v120 != v121 && v120 != *MEMORY[0x1E69CFDD0] && v120 != *MEMORY[0x1E69CFDE0] && v120 != *MEMORY[0x1E69CFDA0])
  {
    v422(v119, v95);
LABEL_34:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    __swift_project_value_buffer(v122, static Logger.instrumentation);
    v93(v114, v94, v95);
    v123 = v425;

    v124 = v427;

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = v114;
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v444 = v129;
      *v128 = 136315906;
      *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v123 + 16), *(v123 + 24), &v444);
      *(v128 + 12) = 2080;
      *(v128 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v420, v124, &v444);
      *(v128 + 22) = 2080;
      LODWORD(v421) = v126;
      v130 = ActivityType.rawValue.getter();
      v132 = v131;
      v133 = v127;
      v112 = v424;
      v422(v133, v428);
      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &v444);
      v135 = v415;

      *(v128 + 24) = v134;
      *(v128 + 32) = 2080;
      v95 = v428;
      *(v128 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112[12], v112[13], &v444);
      _os_log_impl(&dword_1DC659000, v125, v421, "#TaskLoggingService - not sending update context to reset FlowTaskState for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v128, 0x2Au);
      swift_arrayDestroy();
      v136 = v129;
      v94 = v426;
      MEMORY[0x1E12A2F50](v136, -1, -1);
      MEMORY[0x1E12A2F50](v128, -1, -1);
    }

    else
    {

      v422(v114, v95);
      v135 = v415;
    }

    goto LABEL_45;
  }

  if (v85 && (v404 == 0x764F726576726553 && v85 == 0xEE00656469727265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    goto LABEL_34;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v137 = type metadata accessor for Logger();
  __swift_project_value_buffer(v137, static Logger.instrumentation);
  v138 = v408;
  v93(v408, v94, v95);
  v139 = v425;

  v140 = v427;

  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *&v444 = v144;
    *v143 = 136315650;
    *(v143 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v420, v140, &v444);
    *(v143 + 12) = 2080;
    *(v143 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v139 + 16), *(v139 + 24), &v444);
    *(v143 + 22) = 2080;
    v145 = v408;
    v146 = ActivityType.rawValue.getter();
    v148 = v147;
    v422(v145, v95);
    v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &v444);
    v135 = v415;

    *(v143 + 24) = v149;
    _os_log_impl(&dword_1DC659000, v141, v142, "#TaskLoggingService - sending update context to reset FlowTaskState for TaskType: %s, TaskId: %s, ActivityType: %s", v143, 0x20u);
    swift_arrayDestroy();
    v150 = v144;
    v94 = v426;
    MEMORY[0x1E12A2F50](v150, -1, -1);
    MEMORY[0x1E12A2F50](v143, -1, -1);
  }

  else
  {

    v422(v138, v95);
    v135 = v415;
  }

  v112 = v424;
  specialized TaskLoggingService.resetFlowTaskState(aceServiceInvoker:)((v424 + 32));
LABEL_45:
  v421 = a21;
  v414 = v113;
  v135(v410, v94, v95);
  v151 = v112[10];
  v388 = v112[11];
  v389 = v151;

  Date.timeIntervalSince1970.getter();
  v405 = v152;
  v153 = type metadata accessor for SiriKitFlowActivity();
  v154 = *(v153 + 48);
  v155 = *(v153 + 52);
  v390 = v153;
  v156 = swift_allocObject();
  v157 = (v156 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v157 = 0;
  v157[1] = 0xE000000000000000;
  v158 = (v156 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  v159 = v411;
  v160 = *(v411 + 104);
  v161 = v413;
  v406 = *MEMORY[0x1E69CFCC0];
  v162 = v416;
  v407 = v160;
  v408 = (v411 + 104);
  (v160)(v413);
  v163 = SiriKitReliabilityCodes.rawValue.getter();
  v165 = v164;
  v417 = *(v159 + 8);
  (v417)(v161, v162);
  *v158 = v163;
  v158[1] = v165;
  v166 = v428;
  *(v156 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v167 = v156 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v156 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v167 + 15) = -18;
  v168 = type metadata accessor for AppInformationResolver();
  v169 = *(v168 + 48);
  v170 = *(v168 + 52);
  v383 = v168;
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v171 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  if (v172)
  {
    v173 = v171;
  }

  else
  {
    v173 = 0x6C7070615F746F6ELL;
  }

  if (v172)
  {
    v174 = v172;
  }

  else
  {
    v174 = 0xEE00656C62616369;
  }

  v175 = (v156 + direct field offset for SiriKitFlowActivity.appBundleId);
  *v175 = v173;
  v175[1] = v174;
  v176 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  if (v177)
  {
    v178 = v176;
  }

  else
  {
    v178 = 0x6C7070615F746F6ELL;
  }

  if (v177)
  {
    v179 = v177;
  }

  else
  {
    v179 = 0xEE00656C62616369;
  }

  v180 = (v156 + direct field offset for SiriKitFlowActivity.appName);
  *v180 = v178;
  v180[1] = v179;
  v181 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  if (v182)
  {
    v183 = v181;
  }

  else
  {
    v183 = 0x6C7070615F746F6ELL;
  }

  if (v182)
  {
    v184 = v182;
  }

  else
  {
    v184 = 0xEE00656C62616369;
  }

  v185 = (v156 + direct field offset for SiriKitFlowActivity.appVersion);
  *v185 = v183;
  v185[1] = v184;
  v186 = dispatch thunk of AppInformationResolver.resolveBuild.getter();
  v188 = 48;
  if (v187)
  {
    v188 = v186;
  }

  v189 = 0xE100000000000000;
  if (v187)
  {
    v189 = v187;
  }

  v190 = (v156 + direct field offset for SiriKitFlowActivity.build);
  *v190 = v188;
  v190[1] = v189;
  *(v156 + direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp) = dispatch thunk of AppInformationResolver.isSiriKitSupportedApp.getter() & 1;
  v191 = v399;
  if (!v400)
  {
    v191 = 0;
  }

  v192 = 0xE000000000000000;
  if (v400)
  {
    v192 = v400;
  }

  v193 = (v156 + direct field offset for SiriKitFlowActivity.responseId);
  *v193 = v191;
  v193[1] = v192;
  v194 = (v156 + direct field offset for SiriKitFlowActivity.executionRequestId);
  v195 = v388;
  *v194 = v389;
  v194[1] = v195;

  v196 = v410;
  ActivityType.rawValue.getter();
  v197 = DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();
  v198 = v417;

  v422(v196, v166);
  v199 = v398;
  outlined init with copy of ReferenceResolutionClientProtocol?(v418, v398, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v200 = *(v159 + 48);
  v410 = v159 + 48;
  v405 = v200;
  v201 = v200(v199, 1, v162);
  v412 = v159 + 8;
  if (v201 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v199, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v202 = 0;
    v203 = 0;
  }

  else
  {
    v202 = SiriKitReliabilityCodes.rawValue.getter();
    v203 = v204;
    (v198)(v199, v162);
  }

  v205 = v421;
  if (v421)
  {
    v389 = a20;

    v203 = v205;
  }

  else
  {
    v389 = v202;
  }

  v206 = a13;
  v381 = a13;
  v398 = v203;
  if (!a22)
  {

    goto LABEL_89;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_1DCA66060;
  *(v207 + 32) = 0xD000000000000014;
  *(v207 + 40) = 0x80000001DCA8B090;
  *(v207 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  *(v207 + 48) = a22;

  v208 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v207);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(v207 + 32, &_sSS_yptMd, &_sSS_yptMR);
  swift_deallocClassInstance();
  if (!*(v208 + 16))
  {

    goto LABEL_83;
  }

  v209 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v444 = 0;
  v211 = [v209 dataWithJSONObject:isa options:0 error:&v444];

  if (v211)
  {
    v212 = v444;
    v213 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v215 = v214;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();

    outlined consume of Data._Representation(v213, v215);
LABEL_83:
    dispatch thunk of DefaultFlowActivity.message.setter();

    v166 = v428;
    goto LABEL_89;
  }

  v216 = v444;

  v217 = _convertNSErrorToError(_:)();

  swift_willThrow();

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v218 = type metadata accessor for Logger();
  __swift_project_value_buffer(v218, static Logger.instrumentation);
  v219 = v217;
  v220 = Logger.logObject.getter();
  v221 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v220, v221))
  {
    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *&v444 = v223;
    *v222 = 136315138;
    swift_getErrorValue();
    v224 = Error.localizedDescription.getter();
    v226 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v225, &v444);

    *(v222 + 4) = v226;
    _os_log_impl(&dword_1DC659000, v220, v221, "#TaskLoggingService - failed to encode appResolutionMetrics payload to JSON due to error: %s", v222, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v223);
    v227 = v223;
    v162 = v416;
    MEMORY[0x1E12A2F50](v227, -1, -1);
    MEMORY[0x1E12A2F50](v222, -1, -1);
  }

  v166 = v428;
  swift_getErrorValue();
  Error.localizedDescription.getter();
  dispatch thunk of DefaultFlowActivity.message.setter();

  v228 = v413;
  (v407)(v413, *MEMORY[0x1E69CFC88], v162);
  v389 = SiriKitReliabilityCodes.rawValue.getter();
  v398 = v229;

  (v417)(v228, v162);
  v206 = v381;
LABEL_89:
  v421 = v197;
  if (v206)
  {
    v230 = *(*v197 + class metadata base offset for SiriKitFlowActivity + 312);

    v230(a12, v206);
    v197 = v421;
  }

  v388 = a12;
  v231 = v391;
  outlined init with copy of ReferenceResolutionClientProtocol?(v418, v391, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v405(v231, 1, v162) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v231, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  }

  else
  {
    v232 = v382;
    (*(v411 + 32))(v382, v231, v162);
    v233 = SiriKitReliabilityCodes.rawValue.getter();
    (*(*v197 + class metadata base offset for SiriKitFlowActivity + 216))(v233);
    (v417)(v232, v162);
  }

  v234 = v409;
  v235 = v425;
  if (v409)
  {
    v236 = *(*v197 + class metadata base offset for SiriKitFlowActivity + 192);

    v236(v404, v234);
    v197 = v421;
  }

  Date.timeIntervalSince1970.getter();
  dispatch thunk of DefaultFlowActivity.timestamp.setter();

  outlined init with copy of ReferenceResolutionClientProtocol?(v392, &v434, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  if (v436)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v434, &v444);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v237 = type metadata accessor for Logger();
    __swift_project_value_buffer(v237, static Logger.instrumentation);
    v238 = v384;
    (v415)(v384, v426, v166);

    v239 = v235;
    v240 = v166;
    v241 = v427;

    v242 = Logger.logObject.getter();
    v243 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      *&v434 = v245;
      *v244 = 136315906;
      *(v244 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v239 + 16), *(v239 + 24), &v434);
      *(v244 + 12) = 2080;
      *(v244 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v420, v241, &v434);
      *(v244 + 22) = 2080;
      v246 = ActivityType.rawValue.getter();
      v248 = v247;
      v422(v238, v240);
      v249 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v248, &v434);

      *(v244 + 24) = v249;
      *(v244 + 32) = 2080;
      *(v244 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v424 + 96), *(v424 + 104), &v434);
      _os_log_impl(&dword_1DC659000, v242, v243, "#TaskLoggingService - appending domain activities for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v244, 0x2Au);
      swift_arrayDestroy();
      v250 = v245;
      v162 = v416;
      MEMORY[0x1E12A2F50](v250, -1, -1);
      MEMORY[0x1E12A2F50](v244, -1, -1);
    }

    else
    {

      v422(v238, v240);
    }

    v253 = v417;
    v254 = v421;
    v255 = v398;
    if (v398)
    {
      v256 = v425;
      v257 = v389;
    }

    else
    {
      v258 = v413;
      (v407)(v413, v406, v162);
      v259 = SiriKitReliabilityCodes.rawValue.getter();
      v260 = v162;
      v257 = v259;
      v255 = v261;
      (v253)(v258, v260);
      v256 = v425;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMR);
    v262 = swift_allocObject();
    *(v262 + 16) = xmmword_1DCA65720;
    *(v262 + 56) = v390;
    *(v262 + 64) = lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitFlowActivity and conformance DefaultFlowActivity, type metadata accessor for SiriKitFlowActivity);
    *(v262 + 32) = v254;
    outlined init with copy of ReferenceResolutionClientProtocol(&v444, v262 + 72);
    if (v401)
    {
      v263 = v402;
    }

    else
    {
      v263 = 0;
    }

    if (v401)
    {
      v264 = v401;
    }

    else
    {
      v264 = 0xE000000000000000;
    }

    v266 = *(v256 + 16);
    v265 = *(v256 + 24);

    v392 = v265;
    *&v376 = v266;
    *(&v376 + 1) = v265;
    v411 = specialized static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(v420, v427, v426, v257, v255, v262, v263, v264, v376);
    v268 = v267;

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C8Activity_pMd, &_s11SiriKitFlow0C8Activity_pMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v269 = &v444;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v434, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    v251 = v398;
    if (v398)
    {
      v252 = v389;
    }

    else
    {
      v270 = v413;
      (v407)(v413, v406, v162);
      v271 = SiriKitReliabilityCodes.rawValue.getter();
      v272 = v162;
      v252 = v271;
      v251 = v273;
      (v417)(v270, v272);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 56) = v390;
    *(inited + 64) = lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitFlowActivity and conformance DefaultFlowActivity, type metadata accessor for SiriKitFlowActivity);
    *(inited + 32) = v197;
    if (v401)
    {
      v275 = v402;
    }

    else
    {
      v275 = 0;
    }

    if (v401)
    {
      v276 = v401;
    }

    else
    {
      v276 = 0xE000000000000000;
    }

    v277 = v235;
    v266 = *(v235 + 16);
    v278 = *(v277 + 24);

    v392 = v278;
    *&v377 = v266;
    *(&v377 + 1) = v278;
    v411 = specialized static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(v420, v427, v426, v252, v251, inited, v275, v276, v377);
    v268 = v279;

    swift_setDeallocating();
    v269 = (inited + 32);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  v280 = v428;
  v281 = v416;
  v282 = v424;
  if (v268)
  {
    v398 = v268;
    v390 = v266;
    v283 = v385;
    outlined init with copy of ReferenceResolutionClientProtocol?(v418, v385, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    if (v405(v283, 1, v281) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v283, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v389 = 0;
      v284 = 0;
      v285 = v427;
      v286 = v413;
      v287 = v417;
    }

    else
    {
      v389 = SiriKitReliabilityCodes.rawValue.getter();
      v284 = v302;
      v287 = v417;
      (v417)(v283, v281);
      v285 = v427;
      v286 = v413;
    }

    (v407)(v286, v406, v281);

    SiriKitReliabilityCodes.rawValue.getter();
    v405 = v303;
    (v287)(v286, v281);
    v304 = *(v383 + 48);
    v305 = *(v383 + 52);
    swift_allocObject();

    AppInformationResolver.init(app:)();
    v306 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
    v308 = 0x6C7070615F746F6ELL;
    if (v307)
    {
      v309 = v306;
    }

    else
    {
      v309 = 0x6C7070615F746F6ELL;
    }

    v413 = v309;
    v310 = 0xEE00656C62616369;
    if (v307)
    {
      v311 = v307;
    }

    else
    {
      v311 = 0xEE00656C62616369;
    }

    v410 = v311;
    v312 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
    if (v313)
    {
      v314 = v312;
    }

    else
    {
      v314 = 0x6C7070615F746F6ELL;
    }

    if (v313)
    {
      v315 = v313;
    }

    else
    {
      v315 = 0xEE00656C62616369;
    }

    v391 = v315;
    v316 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
    if (v317)
    {
      v308 = v316;
      v310 = v317;
    }

    v318 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(v420, v285);
    v319 = v286;
    v321 = v320;

    if (v284)
    {

      v322 = v284;
      v323 = v389;
    }

    else
    {
      (v407)(v319, v406, v281);
      v323 = SiriKitReliabilityCodes.rawValue.getter();
      v322 = v324;

      (v417)(v319, v416);
    }

    *&v444 = v314;
    *(&v444 + 1) = v391;
    v445 = v413;
    v446 = v410;
    v447 = v308;
    v448 = v310;
    v449 = v323;
    v450 = v322;
    v451 = 0;
    v452 = v318;
    v453 = v321;
    *&v434 = v314;
    *(&v434 + 1) = v391;
    v435 = v413;
    v436 = v410;
    v437 = v308;
    v438 = v310;
    v439 = v323;
    v440 = v322;
    v441 = 0;
    v442 = v318;
    v443 = v321;
    outlined init with copy of SiriKitRequestEvent(&v444, v431);
    outlined destroy of SiriKitRequestEvent(&v434);
    v325 = v424;
    v327 = *(v424 + 96);
    v326 = *(v424 + 104);
    v328 = specialized TaskLoggingService.createRequestContentString(siriKitRequestEvent:interactionId:)(&v444, v327, v326);
    v330 = v329;
    outlined destroy of SiriKitRequestEvent(&v444);
    if (v330)
    {
      v331 = v328;
    }

    else
    {
      v331 = 0;
    }

    v332 = 0xE000000000000000;
    if (v330)
    {
      v332 = v330;
    }

    v416 = v331;
    v417 = v332;
    v413 = v326;

    v333 = SiriKitEventContext.resultCandidateId.getter();
    if (v334)
    {
      v335 = v333;
    }

    else
    {
      v335 = 7104878;
    }

    if (v334)
    {
      v336 = v334;
    }

    else
    {
      v336 = 0xE300000000000000;
    }

    v337 = v426;
    if (v419)
    {
      v338 = App.appIdentifier.getter();
      v340 = 0x6C7070615F746F6ELL;
      if (v339)
      {
        v340 = v338;
      }

      v341 = 0xEE00656C62616369;
      if (v339)
      {
        v341 = v339;
      }

      v342 = v425;
      v343 = v422;
    }

    else
    {
      v342 = v425;
      v343 = v422;
      v341 = 0xEE00656C62616369;
      v340 = 0x6C7070615F746F6ELL;
    }

    LODWORD(v412) = a19;
    v431[0] = v411;
    v431[1] = v398;
    v431[2] = v416;
    v431[3] = v417;
    v408 = v327;
    v431[4] = v327;
    v431[5] = v413;
    v431[6] = v335;
    v431[7] = v336;
    v431[8] = v340;
    v431[9] = v341;

    v410 = MetricsEventInformation.dictionaryRepresentation.getter();
    outlined destroy of MetricsEventInformation(v431);
    v394(v397, v395, v428);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v432 == v429 && v433 == v430)
    {
      v343(v397, v428);
    }

    else
    {
      v344 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v343(v397, v428);

      if ((v344 & 1) == 0)
      {
        goto LABEL_174;
      }
    }

    v394(v387, v395, v428);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v432 == v429 && v433 == v430)
    {
      v343(v387, v428);
    }

    else
    {
      v345 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v343(v387, v428);

      if ((v345 & 1) == 0)
      {
        goto LABEL_178;
      }
    }

    if (*(v342 + 33) == 1)
    {
LABEL_174:
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v346 = type metadata accessor for Logger();
      __swift_project_value_buffer(v346, static Logger.instrumentation);
      v347 = v379;
      v348 = v428;
      (v415)(v379, v337, v428);

      v349 = v427;

      v350 = Logger.logObject.getter();
      v351 = static os_log_type_t.debug.getter();

      v352 = os_log_type_enabled(v350, v351);
      v353 = v408;
      if (v352)
      {
        v354 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        v432 = v355;
        *v354 = 136315906;
        *(v354 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v390, v392, &v432);
        *(v354 + 12) = 2080;
        *(v354 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v420, v349, &v432);
        *(v354 + 22) = 2080;
        v356 = v351;
        v357 = ActivityType.rawValue.getter();
        v359 = v358;
        v422(v347, v348);
        v360 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v357, v359, &v432);

        *(v354 + 24) = v360;
        *(v354 + 32) = 2080;
        *(v354 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v353, v413, &v432);
        _os_log_impl(&dword_1DC659000, v350, v356, "#TaskLoggingService Usage Log - logging task step for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v354, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v355, -1, -1);
        v361 = v354;
        v362 = v419;
        v337 = v426;
        v325 = v424;
        MEMORY[0x1E12A2F50](v361, -1, -1);

        v363 = v388;
      }

      else
      {

        v422(v347, v348);
        v363 = v388;
        v362 = v419;
      }

      v372 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v368 = v386;
      TaskLoggingService.logViaSAMetrics(aceServiceInvoker:eventInformation:timings:originalCommandId:)((v325 + 32), v410, v372, 0, 0xE000000000000000);

      v369 = v427;
      if (v412)
      {
LABEL_187:
        v374 = v368[10];
        v373 = v368[11];
        __swift_project_boxed_opaque_existential_1(v368 + 7, v374);
        (*(v373 + 8))(v337, v325, v403, v416, v417, v411, v398, v390, v392, v420, v369, v362, v402, v401, v363, v381, v399, v400, v404, v409, v418, v374, v373);

        goto LABEL_188;
      }

LABEL_183:

LABEL_188:

      goto LABEL_189;
    }

LABEL_178:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v364 = type metadata accessor for Logger();
    __swift_project_value_buffer(v364, static Logger.instrumentation);
    v365 = Logger.logObject.getter();
    v366 = static os_log_type_t.debug.getter();
    v367 = os_log_type_enabled(v365, v366);
    v368 = v386;
    v369 = v427;
    v362 = v419;
    if (v367)
    {
      v370 = swift_slowAlloc();
      *v370 = 0;
      _os_log_impl(&dword_1DC659000, v365, v366, "#TaskLoggingService - Skip logging Start for non new client task", v370, 2u);
      MEMORY[0x1E12A2F50](v370, -1, -1);
    }

    v363 = v388;
    if (v412)
    {
      goto LABEL_187;
    }

    goto LABEL_183;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v288 = type metadata accessor for Logger();
  __swift_project_value_buffer(v288, static Logger.instrumentation);
  v289 = v380;
  (v415)(v380, v426, v280);

  v290 = v427;

  v291 = Logger.logObject.getter();
  v292 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v291, v292))
  {
    v293 = swift_slowAlloc();
    v294 = swift_slowAlloc();
    v295 = v266;
    v296 = v294;
    *&v444 = v294;
    *v293 = 136315906;
    *(v293 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v295, v392, &v444);
    *(v293 + 12) = 2080;
    v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v420, v290, &v444);

    *(v293 + 14) = v297;
    *(v293 + 22) = 2080;
    v298 = ActivityType.rawValue.getter();
    v300 = v299;
    v422(v289, v428);
    v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v298, v300, &v444);

    *(v293 + 24) = v301;
    *(v293 + 32) = 2080;
    *(v293 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v282 + 96), *(v282 + 104), &v444);
    _os_log_impl(&dword_1DC659000, v291, v292, "#TaskLoggingService - JSON string from the encoding is empty, not logging Task step for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v293, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v296, -1, -1);
    MEMORY[0x1E12A2F50](v293, -1, -1);

LABEL_189:

    goto LABEL_190;
  }

  result = (v422)(v289, v280);
LABEL_190:
  v375 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(v3 + v5, v6);
}

void TaskLoggingEventSink.route(_:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v1147 = a3;
  v1148 = a2;
  v1129 = type metadata accessor for SiriKitConfirmationState();
  v1136 = *(v1129 - 1);
  v4 = v1136[8];
  MEMORY[0x1EEE9AC00](v1129);
  v1130 = &v1097 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v1135 = &v1097 - v7;
  v1102 = type metadata accessor for TaskFlowConfiguration();
  v1101 = *(v1102 - 8);
  v8 = *(v1101 + 64);
  MEMORY[0x1EEE9AC00](v1102);
  v1100 = &v1097 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v1139 = (&v1097 - v12);
  v1149 = type metadata accessor for SiriKitReliabilityCodes();
  v1146 = *(v1149 - 8);
  v13 = *(v1146 + 64);
  MEMORY[0x1EEE9AC00](v1149);
  v1138 = &v1097 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1142 = type metadata accessor for Date();
  v15 = *(v1142 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v1142);
  v1099 = &v1097 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v1118 = &v1097 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v1131 = &v1097 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v1105 = &v1097 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v1144 = &v1097 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v1110 = &v1097 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v1112 = &v1097 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v1120 = &v1097 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v1128 = (&v1097 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v1140 = &v1097 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v1125 = &v1097 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v1117 = &v1097 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v1126 = &v1097 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v1103 = &v1097 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v1106 = &v1097 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v1104 = &v1097 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v1109 = &v1097 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v1108 = &v1097 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v1115 = &v1097 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v1114 = &v1097 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v1123 = &v1097 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v1124 = &v1097 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v1133 = &v1097 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v1134 = &v1097 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v1137 = &v1097 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v1119 = &v1097 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v1127 = &v1097 - v70;
  v1150 = type metadata accessor for ActivityType();
  v71 = *(v1150 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v1150);
  v74 = &v1097 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v1116 = &v1097 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v1097 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v1107 = &v1097 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v1097 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v1111 = &v1097 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v1113 = &v1097 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v1121 = &v1097 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v1132 = &v1097 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v1141 = &v1097 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v1122 = &v1097 - v96;
  v97 = type metadata accessor for SiriKitEventPayload();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v1097 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriKitEvent.payload.getter();
  v102 = (*(v98 + 88))(v101, v97);
  v103 = *MEMORY[0x1E69CFC38];
  v1145 = v71;
  if (v102 == v103)
  {
    (*(v98 + 96))(v101, v97);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4NameAA0aB16ReliabilityCodesO12statusReasonAA0cD0_pSg04flowD0SDySSypGSg0M8Metadata0A13AppResolution0oP6ResultOSg010resolutionQ0tMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4NameAA0aB16ReliabilityCodesO12statusReasonAA0cD0_pSg04flowD0SDySSypGSg0M8Metadata0A13AppResolution0oP6ResultOSg010resolutionQ0tMR);
    v105 = &v101[v104[12]];
    v107 = *v105;
    v106 = v105[1];
    v1141 = v107;
    v1140 = v106;
    v108 = v104[16];
    v109 = &v101[v104[20]];
    v110 = *&v101[v104[24]];
    v111 = v71;
    v112 = v104[28];
    (*(v111 + 32))(v84, v101, v1150);
    v113 = v1146;
    v114 = v1138;
    (*(v1146 + 32))(v1138, &v101[v108], v1149);
    v115 = *(v109 + 1);
    v1155 = *v109;
    v1156 = v115;
    v1157 = *(v109 + 4);
    v116 = &v101[v112];
    v117 = v1139;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v116, v1139, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
    v118 = *(v1143 + 16);
    v119 = v1144;
    SiriKitEvent.timestamp.getter();
    TaskLoggingService.logAppResolutionResult(activityType:eventContext:eventTime:intentTypeName:statusReason:task:domainFlowActivity:flowMetadata:resolutionResult:)(v84, v1148, v119, v1141, v1140, v114, v1147, &v1155, v110, v117);

    (*(v15 + 8))(v119, v1142);
    outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    (*(v113 + 8))(v114, v1149);
    v120 = *(v1145 + 8);
    v121 = v84;
LABEL_139:
    v120(v121, v1150);
    return;
  }

  v1138 = a1;
  v122 = v1144;
  v1139 = v101;
  v123 = v102 == *MEMORY[0x1E69CFBD0];
  v1098 = v15;
  if (v123)
  {
    v124 = v1139;
    (*(v98 + 96))(v1139, v97);
    v125 = *v124;
    v126 = *(v124 + 8);
    v127 = *(v124 + 16);
    v1144 = *(v1143 + 16);
    (*(v71 + 104))(v1141, *MEMORY[0x1E69CFDA8], v1150);
    SiriKitEvent.timestamp.getter();
    v1157 = 0;
    v1155 = 0u;
    v1156 = 0u;
    v1135 = v125;
    if (v125)
    {
      v128 = [v125 typeName];
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;

      v127 = v130;
    }

    v131 = v1146;
    v132 = v1137;
    v133 = v1149;
    (*(v1146 + 104))(v1137, *MEMORY[0x1E69CFCC0], v1149);
    (*(v131 + 56))(v132, 0, 1, v133);
    v134 = 0x6E776F6E6B6E55;
    v1133 = v126;
    if (v127)
    {
      v134 = v126;
    }

    v1138 = v134;
    if (v127)
    {
      v135 = v127;
    }

    else
    {
      v135 = 0xE700000000000000;
    }

    swift_bridgeObjectRetain_n();
    v136 = ActivityType.asSELFTypeAndReason(_:)(v132);
    LODWORD(v1131) = v137;
    v138 = v1148;
    v139 = SiriKitEventContext.resultCandidateId.getter();
    if (v140)
    {
      v141 = v139;
    }

    else
    {
      v141 = 13101;
    }

    if (v140)
    {
      v142 = v140;
    }

    else
    {
      v142 = 0xE200000000000000;
    }

    v143 = v138[11];
    v1143 = v138[10];
    v145 = *(v1147 + 16);
    v144 = *(v1147 + 24);
    v146 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1136 = v143;
    v1139 = v144;
    if (v146)
    {
      v1130 = v136;
      v1132 = v146;
      v147 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v147)
      {
        v148 = v147;
        v149 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v141, v142, v1143, v143, v145, v144);
        if (!v149)
        {
          v1131 = v145;

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v333 = type metadata accessor for Logger();
          __swift_project_value_buffer(v333, static Logger.instrumentation);

          v334 = v1139;

          v335 = Logger.logObject.getter();
          v336 = static os_log_type_t.error.getter();

          LODWORD(v1130) = v336;
          v337 = os_log_type_enabled(v335, v336);
          v331 = v1146;
          if (v337)
          {
            v338 = swift_slowAlloc();
            v1129 = swift_slowAlloc();
            *&v1151 = v1129;
            *v338 = 136315650;
            v339 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v1151);

            *(v338 + 4) = v339;
            *(v338 + 12) = 2080;
            v340 = v334;
            v145 = v1131;
            *(v338 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1131, v340, &v1151);
            *(v338 + 22) = 2080;
            *(v338 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v143, &v1151);
            _os_log_impl(&dword_1DC659000, v335, v1130, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v338, 0x20u);
            v341 = v1129;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v341, -1, -1);
            v342 = v338;
            v132 = v1137;
            MEMORY[0x1E12A2F50](v342, -1, -1);

            v332 = v1134;
          }

          else
          {

            v332 = v1134;
            v145 = v1131;
          }

          goto LABEL_134;
        }

        v1129 = v149;
        v150 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v150)
        {
          v151 = v150;
          v152 = *(v1144 + 152);
          (*(v1144 + 144))(&v1151, 0);
          v153 = *(&v1152 + 1);
          v154 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v155 = (*(v154 + 8))(v153, v154);
          if (v156)
          {
            v157 = v156;
          }

          else
          {
            v155 = 0x6C7070615F746F6ELL;
            v157 = 0xEE00656C62616369;
          }

          v158 = MEMORY[0x1E12A1410](v155, v157);

          [v151 setBundleId_];

          v159 = *(&v1152 + 1);
          v160 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v161 = *(v160 + 16);
          v162 = v160;
          v132 = v1137;
          v163 = v161(v159, v162);
          if (v164)
          {
            v165 = v164;
          }

          else
          {
            v163 = 0x6C7070615F746F6ELL;
            v165 = 0xEE00656C62616369;
          }

          v166 = MEMORY[0x1E12A1410](v163, v165);

          [v151 setAppVersion_];

          [v148 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
        }

        v167 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(0, 0);
        v169 = v168;
        v170 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v170)
        {
          v171 = v170;
          v1127 = v167;
          v1128 = v169;
          v172 = MEMORY[0x1E12A1410](v1138, v135);

          [v171 setCurrentTaskName_];

          [v171 setCurrentTaskType_];
          v173 = HIDWORD(v1130);
          [v171 setFlowStateType_];
          v174 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v174)
          {
            v175 = v174;
            if (v1131)
            {
              v176 = 0;
            }

            else
            {
              v176 = v173;
            }

            [v174 setStatusReason_];
            [v171 setFlowStateReason_];
          }

          [v171 setResolvedSlotName_];
          if (v1128)
          {
            v177 = MEMORY[0x1E12A1410](v1127, v1128);
          }

          else
          {
            v177 = 0;
          }

          v331 = v1146;
          [v171 setFlowStateReasonDescription_];

          [v148 setFlowState_];
        }

        else
        {

          v331 = v1146;
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v391 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v391 > -9.22337204e18)
        {
          if (v391 < 9.22337204e18)
          {
            [v148 setTimestampMs_];
            [v148 setSequenceNum_];

            v392 = v1132;
            [v1132 setFlowStep_];
            v393 = v392;
            v394 = v1129;
            [v393 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_127:
              v395 = type metadata accessor for Logger();
              __swift_project_value_buffer(v395, static Logger.instrumentation);

              v396 = Logger.logObject.getter();
              v397 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v396, v397))
              {
                v398 = swift_slowAlloc();
                v1146 = swift_slowAlloc();
                *&v1151 = v1146;
                *v398 = 136315906;
                if (v1130 > 0xD0)
                {
                  v399 = @"FLOWSTATETYPE_UNKNOWN";
                  v400 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v399 = off_1E863DF48[v1130];
                  v400 = off_1E863E5D0[v1130];
                }

                v402 = v399;
                v403 = v400;
                v404 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v406 = v405;

                v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v404, v406, &v1151);

                *(v398 + 4) = v407;
                *(v398 + 12) = 2080;
                v401 = v1139;
                *(v398 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v1139, &v1151);
                *(v398 + 22) = 2080;
                *(v398 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1138, v135, &v1151);
                *(v398 + 32) = 2080;
                *(v398 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
                _os_log_impl(&dword_1DC659000, v396, v397, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v398, 0x2Au);
                v408 = v1146;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v408, -1, -1);
                MEMORY[0x1E12A2F50](v398, -1, -1);

                v132 = v1137;
                v332 = v1134;
              }

              else
              {

                v332 = v1134;
                v401 = v1139;
              }

              v409 = *(v1144 + 104);
              v410 = v1132;
              (*(v1144 + 96))(v1132);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1143, v1136, v145, v401);

LABEL_134:
              outlined init with copy of ReferenceResolutionClientProtocol(v1144 + 16, &v1151);
              v411 = *(&v1152 + 1);
              v412 = v1153;
              __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
              outlined init with copy of ReferenceResolutionClientProtocol?(v132, v332, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v413 = v1149;
              if ((*(v331 + 48))(v332, 1, v1149) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v332, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v414 = 0;
                v415 = 0;
              }

              else
              {
                v416 = v413;
                v414 = SiriKitReliabilityCodes.rawValue.getter();
                v417 = v332;
                v415 = v418;
                v419 = v416;
                v132 = v1137;
                (*(v331 + 8))(v417, v419);
              }

              v420 = *(v412 + 8);
              v1087 = v411;
              v1093 = v412;
              v421 = v1141;
              v422 = v1140;
              v420(v1141, v1140, v1138, v135, 0, 0, v1143, v1136, 0, 0, v414, v415, v145, v1139, v1087, v1093);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v421, v1148, v422, v1147, 0, 0, 0, &v1155, 0, v1133, v127, 0, 0, 0, 0, 0, 0, v132, 1u, 0, 0, 0);

              outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              (*(v1098 + 8))(v422, v1142);
              goto LABEL_138;
            }

LABEL_515:
            swift_once();
            goto LABEL_127;
          }

LABEL_514:
          __break(1u);
          goto LABEL_515;
        }

        __break(1u);
        goto LABEL_514;
      }
    }

    v1132 = v127;
    v1131 = v135;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v323 = type metadata accessor for Logger();
    __swift_project_value_buffer(v323, static Logger.instrumentation);

    v324 = v1139;

    v325 = Logger.logObject.getter();
    v326 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v325, v326))
    {
      v327 = v143;
      v328 = swift_slowAlloc();
      v329 = swift_slowAlloc();
      *&v1151 = v329;
      *v328 = 136315650;
      v330 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v1151);

      *(v328 + 4) = v330;
      *(v328 + 12) = 2080;
      *(v328 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v324, &v1151);
      *(v328 + 22) = 2080;
      *(v328 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v327, &v1151);
      _os_log_impl(&dword_1DC659000, v325, v326, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v328, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v329, -1, -1);
      MEMORY[0x1E12A2F50](v328, -1, -1);
    }

    else
    {
    }

    v331 = v1146;
    v332 = v1134;
    v135 = v1131;
    v127 = v1132;
    goto LABEL_134;
  }

  if (v102 == *MEMORY[0x1E69CFC00])
  {
    v178 = v1139;
    (*(v98 + 96))(v1139, v97);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMd, &_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMR);
    v180 = *(v178 + v179[12]);
    v181 = (v178 + v179[16]);
    v182 = v181[1];
    v1140 = *v181;
    v183 = (v178 + v179[20]);
    v185 = *v183;
    v184 = v183[1];
    v1141 = v185;
    v1144 = v184;
    v186 = (v178 + v179[24]);
    v187 = v1136;
    v188 = v1135;
    v189 = v1129;
    (v1136[4])(v1135, v178, v1129);
    v190 = v186[1];
    v1151 = *v186;
    v1152 = v190;
    v191 = v1130;
    (v187[2])(v1130, v188, v189);
    v192 = (v187[11])(v191, v189);
    v193 = v1146;
    if (v192 != *MEMORY[0x1E69CFCF8])
    {
      v256 = v180;
      if (v192 == *MEMORY[0x1E69CFD00])
      {
        v1139 = v182;
        v1143 = *(v1143 + 16);
        v257 = v1116;
        (*(v1145 + 104))(v1116, *MEMORY[0x1E69CFDB0], v1150);
        v258 = v1118;
        SiriKitEvent.timestamp.getter();
        if (*(&v1152 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v259 = swift_allocObject();
          *(v259 + 16) = xmmword_1DCA66060;
          *(v259 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v260 = swift_allocObject();
          *(v259 + 32) = v260;
          outlined init with copy of ReferenceResolutionClientProtocol?(&v1151, v260 + 16, &_sypSgMd, &_sypSgMR);
        }

        else
        {
          v259 = 0;
        }

        v423 = v1117;
        v1157 = 0;
        v1155 = 0u;
        v1156 = 0u;
        if (v180)
        {
          v424 = [v180 typeName];
          v1140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v426 = v425;

          v1139 = v426;
        }

        (*(v193 + 56))(v423, 1, 1, v1149);
        if (v259 && *(v259 + 16))
        {
          v427 = TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(v259, &v1151);
          if (v427)
          {
            v428 = v427;
            v429 = v1148;
            v430 = SiriKitEventContext.resultCandidateId.getter();
            v432 = 13101;
            if (v431)
            {
              v432 = v430;
              v433 = v431;
            }

            else
            {
              v433 = 0xE200000000000000;
            }

            TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(v428, v432, v433, v429[10], v429[11], *(v1147 + 16), *(v1147 + 24));

            v434 = v428;
            v435 = specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(v428);
          }

          else
          {
            if (one-time initialization token for instrumentation != -1)
            {
              swift_once();
            }

            v529 = type metadata accessor for Logger();
            __swift_project_value_buffer(v529, static Logger.instrumentation);
            v530 = v1147;

            v531 = v1148;

            v532 = Logger.logObject.getter();
            v533 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v532, v533))
            {
              v534 = swift_slowAlloc();
              v1149 = swift_slowAlloc();
              *&v1154[0] = v1149;
              *v534 = 136315394;
              *(v534 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v530 + 16), *(v530 + 24), v1154);
              *(v534 + 12) = 2080;
              *(v534 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v531[10], v531[11], v1154);
              _os_log_impl(&dword_1DC659000, v532, v533, "#TaskLoggingService SELF Log - not logging EntityContextTier1 event for taskId: %s, executionRequestId: %s", v534, 0x16u);
              v535 = v1149;
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v535, -1, -1);
              MEMORY[0x1E12A2F50](v534, -1, -1);
            }

            v435 = 0;
            v189 = v1129;
          }
        }

        else
        {
          v435 = 0;
        }

        TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(v257, v1148, v258, v1147, 0, 0, 0, 0, &v1155, 0, v1140, v1139, v1141, v1144, 0, 0, 0, 0, v423, v435);

        outlined destroy of ReferenceResolutionClientProtocol?(v423, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
        (*(v1098 + 8))(v258, v1142);
        (*(v1145 + 8))(v257, v1150);
        goto LABEL_152;
      }

      if (v192 != *MEMORY[0x1E69CFCF0])
      {
        v343 = v1136[1];
        v343(v1135, v189);

        outlined destroy of ReferenceResolutionClientProtocol?(&v1151, &_sypSgMd, &_sypSgMR);
        v343(v1130, v189);
        return;
      }
    }

    v194 = *(v1143 + 16);
    (*(v1145 + 104))(v79, *MEMORY[0x1E69CFDB8], v1150);
    SiriKitEvent.timestamp.getter();
    v1157 = 0;
    v1155 = 0u;
    v1156 = 0u;
    if (v180)
    {
      v195 = [v180 typeName];
      v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v198 = v197;

      v182 = v198;
      v193 = v1146;
    }

    else
    {
      v196 = v1140;
    }

    v362 = v1126;
    (*(v193 + 56))(v1126, 1, 1, v1149);
    v363 = v1131;
    TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(v79, v1148, v1131, v1147, 0, 0, 0, 0, &v1155, 0, v196, v182, v1141, v1144, 0, 0, 0, 0, v362, 0);

    outlined destroy of ReferenceResolutionClientProtocol?(v362, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    (*(v1098 + 8))(v363, v1142);
    (*(v1145 + 8))(v79, v1150);
LABEL_152:
    (v1136[1])(v1135, v189);
    outlined destroy of ReferenceResolutionClientProtocol?(&v1151, &_sypSgMd, &_sypSgMR);
    return;
  }

  if (v102 == *MEMORY[0x1E69CFC50])
  {
    v199 = v1139;
    (*(v98 + 96))(v1139, v97);
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMR);
    v201 = (v199 + v200[12]);
    v202 = v201[1];
    v1137 = *v201;
    v1141 = *(v199 + v200[16]);
    v203 = v199 + v200[20];
    v205 = *v203;
    v204 = *(v203 + 8);
    v1130 = v205;
    v1134 = v204;
    v206 = v199 + v200[24];
    v208 = *v206;
    v207 = *(v206 + 8);
    v1129 = v208;
    v1131 = v207;
    v209 = (v199 + v200[28]);
    v211 = *v209;
    v210 = v209[1];
    v1126 = v211;
    v1127 = v210;
    v212 = v199 + v200[32];
    v214 = *v212;
    v213 = *(v212 + 8);
    v1135 = v214;
    v1136 = v213;
    v215 = v200[36];
    (*(v71 + 32))(v1132, v199, v1150);
    v216 = v199 + v215;
    v217 = v1133;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v216, v1133, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1144 = *(v1143 + 16);
    v218 = v1128;
    SiriKitEvent.timestamp.getter();
    v1157 = 0;
    v1155 = 0u;
    v1156 = 0u;
    swift_bridgeObjectRetain_n();
    v219 = ActivityType.asSELFTypeAndReason(_:)(v217);
    LODWORD(v1125) = v220;
    v221 = v1148;
    v222 = SiriKitEventContext.resultCandidateId.getter();
    if (v223)
    {
      v224 = v222;
    }

    else
    {
      v224 = 13101;
    }

    if (v223)
    {
      v225 = v223;
    }

    else
    {
      v225 = 0xE200000000000000;
    }

    v226 = v221[11];
    v1143 = v221[10];
    v227 = *(v1147 + 16);
    v228 = *(v1147 + 24);
    v229 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1139 = v226;
    v1138 = v228;
    v1140 = v227;
    if (v229)
    {
      v230 = v229;
      v1123 = v219;
      v231 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v231)
      {
        v232 = v231;
        v233 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v224, v225, v1143, v226, v227, v228);
        if (!v233)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v436 = type metadata accessor for Logger();
          __swift_project_value_buffer(v436, static Logger.instrumentation);

          v437 = Logger.logObject.getter();
          v438 = static os_log_type_t.error.getter();

          LODWORD(v1125) = v438;
          if (os_log_type_enabled(v437, v438))
          {
            v439 = v228;
            v440 = swift_slowAlloc();
            v441 = swift_slowAlloc();
            *&v1151 = v441;
            *v440 = 136315650;
            v442 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v225, &v1151);
            v443 = v226;
            v444 = v442;

            *(v440 + 4) = v444;
            *(v440 + 12) = 2080;
            *(v440 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v439, &v1151);
            *(v440 + 22) = 2080;
            *(v440 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v443, &v1151);
            _os_log_impl(&dword_1DC659000, v437, v1125, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v440, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v441, -1, -1);
            MEMORY[0x1E12A2F50](v440, -1, -1);
          }

          else
          {
          }

          v390 = v1124;
          v218 = v1128;
          goto LABEL_270;
        }

        v1122 = v233;
        v234 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v234)
        {
          v235 = v234;
          v236 = *(v1144 + 152);
          (*(v1144 + 144))(&v1151, v1141);
          v237 = *(&v1152 + 1);
          v238 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v239 = (*(v238 + 8))(v237, v238);
          if (v240)
          {
            v241 = v240;
          }

          else
          {
            v239 = 0x6C7070615F746F6ELL;
            v241 = 0xEE00656C62616369;
          }

          v242 = MEMORY[0x1E12A1410](v239, v241);

          [v235 setBundleId_];

          v243 = *(&v1152 + 1);
          v244 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v245 = (*(v244 + 16))(v243, v244);
          if (v246)
          {
            v247 = v246;
          }

          else
          {
            v245 = 0x6C7070615F746F6ELL;
            v247 = 0xEE00656C62616369;
          }

          v248 = MEMORY[0x1E12A1410](v245, v247);

          [v235 setAppVersion_];

          [v232 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
        }

        v249 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1135, v1136);
        v251 = v250;
        v252 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v252)
        {
          v253 = v252;
          v1121 = v249;
          v254 = MEMORY[0x1E12A1410](v1137, v202);

          [v253 setCurrentTaskName_];

          if (v1134)
          {
            v255 = MEMORY[0x1E12A1410](v1130);
          }

          else
          {
            v255 = 0;
          }

          [v253 setCurrentTaskType_];

          v627 = HIDWORD(v1123);
          [v253 setFlowStateType_];
          v628 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v628)
          {
            v629 = v628;
            if (v1125)
            {
              v630 = 0;
            }

            else
            {
              v630 = v627;
            }

            [v628 setStatusReason_];
            [v253 setFlowStateReason_];
          }

          if (v1131)
          {
            v631 = MEMORY[0x1E12A1410](v1129);
          }

          else
          {
            v631 = 0;
          }

          [v253 setResolvedSlotName_];

          if (v251)
          {
            v632 = MEMORY[0x1E12A1410](v1121, v251);
          }

          else
          {
            v632 = 0;
          }

          [v253 setFlowStateReasonDescription_];

          [v232 setFlowState_];
        }

        else
        {
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v633 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v633 > -9.22337204e18)
        {
          if (v633 < 9.22337204e18)
          {
            [v232 setTimestampMs_];
            [v232 setSequenceNum_];

            [v230 setFlowStep_];
            v634 = v1122;
            [v230 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_263:
              v635 = type metadata accessor for Logger();
              __swift_project_value_buffer(v635, static Logger.instrumentation);

              v636 = Logger.logObject.getter();
              v637 = static os_log_type_t.debug.getter();

              v638 = os_log_type_enabled(v636, v637);
              v390 = v1124;
              if (v638)
              {
                v639 = swift_slowAlloc();
                v1125 = swift_slowAlloc();
                *&v1151 = v1125;
                *v639 = 136315906;
                if (v1123 > 0xD0)
                {
                  v640 = @"FLOWSTATETYPE_UNKNOWN";
                  v641 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v640 = off_1E863EC58[v1123];
                  v641 = off_1E863F2E0[v1123];
                }

                v645 = v640;
                v646 = v641;
                v647 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v649 = v648;

                v650 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v647, v649, &v1151);

                *(v639 + 4) = v650;
                *(v639 + 12) = 2080;
                v643 = v1140;
                v644 = v1138;
                *(v639 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v1138, &v1151);
                *(v639 + 22) = 2080;
                *(v639 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1137, v202, &v1151);
                *(v639 + 32) = 2080;
                *(v639 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
                _os_log_impl(&dword_1DC659000, v636, v637, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v639, 0x2Au);
                v651 = v1125;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v651, -1, -1);
                MEMORY[0x1E12A2F50](v639, -1, -1);

                v390 = v1124;
                v642 = v1139;
              }

              else
              {

                v642 = v1139;
                v643 = v1140;
                v644 = v1138;
              }

              v652 = *(v1144 + 104);
              (*(v1144 + 96))(v230);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1143, v642, v643, v644);

LABEL_270:
              outlined init with copy of ReferenceResolutionClientProtocol(v1144 + 16, &v1151);
              v654 = *(&v1152 + 1);
              v653 = v1153;
              v1125 = __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
              if (v1141)
              {
                v655 = App.appIdentifier.getter();
                v657 = v656;
              }

              else
              {
                v655 = 0;
                v657 = 0;
              }

              outlined init with copy of ReferenceResolutionClientProtocol?(v1133, v390, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v658 = v1146;
              v659 = v1149;
              if ((*(v1146 + 48))(v390, 1, v1149) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v390, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v660 = 0;
                v661 = 0;
                v662 = v218;
              }

              else
              {
                v663 = v659;
                v660 = SiriKitReliabilityCodes.rawValue.getter();
                v664 = v390;
                v661 = v665;
                v662 = v1128;
                (*(v658 + 8))(v664, v663);
              }

              v1088 = v654;
              v666 = v1131;
              v667 = v1129;
              v668 = v1137;
              (*(v653 + 8))(v1132, v662, v1137, v202, v655, v657, v1143, v1139, v1129, v1131, v660, v661, v1140, v1138, v1088, v653);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
              v669 = v1133;
              v1085 = v667;
              v421 = v1132;
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v1132, v1148, v662, v1147, v1141, v1130, v1134, &v1155, 0, v668, v202, v1085, v666, v1126, v1127, v1135, v1136, v1133, 1u, 0, 0, 0);

              outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              (*(v1098 + 8))(v662, v1142);
              outlined destroy of ReferenceResolutionClientProtocol?(v669, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
LABEL_138:
              v120 = *(v1145 + 8);
              v121 = v421;
              goto LABEL_139;
            }

LABEL_519:
            swift_once();
            goto LABEL_263;
          }

LABEL_518:
          __break(1u);
          goto LABEL_519;
        }

        __break(1u);
        goto LABEL_518;
      }
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v381 = type metadata accessor for Logger();
    __swift_project_value_buffer(v381, static Logger.instrumentation);

    v382 = Logger.logObject.getter();
    v383 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v382, v383))
    {
      v384 = v228;
      v385 = swift_slowAlloc();
      v386 = swift_slowAlloc();
      *&v1151 = v386;
      *v385 = 136315650;
      v387 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v225, &v1151);
      v388 = v226;
      v389 = v387;

      *(v385 + 4) = v389;
      *(v385 + 12) = 2080;
      *(v385 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v384, &v1151);
      *(v385 + 22) = 2080;
      *(v385 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v388, &v1151);
      _os_log_impl(&dword_1DC659000, v382, v383, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v385, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v386, -1, -1);
      MEMORY[0x1E12A2F50](v385, -1, -1);
    }

    else
    {
    }

    v390 = v1124;
    goto LABEL_270;
  }

  if (v102 == *MEMORY[0x1E69CFBE8])
  {
    v261 = v1139;
    (*(v98 + 96))(v1139, v97);
    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMR);
    v263 = v71;
    v264 = v262;
    v265 = *(v261 + v262[12]);
    v266 = *(v261 + v262[16]);
    v267 = v261 + v262[24];
    v269 = *v267;
    v268 = *(v267 + 8);
    v1132 = v269;
    v1133 = v268;
    v270 = v261 + v262[28];
    v272 = *v270;
    v271 = *(v270 + 8);
    v1129 = v272;
    v1131 = v271;
    v273 = v261 + v262[32];
    v275 = *v273;
    v274 = *(v273 + 8);
    v1135 = v275;
    v1136 = v274;
    v276 = v262[36];
    (*(v263 + 32))(v1122, v261, v1150);
    v277 = v261 + v276;
    v278 = v1127;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v277, v1127, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1144 = *(v1143 + 16);
    SiriKitEvent.timestamp.getter();
    v1157 = 0;
    v1155 = 0u;
    v1156 = 0u;
    v1130 = v265;
    v1128 = v265;
    v279 = [v1128 typeName];
    v1137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v281 = v280;

    v282 = ActivityType.asSELFTypeAndReason(_:)(v278);
    LODWORD(v1123) = v283;
    v284 = v1148;
    v285 = SiriKitEventContext.resultCandidateId.getter();
    if (v286)
    {
      v287 = v285;
    }

    else
    {
      v287 = 13101;
    }

    if (v286)
    {
      v288 = v286;
    }

    else
    {
      v288 = 0xE200000000000000;
    }

    v289 = v284[11];
    v1141 = v284[10];
    v290 = *(v1147 + 16);
    v291 = *(v1147 + 24);
    v292 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1138 = v281;
    v1134 = v289;
    v1143 = v291;
    v1140 = v290;
    if (v292)
    {
      v1124 = v292;
      v293 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v293)
      {
        v294 = v293;
        v295 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v287, v288, v1141, v289, v290, v1143);
        if (!v295)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v522 = type metadata accessor for Logger();
          __swift_project_value_buffer(v522, static Logger.instrumentation);

          v523 = v1143;

          v524 = Logger.logObject.getter();
          v525 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v524, v525))
          {
            v526 = swift_slowAlloc();
            v1123 = swift_slowAlloc();
            *&v1151 = v1123;
            *v526 = 136315650;
            v527 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v288, &v1151);

            *(v526 + 4) = v527;
            *(v526 + 12) = 2080;
            *(v526 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v523, &v1151);
            *(v526 + 22) = 2080;
            *(v526 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1141, v289, &v1151);
            _os_log_impl(&dword_1DC659000, v524, v525, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v526, 0x20u);
            v528 = v1123;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v528, -1, -1);
            MEMORY[0x1E12A2F50](v526, -1, -1);
          }

          else
          {
          }

          v521 = v1119;
          goto LABEL_335;
        }

        v1121 = v295;
        v296 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v296)
        {
          v297 = v296;
          v298 = *(v1144 + 152);
          (*(v1144 + 144))(&v1151, v266);
          v300 = *(&v1152 + 1);
          v299 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v301 = (*(v299 + 8))(v300, v299);
          if (v302)
          {
            v303 = v302;
          }

          else
          {
            v301 = 0x6C7070615F746F6ELL;
            v303 = 0xEE00656C62616369;
          }

          v304 = MEMORY[0x1E12A1410](v301, v303);

          [v297 setBundleId_];

          v305 = *(&v1152 + 1);
          v306 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v307 = *(v306 + 16);
          v308 = v306;
          v281 = v1138;
          v309 = v307(v305, v308);
          if (v310)
          {
            v311 = v310;
          }

          else
          {
            v309 = 0x6C7070615F746F6ELL;
            v311 = 0xEE00656C62616369;
          }

          v312 = MEMORY[0x1E12A1410](v309, v311);

          [v297 setAppVersion_];

          [v294 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
        }

        v313 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1135, v1136);
        v315 = v314;
        v316 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v316)
        {
          v317 = v316;
          v1120 = v313;
          v318 = MEMORY[0x1E12A1410](v1137, v281);

          [v317 setCurrentTaskName_];

          [v317 setCurrentTaskType_];
          [v317 setFlowStateType_];
          v319 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v319)
          {
            v320 = v319;
            if (v1123)
            {
              v321 = 0;
            }

            else
            {
              v321 = HIDWORD(v282);
            }

            [v319 setStatusReason_];
            [v317 setFlowStateReason_];
          }

          if (v1133)
          {
            v322 = MEMORY[0x1E12A1410](v1132);
          }

          else
          {
            v322 = 0;
          }

          v747 = v1120;
          [v317 setResolvedSlotName_];

          if (v315)
          {
            v748 = MEMORY[0x1E12A1410](v747, v315);
          }

          else
          {
            v748 = 0;
          }

          [v317 setFlowStateReasonDescription_];

          [v294 setFlowState_];
        }

        else
        {
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v749 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v749 > -9.22337204e18)
        {
          if (v749 < 9.22337204e18)
          {
            [v294 setTimestampMs_];
            [v294 setSequenceNum_];

            v750 = v1124;
            [v1124 setFlowStep_];
            v751 = v750;
            v752 = v1121;
            [v751 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_328:
              v753 = type metadata accessor for Logger();
              __swift_project_value_buffer(v753, static Logger.instrumentation);

              v754 = Logger.logObject.getter();
              v755 = static os_log_type_t.debug.getter();

              v756 = os_log_type_enabled(v754, v755);
              v521 = v1119;
              if (v756)
              {
                v757 = swift_slowAlloc();
                v1123 = swift_slowAlloc();
                *&v1151 = v1123;
                *v757 = 136315906;
                if (v282 > 0xD0)
                {
                  v758 = @"FLOWSTATETYPE_UNKNOWN";
                  v759 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v758 = off_1E863D238[v282];
                  v759 = off_1E863D8C0[v282];
                }

                v763 = v758;
                v764 = v759;
                v765 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v767 = v766;

                v768 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v765, v767, &v1151);

                *(v757 + 4) = v768;
                *(v757 + 12) = 2080;
                v761 = v1140;
                v762 = v1143;
                *(v757 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v1143, &v1151);
                *(v757 + 22) = 2080;
                *(v757 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1137, v1138, &v1151);
                *(v757 + 32) = 2080;
                *(v757 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
                _os_log_impl(&dword_1DC659000, v754, v755, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v757, 0x2Au);
                v769 = v1123;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v769, -1, -1);
                MEMORY[0x1E12A2F50](v757, -1, -1);

                v521 = v1119;
                v760 = v1134;
              }

              else
              {

                v760 = v1134;
                v761 = v1140;
                v762 = v1143;
              }

              v770 = *(v1144 + 104);
              v771 = v1124;
              (*(v1144 + 96))(v1124);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1141, v760, v761, v762);

LABEL_335:
              outlined init with copy of ReferenceResolutionClientProtocol(v1144 + 16, &v1151);
              v773 = *(&v1152 + 1);
              v772 = v1153;
              __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
              v1126 = v266;
              if (v266)
              {
                v774 = App.appIdentifier.getter();
                v776 = v775;
              }

              else
              {
                v774 = 0;
                v776 = 0;
              }

              outlined init with copy of ReferenceResolutionClientProtocol?(v1127, v521, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v777 = v1146;
              v778 = v1149;
              if ((*(v1146 + 48))(v521, 1, v1149) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v521, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v779 = 0;
                v780 = 0;
              }

              else
              {
                v779 = SiriKitReliabilityCodes.rawValue.getter();
                v781 = v521;
                v780 = v782;
                (*(v777 + 8))(v781, v778);
              }

              v1149 = v264[20];
              v783 = *(v772 + 8);
              v1089 = v773;
              v1094 = v772;
              v784 = v1133;
              v785 = v1132;
              v786 = v1122;
              v787 = v1125;
              v783(v1122, v1125, v1137, v1138, v774, v776, v1141, v1134, v1132, v1133, v779, v780, v1140, v1143, v1089, v1094);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
              v788 = v1127;
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v786, v1148, v787, v1147, v1126, 0, 0, &v1155, v1130, 0, 0, v785, v784, v1129, v1131, v1135, v1136, v1127, 1u, 0, 0, 0);
              v789 = v1128;

              outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              (*(v1098 + 8))(v787, v1142);
              outlined destroy of ReferenceResolutionClientProtocol?(v788, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              (*(v1145 + 8))(v786, v1150);
              goto LABEL_377;
            }

LABEL_523:
            swift_once();
            goto LABEL_328;
          }

LABEL_522:
          __break(1u);
          goto LABEL_523;
        }

        __break(1u);
        goto LABEL_522;
      }

      v291 = v1143;
    }

    v513 = v266;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v514 = type metadata accessor for Logger();
    __swift_project_value_buffer(v514, static Logger.instrumentation);

    v515 = Logger.logObject.getter();
    v516 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v515, v516))
    {
      v517 = v291;
      v518 = swift_slowAlloc();
      v519 = swift_slowAlloc();
      *&v1151 = v519;
      *v518 = 136315650;
      v520 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v288, &v1151);

      *(v518 + 4) = v520;
      *(v518 + 12) = 2080;
      *(v518 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v517, &v1151);
      *(v518 + 22) = 2080;
      *(v518 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1141, v289, &v1151);
      _os_log_impl(&dword_1DC659000, v515, v516, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v518, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v519, -1, -1);
      MEMORY[0x1E12A2F50](v518, -1, -1);
    }

    else
    {
    }

    v521 = v1119;
    v266 = v513;
    goto LABEL_335;
  }

  if (v102 == *MEMORY[0x1E69CFC10])
  {
    v344 = v1139;
    (*(v98 + 96))(v1139, v97);
    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v346 = *(v344 + v345[12]);
    v347 = *(v344 + v345[16]);
    v348 = v344 + v345[20];
    v350 = *v348;
    v349 = *(v348 + 8);
    v1131 = v350;
    v1132 = v349;
    v351 = v344 + v345[24];
    v352 = *v351;
    v353 = *(v351 + 8);
    v354 = v71;
    v355 = v344 + v345[28];
    v356 = v344 + v345[36];
    v358 = *v356;
    v357 = *(v356 + 8);
    v1128 = v358;
    v1129 = v357;
    v1127 = v345;
    v359 = v345[40];
    (*(v354 + 32))(v1121, v344, v1150);
    v360 = *(v355 + 16);
    v1155 = *v355;
    v1156 = v360;
    v1157 = *(v355 + 32);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v344 + v359, v1123, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1144 = *(v1143 + 16);
    SiriKitEvent.timestamp.getter();
    v1141 = v346;
    if (v353)
    {

      v361 = v347;
      v1134 = 0;
      v1135 = 0;
    }

    else
    {
      *&v1151 = v352;
      lazy protocol witness table accessor for type Int and conformance Int();

      v445 = v347;
      v1134 = BinaryInteger.description.getter();
      v1135 = v446;
    }

    v447 = v1114;
    v1130 = v347;
    v448 = [v347 typeName];
    v1136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v450 = v449;

    v451 = ActivityType.asSELFTypeAndReason(_:)(v1123);
    LODWORD(v1126) = v452;
    v453 = v1148;
    v454 = SiriKitEventContext.resultCandidateId.getter();
    if (v455)
    {
      v456 = v454;
    }

    else
    {
      v456 = 13101;
    }

    if (v455)
    {
      v457 = v455;
    }

    else
    {
      v457 = 0xE200000000000000;
    }

    v458 = v453[11];
    v1140 = v453[10];
    v459 = *(v1147 + 16);
    v460 = *(v1147 + 24);
    v461 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1137 = v450;
    v1133 = v458;
    v1143 = v460;
    v1138 = v459;
    if (v461)
    {
      v462 = v461;
      v463 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v463)
      {
        v464 = v463;
        v465 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v456, v457, v1140, v458, v459, v1143);
        if (v465)
        {
          v1125 = v465;
          v466 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
          if (v466)
          {
            v467 = v466;
            v468 = *(v1144 + 152);
            (*(v1144 + 144))(&v1151, v1141);
            v470 = *(&v1152 + 1);
            v469 = v1153;
            __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
            v471 = (*(v469 + 8))(v470, v469);
            if (v472)
            {
              v473 = v472;
            }

            else
            {
              v471 = 0x6C7070615F746F6ELL;
              v473 = 0xEE00656C62616369;
            }

            v474 = MEMORY[0x1E12A1410](v471, v473);

            [v467 setBundleId_];

            v475 = *(&v1152 + 1);
            v476 = v1153;
            __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
            v477 = *(v476 + 16);
            v478 = v476;
            v447 = v1114;
            v479 = v477(v475, v478);
            if (v480)
            {
              v481 = v480;
            }

            else
            {
              v479 = 0x6C7070615F746F6ELL;
              v481 = 0xEE00656C62616369;
            }

            v450 = v1137;
            v482 = MEMORY[0x1E12A1410](v479, v481);

            [v467 setAppVersion_];

            [v464 setAppContext_];
            __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
          }

          v483 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1134, v1135);
          v485 = v484;
          v486 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
          if (v486)
          {
            v487 = v486;
            v488 = v483;
            v489 = MEMORY[0x1E12A1410](v1136, v450);

            [v487 setCurrentTaskName_];

            [v487 setCurrentTaskType_];
            [v487 setFlowStateType_];
            v490 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
            if (v490)
            {
              if (v1126)
              {
                v491 = 0;
              }

              else
              {
                v491 = HIDWORD(v451);
              }

              v492 = v490;
              [v490 setStatusReason_];
              [v487 setFlowStateReason_];
            }

            v493 = MEMORY[0x1E12A1410](v1131, v1132);
            [v487 setResolvedSlotName_];

            if (v485)
            {
              v494 = MEMORY[0x1E12A1410](v488, v485);
            }

            else
            {
              v494 = 0;
            }

            [v487 setFlowStateReasonDescription_];

            [v464 setFlowState_];
            v447 = v1114;
          }

          else
          {
          }

          Date.timeIntervalSince1970.getter();
          if ((*&v814 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v814 > -9.22337204e18)
          {
            if (v814 < 9.22337204e18)
            {
              [v464 setTimestampMs_];
              [v464 setSequenceNum_];

              [v462 setFlowStep_];
              v815 = v1125;
              [v462 setEventMetadata_];

              if (one-time initialization token for instrumentation == -1)
              {
LABEL_364:
                v816 = type metadata accessor for Logger();
                __swift_project_value_buffer(v816, static Logger.instrumentation);

                v817 = Logger.logObject.getter();
                v818 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v817, v818))
                {
                  v819 = swift_slowAlloc();
                  v1126 = swift_slowAlloc();
                  *&v1151 = v1126;
                  *v819 = 136315906;
                  if (v451 > 0xD0)
                  {
                    v820 = @"FLOWSTATETYPE_UNKNOWN";
                    v821 = @"FLOWSTATETYPE_UNKNOWN";
                  }

                  else
                  {
                    v820 = off_1E863F968[v451];
                    v821 = off_1E863FFF0[v451];
                  }

                  v825 = v820;
                  v826 = v821;
                  v827 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v829 = v828;

                  v830 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v827, v829, &v1151);

                  *(v819 + 4) = v830;
                  *(v819 + 12) = 2080;
                  v823 = v1138;
                  v824 = v1143;
                  *(v819 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1138, v1143, &v1151);
                  *(v819 + 22) = 2080;
                  *(v819 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1136, v1137, &v1151);
                  *(v819 + 32) = 2080;
                  *(v819 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
                  _os_log_impl(&dword_1DC659000, v817, v818, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v819, 0x2Au);
                  v831 = v1126;
                  swift_arrayDestroy();
                  MEMORY[0x1E12A2F50](v831, -1, -1);
                  MEMORY[0x1E12A2F50](v819, -1, -1);

                  v447 = v1114;
                  v822 = v1133;
                }

                else
                {

                  v822 = v1133;
                  v823 = v1138;
                  v824 = v1143;
                }

                v832 = *(v1144 + 104);
                (*(v1144 + 96))(v462);
                TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1140, v822, v823, v824);
                goto LABEL_371;
              }

LABEL_527:
              swift_once();
              goto LABEL_364;
            }

LABEL_526:
            __break(1u);
            goto LABEL_527;
          }

          __break(1u);
          goto LABEL_526;
        }

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v670 = type metadata accessor for Logger();
        __swift_project_value_buffer(v670, static Logger.instrumentation);

        v671 = v1143;

        v672 = Logger.logObject.getter();
        v673 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v672, v673))
        {
          v674 = v458;
          v675 = swift_slowAlloc();
          LODWORD(v1125) = v673;
          v676 = v675;
          v1126 = swift_slowAlloc();
          *&v1151 = v1126;
          *v676 = 136315650;
          v677 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v456, v457, &v1151);

          *(v676 + 4) = v677;
          v678 = v672;
          *(v676 + 12) = 2080;
          *(v676 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1138, v671, &v1151);
          *(v676 + 22) = 2080;
          *(v676 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v674, &v1151);
          _os_log_impl(&dword_1DC659000, v672, v1125, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v676, 0x20u);
          v679 = v1126;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v679, -1, -1);
          MEMORY[0x1E12A2F50](v676, -1, -1);

LABEL_371:
          goto LABEL_372;
        }

        goto LABEL_245;
      }

      v460 = v1143;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v618 = type metadata accessor for Logger();
    __swift_project_value_buffer(v618, static Logger.instrumentation);

    v619 = Logger.logObject.getter();
    v620 = v458;
    v621 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v619, v621))
    {
      v622 = v460;
      v623 = swift_slowAlloc();
      v624 = swift_slowAlloc();
      *&v1151 = v624;
      *v623 = 136315650;
      v625 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v456, v457, &v1151);

      *(v623 + 4) = v625;
      *(v623 + 12) = 2080;
      *(v623 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1138, v622, &v1151);
      *(v623 + 22) = 2080;
      *(v623 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v620, &v1151);
      _os_log_impl(&dword_1DC659000, v619, v621, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v623, 0x20u);
      swift_arrayDestroy();
      v626 = v624;
      v447 = v1114;
      MEMORY[0x1E12A2F50](v626, -1, -1);
      MEMORY[0x1E12A2F50](v623, -1, -1);

LABEL_372:
      outlined init with copy of ReferenceResolutionClientProtocol(v1144 + 16, &v1151);
      v834 = *(&v1152 + 1);
      v833 = v1153;
      v1126 = __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
      v835 = App.appIdentifier.getter();
      v837 = v836;
      outlined init with copy of ReferenceResolutionClientProtocol?(v1123, v447, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v838 = v1146;
      v839 = v1149;
      if ((*(v1146 + 48))(v447, 1, v1149) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v447, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v840 = 0;
        v841 = 0;
        v842 = v1120;
      }

      else
      {
        v840 = SiriKitReliabilityCodes.rawValue.getter();
        v843 = v447;
        v841 = v844;
        v842 = v1120;
        (*(v838 + 8))(v843, v839);
      }

      v1149 = *(v1127 + 128);
      v1090 = v834;
      v845 = v1132;
      v846 = v1131;
      v847 = v1121;
      v848 = v842;
      (*(v833 + 8))(v1121, v842, v1136, v1137, v835, v837, v1140, v1133, v1131, v1132, v840, v841, v1138, v1143, v1090, v833);

      __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
      v849 = v1123;
      v850 = v1130;
      TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v847, v1148, v842, v1147, v1141, 0, 0, &v1155, v1130, 0, 0, v846, v845, v1128, v1129, v1134, v1135, v1123, 1u, 0, 0, 0);

LABEL_376:

      (*(v1098 + 8))(v848, v1142);
      outlined destroy of ReferenceResolutionClientProtocol?(v849, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      (*(v1145 + 8))(v847, v1150);
LABEL_377:
      outlined destroy of ReferenceResolutionClientProtocol?(v1139 + v1149, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      return;
    }

LABEL_245:

    goto LABEL_372;
  }

  if (v102 == *MEMORY[0x1E69CFC20])
  {
    v364 = v1139;
    (*(v98 + 96))(v1139, v97);
    v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v366 = *(v364 + v365[12]);
    v367 = *(v364 + v365[16]);
    v368 = v364 + v365[20];
    v369 = *v368;
    v370 = v71;
    v371 = *(v368 + 8);
    v372 = v364 + v365[24];
    v373 = v364 + v365[28];
    v375 = *v373;
    v374 = *(v373 + 8);
    v1132 = v375;
    v1133 = v374;
    v376 = v365[32];
    (*(v370 + 32))(v1113, v364, v1150);
    v377 = *(v372 + 16);
    v1155 = *v372;
    v1156 = v377;
    v1157 = *(v372 + 32);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v364 + v376, v1115, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v378 = *(v1143 + 16);
    v379 = v1112;
    SiriKitEvent.timestamp.getter();
    v1144 = v366;
    if (v371)
    {

      v380 = v367;
      v1137 = 0;
      v1138 = 0;
    }

    else
    {
      *&v1151 = v369;
      lazy protocol witness table accessor for type Int and conformance Int();

      v536 = v367;
      v1137 = BinaryInteger.description.getter();
      v1138 = v537;
    }

    v538 = v1148;
    v1134 = v367;
    v539 = [v367 typeName];
    v1139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v541 = v540;

    v1130 = ActivityType.asSELFTypeAndReason(_:)(v1115);
    LODWORD(v1129) = v542;
    v543 = SiriKitEventContext.resultCandidateId.getter();
    if (v544)
    {
      v545 = v543;
    }

    else
    {
      v545 = 13101;
    }

    if (v544)
    {
      v546 = v544;
    }

    else
    {
      v546 = 0xE200000000000000;
    }

    v547 = v538[10];
    v548 = v538[11];
    v1143 = v547;
    v549 = *(v1147 + 16);
    v550 = *(v1147 + 24);
    v551 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1140 = v378;
    v1136 = v550;
    v552 = v379;
    v1135 = v548;
    v1141 = v549;
    if (v551)
    {
      v1131 = v551;
      v553 = v378;
      v554 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v554)
      {
        v555 = v554;
        v556 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v545, v546, v1143, v548, v549, v550);
        if (!v556)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v790 = type metadata accessor for Logger();
          __swift_project_value_buffer(v790, static Logger.instrumentation);

          v791 = Logger.logObject.getter();
          v792 = static os_log_type_t.error.getter();

          LODWORD(v1130) = v792;
          if (os_log_type_enabled(v791, v792))
          {
            v793 = v550;
            v794 = swift_slowAlloc();
            v1128 = v791;
            v795 = v794;
            v1129 = swift_slowAlloc();
            *&v1151 = v1129;
            *v795 = 136315650;
            v796 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v545, v546, &v1151);

            *(v795 + 4) = v796;
            *(v795 + 12) = 2080;
            *(v795 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1141, v793, &v1151);
            *(v795 + 22) = 2080;
            *(v795 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v548, &v1151);
            v797 = v1128;
            _os_log_impl(&dword_1DC659000, v1128, v1130, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v795, 0x20u);
            v798 = v1129;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v798, -1, -1);
            MEMORY[0x1E12A2F50](v795, -1, -1);
          }

          else
          {
          }

          v746 = v1108;
          v378 = v553;
          goto LABEL_402;
        }

        v1128 = v556;
        v557 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v557)
        {
          v558 = v557;
          v559 = *(v553 + 152);
          (*(v553 + 144))(&v1151, v1144);
          v560 = *(&v1152 + 1);
          v561 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v562 = (*(v561 + 8))(v560, v561);
          if (v563)
          {
            v564 = v563;
          }

          else
          {
            v562 = 0x6C7070615F746F6ELL;
            v564 = 0xEE00656C62616369;
          }

          v565 = MEMORY[0x1E12A1410](v562, v564);

          [v558 setBundleId_];

          v566 = *(&v1152 + 1);
          v567 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v568 = *(v567 + 16);
          v569 = v567;
          v553 = v1140;
          v570 = v568(v566, v569);
          if (v571)
          {
            v572 = v571;
          }

          else
          {
            v570 = 0x6C7070615F746F6ELL;
            v572 = 0xEE00656C62616369;
          }

          v573 = MEMORY[0x1E12A1410](v570, v572);

          [v558 setAppVersion_];

          [v555 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
        }

        v574 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1137, v1138);
        v576 = v575;
        v577 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v577)
        {
          v578 = v577;
          v1127 = v574;
          v579 = MEMORY[0x1E12A1410](v1139, v541);

          [v578 setCurrentTaskName_];

          [v578 setCurrentTaskType_];
          v580 = HIDWORD(v1130);
          [v578 setFlowStateType_];
          v581 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v581)
          {
            if (v1129)
            {
              v582 = 0;
            }

            else
            {
              v582 = v580;
            }

            v583 = v581;
            [v581 setStatusReason_];
            [v578 setFlowStateReason_];
          }

          [v578 setResolvedSlotName_];
          if (v576)
          {
            v584 = MEMORY[0x1E12A1410](v1127, v576);
          }

          else
          {
            v584 = 0;
          }

          [v578 setFlowStateReasonDescription_];

          [v555 setFlowState_];
        }

        else
        {
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v866 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v866 > -9.22337204e18)
        {
          if (v866 < 9.22337204e18)
          {
            [v555 setTimestampMs_];
            [v555 setSequenceNum_];

            v867 = v1131;
            [v1131 setFlowStep_];
            v868 = v867;
            v869 = v1128;
            [v868 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_395:
              v870 = type metadata accessor for Logger();
              __swift_project_value_buffer(v870, static Logger.instrumentation);

              v871 = Logger.logObject.getter();
              v872 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v871, v872))
              {
                v873 = swift_slowAlloc();
                v874 = swift_slowAlloc();
                *&v1151 = v874;
                *v873 = 136315906;
                if (v1130 > 0xD0)
                {
                  v875 = @"FLOWSTATETYPE_UNKNOWN";
                  v876 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v875 = off_1E8640678[v1130];
                  v876 = off_1E8640D00[v1130];
                }

                v879 = v875;
                v880 = v876;
                v881 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v883 = v882;

                v884 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v881, v883, &v1151);

                *(v873 + 4) = v884;
                *(v873 + 12) = 2080;
                v877 = v1141;
                v878 = v1136;
                *(v873 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1141, v1136, &v1151);
                *(v873 + 22) = 2080;
                *(v873 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1139, v541, &v1151);
                *(v873 + 32) = 2080;
                *(v873 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
                _os_log_impl(&dword_1DC659000, v871, v872, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v873, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v874, -1, -1);
                MEMORY[0x1E12A2F50](v873, -1, -1);

                v746 = v1108;
                v378 = v1140;
              }

              else
              {
                v378 = v553;

                v746 = v1108;
                v877 = v1141;
                v878 = v1136;
              }

              v885 = *(v378 + 104);
              v886 = v1131;
              (*(v378 + 96))(v1131);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1143, v1135, v877, v878);

LABEL_402:
              outlined init with copy of ReferenceResolutionClientProtocol(v378 + 16, &v1151);
              v888 = *(&v1152 + 1);
              v887 = v1153;
              __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
              v889 = App.appIdentifier.getter();
              v891 = v890;
              outlined init with copy of ReferenceResolutionClientProtocol?(v1115, v746, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v892 = v1146;
              v893 = v1149;
              if ((*(v1146 + 48))(v746, 1, v1149) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v746, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v894 = 0;
                v895 = 0;
              }

              else
              {
                v896 = v893;
                v894 = SiriKitReliabilityCodes.rawValue.getter();
                v897 = v746;
                v895 = v898;
                v899 = v896;
                v552 = v1112;
                (*(v892 + 8))(v897, v899);
              }

              v900 = *(v887 + 8);
              v1095 = v887;
              v901 = v1113;
              v900(v1113, v552, v1139, v541, v889, v891, v1143, v1135, 0, 0, v894, v895, v1141, v1136, v888, v1095);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
              v902 = v1115;
              v903 = v1134;
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v901, v1148, v552, v1147, v1144, 0, 0, &v1155, v1134, 0, 0, 0, 0, v1132, v1133, v1137, v1138, v1115, 1u, 0, 0, 0);

              (*(v1098 + 8))(v552, v1142);
              outlined destroy of ReferenceResolutionClientProtocol?(v902, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              v120 = *(v1145 + 8);
              v121 = v901;
              goto LABEL_139;
            }

LABEL_531:
            swift_once();
            goto LABEL_395;
          }

LABEL_530:
          __break(1u);
          goto LABEL_531;
        }

        __break(1u);
        goto LABEL_530;
      }
    }

    v737 = v552;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v738 = type metadata accessor for Logger();
    __swift_project_value_buffer(v738, static Logger.instrumentation);

    v739 = Logger.logObject.getter();
    v740 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v739, v740))
    {
      v741 = v550;
      v742 = swift_slowAlloc();
      v743 = swift_slowAlloc();
      *&v1151 = v743;
      *v742 = 136315650;
      v744 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v545, v546, &v1151);

      *(v742 + 4) = v744;
      *(v742 + 12) = 2080;
      *(v742 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1141, v741, &v1151);
      *(v742 + 22) = 2080;
      *(v742 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v548, &v1151);
      _os_log_impl(&dword_1DC659000, v739, v740, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v742, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v743, -1, -1);
      v745 = v742;
      v378 = v1140;
      MEMORY[0x1E12A2F50](v745, -1, -1);
    }

    else
    {
    }

    v746 = v1108;
    v552 = v737;
    goto LABEL_402;
  }

  if (v102 == *MEMORY[0x1E69CFBE0])
  {
    v495 = v1139;
    (*(v98 + 96))(v1139, v97);
    v496 = v495;
    v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v498 = *(v495 + v497[12]);
    v499 = *(v495 + v497[16]);
    v500 = v495 + v497[20];
    v501 = *v500;
    v502 = v71;
    v503 = *(v500 + 8);
    v504 = v496 + v497[24];
    v505 = (v496 + v497[32]);
    v507 = *v505;
    v506 = v505[1];
    v1133 = v507;
    v1131 = v506;
    v1130 = v497;
    v508 = v497[36];
    (*(v502 + 32))(v1111, v496, v1150);
    v509 = *(v504 + 16);
    v1155 = *v504;
    v1156 = v509;
    v1157 = *(v504 + 32);
    v510 = v496 + v508;
    v511 = v1109;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v510, v1109, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1144 = *(v1143 + 16);
    SiriKitEvent.timestamp.getter();
    v1141 = v498;
    if (v503)
    {

      v512 = v499;
      v1136 = 0;
      v1137 = 0;
    }

    else
    {
      *&v1151 = v501;
      lazy protocol witness table accessor for type Int and conformance Int();

      v680 = v499;
      v1136 = BinaryInteger.description.getter();
      v1137 = v681;
    }

    v1132 = v499;
    v682 = [v499 typeName];
    v1138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v684 = v683;

    v1143 = v684;

    v685 = ActivityType.asSELFTypeAndReason(_:)(v511);
    LODWORD(v1127) = v686;
    v687 = v1148;
    v688 = SiriKitEventContext.resultCandidateId.getter();
    if (v689)
    {
      v690 = v688;
    }

    else
    {
      v690 = 13101;
    }

    if (v689)
    {
      v691 = v689;
    }

    else
    {
      v691 = 0xE200000000000000;
    }

    v692 = v687[10];
    v693 = v687[11];
    v694 = *(v1147 + 16);
    v695 = *(v1147 + 24);
    v696 = off_1E8646000;
    v697 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1135 = v695;
    v1134 = v693;
    v1140 = v694;
    if (v697)
    {
      v1126 = v685;
      v1128 = v697;
      v698 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v698)
      {
        v699 = v698;
        v700 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v690, v691, v692, v693, v694, v695);
        if (v700)
        {
          v1125 = v700;
          v701 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
          if (v701)
          {
            v702 = v701;
            v703 = *(v1144 + 152);
            (*(v1144 + 144))(&v1151, v1141);
            v704 = *(&v1152 + 1);
            v705 = v1153;
            __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
            v706 = (*(v705 + 8))(v704, v705);
            if (v707)
            {
              v708 = v707;
            }

            else
            {
              v706 = 0x6C7070615F746F6ELL;
              v708 = 0xEE00656C62616369;
            }

            v709 = MEMORY[0x1E12A1410](v706, v708);

            [v702 setBundleId_];

            v710 = *(&v1152 + 1);
            v711 = v1153;
            __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
            v712 = (*(v711 + 16))(v710, v711);
            if (v713)
            {
              v714 = v713;
            }

            else
            {
              v712 = 0x6C7070615F746F6ELL;
              v714 = 0xEE00656C62616369;
            }

            v715 = MEMORY[0x1E12A1410](v712, v714);

            [v702 setAppVersion_];

            [v699 setAppContext_];
            __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
          }

          v716 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1136, v1137);
          v718 = v717;
          v719 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
          if (v719)
          {
            v720 = v719;
            v1124 = v716;
            v721 = MEMORY[0x1E12A1410](v1138, v1143);

            [v720 setCurrentTaskName_];

            [v720 setCurrentTaskType_];
            v722 = HIDWORD(v1126);
            [v720 setFlowStateType_];
            v723 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
            if (v723)
            {
              if (v1127)
              {
                v724 = 0;
              }

              else
              {
                v724 = v722;
              }

              v725 = v723;
              [v723 setStatusReason_];
              [v720 setFlowStateReason_];
            }

            [v720 setResolvedSlotName_];
            if (v718)
            {
              v726 = MEMORY[0x1E12A1410](v1124, v718);
            }

            else
            {
              v726 = 0;
            }

            [v720 setFlowStateReasonDescription_];

            [v699 setFlowState_];
            v693 = v1134;
          }

          else
          {
          }

          Date.timeIntervalSince1970.getter();
          if ((*&v978 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v978 > -9.22337204e18)
          {
            if (v978 < 9.22337204e18)
            {
              v696 = v692;
              [v699 setTimestampMs_];
              [v699 setSequenceNum_];

              v979 = v1128;
              [v1128 setFlowStep:v699];
              v980 = v979;
              v981 = v1125;
              [v980 setEventMetadata:v1125];

              if (one-time initialization token for instrumentation == -1)
              {
LABEL_452:
                v982 = type metadata accessor for Logger();
                __swift_project_value_buffer(v982, static Logger.instrumentation);

                v983 = Logger.logObject.getter();
                v984 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v983, v984))
                {
                  v985 = swift_slowAlloc();
                  v1127 = swift_slowAlloc();
                  *&v1151 = v1127;
                  *v985 = 136315906;
                  v692 = v696;
                  if (v1126 > 0xD0)
                  {
                    v986 = @"FLOWSTATETYPE_UNKNOWN";
                    v987 = @"FLOWSTATETYPE_UNKNOWN";
                  }

                  else
                  {
                    v986 = off_1E8641388[v1126];
                    v987 = off_1E8641A10[v1126];
                  }

                  v990 = v986;
                  v991 = v987;
                  v992 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v994 = v993;

                  v995 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v992, v994, &v1151);

                  *(v985 + 4) = v995;
                  *(v985 + 12) = 2080;
                  v988 = v1140;
                  v989 = v1135;
                  *(v985 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v1135, &v1151);
                  *(v985 + 22) = 2080;
                  *(v985 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1138, v1143, &v1151);
                  *(v985 + 32) = 2080;
                  *(v985 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
                  _os_log_impl(&dword_1DC659000, v983, v984, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v985, 0x2Au);
                  v996 = v1127;
                  swift_arrayDestroy();
                  MEMORY[0x1E12A2F50](v996, -1, -1);
                  MEMORY[0x1E12A2F50](v985, -1, -1);

                  v813 = v1104;
                }

                else
                {

                  v813 = v1104;
                  v692 = v696;
                  v988 = v1140;
                  v989 = v1135;
                }

                v997 = *(v1144 + 104);
                v998 = v1128;
                (*(v1144 + 96))(v1128);
                TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v692, v693, v988, v989);

                goto LABEL_459;
              }

LABEL_535:
              swift_once();
              goto LABEL_452;
            }

LABEL_534:
            __break(1u);
            goto LABEL_535;
          }

          __break(1u);
          goto LABEL_534;
        }

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v851 = type metadata accessor for Logger();
        __swift_project_value_buffer(v851, static Logger.instrumentation);

        v852 = Logger.logObject.getter();
        v853 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v852, v853))
        {
          v854 = v695;
          v855 = swift_slowAlloc();
          LODWORD(v1126) = v853;
          v856 = v855;
          v1127 = swift_slowAlloc();
          *&v1151 = v1127;
          *v856 = 136315650;
          v857 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v690, v691, &v1151);

          *(v856 + 4) = v857;
          *(v856 + 12) = 2080;
          *(v856 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v854, &v1151);
          *(v856 + 22) = 2080;
          *(v856 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v692, v693, &v1151);
          _os_log_impl(&dword_1DC659000, v852, v1126, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v856, 0x20u);
          v858 = v1127;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v858, -1, -1);
          MEMORY[0x1E12A2F50](v856, -1, -1);

          goto LABEL_357;
        }

        goto LABEL_356;
      }
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v806 = type metadata accessor for Logger();
    __swift_project_value_buffer(v806, static Logger.instrumentation);

    v807 = Logger.logObject.getter();
    v808 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v807, v808))
    {
      v809 = v695;
      v810 = swift_slowAlloc();
      v811 = swift_slowAlloc();
      *&v1151 = v811;
      *v810 = 136315650;
      v812 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v690, v691, &v1151);

      *(v810 + 4) = v812;
      *(v810 + 12) = 2080;
      *(v810 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1140, v809, &v1151);
      *(v810 + 22) = 2080;
      *(v810 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v692, v693, &v1151);
      _os_log_impl(&dword_1DC659000, v807, v808, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v810, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v811, -1, -1);
      MEMORY[0x1E12A2F50](v810, -1, -1);

LABEL_357:
      v813 = v1104;
LABEL_459:
      v1129 = v692;
      outlined init with copy of ReferenceResolutionClientProtocol(v1144 + 16, &v1151);
      v999 = *(&v1152 + 1);
      v1000 = v1153;
      __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
      v1001 = App.appIdentifier.getter();
      v1003 = v1002;
      outlined init with copy of ReferenceResolutionClientProtocol?(v511, v813, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v1004 = v1146;
      v1005 = v1149;
      if ((*(v1146 + 48))(v813, 1, v1149) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v813, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v1006 = 0;
        v1007 = 0;
        v1008 = v1133;
        v848 = v1110;
      }

      else
      {
        v1006 = SiriKitReliabilityCodes.rawValue.getter();
        v1009 = v813;
        v1007 = v1010;
        v848 = v1110;
        (*(v1004 + 8))(v1009, v1005);
        v1008 = v1133;
      }

      v1149 = *(v1130 + 112);
      v1091 = v999;
      v847 = v1111;
      (*(v1000 + 8))(v1111, v848, v1138, v1143, v1001, v1003, v1129, v1134, 0, 0, v1006, v1007, v1140, v1135, v1091, v1000);

      __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
      v849 = v1109;
      v1011 = v1132;
      TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v847, v1148, v848, v1147, v1141, 0, 0, &v1155, v1132, 0, 0, 0, 0, v1008, v1131, v1136, v1137, v1109, 1u, 0, 0, 0);

      goto LABEL_376;
    }

LABEL_356:

    goto LABEL_357;
  }

  if (v102 == *MEMORY[0x1E69CFBB8])
  {
    v585 = v1139;
    (*(v98 + 96))(v1139, v97);
    v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMR);
    v587 = (v585 + v586[12]);
    v588 = v587[1];
    v1134 = *v587;
    v1141 = *(v585 + v586[16]);
    v589 = v585 + v586[20];
    v591 = *v589;
    v590 = *(v589 + 8);
    v1128 = v591;
    v1131 = v590;
    v592 = (v585 + v586[24]);
    v593 = *(v585 + v586[28]);
    v1136 = *(v585 + v586[32]);
    v594 = v585 + v586[36];
    v595 = (v585 + v586[40]);
    v597 = *v595;
    v596 = v595[1];
    v1127 = v597;
    v1130 = v596;
    v598 = v585 + v586[44];
    v600 = *v598;
    v599 = *(v598 + 8);
    v1124 = v600;
    v1125 = v599;
    v601 = v585 + v586[48];
    v603 = *v601;
    v602 = *(v601 + 8);
    v1132 = v603;
    v1133 = v602;
    v604 = v71;
    v605 = v586[52];
    (*(v604 + 32))(v1107, v585, v1150);
    v606 = v592[1];
    v1154[0] = *v592;
    v1154[1] = v606;
    v607 = *(v594 + 16);
    v1155 = *v594;
    v1156 = v607;
    v1157 = *(v594 + 32);
    v608 = v1106;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v585 + v605, v1106, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v609 = *(v1143 + 16);
    SiriKitEvent.timestamp.getter();
    v1140 = v609;
    v1126 = v593;
    if (v593)
    {
      v610 = v1148;
      if (v593[2])
      {
        v611 = TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(v593, v1154);
        if (v611)
        {
          v612 = v611;
          v613 = SiriKitEventContext.resultCandidateId.getter();
          v615 = 13101;
          if (v614)
          {
            v615 = v613;
            v616 = v614;
          }

          else
          {
            v616 = 0xE200000000000000;
          }

          TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(v612, v615, v616, v610[10], v610[11], *(v1147 + 16), *(v1147 + 24));

          v617 = v612;
          v593 = specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(v612);
        }

        else
        {
          v904 = v1147;
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v905 = type metadata accessor for Logger();
          __swift_project_value_buffer(v905, static Logger.instrumentation);

          v906 = Logger.logObject.getter();
          v907 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v906, v907))
          {
            v908 = swift_slowAlloc();
            v909 = swift_slowAlloc();
            *&v1151 = v909;
            *v908 = 136315394;
            *(v908 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v904 + 16), *(v904 + 24), &v1151);
            *(v908 + 12) = 2080;
            *(v908 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v610[10], v610[11], &v1151);
            _os_log_impl(&dword_1DC659000, v906, v907, "#TaskLoggingService SELF Log - not logging EntityContextTier1 event for taskId: %s, executionRequestId: %s", v908, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v909, -1, -1);
            MEMORY[0x1E12A2F50](v908, -1, -1);
          }

          v593 = 0;
          v609 = v1140;
        }
      }

      else
      {
        v593 = 0;
      }
    }

    else
    {
      v610 = v1148;
    }

    v1144 = v588;
    swift_bridgeObjectRetain_n();
    v1123 = ActivityType.asSELFTypeAndReason(_:)(v608);
    v911 = v910;
    v912 = SiriKitEventContext.resultCandidateId.getter();
    if (v913)
    {
      v914 = v912;
    }

    else
    {
      v914 = 13101;
    }

    v915 = 0xE200000000000000;
    if (v913)
    {
      v915 = v913;
    }

    v1135 = v915;
    v916 = v610[11];
    v1143 = v610[10];
    v917 = *(v1147 + 24);
    v1139 = *(v1147 + 16);
    v918 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v919 = v1141;
    v1129 = v593;
    v1137 = v916;
    v1138 = v917;
    if (v918)
    {
      v920 = v918;
      v1122 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v1122)
      {
        v1121 = v914;
        v921 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v914, v1135, v1143, v916, v1139, v917);
        if (!v921)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v956 = type metadata accessor for Logger();
          __swift_project_value_buffer(v956, static Logger.instrumentation);
          v957 = v1135;

          v958 = Logger.logObject.getter();
          v959 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v958, v959))
          {
            v960 = swift_slowAlloc();
            v961 = v916;
            v1123 = v920;
            v962 = v919;
            v963 = v917;
            v964 = v960;
            v965 = swift_slowAlloc();
            *&v1151 = v965;
            *v964 = 136315650;
            v966 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1121, v957, &v1151);

            *(v964 + 4) = v966;
            *(v964 + 12) = 2080;
            v939 = v1139;
            v967 = v963;
            v919 = v962;
            v968 = v1106;
            *(v964 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1139, v967, &v1151);
            *(v964 + 22) = 2080;
            *(v964 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v961, &v1151);
            _os_log_impl(&dword_1DC659000, v958, v959, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v964, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v965, -1, -1);
            v609 = v1140;
            MEMORY[0x1E12A2F50](v964, -1, -1);

LABEL_502:
            outlined init with copy of ReferenceResolutionClientProtocol(v609 + 16, &v1151);
            v1060 = *(&v1152 + 1);
            v1061 = v1153;
            v1139 = __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
            if (v919)
            {
              v1062 = App.appIdentifier.getter();
              v1064 = v1063;
            }

            else
            {
              v1062 = 0;
              v1064 = 0;
            }

            v1065 = v968;
            v1066 = v1103;
            outlined init with copy of ReferenceResolutionClientProtocol?(v1065, v1103, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
            v1067 = v1146;
            v1068 = v1149;
            if ((*(v1146 + 48))(v1066, 1, v1149) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v1066, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v1069 = 0;
              v1070 = 0;
            }

            else
            {
              v1071 = v1068;
              v1069 = SiriKitReliabilityCodes.rawValue.getter();
              v1072 = v1066;
              v1070 = v1073;
              (*(v1067 + 8))(v1072, v1071);
            }

            v1074 = *(v1061 + 8);
            v1092 = v1060;
            v1096 = v1061;
            v1086 = v939;
            v1075 = v1130;
            v1076 = v1127;
            v1077 = v1107;
            v1078 = v1105;
            v1079 = v1134;
            v1080 = v1144;
            v1074(v1107, v1105, v1134, v1144, v1062, v1064, v1143, v1137, v1127, v1130, v1069, v1070, v1086, v1138, v1092, v1096);

            __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
            v1081 = v1106;
            TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v1077, v1148, v1078, v1147, v1141, v1128, v1131, &v1155, 0, v1079, v1080, v1076, v1075, v1124, v1125, v1132, v1133, v1106, 1u, 0, 0, 0);

            (*(v1098 + 8))(v1078, v1142);
            outlined destroy of ReferenceResolutionClientProtocol?(v1081, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v1154, &_sypSgMd, &_sypSgMR);
            v120 = *(v1145 + 8);
            v121 = v1077;
            goto LABEL_139;
          }

          v939 = v1139;
LABEL_501:
          v968 = v1106;
          goto LABEL_502;
        }

        v1120 = v921;
        v922 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v922)
        {
          v923 = v922;
          v924 = *(v1140 + 152);
          (*(v1140 + 144))(&v1151, v919);
          v925 = *(&v1152 + 1);
          v926 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v927 = (*(v926 + 8))(v925, v926);
          if (v928)
          {
            v929 = v928;
          }

          else
          {
            v927 = 0x6C7070615F746F6ELL;
            v929 = 0xEE00656C62616369;
          }

          v930 = MEMORY[0x1E12A1410](v927, v929);

          [v923 setBundleId_];

          v931 = *(&v1152 + 1);
          v932 = v1153;
          __swift_project_boxed_opaque_existential_1(&v1151, *(&v1152 + 1));
          v933 = *(v932 + 16);
          v934 = v932;
          v593 = v1129;
          v935 = v933(v931, v934);
          if (v936)
          {
            v937 = v936;
          }

          else
          {
            v935 = 0x6C7070615F746F6ELL;
            v937 = 0xEE00656C62616369;
          }

          v938 = MEMORY[0x1E12A1410](v935, v937);

          [v923 setAppVersion_];

          [v1122 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1151);
        }

        v939 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1132, v1133);
        v941 = v940;
        v942 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v942)
        {
          v943 = v942;
          v944 = MEMORY[0x1E12A1410](v1134, v1144);

          [v943 setCurrentTaskName_];

          if (v1131)
          {
            v945 = MEMORY[0x1E12A1410](v1128);
          }

          else
          {
            v945 = 0;
          }

          v1021 = v1123;
          [v943 setCurrentTaskType_];

          [v943 setFlowStateType_];
          v1022 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v1022)
          {
            if (v911)
            {
              v1023 = 0;
            }

            else
            {
              v1023 = HIDWORD(v1021);
            }

            v1024 = v1022;
            [v1022 setStatusReason_];
            [v943 setFlowStateReason_];
          }

          v1014 = v1122;
          if (v1130)
          {
            v1025 = MEMORY[0x1E12A1410](v1127);
          }

          else
          {
            v1025 = 0;
          }

          [v943 setResolvedSlotName_];

          if (v941)
          {
            v1026 = MEMORY[0x1E12A1410](v939, v941);
          }

          else
          {
            v1026 = 0;
          }

          [v943 setFlowStateReasonDescription_];

          [v1014 setFlowState_];
          v1012 = v1137;
          v1013 = v1138;
        }

        else
        {

          v1012 = v1137;
          v1013 = v1138;
          v1014 = v1122;
        }

        if (v1136)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v1027 = swift_allocObject();
          *(v1027 + 16) = xmmword_1DCA70640;
          v1028 = v1136;
          *(v1027 + 32) = v1136;
          type metadata accessor for FLOWSchemaFLOWDomainContext();
          v1029 = v1028;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v1014 setDomainContexts_];
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v1031 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v1031 > -9.22337204e18)
        {
          if (v1031 < 9.22337204e18)
          {
            [v1014 setTimestampMs_];
            [v1014 setSequenceNum_];
            if (v593)
            {
              v1032 = one-time initialization token for instrumentation;
              v1033 = v593;
              if (v1032 != -1)
              {
                swift_once();
              }

              v1034 = type metadata accessor for Logger();
              __swift_project_value_buffer(v1034, static Logger.instrumentation);
              v1035 = v1135;

              v1036 = Logger.logObject.getter();
              v1037 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v1036, v1037))
              {
                v1038 = swift_slowAlloc();
                v1119 = v1033;
                v1039 = v1038;
                v1040 = swift_slowAlloc();
                *&v1151 = v1040;
                *v1039 = 136315650;
                v1041 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1121, v1035, &v1151);

                *(v1039 + 4) = v1041;
                *(v1039 + 12) = 2080;
                v939 = v1139;
                *(v1039 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1139, v1013, &v1151);
                *(v1039 + 22) = 2080;
                *(v1039 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v1012, &v1151);
                _os_log_impl(&dword_1DC659000, v1036, v1037, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v1039, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v1040, -1, -1);
                v1042 = v1039;
                v1033 = v1119;
                MEMORY[0x1E12A2F50](v1042, -1, -1);
              }

              else
              {

                v939 = v1139;
              }

              LODWORD(v1012) = v1123;
              v1014 = v1122;
              [v1122 setPlatformRelatedContext_];
            }

            else
            {

              v939 = v1139;
              LODWORD(v1012) = v1123;
            }

            [v920 setFlowStep_];
            v1043 = v1120;
            [v920 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
              goto LABEL_494;
            }

            goto LABEL_539;
          }

LABEL_538:
          __break(1u);
LABEL_539:
          swift_once();
LABEL_494:
          v1044 = type metadata accessor for Logger();
          __swift_project_value_buffer(v1044, static Logger.instrumentation);

          v1045 = Logger.logObject.getter();
          v1046 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v1045, v1046))
          {
            v1047 = swift_slowAlloc();
            v1048 = swift_slowAlloc();
            *&v1151 = v1048;
            *v1047 = 136315906;
            v1049 = v920;
            if (v1012 > 0xD0)
            {
              v1050 = @"FLOWSTATETYPE_UNKNOWN";
              v1051 = @"FLOWSTATETYPE_UNKNOWN";
            }

            else
            {
              v1050 = off_1E8642098[v1012];
              v1051 = off_1E8642720[v1012];
            }

            v1053 = v1050;
            v1054 = v1051;
            v1055 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v1057 = v1056;

            v1058 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1055, v1057, &v1151);

            *(v1047 + 4) = v1058;
            *(v1047 + 12) = 2080;
            v939 = v1139;
            v1052 = v1138;
            *(v1047 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1139, v1138, &v1151);
            *(v1047 + 22) = 2080;
            *(v1047 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1134, v1144, &v1151);
            *(v1047 + 32) = 2080;
            *(v1047 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1148[12], v1148[13], &v1151);
            _os_log_impl(&dword_1DC659000, v1045, v1046, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v1047, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v1048, -1, -1);
            MEMORY[0x1E12A2F50](v1047, -1, -1);

            v920 = v1049;
          }

          else
          {

            v1052 = v1138;
          }

          v609 = v1140;
          v1059 = *(v1140 + 104);
          (*(v1140 + 96))(v920);
          TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1143, v1137, v939, v1052);

          goto LABEL_501;
        }

        __break(1u);
        goto LABEL_538;
      }
    }

    v946 = v919;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v947 = type metadata accessor for Logger();
    __swift_project_value_buffer(v947, static Logger.instrumentation);
    v948 = v1135;

    v949 = Logger.logObject.getter();
    v950 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v949, v950))
    {
      v951 = v916;
      v952 = v917;
      v953 = swift_slowAlloc();
      v954 = swift_slowAlloc();
      *&v1151 = v954;
      *v953 = 136315650;
      v955 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v914, v948, &v1151);

      *(v953 + 4) = v955;
      *(v953 + 12) = 2080;
      v939 = v1139;
      *(v953 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1139, v952, &v1151);
      *(v953 + 22) = 2080;
      *(v953 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1143, v951, &v1151);
      _os_log_impl(&dword_1DC659000, v949, v950, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v953, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v954, -1, -1);
      v609 = v1140;
      MEMORY[0x1E12A2F50](v953, -1, -1);

      v919 = v946;
    }

    else
    {

      v939 = v1139;
    }

    goto LABEL_501;
  }

  if (v102 == *MEMORY[0x1E69CFBC0])
  {
    v727 = v1139;
    (*(v98 + 96))(v1139, v97);
    LODWORD(v1141) = *v727;
    v728 = *(v727 + 16);
    v1149 = *(v727 + 8);
    v729 = *(v727 + 32);
    v1145 = *(v727 + 24);
    v1146 = v729;
    v730 = *(v727 + 48);
    v1140 = *(v727 + 40);
    v731 = *(v727 + 64);
    v1137 = *(v727 + 56);
    v732 = *(v727 + 88);
    v1150 = *(v727 + 80);
    v733 = *(v727 + 96);
    v734 = *(v727 + 104);
    v735 = *(v727 + 108);
    v736 = *(v1143 + 16);
    SiriKitEvent.timestamp.getter();
    LOBYTE(v1155) = v735;
    specialized TaskLoggingService.logSELFFlowTask(activityType:eventContext:eventTime:task:taskType:app:attribute:domainContext:parameterName:responseId:statusReasonDescription:statusReason:)(v1141, v1148, v122, v1147, v1149, v728, v1145, v1146, v1140, v730, v1137, v731, v732, v733, v734 | (v735 << 32));

    (*(v1098 + 8))(v122, v1142);
  }

  else if (v102 == *MEMORY[0x1E69CFBF8])
  {
    v799 = v1139;
    (*(v98 + 96))(v1139, v97);
    v800 = v1101;
    v801 = v1100;
    v802 = v1102;
    (*(v1101 + 32))(v1100, v799, v1102);
    v803 = *(v1143 + 16);
    SiriKitEvent.timestamp.getter();
    v805 = v803[10];
    v804 = v803[11];
    __swift_project_boxed_opaque_existential_1(v803 + 7, v805);
    (*(v804 + 16))(v1148, v122, v801, *(v1147 + 16), *(v1147 + 24), v805, v804);
    (*(v15 + 8))(v122, v1142);
    (*(v800 + 8))(v801, v802);
  }

  else
  {
    v859 = v1142;
    v860 = v1143;
    if (v102 == *MEMORY[0x1E69CFBD8])
    {
      v861 = v1139;
      (*(v98 + 96))(v1139, v97);
      v862 = *v861;
      v863 = v861[1];
      v864 = v861[2];
      v865 = *(v860 + 16);
      TaskLoggingService.logDomainTier1Data(eventContext:task:taskType:tierOneFlowEvent:)(v1148, v1147, v862, v863, v864);
    }

    else if (v102 == *MEMORY[0x1E69CFBC8])
    {
      v969 = v1143;
      v970 = v1139;
      (*(v98 + 96))(v1139, v97);
      v972 = *v970;
      v971 = v970[1];
      v1144 = *(v969 + 16);
      v973 = v1150;
      (*(v71 + 104))(v74, *MEMORY[0x1E69CFD98], v1150);
      SiriKitEvent.timestamp.getter();
      v1157 = 0;
      v1155 = 0u;
      v1156 = 0u;
      *&v1151 = v972;
      *(&v1151 + 1) = v971;
      *&v1154[0] = 0x203A746365726944;
      *(&v1154[0] + 1) = 0xE800000000000000;
      lazy protocol witness table accessor for type String and conformance String();

      v974 = v972;
      v975 = v971;
      if (StringProtocol.contains<A>(_:)())
      {

        v975 = 0xEE00746E65746E49;
        v974 = 0x6465737261706E55;
      }

      v976 = v1126;
      (*(v1146 + 56))(v1126, 1, 1, v1149);
      v977 = v1099;
      TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(v74, v1148, v1099, v1147, 0, v972, v971, 0, &v1155, 0, v974, v975, 0, 0, 0, 0, 0x6168436369706F54, 0xEC0000006465676ELL, v976, 0);

      outlined destroy of ReferenceResolutionClientProtocol?(v976, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(&v1155, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      (*(v15 + 8))(v977, v859);
      (*(v1145 + 8))(v74, v973);
    }

    else if (v102 == *MEMORY[0x1E69CFC08])
    {
      v1015 = v1139;
      (*(v98 + 96))(v1139, v97);
      v1016 = *v1015;
      v1017 = v1015[1];
      v1018 = v1015[2];
      v1019 = *(v860 + 16);
      v1020 = SiriKitEvent.machAbsoluteTime.getter();
      TaskLoggingService.logDomainPerfContext(eventContext:eventTime:task:taskType:domainPerfContext:)(v1148, v1020, v1147, v1016, v1017, v1018);
    }

    else if (v102 == *MEMORY[0x1E69CFC30])
    {
      v1082 = v1139;
      (*(v98 + 96))(v1139, v97);
      v1083 = *v1082;
      v1084 = *(v1143 + 16);
      TaskLoggingService.logLocationAccessPrompt(eventContext:task:promptContext:)(v1148, v1147, v1083);
    }

    else
    {
      (*(v98 + 8))(v1139, v97);
    }
  }
}

uint64_t sub_1DC69CE1C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined init with copy of SiriKitEventOverrides?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SiriKitEventOverrides?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized IntentLoggingEventSink.receive(_:_:)()
{
  v384 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v366 = *(v1 - 8);
  v2 = *(v366 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v370 = &v348 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v353 = &v348 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v368 = &v348 - v7;
  v367 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v355 = &v348 - v10;
  v11 = type metadata accessor for SiriKitConfirmationState();
  *(&v380 + 1) = *(v11 - 8);
  v381 = v11;
  v12 = *(*(&v380 + 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v371 = &v348 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v379 = &v348 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v373 = &v348 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v354 = &v348 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v360 = &v348 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v378 = &v348 - v24;
  MEMORY[0x1EEE9AC00](v25);
  *&v380 = &v348 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v382 = &v348 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v385 = &v348 - v30;
  v383 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v348 - v33;
  v35 = type metadata accessor for SiriKitEventPayload();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v369 = &v348 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v348 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  v363 = *(v42 - 8);
  v43 = *(v363 + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v361 = &v348 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v365 = &v348 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v359 = &v348 - v48;
  v364 = v49;
  MEMORY[0x1EEE9AC00](v50);
  v377 = &v348 - v51;
  v52 = type metadata accessor for ActivityType();
  v53 = *(v52 - 8);
  v374 = v52;
  v375 = v53;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v372 = &v348 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v352 = &v348 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v358 = &v348 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v356 = &v348 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v357 = &v348 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v362 = &v348 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v376 = (&v348 - v67);
  SiriKitEvent.payload.getter();
  v68 = v41;
  v69 = (*(v36 + 88))(v41, v35);
  if (v69 == *MEMORY[0x1E69CFBD0])
  {
    (*(v36 + 96))(v41, v35);
    v70 = *v41;
    v71 = v68[2];

    SiriKitEvent.timestamp.getter();
    IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(v70, v34, 0x53746E65746E692ELL, 0xEE00646574726174);

    return (*(v16 + 8))(v34, v15);
  }

  v349 = v34;
  v350 = v15;
  v351 = v16;
  if (v69 == *MEMORY[0x1E69CFC48])
  {
    (*(v36 + 96))(v41, v35);
    v74 = *v41;
    v73 = v41[1];
    v75 = v41[3];
    v76 = v41[4];
    v78 = v41[5];
    v77 = v41[6];
    v79 = *(v68 + 56);

    v80 = v385;
    SiriKitEvent.timestamp.getter();
    if (v73)
    {
      *&v380 = v76;
      v382 = ".disambiguationResult";
      v81 = v73;
      v82 = [v81 intentId];
      v381 = v74;
      DWORD2(v380) = v79;
      if (v82)
      {
        v83 = v82;
        v379 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;
      }

      else
      {
        v379 = 0;
        v85 = 0;
      }

      v132 = v351;
      v133 = v349;
      v134 = v80;
      v135 = v350;
      (*(v351 + 16))(v349, v134, v350);
      v136 = (*(v132 + 80) + 64) & ~*(v132 + 80);
      v137 = (v383 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
      v138 = swift_allocObject();
      *(v138 + 16) = v380;
      *(v138 + 24) = v78;
      *(v138 + 32) = v81;
      *(v138 + 40) = v77;
      *(v138 + 48) = BYTE8(v380);
      *(v138 + 56) = v381;
      (*(v132 + 32))(v138 + v136, v133, v135);
      *(v138 + v137) = v384;
      v139 = v81;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v379, v85, 0xD000000000000016, v382 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleDisambiguationOffered(intent:parameterName:multicardinalValueIndex:disambiguationItems:now:context:));

      return (*(v132 + 8))(v385, v135);
    }

    else
    {

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      __swift_project_value_buffer(v114, static Logger.instrumentation);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_1DC659000, v115, v116, "Intent is nil, not sending handleDisambiguationOffered event.", v117, 2u);
        MEMORY[0x1E12A2F50](v117, -1, -1);
      }

      return (*(v351 + 8))(v80, v350);
    }
  }

  if (v69 == *MEMORY[0x1E69CFC28])
  {
    (*(v36 + 96))(v41, v35);
    v86 = v41;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0SiSg18multicardinalIndextMd, &_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0SiSg18multicardinalIndextMR);
    v88 = *(v41 + v87[12]);
    v89 = *(v41 + v87[16] + 8);

    v90 = (v41 + v87[20]);
    v92 = *v90;
    v91 = v90[1];
    v93 = v86 + v87[24];
    v94 = *v93;
    v95 = v93[8];
    (*(*(&v380 + 1) + 8))(v86, v381);
    v96 = v382;
    SiriKitEvent.timestamp.getter();
    if (v88)
    {
      v381 = v92;
      v385 = ".confirmationOffered";
      v97 = v88;
      v98 = [v97 intentId];
      LODWORD(v380) = v95;
      if (v98)
      {
        v99 = v98;
        *(&v380 + 1) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v100;
      }

      else
      {
        *(&v380 + 1) = 0;
        v101 = 0;
      }

      v158 = v351;
      v159 = v349;
      v160 = v350;
      (*(v351 + 16))(v349, v96, v350);
      v161 = (*(v158 + 80) + 49) & ~*(v158 + 80);
      v162 = (v383 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
      v163 = swift_allocObject();
      v164 = v381;
      *(v163 + 16) = v97;
      *(v163 + 24) = v164;
      *(v163 + 32) = v91;
      *(v163 + 40) = v94;
      *(v163 + 48) = v380;
      (*(v158 + 32))(v163 + v161, v159, v160);
      *(v163 + v162) = v384;
      v165 = v97;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(*(&v380 + 1), v101, 0xD000000000000015, v385 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleDisambiguationResult(intent:parameterName:multicardinalIndexValue:sirikitConfirmationState:now:context:));

      return (*(v158 + 8))(v382, v160);
    }

    else
    {

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v140 = type metadata accessor for Logger();
      __swift_project_value_buffer(v140, static Logger.instrumentation);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_1DC659000, v141, v142, "Intent is nil, not sending handleDisambiguationResult event.", v143, 2u);
        MEMORY[0x1E12A2F50](v143, -1, -1);
      }

      return (*(v351 + 8))(v96, v350);
    }
  }

  if (v69 != *MEMORY[0x1E69CFC18])
  {
    if (v69 == *MEMORY[0x1E69CFC00])
    {
      (*(v36 + 96))(v41, v35);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMd, &_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMR);
      v119 = *(v41 + v118[12]);
      v120 = *(v41 + v118[16] + 8);

      v121 = (v41 + v118[20]);
      v122 = *v121;
      v123 = v121[1];
      v124 = v41 + v118[28];
      v382 = *v124;
      LODWORD(v380) = v124[8];
      v126 = *(&v380 + 1);
      v125 = v381;
      v127 = *(*(&v380 + 1) + 32);
      v385 = v68;
      v376 = v127;
      v377 = v122;
      v127(v379, v68, v381);
      v128 = v378;
      SiriKitEvent.timestamp.getter();
      if (v119)
      {
        v373 = v123;
        v374 = "ivity(.canceled)";
        v375 = v118;
        v370 = v119;
        v129 = [v370 intentId];
        if (v129)
        {
          v130 = v129;
          v369 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v372 = v131;
        }

        else
        {
          v369 = 0;
          v372 = 0;
        }

        v219 = *(&v380 + 1) + 16;
        v220 = v371;
        (*(*(&v380 + 1) + 16))(v371, v379, v125);
        v207 = v351;
        v208 = v350;
        (*(v351 + 16))(v349, v128, v350);
        v221 = (*(v219 + 64) + 40) & ~*(v219 + 64);
        v222 = (v12 + v221 + 7) & 0xFFFFFFFFFFFFFFF8;
        v223 = (*(v207 + 80) + v222 + 9) & ~*(v207 + 80);
        v224 = (v383 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
        v225 = swift_allocObject();
        v226 = v370;
        v227 = v377;
        *(v225 + 2) = v370;
        *(v225 + 3) = v227;
        *(v225 + 4) = v373;
        v376(&v225[v221], v220, v381);
        v228 = &v225[v222];
        v229 = v381;
        *v228 = v382;
        v228[8] = v380;
        v210 = v379;
        (*(v207 + 32))(&v225[v223], v349, v208);
        *&v225[v224] = v384;
        v230 = v226;
        v125 = v229;
        v231 = v230;
        specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v369, v372, 0xD000000000000013, v374 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:));

        v126 = *(&v380 + 1);

        v209 = v378;
        v118 = v375;
      }

      else
      {

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v203 = type metadata accessor for Logger();
        __swift_project_value_buffer(v203, static Logger.instrumentation);
        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_1DC659000, v204, v205, "Intent is nil, not sending handleConfirmationResult event.", v206, 2u);
          MEMORY[0x1E12A2F50](v206, -1, -1);
        }

        v207 = v351;
        v208 = v350;
        v209 = v378;
        v210 = v379;
      }

      (*(v207 + 8))(v209, v208);
      (*(v126 + 8))(v210, v125);
      v232 = &_sypSgMd;
      v233 = &_sypSgMR;
      v234 = v385 + v118[24];
      return outlined destroy of ReferenceResolutionClientProtocol?(v234, v232, v233);
    }

    if (v69 == *MEMORY[0x1E69CFBE8])
    {
      v144 = v36;
      v145 = v35;
      (*(v36 + 96))(v41, v35);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMR);
      v385 = *(v41 + v146[12]);
      v147 = *(v41 + v146[16]);

      v148 = v146[20];
      v149 = *(v41 + v146[24] + 8);

      v150 = *(v41 + v146[28] + 8);

      v151 = *(v41 + v146[32] + 8);

      v152 = v146[36];
      v153 = v375;
      v154 = v374;
      (*(v375 + 4))(v376, v41, v374);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v41 + v148, v377, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      v155 = &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd;
      v156 = &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR;
      v157 = v41 + v152;
LABEL_42:
      outlined destroy of ReferenceResolutionClientProtocol?(v157, v155, v156);
      v177 = v372;
      (*(v153 + 13))(v372, *MEMORY[0x1E69CFDD0], v154);
      lazy protocol witness table accessor for type ActivityType and conformance ActivityType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v387 == v386)
      {
        v178 = 1;
      }

      else
      {
        v178 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v186 = v145;
      v187 = *(v153 + 1);
      v187(v177, v154);

      if ((v178 & 1) == 0)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v377, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        return (v187)(v376, v154);
      }

      SiriKitEvent.timestamp.getter();
      *&v387 = 46;
      *(&v387 + 1) = 0xE100000000000000;
      v188 = v369;
      SiriKitEvent.payload.getter();
      v189 = SiriKitEventPayload.description.getter();
      v191 = v190;
      (*(v144 + 8))(v188, v186);
      MEMORY[0x1E12A1580](v189, v191);

      MEMORY[0x1E12A1580](11816, 0xE200000000000000);
      v192 = v376;
      v193 = ActivityType.rawValue.getter();
      v195 = v194;
      v187(v192, v154);
      MEMORY[0x1E12A1580](v193, v195);

      v196 = *(&v387 + 1);
      v382 = v387;
      v197 = type metadata accessor for SiriKitReliabilityCodes();
      v198 = v370;
      (*(*(v197 - 8) + 56))(v370, 1, 1, v197);
      v199 = v385;
      [v199 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for INIntent();
      if (swift_dynamicCast())
      {
        v385 = v196;
        *(&v380 + 1) = v386;
        v200 = [v386 intentId];
        v381 = v199;
        if (v200)
        {
          v201 = v200;
          v379 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *&v380 = v202;
        }

        else
        {
          v379 = 0;
          *&v380 = 0;
        }

        v256 = v349;
        v257 = v365;
        outlined init with copy of ReferenceResolutionClientProtocol?(v377, v365, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        v258 = v368;
        outlined init with copy of ReferenceResolutionClientProtocol?(v198, v368, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v244 = v351;
        v245 = v350;
        (*(v351 + 16))(v256, v373, v350);
        v259 = (*(v363 + 80) + 16) & ~*(v363 + 80);
        v260 = (v364 + *(v366 + 80) + v259) & ~*(v366 + 80);
        v261 = (v367 + v260 + 7) & 0xFFFFFFFFFFFFFFF8;
        v262 = (*(v244 + 80) + v261 + 8) & ~*(v244 + 80);
        v263 = (v383 + v262 + 7) & 0xFFFFFFFFFFFFFFF8;
        v264 = swift_allocObject();
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v257, v264 + v259, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v258, v264 + v260, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v265 = v381;
        *(v264 + v261) = v381;
        (*(v244 + 32))(v264 + v262, v349, v245);
        *(v264 + v263) = v384;
        v198 = v370;
        v266 = v265;
        specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v379, v380, v382, v385, partial apply for closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:));

        v247 = v377;
        v246 = v373;
      }

      else
      {
        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v235 = type metadata accessor for Logger();
        __swift_project_value_buffer(v235, static Logger.instrumentation);
        v236 = v199;
        v237 = Logger.logObject.getter();
        v238 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          v240 = swift_slowAlloc();
          *&v387 = v240;
          *v239 = 136315138;
          v241 = INIntent.debugDescriptionLite.getter();
          v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v242, &v387);

          *(v239 + 4) = v243;
          _os_log_impl(&dword_1DC659000, v237, v238, "Unexpected failure when cloning intent: %s", v239, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v240);
          MEMORY[0x1E12A2F50](v240, -1, -1);
          MEMORY[0x1E12A2F50](v239, -1, -1);
        }

        v244 = v351;
        v245 = v350;
        v246 = v373;
        v247 = v377;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v198, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      (*(v244 + 8))(v246, v245);
      v232 = &_s11SiriKitFlow17LaunchAppBehaviorOSgMd;
      v233 = &_s11SiriKitFlow17LaunchAppBehaviorOSgMR;
      v234 = v247;
      return outlined destroy of ReferenceResolutionClientProtocol?(v234, v232, v233);
    }

    v154 = v374;
    v153 = v375;
    if (v69 == *MEMORY[0x1E69CFC10])
    {
      v144 = v36;
      v145 = v35;
      (*(v36 + 96))(v41, v35);
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
      v171 = *(v41 + v170[12]);

      v385 = *(v41 + v170[16]);
      v172 = *(v41 + v170[20] + 8);

      v173 = v170[28];
      v174 = v170[32];
      v175 = *(v41 + v170[36] + 8);

      v176 = v170[40];
      (*(v153 + 4))(v376, v41, v154);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v41 + v174, v377, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v41 + v176, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v155 = &_s11SiriKitFlow0C8Activity_pSgMd;
      v156 = &_s11SiriKitFlow0C8Activity_pSgMR;
      v157 = v41 + v173;
      goto LABEL_42;
    }

    if (v69 == *MEMORY[0x1E69CFC20])
    {
      (*(v36 + 96))(v41, v35);
      v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
      v212 = *(v41 + v211[12]);

      v213 = *(v41 + v211[16]);
      v214 = *(v41 + v211[28] + 8);

      v215 = *(v153 + 4);
      v216 = v362;
      v385 = v41;
      v215(v362, v41, v154);
      v217 = v357;
      (*(v153 + 13))(v357, *MEMORY[0x1E69CFDD8], v154);
      lazy protocol witness table accessor for type ActivityType and conformance ActivityType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v387 == v386)
      {
        v218 = 1;
      }

      else
      {
        v218 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v268 = *(v153 + 1);
      v267 = v153 + 2;
      v269 = v217;
      v270 = v268;
      v268(v269, v154);

      if (v218)
      {
        v382 = v270;
        v271 = type metadata accessor for LaunchAppBehavior();
        v272 = v359;
        (*(*(v271 - 8) + 56))(v359, 1, 1, v271);
        v273 = v213;
        v274 = v360;
        SiriKitEvent.timestamp.getter();
        v275 = type metadata accessor for SiriKitReliabilityCodes();
        v276 = v355;
        (*(*(v275 - 8) + 56))(v355, 1, 1, v275);
        v277 = v273;
        [v277 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for INIntent();
        if (swift_dynamicCast())
        {
          *&v380 = ".handleActivity(.";
          *(&v380 + 1) = v386;
          v278 = [v386 intentId];
          v279 = v351;
          v375 = v267;
          v381 = v277;
          if (v278)
          {
            v280 = v278;
            v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v379 = v281;
          }

          else
          {
            v378 = 0;
            v379 = 0;
          }

          v321 = v365;
          outlined init with copy of ReferenceResolutionClientProtocol?(v272, v365, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
          v322 = v368;
          outlined init with copy of ReferenceResolutionClientProtocol?(v276, v368, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
          v323 = v274;
          v295 = v350;
          (*(v279 + 16))(v349, v323, v350);
          v324 = (*(v363 + 80) + 16) & ~*(v363 + 80);
          v325 = (v364 + *(v366 + 80) + v324) & ~*(v366 + 80);
          v326 = (v367 + v325 + 7) & 0xFFFFFFFFFFFFFFF8;
          v327 = (*(v351 + 80) + v326 + 8) & ~*(v351 + 80);
          v328 = (v383 + v327 + 7) & 0xFFFFFFFFFFFFFFF8;
          v329 = swift_allocObject();
          v330 = v329 + v324;
          v294 = v351;
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v321, v330, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v322, v329 + v325, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
          v331 = v381;
          *(v329 + v326) = v381;
          (*(v294 + 32))(v329 + v327, v349, v295);
          *(v329 + v328) = v384;
          v332 = v331;
          specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v378, v379, 0xD000000000000020, v380 | 0x8000000000000000, closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)partial apply);
          v276 = v355;

          v296 = v360;
          v297 = v359;

          v154 = v374;
          v216 = v362;
        }

        else
        {
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v284 = type metadata accessor for Logger();
          __swift_project_value_buffer(v284, static Logger.instrumentation);
          v285 = v277;
          v286 = Logger.logObject.getter();
          v287 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v286, v287))
          {
            v288 = swift_slowAlloc();
            v289 = swift_slowAlloc();
            *&v387 = v289;
            *v288 = 136315138;
            v290 = INIntent.debugDescriptionLite.getter();
            v292 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v290, v291, &v387);

            *(v288 + 4) = v292;
            v216 = v362;
            _os_log_impl(&dword_1DC659000, v286, v287, "Unexpected failure when cloning intent: %s", v288, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v289);
            v293 = v289;
            v276 = v355;
            MEMORY[0x1E12A2F50](v293, -1, -1);
            MEMORY[0x1E12A2F50](v288, -1, -1);
          }

          v294 = v351;
          v295 = v350;
          v296 = v360;
          v297 = v359;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v276, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        (*(v294 + 8))(v296, v295);
        outlined destroy of ReferenceResolutionClientProtocol?(v297, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        (v382)(v216, v154);
      }

      else
      {
        v270(v216, v154);
      }

      v333 = v211[24];
      v334 = v211[32];
      goto LABEL_108;
    }

    if (v69 != *MEMORY[0x1E69CFBE0])
    {
      return (*(v36 + 8))(v41, v35);
    }

    (*(v36 + 96))(v41, v35);
    v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v249 = *(v41 + v248[12]);

    v250 = *(v41 + v248[16]);
    v251 = v248[28];
    v381 = v248;
    v252 = *(v68 + v248[32] + 8);

    v253 = v356;
    (*(v153 + 4))(v356, v68, v154);
    v385 = v68;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v68 + v251, v361, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
    v254 = *(v153 + 13);
    v254(v358, *MEMORY[0x1E69CFDE0], v154);
    lazy protocol witness table accessor for type ActivityType and conformance ActivityType();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v387 == v386)
    {
      v255 = 1;
    }

    else
    {
      v255 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v282 = *(v375 + 1);
    v375 += 2;
    v382 = v282;
    v282(v358, v154);

    if ((v255 & 1) == 0)
    {
      v283 = v352;
      v254(v352, *MEMORY[0x1E69CFDD0], v154);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v387 == v386)
      {
        (v382)(v283, v154);
      }

      else
      {
        v298 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (v382)(v283, v154);

        if ((v298 & 1) == 0)
        {

LABEL_107:
          outlined destroy of ReferenceResolutionClientProtocol?(v361, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
          (v382)(v253, v154);
          v333 = v381[24];
          v334 = v381[36];
LABEL_108:
          v347 = v385;
          outlined destroy of ReferenceResolutionClientProtocol?(v385 + v334, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
          v232 = &_s11SiriKitFlow0C8Activity_pSgMd;
          v233 = &_s11SiriKitFlow0C8Activity_pSgMR;
          v234 = &v347[v333];
          return outlined destroy of ReferenceResolutionClientProtocol?(v234, v232, v233);
        }
      }
    }

    v299 = v250;
    v300 = v354;
    SiriKitEvent.timestamp.getter();
    *&v387 = 0;
    *(&v387 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    *&v387 = 0xD000000000000011;
    *(&v387 + 1) = 0x80000001DCA844E0;
    v301 = ActivityType.rawValue.getter();
    MEMORY[0x1E12A1580](v301);

    v302 = v387;
    v303 = type metadata accessor for SiriKitReliabilityCodes();
    v304 = v353;
    (*(*(v303 - 8) + 56))(v353, 1, 1, v303);
    v305 = v299;
    [v305 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for INIntent();
    if (swift_dynamicCast())
    {
      v378 = v386;
      v306 = [v386 intentId];
      v380 = v302;
      v379 = v305;
      if (v306)
      {
        v307 = v306;
        v376 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v377 = v308;
      }

      else
      {
        v376 = 0;
        v377 = 0;
      }

      v335 = v365;
      outlined init with copy of ReferenceResolutionClientProtocol?(v361, v365, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      v336 = v368;
      outlined init with copy of ReferenceResolutionClientProtocol?(v304, v368, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v319 = v351;
      v320 = v350;
      (*(v351 + 16))(v349, v300, v350);
      v337 = (*(v363 + 80) + 16) & ~*(v363 + 80);
      v338 = (v364 + *(v366 + 80) + v337) & ~*(v366 + 80);
      v339 = (v367 + v338 + 7) & 0xFFFFFFFFFFFFFFF8;
      v340 = (*(v319 + 80) + v339 + 8) & ~*(v319 + 80);
      v341 = (v383 + v340 + 7) & 0xFFFFFFFFFFFFFFF8;
      v342 = swift_allocObject();
      v343 = v342 + v337;
      v300 = v354;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v335, v343, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v336, v342 + v338, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v344 = v379;
      *(v342 + v339) = v379;
      v345 = v342 + v340;
      v304 = v353;
      (*(v319 + 32))(v345, v349, v320);
      *(v342 + v341) = v384;
      v346 = v344;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v376, v377, v380, *(&v380 + 1), closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)partial apply);

      v154 = v374;
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v309 = type metadata accessor for Logger();
      __swift_project_value_buffer(v309, static Logger.instrumentation);
      v310 = v305;
      v311 = Logger.logObject.getter();
      v312 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        *(&v380 + 1) = *(&v302 + 1);
        v314 = v313;
        v315 = swift_slowAlloc();
        *&v387 = v315;
        *v314 = 136315138;
        v316 = INIntent.debugDescriptionLite.getter();
        v318 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v316, v317, &v387);

        *(v314 + 4) = v318;
        v300 = v354;
        _os_log_impl(&dword_1DC659000, v311, v312, "Unexpected failure when cloning intent: %s", v314, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v315);
        MEMORY[0x1E12A2F50](v315, -1, -1);
        MEMORY[0x1E12A2F50](v314, -1, -1);
      }

      v319 = v351;
      v320 = v350;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v304, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v319 + 8))(v300, v320);
    v253 = v356;
    goto LABEL_107;
  }

  (*(v36 + 96))(v41, v35);
  v102 = v41[4];
  v103 = v41[6];

  v105 = v41[7];
  v104 = v41[8];
  v106 = v68[9];
  v107 = *(v68 + 80);
  outlined init with take of Any(v68, &v387);
  v108 = v380;
  SiriKitEvent.timestamp.getter();
  if (v102)
  {
    v381 = v105;
    v385 = ".confirmationResult";
    v109 = v102;
    v110 = [v109 intentId];
    LODWORD(v382) = v107;
    if (v110)
    {
      v111 = v110;
      *(&v380 + 1) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;
    }

    else
    {
      *(&v380 + 1) = 0;
      v113 = 0;
    }

    outlined init with copy of Any(&v387, &v386);
    v179 = v351;
    v180 = v349;
    v181 = v350;
    (*(v351 + 16))(v349, v108, v350);
    v182 = (*(v179 + 80) + 81) & ~*(v179 + 80);
    v183 = (v383 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
    v184 = swift_allocObject();
    outlined init with take of Any(&v386, (v184 + 16));
    *(v184 + 48) = v381;
    *(v184 + 56) = v104;
    *(v184 + 64) = v109;
    *(v184 + 72) = v106;
    *(v184 + 80) = v382;
    (*(v179 + 32))(v184 + v182, v180, v181);
    *(v184 + v183) = v384;
    v185 = v109;
    specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(*(&v380 + 1), v113, 0xD000000000000014, v385 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationOffered(intent:parameterName:multicardinalValueIndex:itemToConfirm:now:context:));

    (*(v179 + 8))(v380, v181);
  }

  else
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    __swift_project_value_buffer(v166, static Logger.instrumentation);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_1DC659000, v167, v168, "Intent is nil, not sending handleConfirmationOffered event.", v169, 2u);
      MEMORY[0x1E12A2F50](v169, -1, -1);
    }

    (*(v351 + 8))(v108, v350);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v387);
}

uint64_t sub_1DC69F9A0()
{
  v1 = type metadata accessor for SiriKitConfirmationState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1DC69FB10()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC69FBF0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC69FCC8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:_:)()
{
  v188 = v0;
  v1 = *(v0 + 96);
  v2 = SiriKitEvent.flowStateType.getter();
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v2;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.instrumentation);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v187 = v11;
      *v10 = 136315906;
      if (v3 > 0xD0)
      {
        v12 = @"FLOWSTATETYPE_UNKNOWN";
        v13 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v12 = off_1E863AB08[v3];
        v13 = off_1E863B190[v3];
      }

      v14 = v12;
      v15 = *(v0 + 104);
      v185 = *(v0 + 112);
      v16 = *(v0 + 96);
      v17 = v13;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v187);

      *(v10 + 4) = v21;
      *(v10 + 12) = 2080;
      *(v0 + 88) = v16;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v187);

      *(v10 + 14) = v24;
      *(v10 + 22) = 2080;
      v25 = SiriKitEventContext.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v187);

      *(v10 + 24) = v27;
      *(v10 + 32) = 2080;
      v28 = FlowTask.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v187);

      *(v10 + 34) = v30;
      _os_log_impl(&dword_1DC659000, v8, v9, "TaskLoggingEventSink - receiveAsync source event with task step: %s for event: %s context: %s task: %s", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }

  v31 = *(v0 + 112);
  v32 = *(v0 + 96);

  v33 = specialized static TaskLoggingEventSink.translateStartEvent(_:_:)(v32, v31);
  *(v0 + 184) = v33;
  v34 = SiriKitEvent.flowStateType.getter();
  *(v0 + 192) = v34;
  v35 = v34 & 0x1FFFFFFFFLL;
  if ((v34 & 0x1FFFFFFFFLL) == 1)
  {
    if (*(*(v0 + 112) + 32) && *(*(v0 + 112) + 32) == 1)
    {

      goto LABEL_15;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
LABEL_15:
      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v39 = *(v0 + 160);
      type metadata accessor for CoreAnalyticsService();
      static CoreAnalyticsService.instance.getter();
      *v37 = v33;
      (*(v38 + 104))(v37, *MEMORY[0x1E69CFCE0], v39);

      CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)();

      (*(v38 + 8))(v37, v39);
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 104);
      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.instrumentation);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 112);
      if (v44)
      {
        v46 = *(v0 + 104);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v187 = v48;
        *v47 = 136315650;
        *(v0 + 80) = v33;
        type metadata accessor for SiriKitEvent();
        lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v187);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = SiriKitEventContext.description.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v187);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;

        v55 = FlowTask.description.getter();
        v57 = v56;

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v187);

        *(v47 + 24) = v58;
        v59 = "TaskLoggingEventSink - Task already started, ignoring first step event: %s context: %s task: %s";
LABEL_33:
        _os_log_impl(&dword_1DC659000, v42, v43, v59, v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);

LABEL_81:

        v180 = *(v0 + 176);
        v181 = *(v0 + 144);
        v182 = *(v0 + 152);

        v183 = *(v0 + 8);

        return v183();
      }

      goto LABEL_34;
    }
  }

  v60 = SiriKitEvent.flowStateType.getter();
  if ((v60 & 0x100000000) != 0 || ((v61 = 1, v60 > 5) || ((1 << v60) & 0x34) == 0) && v60 != 128)
  {
    v61 = 0;
  }

  *(v0 + 264) = v61;
  v62 = *(v0 + 152);
  v63 = *(v0 + 128);
  v64 = *(v0 + 136);
  v65 = *(v0 + 96);
  v66 = SiriKitEvent.flowStateType.getter();
  SiriKitEvent.payload.getter();
  v67 = *(v64 + 88);
  *(v0 + 200) = v67;
  *(v0 + 208) = (v64 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v68 = v67(v62, v63);
  v69 = MEMORY[0x1E69CFC58];
  *(v0 + 256) = v68;
  *(v0 + 260) = *v69;
  v70 = *(v64 + 8);
  *(v0 + 216) = v70;
  v70(v62, v63);
  if (v61)
  {
    v71 = v66 & 0x1FFFFFFFFLL;
    if (*(*(v0 + 112) + 32) && *(*(v0 + 112) + 32) != 1)
    {

      if (v71 != 4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) != 0 && v71 != 4)
      {
LABEL_29:
        v74 = *(v0 + 168);
        v73 = *(v0 + 176);
        v75 = *(v0 + 160);
        type metadata accessor for CoreAnalyticsService();
        static CoreAnalyticsService.instance.getter();
        *v73 = v33;
        (*(v74 + 104))(v73, *MEMORY[0x1E69CFCE0], v75);

        CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)();

        (*(v74 + 8))(v73, v75);
        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v76 = *(v0 + 104);
        v77 = type metadata accessor for Logger();
        __swift_project_value_buffer(v77, static Logger.instrumentation);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        v78 = os_log_type_enabled(v42, v43);
        v79 = *(v0 + 112);
        if (v78)
        {
          v80 = *(v0 + 104);
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v187 = v48;
          *v47 = 136315650;
          *(v0 + 72) = v33;
          type metadata accessor for SiriKitEvent();
          lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v187);

          *(v47 + 4) = v83;
          *(v47 + 12) = 2080;
          v84 = SiriKitEventContext.description.getter();
          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v187);

          *(v47 + 14) = v86;
          *(v47 + 22) = 2080;

          v87 = FlowTask.description.getter();
          v89 = v88;

          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v187);

          *(v47 + 24) = v90;
          v59 = "TaskLoggingEventSink - Task already ended, ignoring last step event: %s context: %s task: %s";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_81;
      }
    }
  }

  if (v35 == 1)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.instrumentation);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1DC659000, v92, v93, "TaskLoggingEventSink - updating task state to .ongoing because isFirstTaskStep!", v94, 2u);
      MEMORY[0x1E12A2F50](v94, -1, -1);
    }

    v96 = *(v0 + 104);
    v95 = *(v0 + 112);

    *(v0 + 224) = *(v96 + 72);
    v97 = one-time initialization token for shared;

    if (v97 != -1)
    {
      swift_once();
    }

    v98 = static ConversationActor.shared;
    v99 = TaskLoggingEventSink.receiveAsync(_:_:_:);
    goto LABEL_77;
  }

  v100 = *(v0 + 112);
  *(v0 + 240) = v100;
  v102 = *(v0 + 208);
  v101 = *(v0 + 216);
  v103 = *(v0 + 200);
  v105 = *(v0 + 136);
  v104 = *(v0 + 144);
  v106 = *(v0 + 128);
  v107 = *(v0 + 96);
  SiriKitEvent.payload.getter();
  LODWORD(v107) = v103(v104, v106);
  LODWORD(v102) = *MEMORY[0x1E69CFBF0];
  v101(v104, v106);
  v108 = *(v0 + 260);
  v109 = *(v0 + 256);
  v110 = *(v0 + 192) & 0x1FFFFFFFFLL;
  if (v107 == v102)
  {
    if (v109 != v108 && v110 != 1 && (*(v100 + 33) & 1) != 0)
    {
      goto LABEL_56;
    }
  }

  else if (v109 != v108 && v110 != 1)
  {
    goto LABEL_56;
  }

  v111 = *(v0 + 104);
  v112 = type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState();
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  *(v113 + 24) = v100;
  *(v0 + 40) = v112;
  *(v0 + 48) = lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type TaskLoggingEventSink.SiriKitEventMetricsState and conformance TaskLoggingEventSink.SiriKitEventMetricsState, type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState);
  *(v0 + 16) = v113;

  static Metrics.setMetricsState(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v114 = type metadata accessor for Logger();
  __swift_project_value_buffer(v114, static Logger.instrumentation);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v187 = v118;
    *v117 = 136315138;
    v119 = *(v100 + 16);
    v120 = *(v100 + 24);

    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &v187);

    *(v117 + 4) = v121;
    _os_log_impl(&dword_1DC659000, v115, v116, "TaskLoggingEventSink - Metrics.current has been updated for taskId: %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    MEMORY[0x1E12A2F50](v118, -1, -1);
    MEMORY[0x1E12A2F50](v117, -1, -1);
  }

LABEL_56:
  v122 = *(v0 + 96);
  v123 = SiriKitEvent.flowStateType.getter();
  if ((v123 & 0x100000000) != 0)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v134 = *(v0 + 184);
    v135 = *(v0 + 104);
    v136 = type metadata accessor for Logger();
    __swift_project_value_buffer(v136, static Logger.instrumentation);

    v128 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v128, v137))
    {
      v138 = *(v0 + 184);
      v139 = *(v0 + 104);
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v187 = v141;
      *v140 = 136315650;
      *(v0 + 56) = v138;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
      v142 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v187);

      *(v140 + 4) = v144;
      *(v140 + 12) = 2080;
      v145 = SiriKitEventContext.description.getter();
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, &v187);

      *(v140 + 14) = v147;
      *(v140 + 22) = 2080;

      v148 = FlowTask.description.getter();
      v150 = v149;

      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v187);

      *(v140 + 24) = v151;
      _os_log_impl(&dword_1DC659000, v128, v137, "TaskLoggingEventSink - Routing event: %s context: %s task: %s", v140, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v141, -1, -1);
      MEMORY[0x1E12A2F50](v140, -1, -1);
    }
  }

  else
  {
    v124 = v123;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v125 = *(v0 + 184);
    v126 = *(v0 + 104);
    v127 = type metadata accessor for Logger();
    __swift_project_value_buffer(v127, static Logger.instrumentation);

    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v187 = v131;
      *v130 = 136315906;
      if (v124 > 0xD0)
      {
        v132 = @"FLOWSTATETYPE_UNKNOWN";
        v133 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v132 = off_1E863B818[v124];
        v133 = off_1E863BEA0[v124];
      }

      v152 = v132;
      v153 = *(v0 + 184);
      v186 = *(v0 + 104);
      v154 = v133;
      v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v156;

      v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v157, &v187);

      *(v130 + 4) = v158;
      *(v130 + 12) = 2080;
      *(v0 + 64) = v153;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, &v187);

      *(v130 + 14) = v161;
      *(v130 + 22) = 2080;
      v162 = SiriKitEventContext.description.getter();
      v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, &v187);

      *(v130 + 24) = v164;
      *(v130 + 32) = 2080;

      v165 = FlowTask.description.getter();
      v167 = v166;

      v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, &v187);

      *(v130 + 34) = v168;
      _os_log_impl(&dword_1DC659000, v128, v129, "TaskLoggingEventSink - Routing task step: %s for event: %s context: %s task: %s", v130, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v131, -1, -1);
      MEMORY[0x1E12A2F50](v130, -1, -1);

      goto LABEL_69;
    }
  }

LABEL_69:
  v169 = *(v0 + 264);
  v170 = *(v0 + 184);
  v171 = *(v0 + 120);
  v172 = *(v0 + 104);

  TaskLoggingEventSink.route(_:_:_:)(v170, v172, v100);

  if (v169 != 1)
  {
    v179 = *(v0 + 184);

    goto LABEL_81;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  __swift_project_value_buffer(v173, static Logger.instrumentation);
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&dword_1DC659000, v174, v175, "TaskLoggingEventSink - updating task state to .ended because isLastTaskStep!", v176, 2u);
    MEMORY[0x1E12A2F50](v176, -1, -1);
  }

  v177 = *(v0 + 104);

  *(v0 + 248) = *(v177 + 72);
  v178 = one-time initialization token for shared;

  if (v178 != -1)
  {
    swift_once();
  }

  v98 = static ConversationActor.shared;
  v99 = TaskLoggingEventSink.receiveAsync(_:_:_:);
LABEL_77:

  return MEMORY[0x1EEE6DFA0](v99, v98, 0);
}

{
  v90 = v0;
  v1 = *(v0 + 112);

  v2 = *(v0 + 232);
  *(v0 + 240) = v2;
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  SiriKitEvent.payload.getter();
  LODWORD(v9) = v5(v6, v8);
  LODWORD(v4) = *MEMORY[0x1E69CFBF0];
  v3(v6, v8);
  v10 = *(v0 + 260);
  v11 = *(v0 + 256);
  v12 = *(v0 + 192) & 0x1FFFFFFFFLL;
  if (v9 == v4)
  {
    if (v11 != v10 && v12 != 1 && (*(v2 + 33) & 1) != 0)
    {
      goto LABEL_13;
    }
  }

  else if (v11 != v10 && v12 != 1)
  {
    goto LABEL_13;
  }

  v13 = *(v0 + 104);
  v14 = type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v2;
  *(v0 + 40) = v14;
  *(v0 + 48) = lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type TaskLoggingEventSink.SiriKitEventMetricsState and conformance TaskLoggingEventSink.SiriKitEventMetricsState, type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState);
  *(v0 + 16) = v15;

  static Metrics.setMetricsState(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.instrumentation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v89 = v20;
    *v19 = 136315138;
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v89);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v17, v18, "TaskLoggingEventSink - Metrics.current has been updated for taskId: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

LABEL_13:
  v24 = *(v0 + 96);
  v25 = SiriKitEvent.flowStateType.getter();
  if ((v25 & 0x100000000) != 0)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 184);
    v37 = *(v0 + 104);
    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.instrumentation);

    v30 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v39))
    {
      v40 = *(v0 + 184);
      v41 = *(v0 + 104);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v89 = v43;
      *v42 = 136315650;
      *(v0 + 56) = v40;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v89);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = SiriKitEventContext.description.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v89);

      *(v42 + 14) = v49;
      *(v42 + 22) = 2080;

      v50 = FlowTask.description.getter();
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v89);

      *(v42 + 24) = v53;
      _os_log_impl(&dword_1DC659000, v30, v39, "TaskLoggingEventSink - Routing event: %s context: %s task: %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v43, -1, -1);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    goto LABEL_23;
  }

  v26 = v25;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 104);
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.instrumentation);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v30, v31))
  {
LABEL_23:

    goto LABEL_26;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v89 = v33;
  *v32 = 136315906;
  if (v26 > 0xD0)
  {
    v34 = @"FLOWSTATETYPE_UNKNOWN";
    v35 = @"FLOWSTATETYPE_UNKNOWN";
  }

  else
  {
    v34 = off_1E863C528[v26];
    v35 = off_1E863CBB0[v26];
  }

  v54 = v34;
  v55 = *(v0 + 184);
  v88 = *(v0 + 104);
  v56 = v35;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v89);

  *(v32 + 4) = v60;
  *(v32 + 12) = 2080;
  *(v0 + 64) = v55;
  type metadata accessor for SiriKitEvent();
  lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28]);
  v61 = dispatch thunk of CustomStringConvertible.description.getter();
  v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v89);

  *(v32 + 14) = v63;
  *(v32 + 22) = 2080;
  v64 = SiriKitEventContext.description.getter();
  v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v89);

  *(v32 + 24) = v66;
  *(v32 + 32) = 2080;

  v67 = FlowTask.description.getter();
  v69 = v68;

  v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v89);

  *(v32 + 34) = v70;
  _os_log_impl(&dword_1DC659000, v30, v31, "TaskLoggingEventSink - Routing task step: %s for event: %s context: %s task: %s", v32, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v33, -1, -1);
  MEMORY[0x1E12A2F50](v32, -1, -1);

LABEL_26:
  v71 = *(v0 + 264);
  v72 = *(v0 + 184);
  v73 = *(v0 + 120);
  v74 = *(v0 + 104);

  TaskLoggingEventSink.route(_:_:_:)(v72, v74, v2);

  if (v71 == 1)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.instrumentation);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1DC659000, v76, v77, "TaskLoggingEventSink - updating task state to .ended because isLastTaskStep!", v78, 2u);
      MEMORY[0x1E12A2F50](v78, -1, -1);
    }

    v79 = *(v0 + 104);

    *(v0 + 248) = *(v79 + 72);
    v80 = one-time initialization token for shared;

    if (v80 != -1)
    {
      swift_once();
    }

    v81 = static ConversationActor.shared;

    return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), v81, 0);
  }

  else
  {
    v82 = *(v0 + 184);

    v83 = *(v0 + 176);
    v84 = *(v0 + 144);
    v85 = *(v0 + 152);

    v86 = *(v0 + 8);

    return v86();
  }
}

{
  v1 = v0[28];
  v0[29] = TaskService.update(task:state:)(v0[14], 1);

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 248);
  TaskService.update(task:state:)(*(v0 + 240), 2);

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), 0, 0);
}

{
  v1 = v0[30];
  v2 = v0[23];

  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}