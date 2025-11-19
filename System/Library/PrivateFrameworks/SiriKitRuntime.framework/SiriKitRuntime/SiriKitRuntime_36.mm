uint64_t ServerFallbackCapableRequestProcessor.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer);
}

void *ServerFallbackCapableRequestProcessor.deinit()
{
  v0 = ConversationRequestProcessor.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer);

  return v0;
}

uint64_t specialized ServerFallbackCapableRequestProcessor.makePreExecutionRulesBeforeRCSelection(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for SiriInCallFeatureFlag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*v0 + 1536))(v9);
  (*(v7 + 104))(v11, *MEMORY[0x1E69CE5B8], v6);
  v13 = SiriInCallFeatureFlag.isEnabled.getter();
  (*(v7 + 8))(v11, v6);
  v14 = type metadata accessor for HangUpRule();
  v15 = swift_allocObject();
  v15[16] = 0;
  v15[17] = v12;
  v15[18] = v13 & 1;
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  v37 = v14;
  v38 = &protocol witness table for HangUpRule;
  *&v36 = v15;
  v16[2] = v18 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v36, &v16[5 * v18 + 4]);
  v19 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider);
  v20 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider);
  v21 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage);
  if (v21)
  {
    v22 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider);

    v23 = v21;

    ExecuteNLOnServerMessageBase.fallbackReason.getter();

    v24 = type metadata accessor for ServerFallbackReason();
    (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
  }

  else
  {
    v25 = type metadata accessor for ServerFallbackReason();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  }

  v26 = [objc_opt_self() processInfo];
  v27 = type metadata accessor for OfflineServerFallbackRule();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo);
  v31[3] = type metadata accessor for NSProcessInfo();
  v31[4] = &protocol witness table for NSProcessInfo;
  *v31 = v26;
  *(v30 + 16) = 5;
  *(v30 + 24) = v19;
  outlined init with take of ServerFallbackReason?(v5, v30 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason);
  *(v30 + 32) = v20;
  v33 = v16[2];
  v32 = v16[3];
  if (v33 >= v32 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v16);
  }

  v37 = v27;
  v38 = &protocol witness table for OfflineServerFallbackRule;
  *&v36 = v30;
  v16[2] = v33 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v36, &v16[5 * v33 + 4]);
  type metadata accessor for CompositePreExecutionRules();
  result = swift_allocObject();
  *(result + 16) = v16;
  return result;
}

void *specialized ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, void), uint64_t *a11, uint64_t *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t *a16, void (*a17)(void, void), void *a18, unsigned __int8 a19, uint64_t a20, void *a21, uint64_t *a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, void *a29, unsigned __int8 a30, void *a31, uint64_t a32, uint64_t a33)
{
  v159 = a8;
  v163 = a7;
  v184 = a6;
  v169 = a5;
  v178 = a4;
  v179 = a3;
  v156 = a1;
  v157 = a2;
  LODWORD(v166) = a30;
  v162 = a29;
  v144 = a28;
  v152 = a25;
  v172 = a24;
  v175 = a23;
  v176 = a22;
  v149 = a21;
  v164 = a20;
  v148 = a19;
  v187 = a18;
  v182 = a17;
  v174 = a16;
  v151 = a15;
  *&v150 = a14;
  v145 = a13;
  v173 = a12;
  v167 = a26;
  v168 = a27;
  v165 = a33;
  v171 = a11;
  v161 = a10;
  v186 = type metadata accessor for UserSessionState();
  v177 = *(v186 - 8);
  v33 = v177[8];
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v140[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = type metadata accessor for UserID();
  v180 = *(v35 - 8);
  v36 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v140[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = type metadata accessor for SessionConfiguration();
  v39 = *(v170 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v42 = &v140[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v140[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v203[3] = a32;
  v203[4] = v165;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v203);
  (*(*(a32 - 8) + 32))(boxed_opaque_existential_0, v168, a32);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall) = 2;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer) = MEMORY[0x1E69E7CC0];
  v155 = v44;
  v49 = *(v44 + 16);
  v183 = v47;
  v168 = v43;
  v153 = v49;
  v154 = v44 + 16;
  v49(v47, v179, v43);
  v160 = v39;
  v50 = *(v39 + 16);
  v51 = v170;
  v50(v42, v178, v170);
  outlined init with copy of ReferenceResolutionClientProtocol(v171, v202);
  outlined init with copy of ReferenceResolutionClientProtocol(v173, v201);
  outlined init with copy of ReferenceResolutionClientProtocol(v174, v200);
  outlined init with copy of ReferenceResolutionClientProtocol(v176, v199);
  outlined init with copy of ReferenceResolutionClientProtocol(v175, v198);
  v52 = *(v180 + 16);
  v188 = v38;
  v181 = v35;
  v165 = v180 + 16;
  v161 = v52;
  v52(v38, v172, v35);
  v146 = v177[2];
  v147 = v177 + 2;
  v146(v185, v167, v186);
  outlined init with copy of ReferenceResolutionClientProtocol(v203, v197);
  v53 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  v142 = type metadata accessor for ConcurrentTaskPool();
  v54 = swift_allocObject();
  *(v54 + 16) = MEMORY[0x1E69E7CC0];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v55 = swift_allocObject();
  *(a31 + v53) = v54;
  v56 = a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  v56[16] = 3;
  *v56 = 0;
  *(v56 + 1) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v55 + 16) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v54 + 24) = v55;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v57 = (a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v57 = 0;
  v57[1] = 0;
  v158 = v42;
  v58 = v42;
  v59 = v164;
  v60 = v182;
  v50(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration, v58, v51);
  v61 = objc_opt_self();

  v62 = [v61 sharedPreferences];
  v63 = [objc_opt_self() clientWithIdentifier_];
  v64 = type metadata accessor for TrialExperimentationAssetManager();
  v65 = swift_allocObject();
  v66 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v65 + 16) = v63;
  *(v65 + 24) = v66;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v67 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v68 = swift_allocObject();
  v196 = &protocol witness table for TrialExperimentationAssetManager;
  v195 = v64;
  *&v194 = v65;
  v69 = type metadata accessor for TaggingService();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();

  *(v68 + 104) = TaggingService.init()();
  *(v68 + 144) = 0;
  *(v68 + 128) = 0u;
  *(v68 + 112) = 0u;
  *(v68 + 16) = v60;
  *(v68 + 24) = v59;
  *(v68 + 32) = v62;
  v144 &= 1u;
  *(v68 + 40) = v144;
  outlined init with take of ReferenceResolutionClientProtocol(&v194, v68 + 48);
  swift_beginAccess();
  *(v68 + 128) = 0;
  swift_beginAccess();
  *(v68 + 136) = 0;
  swift_beginAccess();
  *(v68 + 144) = 0;
  *(v68 + 152) = 33686018;
  *(v68 + 156) = 514;
  *(v68 + 160) = 0;
  *(v68 + 168) = 1;
  *(v68 + 169) = *v206;
  *(v68 + 172) = *&v206[3];
  *(v68 + 176) = 0;
  *(v68 + 184) = 1;
  *(v68 + 185) = 2;
  *(v68 + 190) = v205;
  *(v68 + 186) = v204;
  *(v68 + 192) = 0;
  *(v68 + 200) = 0;
  LOBYTE(v191) = 1;
  LOBYTE(v190[0]) = 1;
  *(v68 + 208) = 33686018;
  *(v68 + 212) = 514;
  *(v68 + 216) = 0;
  *(v68 + 224) = 1;
  *(v68 + 225) = v208[0];
  *(v68 + 228) = *(v208 + 3);
  *(v68 + 232) = 0;
  *(v68 + 240) = 1;
  *(v68 + 241) = 2;
  v72 = *&v206[7];
  *(v68 + 246) = v207;
  *(v68 + 242) = v72;
  *(v68 + 248) = 0;
  *(v68 + 256) = 0;
  *(v68 + 88) = v67;
  *(v68 + 264) = 0;
  *(v68 + 96) = 0;
  v73 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v68;
  outlined init with copy of ReferenceResolutionClientProtocol(v201, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v74 = v145;
  v75 = v145[3];
  v76 = *(*v145 + 152);
  v77 = swift_unknownObjectRetain();
  v141 = v76(v77);
  outlined init with copy of ReferenceResolutionClientProtocol((v74 + 4), &v194);
  v78 = v60;
  v79 = *(a31 + v73);
  v80 = type metadata accessor for FeatureChecker();
  v81 = swift_allocObject();
  v82 = v162;
  v145 = v162;

  *(v81 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v192 = &type metadata for IntelligenceFlowFeatureFlag;
  v193 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v83 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v191);
  *(v81 + 17) = v83 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v84 = swift_allocObject();
  v193 = &protocol witness table for FeatureChecker;
  v192 = v80;
  *&v191 = v81;
  v85 = swift_allocObject();
  v86 = MEMORY[0x1E69E7CC0];
  *(v85 + 16) = MEMORY[0x1E69E7CC0];
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  *(v85 + 24) = v87;
  *(v84 + 16) = v85;
  *(v84 + 88) = 0;
  *(v84 + 80) = 0;
  *(v84 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v86);
  *(v84 + 104) = 30000000000;
  *(v84 + 24) = v75;
  *(v84 + 72) = v141 & 1;
  swift_beginAccess();
  v88 = *(v84 + 80);
  *(v84 + 80) = v82;

  outlined init with take of ReferenceResolutionClientProtocol(&v194, v84 + 32);
  swift_beginAccess();
  v89 = *(v84 + 88);
  *(v84 + 88) = v79;

  outlined init with take of ReferenceResolutionClientProtocol(&v191, v84 + 112);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v84;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = v150;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = v151;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = v187;
  outlined init with copy of ReferenceResolutionClientProtocol(v200, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = v78;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = v148 & 1;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = v164;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = v149;
  outlined init with copy of ReferenceResolutionClientProtocol(v199, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(v198, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = v82;
  v161(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v188, v181);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = v166 & 1;
  v146(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState, v185, v186);
  outlined init with copy of ReferenceResolutionClientProtocol(v197, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v90 = v152;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = v152;
  v91 = *(*v90 + 224);

  v149 = v145;

  v92 = v187;
  swift_unknownObjectRetain();
  v93 = v183;
  v91(v169, v184, v183);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = v144;
  v94 = v188;
  v95 = v93;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v96 = static DeviceContextHelper.sharedInstance;
  v97 = (a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v164 = type metadata accessor for DeviceContextHelper();
  v97[3] = v164;
  v97[4] = &protocol witness table for DeviceContextHelper;
  *v97 = v96;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v98 = swift_allocObject();
  swift_weakInit();
  *(v98 + 24) = v92;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v98;
  if ((v166 & 1) == 0)
  {
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
    v105 = v180;
    v151 = *(v180 + 72);
    v152 = v104;
    v106 = v94;
    v107 = (*(v180 + 80) + 32) & ~*(v180 + 80);
    v108 = swift_allocObject();
    v150 = xmmword_1DCA66060;
    *(v108 + 16) = xmmword_1DCA66060;
    v162 = v96;
    v109 = v181;
    v110 = v161;
    v161(v108 + v107, v106, v181);
    swift_unknownObjectRetain();

    v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v108);
    swift_setDeallocating();
    v111 = *(v105 + 8);
    v111(v108 + v107, v109);
    swift_deallocClassInstance();
    v112 = swift_allocObject();
    *(v112 + 16) = v150;
    v110(v112 + v107, v188, v109);
    v102 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v112);
    swift_setDeallocating();
    v113 = v109;
    v96 = v162;
    v111(v112 + v107, v113);
    swift_deallocClassInstance();
    v103 = v159;
    v100 = v187;
    goto LABEL_9;
  }

  if (v162)
  {
    v99 = v149;
    v100 = v187;
    swift_unknownObjectRetain();

    v166 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
    specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
    v102 = v101;

    v103 = v159;
LABEL_9:
    v114 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(v200, &v194);
    outlined init with copy of ReferenceResolutionClientProtocol(v199, &v191);
    outlined init with copy of ReferenceResolutionClientProtocol(v198, v190);
    ObjectType = swift_getObjectType();
    v189 = v96;
    v116 = v182;

    swift_unknownObjectRetain();
    v117 = v157;

    v118 = v184;

    v139 = v102;
    *&v138 = v116;
    *(&v138 + 1) = v166;
    v119 = v156;
    v120 = v169;
    v121 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v194, &v191, v190, v100, v156, v117, v169, v118, v163, v103, &v189, v138, v139, v114, v164, ObjectType, &protocol witness table for DeviceContextHelper);
    v122 = &protocol witness table for MultiUserContextUpdater;
    v95 = v183;
    goto LABEL_10;
  }

  v132 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v132 != -1)
  {
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  __swift_project_value_buffer(v133, static Logger.conversationBridge);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.error.getter();
  v136 = os_log_type_enabled(v134, v135);
  v120 = v169;
  if (v136)
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_1DC659000, v134, v135, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v137, 2u);
    MEMORY[0x1E12A2F50](v137, -1, -1);
  }

  v114 = 0;
  v122 = 0;
  v121 = 0;
  v103 = v159;
  v119 = v156;
  v117 = v157;
  v100 = v187;
LABEL_10:
  v123 = (a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *v123 = v121;
  v123[1] = 0;
  v123[2] = 0;
  v123[3] = v114;
  v123[4] = v122;
  v153(a31 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v95, v168);
  outlined init with copy of ReferenceResolutionClientProtocol(v202, (a31 + 3));
  a31[12] = v119;
  a31[13] = v117;
  v124 = v184;
  a31[8] = v120;
  a31[9] = v124;
  a31[10] = v163;
  a31[11] = v103;
  a31[2] = v100;
  v125 = *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)();

  v184 = v177[1];
  v126 = v186;
  v184(v167, v186);
  v127 = v181;
  v180 = *(v180 + 8);
  (v180)(v172, v181);
  __swift_destroy_boxed_opaque_existential_1Tm(v175);
  __swift_destroy_boxed_opaque_existential_1Tm(v176);
  __swift_destroy_boxed_opaque_existential_1Tm(v174);
  __swift_destroy_boxed_opaque_existential_1Tm(v173);
  __swift_destroy_boxed_opaque_existential_1Tm(v171);
  v182 = *(v160 + 8);
  v128 = v170;
  v182(v178, v170);
  v187 = a31;
  v129 = *(v155 + 8);
  v130 = v168;
  v129(v179, v168);
  __swift_destroy_boxed_opaque_existential_1Tm(v197);
  v184(v185, v126);
  (v180)(v188, v127);
  __swift_destroy_boxed_opaque_existential_1Tm(v198);
  __swift_destroy_boxed_opaque_existential_1Tm(v199);
  __swift_destroy_boxed_opaque_existential_1Tm(v200);
  __swift_destroy_boxed_opaque_existential_1Tm(v201);
  __swift_destroy_boxed_opaque_existential_1Tm(v202);
  v182(v158, v128);
  v129(v183, v130);
  __swift_destroy_boxed_opaque_existential_1Tm(v203);
  return v187;
}

void *specialized ServerFallbackCapableRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, void (*a13)(void, void), void *a14, unsigned __int8 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, void *a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v51 = a7;
  v52 = a8;
  v49 = a5;
  v50 = a6;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  v43 = a10;
  v44 = a9;
  v41 = a12;
  v42 = a11;
  v39 = a14;
  v40 = a13;
  v38 = a15;
  v37 = a16;
  v36 = a17;
  v35 = a18;
  v26 = *(a25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ServerFallbackCapableRequestProcessor();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  (*(v26 + 16))(v29, a20, a25);
  return specialized ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(v45, v46, v47, v48, v49, v50, v51, v52, v44, *(&v44 + 1), v43, *(&v43 + 1), v42, *(&v42 + 1), v41, *(&v41 + 1), v40, v39, v38, v37, *(&v37 + 1), v36, *(&v36 + 1), v35, *(&v35 + 1), a19, v29, a21, a22, a23, v33, a25, a26);
}

uint64_t partial apply for closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)(uint64_t a1)
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

  return closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized static ServerFallbackCapableRequestProcessor.getDelegatedUDA(rcState:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v57 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v66 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = v57 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v64 = v57 - v21;
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v25 = v57 - v24;
  (*(*a1 + 696))(v23);
  v62 = v15[6];
  v63 = v15 + 6;
  if (v62(v13, 1, v14) != 1)
  {
    v40 = v15[4];
    v39 = v15 + 4;
    v40(v25, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMR);
    v41 = v39[5];
    v42 = (*(v39 + 48) + 32) & ~*(v39 + 48);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1DCA66060;
    v40((v43 + v42), v25, v14);
    return v43;
  }

  v65 = v15;
  v26 = outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v27 = (*(*a1 + 312))(v26);
  if (!v27)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = *(v28 + 16);
  v57[0] = v28;
  if (v30)
  {
    v32 = *(v3 + 16);
    v31 = v3 + 16;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v60 = *(v31 + 56);
    v61 = v32;
    v34 = (v31 - 8);
    v59 = (v65 + 4);
    v35 = MEMORY[0x1E69E7CC0];
    v57[1] = KeyPath;
    v57[2] = v31;
    v58 = v2;
    v32(v6, v33, v2);
    while (1)
    {
      swift_getAtKeyPath();
      (*v34)(v6, v2);
      if (v62(v10, 1, v14) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      }

      else
      {
        v36 = *v59;
        (*v59)(v64, v10, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v35);
        }

        *(v35 + 2) = v38 + 1;
        v36(&v35[((*(v65 + 80) + 32) & ~*(v65 + 80)) + v65[9] * v38], v64, v14);
        v2 = v58;
      }

      v33 += v60;
      if (!--v30)
      {
        break;
      }

      v61(v6, v33, v2);
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v63 = *(v35 + 2);
  if (!v63)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_32:

    return v43;
  }

  v45 = 0;
  v46 = v65;
  v62 = (v65 + 2);
  v64 = 0x80000001DCA84F10;
  v60 = (v65 + 1);
  v47 = (v65 + 4);
  v43 = MEMORY[0x1E69E7CC0];
  v61 = v14;
  while (v45 < *(v35 + 2))
  {
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v49 = v46[9];
    (v46[2])(v67, &v35[v48 + v49 * v45], v14);
    if (Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter() == 0xD000000000000013 && v64 == v50)
    {

LABEL_26:
      v52 = *v47;
      (*v47)(v66, v67, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1);
        v43 = v68;
      }

      v55 = *(v43 + 16);
      v54 = *(v43 + 24);
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1);
        v43 = v68;
      }

      *(v43 + 16) = v55 + 1;
      v56 = v43 + v48 + v55 * v49;
      v14 = v61;
      result = (v52)(v56, v66, v61);
      v46 = v65;
      goto LABEL_20;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
      goto LABEL_26;
    }

    result = (*v60)(v67, v14);
LABEL_20:
    if (v63 == ++v45)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A]);
  }

  return result;
}

unint64_t type metadata accessor for NSProcessInfo()
{
  result = lazy cache variable for type metadata for NSProcessInfo;
  if (!lazy cache variable for type metadata for NSProcessInfo)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSProcessInfo);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(uint64_t a1)
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

  return closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(a1, v4, v5, v6, v7, v9, v8);
}

void *ServerFallbackDisablingUtils.__allocating_init(selfEmitter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

id ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  if ((specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(a1, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v16[5] = a4;
  v16[6] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:), v16);

  v17 = [objc_opt_self() sharedPreferences];
  v18 = [v17 shouldDisableServerFallbackDomain];

  return v18;
}

uint64_t one-time initialization function for fallbackDisabledOverride()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static ServerFallbackDisablingUtils.fallbackDisabledOverride = result;
  return result;
}

uint64_t static ServerFallbackDisablingUtils.fallbackDisabledOverride.getter()
{
  if (one-time initialization token for fallbackDisabledOverride != -1)
  {
    swift_once();
  }
}

void *ServerFallbackDisablingUtils.init(selfEmitter:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:)(a5, a6);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:), 0, 0);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:)()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v2 = MEMORY[0x1E12A1410](0xD000000000000024, 0x80000001DCA87D00);
  v3 = [v1 initWithUUIDString_];
  v0[5] = v3;

  if (v3)
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
    v7 = MEMORY[0x1E12A1410](v5, v4);
    v8 = [v6 initWithUUIDString_];
    v0[6] = v8;

    if (v8)
    {
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:);
      v10 = v0[4];

      return ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:)(v3, 0xD000000000000026, 0x80000001DCA87D30, v8);
    }
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
    _os_log_impl(&dword_1DC659000, v13, v14, "[ServerFallbackDisablingUtils] Unable to emit trigger logging due to invalid IDs", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:), 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ServerFallbackDisablingUtils.logServerFallbackDeprecatedSelfEvent(forResultCandidateId:executionRequestId:serverFallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ServerFallbackReason();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, v12, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E69D0780], v13);
    if (v18(v12, 1, v13) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v19 = specialized ServerFallbackDisablingUtils.createServerFallbackDeprecatedEvent(requestId:resultCandidateId:serverFallbackReason:)(a3, a4, a1, v31, v17);
  if (v19)
  {
    v20 = v19;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.instrumentation);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "[ServerFallbackDisablingUtils] ServerFallbackDeprecatedSelfEvent", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v25 = *(v30 + 32);
    (*(v30 + 24))(v20);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.instrumentation);
    v20 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DC659000, v20, v27, "[ServerFallbackDisablingUtils] ServerFallbackDeprecatedSelfEvent failed to generate event", v28, 2u);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:), 0, 0);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:)()
{
  v27 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v4, static Logger.executor);
  v5 = v3;

  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[4];
    v10 = v0[5];
    v12 = v0[2];
    v11 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 138412802;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2080;
    v16 = v12;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v9, &v26);
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    v14[1] = v10;
    v17 = v10;
    _os_log_impl(&dword_1DC659000, v7, v8, "[ServerFallbackDisablingUtils] Attempting to emit trigger logging for codePathID: %@, namespace: %s, request: %@ ", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v19 = v0[3];
  v18 = v0[4];
  v0[8] = *(v0[6] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v20 = swift_allocObject();
  v0[9] = v20;
  *(v20 + 16) = xmmword_1DCA66060;
  *(v20 + 32) = v19;
  *(v20 + 40) = v18;
  v21 = *(MEMORY[0x1E6985F98] + 4);
  v25 = (*MEMORY[0x1E6985F98] + MEMORY[0x1E6985F98]);

  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  v23 = v0[2];

  return v25(v23, v20);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:), 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[5];
    v6 = *(MEMORY[0x1E6985F90] + 4);
    v11 = (*MEMORY[0x1E6985F90] + MEMORY[0x1E6985F90]);
    v7 = swift_task_alloc();
    v3[12] = v7;
    *v7 = v3;
    v7[1] = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
    v8 = v3[8];
    v9 = v3[2];

    return v11(v9, v5);
  }
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  }

  else
  {
    v3 = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    v15 = v11;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v8, &v19);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v13[1] = v9;
    v16 = v9;
    _os_log_impl(&dword_1DC659000, v6, v7, "[ServerFallbackDisablingUtils] Emit trigger logging successfully for codePathID: %@, namespace: %s, request: %@ ", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

{
  v33 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  v7 = v6;

  v8 = v5;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[11];
  if (v12)
  {
    v14 = v0[5];
    v30 = v0[4];
    v15 = v0[2];
    v16 = v0[3];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v17 = 138413058;
    *(v17 + 4) = v15;
    *v18 = v15;
    *(v17 + 12) = 2080;
    v20 = v15;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v30, &v32);
    *(v17 + 22) = 2112;
    *(v17 + 24) = v14;
    v18[1] = v14;
    *(v17 + 32) = 2112;
    v21 = v14;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v23;
    v18[2] = v23;
    _os_log_impl(&dword_1DC659000, v10, v11, "[ServerFallbackDisablingUtils] Unable to cache trial experiment IDs for codePathID: %@, namespace: %s, request: %@, error: %@", v17, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  else
  {
  }

  v24 = v0[5];
  v25 = *(MEMORY[0x1E6985F90] + 4);
  v31 = (*MEMORY[0x1E6985F90] + MEMORY[0x1E6985F90]);
  v26 = swift_task_alloc();
  v0[12] = v26;
  *v26 = v0;
  v26[1] = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  v27 = v0[8];
  v28 = v0[2];

  return v31(v28, v24);
}

{
  v26 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  v6 = v4;
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 40);
    v24 = *(v0 + 32);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 138413058;
    *(v15 + 4) = v13;
    *v16 = v13;
    *(v15 + 12) = 2080;
    v18 = v13;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v24, &v25);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v12;
    v16[1] = v12;
    *(v15 + 32) = 2112;
    v19 = v12;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 34) = v21;
    v16[2] = v21;
    _os_log_impl(&dword_1DC659000, v8, v9, "[ServerFallbackDisablingUtils] Unable to emit trigger logging for codePathID: %@, namespace: %s, request: %@, error: %@", v15, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t ServerFallbackDisablingUtils.redirectFallbackAttempt(executionRequestId:rootRequestId:rcId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a5;
  v56 = a3;
  v57 = a4;
  v60 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v49 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_UserParse();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = *MEMORY[0x1E69D0780];
  v26 = type metadata accessor for ServerFallbackReason();
  v27 = *(v26 - 8);
  v28 = *(v27 + 104);
  v54 = v25;
  v53 = v28;
  v28(v19, v25, v26);
  v29 = *(v27 + 56);
  v29(v19, 0, 1, v26);
  if (specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(1, v23, v19))
  {
    v49 = v29;
    v52 = a6;
    v30 = type metadata accessor for TaskPriority();
    v31 = 1;
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v59;
    v32[5] = a1;
    v50 = a1;
    v32[6] = a2;

    v51 = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)partial apply, v32);

    v33 = [objc_opt_self() sharedPreferences];
    v34 = [v33 shouldDisableServerFallbackDomain];

    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (v34)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.executor);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v57;
      v41 = v50;
      v40 = v51;
      if (v38)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1DC659000, v36, v37, "[ServerFallbackDisablingUtils] Server fallback disabled; redirect to gibberish response", v42, 2u);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }

      v43 = v39;
      v44 = v56;
      v45 = v49;
      if (!v39)
      {

        v44 = v41;
        v43 = v40;
      }

      v46 = v55;
      v53(v55, v54, v26);
      v45(v46, 0, 1, v26);

      ServerFallbackDisablingUtils.logServerFallbackDeprecatedSelfEvent(forResultCandidateId:executionRequestId:serverFallbackReason:)(v58, v52, v44, v43, v46);

      outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      static ServerFallbackDisablingUtils.createCAMFallbackConversationCommitResult()(v60);
      v31 = 0;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v31 = 1;
  }

  v47 = type metadata accessor for ConversationCommitResult();
  return (*(*(v47 - 8) + 56))(v60, v31, 1, v47);
}

uint64_t static ServerFallbackDisablingUtils.createCAMFallbackConversationCommitResult()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for Parse();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Input();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandcraftedPluginManifestEntry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PluginAction();
  v25 = *(v12 - 8);
  v26 = v12;
  v13 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v24 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Parse.DirectInvocation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static ServerFallbackDisablingUtils.createCAMFallbackConversationCommitResult());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5826960, &_sSS_SStMd, &_sSS_SStMR);
  static CamDirectInvocationIdentifiers.fallback.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v8 + 104))(v11, *MEMORY[0x1E69D00A0], v7);
  HandcraftedPluginManifestEntry.rawValue.getter();
  (*(v8 + 8))(v11, v7);
  v21 = v28;
  (*(v16 + 16))(v28, v19, v15);
  (*(v29 + 104))(v21, *MEMORY[0x1E69D0158], v30);
  Input.init(parse:)();
  v22 = v24;
  PluginAction.init(flowHandlerId:input:)();
  (*(v16 + 8))(v19, v15);
  (*(v25 + 32))(v31, v22, v26);
  type metadata accessor for ConversationCommitResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ServerFallbackDisablingUtils.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(int a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v79 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v79 - v24;
  v26 = [objc_opt_self() sharedPreferences];
  v27 = [v26 languageCode];

  if (v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = objc_opt_self();
  v82 = v28;
  v32 = MEMORY[0x1E12A1410](v28, v30);
  v33 = &selRef_isDomainServerFallbackDisabledForLocale_;
  v81 = a1;
  if ((a1 & 1) == 0)
  {
    v33 = &selRef_isNLServerFallbackDisabledForLocale_;
  }

  v34 = [v31 *v33];

  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v25, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v35 = type metadata accessor for Siri_Nlu_External_UserParse();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v25, 1, v35) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  }

  else
  {
    v37 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
    (*(v36 + 8))(v25, v35);
    if (v37)
    {
      v38 = v81;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.executor);
      v40 = v80;
      outlined init with copy of ReferenceResolutionClientProtocol?(v83, v80, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v84 = v44;
        *v43 = 136315650;
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v30, &v84);

        *(v43 + 4) = v45;
        *(v43 + 12) = 1024;
        *(v43 + 14) = v38 & 1;
        *(v43 + 18) = 2080;
        outlined init with copy of ReferenceResolutionClientProtocol?(v40, v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v46 = type metadata accessor for ServerFallbackReason();
        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v19, 1, v46) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          v48 = 0;
          v49 = 0xE000000000000000;
        }

        else
        {
          v48 = ServerFallbackReason.rawValue.getter();
          v49 = v77;
          (*(v47 + 8))(v19, v46);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v84);

        *(v43 + 20) = v78;
        _os_log_impl(&dword_1DC659000, v41, v42, "[ServerFallbackDisablingUtils] shouldDisableServerFallback check for inputLocale =  %s, isDomainDirected = %{BOOL}d, serverFallbackReason = %s returns false due to fallback exception", v43, 0x1Cu);
        swift_arrayDestroy();
        v76 = v44;
        goto LABEL_36;
      }

      v70 = v40;
LABEL_28:
      outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      return 0;
    }
  }

  if ((v34 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v83, v16, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

    v41 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v63))
    {
      v43 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v84 = v64;
      *v43 = 136315650;
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v30, &v84);

      *(v43 + 4) = v65;
      *(v43 + 12) = 1024;
      *(v43 + 14) = v81 & 1;
      *(v43 + 18) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol?(v16, v13, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v66 = type metadata accessor for ServerFallbackReason();
      v67 = *(v66 - 8);
      if ((*(v67 + 48))(v13, 1, v66) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v68 = 0;
        v69 = 0xE000000000000000;
      }

      else
      {
        v68 = ServerFallbackReason.rawValue.getter();
        v69 = v74;
        (*(v67 + 8))(v13, v66);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v84);

      *(v43 + 20) = v75;
      _os_log_impl(&dword_1DC659000, v41, v63, "[ServerFallbackDisablingUtils] shouldDisableServerFallback check for inputLocale =  %s, isDomainDirected = %{BOOL}d, serverFallbackReason = %s returns false due to feature flag", v43, 0x1Cu);
      swift_arrayDestroy();
      v76 = v64;
LABEL_36:
      MEMORY[0x1E12A2F50](v76, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);

      return 0;
    }

    v70 = v16;
    goto LABEL_28;
  }

  v50 = v82;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v83, v10, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v84 = v55;
    *v54 = 136315650;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v30, &v84);

    *(v54 + 4) = v56;
    *(v54 + 12) = 1024;
    *(v54 + 14) = v81 & 1;
    *(v54 + 18) = 2080;
    v57 = v79;
    outlined init with copy of ReferenceResolutionClientProtocol?(v10, v79, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v58 = type metadata accessor for ServerFallbackReason();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v60 = 0;
      v61 = 0xE000000000000000;
    }

    else
    {
      v60 = ServerFallbackReason.rawValue.getter();
      v61 = v71;
      (*(v59 + 8))(v57, v58);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v84);

    *(v54 + 20) = v72;
    _os_log_impl(&dword_1DC659000, v52, v53, "[ServerFallbackDisablingUtils] shouldDisableServerFallback check for inputLocale =  %s, isDomainDirected = %{BOOL}d, serverFallbackReason = %s returns true", v54, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  }

  return 1;
}

uint64_t specialized ServerFallbackDisablingUtils.shouldDisableServerFallbackWithABDecision(isDomainDirected:topNlParse:serverFallbackReason:)(char a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for fallbackDisabledOverride != -1)
  {
    swift_once();
  }

  v6 = static ServerFallbackDisablingUtils.fallbackDisabledOverride;
  os_unfair_lock_lock(static ServerFallbackDisablingUtils.fallbackDisabledOverride + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if (specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(a1 & 1, a2, a3))
    {
      v8 = [objc_opt_self() sharedPreferences];
      LOBYTE(os_unfair_lock_opaque_low) = [v8 shouldDisableServerFallbackDomain];
    }

    else
    {
      LOBYTE(os_unfair_lock_opaque_low) = 0;
    }
  }

  return os_unfair_lock_opaque_low & 1;
}

uint64_t partial apply for closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(uint64_t a1)
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

  return closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized ServerFallbackDisablingUtils.mapServerFallbackReasonToLoggingReason(serverFallbackReason:)(uint64_t a1)
{
  v2 = type metadata accessor for ServerFallbackReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69D0768])
  {
    return 5;
  }

  if (v8 == *MEMORY[0x1E69D0770])
  {
    return 4;
  }

  if (v8 == *MEMORY[0x1E69D0758])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x1E69D0780])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x1E69D0760])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E69D0778])
  {
    return 6;
  }

  if (v8 != *MEMORY[0x1E69D0788])
  {
    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

void *specialized ServerFallbackDisablingUtils.createServerFallbackDeprecatedEvent(requestId:resultCandidateId:serverFallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "[ServerFallbackDisablingUtils] Invalid requestId when logging nlV3ServerFallbackDeprecated", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    return 0;
  }

  (*(v13 + 32))(v16, v11, v12);
  v21 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v23 = [v21 initWithNSUUID_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69CF320]) init];
  v25 = v24;
  if (v24)
  {
    [v24 setRequestId_];
    v26 = v25;
    if (a4)
    {
      v27 = MEMORY[0x1E12A1410](a3, a4);
    }

    else
    {
      v27 = 0;
    }

    [v25 setResultCandidateId_];
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69CF308]) init];
  if (v28)
  {
    v29 = v28;
    [v28 setEventMetadata_];
    v30 = [objc_allocWithZone(MEMORY[0x1E69CF3B0]) init];
    if (v30)
    {
      v31 = v30;
      [v30 setFallbackReason_];
      [v29 setNlv3ServerFallbackDeprecated_];

      (*(v13 + 8))(v16, v12);
      return v29;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.executor);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DC659000, v38, v39, "[ServerFallbackDisablingUtils] Failed to create nlV3ServerFallbackDeprecated event", v40, 2u);
      MEMORY[0x1E12A2F50](v40, -1, -1);

      goto LABEL_26;
    }

LABEL_25:
    goto LABEL_26;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.executor);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v34, v35))
  {

    goto LABEL_25;
  }

  v36 = swift_slowAlloc();
  *v36 = 0;
  _os_log_impl(&dword_1DC659000, v34, v35, "[ServerFallbackDisablingUtils] Failed to create orchestrationEventWrapper when logging nlV3ServerFallbackDeprecated", v36, 2u);
  MEMORY[0x1E12A2F50](v36, -1, -1);

LABEL_26:
  (*(v13 + 8))(v16, v12);
  return 0;
}

uint64_t closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)partial apply(uint64_t a1)
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

  return closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServerFTMRule.__allocating_init(overrideFTMAsPerServer:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = 3;
  *(result + 17) = a1;
  return result;
}

uint64_t ServerFTMRule.init(overrideFTMAsPerServer:)(char a1)
{
  *(v1 + 16) = 3;
  *(v1 + 17) = a1;
  return v1;
}

SiriKitRuntime::PreExecutionDecision __swiftcall ServerFTMRule.evaluate()()
{
  if (*(v0 + 17))
  {
    return 3;
  }

  else
  {
    return 11;
  }
}

id ServerPromptData.__allocating_init(nlContext:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of Siri_Nlu_External_LegacyNLContext?(a1, v3 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  return v4;
}

id ServerPromptData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32[-v8];
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA87DD0, v13);
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v33 = v39;
  v34 = v40;
  if (!*(&v40 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v33, &_sypSgMd, &_sypSgMR);
    (*(v11 + 56))(v2 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, 1, 1, v10);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v19 = v36;
    v18 = v37;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    outlined copy of Data._Representation(v36, v37);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext();
    Message.init(serializedData:extensions:partial:options:)();
    outlined consume of Data._Representation(v19, v18);
    v27 = *(v11 + 56);
    v27(v9, 0, 1, v10);
    v28 = *(v11 + 32);
    v28(v15, v9, v10);
    v29 = OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext;
    v28(v2 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, v15, v10);
    v27(v2 + v29, 0, 1, v10);
LABEL_13:
    v30 = type metadata accessor for ServerPromptData();
    v38.receiver = v2;
    v38.super_class = v30;
    v31 = objc_msgSendSuper2(&v38, sel_init);

    return v31;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "Failed to decode the legacyNLContext", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  type metadata accessor for ServerPromptData();
  v24 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v25 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ServerPromptData.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Siri_Nlu_External_LegacyNLContext?(v1 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    isa = 0;
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    lazy protocol witness table accessor for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext();
    v13 = Message.serializedData(partial:)();
    v14 = v16;
    (*(v8 + 8))(v11, v7);
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v15 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA87DD0);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v15];
  swift_unknownObjectRelease();

  outlined consume of Data?(v13, v14);
}

id ServerPromptData.init(nlContext:)(uint64_t a1)
{
  outlined init with copy of Siri_Nlu_External_LegacyNLContext?(a1, v1 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ServerPromptData();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  return v3;
}

uint64_t outlined init with copy of Siri_Nlu_External_LegacyNLContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ServerPromptData.init(serializedBackingStore:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of Any(a1, v26);
  if (swift_dynamicCast())
  {
    v10 = v24;
    v9 = v25;
    type metadata accessor for NSKeyedUnarchiver();
    static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
    if (!v27)
    {
      outlined consume of Data._Representation(v10, v9);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_sypSgMd, &_sypSgMR);
      goto LABEL_8;
    }

    type metadata accessor for ServerPromptData();
    if ((swift_dynamicCast() & 1) == 0)
    {
      outlined consume of Data._Representation(v10, v9);
      goto LABEL_8;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v18 = v24;
    outlined init with copy of Siri_Nlu_External_LegacyNLContext?(v24 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, v7);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);
    v12 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v12, v20, "Decoded the ServerPromptData", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    outlined consume of Data._Representation(v10, v9);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "The backing store for ServerPromptData is not of type Data", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }
  }

LABEL_8:
  outlined init with take of Siri_Nlu_External_LegacyNLContext?(v7, v2 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext);
  v15 = type metadata accessor for ServerPromptData();
  v23.receiver = v2;
  v23.super_class = v15;
  v16 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

uint64_t type metadata accessor for ServerPromptData()
{
  result = type metadata singleton initialization cache for ServerPromptData;
  if (!type metadata singleton initialization cache for ServerPromptData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ServerPromptData.serializedBackingStore()(uint64_t *a1@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v15];
  v4 = v15[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = v4;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Failed to encode the server prompt context", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v5 = 0;
    v7 = 0xC000000000000000;
  }

  a1[3] = MEMORY[0x1E6969080];
  *a1 = v5;
  a1[1] = v7;
  v14 = *MEMORY[0x1E69E9840];
}

id ServerPromptData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ServerPromptData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerPromptData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext)
  {
    type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext);
  }

  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_LegacyNLContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ServerPromptData()
{
  type metadata accessor for Siri_Nlu_External_LegacyNLContext?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Siri_Nlu_External_LegacyNLContext?()
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_LegacyNLContext?)
  {
    type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Siri_Nlu_External_LegacyNLContext?);
    }
  }
}

uint64_t ServiceBridgeDelegateXPCWrapper.wrapped.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t ServiceBridgeDelegateXPCWrapper.__allocating_init(wrapping:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ServiceBridgeDelegateXPCWrapper.init(wrapping:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:), v6, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 24))(v2, ObjectType, v4);
  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(a1, v4, v5, v7, v6);
}

uint64_t ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = one-time initialization token for shared;

  v14 = a1;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v4;
  v17[5] = v14;
  v17[6] = a2;
  v17[7] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:), v17);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:), v8, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(v4, v1, v2, ObjectType, v6);
  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = one-time initialization token for shared;

  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static MessageBusActor.shared;
  v13 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = v2;
  *(v14 + 40) = v11;
  *(v14 + 48) = a2 & 1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:), v14);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v3, v1, ObjectType, v5);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = one-time initialization token for shared;

  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MessageBusActor.shared;
  v14 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v3;
  v15[5] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a3, v15);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:), v8, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v8 = *MEMORY[0x1E69D0780];
  v9 = type metadata accessor for ServerFallbackReason();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v1, v8, v9);
  (*(v10 + 56))(v1, 0, 1, v9);
  (*(v6 + 48))(v4, v2, v1, ObjectType, v6);
  outlined destroy of ServerFallbackReason?(v1);

  v11 = v0[1];

  return v11();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, a4, v17);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 56))(v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = one-time initialization token for shared;
  swift_retain_n();
  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v17 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a3;
  v18[6] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a5, v18);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 104))(v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 112))(v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 128))(v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v29 = a5;
  v30 = a7;
  v28 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = static MessageBusActor.shared;
  v22 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v9;
  v23[5] = a1;
  v25 = v28;
  v24 = v29;
  v23[6] = a2;
  v23[7] = v25;
  v23[8] = a4;
  v23[9] = v24;
  v26 = v30;
  v23[10] = a6;
  v23[11] = v26;
  v23[12] = a8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:), v23);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:), v9, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)()
{
  v1 = v0[12];
  v14 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 136))(v7, v6, v5, v4, v3, v2, v1, v14, ObjectType, v9);
  v12 = v0[1];

  return v12();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, a4, v17);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 152))(v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = one-time initialization token for shared;
  swift_retain_n();

  if (v18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static MessageBusActor.shared;
  v20 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a1;
  v21[5] = a6;
  v21[6] = v16;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, a7, v21);
}

uint64_t ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = one-time initialization token for shared;

  v17 = a1;

  if (v16 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static MessageBusActor.shared;
  v19 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v7;
  v20[5] = v17;
  v20[6] = a2;
  v20[7] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, a5, v20);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:), v8, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 184))(v4, v1, v2, ObjectType, v6);
  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

  outlined copy of Data._Representation(a1, a2);
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v17 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v5;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:), v18);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:), v9, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 192))(v4, v3, v1, v2, ObjectType, v7);
  v9 = v0[1];

  return v9();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t ServiceBridgeDelegateXPCWrapper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t outlined destroy of ServerFallbackReason?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for RecentDialog();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t *ServiceBridgeHelper.executionBridgeXPCInterface.unsafeMutableAddressor()
{
  if (one-time initialization token for executionBridgeXPCInterface != -1)
  {
    swift_once();
  }

  return &static ServiceBridgeHelper.executionBridgeXPCInterface;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecentDialog();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t one-time initialization function for executionBridgeXPCInterface()
{
  result = closure #1 in variable initialization expression of static ServiceBridgeHelper.executionBridgeXPCInterface();
  static ServiceBridgeHelper.executionBridgeXPCInterface = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static ServiceBridgeHelper.executionBridgeXPCInterface()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA65720;
  v1 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5NSSetCmMd, &_sSo5NSSetCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCmMd, &_sSo8NSStringCmMR);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 initWithArray_];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

id static ServiceBridgeHelper.executionBridgeXPCInterface.getter()
{
  if (one-time initialization token for executionBridgeXPCInterface != -1)
  {
    swift_once();
  }

  v1 = static ServiceBridgeHelper.executionBridgeXPCInterface;

  return v1;
}

uint64_t ServiceBridgeErrorHandlingProxy.__allocating_init(wrapping:)()
{
  v0 = swift_allocObject();
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    *(v0 + 16) = v1;
    return v0;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x1E12A1580](0xD000000000000041, 0x80000001DCA87EA0);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
    v3 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v3);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/MessageBusIntegration/ServiceBridgeXPC.swift", 113, 2, 203);
    __break(1u);
  }

  return result;
}

uint64_t ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  aBlock[4] = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_23;
  v7 = _Block_copy(aBlock);

  v8 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    return v15;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v14 = swift_allocError();
    a1();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }
}

void specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(void *a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, oslog, v4, "ServiceBridgeXPC proxy encountered an error (likely assistantd crash?) All calls to this instance of Execution Bridge will fail for the remainder of this turn: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v6, v7, "ServiceBridgeXPC proxy encountered an error (likely assistantd crash?) All calls to this instance of Execution Bridge will fail for the remainder of this turn: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  return a2(a1);
}

uint64_t ServiceBridgeErrorHandlingProxy.init(wrapping:)()
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    *(v0 + 16) = v1;
    return v0;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x1E12A1580](0xD000000000000041, 0x80000001DCA87EA0);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
    v3 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v3);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/MessageBusIntegration/ServiceBridgeXPC.swift", 113, 2, 203);
    __break(1u);
  }

  return result;
}

void ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{

  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a2, a3);

  if (v7)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_3_3;
    v8 = _Block_copy(v9);

    [v7 submitWithExecutionOutput:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

uint64_t ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:errorString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_321);
  if (result)
  {
    v8 = result;
    v9 = MEMORY[0x1E12A1410](a2, a3);
    [v8 closeWithExecutionOutput:a1 errorString:v9];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:needsUserInput:)(uint64_t a1, char a2)
{
  v3 = v2;
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_318);
  if (result)
  {
    [result closeWithExecutionOutput:a1 needsUserInput:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v4, a2, a3);
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ServiceBridgeErrorHandlingProxy.fallbackToServer(forResultCandidateId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v5, a3, a4);
  if (result)
  {
    v10 = result;
    if (a2)
    {
      a2 = MEMORY[0x1E12A1410](a1, a2);
    }

    [v10 *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v13 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v12, a4, a5);
  if (v13)
  {
    v14 = v13;
    if (v11)
    {
      v15 = MEMORY[0x1E12A1410](v9, v11);
    }

    else
    {
      v15 = 0;
    }

    [v14 *a6];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = _s10ObjectiveC8ObjCBoolVIeyBhy_SbIeghy_TRTA_0;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    v8[3] = &block_descriptor_181_0;
    v6 = _Block_copy(v8);

    [v5 prepareForAudioHandoffWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    v8[3] = &block_descriptor_6_2;
    v7 = _Block_copy(v8);

    [v6 prepareForAudioHandoffWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v8[3] = &block_descriptor_161_0;
    v6 = _Block_copy(v8);

    [v5 prepareForAudioHandoffFailedWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v8[3] = &block_descriptor_9_3;
    v7 = _Block_copy(v8);

    [v6 prepareForAudioHandoffFailedWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

void ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{

  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v4, a3, a4);

  if (v8)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    v11[3] = &block_descriptor_12_1;
    v10 = _Block_copy(v11);

    [v8 fetchContextsFor:isa includesNearByDevices:a2 & 1 completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationCanHandleResult) -> ();
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSpeechInfo?) -> ();
    v8[3] = &block_descriptor_121;
    v6 = _Block_copy(v8);

    [v5 fetchSpeechInfoWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSpeechInfo?) -> ();
    v8[3] = &block_descriptor_15_0;
    v7 = _Block_copy(v8);

    [v6 fetchSpeechInfoWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSpeechInfo?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void specialized ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a8;
  _Block_copy(a8);
  v17 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a7, a8);
  _Block_release(a8);
  if (v17)
  {
    v18 = MEMORY[0x1E12A1410](a1, a2);
    v19 = MEMORY[0x1E12A1410](a3, a4);
    v20 = MEMORY[0x1E12A1410](a5, a6);
    v22[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
    v22[5] = v16;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v22[3] = &block_descriptor_101_0;
    v21 = _Block_copy(v22);

    [v17 retriggerOriginalRequestWithExecutionRequestId:v18 forUserId:v19 givenCurrentExecutionRequestId:v20 reply:v21];
    swift_unknownObjectRelease();
    _Block_release(v21);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v9 = v8;

  v18 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v9, a7, a8);

  if (v18)
  {
    v19 = MEMORY[0x1E12A1410](a1, a2);
    v20 = MEMORY[0x1E12A1410](a3, a4);
    v21 = MEMORY[0x1E12A1410](a5, a6);
    v23[4] = a7;
    v23[5] = a8;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v23[3] = &block_descriptor_18_0;
    v22 = _Block_copy(v23);

    [v18 retriggerOriginalRequestWithExecutionRequestId:v19 forUserId:v20 givenCurrentExecutionRequestId:v21 reply:v22];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }
}

Swift::Void __swiftcall ServiceBridgeErrorHandlingProxy.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  v2 = v1;
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v2, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_251);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E12A1410](countAndFlagsBits, object);
    [v6 closeServerRequestForExecutionRequestId_];

    swift_unknownObjectRelease();
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> ();
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ();
    v8[3] = &block_descriptor_81;
    v6 = _Block_copy(v8);

    [v5 fetchRecentDialogsWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ();
    v8[3] = &block_descriptor_21_0;
    v7 = _Block_copy(v8);

    [v6 fetchRecentDialogsWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a2, a3);
  _Block_release(a3);
  if (v7)
  {
    v10[4] = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_61_0;
    v8 = _Block_copy(v10);

    [v7 submitExternalActivationRequestWithRequestInfo:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{

  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a2, a3);

  if (v7)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_24_0;
    v8 = _Block_copy(v9);

    [v7 submitExternalActivationRequestWithRequestInfo:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void specialized ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a3, a4);
  _Block_release(a4);
  if (v7)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ();
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_40;
    v9 = _Block_copy(v10);

    [v7 postToMessageBusWithMessage:isa completion:v9];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;

  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v5, a3, a4);

  if (v8)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v11[3] = &block_descriptor_27_0;
    v10 = _Block_copy(v11);

    [v8 postToMessageBusWithMessage:isa completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

Swift::Int ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t ServiceBridgeErrorHandlingProxy.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

unint64_t lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError()
{
  result = lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError;
  if (!lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError;
  if (!lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError);
  }

  return result;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_335;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v16 = swift_allocError();
    a2(0, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:);
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_237_0;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v16 = swift_allocError();
    a2(0, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:);
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_226;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v16 = swift_allocError();
    a2(0, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_306;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_295;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_284_0;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_273;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_262;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_248;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(MEMORY[0x1E69E7CC0]);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_175_0;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
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
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(MEMORY[0x1E69E7CC0]);
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t SessionConfiguration.xpcRepresentation.getter()
{
  v1 = type metadata accessor for SessionConfiguration();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v0, v3);
  v7 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPC());
  return SessionConfigurationXPC.init(sessionConfiguration:)(v5);
}

uint64_t SessionConfigurationXPC.CodingKeys.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 0xD000000000000010;
  }
}

SiriKitRuntime::SessionConfigurationXPC::CodingKeys_optional __swiftcall SessionConfigurationXPC.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SessionConfigurationXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_SessionConfigurationXPC_CodingKeys_sessionId;
  }

  else
  {
    v4.value = SiriKitRuntime_SessionConfigurationXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SessionConfigurationXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x496E6F6973736573;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = 0x80000001DCA7B670;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x496E6F6973736573;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x80000001DCA7B670;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SessionConfigurationXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SessionConfigurationXPC.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SessionConfigurationXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SessionConfigurationXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SessionConfigurationXPC.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SessionConfigurationXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DCA7B670;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x496E6F6973736573;
    v2 = 0xE900000000000064;
  }

  *a1 = v3;
  a1[1] = v2;
}

id SessionConfigurationXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SessionConfigurationXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionConfigurationXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for XPCConvertible.xpcRepresentation.getter in conformance SessionConfiguration(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v2);
  v6 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPC());
  return SessionConfigurationXPC.init(sessionConfiguration:)(v4);
}

SiriKitRuntime::SettingsAffinityScorer __swiftcall SettingsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC00;
  v1 = 0xD000000000000029;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t UsoTask.firstUserEntityNamesIdentifier()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UsoIdentifier();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UsoTask.arguments.getter();
  if (!*(v7 + 16))
  {
    goto LABEL_25;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
  if ((v9 & 1) == 0)
  {
    goto LABEL_25;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (v10 >> 62)
  {
    goto LABEL_60;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_65:
  v15 = __CocoaSet.count.getter();
  while (2)
  {
    v16 = 0;
    v47 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    while (v15 != v16)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E12A1FE0](v16, v1);
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v16 >= *(a1 + 16))
        {
          goto LABEL_55;
        }

        v10 = *(v1 + 8 * v16 + 32);

        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_25;
          }

          goto LABEL_5;
        }
      }

      v18 = dispatch thunk of UsoValue.getAsEntity()();

      ++v16;
      if (v18)
      {
        v10 = &v50;
        MEMORY[0x1E12A1680](v19);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v48 = v50;
        v16 = v17;
      }
    }

    v23 = v48;
    if (v48 >> 62)
    {
      v10 = v48;
      v24 = __CocoaSet.count.getter();
      v23 = v10;
      if (v24)
      {
        goto LABEL_32;
      }

LABEL_67:
      v1 = MEMORY[0x1E69E7CC0];
LABEL_68:

      v36 = *(v1 + 16);
      if (v36)
      {
        v37 = 0;
        result = v49;
        v38 = (v49 + 8);
        while (v37 < *(v1 + 16))
        {
          v39 = (*(v49 + 16))(v6, v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v37, v3);
          MEMORY[0x1EEE9AC00](v39);
          v43[-2] = v6;
          v40 = v47;
          v41 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier(), &v43[-4], &outlined read-only object #0 of one-time initialization function for kSupportedUserEntityNamesIdentifierNamespaces);
          v47 = v40;
          if (v41)
          {

            v42 = v44;
            (*(v49 + 32))(v44, v6, v3);
            return (*(v49 + 56))(v42, 0, 1, v3);
          }

          ++v37;
          result = (*v38)(v6, v3);
          if (v36 == v37)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_73:

        return (*(v49 + 56))(v44, 1, 1, v3);
      }

      return result;
    }

    v24 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_67;
    }

LABEL_32:
    v25 = 0;
    v45 = v23 & 0xFFFFFFFFFFFFFF8;
    v46 = v23 & 0xC000000000000001;
    v1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v46)
      {
        v10 = MEMORY[0x1E12A1FE0](v25, v23);
        a1 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v25 >= *(v45 + 16))
        {
          goto LABEL_56;
        }

        v10 = *(v23 + 8 * v25 + 32);

        a1 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      v26 = UsoEntity.usoIdentifiers.getter();

      v10 = *(v26 + 16);
      v27 = *(v1 + 16);
      v28 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
        goto LABEL_57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v28 <= *(v1 + 24) >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v30 = v27 + v10;
        }

        else
        {
          v30 = v27;
        }

        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v1);
        if (!*(v26 + 16))
        {
LABEL_33:

          if (v10)
          {
            goto LABEL_58;
          }

          goto LABEL_34;
        }
      }

      if ((*(v1 + 24) >> 1) - *(v1 + 16) < v10)
      {
        goto LABEL_59;
      }

      v31 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v32 = *(v49 + 72);
      swift_arrayInitWithCopy();

      if (v10)
      {
        break;
      }

LABEL_34:
      ++v25;
      v23 = v48;
      if (a1 == v24)
      {
        goto LABEL_68;
      }
    }

    v33 = *(v1 + 16);
    v34 = __OFADD__(v33, v10);
    v35 = v33 + v10;
    if (!v34)
    {
      *(v1 + 16) = v35;
      goto LABEL_34;
    }

    __break(1u);
LABEL_63:
    MEMORY[0x1E12A1FE0](0, v10);
LABEL_8:

    v12 = dispatch thunk of UsoValue.getAsEntity()();

    if (v12)
    {
      v10 = UsoEntity.attributes.getter();
      if (*(v10 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656D616ELL, 0xE500000000000000);
        if (v14)
        {
          v44 = a1;
          v1 = *(*(v10 + 56) + 8 * v13);

          v50 = MEMORY[0x1E69E7CC0];
          v43[1] = v12;
          a1 = v1 & 0xFFFFFFFFFFFFFF8;
          if (!(v1 >> 62))
          {
            v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            continue;
          }

          goto LABEL_65;
        }
      }
    }

    break;
  }

LABEL_26:
  v21 = *(v49 + 56);

  return v21(a1, 1, 1, v3);
}

uint64_t UsoTask.firstCommonSettingReferenceIdentifier()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UsoIdentifier();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = UsoTask.arguments.getter();
  if (*(v12 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      if (v15 >> 62)
      {
        goto LABEL_28;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E12A1FE0](0, v15);
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v17 = *(v15 + 32);
          }

          v18 = dispatch thunk of UsoValue.getAsEntity()();

          if (!v18)
          {
            goto LABEL_18;
          }

          type metadata accessor for UsoEntity_common_Setting();

          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          v15 = v28;
          if (!v28)
          {

            return (*(v27 + 56))(a4, 1, 1, v8);
          }

          v19 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
          if (!v19)
          {
            (*(v27 + 56))(a4, 1, 1, v8);
          }

          v20 = v19;
          v26[0] = v15;
          v26[1] = v18;
          v21 = *(v19 + 16);
          if (!v21)
          {
LABEL_16:

            return (*(v27 + 56))(a4, 1, 1, v8);
          }

          v22 = 0;
          v26[2] = v27 + 16;
          v23 = (v27 + 8);
          while (v22 < *(v20 + 16))
          {
            v24 = (*(v27 + 16))(v11, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v8);
            v15 = v26;
            MEMORY[0x1EEE9AC00](v24);
            v26[-2] = v11;
            if (specialized Sequence.contains(where:)(a3, &v26[-4], &outlined read-only object #0 of one-time initialization function for kSupportedCommonSettingIdentifierNamespaces))
            {

              (*(v27 + 32))(a4, v11, v8);
              return (*(v27 + 56))(a4, 0, 1, v8);
            }

            ++v22;
            (*v23)(v11, v8);
            if (v21 == v22)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_28:
          result = __CocoaSet.count.getter();
        }

        while (result);
      }
    }
  }

LABEL_18:
  v25 = *(v27 + 56);

  return v25(a4, 1, 1, v8);
}

BOOL UsoTask.isBatterySummarizationOverride(for:)(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for DeviceIdiom();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UsoTask.verbString.getter() == 0x736972616D6D7573 && v15 == 0xE900000000000065)
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

  if ((UsoTask.hasUserEntities()() & 1) == 0)
  {
    UsoTask.firstCommonSettingReferenceIdentifier()(0x636E657265666572, 0xE900000000000065, partial apply for closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier(), v9);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v14, v9, v10);
      if (UsoIdentifier.value.getter() == 0x79726574746162 && v19 == 0xE700000000000000)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          (*(v11 + 8))(v14, v10);
          return 0;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomOGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomOGMR);
      v22 = *(v2 + 72);
      v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DCA69C00;
      v25 = v24 + v23;
      v26 = *MEMORY[0x1E69D3480];
      v30 = v11;
      v27 = *(v2 + 104);
      v27(v25, v26, v1);
      v27(v25 + v22, *MEMORY[0x1E69D3488], v1);
      v29 = v2;
      v27(v25 + 2 * v22, *MEMORY[0x1E69D3498], v1);
      v27(v25 + 3 * v22, *MEMORY[0x1E69D34B0], v1);
      v27(v25 + 4 * v22, *MEMORY[0x1E69D34A0], v1);
      v27(v25 + 5 * v22, *MEMORY[0x1E69D34B8], v1);
      SiriEnvironment.currentDevice.getter();
      dispatch thunk of CurrentDevice.deviceIdiom.getter();

      v17 = specialized Sequence<>.contains(_:)(v5, v24);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v29 + 8))(v5, v1);
      (*(v30 + 8))(v14, v10);
      return v17;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  }

  return 0;
}

uint64_t UsoTask.hasUserEntities()()
{
  v0 = UsoTask.arguments.getter();
  if (!*(v0 + 16))
  {
    goto LABEL_10;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = *(*(v0 + 56) + 8 * v1);

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v3);
LABEL_8:

    v6 = dispatch thunk of UsoValue.getAsEntity()();

    if (v6)
    {

      return 1;
    }

    return 0;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = UsoIdentifier.namespace.getter();
  if (v4)
  {
    if (v3 == v1 && v4 == v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized SettingsAffinityScorer.scoreOpenNoEntity(_:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for RRCandidate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v22[0])
  {
    v14 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v14)
    {
      dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    }
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v15 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  static AffinityScorerUtils.topOpenableEntity(candidates:)(v15, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v16 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
    v17 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
    v18 = v8;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*(v1 + 8))(v4, v0);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v22[3])
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v22, v21, &_sypSgMd, &_sypSgMR);
      type metadata accessor for UsoEntity_common_AppEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      }

      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }

    v16 = &_sypSgMd;
    v17 = &_sypSgMR;
    v18 = v22;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v18, v16, v17);
  return 5;
}

uint64_t specialized SettingsAffinityScorer.scoreCloseNoEntity(_:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for RRCandidate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v22[0])
  {
    v14 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v14)
    {
      dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    }
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v15 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  static AffinityScorerUtils.topCloseableEntity(candidates:)(v15, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v16 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
    v17 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
    v18 = v8;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*(v1 + 8))(v4, v0);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v22[3])
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v22, v21, &_sypSgMd, &_sypSgMR);
      type metadata accessor for UsoEntity_common_UserEntity();
      if (swift_dynamicCast() || (type metadata accessor for UsoEntity_common_AppEntity(), swift_dynamicCast()))
      {

        dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      }

      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }

    v16 = &_sypSgMd;
    v17 = &_sypSgMR;
    v18 = v22;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v18, v16, v17);
  return 5;
}

uint64_t specialized SettingsAffinityScorer.scoreForEnvironmentOrAtmosphereIdentifiers(parse:environment:)()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  if (specialized static AffinityScorerUtils.getTask(_:)())
  {
    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of ReferenceResolutionClientProtocol?(v64, v62, &_sypSgMd, &_sypSgMR);
    if (!v63)
    {
LABEL_82:
      outlined destroy of ReferenceResolutionClientProtocol?(v62, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.executor);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1DC659000, v47, v48, "SettingsAffinityScorer No Env/Atm namespace identifiers found", v49, 2u);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sypSgMd, &_sypSgMR);
      return 5;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v62, v61, &_sypSgMd, &_sypSgMR);
    type metadata accessor for UsoTask_open_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v15 = specialized SettingsAffinityScorer.scoreOpenNoEntity(_:environment:)();
      goto LABEL_11;
    }

    type metadata accessor for UsoTask_close_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v15 = specialized SettingsAffinityScorer.scoreCloseNoEntity(_:environment:)();
LABEL_11:
      v19 = v15;
      v21 = v15;

      if (v21 != 5)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sypSgMd, &_sypSgMR);

        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_sypSgMd, &_sypSgMR);
        return v19;
      }

      goto LABEL_81;
    }

    type metadata accessor for UsoTask_disable_common_Setting();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_enable_common_Setting();
      if (!swift_dynamicCast())
      {
LABEL_81:
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        goto LABEL_82;
      }

      v14 = v60;

      v22 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();

      if (!v22)
      {
        goto LABEL_57;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFF8;
      if (!(v22 >> 62))
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_78:

          goto LABEL_79;
        }

        goto LABEL_39;
      }

LABEL_77:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_78;
      }

LABEL_39:
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v22);
      }

      else
      {
        if (!*(v23 + 16))
        {
          __break(1u);
LABEL_90:
          swift_once();
LABEL_60:
          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.executor);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_1DC659000, v37, v38, "SettingsAffinityScorer Env/Atm namespace identifiers found", v39, 2u);
            MEMORY[0x1E12A2F50](v39, -1, -1);
          }

          v40 = v14;
LABEL_69:
          outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sypSgMd, &_sypSgMR);
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          outlined destroy of ReferenceResolutionClientProtocol?(v62, &_sypSgMd, &_sypSgMR);
          return 3;
        }

        v29 = *(v22 + 32);
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      v22 = v58;
      if (v58)
      {
        v30 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

        if (v30)
        {
          v56 = *(v30 + 16);
          if (v56)
          {
            v52 = v14;
            v14 = 0;
            v23 = 0;
            v55 = (v30 + ((v1[80] + 32) & ~v1[80]));
            v53 = (v1 + 8);
            v54 = v1 + 16;
            while (1)
            {
              if (v14 >= *(v30 + 16))
              {
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              v7 = v30;
              (*(v1 + 2))(v4, &v55[*(v1 + 9) * v14], v0);
              v31 = UsoIdentifier.namespace.getter();
              v57 = &v51;
              v33 = v32 ? v31 : 0;
              v22 = v32 ? v32 : 0xE000000000000000;
              v58 = v33;
              v59 = v22;
              MEMORY[0x1EEE9AC00](v31);
              *(&v51 - 2) = &v58;
              v34 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v51 - 4), &outlined read-only object #0 of one-time initialization function for envNamespaces);

              if (v34)
              {
                break;
              }

              ++v14;
              (*v53)(v4, v0);
              v30 = v7;
              if (v56 == v14)
              {
                goto LABEL_78;
              }
            }

            (*(v1 + 4))(v11, v4, v0);
            (*(v1 + 7))(v11, 0, 1, v0);
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v41 = type metadata accessor for Logger();
            __swift_project_value_buffer(v41, static Logger.executor);
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&dword_1DC659000, v42, v43, "SettingsAffinityScorer Env/Atm namespace identifiers found", v44, 2u);
              MEMORY[0x1E12A2F50](v44, -1, -1);
            }

            v40 = v11;
            goto LABEL_69;
          }

          goto LABEL_78;
        }
      }

LABEL_57:

LABEL_79:
      (*(v1 + 7))(v11, 1, 1, v0);
      v45 = v11;
      goto LABEL_80;
    }

    v11 = v60;

    v22 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();

    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
LABEL_72:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v22);
        goto LABEL_21;
      }

      if (*(v23 + 16))
      {
        v24 = *(v22 + 32);

LABEL_21:

        dispatch thunk of CodeGenListEntry.entry.getter();

        v22 = v58;
        if (v58)
        {
          v4 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v4)
          {
            v56 = *(v4 + 2);
            if (v56)
            {
              v52 = v11;
              v11 = 0;
              v23 = 0;
              v55 = &v4[(v1[80] + 32) & ~v1[80]];
              v57 = v1;
              v53 = (v1 + 8);
              v54 = v1 + 16;
              while (1)
              {
                if (v11 >= *(v4 + 2))
                {
                  __break(1u);
                  goto LABEL_71;
                }

                v1 = v4;
                (*(v57 + 2))(v7, &v55[*(v57 + 9) * v11], v0);
                v25 = UsoIdentifier.namespace.getter();
                v27 = v26 ? v25 : 0;
                v22 = v26 ? v26 : 0xE000000000000000;
                v58 = v27;
                v59 = v22;
                MEMORY[0x1EEE9AC00](v25);
                *(&v51 - 2) = &v58;
                v28 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v51 - 4), &outlined read-only object #0 of one-time initialization function for envNamespaces);

                if (v28)
                {
                  break;
                }

                ++v11;
                (*v53)(v7, v0);
                if (v56 == v11)
                {

                  v1 = v57;
                  goto LABEL_74;
                }
              }

              v35 = v57;
              (*(v57 + 4))(v14, v7, v0);
              (*(v35 + 7))(v14, 0, 1, v0);
              if (one-time initialization token for executor != -1)
              {
                goto LABEL_90;
              }

              goto LABEL_60;
            }

            goto LABEL_73;
          }
        }

LABEL_56:

LABEL_74:
        (*(v1 + 7))(v14, 1, 1, v0);
        v45 = v14;
LABEL_80:
        outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        goto LABEL_81;
      }

      __break(1u);
      goto LABEL_77;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = 2;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v17, v18, "SettingsAffinityScorer Could not extract usoTask from parse", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  else
  {

    return 2;
  }

  return v19;
}

uint64_t specialized SettingsAffinityScorer.isIdentifierMatchScreen(on:)()
{
  v27 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v10 = v9;
  v25[0] = *(v9 + 16);
  if (!v25[0])
  {
LABEL_14:

    return 0;
  }

  v11 = 0;
  v26 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v25[1] = v5 + 16;
  v12 = (v0 + 8);
  v13 = (v5 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v5 + 16))(v8, v26 + *(v5 + 72) * v11, v4);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v15 = Google_Protobuf_StringValue.value.getter();
    v17 = v16;
    (*v12)(v3, v27);
    if (v15 == 0x61436D6574737973 && v17 == 0xEE0079726F676574)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*v13)(v8, v4);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x6E6565726373 && v19 == 0xE600000000000000)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v13)(v8, v4);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v25[0] == ++v11)
    {
      goto LABEL_14;
    }
  }

  (*v13)(v8, v4);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "SystemCommandsAffinityScorer | Found screen identifier", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized SettingsAffinityScorer.scoreForSupportedIdentifierMatches(parse:environment:)(uint64_t a1, uint64_t a2)
{
  v206 = a2;
  v218 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v216 = *(v218 - 8);
  v2 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v217 = &v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v4 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v6 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v191 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v197 = &v191 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v198 = &v191 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v194 = &v191 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v191 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v191 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v205 = &v191 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v191 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v207 = &v191 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v203 = &v191 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v214 = &v191 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v209 = &v191 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v215 = &v191 - v33;
  v202 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v201 = *(v202 - 8);
  v34 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v200 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Siri_Nlu_External_UserParse();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v191 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v191 - v48;
  v50 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v51 = *(v50 - 8);
  v210 = v50;
  v211 = v51;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v199 = &v191 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v213 = &v191 - v55;
  v56 = specialized static AffinityScorerUtils.getTask(_:)();
  if (v56)
  {
    v193 = v9;
    v192 = v6;
    v212 = v56;
    v57 = USOParse.userParse.getter();
    v58 = v45;
    v59 = MEMORY[0x1E129C0F0](v57);
    (*(v42 + 8))(v45, v41);
    v60 = *(v59 + 16);
    if (!v60)
    {
LABEL_7:

      v62 = 1;
      goto LABEL_13;
    }

    v61 = 0;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      (*(v37 + 16))(v40, v59 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v61, v36);
      v58 = v40;
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        break;
      }

      ++v61;
      (*(v37 + 8))(v40, v36);
      if (v60 == v61)
      {
        goto LABEL_7;
      }
    }

    (*(v37 + 32))(v49, v40, v36);
    v62 = 0;
LABEL_13:
    (*(v37 + 56))(v49, v62, 1, v36);
    v68 = (*(v37 + 48))(v49, 1, v36);
    v69 = v215;
    if (v68 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Logger.executor);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v67 = 2;
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1DC659000, v71, v72, "SettingsAffinityScorer Could not extract userStatedTask", v73, 2u);
        MEMORY[0x1E12A2F50](v73, -1, -1);

        return v67;
      }

      return 2;
    }

    v74 = v200;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v37 + 8))(v49, v36);
    v75 = v199;
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v201 + 8))(v74, v202);
    (*(v211 + 32))(v213, v75, v210);
    UsoTask.firstCommonSettingReferenceIdentifier()(0x636E657265666572, 0xE900000000000065, partial apply for closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier(), v69);
    v76 = v209;
    UsoTask.firstUserEntityNamesIdentifier()(v209);
    UsoTask.firstCommonSettingReferenceIdentifier()(0x797469746E65, 0xE600000000000000, partial apply for closure #1 in closure #1 in UsoTask.firstEntityNameIdentifier(), v214);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    v78 = __swift_project_value_buffer(v77, static Logger.executor);
    v79 = v203;
    outlined init with copy of ReferenceResolutionClientProtocol?(v69, v203, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    v82 = os_log_type_enabled(v80, v81);
    v202 = v78;
    if (v82)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v219[0] = v84;
      *v83 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v79, v207, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v85 = String.init<A>(describing:)();
      v87 = v86;
      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v219);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_1DC659000, v80, v81, "SettingsAffinityScorer settingIdentifier: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      MEMORY[0x1E12A2F50](v83, -1, -1);
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    v89 = v204;
    outlined init with copy of ReferenceResolutionClientProtocol?(v76, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v219[0] = v93;
      *v92 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v89, v207, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v94 = String.init<A>(describing:)();
      v96 = v95;
      outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v219);

      *(v92 + 4) = v97;
      _os_log_impl(&dword_1DC659000, v90, v91, "SettingsAffinityScorer userEntityIdentifier: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1E12A2F50](v93, -1, -1);
      MEMORY[0x1E12A2F50](v92, -1, -1);
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    v98 = v205;
    outlined init with copy of ReferenceResolutionClientProtocol?(v214, v205, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v219[0] = v102;
      *v101 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v98, v207, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v103 = String.init<A>(describing:)();
      v105 = v104;
      outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, v219);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_1DC659000, v99, v100, "SettingsAffinityScorer entityIdentifier: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x1E12A2F50](v102, -1, -1);
      MEMORY[0x1E12A2F50](v101, -1, -1);
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    if (UsoTask.isBatterySummarizationOverride(for:)(v206))
    {
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_1DC659000, v107, v108, "SettingsAffinityScorer detected battery summerization override case", v109, 2u);
        MEMORY[0x1E12A2F50](v109, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      (*(v211 + 8))(v213, v210);
      outlined destroy of ReferenceResolutionClientProtocol?(v215, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      return 4;
    }

    v110 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v111 = 0;
    v112 = *(v110 + 16);
    v113 = (v216 + 8);
    while (v112 != v111)
    {
      if (v111 >= *(v110 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      (*(v216 + 16))(v217, v110 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v111, v218);
      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0xD000000000000017 && 0x80000001DCA880D0 == v115)
      {

        (*v113)(v217, v218);
LABEL_43:

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          v119 = "SettingsAffinityScorer detected identifier with Settings backingAppBundleID";
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      ++v111;
      v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v113)(v217, v218);
      if (v114)
      {
        goto LABEL_43;
      }
    }

    v49 = type metadata accessor for UsoIdentifier();
    v40 = *(v49 - 1);
    v122 = *(v40 + 6);
    v123 = v215;
    v124 = v122(v215, 1, v49);
    v125 = v198;
    if (v124 != 1)
    {
      if (v122(v209, 1, v49) != 1)
      {
        v141 = v195;
        outlined init with copy of ReferenceResolutionClientProtocol?(v215, v195, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v142 = v196;
        outlined init with copy of ReferenceResolutionClientProtocol?(v209, v196, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          LODWORD(v217) = v144;
          v146 = v145;
          v218 = swift_slowAlloc();
          v219[0] = v218;
          *v146 = 136315394;
          v147 = v207;
          outlined init with copy of ReferenceResolutionClientProtocol?(v141, v207, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v148 = String.init<A>(describing:)();
          v150 = v149;
          outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, v219);

          *(v146 + 4) = v151;
          *(v146 + 12) = 2080;
          outlined init with copy of ReferenceResolutionClientProtocol?(v142, v147, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v152 = String.init<A>(describing:)();
          v154 = v153;
          outlined destroy of ReferenceResolutionClientProtocol?(v142, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v219);

          *(v146 + 14) = v155;
          _os_log_impl(&dword_1DC659000, v143, v217, "SettingsAffinityScorer Found matching setting identifier %s paired with a matching user entity identifier %s", v146, 0x16u);
          v156 = v218;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v156, -1, -1);
          MEMORY[0x1E12A2F50](v146, -1, -1);
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v142, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        (*(v211 + 8))(v213, v210);
        goto LABEL_47;
      }

      v126 = UsoTask.hasUserEntities()();
      v123 = v215;
      if (v126)
      {
        goto LABEL_51;
      }

      v127 = v194;
      outlined init with copy of ReferenceResolutionClientProtocol?(v215, v194, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v219[0] = v131;
        *v130 = 136315138;
        v132 = v127;
        outlined init with copy of ReferenceResolutionClientProtocol?(v127, v207, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v133 = String.init<A>(describing:)();
        v135 = v134;
        v136 = v132;
        v123 = v215;
        outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, v219);

        *(v130 + 4) = v137;
        _os_log_impl(&dword_1DC659000, v128, v129, "SettingsAffinityScorer Found matching setting identifier %s on a parse without UserEntities", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        MEMORY[0x1E12A2F50](v131, -1, -1);
        MEMORY[0x1E12A2F50](v130, -1, -1);
      }

      else
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      (*(v211 + 8))(v213, v210);
      goto LABEL_88;
    }

LABEL_51:
    outlined init with copy of ReferenceResolutionClientProtocol?(v123, v125, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    if (v122(v125, 1, v49) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      goto LABEL_66;
    }

    v138 = UsoIdentifier.value.getter();
    v140 = v139;
    (*(v40 + 1))(v125, v49);
    if (v138 == 0xD000000000000011 && 0x80000001DCA880B0 == v140)
    {

      goto LABEL_63;
    }

    v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v157)
    {
LABEL_63:
      if (specialized SettingsAffinityScorer.isIdentifierMatchScreen(on:)())
      {
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          v119 = "SettingsAffinityScorer Found 'displayBrightness' identifier paired with 'screen' identifier";
LABEL_45:
          _os_log_impl(&dword_1DC659000, v116, v117, v119, v118, 2u);
          MEMORY[0x1E12A2F50](v118, -1, -1);
        }

LABEL_46:

        outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        (*(v211 + 8))(v213, v210);
LABEL_47:
        v120 = v215;
        goto LABEL_48;
      }
    }

LABEL_66:
    v158 = v197;
    outlined init with copy of ReferenceResolutionClientProtocol?(v214, v197, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    if (v122(v158, 1, v49) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v158, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      goto LABEL_68;
    }

    v163 = UsoIdentifier.value.getter();
    v164 = v158;
    v165 = v163;
    v167 = v166;
    (*(v40 + 1))(v164, v49);
    if (v165 == 0xD000000000000011 && 0x80000001DCA880B0 == v167)
    {

      goto LABEL_79;
    }

    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v177)
    {
LABEL_79:
      v116 = Logger.logObject.getter();
      v178 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v116, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_1DC659000, v116, v178, "SettingsAffinityScorer Found 'displayBrightness' identifier alone on entity without reference", v179, 2u);
        MEMORY[0x1E12A2F50](v179, -1, -1);
      }

      goto LABEL_46;
    }

LABEL_68:
    v159 = v215;
    if (v122(v215, 1, v49) != 1)
    {
      v168 = v193;
      outlined init with copy of ReferenceResolutionClientProtocol?(v159, v193, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v219[0] = v172;
        *v171 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v168, v207, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v173 = String.init<A>(describing:)();
        v175 = v174;
        outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v175, v219);

        *(v171 + 4) = v176;
        _os_log_impl(&dword_1DC659000, v169, v170, "SettingsAffinityScorer Found matching setting identifier %s on a parse with UserEntities for another domain", v171, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v172);
        MEMORY[0x1E12A2F50](v172, -1, -1);
        MEMORY[0x1E12A2F50](v171, -1, -1);
        v159 = v215;
      }

      else
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      (*(v211 + 8))(v213, v210);
      outlined destroy of ReferenceResolutionClientProtocol?(v159, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v209, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      return 2;
    }

    static UsoTask_CodegenConverter.convert(task:)();

    if (v219[3])
    {
      type metadata accessor for UsoTask_noVerb_common_Setting();
      if (swift_dynamicCast())
      {

        v58 = v192;
        outlined init with copy of ReferenceResolutionClientProtocol?(v214, v192, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v122(v58, 1, v49) == 1)
        {
          v160 = &_s12SiriOntology13UsoIdentifierVSgMd;
          v161 = &_s12SiriOntology13UsoIdentifierVSgMR;
          v162 = v58;
          goto LABEL_90;
        }

LABEL_96:
        v183 = v58;
        v184 = UsoIdentifier.value.getter();
        v186 = v185;
        (*(v40 + 1))(v183, v49);
        if (v184 == 0x79726574746162 && v186 == 0xE700000000000000)
        {

          v123 = v215;
        }

        else
        {
LABEL_100:
          v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v123 = v215;
          if ((v187 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        if ((UsoTask.hasUserEntities()() & 1) == 0)
        {
          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            *v190 = 0;
            _os_log_impl(&dword_1DC659000, v188, v189, "SettingsAffinityScorer Found 'battery' identifier alone without reference or user entity", v190, 2u);
            MEMORY[0x1E12A2F50](v190, -1, -1);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          (*(v211 + 8))(v213, v210);
LABEL_88:
          v120 = v123;
LABEL_48:
          outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v209, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          return 3;
        }

LABEL_92:
        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          *v182 = 0;
          _os_log_impl(&dword_1DC659000, v180, v181, "SettingsAffinityScorer Found no relevant identifiers", v182, 2u);
          MEMORY[0x1E12A2F50](v182, -1, -1);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v214, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        (*(v211 + 8))(v213, v210);
        outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v209, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        return 1;
      }
    }

    else
    {
      v160 = &_sypSgMd;
      v161 = &_sypSgMR;
      v162 = v219;
LABEL_90:
      outlined destroy of ReferenceResolutionClientProtocol?(v162, v160, v161);
    }

    v123 = v215;
    goto LABEL_92;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.executor);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v64, v65))
  {

    return 2;
  }

  v66 = swift_slowAlloc();
  *v66 = 0;
  _os_log_impl(&dword_1DC659000, v64, v65, "SettingsAffinityScorer Could not extract usoTask from parse", v66, 2u);
  MEMORY[0x1E12A2F50](v66, -1, -1);

  return 2;
}

uint64_t specialized SettingsAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for USOParse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  Input.parse.getter();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x1E69D0138])
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    if (v15 <= 0.5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.executor);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_31;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "SettingsAffinityScorer ignoring low confidence pommes response";
      goto LABEL_30;
    }

    v16 = dispatch thunk of PommesResponse.experiences.getter();
    if (v16 >> 62)
    {
      v31 = v16;
      v32 = __CocoaSet.count.getter();
      v16 = v31;
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E12A1FE0](0);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

      type metadata accessor for DeviceExpertExperience();
      if (swift_dynamicCastClass())
      {

        return 3;
      }

LABEL_27:
      if (one-time initialization token for executor == -1)
      {
LABEL_28:
        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.executor);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v23, v24))
        {
LABEL_31:

          return 0;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "SettingsAffinityScorer ignoring unsupported pommes response";
LABEL_30:
        _os_log_impl(&dword_1DC659000, v23, v24, v26, v25, 2u);
        MEMORY[0x1E12A2F50](v25, -1, -1);
        goto LABEL_31;
      }

LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v13 == *MEMORY[0x1E69D0168])
  {
    (*(v9 + 96))(v12, v8);
    (*(v4 + 32))(v7, v12, v3);
    v20 = specialized SettingsAffinityScorer.scoreForEnvironmentOrAtmosphereIdentifiers(parse:environment:)();
    if (v20 == 5)
    {
      v21 = specialized SettingsAffinityScorer.scoreForSupportedIdentifierMatches(parse:environment:)(v7, a2);
    }

    else
    {
      v21 = v20;
    }

    (*(v4 + 8))(v7, v3);
    return v21;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "SettingsAffinityScorer Got unexpected parse", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return 2;
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), void (*a3)(uint64_t, unint64_t), unint64_t *a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v11 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        a3(i, a1);
        type metadata accessor for OS_dispatch_queue(0, a4, a5);
        swift_dynamicCast();
        v22 = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          v20(v14 > 1, v15 + 1, 1);
          v11 = v22;
        }

        *(v11 + 16) = v15 + 1;
        outlined init with take of Any(v21, (v11 + 32 * v15 + 32));
      }
    }

    else
    {
      v16 = (a1 + 32);
      type metadata accessor for OS_dispatch_queue(0, a4, a5);
      do
      {
        v17 = *v16;
        swift_dynamicCast();
        v22 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          v20(v18 > 1, v19 + 1, 1);
          v11 = v22;
        }

        *(v11 + 16) = v19 + 1;
        outlined init with take of Any(v21, (v11 + 32 * v19 + 32));
        ++v16;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t SharedContextServiceImpl.__allocating_init(bridge:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharedContextServiceImpl._fetchContext(with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  v6 = *MEMORY[0x1E698D068];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(*v2 + 104);

  v10(v8, 1, partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Any]?) -> (), v9);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Any]?) -> ()(unint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBuffer._getElementSlowPath(_:), &lazy cache variable for type metadata for AFServiceDeviceContext, 0x1E698D1D8);
  }

  else
  {
    v3 = 0;
  }

  a2(v3);
}

uint64_t SharedContextServiceImpl.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFServiceDeviceContext, 0x1E698D1D8);
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v6 = 0xD000000000000046;
    v5 = 0x80000001DCA88170;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  _StringGuts.grow(_:)(82);
  v5 = 0x80000001DCA88120;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x1E12A1580](v6, v5);
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v8);

  MEMORY[0x1E12A1580](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t SharedFlowPluginConnection.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SharedFlowPluginConnection.bundlePath.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *SharedFlowPluginConnection.__allocating_init(initialRemoteConversation:bundleId:bundlePath:sharedFlowPluginServiceClient:loadedConversationSerial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[6] = a1;
  v16[7] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[8] = 0;
  v16[9] = a7;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(30);

  MEMORY[0x1E12A1580](a3, a4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  swift_unknownObjectRelease();
  type metadata accessor for InterruptibleTaskManager();
  v17 = swift_allocObject();
  v17[4] = MEMORY[0x1E69E7CC8];
  v17[5] = 0;
  v17[2] = 0xD00000000000001BLL;
  v17[3] = 0x80000001DCA881C0;
  v16[10] = a8;
  v16[11] = v17;
  return v16;
}

void *SharedFlowPluginConnection.init(initialRemoteConversation:bundleId:bundlePath:sharedFlowPluginServiceClient:loadedConversationSerial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a1;
  v8[7] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[8] = 0;
  v8[9] = a7;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(30);

  MEMORY[0x1E12A1580](a3, a4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  swift_unknownObjectRelease();
  type metadata accessor for InterruptibleTaskManager();
  v12 = swift_allocObject();
  v12[4] = MEMORY[0x1E69E7CC8];
  v12[5] = 0;
  v12[2] = 0xD00000000000001BLL;
  v12[3] = 0x80000001DCA881C0;
  v8[10] = a8;
  v8[11] = v12;
  return v8;
}

uint64_t closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4[11] = v5;
  v4[12] = *(v5 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[15] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v6, 0);
}

uint64_t closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Loading a new RemoteConversation object, since the connection to SharedFlowPluginService was previously invalidated.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[10];

  v0[16] = v6[9];
  v0[17] = v6[2];
  v0[18] = v6[3];
  v0[19] = v6[4];
  v0[20] = v6[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = static MessageBusActor.shared;
  v0[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v8, 0);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v7 = v0[11];
  v6 = v0[12];
  outlined init with copy of UUID?(v0[14], v5);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v0[22] = v9;
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = 0;
  v9[7] = 0;
  outlined init with take of UUID?(v5, v9 + v8);

  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  v11 = v0[16];

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(&async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v9);
}

{
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];

  outlined destroy of UUID?(v2);

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v3, 0);
}

{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[4];
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[13];
    v7 = v0[9];
    v6 = v0[10];

    v8 = *(v6 + 48);
    *(v6 + 48) = v1;
    *(v6 + 56) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v7 = v1;
    v7[1] = v2;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v13 = v0 + 17;
    v12 = v0[17];
    v11 = v13[1];
    _StringGuts.grow(_:)(75);
    MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA88260);
    MEMORY[0x1E12A1580](v12, v11);
    MEMORY[0x1E12A1580](0xD00000000000001DLL, 0x80000001DCA88290);

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/SharedFlowPluginService/SharedFlowPluginConnection.swift", 144, 2, 93);
  }
}

{
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];

  outlined destroy of UUID?(v2);

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v3, 0);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[23];
  v7 = v4[22];
  v8 = *v3;
  v5[24] = a1;
  v5[25] = v2;

  v9 = v4[21];
  if (v2)
  {
    v10 = closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v10 = closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

SiriKitRuntime::RemoteConversationConnectionInvalidationResult __swiftcall SharedFlowPluginConnection.invalidate()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Invalidating RemoteConversation XPC connection.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v1[11];
  swift_beginAccess();
  v7 = *(*(v6 + 32) + 16) == 0;
  v8 = v1[8];
  v1[8] = 0;

  v9 = v1[6];
  v1[6] = 0;
  v1[7] = 0;
  swift_unknownObjectRelease();
  InterruptibleTaskManager.invalidate()();
  return v7;
}

uint64_t partial apply for closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
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

  return closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v5, v6, v7, v8);
}

uint64_t SharedFlowPluginService.WarmupTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SharedFlowPluginService.CurrentTurnCache.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SharedFlowPluginService.__allocating_init(overrideFlowLoader:overrideSiriKitRuntime:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(a1, a2);
  return v4;
}

void *SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 56) = AFIsInternalInstall();
  type metadata accessor for SharedFlowPluginService.WarmupTracker();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  v3[9] = v6;
  type metadata accessor for SharedFlowPluginService.CurrentTurnCache();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v3[10] = v7;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  Logger.debugF(file:function:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v12, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMd, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMR);
  if (!*(&v13 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v12, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMd, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMR);
    v10 = type metadata accessor for DirectFlowPluginLoaderImpl();
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x1E69E7CC8];
    v3[5] = v10;
    v3[6] = &protocol witness table for DirectFlowPluginLoaderImpl;
    v3[2] = v11;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v12, v15);
  outlined init with take of ReferenceResolutionClientProtocol(v15, (v3 + 2));
  if (!a2)
  {
LABEL_5:
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    type metadata accessor for SiriKitRuntimeState();
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    swift_allocObject();
    a2 = SiriKitRuntimeState.init(customEventSender:rrClient:)(v15, &v12);
  }

LABEL_6:
  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMd, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMR);
  v3[8] = a2;
  return v3;
}

uint64_t SharedFlowPluginService.startTurn(turnData:bridge:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.executor);
  Logger.debugF(file:function:)();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a1;
  v15[4] = a2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:);
  v17[5] = v15;
  v17[6] = a3;
  v17[7] = a4;

  v18 = a1;
  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:), v17);
}

id SharedFlowPluginService.CurrentTurnCache.set(_:)(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  return a1;
}

void SharedFlowPluginService.postSelectedFlowPlugin(bundleId:)(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v6 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA88550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x67756C50776F6C46;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEA00000000006E69;
      *(inited + 48) = a1;
      *(inited + 56) = a2;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
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
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 136315138;
        v13 = Dictionary.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1DC659000, v9, v10, "Posting notification with params: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E12A2F50](v12, -1, -1);
        MEMORY[0x1E12A2F50](v11, -1, -1);
      }

      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      if (DistributedCenter)
      {
        v17 = DistributedCenter;
        v18 = v6;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        CFNotificationCenterPostNotification(v17, v18, 0, isa, 1u);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t SharedFlowPluginService.endTurn(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);
  Logger.debugF(file:function:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = one-time initialization token for shared;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  v14 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in SharedFlowPluginService.endTurn(reply:), v15);
}

uint64_t closure #1 in SharedFlowPluginService.endTurn(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.endTurn(reply:), v7, 0);
}

uint64_t closure #1 in SharedFlowPluginService.endTurn(reply:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 80);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  v1();
  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall SharedFlowPluginService.CurrentTurnCache.reset()()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t SharedFlowPluginService.CurrentTurnCache.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t SharedFlowPluginService.CurrentTurnCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter, v7);
}

uint64_t closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter, 0, 0);
}

{
  specialized static SharedFlowPluginService.WarmupTracker.warmup()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedFlowPluginService.WarmupTracker.ensureWarmedUp()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](SharedFlowPluginService.WarmupTracker.ensureWarmedUp(), v0, 0);
}

{
  v1 = v0[2];
  v2 = SharedFlowPluginService.WarmupTracker.warmupTask.getter();
  v0[3] = v2;
  v3 = *(MEMORY[0x1E69E86C0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = SharedFlowPluginService.WarmupTracker.ensureWarmedUp();
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v4, v2, v5);
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, v3, 0);
}

Swift::Void __swiftcall SharedFlowPluginService.WarmupTracker.beginWarmupIfNeeded()()
{
  SharedFlowPluginService.WarmupTracker.warmupTask.getter();
}

uint64_t SharedFlowPluginService.WarmupTracker.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SharedFlowPluginService.WarmupTracker.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SharedFlowPluginService.WarmupTracker.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t *SharedFlowPluginService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  return v0;
}

uint64_t SharedFlowPluginService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in SharedFlowPluginService.endTurn(reply:)(uint64_t a1)
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

  return closure #1 in SharedFlowPluginService.endTurn(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of SharedFlowPluginService.WarmupTracker.ensureWarmedUp()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t partial apply for closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter();
}

void specialized static SharedFlowPluginService.WarmupTracker.warmup()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, v1, v2, "SharedFlowPluginService: warmup begin", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Start preloading CAT.", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  [objc_opt_self() preload];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "CAT preloaded.", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v10, "SharedFlowPluginService: warmup end", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }
}

BOOL partial apply for closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)()
{
  v1 = *(v0 + 24);
  return closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(*(v0 + 16));
}

{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    return 1;
  }

  v2 = MKBGetDeviceLockState();
  return v2 != 3 && v2 != 0;
}

void *SharedFlowPluginServiceClient.__allocating_init(connectionProvider:onConnectionInterrupted:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = specialized SharedFlowPluginServiceClient.__allocating_init(connectionProvider:onConnectionInterrupted:)(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4[9] = v5;
  v4[10] = *(v5 + 64);
  v4[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[12] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v6, 0);
}

uint64_t SharedFlowPluginServiceClient.startTurn(turnData:bridge:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v10 = *(v0 + 48);
  outlined init with copy of RemoteConversationTurnData(*(v0 + 40), v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  *(v0 + 104) = v6;
  outlined init with take of RemoteConversationTurnData(v2, v6 + v4);
  *(v6 + v5) = v10;
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = SharedFlowPluginServiceClient.startTurn(turnData:bridge:);
  v8 = *(v0 + 64);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(v7, &async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = SharedFlowPluginServiceClient.startTurn(turnData:bridge:);
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);

    v5 = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v8[13] = v9;
  v8[14] = *(v9 + 64);
  v8[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v8[16] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v10, 0);
}

uint64_t SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  outlined init with copy of UUID?(v0[11], v1);
  v9 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v10 = swift_allocObject();
  v0[17] = v10;
  v10[2] = v8;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v3;
  outlined init with take of UUID?(v1, v10 + v9);

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  v12 = v0[12];

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(&closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)partial apply, v10);
}

{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];
  v5 = v0[20];
  v4 = v0[21];

  return v3(v4, v5);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = v6[16];
    v10 = SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  }

  else
  {
    v12 = v6[16];
    v11 = v6[17];

    v6[20] = a2;
    v6[21] = a1;
    v10 = SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

void *SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(v13, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v15;
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.invalidate()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v4 = (v0 + 16);
  v3 = *(v0 + 16);
  if (v3)
  {
    v5 = *(v0 + 24);
    v6 = v3;
    swift_unknownObjectRetain();
    [v6 invalidate];
    swift_unknownObjectRelease();

    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    *v4 = 0;
    *(v1 + 24) = 0;

    outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v7);
  }
}

uint64_t SharedFlowPluginServiceClient.handleInvalidation()()
{
  *(v1 + 64) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 72) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = *(v1 + 48);
  *(v0 + 88) = v3;
  v4 = swift_beginAccess();
  *(v0 + 96) = *(*(v3 + 32) + 16);
  v7 = *(v1 + 16);
  v6 = v1 + 16;
  v5 = v7;
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = *(v8 + 24);
    v10 = v5;
    swift_unknownObjectRetain();
    [v10 invalidate];

    swift_unknownObjectRelease();
    v11 = *v6;
    v12 = *(v8 + 24);
    *v6 = 0;
    *(v6 + 8) = 0;
    v4 = outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v11);
  }

  v13 = *(*(v0 + 64) + 32);
  *(v0 + 104) = v13;
  v14 = (*(*v13 + 136))(v4);
  *(v0 + 112) = v14;
  v15 = *(v14 + 16);
  *(v0 + 120) = v15;
  if (v15)
  {
    v16 = 0;
    v17 = (*v13 + 120) & 0xFFFFFFFFFFFFLL | 0x41FB000000000000;
    *(v0 + 128) = *(*v13 + 120);
    *(v0 + 136) = v17;
    *(v0 + 200) = 0;
    while (1)
    {
      *(v0 + 144) = v16;
      v18 = *(v0 + 112);
      if (v16 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v19 = *(v0 + 136);
      v20 = *(v0 + 104);
      v21 = (*(v0 + 128))(*(v18 + 8 * v16 + 32));
      *(v0 + 152) = v21;
      if (v21)
      {
        break;
      }

      v16 = *(v0 + 144) + 1;
      if (v16 == *(v0 + 120))
      {
        v22 = *(v0 + 112);

        v23 = *(v0 + 200);
        goto LABEL_11;
      }
    }

    return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v21, 0);
  }

  else
  {

    v23 = 0;
LABEL_11:
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);

    InterruptibleTaskManager.invalidate()();
    if ((v23 & 1) != 0 || v25)
    {
      v27 = *(v0 + 80);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DC659000, v28, v29, "Shared flow plugin service was invalidated while we had active calls. Triggering onConnectionInterrupted handler.", v30, 2u);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      v31 = *(v0 + 64);

      v33 = *(v31 + 96);
      v32 = *(v31 + 104);
      v34 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
      v33();
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

{
  v1 = v0[19];
  v2 = v1[19];
  v0[20] = v2;
  v3 = v1[20];
  v0[21] = v3;
  v0[22] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[23] = *(v3 + 24);
  v0[24] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v4, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 72);
  *(v0 + 201) = (*(v0 + 184))(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v3, 0);
}

{
  v1 = *(v0 + 201);
  v2 = *(v0 + 152);

  if (v1)
  {
    goto LABEL_7;
  }

  v6 = *(v0 + 144) + 1;
  if (v6 == *(v0 + 120))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);

    InterruptibleTaskManager.invalidate()();
    goto LABEL_10;
  }

  *(v0 + 200) = 1;
  do
  {
    *(v0 + 144) = v6;
    v10 = *(v0 + 112);
    if (v6 >= *(v10 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v3, v4, v5);
    }

    v11 = *(v0 + 136);
    v12 = *(v0 + 104);
    v3 = (*(v0 + 128))(*(v10 + 8 * v6 + 32));
    *(v0 + 152) = v3;
    if (v3)
    {
      v4 = v3;
      v3 = SharedFlowPluginServiceClient.handleInvalidation();
      v5 = 0;

      return MEMORY[0x1EEE6DFA0](v3, v4, v5);
    }

LABEL_7:
    v6 = *(v0 + 144) + 1;
  }

  while (v6 != *(v0 + 120));
  v13 = *(v0 + 112);

  v14 = *(v0 + 200);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 72);

  InterruptibleTaskManager.invalidate()();
  if ((v14 & 1) != 0 || v15)
  {
LABEL_10:
    v18 = *(v0 + 80);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "Shared flow plugin service was invalidated while we had active calls. Triggering onConnectionInterrupted handler.", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v22 = *(v0 + 64);

    v24 = *(v22 + 96);
    v23 = *(v22 + 104);
    v25 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
    v24();
  }

  v26 = *(v0 + 8);

  return v26();
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.kill()()
{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);
    v5 = v2;
    swift_unknownObjectRetain();
    [v5 _killConnection_];
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  Logger.debugF(file:function:)();
  if (*v3)
  {
    v7 = *(v1 + 24);
    v8 = *v3;
    swift_unknownObjectRetain();
    [v8 invalidate];
    swift_unknownObjectRelease();

    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    *v3 = 0;
    *(v3 + 8) = 0;

    outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v9);
  }
}

unint64_t SharedFlowPluginServiceConnectionError.description.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000004DLL;
  }

  else
  {
    return 0xD00000000000003ALL;
  }
}

uint64_t closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v8 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v9);
}

uint64_t closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 96) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v5, 0);
}

uint64_t closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to SharedFlowPluginXPCServer got invalidated", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[11];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 16);
    if (v7)
    {
      v8 = v7;

      v9 = [v8 processIdentifier];

      if (!v9)
      {
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1DC659000, v10, v11, "Execution process PID return is 0. Most likely the connection\ncould not be established to begin with", v12, 2u);
          MEMORY[0x1E12A2F50](v12, -1, -1);
        }
      }
    }

    else
    {
    }
  }

  v13 = v0[11];
  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  v0[13] = v14;
  if (v14)
  {
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);

    return SharedFlowPluginServiceClient.handleInvalidation()();
  }

  else
  {
    v17 = v0[12];

    v18 = v0[1];

    return v18();
  }
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v3, 0);
}

{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #3 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, v1, v2, "SharedFlowPluginService crashed. It is unlikely that this is a platform bug: it usually indicates a fatal error in a flow plugin. Check device crashlogs to inspect cause.", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    Logger.debugF(file:function:)();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v5 + 24);
      v8 = v6;
      swift_unknownObjectRetain();
      [v8 invalidate];
      swift_unknownObjectRelease();

      v9 = *(v5 + 16);
      v10 = *(v5 + 24);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v9);
    }
  }

  return result;
}

void closure #4 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(void *a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DC659000, oslog, v4, "Cannot set up connection with SharedFlowPluginService:\n%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.getLoadedConversation(serial:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);

  v7(&v11, v9);

  return v11;
}

void *SharedFlowPluginServiceClient.LoadedConversationTracker.knownSerials.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, v1);

  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.LoadedConversationTracker.removeAll()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SharedFlowPluginServiceClient.deinit()
{
  v1 = *(v0 + 24);
  outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(*(v0 + 16));
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v4 = *(v0 + 104);

  return v0;
}

uint64_t SharedFlowPluginServiceClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(*(v0 + 16));
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v4 = *(v0 + 104);

  return swift_deallocClassInstance();
}

NSXPCConnection_optional __swiftcall SharedFlowPluginServiceXPCConnectionProvider.getXPCConnection()()
{
  v0 = [objc_opt_self() currentContext];
  v1 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v2 = [v0 createXPCConnectionWithMachServiceName:v1 options:0];

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

id protocol witness for SharedFlowPluginServiceXPCConnectionProviding.getXPCConnection() in conformance SharedFlowPluginServiceXPCConnectionProvider()
{
  v0 = [objc_opt_self() currentContext];
  v1 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v2 = [v0 createXPCConnectionWithMachServiceName:v1 options:0];

  return v2;
}

Swift::Int SharedFlowPluginServiceConnectionError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharedFlowPluginServiceConnectionError()
{
  if (*v0)
  {
    result = 0xD00000000000004DLL;
  }

  else
  {
    result = 0xD00000000000003ALL;
  }

  *v0;
  return result;
}

void *specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[10] = a5;
  a4[11] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 7);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for SharedFlowPluginServiceClient.LoadedConversationTracker();
  a4[2] = 0;
  a4[3] = 0;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  a4[4] = v12;
  a4[5] = 0;
  type metadata accessor for InterruptibleTaskManager();
  v14 = swift_allocObject();
  v14[4] = v13;
  v14[5] = 0;
  v14[2] = 0xD00000000000001DLL;
  v14[3] = 0x80000001DCA754B0;
  a4[6] = v14;
  a4[12] = a2;
  a4[13] = a3;
  return a4;
}

void *specialized SharedFlowPluginServiceClient.__allocating_init(connectionProvider:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  return specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(v14, a2, a3, v15, a5, a6);
}

uint64_t outlined init with copy of RemoteConversationTurnData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConversationTurnData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v13 = v2 + ((*(v6 + 80) + 64) & ~*(v6 + 80));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(a1, a2, v7, v8, v9, v10, v11, v12);
}

uint64_t partial apply for closure #1 in SharedFlowPluginServiceClient.LoadedConversationTracker.registerLoadedConversation(_:serial:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t destroy for SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection(uint64_t a1)
{
  v2 = *(a1 + 8);

  return swift_unknownObjectRelease();
}

uint64_t assignWithCopy for SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v6);
}

id SharedFlowPluginXPCServer.init()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)();
  type metadata accessor for SharedFlowPluginService();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  swift_allocObject();
  SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(v7, 0);
  v2 = objc_allocWithZone(type metadata accessor for SharedFlowPluginXPCServer.Listener());

  *&v0[OBJC_IVAR___SKRSharedFlowPluginXPCServer_listener] = specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(v3, v2);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SharedFlowPluginXPCServer();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t SharedFlowPluginXPCServer.Listener.__allocating_init(sharedFlowPluginService:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized SharedFlowPluginXPCServer.Listener.__allocating_init(sharedFlowPluginService:)(a1);
}

id one-time initialization function for xpcInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_1F584B370;
  v2 = [v0 interfaceWithProtocol_];

  if (one-time initialization token for remoteConversationXPCInterface != -1)
  {
    swift_once();
  }

  [v2 setInterface:static RemoteConversationXPCHelper.remoteConversationXPCInterface forSelector:sel_startTurnWithTurnData_bridge_reply_ argumentIndex:1 ofReply:0];
  result = [v2 setInterface:static RemoteConversationXPCHelper.remoteConversationXPCInterface forSelector:sel_loadFlowPluginWithBundleId_bundlePath_rcId_hypothesisId_reply_ argumentIndex:0 ofReply:1];
  static SharedFlowPluginXPCServer.xpcInterface = v2;
  return result;
}

uint64_t one-time initialization function for xpcConnectionQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v15[0] = "SharedFlowPluginXPCServer.swift";
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8098], v9);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F88], v4);
  static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v8, v4);
  static DispatchQoS.unspecified.getter();
  v15[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static SharedFlowPluginXPCServer.Listener.xpcConnectionQueue = result;
  return result;
}

uint64_t *SharedFlowPluginXPCServer.Listener.xpcConnectionQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for xpcConnectionQueue != -1)
  {
    swift_once();
  }

  return &static SharedFlowPluginXPCServer.Listener.xpcConnectionQueue;
}

uint64_t SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(a1, v1);
}

id SharedFlowPluginXPCServer.Listener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedFlowPluginXPCServer.Listener.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized SharedFlowPluginXPCServer.Listener.__allocating_init(sharedFlowPluginService:)(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for SharedFlowPluginXPCServer.Listener());

  return specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(a1, v2);
}

uint64_t specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_sharedFlowPluginService] = a1;
  v3 = objc_opt_self();

  v4 = [v3 currentContext];
  v5 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v6 = [v4 createXPCListenerWithMachServiceName_];

  if (v6)
  {

    *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_listener] = v6;
    v10.receiver = a2;
    v10.super_class = type metadata accessor for SharedFlowPluginXPCServer.Listener();
    v7 = v6;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setDelegate_];
    [v7 resume];

    return v8;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000001ELL, 0x80000001DCA888B0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/SharedFlowPluginService/SharedFlowPluginXPCServer.swift", 143, 2, 67);
    __break(1u);
  }

  return result;
}

{
  *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_sharedFlowPluginService] = a1;
  v3 = objc_opt_self();
  swift_unknownObjectRetain();
  v4 = [v3 currentContext];
  v5 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v6 = [v4 createXPCListenerWithMachServiceName_];

  if (v6)
  {
    swift_unknownObjectRelease();
    *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_listener] = v6;
    v10.receiver = a2;
    v10.super_class = type metadata accessor for SharedFlowPluginXPCServer.Listener();
    v7 = v6;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setDelegate_];
    [v7 resume];

    return v8;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000001ELL, 0x80000001DCA888B0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/SharedFlowPluginService/SharedFlowPluginXPCServer.swift", 143, 2, 67);
    __break(1u);
  }

  return result;
}

uint64_t specialized SharedFlowPluginXPCServer.Listener.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "SharedFlowPluginXPCServer accepting new connection", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if (one-time initialization token for xpcInterface != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  if (one-time initialization token for xpcConnectionQueue != -1)
  {
    swift_once();
  }

  [a1 _setQueue_];
  [a1 resume];
  return 1;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t SimpleOrderedDictionary.init()()
{
  v0 = Dictionary.init()();
  Array.init()();
  return v0;
}

uint64_t SimpleOrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  MEMORY[0x1E12A1380](a2, *v3, v6, v11, *(a3 + 32), v18);
  v26 = (*(*(v11 - 8) + 48))(v20, 1, v11);
  v28 = v13[1];
  v28(v20, v12);
  v30 = v7;
  v21 = *(v7 + 16);
  v22 = v27;
  v25 = v21;
  v21(v27, a2, v6);
  v23 = v13[2];
  v29 = v12;
  v23(v16, v31, v12);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  if (v26 == 1)
  {
    v25(v22, a2, v6);
    type metadata accessor for Array();
    Array.append(_:)();
  }

  (*(v30 + 8))(a2, v6);
  return (v28)(v31, v29);
}

uint64_t SimpleOrderedDictionary.snapshot()(uint64_t a1)
{

  return a1;
}

uint64_t SimpleOrderedDictionary.values()()
{
  return SimpleOrderedDictionary.values()();
}

{
  type metadata accessor for Array();

  swift_getWitnessTable();
  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

uint64_t SimpleOrderedDictionary.wrappedDict.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SimpleOrderedDictionary.insertionOrder.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t key path setter for SimpleOrderedDictionary.subscript(_:) : <A, B>SimpleOrderedDictionary<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(*(v6 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  (*(v19 + 16))(&v22 - v17, a3, v6, v16);
  (*(v10 + 16))(v13, a1, v9);
  v20 = type metadata accessor for SimpleOrderedDictionary();
  return SimpleOrderedDictionary.subscript.setter(v13, v18, v20);
}

void (*SimpleOrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = a3[3];
  v11 = type metadata accessor for Optional();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  v14 = v7;
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v15 = malloc(v13);
  }

  v9[5] = v15;
  v16 = a3[2];
  v9[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v9[7] = v17;
  v19 = *(v17 + 64);
  if (v14)
  {
    v9[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v9[8] = malloc(*(v17 + 64));
    v20 = malloc(v19);
  }

  v9[9] = v20;
  (*(v18 + 16))();
  MEMORY[0x1E12A1380](a2, *v3, v16, v10, a3[4]);
  return SimpleOrderedDictionary.subscript.modify;
}

void SimpleOrderedDictionary.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v13 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v13);
    SimpleOrderedDictionary.subscript.setter(v7, v3, v11);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v12 = v2[1];
    SimpleOrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t ImmutableSimpleOrderedDictionary.items()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = &v43 - v12;
  v52 = type metadata accessor for Optional();
  v58 = *(v52 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v15 = &v43 - v14;
  v55 = *(a4 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v43 - v23;
  v54 = TupleTypeMetadata2;
  v24 = static Array._allocateUninitialized(_:)();
  v63 = v24;
  if (!MEMORY[0x1E12A1770](a2, a3))
  {
    return v24;
  }

  v43 = v20;
  v25 = 0;
  v59 = (v19 + 16);
  v56 = (v55 + 48);
  v57 = (v19 + 32);
  v46 = (v55 + 16);
  v47 = (v55 + 32);
  v26 = (v55 + 8);
  v55 = v19 + 8;
  v44 = (v58 + 8);
  v45 = v26;
  v27 = v19;
  v49 = v15;
  v50 = a2;
  v48 = v19;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v39 = a2 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25;
      v58 = *(v27 + 16);
      result = (v58)(v61, v39, a3);
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v43 != 8)
      {
        goto LABEL_16;
      }

      v62 = result;
      v58 = *v59;
      (v58)(v61, &v62, a3);
      result = swift_unknownObjectRelease();
    }

    v41 = v60;
    v42 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    (*v57)(v60, v61, a3);
    MEMORY[0x1E12A1380](v41, a1, a3, a4, a5);
    if ((*v56)(v15, 1, a4) == 1)
    {
      (*v55)(v41, a3);
      (*v44)(v15, v52);
    }

    else
    {
      v28 = v51;
      (*v47)(v51, v15, a4);
      v29 = v41;
      v30 = a4;
      v31 = a1;
      v32 = a5;
      v33 = *(v54 + 48);
      v34 = a3;
      v35 = v53;
      (v58)(v53, v29, v34);
      v36 = &v35[v33];
      a5 = v32;
      a1 = v31;
      a4 = v30;
      (*v46)(v36, v28, v30);
      a2 = v50;
      type metadata accessor for Array();
      a3 = v34;
      v15 = v49;
      Array.append(_:)();
      v37 = v28;
      v27 = v48;
      (*v45)(v37, v30);
      (*v55)(v60, a3);
    }

    ++v25;
    if (v42 == MEMORY[0x1E12A1770](a2, a3))
    {
      return v63;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t SiriAceLocationProvider.defaultTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static SiriAceLocationProvider.defaultTimeout);
}

uint64_t static SiriAceLocationProvider.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static SiriAceLocationProvider.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SiriAceLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)(a1);
}

Swift::Double __swiftcall DispatchTimeInterval.toSeconds()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69E7F48])
  {
    (*(v3 + 96))(v7, v2);
    return *v7;
  }

  if (v8 == *MEMORY[0x1E69E7F38])
  {
    (*(v3 + 96))(v7, v2);
    v10 = *v7;
    v11 = 1000.0;
  }

  else if (v8 == *MEMORY[0x1E69E7F30])
  {
    (*(v3 + 96))(v7, v2);
    v10 = *v7;
    v11 = 1000000.0;
  }

  else
  {
    if (v8 != *MEMORY[0x1E69E7F28])
    {
      (*(v3 + 8))(v7, v2);
      return 9.22337204e18;
    }

    (*(v3 + 96))(v7, v2);
    v10 = *v7;
    v11 = 1000000000.0;
  }

  return v10 / v11;
}

uint64_t protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance SiriAceLocationProvider(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)(a1);
}

uint64_t specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1)
{
  v1[11] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for DispatchTimeInterval();
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized SiriAceLocationProvider.requestOrigin(searchTimeout:), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = specialized SiriAceLocationProvider.requestOrigin(searchTimeout:);
  }

  else
  {
    v5 = specialized SiriAceLocationProvider.requestOrigin(searchTimeout:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  outlined init with copy of DispatchTimeInterval?(v0[11], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    if (one-time initialization token for defaultTimeout != -1)
    {
      swift_once();
    }

    v6 = v0[14];
    v5 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = __swift_project_value_buffer(v7, static SiriAceLocationProvider.defaultTimeout);
    (*(v6 + 16))(v5, v9, v7);
    if (v4(v8, 1, v7) != 1)
    {
      outlined destroy of DispatchTimeInterval?(v0[12]);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  }

  v10 = v0[15];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C77F8]) init];
  v0[16] = v11;
  [v11 setDesiredAccuracy_];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = NSNumber.init(integerLiteral:)(300).super.super.isa;
  [v11 setMaxAge_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v11 setSearchTimeout_];

  static AceService.currentAsync.getter();
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v16 = *(MEMORY[0x1E69D0028] + 4);
  v17 = swift_task_alloc();
  v0[17] = v17;
  v18 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
  *v17 = v0;
  v17[1] = specialized SiriAceLocationProvider.requestOrigin(searchTimeout:);

  return MEMORY[0x1EEE39A98](v11, v14, v18, v15);
}

{
  v1 = v0[18];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[18];
  if (v2)
  {
    v4 = v2;
    v5 = v0[15];
    v6 = v0[16];
    v7 = v0[13];
    v8 = v0[14];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    [v4 latitude];
    v10 = v9;
    [v4 longitude];
    v12 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v10 longitude:v11];

    (*(v8 + 8))(v5, v7);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "Unexpected command type response", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(v17, v19);
    v12 = 0;
  }

  v22 = v0[15];
  v23 = v0[12];

  v24 = v0[1];

  return v24(v12);
}

{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  if (v6)
  {
    v25 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v24 = v8;
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[9];
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error getting current location: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v8, v11);
  }

  v20 = v0[15];
  v21 = v0[12];

  v22 = v0[1];

  return v22(0);
}