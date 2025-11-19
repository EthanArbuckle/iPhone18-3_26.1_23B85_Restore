uint64_t ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)()
{
  v1 = (*(**(v0 + 56) + 520))();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 104);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = static Log.executor;
    *(v0 + 120) = static Log.executor;
    v15 = v14;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v16 = DispatchTimeInterval.seconds.getter();
    v17 = *(MEMORY[0x1E69D3548] + 4);

    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    *v18 = v0;
    v18[1] = ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
    v20 = *(v0 + 56);
    v21.n128_f64[0] = v16;

    return MEMORY[0x1EEE40F70](v0 + 144, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), v20, v19, v21);
  }

  else
  {
    v2 = *(v0 + 112);

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "The task already finished. Returning", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v7 = *(v0 + 104);
    v8 = *(v0 + 80);

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[14];
  if (v0)
  {
    v6 = ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
  }

  else
  {
    v7 = v2[7];

    v6 = ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[14];

  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v4 + 8))(v3, v5);
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  *(v0 + 40) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "Timed out waiting for RRaaS entity collection", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);

    (*(v12 + 8))(v11, v13);
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 136);
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "Unknown error waiting for RRaaS entity collection", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }
  }

  v20 = *(v0 + 120);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v22 + 8))(v21, v23);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), 0, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), v0, 0);
}

{
  *(v0 + 56) = *(*(v0 + 48) + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), 0, 0);
}

{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86C0] + 4);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
    v4 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v3, v1, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

void closure #1 in ConversationRequestProcessor.donateUtteranceRREntity(rrEntity:)(void *a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    outlined consume of Result<(), Error>(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, oslog, v5, "#donateUtteranceForReferenceResolution: utterance Entity donation to SRR was unsuccessful as %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v12, "#donateUtteranceForReferenceResolution: utterance Entity donation to SRR was successful", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

uint64_t ConversationRequestProcessor.State.description.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return 0x617473206E727574;
    }

    else if (a1 | a2)
    {
      return 0x6574656C706D6F63;
    }

    else
    {
      return 1701602409;
    }
  }

  else if (a3)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t ConversationRequestProcessor.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);

  outlined consume of ConversationRequestProcessor.State(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 8), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState));
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask);

  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker));
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient));
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler);

  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider);

  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider);

  v10 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker);

  v11 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v12 = type metadata accessor for UserID();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator));
  v14 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent);

  v15 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v16 = type metadata accessor for SessionConfiguration();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);

  v18 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v19 = type metadata accessor for UserSessionState();
  v20 = *(*(v19 - 8) + 8);

  return v20(v0 + v18, v19);
}

uint64_t ConversationRequestProcessor.__deallocating_deinit()
{
  ConversationRequestProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in SiriXRedirectContext.init(from:)(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter();
  return Builder.subscript.setter();
}

uint64_t closure #2 in SiriXRedirectContext.init(from:)(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
  return Builder.subscript.setter();
}

uint64_t closure #3 in SiriXRedirectContext.init(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMd, &_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = *a1;
  swift_getKeyPath();
  v9 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a2, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  return Builder.subscript.setter();
}

void specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(void *a1, uint64_t a2, int a3, char *a4)
{
  v118 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v117 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = &v115 - v12;
  v13 = type metadata accessor for RequestType();
  v132 = *(v13 - 8);
  v14 = v132[8];
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v115 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v115 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v115 - v26;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.conversationBridge);
  v29 = a1;

  v129 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v133 = v29;
  v120 = v22;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v141[0] = v128;
    *v33 = 138412802;
    *(v33 + 4) = v133;
    *v34 = v133;
    *(v33 + 12) = 2080;
    v35 = v133;
    v36 = RequestMessageBase.requestId.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v141);

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v141);

    *(v33 + 24) = v41;
    _os_log_impl(&dword_1DC659000, v30, v31, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v33, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v42 = v128;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v43 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v43 + 376))();
  v44 = *(a4 + 8);
  v45 = *(a4 + 9);
  v46 = (*(*v43 + 384))(v44, v45);
  v47 = (*(*a4 + 400))(v46);
  v50 = v47;
  if (v49)
  {
    outlined consume of ConversationRequestProcessor.State(v47, v48, v49);
    v50 = MEMORY[0x1E69E7CC0];
  }

  started = StartRequestMessageBase.optionalRequestContextData.getter();
  v128 = v50;
  if (started)
  {
    v52 = started;
    v53 = *(a4 + 12);
    v54 = *(a4 + 13);

    v55 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)();
    v56 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
    if (v56)
    {
      LOBYTE(v56) = MUXContextMessage.isRMVEnabled.getter();
    }

    v57 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0tdU4BaseC_Tt3g5(v133, v53, v54, v55 & 1, v56 & 1);
  }

  else
  {
    v58 = *(*a4 + 408);

    v58(a2, v50, 1);
    v57 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v139, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v140)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v139, v141);
    v59 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v60 = v132;
    v61 = v132[2];
    v124 = v59;
    v123 = v132 + 2;
    v122 = v61;
    v61(v130, a2 + v59, v13);
    v62 = *MEMORY[0x1E69D0528];
    v121 = v60[13];
    v121(v131, v62, v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v119 = v57;
    if (v137 == v135 && v138 == v136)
    {
      v63 = 1;
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v72 = v132 + 1;
    v73 = v132[1];
    v73(v131, v13);
    v132 = v72;
    v73(v130, v13);

    if ((v63 & 1) == 0)
    {
      v74 = v120;
      v122(v120, a2 + v124, v13);
      v121(v125, *MEMORY[0x1E69D0558], v13);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v137 == v135 && v138 == v136)
      {
        v73(v125, v13);
        v73(v74, v13);
      }

      else
      {
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v73(v125, v13);
        v73(v74, v13);

        if ((v75 & 1) == 0)
        {
          v131 = a2;
          v125 = RequestMessageBase.requestId.getter();
          v120 = v90;
          v91 = *(a4 + 11);
          v133 = *(a4 + 10);
          v130 = v91;
          v92 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v93 = type metadata accessor for UUID();
          v94 = *(v93 - 8);
          v95 = v116;
          (*(v94 + 16))(v116, &a4[v92], v93);
          (*(v94 + 56))(v95, 0, 1, v93);
          v96 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v97 = type metadata accessor for SessionConfiguration();
          v98 = *(v97 - 8);
          v99 = v117;
          (*(v98 + 16))(v117, &a4[v96], v97);
          (*(v98 + 56))(v99, 0, 1, v97);
          v100 = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v101 = type metadata accessor for StartExecutionTurn();
          v102 = objc_allocWithZone(v101);
          v103 = &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          v104 = v120;
          *v103 = v125;
          v103[1] = v104;
          v105 = &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          v106 = v130;
          *v105 = v133;
          v105[1] = v106;
          outlined init with copy of ReferenceResolutionClientProtocol?(v95, &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v99, &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v118 & 1;
          v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v100;
          v134.receiver = v102;
          v134.super_class = v101;

          v107 = objc_msgSendSuper2(&v134, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v108 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v109 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v108);
          (*(v109 + 8))(v107, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v108, v109);
          v110 = v107;
          v76 = Logger.logObject.getter();
          v111 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v76, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            *v112 = 138412290;
            *(v112 + 4) = v110;
            *v113 = v110;
            v114 = v110;
            _os_log_impl(&dword_1DC659000, v76, v111, "Successfully sent: %@", v112, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v113, -1, -1);
            MEMORY[0x1E12A2F50](v112, -1, -1);

            v76 = v114;
          }

          else
          {
          }

          a2 = v131;
          goto LABEL_27;
        }
      }
    }

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1DC659000, v76, v77, "Not sending StartExecutionTurn for Understanding-on-server use case", v78, 2u);
      MEMORY[0x1E12A2F50](v78, -1, -1);
    }

LABEL_27:

    v79 = v126;
    v122(v126, a2 + v124, v13);
    v80 = v127;
    v121(v127, *MEMORY[0x1E69D0538], v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    v81 = dispatch thunk of static Equatable.== infix(_:_:)();
    v73(v80, v13);
    v73(v79, v13);
    if (v81)
    {
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v119;
      v86 = v128;
      if (v84)
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_1DC659000, v82, v83, "Not updating server context for StartLocalRequest", v87, 2u);
        MEMORY[0x1E12A2F50](v87, -1, -1);
      }

      if (!v85)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v88 = v142;
      v89 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      (*(v89 + 24))(v88, v89);
      v85 = v119;
      v86 = v128;
      if (!v119)
      {
LABEL_34:

        __swift_destroy_boxed_opaque_existential_1Tm(v141);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v85, a2, v86);

    goto LABEL_34;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v139, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v64 = v133;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v141[0] = v68;
    *v67 = 136315138;
    v69 = RequestMessageBase.requestId.getter();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v141);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_1DC659000, v65, v66, "Cannot handle request as contextUpdater is nil. requestId: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v44, v45, 0, 0);
}

{
  v122 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v120 - v12;
  v13 = type metadata accessor for RequestType();
  v138 = *(v13 - 8);
  v14 = v138[8];
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v120 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v120 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v120 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v120 - v26;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.conversationBridge);
  v29 = a1;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v133 = a2;
  v135 = v28;
  v125 = v22;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v146[0] = v134;
    *v33 = 138412802;
    *(v33 + 4) = v29;
    *v34 = v29;
    *(v33 + 12) = 2080;
    v35 = v29;
    v36 = RequestMessageBase.requestId.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v146);

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v146);

    *(v33 + 24) = v41;
    _os_log_impl(&dword_1DC659000, v30, v31, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v33, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v42 = v134;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v43 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v43 + 376))();
  v44 = *(a4 + 8);
  v45 = *(a4 + 9);
  v46 = (*(*v43 + 384))(v44, v45);
  v47 = (*(*a4 + 400))(v46);
  if (v49)
  {
    outlined consume of ConversationRequestProcessor.State(v47, v48, v49);
    v134 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v134 = v47;
  }

  started = StartIFRequestMessage.requestContextData.getter();
  v51 = *(a4 + 12);
  v52 = *(a4 + 13);

  v53 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)();
  v54 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
  if (v54)
  {
    LOBYTE(v54) = MUXContextMessage.isRMVEnabled.getter();
  }

  v55 = v29;
  v56 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t9IFRequestU0C_Tt3g5Tf4gnnn_n(v55, v51, v52, v53 & 1, v54 & 1);

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v144, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v145)
  {
    v123 = v56;
    outlined init with take of ReferenceResolutionClientProtocol(&v144, v146);
    v57 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    v58 = v133;
    swift_beginAccess();
    v59 = v138;
    v60 = v138[2];
    v130 = v57;
    v129 = v138 + 2;
    v128 = v60;
    v60(v136, v58 + v57, v13);
    v61 = *MEMORY[0x1E69D0528];
    v62 = v59[13];
    v127 = v59 + 13;
    v126 = v62;
    v62(v137, v61, v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v142 == v140 && v143 == v141)
    {
      v63 = 1;
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v73 = v138 + 1;
    v72 = v138[1];
    v72(v137, v13);
    v137 = v72;
    v138 = v73;
    v72(v136, v13);

    v74 = v123;
    v75 = v58;
    if ((v63 & 1) == 0)
    {
      v76 = v58 + v130;
      v77 = v125;
      v128(v125, v76, v13);
      v78 = v124;
      v126(v124, *MEMORY[0x1E69D0558], v13);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v142 == v140 && v143 == v141)
      {
        v79 = v137;
        (v137)(v78, v13);
        v79(v77, v13);
      }

      else
      {
        LODWORD(v136) = _stringCompareWithSmolCheck(_:_:expecting:)();
        v80 = v74;
        v81 = v75;
        v82 = v137;
        (v137)(v78, v13);
        v82(v77, v13);
        v75 = v81;
        v74 = v80;

        if ((v136 & 1) == 0)
        {
          v136 = v13;
          v86 = RequestMessageBase.requestId.getter();
          v88 = v87;
          v89 = *(a4 + 11);
          v125 = *(a4 + 10);
          v90 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v91 = type metadata accessor for UUID();
          v92 = *(v91 - 8);
          v93 = v120;
          (*(v92 + 16))(v120, &a4[v90], v91);
          (*(v92 + 56))(v93, 0, 1, v91);
          v94 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v95 = type metadata accessor for SessionConfiguration();
          v96 = *(v95 - 8);
          v97 = v121;
          (*(v96 + 16))(v121, &a4[v94], v95);
          (*(v96 + 56))(v97, 0, 1, v95);
          LOBYTE(v94) = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v98 = type metadata accessor for StartExecutionTurn();
          v99 = objc_allocWithZone(v98);
          v100 = &v99[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          *v100 = v86;
          v100[1] = v88;
          v101 = &v99[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          *v101 = v125;
          v101[1] = v89;
          outlined init with copy of ReferenceResolutionClientProtocol?(v93, &v99[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v99[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v99[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v122 & 1;
          v99[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v94;
          v139.receiver = v99;
          v139.super_class = v98;

          v102 = objc_msgSendSuper2(&v139, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v103 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v104 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v103);
          (*(v104 + 8))(v102, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v103, v104);
          v105 = v102;
          v83 = Logger.logObject.getter();
          v106 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v83, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v107 = 138412290;
            *(v107 + 4) = v105;
            *v108 = v105;
            v109 = v105;
            _os_log_impl(&dword_1DC659000, v83, v106, "Successfully sent: %@", v107, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v108, -1, -1);
            MEMORY[0x1E12A2F50](v107, -1, -1);

            v83 = v109;
          }

          else
          {
          }

          v75 = v133;
          v13 = v136;
          goto LABEL_29;
        }
      }
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1DC659000, v83, v84, "Not sending StartExecutionTurn for Understanding-on-server use case", v85, 2u);
      MEMORY[0x1E12A2F50](v85, -1, -1);
    }

LABEL_29:

    v110 = v131;
    v128(v131, v75 + v130, v13);
    v111 = v132;
    v126(v132, *MEMORY[0x1E69D0538], v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    v112 = dispatch thunk of static Equatable.== infix(_:_:)();
    v113 = v137;
    (v137)(v111, v13);
    v113(v110, v13);
    if (v112)
    {
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_1DC659000, v114, v115, "Not updating server context for StartLocalRequest", v116, 2u);
        MEMORY[0x1E12A2F50](v116, -1, -1);
      }

      v117 = v134;
      if (!v74)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v118 = v147;
      v119 = v148;
      __swift_project_boxed_opaque_existential_1(v146, v147);
      (*(v119 + 24))(v118, v119);
      v117 = v134;
      if (!v74)
      {
LABEL_36:

        __swift_destroy_boxed_opaque_existential_1Tm(v146);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v74, v75, v117);

    goto LABEL_36;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v144, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v64 = v55;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146[0] = v68;
    *v67 = 136315138;
    v69 = RequestMessageBase.requestId.getter();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v146);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_1DC659000, v65, v66, "Cannot handle request as contextUpdater is nil. requestId: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v44, v45, 0, 0);
}

{
  v118 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v117 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = &v115 - v12;
  v13 = type metadata accessor for RequestType();
  v132 = *(v13 - 8);
  v14 = v132[8];
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v115 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v115 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v115 - v26;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.conversationBridge);
  v29 = a1;

  v129 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v133 = v29;
  v120 = v22;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v141[0] = v128;
    *v33 = 138412802;
    *(v33 + 4) = v133;
    *v34 = v133;
    *(v33 + 12) = 2080;
    v35 = v133;
    v36 = RequestMessageBase.requestId.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v141);

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v141);

    *(v33 + 24) = v41;
    _os_log_impl(&dword_1DC659000, v30, v31, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v33, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v42 = v128;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v43 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v43 + 376))();
  v44 = *(a4 + 8);
  v45 = *(a4 + 9);
  v46 = (*(*v43 + 384))(v44, v45);
  v47 = (*(*a4 + 400))(v46);
  v50 = v47;
  if (v49)
  {
    outlined consume of ConversationRequestProcessor.State(v47, v48, v49);
    v50 = MEMORY[0x1E69E7CC0];
  }

  started = StartRequestMessageBase.optionalRequestContextData.getter();
  v128 = v50;
  if (started)
  {
    v52 = started;
    v53 = *(a4 + 12);
    v54 = *(a4 + 13);

    v55 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)();
    v56 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
    if (v56)
    {
      LOBYTE(v56) = MUXContextMessage.isRMVEnabled.getter();
    }

    v57 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t4TextdU0C_Tt3g5(v133, v53, v54, v55 & 1, v56 & 1);
  }

  else
  {
    v58 = *(*a4 + 408);

    v58(a2, v50, 1);
    v57 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v139, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v140)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v139, v141);
    v59 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v60 = v132;
    v61 = v132[2];
    v124 = v59;
    v123 = v132 + 2;
    v122 = v61;
    v61(v130, a2 + v59, v13);
    v62 = *MEMORY[0x1E69D0528];
    v121 = v60[13];
    v121(v131, v62, v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v119 = v57;
    if (v137 == v135 && v138 == v136)
    {
      v63 = 1;
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v72 = v132 + 1;
    v73 = v132[1];
    v73(v131, v13);
    v132 = v72;
    v73(v130, v13);

    if ((v63 & 1) == 0)
    {
      v74 = v120;
      v122(v120, a2 + v124, v13);
      v121(v125, *MEMORY[0x1E69D0558], v13);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v137 == v135 && v138 == v136)
      {
        v73(v125, v13);
        v73(v74, v13);
      }

      else
      {
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v73(v125, v13);
        v73(v74, v13);

        if ((v75 & 1) == 0)
        {
          v131 = a2;
          v125 = RequestMessageBase.requestId.getter();
          v120 = v90;
          v91 = *(a4 + 11);
          v133 = *(a4 + 10);
          v130 = v91;
          v92 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v93 = type metadata accessor for UUID();
          v94 = *(v93 - 8);
          v95 = v116;
          (*(v94 + 16))(v116, &a4[v92], v93);
          (*(v94 + 56))(v95, 0, 1, v93);
          v96 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v97 = type metadata accessor for SessionConfiguration();
          v98 = *(v97 - 8);
          v99 = v117;
          (*(v98 + 16))(v117, &a4[v96], v97);
          (*(v98 + 56))(v99, 0, 1, v97);
          v100 = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v101 = type metadata accessor for StartExecutionTurn();
          v102 = objc_allocWithZone(v101);
          v103 = &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          v104 = v120;
          *v103 = v125;
          v103[1] = v104;
          v105 = &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          v106 = v130;
          *v105 = v133;
          v105[1] = v106;
          outlined init with copy of ReferenceResolutionClientProtocol?(v95, &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v99, &v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v118 & 1;
          v102[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v100;
          v134.receiver = v102;
          v134.super_class = v101;

          v107 = objc_msgSendSuper2(&v134, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v108 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v109 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v108);
          (*(v109 + 8))(v107, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v108, v109);
          v110 = v107;
          v76 = Logger.logObject.getter();
          v111 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v76, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            *v112 = 138412290;
            *(v112 + 4) = v110;
            *v113 = v110;
            v114 = v110;
            _os_log_impl(&dword_1DC659000, v76, v111, "Successfully sent: %@", v112, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v113, -1, -1);
            MEMORY[0x1E12A2F50](v112, -1, -1);

            v76 = v114;
          }

          else
          {
          }

          a2 = v131;
          goto LABEL_27;
        }
      }
    }

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1DC659000, v76, v77, "Not sending StartExecutionTurn for Understanding-on-server use case", v78, 2u);
      MEMORY[0x1E12A2F50](v78, -1, -1);
    }

LABEL_27:

    v79 = v126;
    v122(v126, a2 + v124, v13);
    v80 = v127;
    v121(v127, *MEMORY[0x1E69D0538], v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    v81 = dispatch thunk of static Equatable.== infix(_:_:)();
    v73(v80, v13);
    v73(v79, v13);
    if (v81)
    {
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v119;
      v86 = v128;
      if (v84)
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_1DC659000, v82, v83, "Not updating server context for StartLocalRequest", v87, 2u);
        MEMORY[0x1E12A2F50](v87, -1, -1);
      }

      if (!v85)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v88 = v142;
      v89 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      (*(v89 + 24))(v88, v89);
      v85 = v119;
      v86 = v128;
      if (!v119)
      {
LABEL_34:

        __swift_destroy_boxed_opaque_existential_1Tm(v141);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v85, a2, v86);

    goto LABEL_34;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v139, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v64 = v133;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v141[0] = v68;
    *v67 = 136315138;
    v69 = RequestMessageBase.requestId.getter();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v141);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_1DC659000, v65, v66, "Cannot handle request as contextUpdater is nil. requestId: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v44, v45, 0, 0);
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0tdU4BaseC_Tt3g5(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v86 = a4;
  v87 = a5;
  v91 = a3;
  v84 = a2;
  v6 = type metadata accessor for RequestPositionInSession();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Restrictions();
  v85 = *(v88 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v64 - v16;
  v18 = type metadata accessor for ResponseMode();
  v92 = *(v18 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v64 - v27;
  v29 = type metadata accessor for InputOrigin();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = StartRequestMessageBase.optionalRequestContextData.getter();
  if (started)
  {
    v35 = started;
    v90 = v6;
    v36 = a1;
    StartRequestMessageBase.inputOrigin.getter();
    v37 = InputOrigin.aceInputOrigin.getter();
    v80 = v38;
    v81 = v37;
    (*(v30 + 8))(v33, v29);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    ResponseMode.init(aceValue:)();
    v39 = v92;
    v40 = *(v92 + 48);
    if (v40(v17, 1, v18) == 1)
    {
      static ResponseMode.displayForward.getter();
      if (v40(v17, 1, v18) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      (*(v39 + 32))(v94, v17, v18);
    }

    v64 = v18;
    v68 = RequestContextData.isEyesFree.getter();
    type metadata accessor for StartDirectActionRequestMessage();
    v82 = v36;
    v66 = swift_dynamicCastClass() != 0;
    v65 = RequestContextData.isVoiceTriggerEnabled.getter();
    v48 = RequestContextData.isTextToSpeechEnabled.getter();
    v67 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    v49 = v83;
    Restrictions.init(aceValue:)();
    v50 = RequestContextData.isTriggerlessFollowup.getter();
    type metadata accessor for StartSpeechRequestMessage();
    v70 = swift_dynamicCastClass() != 0;
    v74 = RequestContextData.voiceTriggerEventInfo.getter();
    v75 = RequestContextData.voiceAudioSessionId.getter();
    v73 = RequestContextData.isSystemApertureEnabled.getter();
    v71 = RequestContextData.isLiveActivitiesSupported.getter();
    v69 = RequestContextData.isInAmbient.getter();
    v78 = RequestContextData.conjunctionInfo.getter();
    v77 = RequestContextData.isDeviceShowingLockScreen.getter();
    v76 = RequestContextData.isDeviceLocked.getter();
    v51 = v89;
    (*(v89 + 104))(v93, *MEMORY[0x1E69CE5A0], v90);
    v52 = type metadata accessor for RequestContextData(0);
    v53 = objc_allocWithZone(v52);
    v54 = &v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
    v55 = v80;
    *v54 = v81;
    v54[1] = v55;
    v79 = v28;
    outlined init with copy of ReferenceResolutionClientProtocol?(v28, &v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v72 = v24;
    outlined init with copy of ReferenceResolutionClientProtocol?(v24, &v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v56 = v92;
    (*(v92 + 16))(&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v94, v18);
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v68 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v66;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v65 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v48 & 1;
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v67;
    outlined init with copy of ReferenceResolutionClientProtocol?(v95, &v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v57 = v85;
    v58 = v88;
    (*(v85 + 16))(&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v49, v88);
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
    v59 = &v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
    v60 = v91;
    *v59 = v84;
    v59[1] = v60;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v50 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v86 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = v70;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v74;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v87 & 1;
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v75;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v73 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v71 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v69 & 1;
    v61 = v93;
    v62 = v90;
    (*(v51 + 16))(&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v93, v90);
    *&v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v78;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v77 & 1;
    v53[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v76 & 1;
    v96.receiver = v53;
    v96.super_class = v52;
    v47 = objc_msgSendSuper2(&v96, sel_init);
    (*(v51 + 8))(v61, v62);
    (*(v57 + 8))(v49, v58);
    outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    (*(v56 + 8))(v94, v64);
    outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    v41 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.executor);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = v41;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v43, v44, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    return 0;
  }

  return v47;
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t4TextdU0C_Tt3g5(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v85 = a4;
  v86 = a5;
  v90 = a3;
  v83 = a2;
  v6 = type metadata accessor for RequestPositionInSession();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Restrictions();
  v84 = *(v87 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v63 - v16;
  v18 = type metadata accessor for ResponseMode();
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v63 - v27;
  v29 = type metadata accessor for InputOrigin();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = StartRequestMessageBase.optionalRequestContextData.getter();
  if (started)
  {
    v35 = started;
    v89 = v6;
    StartRequestMessageBase.inputOrigin.getter();
    v36 = InputOrigin.aceInputOrigin.getter();
    v79 = v37;
    v80 = v36;
    (*(v30 + 8))(v33, v29);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    ResponseMode.init(aceValue:)();
    v38 = v91;
    v39 = *(v91 + 48);
    if (v39(v17, 1, v18) == 1)
    {
      static ResponseMode.displayForward.getter();
      if (v39(v17, 1, v18) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      (*(v38 + 32))(v93, v17, v18);
    }

    v64 = v18;
    v68 = RequestContextData.isEyesFree.getter();
    type metadata accessor for StartDirectActionRequestMessage();
    v81 = a1;
    v66 = swift_dynamicCastClass() != 0;
    v65 = RequestContextData.isVoiceTriggerEnabled.getter();
    v47 = RequestContextData.isTextToSpeechEnabled.getter();
    v67 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    v48 = v82;
    Restrictions.init(aceValue:)();
    v69 = RequestContextData.isTriggerlessFollowup.getter();
    v74 = RequestContextData.voiceTriggerEventInfo.getter();
    v49 = RequestContextData.voiceAudioSessionId.getter();
    v73 = RequestContextData.isSystemApertureEnabled.getter();
    v71 = RequestContextData.isLiveActivitiesSupported.getter();
    v70 = RequestContextData.isInAmbient.getter();
    v77 = RequestContextData.conjunctionInfo.getter();
    v76 = RequestContextData.isDeviceShowingLockScreen.getter();
    v75 = RequestContextData.isDeviceLocked.getter();
    v50 = v88;
    (*(v88 + 104))(v92, *MEMORY[0x1E69CE5A0], v89);
    v51 = type metadata accessor for RequestContextData(0);
    v52 = objc_allocWithZone(v51);
    v53 = &v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
    v54 = v79;
    *v53 = v80;
    v53[1] = v54;
    v78 = v28;
    outlined init with copy of ReferenceResolutionClientProtocol?(v28, &v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v72 = v24;
    outlined init with copy of ReferenceResolutionClientProtocol?(v24, &v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v55 = v91;
    (*(v91 + 16))(&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v93, v18);
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v68 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v66;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v65 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v47 & 1;
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v67;
    outlined init with copy of ReferenceResolutionClientProtocol?(v94, &v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v56 = v84;
    v57 = v87;
    (*(v84 + 16))(&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v48, v87);
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
    v58 = &v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
    v59 = v90;
    *v58 = v83;
    v58[1] = v59;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v69 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v85 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = 0;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v74;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v86 & 1;
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v49;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v73 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v71 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v70 & 1;
    v60 = v92;
    v61 = v89;
    (*(v50 + 16))(&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v92, v89);
    *&v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v77;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v76 & 1;
    v52[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v75 & 1;
    v95.receiver = v52;
    v95.super_class = v51;
    v46 = objc_msgSendSuper2(&v95, sel_init);
    (*(v50 + 8))(v60, v61);
    (*(v56 + 8))(v48, v57);
    outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    (*(v55 + 8))(v93, v64);
    outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    v40 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = v40;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DC659000, v42, v43, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v45, 2u);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    return 0;
  }

  return v46;
}

uint64_t specialized ConversationRequestProcessor.makeResultCandidateState(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v74 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for UserID();
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ResultCandidateType(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TRPContext();
  swift_allocObject();
  v25 = TRPContext.init(requestMessage:)(a1);
  if (!v25)
  {
    return 0;
  }

  v26 = v25;
  v27 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v74 = v28;
  v75 = v27;
  v86 = v24;
  *v24 = v26;
  swift_storeEnumTagMultiPayload();

  TRPCandidateRequestMessageBase.userId.getter();
  v29 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v79 = v17;
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v82 = v16;
  v31(v16, 1, 1, v29);
  v80 = v12;
  static ExecutionLocation.device.getter();
  v32 = type metadata accessor for ExecutionLocation();
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
  v33 = type metadata accessor for ServerFallbackReason();
  v83 = v26;
  v34 = v33;
  v35 = *(v33 - 8);
  v36 = v8;
  v81 = v8;
  v37 = *(v35 + 56);
  v37(v36, 1, 1, v34);
  v38 = type metadata accessor for ResultCandidateState(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = (v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v42 = 0;
  v42[1] = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v44 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  v45 = (v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v45 = 0;
  v45[1] = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v47 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v47 - 8) + 56))(v41 + v46, 1, 1, v47);
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v31((v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v30);
  v37((v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v34);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v50 = type metadata accessor for SiriXRedirectContext();
  (*(*(v50 - 8) + 56))(v41 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v77 = type metadata accessor for SelectedUserAttributes();
  v52 = *(v77 - 8);
  v76 = *(v52 + 56);
  v78 = v52 + 56;
  v76(v41 + v51, 1, 1, v77);
  v53 = v74;
  *(v41 + 16) = v75;
  *(v41 + 24) = v53;
  outlined init with copy of ResultCandidateType(v86, v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v55 = *MEMORY[0x1E69D0AA0];
  v56 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v56 - 8) + 104))(v41 + v54, v55, v56);
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v57 = v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v58 = type metadata accessor for UUID();
  (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
  v59 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v60 = type metadata accessor for OSSignpostID();
  (*(*(v60 - 8) + 56))(v57 + v59, 1, 1, v60);
  v61 = v85;
  v62 = v79;
  (*(v85 + 16))(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v20, v79);
  swift_beginAccess();
  v63 = v41 + v48;
  v64 = v82;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v82, v63, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v65 = v80;
  outlined init with copy of ReferenceResolutionClientProtocol?(v80, v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v66 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v67 = v81;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v81, v41 + v66, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v69 = *MEMORY[0x1E69D02D8];
  v70 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v70 - 8) + 104))(v41 + v68, v69, v70);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v71 = v84;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v61 + 8))(v20, v62);
  outlined destroy of RoutingDecision(v86, type metadata accessor for ResultCandidateType);
  v76(v71, 0, 1, v77);
  v72 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v71, v41 + v72);
  swift_endAccess();
  return v41;
}

void specialized static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = objc_allocWithZone(type metadata accessor for ConversationMitigationMessage());
  v10 = ConversationMitigationMessage.init(build:)();
  if (v10)
  {
    v11 = v10;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1 & 1;
      _os_log_impl(&dword_1DC659000, v13, v14, "[ConversationRequestProcessor] post MitigationMessage %{BOOL}d", v15, 8u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v11, v18, "[ConversationRequestProcessor] Error building ConversationMitigationMessage. Missing fields?", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }
  }
}

uint64_t type metadata accessor for ConversationRequestProcessor()
{
  result = type metadata singleton initialization cache for ConversationRequestProcessor;
  if (!type metadata singleton initialization cache for ConversationRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized ConversationRequestProcessor.makeResultCandidateState(from:asrOnServer:)(uint64_t a1, int a2)
{
  LODWORD(v86) = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v97 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v84 - v14;
  v16 = type metadata accessor for UserID();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ResultCandidateType(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v87 = v25;
  v88 = v24;
  v26 = AsrResultCandidateMessage.speechPackage.getter();
  type metadata accessor for SpeechContext();
  v27 = swift_allocObject();
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 48) = 1;
  *(v27 + 16) = v26;
  v28 = v26;
  v29 = [v28 recognition];
  v30 = [v29 aceRecognition];

  *(v27 + 24) = v30;
  *v23 = v27;
  v98 = v23;
  swift_storeEnumTagMultiPayload();
  v93 = v19;
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v91 = AsrResultCandidateMessage.voiceIdScore.getter();
  v90 = AsrResultCandidateMessage.voiceIdClassification.getter();
  v89 = v31;
  v32 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v33 = *(*(v32 - 8) + 56);
  v96 = v15;
  v33(v15, 1, 1, v32);
  if (v86)
  {
    static ExecutionLocation.server.getter();
  }

  else
  {
    static ExecutionLocation.device.getter();
  }

  v34 = type metadata accessor for ExecutionLocation();
  (*(*(v34 - 8) + 56))(v11, 0, 1, v34);
  v35 = type metadata accessor for ServerFallbackReason();
  v36 = *(*(v35 - 8) + 56);
  v37 = v92;
  v36(v92, 1, 1, v35);
  v38 = type metadata accessor for ResultCandidateState(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = (v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v42 = 0;
  v42[1] = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v44 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  v45 = (v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v45 = 0;
  v45[1] = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v47 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v47 - 8) + 56))(v41 + v46, 1, 1, v47);
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v33((v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v32);
  v36((v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v35);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v50 = type metadata accessor for SiriXRedirectContext();
  (*(*(v50 - 8) + 56))(v41 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v85 = type metadata accessor for SelectedUserAttributes();
  v52 = *(v85 - 8);
  v84 = *(v52 + 56);
  v86 = v52 + 56;
  v84(v41 + v51, 1, 1, v85);
  v53 = v87;
  *(v41 + 16) = v88;
  *(v41 + 24) = v53;
  outlined init with copy of ResultCandidateType(v98, v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v55 = *MEMORY[0x1E69D0AA0];
  v56 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v56 - 8) + 104))(v41 + v54, v55, v56);
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v57 = v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v58 = type metadata accessor for UUID();
  (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
  v59 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v60 = type metadata accessor for OSSignpostID();
  (*(*(v60 - 8) + 56))(v57 + v59, 1, 1, v60);
  v62 = v93;
  v61 = v94;
  v63 = v95;
  (*(v94 + 16))(v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v93, v95);
  swift_beginAccess();
  v64 = v41 + v48;
  v65 = v96;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v96, v64, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v11, v41 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v66 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v37, v41 + v66, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v67 = v11;
  v68 = v37;
  v69 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v70 = *MEMORY[0x1E69D02D8];
  v71 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v71 - 8) + 104))(v41 + v69, v70, v71);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v72 = v97;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v61 + 8))(v62, v63);
  outlined destroy of RoutingDecision(v98, type metadata accessor for ResultCandidateType);
  v84(v72, 0, 1, v85);
  v73 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v72, v41 + v73);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static Logger.conversationBridge);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v99 = v78;
    *v77 = 136315138;

    v79 = ResultCandidateState.description.getter();
    v81 = v80;

    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v99);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_1DC659000, v75, v76, "Created %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x1E12A2F50](v78, -1, -1);
    MEMORY[0x1E12A2F50](v77, -1, -1);
  }

  return v41;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v109 = a8;
  LODWORD(v110) = a6;
  v111 = a4;
  v115 = a2;
  v12 = type metadata accessor for UUID();
  v112 = *(v12 - 8);
  v13 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RequestType();
  v114 = *(v16 - 8);
  v17 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v113 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.conversationBridge);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v107[1] = v20;
    v108 = a7;
    v25 = v15;
    v26 = a5;
    v27 = v24;
    v28 = a3;
    v29 = v12;
    v30 = v16;
    v31 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v21;
    *v31 = v21;
    v32 = v21;
    _os_log_impl(&dword_1DC659000, v22, v23, "ConversationBridge handling message: %@", v27, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = v31;
    v16 = v30;
    v12 = v29;
    a3 = v28;
    MEMORY[0x1E12A2F50](v33, -1, -1);
    v34 = v27;
    a5 = v26;
    v15 = v25;
    a7 = v108;
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v21, v115, a3, a5) & 1) == 0)
  {
    v57 = v21;
    v115 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v115, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v117[0] = v60;
      *v59 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v112 + 8))(v15, v12);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v117);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      swift_getObjectType();
      v65 = _typeName(_:qualified:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v117);

      *(v59 + 14) = v67;
      _os_log_impl(&dword_1DC659000, v115, v58, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v60, -1, -1);
      v68 = v59;
LABEL_43:
      MEMORY[0x1E12A2F50](v68, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v104 = v115;

    return;
  }

  v35 = (*(*a7 + 608))();
  if (!v35)
  {
    v69 = v21;

    v115 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v117[0] = v72;
      *v71 = 136315394;
      swift_getObjectType();
      v73 = _typeName(_:qualified:)();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v117);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      v77 = (*(*a7 + 400))(v76);
      if (v79 > 1u)
      {
        if (v79 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v77, v78, 2);
          v80 = 0xEC00000064657472;
          v81 = 0x617473206E727574;
        }

        else
        {
          v105 = (v77 | v78) == 0;
          if (v77 | v78)
          {
            v81 = 0x6574656C706D6F63;
          }

          else
          {
            v81 = 1701602409;
          }

          if (v105)
          {
            v80 = 0xE400000000000000;
          }

          else
          {
            v80 = 0xE800000000000000;
          }
        }
      }

      else if (v79)
      {
        v80 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v77, v78, 1);
        v81 = 0xD00000000000001DLL;
      }

      else
      {
        v80 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v77, v78, 0);
        v81 = 0xD000000000000011;
      }

      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, v117);

      *(v71 + 14) = v106;
      _os_log_impl(&dword_1DC659000, v115, v70, "Got %s when in state %s: Ignoring", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v72, -1, -1);
      v68 = v71;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v36 = v35;
  v37 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v39 = *(v35 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v38 = *(v35 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v39 == RequestMessageBase.requestId.getter() && v38 == v40)
  {

    v43 = v114;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v43 = v114;
    if ((v42 & 1) == 0)
    {
      v44 = v21;

      v115 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v117[0] = v47;
        *v46 = 136315650;
        swift_getObjectType();
        v48 = _typeName(_:qualified:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v117);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        v51 = RequestMessageBase.requestId.getter();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v117);

        *(v46 + 14) = v53;
        *(v46 + 22) = 2080;
        v54 = *v37;
        v55 = v37[1];

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v117);

        *(v46 + 24) = v56;
        _os_log_impl(&dword_1DC659000, v115, v45, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v47, -1, -1);
        MEMORY[0x1E12A2F50](v46, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v82 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v83 = *(v43 + 16);
  v84 = v113;
  v83(v113, v36 + v82, v16);
  v85 = specialized Sequence<>.contains(_:)(v84, v111);
  v87 = *(v43 + 8);
  v86 = v43 + 8;
  v115 = v87;
  (v87)(v84, v16);
  if (v85)
  {
    v88 = specialized ConversationRequestProcessor.makeResultCandidateState(from:asrOnServer:)(v109, *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer));
    (*(*v88 + 416))(4);
    if (v110)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v88);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v88);
    }
  }

  else
  {
    v114 = v86;
    v112 = v16;
    v89 = v21;

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v110 = v93;
      v111 = swift_slowAlloc();
      v116 = v111;
      *v92 = 138412546;
      *(v92 + 4) = v89;
      *v93 = v89;
      *(v92 + 12) = 2080;
      v95 = v112;
      v94 = v113;
      v83(v113, v36 + v82, v112);
      v96 = v89;
      v97 = v90;
      v98 = RequestType.rawValue.getter();
      v100 = v99;
      (v115)(v94, v95);
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v116);

      *(v92 + 14) = v101;
      _os_log_impl(&dword_1DC659000, v97, v91, "%@ is not supported for this requestType: %s", v92, 0x16u);
      v102 = v110;
      outlined destroy of ReferenceResolutionClientProtocol?(v110, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v102, -1, -1);
      v103 = v111;
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x1E12A2F50](v103, -1, -1);
      MEMORY[0x1E12A2F50](v92, -1, -1);
    }

    else
    {
    }
  }
}

void specialized ConversationRequestProcessor.makeResultCandidateStatesForMultiUser(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v138 = &v129 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v156 = &v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v155 = &v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v154 = &v129 - v13;
  v137 = type metadata accessor for ResultCandidateType(0);
  v14 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v158 = (&v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for UserID();
  v16 = *(v160 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v129 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v140 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v139 = &v129 - v26;
  v27 = MEMORY[0x1E69E7CC0];
  v162 = MEMORY[0x1E69E7CC0];
  v28 = MUXAsrResultCandidateMessage.speechPackageDict.getter();
  v30 = 0;
  v32 = v28 + 64;
  v31 = *(v28 + 64);
  v131 = v28;
  v33 = 1 << *(v28 + 32);
  v134 = *MEMORY[0x1E69D0AA0];
  v34 = -1;
  v133 = *MEMORY[0x1E69D02D8];
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  v141 = (v16 + 16);
  v142 = (v16 + 32);
  v130 = v16;
  v153 = (v16 + 8);
  *&v29 = 136315394;
  v129 = v29;
  v157 = a1;
  v135 = v28 + 64;
  v132 = v36;
  v136 = v19;
  v152 = v27;
  if ((v34 & v31) != 0)
  {
    while (1)
    {
      v37 = v30;
LABEL_13:
      v42 = __clz(__rbit64(v35));
      v43 = (v35 - 1) & v35;
      v44 = v42 | (v37 << 6);
      v45 = v131;
      v46 = v130;
      v47 = v159;
      v48 = v160;
      (*(v130 + 16))(v159, *(v131 + 48) + *(v130 + 72) * v44, v160);
      v49 = *(*(v45 + 56) + 8 * v44);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
      v51 = *(v50 + 48);
      v52 = *(v46 + 32);
      v53 = v140;
      v52(v140, v47, v48);
      *&v53[v51] = v49;
      (*(*(v50 - 8) + 56))(v53, 0, 1, v50);
      v54 = v49;
      v40 = v53;
      v41 = v139;
LABEL_14:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v40, v41, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
      if ((*(*(v55 - 8) + 48))(v41, 1, v55) == 1)
      {

        return;
      }

      v56 = *(v41 + *(v55 + 48));
      (*v142)(v19, v41, v160);
      v57 = MUXAsrResultCandidateMessage.voiceIdScoreCard.getter();
      v58 = [v57 spIdKnownUserScores];

      if (!v58)
      {
        goto LABEL_36;
      }

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = UserID.sharedUserId.getter();
      if (!*(v59 + 16))
      {
        break;
      }

      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
      v64 = v63;

      if ((v64 & 1) == 0)
      {
        goto LABEL_20;
      }

      v65 = *(*(v59 + 56) + 8 * v62);

      v66 = [v65 intValue];

LABEL_21:
      v67 = MUXAsrResultCandidateMessage.voiceIdScoreCard.getter();
      v68 = [v67 lowScoreThreshold];

      LODWORD(v152) = v66;
      v151 = v43;
      if (v68)
      {

        v69 = MUXAsrResultCandidateMessage.voiceIdScoreCard.getter();
        v70 = [v69 lowScoreThreshold];

        if (!v70)
        {
          goto LABEL_37;
        }

        v149 = [v70 intValue];
      }

      else
      {
        v149 = static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
      }

      v161[0] = [v56 resultCandidateId];
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v72;
      v147 = v71;
      type metadata accessor for SpeechContext();
      v73 = swift_allocObject();
      *(v73 + 32) = 0;
      *(v73 + 40) = 0;
      *(v73 + 48) = 1;
      *(v73 + 16) = v56;
      v150 = v56;
      v74 = [v150 recognition];
      v75 = [v74 aceRecognition];

      *(v73 + 24) = v75;
      *v158 = v73;
      swift_storeEnumTagMultiPayload();
      v148 = *v141;
      v148(v159, v19, v160);
      v76 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v77 = *(*(v76 - 8) + 56);
      v77(v154, 1, 1, v76);
      v78 = type metadata accessor for ExecutionLocation();
      (*(*(v78 - 8) + 56))(v155, 1, 1, v78);
      v79 = type metadata accessor for ServerFallbackReason();
      v80 = *(*(v79 - 8) + 56);
      v80(v156, 1, 1, v79);
      v81 = type metadata accessor for ResultCandidateState(0);
      v82 = *(v81 + 48);
      v83 = *(v81 + 52);
      v84 = swift_allocObject();
      v85 = (v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
      *v85 = 0;
      v85[1] = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
      v86 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
      v87 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
      (*(*(v87 - 8) + 56))(v84 + v86, 1, 1, v87);
      v88 = (v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
      *v88 = 0;
      v88[1] = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
      v89 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
      v90 = type metadata accessor for TTResponseMessage.MitigationDecision();
      (*(*(v90 - 8) + 56))(v84 + v89, 1, 1, v90);
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
      v91 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
      v77(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse, 1, 1, v76);
      v80(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, 1, 1, v79);
      v92 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
      v93 = type metadata accessor for SiriXRedirectContext();
      (*(*(v93 - 8) + 56))(v84 + v92, 1, 1, v93);
      v94 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
      v144 = type metadata accessor for SelectedUserAttributes();
      v95 = *(v144 - 8);
      v143 = *(v95 + 56);
      v145 = v95 + 56;
      v143(v84 + v94, 1, 1, v144);
      v96 = v146;
      *(v84 + 16) = v147;
      *(v84 + 24) = v96;
      outlined init with copy of ResultCandidateType(v158, v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
      v97 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
      v98 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
      (*(*(v98 - 8) + 104))(v84 + v97, v134, v98);
      *(v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
      v99 = v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
      v100 = type metadata accessor for UUID();
      (*(*(v100 - 8) + 56))(v99, 1, 1, v100);
      v101 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
      v102 = type metadata accessor for OSSignpostID();
      (*(*(v102 - 8) + 56))(v99 + v101, 1, 1, v102);
      v148((v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId), v159, v160);
      swift_beginAccess();
      v103 = v154;
      outlined assign with copy of ReferenceResolutionClientProtocol?(v154, v84 + v91, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      swift_endAccess();
      v104 = v155;
      outlined init with copy of ReferenceResolutionClientProtocol?(v155, v84 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v105 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
      swift_beginAccess();
      v106 = v156;
      outlined assign with copy of ReferenceResolutionClientProtocol?(v156, v84 + v105, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      swift_endAccess();
      v107 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
      v108 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
      (*(*(v108 - 8) + 104))(v84 + v107, v133, v108);
      type metadata accessor for RoutingDecision(0);
      swift_storeEnumTagMultiPayload();
      v109 = v138;
      SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v104, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v103, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      v110 = *v153;
      (*v153)(v159, v160);
      outlined destroy of RoutingDecision(v158, type metadata accessor for ResultCandidateType);
      v143(v109, 0, 1, v144);
      v111 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
      swift_beginAccess();
      outlined assign with take of SelectedUserAttributes?(v109, v84 + v111);
      swift_endAccess();
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      __swift_project_value_buffer(v112, static Logger.conversationBridge);
      v113 = v157;

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();

      v116 = os_log_type_enabled(v114, v115);
      v35 = v151;
      if (v116)
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v161[0] = v118;
        *v117 = v129;
        v119 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v161);

        *(v117 + 4) = v121;
        *(v117 + 12) = 2080;

        v122 = ResultCandidateState.description.getter();
        v124 = v123;

        v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, v161);

        *(v117 + 14) = v125;
        _os_log_impl(&dword_1DC659000, v114, v115, "For top level rcId %s, created %s", v117, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v118, -1, -1);
        MEMORY[0x1E12A2F50](v117, -1, -1);
      }

      v19 = v136;

      MEMORY[0x1E12A1680](v126);
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v128 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v110(v19, v160);
      v32 = v135;
      v36 = v132;
      v152 = v162;
      if (!v35)
      {
        goto LABEL_5;
      }
    }

LABEL_20:

    v66 = -1;
    goto LABEL_21;
  }

LABEL_5:
  if (v36 <= v30 + 1)
  {
    v38 = v30 + 1;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 - 1;
  v40 = v140;
  v41 = v139;
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v36)
    {
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
      (*(*(v127 - 8) + 56))(v40, 1, 1, v127);
      v43 = 0;
      v30 = v39;
      goto LABEL_14;
    }

    v35 = *(v32 + 8 * v37);
    ++v30;
    if (v35)
    {
      v30 = v37;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t specialized ConversationRequestProcessor.makeResultCandidateState(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v83 = &v73 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v73 - v5;
  v79 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v73 - v9;
  v80 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v73 - v13;
  v82 = &v73 - v13;
  v15 = type metadata accessor for UserID();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ResultCandidateType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v74 = v23;
  v75 = v22;
  *v21 = TextBasedResultCandidateMessage.utterance.getter();
  *(v21 + 1) = v24;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  v73 = v21;
  swift_storeEnumTagMultiPayload();
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v26 = *(*(v25 - 8) + 56);
  v26(v14, 1, 1, v25);
  v27 = type metadata accessor for ExecutionLocation();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v28 = type metadata accessor for ServerFallbackReason();
  v29 = *(*(v28 - 8) + 56);
  v29(v6, 1, 1, v28);
  v30 = type metadata accessor for ResultCandidateState(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = (v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v34 = 0;
  v34[1] = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v35 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v36 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  v37 = (v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v37 = 0;
  v37[1] = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v39 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v39 - 8) + 56))(v33 + v38, 1, 1, v39);
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v26((v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v25);
  v29((v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v28);
  v41 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v42 = type metadata accessor for SiriXRedirectContext();
  (*(*(v42 - 8) + 56))(v33 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v77 = type metadata accessor for SelectedUserAttributes();
  v44 = *(v77 - 8);
  v76 = *(v44 + 56);
  v78 = v44 + 56;
  v76(v33 + v43, 1, 1, v77);
  v45 = v74;
  *(v33 + 16) = v75;
  *(v33 + 24) = v45;
  outlined init with copy of ResultCandidateType(v21, v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v47 = *MEMORY[0x1E69D0AA0];
  v48 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v48 - 8) + 104))(v33 + v46, v47, v48);
  *(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v49 = v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v50 = type metadata accessor for UUID();
  (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  v51 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v52 = type metadata accessor for OSSignpostID();
  (*(*(v52 - 8) + 56))(v49 + v51, 1, 1, v52);
  v53 = v81;
  (*(v84 + 16))(v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v81, v85);
  swift_beginAccess();
  v54 = v82;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v82, v33 + v40, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v55 = v80;
  outlined init with copy of ReferenceResolutionClientProtocol?(v80, v33 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v56 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v57 = v79;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v79, v33 + v56, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v58 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v59 = *MEMORY[0x1E69D02D8];
  v60 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v60 - 8) + 104))(v33 + v58, v59, v60);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v61 = v83;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v84 + 8))(v53, v85);
  outlined destroy of RoutingDecision(v73, type metadata accessor for ResultCandidateType);
  v76(v61, 0, 1, v77);
  v62 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v61, v33 + v62);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.conversationBridge);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86 = v67;
    *v66 = 136315138;

    v68 = ResultCandidateState.description.getter();
    v70 = v69;

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v86);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_1DC659000, v64, v65, "Created %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x1E12A2F50](v67, -1, -1);
    MEMORY[0x1E12A2F50](v66, -1, -1);
  }

  return v33;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = &v71 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v71 - v5;
  v77 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v71 - v9;
  v78 = &v71 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v71 - v13;
  v79 = &v71 - v13;
  v15 = type metadata accessor for UserID();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ResultCandidateType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v72 = v23;
  v73 = v22;
  GestureBasedResultCandidateMessage.gesture.getter();
  v71 = v21;
  swift_storeEnumTagMultiPayload();
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v24 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v25 = *(*(v24 - 8) + 56);
  v25(v14, 1, 1, v24);
  v26 = type metadata accessor for ExecutionLocation();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = type metadata accessor for ServerFallbackReason();
  v28 = *(*(v27 - 8) + 56);
  v28(v6, 1, 1, v27);
  v29 = type metadata accessor for ResultCandidateState(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v33 = 0;
  v33[1] = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v34 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v35 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
  v36 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v36 = 0;
  v36[1] = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v38 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v38 - 8) + 56))(v32 + v37, 1, 1, v38);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v25((v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v24);
  v28((v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v27);
  v40 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v41 = type metadata accessor for SiriXRedirectContext();
  (*(*(v41 - 8) + 56))(v32 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v75 = type metadata accessor for SelectedUserAttributes();
  v43 = *(v75 - 8);
  v74 = *(v43 + 56);
  v76 = v43 + 56;
  v74(v32 + v42, 1, 1, v75);
  v44 = v72;
  *(v32 + 16) = v73;
  *(v32 + 24) = v44;
  outlined init with copy of ResultCandidateType(v21, v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v45 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v46 = *MEMORY[0x1E69D0AA0];
  v47 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v47 - 8) + 104))(v32 + v45, v46, v47);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v48 = v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v49 = type metadata accessor for UUID();
  (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  v50 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v51 = type metadata accessor for OSSignpostID();
  (*(*(v51 - 8) + 56))(v48 + v50, 1, 1, v51);
  (*(v82 + 16))(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v81, v83);
  swift_beginAccess();
  v52 = v79;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v79, v32 + v39, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v53 = v78;
  outlined init with copy of ReferenceResolutionClientProtocol?(v78, v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v55 = v77;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v77, v32 + v54, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v56 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v57 = *MEMORY[0x1E69D02D8];
  v58 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v58 - 8) + 104))(v32 + v56, v57, v58);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v59 = v80;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v82 + 8))(v81, v83);
  outlined destroy of RoutingDecision(v71, type metadata accessor for ResultCandidateType);
  v74(v59, 0, 1, v75);
  v60 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v59, v32 + v60);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.conversationBridge);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v84 = v65;
    *v64 = 136315138;

    v66 = ResultCandidateState.description.getter();
    v68 = v67;

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v84);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_1DC659000, v62, v63, "Created %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x1E12A2F50](v65, -1, -1);
    MEMORY[0x1E12A2F50](v64, -1, -1);
  }

  return v32;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v85 = &v77 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v77 - v8;
  v83 = &v77 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v77 - v12;
  v84 = &v77 - v12;
  v89 = type metadata accessor for UserID();
  v87 = *(v89 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResultCandidateType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v81 = v21;
  v82 = v20;
  v22 = TextBasedTRPCandidateMessage.utterance.getter();
  v24 = v23;
  v25 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v27 = v26;
  v28 = TextBasedTRPCandidateMessage.tcuId.getter();
  *v19 = v22;
  v19[1] = v24;
  v19[2] = v25;
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  swift_storeEnumTagMultiPayload();
  TRPCandidateRequestMessageBase.userId.getter();
  v30 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v31 = *(*(v30 - 8) + 56);
  v31(v13, 1, 1, v30);
  v32 = type metadata accessor for ExecutionLocation();
  (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  v33 = type metadata accessor for ServerFallbackReason();
  v34 = *(*(v33 - 8) + 56);
  v34(v88, 1, 1, v33);
  v35 = type metadata accessor for ResultCandidateState(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v39 = (v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v39 = 0;
  v39[1] = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v41 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v41 - 8) + 56))(v38 + v40, 1, 1, v41);
  v42 = (v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v42 = 0;
  v42[1] = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v44 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v44 - 8) + 56))(v38 + v43, 1, 1, v44);
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v45 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v31((v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v30);
  v34(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, 1, 1, v33);
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v47 = type metadata accessor for SiriXRedirectContext();
  (*(*(v47 - 8) + 56))(v38 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v79 = type metadata accessor for SelectedUserAttributes();
  v49 = *(v79 - 8);
  v78 = *(v49 + 56);
  v80 = v49 + 56;
  v78(v38 + v48, 1, 1, v79);
  v50 = v81;
  *(v38 + 16) = v82;
  *(v38 + 24) = v50;
  outlined init with copy of ResultCandidateType(v19, v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v51 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v52 = *MEMORY[0x1E69D0AA0];
  v53 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v53 - 8) + 104))(v38 + v51, v52, v53);
  *(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v54 = v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v55 = type metadata accessor for UUID();
  (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
  v56 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v57 = type metadata accessor for OSSignpostID();
  (*(*(v57 - 8) + 56))(v54 + v56, 1, 1, v57);
  (*(v87 + 16))(v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v86, v89);
  swift_beginAccess();
  v58 = v84;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v84, v38 + v45, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v59 = v83;
  outlined init with copy of ReferenceResolutionClientProtocol?(v83, v38 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v60 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v61 = v88;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v88, v38 + v60, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v62 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v63 = *MEMORY[0x1E69D02D8];
  v64 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v64 - 8) + 104))(v38 + v62, v63, v64);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v65 = v85;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v87 + 8))(v86, v89);
  outlined destroy of RoutingDecision(v19, type metadata accessor for ResultCandidateType);
  v78(v65, 0, 1, v79);
  v66 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v65, v38 + v66);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.conversationBridge);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v90 = v71;
    *v70 = 136315138;

    v72 = ResultCandidateState.description.getter();
    v74 = v73;

    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v90);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_1DC659000, v68, v69, "Created %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x1E12A2F50](v71, -1, -1);
    MEMORY[0x1E12A2F50](v70, -1, -1);
  }

  return v38;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v118) = a6;
  v119 = a4;
  v123 = a2;
  v116 = a9;
  v117 = a8;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RequestType();
  v19 = *(v18 - 8);
  v121 = v18;
  v122 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.conversationBridge);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v114 = v23;
    v115 = a7;
    v28 = v17;
    v29 = a5;
    v30 = v27;
    v31 = a3;
    v32 = v14;
    v33 = v13;
    v34 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v24;
    *v34 = v24;
    v35 = v24;
    _os_log_impl(&dword_1DC659000, v25, v26, "ConversationBridge handling message: %@", v30, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = v34;
    v13 = v33;
    v14 = v32;
    a3 = v31;
    MEMORY[0x1E12A2F50](v36, -1, -1);
    v37 = v30;
    a5 = v29;
    v17 = v28;
    a7 = v115;
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v24, v123, a3, a5) & 1) == 0)
  {
    v60 = v24;
    v123 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v123, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v125[0] = v63;
      *v62 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v14 + 8))(v17, v13);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v125);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      swift_getObjectType();
      v68 = _typeName(_:qualified:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v125);

      *(v62 + 14) = v70;
      _os_log_impl(&dword_1DC659000, v123, v61, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v63, -1, -1);
      v71 = v62;
LABEL_43:
      MEMORY[0x1E12A2F50](v71, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v111 = v123;

    return;
  }

  v38 = (*(*a7 + 608))();
  if (!v38)
  {
    v72 = v24;

    v123 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v125[0] = v75;
      *v74 = 136315394;
      swift_getObjectType();
      v76 = _typeName(_:qualified:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v125);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v80 = (*(*a7 + 400))(v79);
      if (v82 > 1u)
      {
        if (v82 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v80, v81, 2);
          v83 = 0xEC00000064657472;
          v84 = 0x617473206E727574;
        }

        else
        {
          v112 = (v80 | v81) == 0;
          if (v80 | v81)
          {
            v84 = 0x6574656C706D6F63;
          }

          else
          {
            v84 = 1701602409;
          }

          if (v112)
          {
            v83 = 0xE400000000000000;
          }

          else
          {
            v83 = 0xE800000000000000;
          }
        }
      }

      else if (v82)
      {
        v83 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v80, v81, 1);
        v84 = 0xD00000000000001DLL;
      }

      else
      {
        v83 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v80, v81, 0);
        v84 = 0xD000000000000011;
      }

      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v125);

      *(v74 + 14) = v113;
      _os_log_impl(&dword_1DC659000, v123, v73, "Got %s when in state %s: Ignoring", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v75, -1, -1);
      v71 = v74;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v39 = v38;
  v40 = (v38 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v42 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v41 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v42 == RequestMessageBase.requestId.getter() && v41 == v43)
  {

    v46 = v122;
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v46 = v122;
    if ((v45 & 1) == 0)
    {
      v47 = v24;

      v123 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v123, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v125[0] = v50;
        *v49 = 136315650;
        swift_getObjectType();
        v51 = _typeName(_:qualified:)();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v125);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v54 = RequestMessageBase.requestId.getter();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v125);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2080;
        v57 = *v40;
        v58 = v40[1];

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v125);

        *(v49 + 24) = v59;
        _os_log_impl(&dword_1DC659000, v123, v48, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v50, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v85 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v86 = v120;
  v87 = v121;
  v123 = *(v46 + 16);
  (v123)(v120, v39 + v85, v121);
  v88 = specialized Sequence<>.contains(_:)(v86, v119);
  v91 = *(v46 + 8);
  v89 = v46 + 8;
  v90 = v91;
  v91(v86, v87);
  if (v88)
  {
    v92 = specialized ConversationRequestProcessor.makeResultCandidateState(from:)();
    (*(*v92 + 416))(2);
    v93 = v92[3];
    v94 = (v117 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
    v95 = *(v117 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);
    *v94 = v92[2];
    v94[1] = v93;

    if (v118)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v92);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v92);
    }
  }

  else
  {
    v122 = v89;
    v96 = v24;

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v118 = v100;
      v119 = swift_slowAlloc();
      v124 = v119;
      *v99 = 138412546;
      *(v99 + 4) = v96;
      *v100 = v96;
      *(v99 + 12) = 2080;
      v101 = v120;
      v102 = v121;
      (v123)(v120, v39 + v85, v121);
      v103 = v96;
      v104 = v97;
      v105 = RequestType.rawValue.getter();
      v107 = v106;
      v90(v101, v102);
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v124);

      *(v99 + 14) = v108;
      _os_log_impl(&dword_1DC659000, v104, v98, "%@ is not supported for this requestType: %s", v99, 0x16u);
      v109 = v118;
      outlined destroy of ReferenceResolutionClientProtocol?(v118, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v109, -1, -1);
      v110 = v119;
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      MEMORY[0x1E12A2F50](v110, -1, -1);
      MEMORY[0x1E12A2F50](v99, -1, -1);
    }

    else
    {
    }
  }
}

{
  LODWORD(v115) = a6;
  v116 = a4;
  v120 = a2;
  v113 = a9;
  v114 = a8;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RequestType();
  v19 = *(v18 - 8);
  v118 = v18;
  v119 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.conversationBridge);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v111 = v23;
    v112 = a7;
    v28 = v17;
    v29 = a5;
    v30 = v27;
    v31 = a3;
    v32 = v14;
    v33 = v13;
    v34 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v24;
    *v34 = v24;
    v35 = v24;
    _os_log_impl(&dword_1DC659000, v25, v26, "ConversationBridge handling message: %@", v30, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = v34;
    v13 = v33;
    v14 = v32;
    a3 = v31;
    MEMORY[0x1E12A2F50](v36, -1, -1);
    v37 = v30;
    a5 = v29;
    v17 = v28;
    a7 = v112;
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v24, v120, a3, a5) & 1) == 0)
  {
    v60 = v24;
    v120 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v120, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v122[0] = v63;
      *v62 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v14 + 8))(v17, v13);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v122);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      swift_getObjectType();
      v68 = _typeName(_:qualified:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v122);

      *(v62 + 14) = v70;
      _os_log_impl(&dword_1DC659000, v120, v61, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v63, -1, -1);
      v71 = v62;
LABEL_43:
      MEMORY[0x1E12A2F50](v71, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v108 = v120;

    return;
  }

  v38 = (*(*a7 + 608))();
  if (!v38)
  {
    v72 = v24;

    v120 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v120, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v122[0] = v75;
      *v74 = 136315394;
      swift_getObjectType();
      v76 = _typeName(_:qualified:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v122);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v80 = (*(*a7 + 400))(v79);
      if (v82 > 1u)
      {
        if (v82 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v80, v81, 2);
          v83 = 0xEC00000064657472;
          v84 = 0x617473206E727574;
        }

        else
        {
          v109 = (v80 | v81) == 0;
          if (v80 | v81)
          {
            v84 = 0x6574656C706D6F63;
          }

          else
          {
            v84 = 1701602409;
          }

          if (v109)
          {
            v83 = 0xE400000000000000;
          }

          else
          {
            v83 = 0xE800000000000000;
          }
        }
      }

      else if (v82)
      {
        v83 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v80, v81, 1);
        v84 = 0xD00000000000001DLL;
      }

      else
      {
        v83 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v80, v81, 0);
        v84 = 0xD000000000000011;
      }

      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v122);

      *(v74 + 14) = v110;
      _os_log_impl(&dword_1DC659000, v120, v73, "Got %s when in state %s: Ignoring", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v75, -1, -1);
      v71 = v74;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v39 = v38;
  v40 = (v38 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v42 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v41 = *(v38 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v42 == RequestMessageBase.requestId.getter() && v41 == v43)
  {

    v46 = v119;
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v46 = v119;
    if ((v45 & 1) == 0)
    {
      v47 = v24;

      v120 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v120, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v122[0] = v50;
        *v49 = 136315650;
        swift_getObjectType();
        v51 = _typeName(_:qualified:)();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v122);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v54 = RequestMessageBase.requestId.getter();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v122);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2080;
        v57 = *v40;
        v58 = v40[1];

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v122);

        *(v49 + 24) = v59;
        _os_log_impl(&dword_1DC659000, v120, v48, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v50, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v85 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v86 = v117;
  v87 = v118;
  v120 = *(v46 + 16);
  (v120)(v117, v39 + v85, v118);
  v88 = specialized Sequence<>.contains(_:)(v86, v116);
  v91 = *(v46 + 8);
  v89 = v46 + 8;
  v90 = v91;
  v91(v86, v87);
  if (v88)
  {
    v92 = ConversationRequestProcessor.makeResultCandidateState(from:)();
    (*(*v92 + 416))(3);
    if (v115)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v92);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v92);
    }
  }

  else
  {
    v119 = v89;
    v93 = v24;

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v115 = v97;
      v116 = swift_slowAlloc();
      v121 = v116;
      *v96 = 138412546;
      *(v96 + 4) = v93;
      *v97 = v93;
      *(v96 + 12) = 2080;
      v98 = v117;
      v99 = v118;
      (v120)(v117, v39 + v85, v118);
      v100 = v93;
      v101 = v94;
      v102 = RequestType.rawValue.getter();
      v104 = v103;
      v90(v98, v99);
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v121);

      *(v96 + 14) = v105;
      _os_log_impl(&dword_1DC659000, v101, v95, "%@ is not supported for this requestType: %s", v96, 0x16u);
      v106 = v115;
      outlined destroy of ReferenceResolutionClientProtocol?(v115, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v106, -1, -1);
      v107 = v116;
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x1E12A2F50](v107, -1, -1);
      MEMORY[0x1E12A2F50](v96, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(a1, v4, v5, v6);
}

unint64_t outlined copy of ConversationRequestProcessorTurnState.SpeechState(unint64_t result, void *a2)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    v3 = a2;
  }
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t9IFRequestU0C_Tt3g5Tf4gnnn_n(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v75 = a4;
  v76 = a5;
  v73 = a2;
  v74 = a3;
  v5 = type metadata accessor for RequestPositionInSession();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Restrictions();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v56[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v56[-v16];
  v18 = type metadata accessor for ResponseMode();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v56[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v56[-v28];
  v30 = type metadata accessor for InputOrigin();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v56[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = StartIFRequestMessage.requestContextData.getter();
  StartIFRequestMessage.inputOrigin.getter();
  v36 = InputOrigin.aceInputOrigin.getter();
  v69 = v37;
  v70 = v36;
  (*(v31 + 8))(v34, v30);
  RequestContextData.audioSource.getter();
  v82 = v29;
  AudioSource.init(aceValue:)();
  RequestContextData.audioDestination.getter();
  v84 = v25;
  AudioDestination.init(aceValue:)();
  RequestContextData.responseMode.getter();
  ResponseMode.init(aceValue:)();
  v38 = *(v19 + 48);
  v39 = v38(v17, 1, v18);
  v81 = v18;
  if (v39 == 1)
  {
    static ResponseMode.displayForward.getter();
    if (v38(v17, 1, v18) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    (*(v19 + 32))(v85, v17, v18);
  }

  v40 = RequestContextData.isEyesFree.getter();
  v57 = RequestContextData.isVoiceTriggerEnabled.getter();
  v41 = RequestContextData.isTextToSpeechEnabled.getter();
  v58 = RequestContextData.bargeInModes.getter();
  RequestContextData.approximatePreviousTTSInterval.getter();
  RequestContextData.deviceRestrictions.getter();
  v42 = v71;
  Restrictions.init(aceValue:)();
  v60 = RequestContextData.isTriggerlessFollowup.getter();
  v64 = RequestContextData.voiceTriggerEventInfo.getter();
  v65 = RequestContextData.voiceAudioSessionId.getter();
  v63 = RequestContextData.isSystemApertureEnabled.getter();
  v62 = RequestContextData.isLiveActivitiesSupported.getter();
  v61 = RequestContextData.isInAmbient.getter();
  v68 = RequestContextData.conjunctionInfo.getter();
  v67 = RequestContextData.isDeviceShowingLockScreen.getter();
  v66 = RequestContextData.isDeviceLocked.getter();
  v44 = v79;
  v43 = v80;
  v45 = v72;
  (*(v79 + 104))(v72, *MEMORY[0x1E69CE5A0], v80);
  v59 = type metadata accessor for RequestContextData(0);
  v46 = objc_allocWithZone(v59);
  v47 = &v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  v48 = v69;
  *v47 = v70;
  v47[1] = v48;
  outlined init with copy of ReferenceResolutionClientProtocol?(v82, &v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v84, &v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  (*(v19 + 16))(&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v85, v81);
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v40 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = 0;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v57 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v41 & 1;
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v58;
  v49 = v83;
  outlined init with copy of ReferenceResolutionClientProtocol?(v83, &v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v50 = v77;
  v51 = v78;
  (*(v77 + 16))(&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v42, v78);
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
  v52 = &v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  v53 = v74;
  *v52 = v73;
  v52[1] = v53;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v60 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v75 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = 0;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v64;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v76 & 1;
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v65;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v63 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v62 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v61 & 1;
  (*(v44 + 16))(&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v45, v43);
  *&v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v68;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v67 & 1;
  v46[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v66 & 1;
  v86.receiver = v46;
  v86.super_class = v59;
  v54 = objc_msgSendSuper2(&v86, sel_init);
  (*(v44 + 8))(v45, v43);
  (*(v50 + 8))(v42, v51);
  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v19 + 8))(v85, v81);
  outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);

  return v54;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  LODWORD(v112) = a6;
  v113 = a4;
  v117 = a2;
  v110 = a9;
  v111 = a8;
  v13 = type metadata accessor for UUID();
  v114 = *(v13 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RequestType();
  v116 = *(v17 - 8);
  v18 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v108 = v21;
    v109 = a7;
    v26 = v16;
    v27 = a5;
    v28 = v25;
    v29 = a3;
    v30 = v13;
    v31 = v17;
    v32 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v22;
    *v32 = v22;
    v33 = v22;
    _os_log_impl(&dword_1DC659000, v23, v24, "ConversationBridge handling message: %@", v28, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = v32;
    v17 = v31;
    v13 = v30;
    a3 = v29;
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v35 = v28;
    a5 = v27;
    v16 = v26;
    a7 = v109;
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v22, v117, a3, a5) & 1) == 0)
  {
    v58 = v22;
    v117 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v117, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v119[0] = v61;
      *v60 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v114 + 8))(v16, v13);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v119);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      swift_getObjectType();
      v66 = _typeName(_:qualified:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v119);

      *(v60 + 14) = v68;
      _os_log_impl(&dword_1DC659000, v117, v59, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v61, -1, -1);
      v69 = v60;
LABEL_43:
      MEMORY[0x1E12A2F50](v69, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v105 = v117;

    return;
  }

  v36 = (*(*a7 + 608))();
  if (!v36)
  {
    v70 = v22;

    v117 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v117, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119[0] = v73;
      *v72 = 136315394;
      swift_getObjectType();
      v74 = _typeName(_:qualified:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v119);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v78 = (*(*a7 + 400))(v77);
      if (v80 > 1u)
      {
        if (v80 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v78, v79, 2);
          v81 = 0xEC00000064657472;
          v82 = 0x617473206E727574;
        }

        else
        {
          v106 = (v78 | v79) == 0;
          if (v78 | v79)
          {
            v82 = 0x6574656C706D6F63;
          }

          else
          {
            v82 = 1701602409;
          }

          if (v106)
          {
            v81 = 0xE400000000000000;
          }

          else
          {
            v81 = 0xE800000000000000;
          }
        }
      }

      else if (v80)
      {
        v81 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 1);
        v82 = 0xD00000000000001DLL;
      }

      else
      {
        v81 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 0);
        v82 = 0xD000000000000011;
      }

      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, v119);

      *(v72 + 14) = v107;
      _os_log_impl(&dword_1DC659000, v117, v71, "Got %s when in state %s: Ignoring", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v73, -1, -1);
      v69 = v72;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v37 = v36;
  v38 = (v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v40 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v39 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v40 == RequestMessageBase.requestId.getter() && v39 == v41)
  {

    v44 = v116;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v116;
    if ((v43 & 1) == 0)
    {
      v45 = v22;

      v117 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v119[0] = v48;
        *v47 = 136315650;
        swift_getObjectType();
        v49 = _typeName(_:qualified:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v119);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = RequestMessageBase.requestId.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v119);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        v55 = *v38;
        v56 = v38[1];

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v119);

        *(v47 + 24) = v57;
        _os_log_impl(&dword_1DC659000, v117, v46, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v83 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v84 = *(v44 + 16);
  v85 = v115;
  v84(v115, v37 + v83, v17);
  v86 = specialized Sequence<>.contains(_:)(v85, v113);
  v88 = *(v44 + 8);
  v87 = v44 + 8;
  v117 = v88;
  (v88)(v85, v17);
  if (v86)
  {
    v89 = v110(v111);
    (*(*v89 + 416))(1);
    if (v112)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v89);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v89);
    }
  }

  else
  {
    v116 = v87;
    v114 = v17;
    v90 = v22;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v112 = v94;
      v113 = swift_slowAlloc();
      v118 = v113;
      *v93 = 138412546;
      *(v93 + 4) = v90;
      *v94 = v90;
      *(v93 + 12) = 2080;
      v96 = v114;
      v95 = v115;
      v84(v115, v37 + v83, v114);
      v97 = v90;
      v98 = v91;
      v99 = RequestType.rawValue.getter();
      v101 = v100;
      (v117)(v95, v96);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v118);

      *(v93 + 14) = v102;
      _os_log_impl(&dword_1DC659000, v98, v92, "%@ is not supported for this requestType: %s", v93, 0x16u);
      v103 = v112;
      outlined destroy of ReferenceResolutionClientProtocol?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v103, -1, -1);
      v104 = v113;
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x1E12A2F50](v104, -1, -1);
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t specialized closure #1 in ConversationRequestProcessor.handleRewrittenUtteranceCandidateMessage(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for SiriXRedirectContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XRedirectContextVSgMd, &_s16SiriMessageTypes0A16XRedirectContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v47 - v16;
  v17 = type metadata accessor for SiriXRedirectContext();
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v47 - v21;
  v54 = a1;
  v22 = specialized ConversationRequestProcessor.makeResultCandidateState(from:)();
  (*(*v22 + 416))(1);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationBridge);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = v8;
    v27 = v26;
    v28 = swift_slowAlloc();
    v50 = v5;
    v47 = v28;
    v56 = v28;
    *v27 = 136315138;
    v29 = *v22;
    v49 = v13;
    v30 = v17;
    v31 = v10;
    v32 = v9;
    v33 = *(v29 + 832);

    v35 = v33(v34);
    v9 = v32;
    v10 = v31;
    v17 = v30;
    v36 = v35;
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v56);
    v13 = v49;

    *(v27 + 4) = v39;
    _os_log_impl(&dword_1DC659000, v24, v25, "Received RewrittenUtteranceCandidateMessage when RC state: %s", v27, 0xCu);
    v40 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v5 = v50;
    MEMORY[0x1E12A2F50](v40, -1, -1);
    v41 = v27;
    v8 = v48;
    MEMORY[0x1E12A2F50](v41, -1, -1);
  }

  v42 = v53;
  RewrittenUtteranceCandidateMessage.siriXRedirectContext.getter();
  v43 = v55;
  if ((*(v55 + 48))(v42, 1, v17) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s16SiriMessageTypes0A16XRedirectContextVSgMd, &_s16SiriMessageTypes0A16XRedirectContextVSgMR);
  }

  else
  {
    v44 = v52;
    (*(v43 + 32))(v52, v42, v17);
    v45 = v51;
    (*(v43 + 16))(v51, v44, v17);
    SiriXRedirectContext.init(from:)(v45, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      (*(v43 + 8))(v44, v17);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      (*(v10 + 16))(v5, v13, v9);
      (*(v10 + 56))(v5, 0, 1, v9);
      (*(*v22 + 752))(v5);
      (*(v10 + 8))(v13, v9);
      (*(v43 + 8))(v44, v17);
    }
  }

  return v22;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *))
{
  v112 = a8;
  v113 = a4;
  v110 = a6;
  v117 = a2;
  v111 = a9;
  v13 = type metadata accessor for UUID();
  v114 = *(v13 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RequestType();
  v116 = *(v17 - 8);
  v18 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v108 = v21;
    v109 = a7;
    v26 = v16;
    v27 = a5;
    v28 = v25;
    v29 = a3;
    v30 = v13;
    v31 = v17;
    v32 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v22;
    *v32 = v22;
    v33 = v22;
    _os_log_impl(&dword_1DC659000, v23, v24, "ConversationBridge handling message: %@", v28, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = v32;
    v17 = v31;
    v13 = v30;
    a3 = v29;
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v35 = v28;
    a5 = v27;
    v16 = v26;
    a7 = v109;
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v22, v117, a3, a5) & 1) == 0)
  {
    v58 = v22;
    v117 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v117, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v119[0] = v61;
      *v60 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v114 + 8))(v16, v13);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v119);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      swift_getObjectType();
      v66 = _typeName(_:qualified:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v119);

      *(v60 + 14) = v68;
      _os_log_impl(&dword_1DC659000, v117, v59, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v61, -1, -1);
      v69 = v60;
LABEL_46:
      MEMORY[0x1E12A2F50](v69, -1, -1);
      goto LABEL_47;
    }

LABEL_32:
    v105 = v117;

    return;
  }

  v36 = (*(*a7 + 608))();
  if (!v36)
  {
    v70 = v22;

    v117 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v117, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119[0] = v73;
      *v72 = 136315394;
      swift_getObjectType();
      v74 = _typeName(_:qualified:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v119);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v78 = (*(*a7 + 400))(v77);
      if (v80 > 1u)
      {
        if (v80 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v78, v79, 2);
          v81 = 0xEC00000064657472;
          v82 = 0x617473206E727574;
        }

        else
        {
          v106 = (v78 | v79) == 0;
          if (v78 | v79)
          {
            v82 = 0x6574656C706D6F63;
          }

          else
          {
            v82 = 1701602409;
          }

          if (v106)
          {
            v81 = 0xE400000000000000;
          }

          else
          {
            v81 = 0xE800000000000000;
          }
        }
      }

      else if (v80)
      {
        v81 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 1);
        v82 = 0xD00000000000001DLL;
      }

      else
      {
        v81 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 0);
        v82 = 0xD000000000000011;
      }

      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, v119);

      *(v72 + 14) = v107;
      _os_log_impl(&dword_1DC659000, v117, v71, "Got %s when in state %s: Ignoring", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v73, -1, -1);
      v69 = v72;
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  v37 = v36;
  v38 = (v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v40 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v39 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v40 == RequestMessageBase.requestId.getter() && v39 == v41)
  {

    v44 = v116;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v116;
    if ((v43 & 1) == 0)
    {
      v45 = v22;

      v117 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v119[0] = v48;
        *v47 = 136315650;
        swift_getObjectType();
        v49 = _typeName(_:qualified:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v119);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = RequestMessageBase.requestId.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v119);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        v55 = *v38;
        v56 = v38[1];

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v119);

        *(v47 + 24) = v57;
        _os_log_impl(&dword_1DC659000, v117, v46, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);

LABEL_47:

        return;
      }

      goto LABEL_32;
    }
  }

  v83 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v84 = *(v44 + 16);
  v85 = v115;
  v84(v115, v37 + v83, v17);
  v86 = specialized Sequence<>.contains(_:)(v85, v113);
  v88 = *(v44 + 8);
  v87 = v44 + 8;
  v117 = v88;
  (v88)(v85, v17);
  if (v86)
  {
    v89 = v111(v112);
    if (v89)
    {
      if (v110)
      {
        ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v89);
      }

      else
      {
        ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v89);
      }
    }
  }

  else
  {
    v116 = v87;
    v114 = v17;
    v90 = v22;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v112 = v94;
      v113 = swift_slowAlloc();
      v118 = v113;
      *v93 = 138412546;
      *(v93 + 4) = v90;
      *v94 = v90;
      *(v93 + 12) = 2080;
      v96 = v114;
      v95 = v115;
      v84(v115, v37 + v83, v114);
      v97 = v90;
      v98 = v91;
      v99 = RequestType.rawValue.getter();
      v101 = v100;
      (v117)(v95, v96);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v118);

      *(v93 + 14) = v102;
      _os_log_impl(&dword_1DC659000, v98, v92, "%@ is not supported for this requestType: %s", v93, 0x16u);
      v103 = v112;
      outlined destroy of ReferenceResolutionClientProtocol?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v103, -1, -1);
      v104 = v113;
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x1E12A2F50](v104, -1, -1);
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    else
    {
    }
  }
}

void specialized ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v83 - v7;
  v9 = type metadata accessor for RequestSummary.ExecutionSource();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v83 - v18;
  updated = type metadata accessor for ContextUpdateScope();
  v20 = *(updated - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v83 - v33;
  if (a1 && *(a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) == 1)
  {
    v90 = v8;
    v91 = a2;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v92 = v2;
    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.conversationBridge);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v35, v36, "Trying to apply an empty NativeFlowContextUpdate since we received an ExecutionContextUpdate without a nativeFlowContextCommand", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E69C7990]) init];
    v39 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
    v40 = type metadata accessor for PommesContext();
    (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
    (*(v20 + 104))(v23, *MEMORY[0x1E69CFF00], updated);
    v41 = type metadata accessor for ExecutionContextUpdate();
    v42 = objc_allocWithZone(v41);
    outlined init with copy of ReferenceResolutionClientProtocol?(v30, v27, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v27, v38);
    *&v42[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v42[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v38;
    *&v42[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v42[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v42[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v34, &v42[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v42[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v27, &v42[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v20 + 16))(&v42[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v23, updated);
    v43 = &v42[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v43 = 0;
    v43[1] = 0;
    v42[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v101.receiver = v42;
    v101.super_class = v41;
    v85 = objc_msgSendSuper2(&v101, sel_init);
    (*(v20 + 8))(v23, updated);
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v44 = *(v92 + 64);
    v45 = *(v92 + 72);
    v46 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v47 = v94;
    (*(*(v46 - 8) + 56))(v94, 1, 1, v46);
    v49 = v97;
    v48 = v98;
    v50 = v95;
    (*(v97 + 104))(v95, *MEMORY[0x1E69D0678], v98);
    v51 = *(v49 + 16);
    v52 = v96;
    v51(v96, v50, v48);
    v53 = v93;
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v93, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v84 = type metadata accessor for ExecutionOutput();
    v54 = objc_allocWithZone(v84);
    v55 = &v54[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    v88 = v44;
    *v55 = v44;
    *(v55 + 1) = v45;
    v56 = v85;
    v57 = &v54[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v57 = 0;
    *(v57 + 1) = 0;
    v58 = &v54[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v58 = 0;
    *(v58 + 1) = 0;
    v59 = &v54[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v59 = 0;
    *(v59 + 1) = 0;
    v60 = &v54[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v60 = 0;
    *(v60 + 1) = 0;
    v51(&v54[OBJC_IVAR___SKRExecutionOutput_executionSource], v52, v48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v53, &v54[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v61 = one-time initialization token for executor;
    v86 = v56;
    v87 = v45;

    if (v61 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v89, static Logger.executor);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v99 = v66;
      *v64 = 136315394;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v99);
      *(v64 + 12) = 2112;
      *(v64 + 14) = 0;
      *v65 = 0;
      _os_log_impl(&dword_1DC659000, v62, v63, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v64, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      v67 = v66;
      v68 = v92;
      MEMORY[0x1E12A2F50](v67, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    else
    {

      v68 = v92;
    }

    *&v54[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v54[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v56;
    v100.receiver = v54;
    v100.super_class = v84;
    v69 = objc_msgSendSuper2(&v100, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v70 = *(v97 + 8);
    v71 = v98;
    v70(v96, v98);
    v70(v95, v71);
    outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v72 = *(v68 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
    v73 = *(v68 + 88);
    v98 = *(v68 + 80);
    v74 = v68;
    v75 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
    v77 = *(v74 + 96);
    v76 = *(v74 + 104);
    v78 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
    v79 = type metadata accessor for UUID();
    v80 = *(v79 - 8);
    v81 = v74 + v78;
    v82 = v90;
    (*(v80 + 16))(v90, v81, v79);
    (*(v80 + 56))(v82, 0, 1, v79);
    (*(*v72 + 296))(v69, v88, v87, v98, v73, v74 + v75, 0, v91, v77, v76, v82, 0, 0, closure #1 in ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:), 0);

    outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(uint64_t a1)
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

  return closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.commit(rcState:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(a1, v1);
}

uint64_t type metadata completion function for ConversationRequestProcessor()
{
  result = type metadata accessor for UserID();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for SessionConfiguration();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for UserSessionState();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)()
{
  v2 = *(v0 + 592);

  return v2();
}

uint64_t dispatch thunk of ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)()
{
  v2 = *(v0 + 600);

  return v2();
}

uint64_t dispatch thunk of ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1)
{
  v4 = *(*v1 + 1392);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t initializeBufferWithCopyOfBuffer for ConversationRequestProcessor.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ConversationRequestProcessor.State(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ConversationRequestProcessor.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ConversationRequestProcessor.State(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ConversationRequestProcessor.State(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ConversationRequestProcessor.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ConversationRequestProcessor.State(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationRequestProcessor.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ConversationRequestProcessor.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for ConversationRequestProcessor.State(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for ConversationRequestProcessor.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t outlined init with copy of ResultCandidateType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResultCandidateType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RoutingDecision(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_25Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined assign with take of SelectedUserAttributes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(a1, a2);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t ConversationRequestProcessorTurnState.__allocating_init(requestType:requestId:asrOnServer:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v15 = type metadata accessor for RequestType();
  (*(*(v15 - 8) + 32))(v13 + v14, a1, v15);
  v16 = (v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v16 = a2;
  v16[1] = a3;
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = a4;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v18 = type metadata accessor for InputOrigin();
  (*(*(v18 - 8) + 32))(v13 + v17, a5, v18);
  return v13;
}

void *ConversationRequestProcessorTurnState.SpeechState.speechRecognizedCommand.getter(unint64_t a1, void *a2)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v2 = a2;
  v3 = a2;
  return v2;
}

uint64_t ConversationRequestProcessorTurnState.__allocating_init(startDirectActionRequestMessage:)(void *a1, unsigned int *a2)
{
  v4 = v2;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, *a2, v11, v14);
  v17 = a1;
  v18 = RequestMessageBase.requestId.getter();
  v20 = v19;

  v21 = v17;
  StartRequestMessageBase.inputOrigin.getter();

  v22 = *(v4 + 48);
  v23 = *(v4 + 52);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v12 + 32))(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v16, v11);
  v25 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v25 = v18;
  v25[1] = v20;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v7 + 32))(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v10, v6);
  return v24;
}

uint64_t ConversationRequestProcessorTurnState.__allocating_init(startIFRequestMessage:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RequestType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x1E69D0530], v9, v12);
  v15 = RequestMessageBase.requestId.getter();
  v17 = v16;
  StartIFRequestMessage.inputOrigin.getter();

  v18 = *(v2 + 48);
  v19 = *(v2 + 52);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v10 + 32))(v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v14, v9);
  v21 = (v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v21 = v15;
  v21[1] = v17;
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v5 + 32))(v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v8, v4);
  return v20;
}

void ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v6 = *v5;
  if (*v5 >> 62)
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
      v27 = swift_slowAlloc();
      v39[0] = v27;
      *v26 = 136315138;
      v28 = *v5 >> 62;
      if (v28)
      {
        if (v28 == 1)
        {
          v29 = 0xEA00000000006465;
          v30 = 0x7463656C65536372;
        }

        else
        {
          v29 = 0xE400000000000000;
          v30 = 1701602409;
        }
      }

      else
      {
        v29 = 0x80000001DCA80910;
        v30 = 0xD000000000000019;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v39);

      *(v26 + 4) = v37;
      _os_log_impl(&dword_1DC659000, v24, v25, "Got an ASRResultCandidateMessge/TRPCandidateRequestMessage in state %s: Ignoring", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }
  }

  else
  {
    v7 = v5[1];
    v8 = *(*v6 + 88);
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v7);

    if (*(v8(v9) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
      v11 = v10;

      if (v11)
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.conversationBridge);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v39[0] = v16;
          *v15 = 136315138;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v39);
          _os_log_impl(&dword_1DC659000, v13, v14, "Updating ResultCandidateState with rcId %s to rcStateHolder.", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
          MEMORY[0x1E12A2F50](v16, -1, -1);
          MEMORY[0x1E12A2F50](v15, -1, -1);
        }

        v17 = *(*v6 + 104);

        v18 = v17(v39);
        v20 = v19;
        v21 = *v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *v20;
        *v20 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v4, v3, isUniquelyReferenced_nonNull_native);

        *v20 = v38;
        v18(v39, 0);
        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationBridge);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v39);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_1DC659000, v32, v33, "Got a Conversation state update for RC ID %s that does not exist in the cache yet. Dropping the update.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);

LABEL_20:
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
      return;
    }

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
  }
}

void ConversationRequestProcessorTurnState.addResultCandidateState(_:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v1 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  swift_beginAccess();
  v6 = *v5;
  v7 = *v5 >> 62;
  if (v7)
  {
    if (v7 == 1)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.conversationBridge);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v40[0] = v12;
        *v11 = 136315138;
        v13 = *v5 >> 62;
        if (v13)
        {
          if (v13 == 1)
          {
            v14 = 0xEA00000000006465;
            v15 = 0x7463656C65536372;
          }

          else
          {
            v14 = 0xE400000000000000;
            v15 = 1701602409;
          }
        }

        else
        {
          v14 = 0x80000001DCA80910;
          v15 = 0xD000000000000019;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v40);

        *(v11 + 4) = v38;
        _os_log_impl(&dword_1DC659000, v9, v10, "Got an ASRResultCandidateMessge in state %s: Ignoring", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E12A2F50](v12, -1, -1);
        MEMORY[0x1E12A2F50](v11, -1, -1);
      }

      return;
    }

    type metadata accessor for ConversationRequestProcessorTurnState.ResultCandidateStateHolder();
    v6 = swift_allocObject();
    v6[2] = MEMORY[0x1E69E7CC8];
    *v5 = v6;
    *(v5 + 8) = 0;

    goto LABEL_18;
  }

  v16 = *(v5 + 8);
  v17 = *(*v6 + 88);
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v16);

  if (!*(v17(v18) + 16))
  {

    goto LABEL_17;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_17:
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
LABEL_18:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v40);
      _os_log_impl(&dword_1DC659000, v28, v29, "Adding ResultCandidateState with rcId %s to rcStateHolder.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v32 = *(*v6 + 104);

    v33 = v32(v40);
    v35 = v34;
    v36 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *v35;
    *v35 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v4, v3, isUniquelyReferenced_nonNull_native);

    *v35 = v39;
    v33(v40, 0);

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.conversationBridge);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40[0] = v25;
    *v24 = 136315138;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v40);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_1DC659000, v22, v23, "Got the same RC ID %s multiple times this turn. Ignoring.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
  }

  else
  {
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
  }
}

Swift::Bool __swiftcall ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()()
{
  v1 = type metadata accessor for RequestType();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v46 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v23 = v2[2];
  v51 = v2 + 2;
  v52 = v0;
  v56 = v22;
  v54 = v23;
  v23(v21, v0 + v22, v1);
  v24 = *MEMORY[0x1E69D0548];
  v53 = v2[13];
  v53(v18, v24, v1);
  v25 = lazy protocol witness table accessor for type RequestType and conformance RequestType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v55 = v25;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60 == v58 && v61 == v59)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v27 = v2[1];
  v27(v18, v1);
  v57 = v27;
  v27(v21, v1);

  if (v26)
  {
    goto LABEL_11;
  }

  v28 = v52;
  v54(v15, v52 + v56, v1);
  v29 = v50;
  v53(v50, *MEMORY[0x1E69D0530], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60 == v58 && v61 == v59)
  {
    v30 = v57;
    v57(v29, v1);
    v31 = v15;
LABEL_9:
    v30(v31, v1);

LABEL_11:
    v35 = 1;
    return v35 & 1;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v33 = v29;
  v34 = v57;
  v57(v33, v1);
  v34(v15, v1);

  if (v32)
  {
    goto LABEL_11;
  }

  v37 = v49;
  v54(v49, v28 + v56, v1);
  v38 = v48;
  v53(v48, *MEMORY[0x1E69D0520], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60 == v58 && v61 == v59)
  {
    v30 = v57;
    v57(v38, v1);
    v31 = v37;
    goto LABEL_9;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v40 = v38;
  v41 = v57;
  v57(v40, v1);
  v41(v37, v1);

  if (v39)
  {
    goto LABEL_11;
  }

  v42 = v46;
  v54(v46, v28 + v56, v1);
  v43 = v47;
  v53(v47, *MEMORY[0x1E69D0538], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60 == v58 && v61 == v59)
  {
    v35 = 1;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v44 = v43;
  v45 = v57;
  v57(v44, v1);
  v45(v42, v1);

  return v35 & 1;
}

uint64_t ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    v7 = (*(*a3 + 88))();
    if (*(v7 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v9)
      {
        v3 = *(*(v7 + 56) + 8 * v8);

        return v3;
      }
    }

    return 0;
  }

  if (a3 >> 62 != 1)
  {
    return 0;
  }

  v3 = a3 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == a1 && *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == a2;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return v3;
}

uint64_t ConversationRequestProcessorTurnState.SpeechState.selectedResultCandidate.getter(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    return 0;
  }

  v5 = (*(*a3 + 88))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    return v8;
  }

  else
  {

    return 0;
  }
}

Swift::Void __swiftcall ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(Swift::String_optional exceptResultCandidateId)
{
  v31 = v2;
  v32 = v1;
  countAndFlagsBits = exceptResultCandidateId.value._countAndFlagsBits;
  if (!(v1 >> 62))
  {
    object = exceptResultCandidateId.value._object;
    v4 = *(*v1 + 88);

    v5 = v4();
    v6 = 0;
    v7 = v5 + 64;
    v34 = v5;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
LABEL_10:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v6 << 6);
      v15 = *(*(v34 + 56) + 8 * v14);
      if (object)
      {
        v16 = (*(v34 + 48) + 16 * v14);
        v17 = *v16 == countAndFlagsBits && v16[1] == object;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          continue;
        }
      }

      v18 = one-time initialization token for conversationBridge;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationBridge);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35 = v30;
        *v29 = 136315138;
        v22 = *(*v15 + 832);

        v28 = v21;
        v24 = v22(v23);
        v26 = v25;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v35);

        *(v29 + 4) = v27;
        _os_log_impl(&dword_1DC659000, v20, v28, "Cancelling RC: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1E12A2F50](v30, -1, -1);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      (*(*v15 + 416))(17);
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_10;
      }
    }

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v32, v31);
  }
}

uint64_t ConversationRequestProcessorTurnState.isServerFallback.getter()
{
  v1 = type metadata accessor for RequestType();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v14 = v2[2];
  v55 = v0;
  v52 = v13;
  v50 = v14;
  v14(v12, v0 + v13, v1);
  v15 = *MEMORY[0x1E69D0528];
  v49 = v2[13];
  v49(v9, v15, v1);
  v16 = lazy protocol witness table accessor for type RequestType and conformance RequestType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v51 = v16;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v56 == v58 && v57 == v59)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v18 = v2[1];
  v18(v9, v1);
  v18(v12, v1);

  if (v17)
  {
    goto LABEL_10;
  }

  v19 = v54;
  v50(v54, v55 + v52, v1);
  v20 = v53;
  v49(v53, *MEMORY[0x1E69D0558], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v56 == v58 && v57 == v59)
  {
    v18(v20, v1);
    v18(v19, v1);

LABEL_10:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationBridge);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "Server fallback is always true for this requestType", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    v26 = 1;
    return v26 & 1;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v18(v20, v1);
  v18(v19, v1);

  if (v21)
  {
    goto LABEL_10;
  }

  v28 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  v29 = v55;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (v30 >> 62 == 1)
  {
    v31 = v30 & 0x3FFFFFFFFFFFFFFFLL;
    v32 = one-time initialization token for conversationBridge;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.conversationBridge);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = v37;
      *v36 = 136315138;
      v38 = *(*v31 + 832);

      v40 = v38(v39);
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v58);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_1DC659000, v34, v35, "Selected ResultCandidateState: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    v26 = (*(*v31 + 648))();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.conversationBridge);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DC659000, v45, v46, "No selected RC found", v47, 2u);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    v26 = 0;
  }

  return v26 & 1;
}

uint64_t ConversationRequestProcessorTurnState.requestType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v4 = type metadata accessor for RequestType();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ConversationRequestProcessorTurnState.requestType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v4 = type metadata accessor for RequestType();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ConversationRequestProcessorTurnState.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  return v1;
}

uint64_t ConversationRequestProcessorTurnState.inputOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v4 = type metadata accessor for InputOrigin();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ConversationRequestProcessorTurnState.flowPluginInfo.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationRequestProcessorTurnState.flowPluginInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConversationRequestProcessorTurnState.outputCounter.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessorTurnState.outputCounter.setter(int a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t ConversationRequestProcessorTurnState.speechState.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v1, *(v1 + 8));
  return v2;
}

void ConversationRequestProcessorTurnState.speechState.setter(unint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
}

uint64_t ConversationRequestProcessorTurnState.init(requestType:requestId:asrOnServer:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  v11 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v12 = type metadata accessor for RequestType();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = (v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v13 = a2;
  v13[1] = a3;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = a4;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v15 = type metadata accessor for InputOrigin();
  (*(*(v15 - 8) + 32))(v5 + v14, a5, v15);
  return v5;
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

unint64_t ConversationRequestProcessorTurnState.SpeechState.description.getter(unint64_t a1)
{
  v1 = 1701602409;
  if (a1 >> 62 == 1)
  {
    v1 = 0x7463656C65536372;
  }

  if (a1 >> 62)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationRequestProcessorTurnState.SpeechState()
{
  v1 = *v0 >> 62;
  v2 = 1701602409;
  if (v1 == 1)
  {
    v2 = 0x7463656C65536372;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.byRcId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.byRcId.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ConversationRequestProcessorTurnState.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  v4 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v5 = type metadata accessor for InputOrigin();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState + 8));
  return v0;
}

uint64_t specialized ConversationRequestProcessorTurnState.__allocating_init(startTextRequestMessage:)(void *a1)
{
  v2 = type metadata accessor for InputOrigin();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  type metadata accessor for StartTextRequestMessage();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20RoutingDecisionAware_pMd, &_s16SiriMessageTypes20RoutingDecisionAware_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
  }

  outlined destroy of RoutingDecisionAware?(v24);
  (*(v8 + 104))(v11, *MEMORY[0x1E69D0530], v7);
  v13 = v12;
  v14 = RequestMessageBase.requestId.getter();
  v16 = v15;

  v17 = v13;
  StartRequestMessageBase.inputOrigin.getter();

  v18 = type metadata accessor for ConversationRequestProcessorTurnState();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v8 + 32))(v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v11, v7);
  v22 = (v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v22 = v14;
  v22[1] = v16;
  *(v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v3 + 32))(v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v6, v2);
  return v21;
}

unint64_t lazy protocol witness table accessor for type RequestType and conformance RequestType()
{
  result = lazy protocol witness table cache variable for type RequestType and conformance RequestType;
  if (!lazy protocol witness table cache variable for type RequestType and conformance RequestType)
  {
    type metadata accessor for RequestType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestType and conformance RequestType);
  }

  return result;
}

uint64_t type metadata completion function for ConversationRequestProcessorTurnState()
{
  result = type metadata accessor for RequestType();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for InputOrigin();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t *assignWithCopy for ConversationRequestProcessorTurnState.SpeechState(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v5, v6);
  return a1;
}

unint64_t *assignWithTake for ConversationRequestProcessorTurnState.SpeechState(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationRequestProcessorTurnState.SpeechState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConversationRequestProcessorTurnState.SpeechState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t getEnumTag for ConversationRequestProcessorTurnState.SpeechState(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *destructiveInjectEnumTag for ConversationRequestProcessorTurnState.SpeechState(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

void *ConversationRuntimeClient.__allocating_init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(a1, a2);

  return v4;
}

unint64_t ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000019;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationRuntimeClient.ConversationRuntimeClientError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError()
{
  ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationRuntimeClient.ConversationRuntimeClientError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationRuntimeClient.ConversationRuntimeClientError@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ConversationRuntimeClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ConversationRuntimeClient.init()();
  return v0;
}

void *ConversationRuntimeClient.init()()
{
  v1 = v0;
  v0[2] = 0;
  type metadata accessor for ConversationHandlerLocator();
  v2 = ConversationHandlerLocator.__allocating_init(onConnectionInterrupted:)(destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);
  type metadata accessor for ServerFallbackDisablingUtils();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v3 = swift_allocObject();
  v3[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v3[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v3[4] = 0;
  type metadata accessor for ConversationService();
  v4 = swift_allocObject();
  specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(v2, v11, 0, 0, 1, closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:), 0, v3, v4);
  v5 = ConversationService.serialFacade.getter();
  v7 = v6;
  v9 = v8;

  v1[3] = v5;
  v1[4] = v7;
  v1[5] = v9;
  return v1;
}

void *ConversationRuntimeClient.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(a1, a2);

  return v2;
}

void *ConversationRuntimeClient.__allocating_init(overrideConversationService:)()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  v1 = ConversationService.serialFacade.getter();
  v3 = v2;
  v5 = v4;

  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v5;
  return v0;
}

void *ConversationRuntimeClient.init(overrideConversationService:)()
{
  v0[2] = 0;
  v1 = ConversationService.serialFacade.getter();
  v3 = v2;
  v5 = v4;

  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v5;
  return v0;
}

uint64_t ConversationRuntimeClient.sendCancelExecutionTurn(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:);
  *(v14 + 24) = v10;
  *(v14 + 32) = "bridge(didReceiveCancelRequest:from:)";
  *(v14 + 40) = 37;
  *(v14 + 48) = 2;
  v15 = *(*v7 + 208);

  v15(v11, v13, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v14);
}

uint64_t ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[10] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), v5, 0);
}

uint64_t ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v0[11] = v1[3];
  v0[12] = v1[4];
  v0[13] = v1[5];

  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), 0, 0);
}

{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *(v5 + 16) = *(v0 + 88);
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23ExecutionOverrideResultCSgMd, &_s14SiriKitRuntime23ExecutionOverrideResultCSgMR);
  *v7 = v0;
  v7[1] = ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:);

  return MEMORY[0x1EEE6DDE0](v0 + 40, 0, 0, 0xD000000000000033, 0x80000001DCA80B80, partial apply for closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), v5, v8);
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), 0, 0);
}

{
  v1 = v0[10];
  v0[16] = v0[5];
  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), v1, 0);
}

{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t ConversationRuntimeClient.sendCommitResultCandidateId(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = "bridge(didReceiveCommitResultCandidateId:from:)";
  *(v14 + 48) = 47;
  *(v14 + 56) = 2;
  *(v14 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:);
  *(v14 + 72) = v10;
  v15 = *(*v8 + 208);

  v15(v11, v13, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v14);
}

uint64_t ConversationRuntimeClient.sendSiriKitPluginSignal(_:withBridgeDelegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  v11 = a1;
  swift_unknownObjectRetain();
  v12 = StaticString.description.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 32) = v9;
  *(v15 + 40) = "bridge(didReceiveSiriKitPluginSignal:from:)";
  *(v15 + 48) = 43;
  *(v15 + 56) = 2;
  *(v15 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:);
  *(v15 + 72) = v10;
  v16 = *(*v8 + 208);

  v16(v12, v14, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v15);
}

Swift::Int ConversationRuntimeClient.ConnectionInterruptedError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t ConversationRuntimeClient.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v0;
}

uint64_t ConversationRuntimeClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ConversationRuntimeClientProtocol.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:) in conformance ConversationRuntimeClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 184);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v103 = a7;
  v104 = a2;
  v98 = a6;
  v99 = a4;
  v100 = a5;
  LODWORD(v91) = a3;
  v102 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v101 = &v89 - v12;
  v13 = type metadata accessor for DispatchTimeInterval();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerFallbackDisablingUtils();
  v112[4] = &protocol witness table for ServerFallbackDisablingUtils;
  v94 = v21;
  v112[3] = v21;
  v112[0] = a8;
  *(a9 + 104) = MEMORY[0x1E69E7CD0];
  *(a9 + 112) = 1;
  *(a9 + 120) = 0;
  *(a9 + 136) = 0;
  v22 = type metadata accessor for CorrectionsPlatformClient();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v93 = v22;
  swift_allocObject();
  *(a9 + 184) = CorrectionsPlatformClient.init()();
  type metadata accessor for TaskService();
  v25 = swift_allocObject();
  v25[2] = closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:);
  v25[3] = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v25[4] = MEMORY[0x1E69E7CC0];
  *(a9 + 192) = v25;
  v92 = type metadata accessor for ConcurrentTaskPool();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v27 + 24) = v28;
  *(a9 + 200) = v27;
  type metadata accessor for ConversationService.ExecutionTaskContext();
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v26;
  v29[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = 60000000000;
  *(a9 + 208) = v29;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v16, static Logger.executor);
  v31 = *(v17 + 16);
  v90 = v30;
  v31(v20);
  v32 = type metadata accessor for AsyncSerialQueue();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v35[2] = v26;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v35[6] = v36;
  v35[7] = 0xD000000000000021;
  v35[8] = 0x80000001DCA80DD0;
  (*(v17 + 32))(v35 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v20, v16);
  *(a9 + 216) = v35;
  v37 = type metadata accessor for ExperimentationAnalyticsManager();
  *(a9 + 224) = [objc_allocWithZone(v37) init];
  *(a9 + 272) = 0;
  *(a9 + 280) = 0;
  *(a9 + 320) = 0;
  *(a9 + 328) = 0;
  *(a9 + 312) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v104, &v109, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v110)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v109, v111);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v109);
    v38 = type metadata accessor for ReferenceResolutionClient();
    v39 = ReferenceResolutionClient.__allocating_init()();
    v111[3] = v38;
    v111[4] = MEMORY[0x1E69D01B0];
    v111[0] = v39;
  }

  v40 = v102;
  outlined init with copy of ReferenceResolutionClientProtocol(v111, a9 + 144);
  if (v91)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v41 = static StubCamBridge.shared;
    v42 = type metadata accessor for StubCamBridge();
    v43 = &protocol witness table for StubCamBridge;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v41 = static CamBridgeImpl.shared;
    v42 = type metadata accessor for CamBridgeImpl();
    v43 = &protocol witness table for CamBridgeImpl;
  }

  *(a9 + 88) = v42;
  *(a9 + 96) = v43;
  *(a9 + 64) = v41;

  *(a9 + 56) = v40;

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1DC659000, v44, v45, "[ConversationService] Ambiguity handling Feature Flag is on. Using DecisionEngine", v46, 2u);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v111, &v109);
  v47 = *(a9 + 184);
  v48 = type metadata accessor for LinkMetadataProvider();
  v49 = swift_allocObject();
  v50 = objc_allocWithZone(MEMORY[0x1E69ACF60]);

  v51 = v47;

  *(v49 + 16) = [v50 init];
  type metadata accessor for LinkExpansionContextBuilder();
  v52 = swift_allocObject();
  v91 = v48;
  v52[6] = v48;
  v52[7] = &protocol witness table for LinkMetadataProvider;
  v52[11] = &type metadata for LinkViewActionProvider;
  v52[12] = &protocol witness table for LinkViewActionProvider;
  v52[2] = 0;
  v52[3] = v49;
  v52[13] = 0;
  v53 = *(a9 + 200);
  outlined init with copy of ReferenceResolutionClientProtocol(a9 + 64, v108);
  v54 = one-time initialization token for instance;

  if (v54 != -1)
  {
    swift_once();
  }

  v89 = static DecisionEngineCurareDonator.instance;
  v102 = type metadata accessor for DecisionEngine();
  v55 = swift_allocObject();
  v107[4] = &protocol witness table for CorrectionsPlatformClient;
  v107[3] = v93;
  v106[4] = &protocol witness table for ConcurrentTaskPool;
  v107[0] = v51;
  v90 = v51;
  v106[3] = v92;
  v106[0] = v53;
  *(v55 + 176) = 0;
  *(v55 + 184) = 0;
  v56 = swift_allocObject();
  v57 = objc_allocWithZone(v37);
  swift_retain_n();
  swift_retain_n();

  v56[2] = [v57 init];
  v56[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v56[4] = 0;
  *(v55 + 192) = v56;
  *(v55 + 200) = 0u;
  *(v55 + 216) = 0u;
  *(v55 + 232) = 0;
  *(v55 + 24) = v40;
  outlined init with copy of ReferenceResolutionClientProtocol(&v109, v55 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v106, v105);
  type metadata accessor for ConversationHelper();
  v58 = swift_allocObject();
  *(v58 + 16) = v40;
  outlined init with take of ReferenceResolutionClientProtocol(v105, v58 + 24);
  *(v55 + 32) = v58;
  v59 = v91;
  v60 = swift_allocObject();
  v61 = objc_allocWithZone(MEMORY[0x1E69ACF60]);
  swift_retain_n();
  *(v60 + 16) = [v61 init];
  v62 = type metadata accessor for AppShortcutStateProvider();
  v63 = swift_allocObject();
  v94 = v53;
  v64 = v63;
  type metadata accessor for AppShortcutExpansionContextBuilder();
  v65 = swift_allocObject();
  v65[9] = v59;
  v65[10] = &protocol witness table for LinkMetadataProvider;
  v65[6] = v60;
  v65[14] = v62;
  v65[15] = &protocol witness table for AppShortcutStateProvider;
  v65[11] = v64;
  type metadata accessor for ConditionalIntentMetadataStore();
  v65[4] = 0;
  v65[5] = 0;
  v65[3] = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = MEMORY[0x1E69E7CC8];
  v65[2] = v66;
  type metadata accessor for ActionGenerator();
  v67 = swift_allocObject();
  v67[3] = v65;
  v67[4] = v40;
  v67[2] = v52;
  *(v55 + 16) = v67;
  outlined init with copy of ReferenceResolutionClientProtocol(v107, v105);
  type metadata accessor for CorrectionsService();
  v68 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(v105, v68 + 16);
  *(v68 + 56) = v40;
  *(v55 + 40) = v68;
  *(v55 + 88) = v89;
  v69 = type metadata accessor for AppShortcutProvider();
  v70 = MEMORY[0x1E69CFFA8];
  *(v55 + 120) = v69;
  *(v55 + 128) = v70;
  __swift_allocate_boxed_opaque_existential_0((v55 + 96));
  AppShortcutProvider.init()();

  __swift_destroy_boxed_opaque_existential_1Tm(&v109);
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  outlined init with take of ReferenceResolutionClientProtocol(v108, v55 + 136);
  *(a9 + 40) = v102;
  *(a9 + 48) = &protocol witness table for DecisionEngine;
  *(a9 + 16) = v55;
  type metadata accessor for OS_dispatch_queue();
  v71 = static OS_dispatch_queue.main.getter();
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v72 = v97;
  v73 = __swift_project_value_buffer(v97, static JetsamHelper.defaultTimeout);
  v75 = v95;
  v74 = v96;
  (*(v96 + 16))(v95, v73, v72);
  v76 = type metadata accessor for JetsamHelper();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  v79 = swift_allocObject();
  v80 = (v79 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v80 = 0;
  v80[1] = 0;
  v79[2] = 0xD00000000000002CLL;
  v79[3] = 0x80000001DCA80E00;
  v79[4] = dispatch_semaphore_create(1);
  v79[5] = v71;
  (*(v74 + 32))(v79 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v75, v72);
  *(a9 + 128) = v79;
  v81 = v103;
  *(a9 + 288) = v98;
  *(a9 + 296) = v81;
  *(a9 + 304) = v99 & 1;
  outlined init with copy of ReferenceResolutionClientProtocol(v112, a9 + 232);
  v82 = v101;
  if (v100)
  {
    v83 = type metadata accessor for TaskPriority();
    (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
    v84 = one-time initialization token for shared;

    if (v84 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v85 = static MessageBusActor.shared;
    v86 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
    v87 = swift_allocObject();
    v87[2] = v85;
    v87[3] = v86;
    v87[4] = a9;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v82, &async function pointer to partial apply for closure #1 in ConversationService.warmup(), v87);

    outlined destroy of ReferenceResolutionClientProtocol?(v104);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v104);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  return a9;
}

void *specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = 0;
  type metadata accessor for ConversationHandlerLocator();

  v6 = ConversationHandlerLocator.__allocating_init(onConnectionInterrupted:)(a1, a2);
  type metadata accessor for ServerFallbackDisablingUtils();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager());

  v7[2] = [v8 init];
  v7[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v7[4] = 0;
  type metadata accessor for ConversationService();
  v9 = swift_allocObject();
  specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(v6, v16, 0, 0, 1, closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:), 0, v7, v9);
  v10 = ConversationService.serialFacade.getter();
  v12 = v11;
  v14 = v13;

  v3[3] = v10;
  v3[4] = v12;
  v3[5] = v14;
  return v3;
}

unint64_t specialized ConversationRuntimeClient.ConversationRuntimeClientError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationRuntimeClient.ConversationRuntimeClientError.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:)(v2, v3, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)(v2, v3, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError()
{
  result = lazy protocol witness table cache variable for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError;
  if (!lazy protocol witness table cache variable for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError()
{
  result = lazy protocol witness table cache variable for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError;
  if (!lazy protocol witness table cache variable for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError);
  }

  return result;
}

uint64_t dispatch thunk of ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 184);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t outlined destroy of ReferenceResolutionClientProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ConversationRuntimeClientProtocol.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 56);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t static ConversationSearchResult.supported(_:identifierForFoundFlow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ConversationSearchResult();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, a3 + *(v6 + 28), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *a3 = a1;
  *(a3 + 8) = 1;
}

uint64_t static ConversationSearchResult.reformTo(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConversationSearchResult();
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2 + v5, a1, v6);
  (*(v7 + 56))(a2 + v5, 0, 1, v6);
  v8 = *(v4 + 28);
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static ConversationSearchResult.unsupported(exclude:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConversationSearchResult();
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(v4 + 28);
  v8 = type metadata accessor for UUID();
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  *a2 = 0;
  *(a2 + 8) = a1;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConversationSearchResult(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v7 = a1;
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for Input();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy((v7 + v8), a2 + v8, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(v7 + v8, a2 + v8, v9);
      (*(v10 + 56))(v7 + v8, 0, 1, v9);
    }

    v13 = *(a3 + 28);
    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy((v7 + v13), a2 + v13, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(v7 + v13, a2 + v13, v14);
      (*(v15 + 56))(v7 + v13, 0, 1, v14);
    }
  }

  return v7;
}

uint64_t initializeWithCopy for ConversationSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(a2 + v6, 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = *(a3 + 28);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a2 + v11, 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy((a1 + v11), (a2 + v11), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(a1 + v11, a2 + v11, v12);
    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  return a1;
}

uint64_t *assignWithCopy for ConversationSearchResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(a1 + v7, v8);
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(a1 + v7, a2 + v7, v8);
LABEL_7:
  v14 = *(a3 + 28);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(a1 + v14, 1, v15);
  v19 = v17(a2 + v14, 1, v15);
  if (!v18)
  {
    if (!v19)
    {
      (*(v16 + 24))(a1 + v14, a2 + v14, v15);
      return a1;
    }

    (*(v16 + 8))(a1 + v14, v15);
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_12:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
    return a1;
  }

  (*(v16 + 16))(a1 + v14, a2 + v14, v15);
  (*(v16 + 56))(a1 + v14, 0, 1, v15);
  return a1;
}

uint64_t initializeWithTake for ConversationSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = *(a3 + 28);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t *assignWithTake for ConversationSearchResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(a1 + v7, v8);
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(a1 + v7, a2 + v7, v8);
LABEL_7:
  v14 = *(a3 + 28);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(a1 + v14, 1, v15);
  v19 = v17(a2 + v14, 1, v15);
  if (!v18)
  {
    if (!v19)
    {
      (*(v16 + 40))(a1 + v14, a2 + v14, v15);
      return a1;
    }

    (*(v16 + 8))(a1 + v14, v15);
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_12:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
    return a1;
  }

  (*(v16 + 32))(a1 + v14, a2 + v14, v15);
  (*(v16 + 56))(a1 + v14, 0, 1, v15);
  return a1;
}

void type metadata completion function for ConversationSearchResult()
{
  _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

Swift::Void __swiftcall ConversationSELFHelper.emitActionCandidatesGenerated(rcId:actionCandidates:)(Swift::String rcId, Swift::OpaquePointer actionCandidates)
{
  v3 = v2;
  v45 = rcId;
  v5 = *v3;
  v46 = v3;
  v44 = v5;
  v6 = type metadata accessor for ActionCandidate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SiriCam15ActionCandidateVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v15 = *(actionCandidates._rawValue + 2);
  if (v15)
  {
    v16 = v10;
    v17 = actionCandidates._rawValue + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v18 = (v7 + 16);
    v19 = *(v7 + 72);
    v48 = (v7 + 32);
    v49 = v16 + 16;
    v50 = v16;
    v51 = (v16 + 8);
    v47 = (v7 + 40);
    while (1)
    {
      UUID.init()();
      v20 = v6;
      (*v18)(v53, v17, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v14;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      v24 = v14[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        swift_once();
LABEL_19:
        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.instrumentation);
        v39 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1DC659000, v39, v42, "[ConversationSELFHelper] buildActionCandidatesGeneratedMessage failed to be emitted", v43, 2u);
          MEMORY[0x1E12A2F50](v43, -1, -1);
        }

        goto LABEL_21;
      }

      v28 = v23;
      if (v14[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v36 = v22;
      specialized _NativeDictionary.copy()();
      v22 = v36;
      v14 = v54;
      if (v28)
      {
LABEL_3:
        v6 = v20;
        (*v47)(v14[7] + v22 * v19, v53, v20);
        (*v51)(v13, v52);
        goto LABEL_4;
      }

LABEL_11:
      v14[(v22 >> 6) + 8] |= 1 << v22;
      v30 = v50;
      v31 = v22;
      v32 = v52;
      (*(v50 + 16))(v14[6] + *(v50 + 72) * v22, v13, v52);
      v33 = v14[7] + v31 * v19;
      v6 = v20;
      (*v48)(v33, v53, v20);
      (*(v30 + 8))(v13, v32);
      v34 = v14[2];
      v26 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v26)
      {
        goto LABEL_23;
      }

      v14[2] = v35;
LABEL_4:
      v17 += v19;
      if (!--v15)
      {
        goto LABEL_15;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v28 & 1) != (v29 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_10:
    v14 = v54;
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocObject();
  v38 = v44;
  *(v37 + 16) = v14;
  *(v37 + 24) = v38;

  v39 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  if (!v39)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  dispatch thunk of ConversationSELFHelper.emit(_:)();
  *(swift_allocObject() + 16) = v14;
  v40 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  if (v40)
  {
    dispatch thunk of ConversationSELFHelper.emit(_:)();
  }

LABEL_21:
}

uint64_t ConversationSELFHelper.buildActionCandidatesGeneratedMessage(rcId:actionCandidates:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;

  v7 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  return v7;
}

uint64_t ConversationSELFHelper.buildActionCandidatesGeneratedTier1Message(rcId:actionCandidates:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a3;

  v3 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  return v3;
}

id closure #1 in ConversationSELFHelper.buildActionCandidatesGeneratedMessage(rcId:actionCandidates:)(void *a1, uint64_t a2, uint64_t a3)
{
  v177 = a3;
  v157 = a1;
  v175 = type metadata accessor for Siri_Nlu_External_UUID();
  v186 = *(v175 - 8);
  v4 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for Siri_Nlu_External_UserParse();
  v183 = *(v173 - 8);
  v6 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v155 - v13;
  v14 = type metadata accessor for CamUSOParse();
  v181 = *(v14 - 8);
  v15 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for CamParse();
  v18 = *(v188 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v187 = (&v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ActionCandidate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v155 - v27;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v159 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v155 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v200 = &v155 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v197 = &v155 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v196 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v192 = &v155 - v42;
  v43 = [objc_allocWithZone(MEMORY[0x1E69CE960]) init];
  if (v43)
  {
    v202 = v25;
    v156 = v43;
    v169 = v17;
    v170 = v14;
    v160 = v11;
    v189 = MEMORY[0x1E69E7CC0];
    v207 = MEMORY[0x1E69E7CC0];
    v44 = *(a2 + 64);
    v190 = a2 + 64;
    v45 = 1 << *(a2 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v198 = v46 & v44;
    v163 = (v45 + 63) >> 6;
    v180 = v29 + 16;
    v179 = v22 + 16;
    v199 = (v29 + 32);
    v195 = (v22 + 32);
    v201 = (v29 + 8);
    v158 = "conversational_action_manager";
    v185 = (v18 + 88);
    v184 = *MEMORY[0x1E69CE300];
    v168 = *MEMORY[0x1E69CE2F8];
    v161 = (v18 + 8);
    v178 = (v18 + 96);
    v191 = v29;
    v176 = (v29 + 48);
    v167 = (v181 + 32);
    v166 = (v183 + 8);
    v165 = (v186 + 8);
    v164 = (v181 + 8);
    v181 = v22;
    v186 = v22 + 8;
    v183 = a2;

    v47 = 0;
    v193 = v21;
    v194 = v28;
    v48 = v21;
    v49 = v28;
    while (1)
    {
      v50 = v196;
      v51 = v198;
      if (!v198)
      {
        if (v163 <= v47 + 1)
        {
          v55 = v47 + 1;
        }

        else
        {
          v55 = v163;
        }

        v56 = v55 - 1;
        v54 = v191;
        while (1)
        {
          v53 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v53 >= v163)
          {
            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
            (*(*(v108 - 8) + 56))(v50, 1, 1, v108);
            v198 = 0;
            v47 = v56;
            goto LABEL_16;
          }

          v51 = *(v190 + 8 * v53);
          ++v47;
          if (v51)
          {
            v52 = v48;
            v47 = v53;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v52 = v48;
      v53 = v47;
      v54 = v191;
LABEL_15:
      v198 = (v51 - 1) & v51;
      v57 = __clz(__rbit64(v51)) | (v53 << 6);
      v58 = v183;
      v59 = v49;
      v60 = v54;
      (*(v54 + 16))(v197, *(v183 + 48) + *(v54 + 72) * v57, v59);
      v61 = v181;
      v62 = v182;
      (*(v181 + 16))(v182, *(v58 + 56) + *(v181 + 72) * v57, v52);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
      v64 = *(v63 + 48);
      v65 = *(v60 + 32);
      v49 = v194;
      v50 = v196;
      v65();
      v66 = *(v61 + 32);
      v48 = v52;
      v66(&v50[v64], v62, v52);
      (*(*(v63 - 8) + 56))(v50, 0, 1, v63);
LABEL_16:
      v67 = v50;
      v68 = v192;
      outlined init with take of (key: UUID, value: ActionCandidate)?(v67, v192);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
      {

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CNVSchemaCNVActionCandidate, 0x1E69CE950);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v147 = v156;
        [v156 setActionCandidates_];

        v148 = v157;
        [v157 setActionCandidatesGenerated_];

        v149 = v148;
        return v148;
      }

      v70 = *(v69 + 48);
      v71 = v49;
      v72 = *v199;
      (*v199)(v200, v68, v49);
      v73 = v202;
      (*v195)(v202, v68 + v70, v48);
      v74 = [objc_allocWithZone(MEMORY[0x1E69CE950]) init];
      if (!v74)
      {

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v151 = type metadata accessor for Logger();
        __swift_project_value_buffer(v151, static Logger.instrumentation);
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_1DC659000, v152, v153, "[ConversationSELFHelper] Could not create CNVSchemaCNVActionCandidate message for logging ", v154, 2u);
          MEMORY[0x1E12A2F50](v154, -1, -1);
        }

        (*v186)(v73, v48);
        (*v201)(v200, v71);
        return 0;
      }

      v75 = v74;
      v76 = v197;
      ActionCandidate.loggingId.getter();
      v77 = objc_allocWithZone(MEMORY[0x1E69CF638]);
      v78 = UUID._bridgeToObjectiveC()().super.isa;
      v79 = [v77 initWithNSUUID_];

      v80 = *v201;
      (*v201)(v76, v71);
      [v75 setActionCandidateId_];

      v81 = ActionCandidate.affinityScore.getter();
      v82 = v81;
      if (v81 < 0)
      {
        v82 = -v81;
        if (__OFSUB__(0, v81))
        {
          goto LABEL_73;
        }

        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }
      }

      if (HIDWORD(v82))
      {
        goto LABEL_72;
      }

      [v75 setAffinityScore_];
      v203 = ActionCandidate.flowHandlerId.getter();
      v204 = v83;
      v205 = 46;
      v206 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v84 = StringProtocol.components<A>(separatedBy:)();

      v85 = *(v84 + 16);
      if (!v85)
      {
        break;
      }

      v86 = (v84 + 16 + 16 * v85);
      v88 = *v86;
      v87 = v86[1];

      v203 = v88;
      v204 = v87;
      v48 = v193;
      v203 = String.init<A>(_:)();
      v204 = v89;

      MEMORY[0x1E12A1580](0x656C646E75622ELL, 0xE700000000000000);

      v90 = static ConversationSELFHelper.convert(fromPlugin:)();

      [v75 setPlugin_];
      v91 = v202;
      if (v90 == 23)
      {
        v92 = [objc_allocWithZone(MEMORY[0x1E69CEA90]) init];
        if (v92)
        {
          v93 = v92;
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v94 = type metadata accessor for Logger();
          __swift_project_value_buffer(v94, static Logger.instrumentation);
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&dword_1DC659000, v95, v96, "[ConversationSELFHelper] Trying to log link information", v97, 2u);
            MEMORY[0x1E12A2F50](v97, -1, -1);
          }

          v98 = ActionCandidate.userData.getter();
          if (v98)
          {
            v99 = v98;
            if (*(v98 + 16) && (v100 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, v158 | 0x8000000000000000), (v101 & 1) != 0))
            {
              outlined init with copy of Any(*(v99 + 56) + 32 * v100, &v203);

              if (swift_dynamicCast())
              {
                v103 = v205;
                v102 = v206;
                v104 = Logger.logObject.getter();
                v105 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v104, v105))
                {
                  v106 = swift_slowAlloc();
                  *v106 = 0;
                  _os_log_impl(&dword_1DC659000, v104, v105, "[ConversationSELFHelper] Logging link action", v106, 2u);
                  MEMORY[0x1E12A2F50](v106, -1, -1);
                }

                v107 = MEMORY[0x1E12A1410](v103, v102);

                [v93 setLinkActionId_];
                goto LABEL_41;
              }
            }

            else
            {
            }
          }

          v107 = Logger.logObject.getter();
          v109 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v107, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            _os_log_impl(&dword_1DC659000, v107, v109, "[ConversationSELFHelper] Unable to log link action id as it's missing from userData", v110, 2u);
            MEMORY[0x1E12A2F50](v110, -1, -1);
          }

LABEL_41:

          v111 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v112 = UUID._bridgeToObjectiveC()().super.isa;
          v113 = [v111 initWithNSUUID_];

          [v93 setLinkId_];
          [v75 setLinkMetadata_];

          v48 = v193;
LABEL_42:
          v91 = v202;
        }
      }

      v114 = v187;
      ActionCandidate.parse.getter();
      v115 = v188;
      v116 = (*v185)(v114, v188);
      if (v116 == v184)
      {
        (*v178)(v114, v115);
        v117 = v169;
        v118 = v170;
        (*v167)(v169, v114, v170);
        v119 = v172;
        CamUSOParse.userParse.getter();
        v120 = v174;
        Siri_Nlu_External_UserParse.id.getter();
        (*v166)(v119, v173);
        v121 = v171;
        static ConversionUtils.convertProtoToUuid(protoUuid:)();
        (*v165)(v120, v175);
        v122 = v194;
        if ((*v176)(v121, 1, v194) == 1)
        {
          (*v164)(v117, v118);
          outlined destroy of UUID?(v121);
        }

        else
        {
          v128 = v162;
          v72(v162, v121, v122);
          v129 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v130 = UUID._bridgeToObjectiveC()().super.isa;
          v131 = [v129 initWithNSUUID_];

          [v75 setParseHypothesisId_];
          v80(v128, v122);
          (*v164)(v117, v118);
        }

        v91 = v202;
        v49 = v122;
        v48 = v193;
      }

      else
      {
        if (v116 == v168)
        {
          (*v178)(v114, v115);
          v123 = *v114;
          PommesResponse.requestId.getter();
          if (v124)
          {
            v189 = v80;
            v125 = v48;
            v126 = v160;
            UUID.init(uuidString:)();

            v127 = v194;
            if ((*v176)(v126, 1, v194) == 1)
            {

              outlined destroy of UUID?(v126);
              v49 = v127;
              v48 = v125;
              v80 = v189;
            }

            else
            {
              v133 = v159;
              v72(v159, v126, v127);
              v134 = objc_opt_self();
              v135 = UUID._bridgeToObjectiveC()().super.isa;
              v136 = [v134 derivedIdentifierForComponent:21 fromSourceIdentifier:v135];

              v137 = v197;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v138 = objc_allocWithZone(MEMORY[0x1E69CF638]);
              v139 = UUID._bridgeToObjectiveC()().super.isa;
              v140 = [v138 initWithNSUUID_];

              v80 = v189;
              v189(v137, v127);
              [v75 setPommesId_];

              v48 = v193;
              v80(v133, v127);
              v49 = v127;
            }

            goto LABEL_55;
          }
        }

        else
        {
          (*v161)(v114, v115);
        }

        v49 = v194;
      }

LABEL_55:
      v132 = v75;
      MEMORY[0x1E12A1680]();
      if (*((v207 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v207 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v141 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v186)(v91, v48);
      v80(v200, v49);
      v189 = v207;
    }

    goto LABEL_42;
  }

  if (one-time initialization token for instrumentation != -1)
  {
LABEL_74:
    swift_once();
  }

  v142 = type metadata accessor for Logger();
  __swift_project_value_buffer(v142, static Logger.instrumentation);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    _os_log_impl(&dword_1DC659000, v143, v144, "[ConversationSELFHelper] Failed to create CNVSchemaCNVActionCandidatesGenerated SELF objects", v145, 2u);
    MEMORY[0x1E12A2F50](v145, -1, -1);
  }

  return 0;
}

void *closure #1 in ConversationSELFHelper.buildActionCandidatesGeneratedTier1Message(rcId:actionCandidates:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CamUSOParse();
  v99 = *(v4 - 8);
  v5 = *(v99 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for CamParse();
  v7 = *(v111 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ActionCandidate();
  v11 = *(v115 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v84 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v103 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v84 - v28;
  v29 = [objc_allocWithZone(MEMORY[0x1E69CE968]) init];
  if (!v29)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.instrumentation);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1DC659000, v79, v80, "[ConversationSELFHelper] Failed to create CNVSchemaCNVActionCandidatesGeneratedTier1 SELF objects", v81, 2u);
      MEMORY[0x1E12A2F50](v81, -1, -1);
    }

    return 0;
  }

  v84 = v29;
  v106 = v10;
  v93 = v4;
  v85 = a1;
  v86 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v30 = *(a2 + 64);
  v88 = a2 + 64;
  v31 = 1 << *(a2 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v11;
  v34 = v32 & v30;
  v87 = (v31 + 63) >> 6;
  v96 = v18 + 16;
  v95 = v33 + 16;
  v112 = (v33 + 32);
  v113 = (v18 + 32);
  v105 = (v7 + 88);
  v104 = *MEMORY[0x1E69CE300];
  v100 = v33;
  v98 = v18;
  v107 = (v18 + 8);
  v108 = (v33 + 8);
  v91 = (v7 + 8);
  v90 = (v7 + 96);
  v89 = (v99 + 32);
  v92 = (v99 + 8);

  v35 = 0;
  v99 = v14;
  v114 = v17;
  v97 = v21;
  v36 = v103;
  v37 = a2;
  v38 = v115;
  v39 = v21;
  v109 = v37;
  if (!v34)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v40 = v35;
LABEL_14:
    v43 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v44 = v43 | (v40 << 6);
    v45 = v98;
    (*(v98 + 16))(v101, *(v37 + 48) + *(v98 + 72) * v44, v17);
    v46 = v100;
    v47 = v102;
    (*(v100 + 16))(v102, *(v37 + 56) + *(v100 + 72) * v44, v38);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
    v49 = *(v48 + 48);
    v36 = v103;
    (*(v45 + 32))();
    (*(v46 + 32))(v36 + v49, v47, v38);
    (*(*(v48 - 8) + 56))(v36, 0, 1, v48);
    v115 = v40;
    v14 = v99;
    v41 = v97;
LABEL_15:
    v50 = v110;
    outlined init with take of (key: UUID, value: ActionCandidate)?(v36, v110);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    v53 = v111;
    if (v52 == 1)
    {
      break;
    }

    v54 = *(v51 + 48);
    v39 = v41;
    v55 = v50;
    v56 = v50;
    v17 = v114;
    (*v113)(v41, v55, v114);
    (*v112)(v14, v56 + v54, v38);
    v57 = v38;
    v58 = v106;
    ActionCandidate.parse.getter();
    v59 = (*v105)(v58, v53);
    if (v59 == v104)
    {
      (*v90)(v58, v53);
      v60 = v94;
      v61 = v93;
      (*v89)();
      v62 = CamUSOParse.appBundleId.getter();
      if (v63)
      {
        v64 = v63;
        v65 = v62;
        v66 = [objc_allocWithZone(MEMORY[0x1E69CEA98]) init];
        if (v66)
        {
          v68 = v66;
          v86 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v86 = [v86 initWithNSUUID_];

          v70 = v86;
          [v68 setLinkId_];

          v71 = MEMORY[0x1E12A1410](v65, v64);

          [v68 setAppBundleId_];

          v72 = v68;
          MEMORY[0x1E12A1680]();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v73 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v92)(v94, v93);
          v38 = v57;
          (*v108)(v14, v57);
          (*v107)(v39, v17);
          v86 = v116;
          goto LABEL_23;
        }

        (*v92)(v94, v93);
      }

      else
      {
        (*v92)(v60, v61);
      }

      v38 = v57;
      (*v108)(v14, v57);
      (*v107)(v39, v17);
LABEL_23:
      v35 = v115;
      v37 = v109;
      if (!v34)
      {
LABEL_8:
        v41 = v39;
        if (v87 <= v35 + 1)
        {
          v42 = v35 + 1;
        }

        else
        {
          v42 = v87;
        }

        while (1)
        {
          v40 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v40 >= v87)
          {
            v115 = v42 - 1;
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
            (*(*(v67 - 8) + 56))(v36, 1, 1, v67);
            v34 = 0;
            goto LABEL_15;
          }

          v34 = *(v88 + 8 * v40);
          ++v35;
          if (v34)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_37:
        v82 = __CocoaSet.count.getter();
        v74 = v85;
        if (!v82)
        {
          goto LABEL_38;
        }

LABEL_30:
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CNVSchemaCNVLinkMetadataTier1, 0x1E69CEA98);
        v75 = Array._bridgeToObjectiveC()().super.isa;

        v76 = v84;
        [v84 setMetadataTier1s_];

        [v74 setActionCandidatesGeneratedTier1_];
        v77 = v74;
        return v74;
      }
    }

    else
    {
      (*v108)(v14, v57);
      (*v107)(v41, v17);
      (*v91)(v58, v53);
      v35 = v115;
      v38 = v57;
      v37 = v109;
      if (!v34)
      {
        goto LABEL_8;
      }
    }
  }

  if (v86 >> 62)
  {
    goto LABEL_37;
  }

  v74 = v85;
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_38:

  return 0;
}

uint64_t outlined init with take of (key: UUID, value: ActionCandidate)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  }

  else
  {
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, v15, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Input();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v6;
    v12[4] = *(a1 + 64);
    v7 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v7;
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v12);

    return outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
  }

  return result;
}

uint64_t ConversationService.__allocating_init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v25 = a6;
  v26 = a7;
  v14 = swift_allocObject();
  v16 = a8[3];
  v15 = a8[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a8, v16);
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(a1, a2, a3, a4, a5, v25, v26, v21, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  return v23;
}

void *ConversationService.serialFacade.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[41];
  if (v7)
  {
    v0 = v0[39];
  }

  else
  {
    v28 = v0[41];
    v29 = v6;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v1, static Logger.executor);
    v27 = v2[2];
    v27(v5, v9, v1);
    v10 = type metadata accessor for AsyncSerialQueue();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    *(v13 + 2) = MEMORY[0x1E69E7CC0];
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v13 + 6) = v14;
    *(v13 + 7) = 0xD000000000000022;
    *(v13 + 8) = 0x80000001DCA80E60;
    v15 = v2[4];
    v15(&v13[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v5, v1);
    v25 = 0x80000001DCA80E90;
    v27(v5, v9, v1);
    v16 = *(v10 + 48);
    v17 = *(v10 + 52);
    v18 = swift_allocObject();
    *(v18 + 2) = MEMORY[0x1E69E7CC0];
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    *(v18 + 5) = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v18 + 6) = v19;
    *(v18 + 7) = 0xD000000000000020;
    *(v18 + 8) = v25;
    v15(&v18[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v5, v1);
    v20 = v0[39];
    v21 = v0[40];
    v22 = v0[41];
    v0[39] = v0;
    v0[40] = v13;
    v0[41] = v18;
    swift_retain_n();

    outlined consume of ConversationServiceSerialFacade?(v20);
  }

  outlined copy of ConversationServiceSerialFacade?(v7);
  return v0;
}

uint64_t MessageBusActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static MessageBusActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MessageBusActor.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MessageBusActor.shared = a1;
}

uint64_t (*static MessageBusActor.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static AmbiguityFeatureFlags.forceEnabled.modify;
}

uint64_t key path getter for static MessageBusActor.shared : MessageBusActor.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static MessageBusActor.shared;
}

uint64_t key path setter for static MessageBusActor.shared : MessageBusActor.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MessageBusActor.shared = v1;
}

uint64_t MessageBusActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance MessageBusActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance MessageBusActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MessageBusActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

void *ConversationService.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  outlined copy of ConversationService.State(v1, *(v0 + 120));
  return v1;
}

void ConversationService.state.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  *(v2 + 112) = a1;
  v6 = *(v2 + 120);
  *(v2 + 120) = a2;
  outlined consume of ConversationService.State(v5, v6);
}

void *ConversationService.ExecutionTaskContext.__allocating_init(forceTimeout:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v3;
  result[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = a1;
  return result;
}

uint64_t ConversationService.consecutiveEmptyInputs.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 272) = a1;
  return result;
}

uint64_t ConversationService.recentlyCompletedCorrectableConversation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
}

uint64_t ConversationService.recentlyCompletedCorrectableConversation.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

uint64_t ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v25 = a6;
  v26 = a7;
  v16 = a8[3];
  v15 = a8[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a8, v16);
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(a1, a2, a3, a4, a5, v25, v26, v21, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  return v23;
}

Swift::Void __swiftcall ConversationService.warmup()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v9 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v8, type metadata accessor for MessageBusActor);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ConversationService.warmup(), v10);
}

uint64_t closure #1 in ConversationService.warmup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.warmup(), v5, 0);
}

uint64_t closure #1 in ConversationService.warmup()()
{
  v1 = *(v0 + 40);
  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  (*(v3 + 16))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t key path setter for ConversationService.serialFacade : ConversationService(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = *(*a2 + 312);
  v6 = *(*a2 + 320);
  v7 = *(*a2 + 328);
  v4[39] = *a1;
  v4[40] = v2;
  v4[41] = v3;

  return outlined consume of ConversationServiceSerialFacade?(v5);
}

uint64_t ConversationService.serialFacade.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[39];
  v5 = v3[40];
  v6 = v3[41];
  v3[39] = a1;
  v3[40] = a2;
  v3[41] = a3;
  return outlined consume of ConversationServiceSerialFacade?(v4);
}

uint64_t (*ConversationService.serialFacade.modify(void *a1))(void *a1, char a2)
{
  a1[3] = v1;
  *a1 = ConversationService.serialFacade.getter();
  a1[1] = v3;
  a1[2] = v4;
  return ConversationService.serialFacade.modify;
}

uint64_t ConversationService.serialFacade.modify(void *a1, char a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3[39];
  v6 = v3[40];
  v7 = v3[41];
  v3[39] = *a1;
  v3[40] = v2;
  v3[41] = v4;
  if (a2)
  {

    outlined consume of ConversationServiceSerialFacade?(v5);
  }

  else
  {

    return outlined consume of ConversationServiceSerialFacade?(v5);
  }
}

uint64_t ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, a2, a3, a4, a6, a7, a8);
}

uint64_t ConversationService.cleanupPeerTriggeredConversations()()
{
  *(v1 + 144) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 152) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.cleanupPeerTriggeredConversations(), v2, 0);
}

{
  v1 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v2 = v0[18];
  swift_beginAccess();
  v3 = *(v2 + 104);
  if ((v3 & 0xC000000000000001) == 0)
  {
    v12 = -1;
    v13 = -1 << *(v3 + 32);
    v7 = v3 + 56;
    v14 = *(v3 + 56);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v0[23] = v1;
    v5 = v0 + 23;
    v10 = v12 & v14;
    v0[21] = v7;
    v0[22] = ~v13;
    v0[20] = v3;
    v11 = 63 - v13;

    v9 = 0;
    goto LABEL_9;
  }

  if (v3 < 0)
  {
    v4 = *(v2 + 104);
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for RemoteConversationClient();
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient);
  Set.Iterator.init(_cocoa:)();
  v0[23] = v1;
  v5 = v0 + 23;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v0[21] = v7;
  v0[22] = v8;
  v0[20] = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v8 + 64;
LABEL_9:
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      v17 = v9;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v16 >= (v11 >> 6))
        {
          goto LABEL_21;
        }

        v15 = *(v7 + 8 * v16);
        ++v17;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_30:
      if (*v5 < 0)
      {
        v34 = *v5;
      }

      v20 = __CocoaSet.count.getter();
      v28 = v20;
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    goto LABEL_15;
  }

  v23 = __CocoaSet.Iterator.next()();
  if (!v23)
  {
    goto LABEL_21;
  }

  v0[17] = v23;
  swift_dynamicCast();
  v19 = v0[13];
  v16 = v9;
  v18 = v10;
LABEL_15:
  v0[25] = v16;
  v0[26] = v18;
  v0[24] = v19;
  if (v19)
  {
    v20 = ConversationService.cleanupPeerTriggeredConversations();
    v21 = v19;
    v22 = 0;

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

LABEL_21:
  v24 = v0[22];
  v16 = v0[23];
  v25 = v0[20];
  v26 = v0[21];
  v27 = v0[19];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_23:
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = v16 & 0xC000000000000001;
      v31 = *v5 + 32;
      do
      {
        if (v30)
        {
          v32 = MEMORY[0x1E12A1FE0](v29, *v5);
        }

        else
        {
          v32 = *(v31 + 8 * v29);
        }

        v33 = v0[18];
        ++v29;
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v32);
        swift_endAccess();
      }

      while (v28 != v29);
      goto LABEL_33;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

LABEL_33:
  v35 = v0[23];

  v36 = v0[1];

  return v36();
}

{
  v1 = *(*(v0 + 192) + 184);
  *(v0 + 216) = v1;
  if (v1 == 2)
  {
    v2 = ConversationService.cleanupPeerTriggeredConversations();
  }

  else
  {
    v2 = ConversationService.cleanupPeerTriggeredConversations();
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v0 + 152), 0);
}

{
  v1 = *(v0 + 192);
  if (*(v0 + 216))
  {

    MEMORY[0x1E12A1680](v2);
    if (*((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v3 = *(v0 + 192);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    *(v0 + 184) = *(v0 + 128);
    v6 = *(v0 + 160);
    if (v6 < 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = v4;
    v9 = v5;
    if (!v4)
    {
      v12 = v5;
      while (1)
      {
        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v9 >= ((*(v0 + 176) + 64) >> 6))
        {
          goto LABEL_18;
        }

        v11 = *(*(v0 + 168) + 8 * v9);
        ++v12;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_13:
    v10 = (v11 - 1) & v11;
    v8 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v11)))));

    goto LABEL_14;
  }

  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 160);
  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = __CocoaSet.Iterator.next()();
  if (!v7)
  {
    goto LABEL_18;
  }

  *(v0 + 136) = v7;
  type metadata accessor for RemoteConversationClient();
  swift_dynamicCast();
  v8 = *(v0 + 104);
  v9 = v5;
  v10 = v4;
LABEL_14:
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  *(v0 + 192) = v8;
  if (v8)
  {
    v13 = ConversationService.cleanupPeerTriggeredConversations();
    v14 = v8;
    v15 = 0;

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

LABEL_18:
  v16 = *(v0 + 176);
  v9 = *(v0 + 184);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = *(v0 + 152);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  if (!(v9 >> 62))
  {
    v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

LABEL_27:
  if (*(v0 + 184) < 0)
  {
    v26 = *(v0 + 184);
  }

  v13 = __CocoaSet.count.getter();
  v20 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v20 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v21 = 0;
  v22 = v9 & 0xC000000000000001;
  v23 = *(v0 + 184) + 32;
  do
  {
    if (v22)
    {
      v24 = MEMORY[0x1E12A1FE0](v21, *(v0 + 184));
    }

    else
    {
      v24 = *(v23 + 8 * v21);
    }

    v25 = *(v0 + 144);
    ++v21;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v24);
    swift_endAccess();
  }

  while (v20 != v21);
LABEL_30:
  v27 = *(v0 + 184);

  v28 = *(v0 + 8);

  return v28();
}

{
  v1 = v0[24];

  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[20];
  if (v4 < 0)
  {
    v10 = __CocoaSet.Iterator.next()();
    if (!v10)
    {
      goto LABEL_14;
    }

    v0[17] = v10;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v9 = v0[13];
    v6 = v2;
    v8 = v3;
  }

  else
  {
    v5 = v0[26];
    v6 = v0[25];
    if (!v3)
    {
      v7 = v0[25];
      while (1)
      {
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v6 >= ((v0[22] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v5 = *(v0[21] + 8 * v6);
        ++v7;
        if (v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_23:
      if (v0[23] < 0)
      {
        v24 = v0[23];
      }

      v11 = __CocoaSet.count.getter();
      v18 = v11;
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

LABEL_7:
    v8 = (v5 - 1) & v5;
    v9 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
  }

  v0[25] = v6;
  v0[26] = v8;
  v0[24] = v9;
  if (v9)
  {
    v11 = ConversationService.cleanupPeerTriggeredConversations();
    v12 = v9;
    v13 = 0;

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

LABEL_14:
  v14 = v0[22];
  v6 = v0[23];
  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[19];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_16:
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = v6 & 0xC000000000000001;
      v21 = v0[23] + 32;
      do
      {
        if (v20)
        {
          v22 = MEMORY[0x1E12A1FE0](v19, v0[23]);
        }

        else
        {
          v22 = *(v21 + 8 * v19);
        }

        v23 = v0[18];
        ++v19;
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v22);
        swift_endAccess();
      }

      while (v18 != v19);
      goto LABEL_26;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

LABEL_26:
  v25 = v0[23];

  v26 = v0[1];

  return v26();
}