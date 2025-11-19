void ConversationRequestProcessor.State.cacheCandidateMessage(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*(v2 + 16) <= 1u)
  {
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = a1;
      v7 = (a1 & 0x1FFFFFFFFFFFFFFFLL);

      specialized Array.append<A>(contentsOf:)(inited);
      outlined consume of ConversationRequestProcessor.State(v4, v5, 1);
      *v2 = v4;
      *(v2 + 8) = v5;
      *(v2 + 16) = 1;
      return;
    }

    goto LABEL_16;
  }

  if (*(v2 + 16) == 2)
  {
    v8 = 0xEC00000064657472;
    v9 = 0x617473206E727574;
  }

  else
  {
    if (!(v5 | v4))
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMR);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1DCA66060;
      *(v15 + 32) = a1;
      v16 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
      specialized Array.append<A>(contentsOf:)(v15);
      *v2 = v4;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      return;
    }

    v9 = 0x6574656C706D6F63;
    v8 = 0xE800000000000000;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v18);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1DC659000, oslog, v11, "Not caching candidate request message as we are in an invalid state %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationRequestProcessor.handleTRPCandidateRequestMessage(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DCA65720;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E69D0548], v7);
  v13(v12 + v9, *MEMORY[0x1E69D0538], v7);

  v14 = a1;
  specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(v14, v4, v6, v11, a1 | 0x2000000000000000, 0, v2, v14, specialized ConversationRequestProcessor.makeResultCandidateState(from:));

  swift_setDeallocating();
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void ConversationRequestProcessor.handleNLRoutingDecisionMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  isa = v4[-1].isa;
  v5 = isa[8].isa;
  MEMORY[0x1EEE9AC00](v4);
  v142 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for RoutingDecision(0);
  v7 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v131 - v10;
  v141 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v11 = v141[-1].isa;
  v12 = *(v11 + 8);
  MEMORY[0x1EEE9AC00](v141);
  v135 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v131 - v15;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationBridge);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v139 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v145[0] = v133;
    *v21 = 136315138;
    v22 = v17;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v4;
    v25 = v2;
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v145);
    v2 = v25;
    v4 = v134;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1DC659000, v18, v19, "ConversationBridge received NLRoutingDecisionMessage: %s", v21, 0xCu);
    v29 = v133;
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) != 1)
  {
    isa = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(isa, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, isa, v36, "SystemAssistantExperience not enabled. Ignoring NLRoutingDecisionMessage.", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

LABEL_12:
    v38 = isa;
LABEL_13:

    return;
  }

  v30 = (*(*v2 + 608))();
  if (!v30)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v40, "NLRoutingDecisionMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v41, 2u);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    v42 = (*(*v2 + 416))(v145);
    ConversationRequestProcessor.State.cacheCandidateMessage(_:)(v17 | 0x6000000000000000);
    v42(v145, 0);
    return;
  }

  v31 = v30;
  v32 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v34 = *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v33 = *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v34 == RequestMessageBase.requestId.getter() && v33 == v35)
  {

    goto LABEL_20;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0)
  {
    v95 = v17;

    isa = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(isa, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v145[0] = v98;
      *v97 = 136315394;
      v99 = RequestMessageBase.requestId.getter();
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v145);

      *(v97 + 4) = v101;
      *(v97 + 12) = 2080;
      v102 = *v32;
      v103 = v32[1];

      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v145);

      *(v97 + 14) = v104;
      _os_log_impl(&dword_1DC659000, isa, v96, "NLRoutingDecisionMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v98, -1, -1);
      MEMORY[0x1E12A2F50](v97, -1, -1);

      return;
    }

    goto LABEL_12;
  }

LABEL_20:
  if (!ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
  {
    v81 = v17;

    v141 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v141, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v144 = v85;
      *v83 = 138412546;
      *(v83 + 4) = v81;
      *v84 = v81;
      *(v83 + 12) = 2080;
      v86 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v87 = isa;
      v88 = &v31[v86];
      v89 = v142;
      (isa[2].isa)(v142, v88, v4);
      v90 = v81;
      v91 = RequestType.rawValue.getter();
      v93 = v92;
      (v87[1].isa)(v89, v4);
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v144);

      *(v83 + 14) = v94;
      _os_log_impl(&dword_1DC659000, v141, v82, "%@ is not supported for this requestType: %s", v83, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v84, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1E12A2F50](v85, -1, -1);
      MEMORY[0x1E12A2F50](v83, -1, -1);

      return;
    }

    v38 = v141;
    goto LABEL_13;
  }

  v44 = NLRoutingDecisionMessage.trpCandidateId.getter();
  v46 = v45;
  v47 = &v31[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState];
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v47, v49);
  v50 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v44, v46, v48);
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v48, v49);
  if (!v50)
  {

    v72 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v144 = v107;
      *v106 = 136315138;
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v144);

      *(v106 + 4) = v108;
      _os_log_impl(&dword_1DC659000, v72, v105, "Received NLRoutingDecisionMessage before RC state is created for TRP ID: %s. This is an error", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x1E12A2F50](v107, -1, -1);
      MEMORY[0x1E12A2F50](v106, -1, -1);
    }

    else
    {
    }

    goto LABEL_47;
  }

  isa = v46;
  v51 = (*(*v50 + 408))();
  if (ResultCandidateProcessingStatus.rawValue.getter(v51) == 0x64656C65636E6163 && v52 == 0xE800000000000000)
  {

    goto LABEL_41;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
LABEL_41:
    v109 = isa;

    v72 = Logger.logObject.getter();
    v110 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v72, v110))
    {

      goto LABEL_45;
    }

    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v144 = v112;
    *v111 = 136315138;
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v109, &v144);

    *(v111 + 4) = v113;
    _os_log_impl(&dword_1DC659000, v72, v110, "TRP ID: %s has already been cancelled. Not handling NLRoutingDecisionMessage any further", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x1E12A2F50](v112, -1, -1);
    v80 = v111;
LABEL_43:
    MEMORY[0x1E12A2F50](v80, -1, -1);
LABEL_45:

LABEL_47:

    return;
  }

  v55 = Logger.logObject.getter();
  v56 = v50;
  v57 = static os_log_type_t.debug.getter();

  v58 = os_log_type_enabled(v55, v57);
  v132 = v2;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v142 = v31;
    v60 = v59;
    v61 = swift_slowAlloc();
    v144 = v61;
    *v60 = 136315138;
    v62 = *v56;
    v134 = v55;
    v63 = *(v62 + 832);

    v65 = v63(v64);
    v67 = v66;

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v144);

    *(v60 + 4) = v68;
    v55 = v134;
    _os_log_impl(&dword_1DC659000, v134, v57, "Received NLRoutingDecisionMessage when RC state: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1E12A2F50](v61, -1, -1);
    MEMORY[0x1E12A2F50](v60, -1, -1);
  }

  v69 = v139;
  v70 = v137;
  (*(*v56 + 576))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    outlined destroy of RoutingDecision(v70, type metadata accessor for RoutingDecision);

    v71 = v56;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v74 = v71;

    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_45;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v144 = v76;
    *v75 = 136315138;
    v77 = *(v74 + 2);
    v78 = *(v74 + 3);

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v144);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_1DC659000, v72, v73, "RCState does not have a preselected RoutingDecision when receiving NLRoutingDecision for trpId = %s. This is an error.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x1E12A2F50](v76, -1, -1);
    v80 = v75;
    goto LABEL_43;
  }

  (*(v69 + 4))(v140, v70, v141);
  v114 = v136;
  NLRoutingDecisionMessage.routingDecision.getter();
  swift_storeEnumTagMultiPayload();
  v115 = *(*v56 + 584);
  v142 = v56;
  v115(v114);
  v116 = v135;
  NLRoutingDecisionMessage.routingDecision.getter();
  v117 = static NLRoutingDecisionMessage.RoutingDecision.== infix(_:_:)();
  v118 = *(v69 + 1);
  v118(v116, v141);
  if ((v117 & 1) == 0)
  {

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_1DC659000, v122, v123, "We default to SiriXFallback in eager execution if NLRoutingDecision has not yet been received. We need to re-run eager exeuction if the RoutingDecision has changed.", v124, 2u);
      MEMORY[0x1E12A2F50](v124, -1, -1);
    }

    v125 = v142;
    (*(*v142 + 416))(6);
    ConversationRequestProcessor.maybeRunExecution(rcState:)(v125);
    goto LABEL_57;
  }

  v119 = *v47;
  if (*v47 >> 62 != 1)
  {

    goto LABEL_59;
  }

  v120 = v119 & 0x3FFFFFFFFFFFFFFFLL;
  v121 = v142;
  if (*((v119 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != v44 || *((v119 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != isa)
  {
    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v129)
    {
      goto LABEL_65;
    }

LABEL_59:
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_1DC659000, v126, v127, "StoppedListeningForText|SpeechContinuation has not yet been received or this NLRoutingDecisionMessage does not correspond to a finalized TRP.", v128, 2u);
      MEMORY[0x1E12A2F50](v128, -1, -1);

LABEL_63:
      v118(v140, v141);
      return;
    }

LABEL_62:

    goto LABEL_63;
  }

LABEL_65:
  v130 = v132;
  if ((*(*v132 + 928))(v120))
  {
    (*(*v130 + 1160))(v121);

LABEL_57:

    goto LABEL_62;
  }

  v118(v140, v141);
}

void ConversationRequestProcessor.handleTTResponseMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v256 = *(v4 - 8);
  v257 = v4;
  v5 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v255 = &v232 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SelectedUserAttributes();
  v245 = *(v7 - 8);
  v8 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v232 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v242 = &v232 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v241 = &v232 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v240 = &v232 - v21;
  v22 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v239 = &v232 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v238 = &v232 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v237 = &v232 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v236 = &v232 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v247 = &v232 - v36;
  v37 = type metadata accessor for TCUMappedNLResponse();
  v249 = *(v37 - 8);
  v38 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v232 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v253 = *(v41 - 1);
  v254 = v41;
  v42 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v235 = &v232 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v246 = &v232 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v252 = &v232 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v251 = &v232 - v49;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  v51 = __swift_project_value_buffer(v50, static Logger.conversationBridge);
  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  v55 = os_log_type_enabled(v53, v54);
  v250 = v37;
  v248 = v40;
  v244 = v13;
  v243 = v10;
  v258 = v52;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    v261[0] = v234;
    *v56 = 136315138;
    v57 = v52;
    v58 = [v57 description];
    v59 = v7;
    v60 = v51;
    v61 = v2;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = v62;
    v2 = v61;
    v51 = v60;
    v7 = v59;
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v261);

    *(v56 + 4) = v66;
    _os_log_impl(&dword_1DC659000, v53, v54, "ConversationBridge received TTResponseMessage: %s", v56, 0xCu);
    v67 = v234;
    __swift_destroy_boxed_opaque_existential_1Tm(v234);
    MEMORY[0x1E12A2F50](v67, -1, -1);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  v68 = (*(v2->isa + 76))();
  if (v68)
  {
    v69 = v68;
    v70 = (v68 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v72 = *(v68 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v71 = *(v68 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

    v73 = v258;
    if (v72 == RequestMessageBase.requestId.getter() && v71 == v74)
    {
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v81 & 1) == 0)
      {
        v106 = v73;

        v258 = Logger.logObject.getter();
        v107 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v258, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v261[0] = v109;
          *v108 = 136315394;
          v110 = RequestMessageBase.requestId.getter();
          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v261);

          *(v108 + 4) = v112;
          *(v108 + 12) = 2080;
          v113 = *v70;
          v114 = v70[1];

          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v261);

          *(v108 + 14) = v115;
          _os_log_impl(&dword_1DC659000, v258, v107, "TTResponseMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v108, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v109, -1, -1);
          v105 = v108;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    if (ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
    {
      v82 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
      v84 = v83;
      v85 = (v69 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v86 = *v85;
      v87 = v85[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v85, v87);
      v88 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v82, v84, v86);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v86, v87);
      if (!v88)
      {

        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v260 = v120;
          *v119 = 136315138;
          v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v260);

          *(v119 + 4) = v121;
          _os_log_impl(&dword_1DC659000, v117, v118, "Received TTResponseMessage before RC state is created for TRP ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus.", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v120);
          MEMORY[0x1E12A2F50](v120, -1, -1);
          MEMORY[0x1E12A2F50](v119, -1, -1);
        }

        else
        {
        }

        goto LABEL_40;
      }

      if ((v82 != v88[2] || v84 != v88[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v117 = Logger.logObject.getter();
        v127 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v117, v127))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_1DC659000, v117, v127, "TTResponse is for a TRP that does not match the finalized TRP, ignoring this.", v124, 2u);
          goto LABEL_38;
        }

LABEL_39:

LABEL_40:

        return;
      }

      v89 = (*(*v88 + 408))();
      if (ResultCandidateProcessingStatus.rawValue.getter(v89) == 0x64656C65636E6163 && v90 == 0xE800000000000000)
      {

        goto LABEL_32;
      }

      v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v122)
      {
LABEL_32:

        v117 = Logger.logObject.getter();
        v123 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v117, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v260 = v125;
          *v124 = 136315138;
          v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v260);

          *(v124 + 4) = v126;
          _os_log_impl(&dword_1DC659000, v117, v123, "TRP ID: %s has already been cancelled. Not handling TTResponseMessage any further", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v125);
          MEMORY[0x1E12A2F50](v125, -1, -1);
LABEL_38:
          MEMORY[0x1E12A2F50](v124, -1, -1);
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      v255 = v82;

      v256 = v51;
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();

      v130 = os_log_type_enabled(v128, v129);
      v257 = v88;
      v234 = v85;
      if (v130)
      {
        v131 = swift_slowAlloc();
        v233 = v84;
        v132 = v131;
        v232 = swift_slowAlloc();
        v260 = v232;
        *v132 = 136315138;
        v133 = v2;
        v134 = *(*v88 + 832);

        v136 = v134(v135);
        v2 = v133;
        v137 = v136;
        v139 = v138;

        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, &v260);

        *(v132 + 4) = v140;
        _os_log_impl(&dword_1DC659000, v128, v129, "Received TTResponseMessage when RC state: %s", v132, 0xCu);
        v141 = v232;
        __swift_destroy_boxed_opaque_existential_1Tm(v232);
        MEMORY[0x1E12A2F50](v141, -1, -1);
        v142 = v132;
        v84 = v233;
        MEMORY[0x1E12A2F50](v142, -1, -1);
      }

      v143 = v251;
      TTResponseMessage.mitigationDecision.getter();
      v144 = v252;
      v145 = v253;
      v146 = *(v253 + 104);
      LODWORD(v233) = *MEMORY[0x1E69D0260];
      v147 = v254;
      v146(v252);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v148 = *(v145 + 8);
      v148(v144, v147);
      v149 = (v148)(v143, v147);
      if (v260 == v259)
      {

        v117 = Logger.logObject.getter();
        v150 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v117, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v260 = v152;
          *v151 = 136315138;
          v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v84, &v260);

          *(v151 + 4) = v153;
          v154 = "TTResponseMessage with TRP ID: %s has mitigationDecision as forceMitigate, not proceeding further";
LABEL_49:
          _os_log_impl(&dword_1DC659000, v117, v150, v154, v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v152);
          MEMORY[0x1E12A2F50](v152, -1, -1);
          MEMORY[0x1E12A2F50](v151, -1, -1);
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      if ((*(*v257 + 312))(v149))
      {

        v117 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v117, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v260 = v152;
          *v151 = 136315138;
          v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v84, &v260);

          *(v151 + 4) = v155;
          v154 = "Already received TTResponseMessage for this TRP ID: %s .. this happened because we received multiple NL outputs for the same TRP ID.";
          goto LABEL_49;
        }

LABEL_35:

        goto LABEL_39;
      }

      v156 = v247;
      v157 = v258;
      TTResponseMessage.tcuMappedNLResponse.getter();
      v158 = v249;
      v159 = v250;
      if ((*(v249 + 48))(v156, 1, v250) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v156, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v160 = v157;

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v161, v162))
        {

LABEL_92:

          return;
        }

        v163 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        v260 = v258;
        *v163 = 136315394;
        v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v84, &v260);

        *(v163 + 4) = v164;
        *(v163 + 12) = 2080;
        v165 = v246;
        TTResponseMessage.mitigationDecision.getter();
        v167 = v253;
        v166 = v254;
        v168 = v235;
        (*(v253 + 16))(v235, v165, v254);
        v169 = (*(v167 + 88))(v168, v166);
        if (v169 == *MEMORY[0x1E69D0270])
        {
          v170 = 0xE800000000000000;
          v171 = 0x64657463656C6573;
        }

        else if (v169 == *MEMORY[0x1E69D0278])
        {
          v170 = 0xE900000000000064;
          v171 = 0x657461676974696DLL;
        }

        else if (v169 == *MEMORY[0x1E69D0268])
        {
          v170 = 0xEE00646574616769;
          v171 = 0x74694D656279616DLL;
        }

        else
        {
          v229 = v169;
          v148(v246, v254);
          if (v229 == v233)
          {
            v170 = 0xED00006574616769;
            v171 = 0x74694D6563726F66;
LABEL_91:
            v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v170, &v260);

            *(v163 + 14) = v230;
            _os_log_impl(&dword_1DC659000, v161, v162, "TTResponseMessage with TRP ID: %s has no tcuMapedNLResponse and has mitigationDecision as %s... ignoring this message.", v163, 0x16u);
            v231 = v258;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v231, -1, -1);
            MEMORY[0x1E12A2F50](v163, -1, -1);
            goto LABEL_92;
          }

          v171 = 0;
          v170 = 0xE000000000000000;
          v246 = v235;
        }

        v148(v246, v254);
        goto LABEL_91;
      }

      (*(v158 + 32))(v248, v156, v159);
      v172 = TCUMappedNLResponse.nlResponse.getter();
      v173 = NLParseResponse.userParses.getter();

      v174 = v257;
      (*(*v257 + 320))(v173);
      v175 = TCUMappedNLResponse.nlResponse.getter();
      v176 = v236;
      NLParseResponse.fallbackParse.getter();

      (*(*v174 + 704))(v176);
      v177 = TCUMappedNLResponse.nlResponse.getter();
      v178 = v237;
      NLParseResponse.serverFallbackReason.getter();

      (*(*v174 + 728))(v178);
      (*(*v174 + 416))(5);
      v179 = v238;
      TTResponseMessage.mitigationDecision.getter();
      (*(v253 + 56))(v179, 0, 1, v254);
      (*(*v174 + 560))(v179);
      v180 = TCUMappedNLResponse.nlResponse.getter();
      v181 = v239;
      NLParseResponse.responseStatusCode.getter();

      (*(*v174 + 608))(v181);
      v182 = TCUMappedNLResponse.nlResponse.getter();
      v183 = v240;
      NLParseResponse.languageVariantResult.getter();

      (*(*v174 + 344))(v183);
      v184 = TCUMappedNLResponse.nlResponse.getter();
      v185 = NLParseResponse.responseVariantResult.getter();
      v187 = v186;

      v188 = (*(*v174 + 368))(v185, v187);
      v189 = (*(*v174 + 904))(v188);
      if (v189)
      {
        v190 = v189;
        v191 = TCUMappedNLResponse.tcuId.getter();
        (*(*v190 + 224))(v191);
      }

      v192 = v241;
      TTResponseMessage.selectedUserAttributes.getter();
      v193 = (*(*v174 + 800))(v192);
      v194 = v242;
      (*(*v174 + 792))(v193);
      v195 = v245;
      v196 = (*(v245 + 48))(v194, 1, v7);
      v197 = v243;
      if (v196 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v194, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v198 = Logger.logObject.getter();
        v199 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          *v200 = 0;
          _os_log_impl(&dword_1DC659000, v198, v199, "#user-session: Did not receive SelectedUserAttribute", v200, 2u);
          MEMORY[0x1E12A2F50](v200, -1, -1);
        }
      }

      else
      {
        v258 = v2;
        v201 = v244;
        (*(v195 + 32))(v244, v194, v7);
        (*(v195 + 16))(v197, v201, v7);
        v202 = Logger.logObject.getter();
        v203 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v202, v203))
        {
          v204 = v7;
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v233 = v84;
          v254 = v206;
          v260 = v206;
          *v205 = 136315138;
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SelectedUserAttributes and conformance SelectedUserAttributes, MEMORY[0x1E69D0860]);
          v207 = dispatch thunk of CustomStringConvertible.description.getter();
          v208 = v197;
          v209 = v195;
          v211 = v210;
          v253 = *(v209 + 8);
          (v253)(v208, v204);
          v212 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v211, &v260);

          *(v205 + 4) = v212;
          _os_log_impl(&dword_1DC659000, v202, v203, "#user-session: Received SelectedUserAttributes=%s", v205, 0xCu);
          v213 = v254;
          __swift_destroy_boxed_opaque_existential_1Tm(v254);
          v84 = v233;
          MEMORY[0x1E12A2F50](v213, -1, -1);
          MEMORY[0x1E12A2F50](v205, -1, -1);

          (v253)(v244, v204);
        }

        else
        {

          v214 = *(v195 + 8);
          v214(v197, v7);
          v214(v244, v7);
        }

        v2 = v258;
      }

      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v260 = v218;
        *v217 = 136315138;
        *(v217 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v84, &v260);
        _os_log_impl(&dword_1DC659000, v215, v216, "Cached NL output for TRP ID: %s", v217, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v218);
        MEMORY[0x1E12A2F50](v218, -1, -1);
        MEMORY[0x1E12A2F50](v217, -1, -1);
      }

      v219 = v234;
      ConversationRequestProcessor.maybeRunExecution(rcState:)(v174);
      v220 = *v219;
      if (*v219 >> 62 == 1)
      {
        v221 = v220 & 0x3FFFFFFFFFFFFFFFLL;
        if (*((v220 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == v255 && *((v220 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == v84)
        {

LABEL_79:
          v226 = Logger.logObject.getter();
          v227 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v226, v227))
          {
            v228 = swift_slowAlloc();
            *v228 = 0;
            _os_log_impl(&dword_1DC659000, v226, v227, "TTResponse for a finalizedTRP has been received, will handle StoppedListeningForText|SpeechContinuation now", v228, 2u);
            MEMORY[0x1E12A2F50](v228, -1, -1);
          }

          (*(v2->isa + 117))(v221);

          goto LABEL_82;
        }

        v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v225)
        {
          goto LABEL_79;
        }
      }

      else
      {
      }

      v222 = Logger.logObject.getter();
      v223 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        *v224 = 0;
        _os_log_impl(&dword_1DC659000, v222, v223, "StoppedListeningForText|SpeechContinuation has not yet been received or this TTResponse does not correspond to a finalized TRP.", v224, 2u);
        MEMORY[0x1E12A2F50](v224, -1, -1);

LABEL_83:
        (*(v249 + 8))(v248, v250);
        return;
      }

LABEL_82:

      goto LABEL_83;
    }

    v91 = v73;

    v258 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v258, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v260 = v95;
      *v93 = 138412546;
      *(v93 + 4) = v91;
      *v94 = v91;
      *(v93 + 12) = 2080;
      v96 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v98 = v255;
      v97 = v256;
      v99 = v257;
      (*(v256 + 16))(v255, v69 + v96, v257);
      v100 = v91;
      v101 = RequestType.rawValue.getter();
      v103 = v102;
      (*(v97 + 8))(v98, v99);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v260);

      *(v93 + 14) = v104;
      _os_log_impl(&dword_1DC659000, v258, v92, "%@ is not supported for this requestType: %s", v93, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v94, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x1E12A2F50](v95, -1, -1);
      v105 = v93;
LABEL_25:
      MEMORY[0x1E12A2F50](v105, -1, -1);

      return;
    }

LABEL_26:

    v116 = v258;

    return;
  }

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  v77 = os_log_type_enabled(v75, v76);
  v78 = v258;
  if (v77)
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_1DC659000, v75, v76, "TTResponseMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v79, 2u);
    MEMORY[0x1E12A2F50](v79, -1, -1);
  }

  v80 = (*(v2->isa + 52))(v261);
  ConversationRequestProcessor.State.cacheCandidateMessage(_:)(v78 | 0x4000000000000000);
  v80(v261, 0);
}

void ConversationRequestProcessor.handleMultiUserStoppedListeningForSpeechContinuationMessage(_:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1DC659000, oslog, v4, "ConversationBridge received %s, dropping it.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

uint64_t ConversationRequestProcessor.handleTextBasedTRPCandidateMessage(_:)(void *a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t, uint64_t, unint64_t, void, uint64_t, id, uint64_t))
{
  v6 = v3;
  v8 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v11 = type metadata accessor for RequestType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DCA66060;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x1E69D0530], v11);

  v16 = a1;
  a3(v16, v8, v10, v15, 0xF000000000000007, 0, v6, v16, a2);

  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessor.handleStoppedListeningForSpeechContinuationMessage(_:)(unint64_t a1)
{
  v2 = StoppedListeningForSpeechContinuationMessage.lastTRPId.getter();
  ConversationRequestProcessor.handleStoppedListeningForContinuationMessage(_:trpId:messageToCacheIfNotInActiveTurn:)(a1, v2, v3, a1 | 0xA000000000000000);
}

uint64_t ConversationRequestProcessor.handleStoppedListeningForTextContinuationMessage(_:)(void *a1)
{
  v2 = StoppedListeningForTextContinuationMessage.lastTRPId.getter();
  ConversationRequestProcessor.handleStoppedListeningForContinuationMessage(_:trpId:messageToCacheIfNotInActiveTurn:)(a1, v2, v3, 0xF000000000000007);
}

void ConversationRequestProcessor.handleStoppedListeningForContinuationMessage(_:trpId:messageToCacheIfNotInActiveTurn:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  oslog = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v109[0] = v99;
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v101 = a4;
    v104 = v5;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v109);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = v11;
    v19 = [v18 description];
    v20 = a2;
    v21 = a3;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v5 = v104;
    v25 = v22;
    a3 = v21;
    a2 = v20;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v109);

    *(v14 + 14) = v26;
    a4 = v101;
    _os_log_impl(&dword_1DC659000, v12, v13, "ConversationBridge received %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v99, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v27 = (*(*v5 + 400))();
  v30 = v27;
  if (v29 == 2)
  {
    v31 = v28;

    outlined consume of ConversationRequestProcessor.State(v32, v31, 2);
    v33 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v35 = *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v34 = *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

    if (v35 == RequestMessageBase.requestId.getter() && v34 == v36)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v39 = oslog;

        osloga = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(osloga, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v109[0] = v42;
          *v41 = 136315650;
          v43 = _typeName(_:qualified:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v109);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2080;
          v46 = RequestMessageBase.requestId.getter();
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v109);

          *(v41 + 14) = v48;
          *(v41 + 22) = 2080;
          v49 = *v33;
          v50 = v33[1];

          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v109);

          *(v41 + 24) = v51;
          _os_log_impl(&dword_1DC659000, osloga, v40, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v41, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v42, -1, -1);
          MEMORY[0x1E12A2F50](v41, -1, -1);

LABEL_37:

          return;
        }

        goto LABEL_39;
      }
    }

    v105 = v5;
    v58 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v59 = *v58;
    v60 = v58[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v58, v60);
    v61 = ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(a2, a3, v59);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v59, v60);
    if (!v61)
    {

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = a2;
        v83 = swift_slowAlloc();
        v108 = v83;
        *v81 = 136315394;
        v84 = _typeName(_:qualified:)();
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v108);

        *(v81 + 4) = v86;
        *(v81 + 12) = 2080;
        *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, a3, &v108);
        _os_log_impl(&dword_1DC659000, v79, v80, "Received %s before RC state was created for TRP ID: %s. Dropping it on the floor.", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v83, -1, -1);
        MEMORY[0x1E12A2F50](v81, -1, -1);
      }

      goto LABEL_37;
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v108 = v102;
      *v64 = 136315394;
      v65 = _typeName(_:qualified:)();
      v100 = v63;
      v103 = a3;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v108);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = *(*v61 + 832);

      v70 = v68(v69);
      v72 = v71;

      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v108);
      a3 = v103;

      *(v64 + 14) = v73;
      _os_log_impl(&dword_1DC659000, v62, v100, "%s received for RC state: %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v102, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    else
    {
    }

    v87 = (*(*v61 + 408))();
    if (ResultCandidateProcessingStatus.rawValue.getter(v87) == 0x64656C65636E6163 && v88 == 0xE800000000000000)
    {
    }

    else
    {
      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v90 & 1) == 0)
      {
        v91 = *v58;
        v92 = v58[1];
        *v58 = v61 | 0x4000000000000000;
        v58[1] = 0;

        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v91, v92);
        (*(*v105 + 936))(v61);

        goto LABEL_37;
      }
    }

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = a2;
      v98 = v96;
      v108 = v96;
      *v95 = 136315138;
      *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, a3, &v108);
      _os_log_impl(&dword_1DC659000, v93, v94, "TRP ID: %s already canceled. Not sending commit signal.", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x1E12A2F50](v98, -1, -1);
      MEMORY[0x1E12A2F50](v95, -1, -1);
    }

    goto LABEL_37;
  }

  outlined consume of ConversationRequestProcessor.State(v27, v28, v29);
  if ((~a4 & 0xF000000000000007) == 0)
  {
    osloga = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(osloga, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v109[0] = v54;
      *v53 = 136315138;
      v55 = _typeName(_:qualified:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v109);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1DC659000, osloga, v52, "%s received for an inactive request. Ignoring.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);

      return;
    }

LABEL_39:

    return;
  }

  v74 = (a4 & 0x1FFFFFFFFFFFFFFFLL);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1DC659000, v75, v76, "StoppedListeningForSpeechContinuationMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v77, 2u);
    MEMORY[0x1E12A2F50](v77, -1, -1);
  }

  v78 = (*(*v5 + 416))(v109);
  ConversationRequestProcessor.State.cacheCandidateMessage(_:)(a4);
  v78(v109, 0);
  outlined consume of CandidateRequestMessage?(a4);
}

uint64_t ConversationRequestProcessor.canCommitExecution(for:)(uint64_t a1)
{
  v2 = v1;
  v69 = type metadata accessor for RoutingDecision(0);
  v4 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestType();
  v70 = *(v7 - 8);
  v8 = *(v70 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v59 - v23;
  if ((*(*v1 + 496))(v22))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.conversationBridge);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_24;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Execution was already committed. will not call commit.";
    goto LABEL_17;
  }

  v30 = (*(*v1 + 608))();
  if (!v30)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.conversationBridge);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_24;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "No active turn found. Will not call commit.";
LABEL_17:
    _os_log_impl(&dword_1DC659000, v26, v27, v29, v28, 2u);
    MEMORY[0x1E12A2F50](v28, -1, -1);
LABEL_24:

    return 0;
  }

  v68 = v30;
  if (((*(*a1 + 480))() & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.conversationBridge);
    v26 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v26, v34))
    {
      goto LABEL_23;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "This is not the selectedRC. Will not call commit.";
    goto LABEL_22;
  }

  (*(*a1 + 552))();
  v31 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v32 = (*(*(v31 - 8) + 48))(v24, 1, v31);
  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  if (v32 == 1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.conversationBridge);
    v26 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v26, v34))
    {
      goto LABEL_23;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "MitigationDecision has not yet been received for for the selectedTRP. Will not call commit.";
LABEL_22:
    _os_log_impl(&dword_1DC659000, v26, v34, v36, v35, 2u);
    MEMORY[0x1E12A2F50](v35, -1, -1);
LABEL_23:

    goto LABEL_24;
  }

  v66 = a1;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v41 = v68;
  swift_beginAccess();
  v42 = v70;
  v43 = *(v70 + 2);
  v63 = v70 + 16;
  v64 = v40;
  v62 = v43;
  v43(v19, v41 + v40, v7);
  v44 = *MEMORY[0x1E69D0548];
  v60 = *(v42 + 13);
  v61 = (v42 + 104);
  v60(v16, v44, v7);
  v45 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v59 = v45;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v67 = v6;
  if (v73 == v71 && v74 == v72)
  {
    v65 = 1;
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v46 = *(v70 + 1);
  v46(v16, v7);
  v70 = v46;
  v46(v19, v7);

  v48 = v66;
  if (v65)
  {
    v49 = v67;
    if ((*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v62(v13, v68 + v64, v7);
    v60(v10, *MEMORY[0x1E69D0530], v7);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v49 = v67;
    if (v73 == v71 && v74 == v72)
    {
      v50 = 1;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v51 = v10;
    v52 = v70;
    v70(v51, v7);
    v52(v13, v7);

    if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) != 1 || (v50 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  (*(*v48 + 576))(v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = outlined destroy of RoutingDecision(v49, type metadata accessor for RoutingDecision);
  if (EnumCaseMultiPayload != 1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.conversationBridge);
    v26 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v34))
    {
      goto LABEL_23;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "NLRoutingDecision has not yet been received for the selectedTRP. Will not call commit.";
    goto LABEL_22;
  }

LABEL_39:
  v54 = (*(*v48 + 408))(v47);
  if (ResultCandidateProcessingStatus.rawValue.getter(v54) == 0xD000000000000013 && 0x80000001DCA7B530 == v55)
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.conversationBridge);
      v26 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v26, v34))
      {
        goto LABEL_23;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Execution has not yet been kicked off. Will not call commit.";
      goto LABEL_22;
    }
  }

  return 1;
}

void ConversationRequestProcessor.reallyHandleStoppedListeningForContinuationMessage(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = (*(*v1 + 608))(v10);
  if (v13)
  {
    v14 = v13;
    (*(*a1 + 488))(1);
    v15 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    (*(v5 + 16))(v12, v14 + v15, v4);
    (*(v5 + 104))(v8, *MEMORY[0x1E69D0548], v4);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v31 == v33 && v32 == v34)
    {
      v16 = *(v5 + 8);
      v16(v8, v4);
      v16(v12, v4);
    }

    else
    {
      LODWORD(v30) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);

      if ((v30 & 1) == 0)
      {
        v24 = 0;
LABEL_17:
        v26 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
        swift_beginAccess();
        v27 = *v26;
        v28 = v26[1];
        *v26 = a1 | 0x4000000000000000;
        v26[1] = v24;

        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v27, v28);
        if ((*(*v2 + 928))(a1))
        {
          (*(*v2 + 1160))(a1);
        }

        return;
      }
    }

    v23 = (*(*a1 + 904))(v17);
    if (v23)
    {
      (*(*v23 + 152))(1, 0);
    }

    v24 = (*(*v2 + 1384))(a1, v14, 0, 0);
    v25 = v24;
    goto LABEL_17;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v30 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v30, v19, "No active turn found. This is an error.", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v21 = v30;
}

uint64_t ConversationRequestProcessor.waitForPommes(for:nlRoutingDecision:)(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v55 - v6;
  v7 = type metadata accessor for ConversationSessionKey();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v55 - v18;
  v20 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v19, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    goto LABEL_7;
  }

  v28 = *(v21 + 32);
  v28(v27, v19, v20);
  v28(v24, v27, v20);
  v29 = (*(v21 + 88))(v24, v20);
  if (v29 == *MEMORY[0x1E69D02E8] || v29 == *MEMORY[0x1E69D02D0] || v29 == *MEMORY[0x1E69D02C8])
  {
LABEL_6:
    (*(v21 + 8))(v24, v20);
    goto LABEL_7;
  }

  if (v29 == *MEMORY[0x1E69D02E0])
  {
    (*(v21 + 8))(v24, v20);
    return 0;
  }

  if (v29 == *MEMORY[0x1E69D02D8])
  {
LABEL_7:
    v30 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);
    if (!v30 || (*(v61 + 16) != *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID) || v30 != *(v61 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 1;
    }

    (*(*v2 + 424))(v62);
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    v32 = v57;
    v31 = v58;
    (*(v57 + 104))(v10, *MEMORY[0x1E69D07D0], v58);
    dispatch thunk of ConversationSessionState.value(forKey:userId:)();
    (*(v32 + 8))(v10, v31);
    if (v64)
    {
      v33 = type metadata accessor for PommesContext();
      v34 = v60;
      v35 = swift_dynamicCast();
      (*(*(v33 - 8) + 56))(v34, v35 ^ 1u, 1, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      outlined destroy of ReferenceResolutionClientProtocol?(v63, &_sypSgMd, &_sypSgMR);
      v33 = type metadata accessor for PommesContext();
      v34 = v60;
      (*(*(v33 - 8) + 56))(v60, 1, 1, v33);
    }

    v37 = v59;
    outlined init with copy of ReferenceResolutionClientProtocol?(v34, v59, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    type metadata accessor for PommesContext();
    v38 = *(v33 - 8);
    if ((*(v38 + 48))(v37, 1, v33) == 1)
    {
      v39 = &_s21SiriInformationSearch13PommesContextVSgMd;
      v40 = &_s21SiriInformationSearch13PommesContextVSgMR;
      v41 = v37;
    }

    else
    {
      v42 = v56;
      PommesContext.exportLegacyNLContext()();
      v43 = v33;
      v44 = v42;
      (*(v38 + 8))(v37, v43);
      v45 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45) != 1)
      {
        v48 = MEMORY[0x1E129C390]();
        (*(v46 + 8))(v44, v45);
        v47 = v48;
        goto LABEL_21;
      }

      v39 = &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd;
      v40 = &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR;
      v41 = v44;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v41, v39, v40);
    v47 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v49 = *(v47 + 16);

    if (v49)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      return 1;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.conversationBridge);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DC659000, v51, v52, "No need to wait for POMMES: POMMES is not expecting a gesture response", v53, 2u);
      MEMORY[0x1E12A2F50](v53, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    return 0;
  }

  if (v29 == *MEMORY[0x1E69D02F8])
  {
    return 0;
  }

  v54 = v29 == *MEMORY[0x1E69D02F0];
  result = 0;
  if (!v54)
  {
    goto LABEL_6;
  }

  return result;
}

void ConversationRequestProcessor.handlePommesTRPCandidateMessage(_:)(NSObject *a1)
{
  v3 = type metadata accessor for RequestType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PommesError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v170 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v163 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v172 = &v163 - v17;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v18 = *(*(v174 - 1) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v163 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v171 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v175 = &v163 - v28;
  v29 = (*(*v1 + 608))(v27);
  if (!v29)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.conversationBridge);
    v177 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v177, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v177, v48, "PommesTRPCandidateMessage received for an inactive request. Dropping it on the floor.", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    goto LABEL_40;
  }

  v167 = v14;
  v168 = v9;
  v169 = v8;
  v176 = v29;
  v30 = (v29 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v32 = *(v29 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v31 = *(v29 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  v177 = a1;
  if (v32 == RequestMessageBase.requestId.getter() && v31 == v33)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationBridge);
      v37 = v177;

      v177 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v177, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v178[0] = v40;
        *v39 = 136315394;
        v41 = RequestMessageBase.requestId.getter();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v178);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v44 = *v30;
        v45 = v30[1];

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v178);

        *(v39 + 14) = v46;
        _os_log_impl(&dword_1DC659000, v177, v38, "PommesTRPCandidateMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v40, -1, -1);
        MEMORY[0x1E12A2F50](v39, -1, -1);
LABEL_38:

        return;
      }

LABEL_39:

LABEL_40:
      v103 = v177;

      return;
    }
  }

  v50 = v176;
  if (!ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.conversationBridge);
    v91 = v177;

    v177 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v177, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = v50;
      v96 = swift_slowAlloc();
      v179[0] = v96;
      *v93 = 138412546;
      *(v93 + 4) = v91;
      *v94 = v91;
      *(v93 + 12) = 2080;
      v97 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      (*(v4 + 16))(v7, v95 + v97, v3);
      v98 = v91;
      v99 = RequestType.rawValue.getter();
      v101 = v100;
      (*(v4 + 8))(v7, v3);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v179);

      *(v93 + 14) = v102;
      _os_log_impl(&dword_1DC659000, v177, v92, "%@ is not supported for this requestType: %s", v93, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v94, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x1E12A2F50](v96, -1, -1);
      MEMORY[0x1E12A2F50](v93, -1, -1);
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v51 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v53 = v52;
  v54 = (v50 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  if (*v54 >> 62 == 1)
  {
    v57 = *((v55 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v58 = *((v55 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v57 != v51 || v58 != v53)
    {
      v59 = *((v55 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((v55 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v111 = v51;
        v112 = one-time initialization token for conversationBridge;

        if (v112 != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        __swift_project_value_buffer(v113, static Logger.conversationBridge);

        v84 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v84, v114))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v179[0] = v107;
          *v106 = 136315394;
          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v179);
          v116 = v53;
          v117 = v115;

          *(v106 + 4) = v117;
          *(v106 + 12) = 2080;
          v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v116, v179);

          *(v106 + 14) = v118;
          _os_log_impl(&dword_1DC659000, v84, v114, "TRP already finalized (TRP ID: %s).. Not handling PommesTRPCandidateMessage for TRP ID: %s", v106, 0x16u);
          swift_arrayDestroy();
          goto LABEL_60;
        }

LABEL_62:

        goto LABEL_63;
      }
    }
  }

  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v55, v56);
  v61 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v51, v53, v55);
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v55, v56);
  if (!v61)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logger.conversationBridge);

    v84 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v179[0] = v107;
      *v106 = 136315138;
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v179);

      *(v106 + 4) = v108;
      _os_log_impl(&dword_1DC659000, v84, v105, "Received PommesTRPCandidateMessage before TRP state is created for TRP ID: %s ..this may happen if no ASR or text input message was received before the Pommes output message is received from the message bus.", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
LABEL_60:
      MEMORY[0x1E12A2F50](v107, -1, -1);
      MEMORY[0x1E12A2F50](v106, -1, -1);
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v62 = (*(*v61 + 408))();
  if (ResultCandidateProcessingStatus.rawValue.getter(v62) == 0x64656C65636E6163 && v63 == 0xE800000000000000)
  {

LABEL_48:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    __swift_project_value_buffer(v109, static Logger.conversationBridge);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v179[0] = v87;
      *v86 = 136315138;
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v179);

      *(v86 + 4) = v110;
      v89 = "TRP ID: %s has already been cancelled. Not handling PommesTRPCandidateMessage any further";
      goto LABEL_52;
    }

LABEL_53:

    goto LABEL_54;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v65)
  {
    goto LABEL_48;
  }

  v166 = v53;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = __swift_project_value_buffer(v66, static Logger.conversationBridge);

  v68 = v61;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  v71 = os_log_type_enabled(v69, v70);
  v164 = v51;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v179[0] = v163;
    *v72 = 136315138;
    v73 = *(*v68 + 832);

    v165 = v67;
    v75 = v70;
    v76 = v73(v74);
    v78 = v77;

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v179);

    *(v72 + 4) = v79;
    v80 = v75;
    v67 = v165;
    _os_log_impl(&dword_1DC659000, v69, v80, "Received PommesTRPCandidateMessage when TRP state: %s", v72, 0xCu);
    v81 = v163;
    __swift_destroy_boxed_opaque_existential_1Tm(v163);
    MEMORY[0x1E12A2F50](v81, -1, -1);
    MEMORY[0x1E12A2F50](v72, -1, -1);
  }

  v82 = v68;
  if ((*(*v68 + 384))())
  {

    v83 = v166;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v179[0] = v87;
      *v86 = 136315138;
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v83, v179);

      *(v86 + 4) = v88;
      v89 = "Already received PommesTRPCandidateMessage for this TRP ID: %s . Did Pommes post multiple PommesTRPCandidateMessage's with the same trpId?";
LABEL_52:
      _os_log_impl(&dword_1DC659000, v84, v85, v89, v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x1E12A2F50](v87, -1, -1);
      MEMORY[0x1E12A2F50](v86, -1, -1);
LABEL_54:

LABEL_63:

      return;
    }

    goto LABEL_53;
  }

  PommesTRPCandidateMessage.pommesResult.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v120 = v168;
    v119 = v169;
    v121 = v175;
    (*(v168 + 32))(v175, v22, v169);
    (*(v120 + 56))(v121, 0, 1, v119);
    v122 = 0;
  }

  else
  {
    v122 = *v22;
    v121 = v175;
    (*(v168 + 56))(v175, 1, 1, v169);
    v123 = v122;
  }

  v124 = v121;
  v125 = v171;
  outlined init with copy of ReferenceResolutionClientProtocol?(v124, v171, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v126 = v172;
  PommesTRPCandidateMessage.searchReason.getter();
  v127 = type metadata accessor for PommesSearchReason();
  (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
  v128 = type metadata accessor for PommesInfo(0);
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  v131 = swift_allocObject();
  v177 = v122;
  *(v131 + 16) = v122;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v125, v131 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v126, v131 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v132 = (*(*v68 + 392))(v131);
  v133 = (*(*v68 + 904))(v132);
  if (v133)
  {
    v134 = v133;
    v135 = PommesTRPCandidateMessage.tcuId.getter();
    (*(*v134 + 248))(v135);
  }

  v136 = v166;

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();

  v139 = os_log_type_enabled(v137, v138);
  v165 = v67;
  if (v139)
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v179[0] = v141;
    *v140 = 136315138;
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v136, v179);

    *(v140 + 4) = v142;
    _os_log_impl(&dword_1DC659000, v137, v138, "Cached Pommes output for TRP ID: %s", v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    MEMORY[0x1E12A2F50](v141, -1, -1);
    MEMORY[0x1E12A2F50](v140, -1, -1);
  }

  else
  {
  }

  v143 = v167;
  v144 = v173;
  PommesTRPCandidateMessage.pommesResult.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v145 = v168;
    v146 = v169;
    (*(v168 + 32))(v143, v144, v169);
    v147 = v170;
    (*(v145 + 16))(v170, v143, v146);
    v148 = Logger.logObject.getter();
    v149 = v143;
    v150 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v148, v150))
    {
      v151 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v179[0] = v174;
      *v151 = 136315138;
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type PommesError and conformance PommesError, MEMORY[0x1E69D04F8]);
      v152 = Error.localizedDescription.getter();
      v153 = v147;
      v154 = v82;
      v156 = v155;
      v157 = *(v145 + 8);
      v157(v153, v146);
      v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v156, v179);
      v82 = v154;

      *(v151 + 4) = v158;
      _os_log_impl(&dword_1DC659000, v148, v150, "Pommes encountered an error: %s", v151, 0xCu);
      v159 = v174;
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      MEMORY[0x1E12A2F50](v159, -1, -1);
      MEMORY[0x1E12A2F50](v151, -1, -1);

      v160 = v167;
    }

    else
    {

      v157 = *(v145 + 8);
      v157(v147, v146);
      v160 = v149;
    }

    v157(v160, v146);
    v162 = v175;
    v161 = v177;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v144, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
    v161 = v177;
    v162 = v175;
  }

  ConversationRequestProcessor.maybeRunExecution(rcState:)(v82);

  outlined destroy of ReferenceResolutionClientProtocol?(v162, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
}

void ConversationRequestProcessor.maybeRunExecution(rcState:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v182 = (&v167 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v181 = &v167 - v14;
  v15 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v179 = *(v15 - 8);
  v180 = v15;
  v16 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v183 = (&v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for RoutingDecision(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v178 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v28 = &v167 - v27;
  v29 = *(*a1 + 408);
  v30 = v29(v26);
  if (v30 > 0xF)
  {
    goto LABEL_24;
  }

  if (((1 << v30) & 0xC060) == 0)
  {
    if (v30 == 7)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.conversationBridge);

      v183 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v183, v42))
      {
        goto LABEL_29;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v185[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], v185);
      _os_log_impl(&dword_1DC659000, v183, v42, "Execution already in progress for TRP/RC %s, will not begin execution again", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E12A2F50](v44, -1, -1);
      v45 = v43;
LABEL_28:
      MEMORY[0x1E12A2F50](v45, -1, -1);

      return;
    }

LABEL_24:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.conversationBridge);

    v183 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v183, v53))
    {
      goto LABEL_29;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v185[0] = v55;
    *v54 = 136315138;
    v56 = (v29)();
    v57 = ResultCandidateProcessingStatus.rawValue.getter(v56);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v185);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_1DC659000, v183, v53, "Not running execution, unexpected state %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x1E12A2F50](v55, -1, -1);
    v45 = v54;
    goto LABEL_28;
  }

  v31 = (*(*v1 + 400))();
  if (v33 != 2)
  {
    outlined consume of ConversationRequestProcessor.State(v31, v32, v33);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.conversationBridge);
    v183 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v183, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DC659000, v183, v39, "Cannot run execution: No active turn?", v40, 2u);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }

LABEL_29:
    v60 = v183;

    return;
  }

  v176 = v32;
  v177 = v31;
  v34 = (v29)();
  v174 = v8;
  v175 = v5;
  if (v34 == 15)
  {
    v35 = *MEMORY[0x1E69D02D8];
    v36 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v28, v35, v36);
    (*(v37 + 56))(v28, 0, 1, v36);
  }

  else
  {
    (*(*a1 + 576))();
    RoutingDecision.value.getter(v28);
    outlined destroy of RoutingDecision(v21, type metadata accessor for RoutingDecision);
  }

  v46 = (*(*v2 + 944))(a1, v28);
  v47 = (*(*a1 + 384))();
  if (!v47)
  {
    if (v46)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.conversationBridge);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1DC659000, v49, v50, "POMMES result is not yet available. Holding off on running execution until Pommes results are received.", v51, 2u);
        MEMORY[0x1E12A2F50](v51, -1, -1);
      }

      goto LABEL_23;
    }

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
      v172 = v4;
      v65 = v64;
      *v64 = 0;
      _os_log_impl(&dword_1DC659000, v62, v63, "Proceeding without waiting for POMMES result", v64, 2u);
      v66 = v65;
      v47 = 0;
      v4 = v172;
      MEMORY[0x1E12A2F50](v66, -1, -1);
    }
  }

  v67 = (*(*a1 + 904))();
  if (v67)
  {
    v68 = v67;
    v172 = v4;
    v173 = v47;
    v69 = v28;
    v70 = *(*v67 + 216);
    v170 = *v67 + 216;
    v171 = v70;
    v71 = v70();
    if (!v72)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      __swift_project_value_buffer(v78, static Logger.conversationBridge);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1DC659000, v79, v80, "Not running execution since TTResponseMessage has not been received yet", v81, 2u);
        MEMORY[0x1E12A2F50](v81, -1, -1);
      }

      else
      {
      }

      v147 = v28;
      goto LABEL_100;
    }

    v73 = v72;
    if (v46)
    {
      v74 = v71;
      v75 = *(*v68 + 240);
      v169 = *v68 + 240;
      v76 = v75();
      if (v77)
      {
        if (v74 == v76 && v73 == v77)
        {

LABEL_49:
          v28 = v69;
LABEL_50:
          v4 = v172;
          v47 = v173;
          goto LABEL_51;
        }

        v168 = v75;
        v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v69;
        if (v148)
        {

          goto LABEL_50;
        }
      }

      else
      {
        v168 = v75;

        v28 = v69;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v149 = type metadata accessor for Logger();
      __swift_project_value_buffer(v149, static Logger.conversationBridge);

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v185[0] = v153;
        *v152 = 136315394;
        v154 = v168();
        if (v155)
        {
          v156 = v155;
        }

        else
        {
          v154 = 7104878;
          v156 = 0xE300000000000000;
        }

        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, v185);

        *(v152 + 4) = v157;
        *(v152 + 12) = 2080;
        v159 = (v171)(v158);
        if (v160)
        {
          v161 = v160;
        }

        else
        {
          v159 = 0x3E6C696E3CLL;
          v161 = 0xE500000000000000;
        }

        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, v185);

        *(v152 + 14) = v162;
        _os_log_impl(&dword_1DC659000, v150, v151, "Not running execution since PommesInfo points to tcuId: %s whereas selectedTCUId is %s", v152, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v153, -1, -1);
        MEMORY[0x1E12A2F50](v152, -1, -1);
      }

      else
      {
      }

      goto LABEL_98;
    }

    goto LABEL_49;
  }

LABEL_51:
  v82 = (v29)();
  if (ResultCandidateProcessingStatus.rawValue.getter(v82) == 0x64656C65636E6163 && v83 == 0xE800000000000000)
  {
    goto LABEL_53;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
    goto LABEL_55;
  }

  v91 = (v29)(v85);
  if (ResultCandidateProcessingStatus.rawValue.getter(v91) == 0xD000000000000013 && 0x80000001DCA7B530 == v92)
  {
LABEL_53:

    goto LABEL_55;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v93)
  {
LABEL_55:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.conversationBridge);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v185[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], v185);
      _os_log_impl(&dword_1DC659000, v87, v88, "Execution in progress for RC ID: %s. Not sending ConversationUserInput", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x1E12A2F50](v90, -1, -1);
LABEL_59:
      MEMORY[0x1E12A2F50](v89, -1, -1);

      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  v95 = __swift_project_value_buffer(v94, static Logger.conversationBridge);

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();

  v98 = os_log_type_enabled(v96, v97);
  v172 = v4;
  v173 = v95;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v100 = v47;
    v101 = swift_slowAlloc();
    v185[0] = v101;
    *v99 = 136315138;
    *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], v185);
    _os_log_impl(&dword_1DC659000, v96, v97, "Attempting execution for RC ID: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    v102 = v101;
    v47 = v100;
    MEMORY[0x1E12A2F50](v102, -1, -1);
    MEMORY[0x1E12A2F50](v99, -1, -1);
  }

  v103 = (*(*a1 + 312))();
  if (!v103)
  {
    v87 = Logger.logObject.getter();
    v163 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v163))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_1DC659000, v87, v163, "NL User parses is nil", v89, 2u);
      goto LABEL_59;
    }

LABEL_97:

    goto LABEL_98;
  }

  v104 = v103;
  (*(*a1 + 600))();
  v105 = *(*a1 + 336);

  v107 = v181;
  v108 = v105(v106);
  v109 = (*(*a1 + 360))(v108);
  v171 = v110;
  v111 = v182;
  (*(*a1 + 720))();
  v112 = v178;
  outlined init with copy of ReferenceResolutionClientProtocol?(v28, v178, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v113 = type metadata accessor for NLResponse(0);
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  v116 = swift_allocObject();
  *(v116 + 16) = v104;
  v117 = v116;
  (*(v179 + 32))(v116 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v183, v180);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v107, v117 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v118 = (v117 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v119 = v171;
  *v118 = v109;
  v118[1] = v119;
  *(&v117->isa + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = v47;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v111, v117 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v112, v117 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_1DC659000, v120, v121, "Constructing ConversationUserInput from unranked results", v122, 2u);
    MEMORY[0x1E12A2F50](v122, -1, -1);
  }

  v123 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v124 = v177;
  swift_beginAccess();
  v126 = v174;
  v125 = v175;
  v127 = v124 + v123;
  v128 = v172;
  (*(v175 + 16))(v174, v127, v172);
  v129 = (*(*v2 + 1288))(a1, v126, v117);
  v130 = v128;
  v131 = v129;
  (*(v125 + 8))(v126, v130);
  if (!v131)
  {
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v164, v165))
    {

LABEL_23:

LABEL_99:
      v147 = v28;
LABEL_100:
      outlined destroy of ReferenceResolutionClientProtocol?(v147, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
      return;
    }

    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&dword_1DC659000, v164, v165, "Could not build ConversationUserInput", v166, 2u);
    MEMORY[0x1E12A2F50](v166, -1, -1);

LABEL_98:

    goto LABEL_99;
  }

  (*(**(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) + 136))(0, 3, 8, v2[10], v2[11], v2[8], v2[9], a1[2], a1[3], *(v176 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup));
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_1DC659000, v132, v133, "Sending conversation user input to execution", v134, 2u);
    MEMORY[0x1E12A2F50](v134, -1, -1);
  }

  v136 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
  v135 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v136);
  (*(v135 + 24))(v131, *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v136, v135);

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v183 = v117;
    v140 = v139;
    v182 = swift_slowAlloc();
    v184 = v182;
    *v140 = 136315138;
    v141 = ConversationUserInput.debugDescription.getter();
    v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v184);

    *(v140 + 4) = v143;
    _os_log_impl(&dword_1DC659000, v137, v138, "Successfully sent: %s", v140, 0xCu);
    v144 = v182;
    __swift_destroy_boxed_opaque_existential_1Tm(v182);
    MEMORY[0x1E12A2F50](v144, -1, -1);
    MEMORY[0x1E12A2F50](v140, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v145 = type metadata accessor for InsightRequestSummaryLogger();
  v146 = __swift_project_value_buffer(v145, static Logger.insightRequestSummaryLogger);

  specialized InsightRequestSummaryLogger.emitDebug(_:)(v146, v2, a1);

  (*(*a1 + 416))(7);
  if ((*(*v2 + 928))(a1))
  {
    (*(*v2 + 1160))(a1);

    goto LABEL_98;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
}

void ConversationRequestProcessor.handleResultSelectedMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v89 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v81 - v12;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1DC659000, v15, v16, "ConversationBridge handling message: %@", v17, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v20 = (*(*v2 + 608))();
  if (v20)
  {
    v21 = v20;
    v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v24 = v23;
    v25 = (v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v27 = *v25;
    v26 = v25[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v27, v26);
    v86 = v22;
    v28 = ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(v22, v24, v27);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v27, v26);
    if (v28)
    {
      v84 = v24;
      v85 = v5;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      v31 = os_log_type_enabled(v29, v30);
      v83 = v2;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = v21;
        v94[0] = v81;
        *v32 = 136315138;
        v33 = v4;
        v34 = v14;
        v35 = *(*v28 + 832);

        v37 = v35(v36);
        v14 = v34;
        v4 = v33;
        v38 = v37;
        v40 = v39;

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v94);
        v42 = v28 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;

        *(v32 + 4) = v41;
        _os_log_impl(&dword_1DC659000, v29, v30, "ResultSelected received for RC state: %s", v32, 0xCu);
        v43 = v81;
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        v21 = v82;
        MEMORY[0x1E12A2F50](v43, -1, -1);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      else
      {

        v42 = v28 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      }

      v52 = (*(*v28 + 408))();
      v54 = ResultCandidateProcessingStatus.rawValue.getter(v52) == 0x64656C65636E6163 && v53 == 0xE800000000000000;
      v55 = v84;
      v56 = v85;
      if (v54)
      {
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v57 & 1) == 0)
        {

          v58 = ResultSelectedMessageBase.isMitigated.getter();
          v59 = type metadata accessor for TTResponseMessage.MitigationDecision();
          v60 = v42;
          v61 = *(v59 - 8);
          v62 = MEMORY[0x1E69D0278];
          if ((v58 & 1) == 0)
          {
            v62 = MEMORY[0x1E69D0270];
          }

          v63 = v87;
          (*(*(v59 - 8) + 104))(v87, *v62, v59);
          (*(v61 + 56))(v63, 0, 1, v59);
          (*(*v28 + 560))(v63);
          v87 = v60;
          (*(*v28 + 488))(1);
          v64 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
          swift_beginAccess();
          v65 = v88;
          (*(v56 + 16))(v88, v21 + v64, v4);
          (*(v56 + 104))(v89, *MEMORY[0x1E69D0548], v4);
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v92 == v90 && v93 == v91)
          {
            v66 = *(v56 + 8);
            v66(v89, v4);
            v66(v65, v4);
          }

          else
          {
            v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v74 = *(v56 + 8);
            v74(v89, v4);
            v74(v65, v4);

            if ((v73 & 1) == 0)
            {
LABEL_37:
              v79 = v83;
              v80 = (*(*v83 + 1384))(v28, v21, 0, 0);
              (*(*v79 + 984))(v14, v21, v28, v80);

              return;
            }
          }

          v75 = (*(*v28 + 896))(v67);
          if (v75)
          {
            v76 = v75;
            v77 = ResultSelectedMessageBase.endpointMode.getter();
            (*(*v76 + 152))(v77, v78 & 1);
          }

          goto LABEL_37;
        }
      }

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v94[0] = v71;
        *v70 = 136315138;
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v55, v94);

        *(v70 + 4) = v72;
        _os_log_impl(&dword_1DC659000, v68, v69, "RC ID: %s already canceled. Not sending commit signal.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x1E12A2F50](v71, -1, -1);
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v94[0] = v50;
        *v49 = 136315138;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v24, v94);

        *(v49 + 4) = v51;
        _os_log_impl(&dword_1DC659000, v47, v48, "Received ResultSelectedMessage before RC state was created for RC ID: %s. Dropping it on the floor.", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x1E12A2F50](v50, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v89 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DC659000, v89, v44, "Request already canceled. Not handling ResultSelectedMessage.", v45, 2u);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    v46 = v89;
  }
}

void ConversationRequestProcessor.handleSpeechStopDetectedMessage(_:forTurn:withTRPCandidateState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v9);
    _os_log_impl(&dword_1DC659000, oslog, v5, "Not sending CommitResultCandidateId for TRP ID: %s yet: Will wait for TRPFinalized due to incomplete feature work.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }
}

void ConversationRequestProcessor.handleResultSelectedMessage(_:forTurn:withResultCandidateState:speechRecognizedCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v10 = v9;
  v11 = (*(*a3 + 408))();
  if (ResultCandidateProcessingStatus.rawValue.getter(v11) == 0xD000000000000013 && 0x80000001DCA7B530 == v12)
  {

    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_12:
    (*(*v4 + 1160))(a3);
    goto LABEL_13;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v27);
    _os_log_impl(&dword_1DC659000, v16, v17, "Not sending CommitResultCandidateId for RC ID: %s yet", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

LABEL_13:
  v20 = (a2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v20, v22);
  v23.value._countAndFlagsBits = v8;
  v23.value._object = v10;
  ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(v23);

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v21, v22);
  v24 = *v20;
  v25 = v20[1];
  *v20 = a3 | 0x4000000000000000;
  v20[1] = a4;
  v26 = a4;

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v24, v25);
}

uint64_t ConversationRequestProcessor.handleCancelRequestMessage(_:)(void *a1)
{
  v2 = v1;
  v96 = type metadata accessor for RequestType();
  v100 = *(v96 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v91 - v7;
  v99 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v102 = *(v99 - 1);
  v8 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  v10 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v12 = &v91 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v93 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v101 = (&v91 - v20);
  v21 = type metadata accessor for InputOrigin();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.conversationBridge);
  v28 = a1;
  v104 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v103 = v28;

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v18;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v103;
    *(v32 + 4) = v103;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&dword_1DC659000, v29, v30, "ConversationBridge handling message: %@", v32, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v33, -1, -1);
    v36 = v32;
    v18 = v31;
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  v37 = (*(*v2 + 608))();
  if (v37)
  {
    v38 = v37;
    v39 = (v37 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v105 = 0;
    v94 = v39;
    if (*v39 >> 62 == 1)
    {
      v105 = *v39 & 0x3FFFFFFFFFFFFFFFLL;
    }

    (*(v22 + 104))(v25, *MEMORY[0x1E69D04C0], v21);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v106 == v108[0] && v107 == v108[1])
    {
      (*(v22 + 8))(v25, v21);
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v22 + 8))(v25, v21);

      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v91 = v2;
    v45 = v101;
    if (v105)
    {
      (*(*v105 + 552))(v40);
      v46 = v99;
      v47 = v102;
    }

    else
    {
      v47 = v102;
      v46 = v99;
      (*(v102 + 56))(v101, 1, 1, v99);
    }

    (*(v47 + 104))(v18, *MEMORY[0x1E69D0270], v46);
    (*(v47 + 56))(v18, 0, 1, v46);
    v48 = *(v98 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v45, v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v18, &v12[v48], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v49 = *(v47 + 48);
    if (v49(v12, 1, v46) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v50 = v49(&v12[v48], 1, v46);
      v2 = v91;
      if (v50 == 1)
      {
        v40 = outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        goto LABEL_25;
      }
    }

    else
    {
      v51 = v93;
      outlined init with copy of ReferenceResolutionClientProtocol?(v12, v93, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      if (v49(&v12[v48], 1, v46) != 1)
      {
        v87 = v102;
        v88 = v92;
        (*(v102 + 32))(v92, &v12[v48], v46);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280]);
        v89 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90 = *(v87 + 8);
        v90(v88, v46);
        outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v90(v51, v46);
        v40 = outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v2 = v91;
        if (v89)
        {
LABEL_25:
          v102 = v38;
          if (!v105)
          {
            (*(*v2 + 1216))(v40);
            v55 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
            swift_beginAccess();
            v56 = v100;
            v58 = v95;
            v57 = v96;
            v101 = *(v100 + 16);
            (v101)(v95, v102 + v55, v96);
            v59 = *MEMORY[0x1E69D0528];
            v60 = v97;
            v99 = *(v56 + 104);
            (v99)(v97, v59, v57);
            v98 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v62 = *(v56 + 8);
            v62(v60, v57);
            v100 = v56 + 8;
            v62(v58, v57);
            if ((v61 & 1) == 0)
            {
              goto LABEL_28;
            }

            v63 = v95;
            v64 = v96;
            (v101)(v95, v102 + v55, v96);
            v65 = v97;
            (v99)(v97, *MEMORY[0x1E69D0538], v64);
            v66 = dispatch thunk of static Equatable.== infix(_:_:)();
            v62(v65, v64);
            v62(v63, v64);
            if ((v66 & 1) == 0)
            {
LABEL_28:
              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                *v69 = 0;
                _os_log_impl(&dword_1DC659000, v67, v68, "Request cancelled before receiving ResultSelectedMessage", v69, 2u);
                MEMORY[0x1E12A2F50](v69, -1, -1);
              }
            }
          }

          v70 = RequestMessageBase.requestId.getter();
          v72 = v71;
          v73 = CancelRequestMessage.reason.getter();
          type metadata accessor for CancelExecutionTurn();
          v74 = swift_allocObject();
          v74[2] = v70;
          v74[3] = v72;
          v74[4] = v73;
          v75 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
          v76 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v75);
          (*(v76 + 40))(v74, *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v75, v76);

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v108[0] = v80;
            *v79 = 136315138;
            v81 = CancelExecutionTurn.debugDescription.getter();
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v108);

            *(v79 + 4) = v83;
            _os_log_impl(&dword_1DC659000, v77, v78, "Successfully sent: %s", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v80);
            MEMORY[0x1E12A2F50](v80, -1, -1);
            MEMORY[0x1E12A2F50](v79, -1, -1);
          }

          v84 = *v94;
          v85 = v94[1];
          outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v94, v85);
          ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(0);
          outlined consume of ConversationRequestProcessorTurnState.SpeechState(v84, v85);

          return (*(*v2 + 408))(1, 0, 3);
        }

LABEL_24:
        v52 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
        v53 = v2[8];
        v54 = v2[9];
        (*(*v52 + 176))(v53, v54, 2);
        v40 = (*(*v52 + 232))(5, v53, v54);
        goto LABEL_25;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (*(v102 + 8))(v51, v46);
      v2 = v91;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    goto LABEL_24;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DC659000, v41, v42, "Not sending CancelExecutionTurn to Execution since StartExecutionTurn was not sent either", v43, 2u);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

  return (*(*v2 + 408))(1, 0, 3);
}

void ConversationRequestProcessor.handleAceRemoteExecutionContextUpdate(_:executionContext:reply:)(NSObject *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v222 = a4;
  v223 = a1;
  v207 = type metadata accessor for SelectedUserAttributes();
  v210 = *(v207 - 8);
  v6 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v204 = v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v205 = v194 - v12;
  v217 = type metadata accessor for UserID();
  v215 = *(v217 - 8);
  v13 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v213 = v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v214 = v194 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RequestType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v212 = v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v211 = v194 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v216 = v194 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v194 - v31;
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v33);
  v36 = v194 - v35;
  v37 = *(*v4 + 608);
  v220 = v4;
  v38 = v37(v34);
  if (v38)
  {
    v218 = v21;
    v219 = a3;
    v208 = v18;
    v209 = v17;
    v39 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    v40 = v38;
    swift_beginAccess();
    v41 = *(v23 + 16);
    v221 = v40;
    v201 = v39;
    v203 = v41;
    v41(v36, &v39[v40], v22);
    (*(v23 + 104))(v32, *MEMORY[0x1E69D0548], v22);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v227[0] == v225 && v227[1] == *(&v225 + 1))
    {
      v42 = 1;
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v202 = v23;
    v47 = *(v23 + 8);
    v47(v32, v22);
    v200 = v47;
    v47(v36, v22);

    if ((v42 & 1) != 0 && (v48 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState, v49 = v221, swift_beginAccess(), *(v49 + v48) >> 62 != 1))
    {
      v78 = 0x80000001DCA80660;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.conversationBridge);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v97 = os_log_type_enabled(v95, v96);
      v55 = v219;
      if (v97)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v227[0] = v99;
        *v98 = 136315138;
        *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x80000001DCA80660, v227);
        _os_log_impl(&dword_1DC659000, v95, v96, "%s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x1E12A2F50](v99, -1, -1);
        MEMORY[0x1E12A2F50](v98, -1, -1);
      }

      if (v55)
      {
        v100 = objc_allocWithZone(MEMORY[0x1E69C7780]);

        v101 = [v100 init];
        v102 = v218;
        UUID.init()();
        v103 = UUID.uuidString.getter();
        v105 = v104;
        (*(v208 + 8))(v102, v209);
        v106 = MEMORY[0x1E12A1410](v103, v105);

        [v101 setAceId_];

        v91 = v101;
        v107 = [v223 aceId];
        [v91 setRefId_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        goto LABEL_36;
      }
    }

    else
    {
      v50 = [v223 executionContextUpdate];
      if (v50)
      {
        v51 = v50;
        v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        outlined init with copy of ReferenceResolutionClientProtocol?(v220 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, &v225, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        v55 = v219;
        v199 = v54;
        if (v226)
        {
          outlined init with take of ReferenceResolutionClientProtocol(&v225, v227);
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
          static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
          v198 = v52;
          if (v226)
          {
            type metadata accessor for ExecutionContextUpdate();
            if (swift_dynamicCast())
            {
              v197 = v224;
              v135 = v221;
              v196 = ConversationRequestProcessorTurnState.isServerFallback.getter();
              v203(v216, &v201[v135], v22);
              v136 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
              swift_beginAccess();
              v201 = *(v135 + v136);
              v137 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
              swift_beginAccess();
              v138 = 0;
              v139 = *(v135 + v137);
              if (v139 >> 62 == 1)
              {
                v138 = (v139 & 0x3FFFFFFFFFFFFFFFLL);
              }

              v141 = v214;
              v140 = v215;
              v142 = *(v215 + 16);
              v142(v214, v220 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v217);
              if (v138)
              {
                v143 = v211;
                v144 = v203;
                v203(v211, v216, v22);
                v144(v212, v143, v22);
                v142(v213, v138 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v217);
                v145 = (*v138 + 792);
                v146 = *v145;
                v147 = v201;
                v148 = v205;
                v203 = v145;
                v195 = v146;
                v146(v147);
                v149 = v210;
                v150 = *(v210 + 48);
                v151 = v207;
                if (v150(v148, 1, v207))
                {
                  v152 = outlined destroy of ReferenceResolutionClientProtocol?(v148, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  LODWORD(v205) = 0;
                }

                else
                {
                  v161 = *(v149 + 16);
                  v194[1] = v138;
                  v162 = v204;
                  v161(v204, v148, v151);
                  outlined destroy of ReferenceResolutionClientProtocol?(v148, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  LODWORD(v205) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
                  v152 = (*(v149 + 8))(v162, v151);
                }

                v163 = v206;
                v195(v152);
                if (v150(v163, 1, v151))
                {

                  v164 = v200;
                  v200(v211, v22);
                  v165 = v215;
                  v166 = v217;
                  (*(v215 + 8))(v214, v217);
                  v164(v216, v22);
                  outlined destroy of ReferenceResolutionClientProtocol?(v163, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  v167 = 0;
                }

                else
                {
                  v168 = v210;
                  v169 = v163;
                  v170 = v204;
                  (*(v210 + 16))(v204, v169, v151);
                  outlined destroy of ReferenceResolutionClientProtocol?(v169, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  v167 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

                  (*(v168 + 8))(v170, v151);
                  v171 = v200;
                  v200(v211, v22);
                  v165 = v215;
                  v166 = v217;
                  (*(v215 + 8))(v214, v217);
                  v171(v216, v22);
                }

                v159 = v218;
                v160 = v197;
                updated = type metadata accessor for ConversationContextUpdateMetadata();
                v173 = *(updated + 48);
                v174 = *(updated + 52);
                v156 = swift_allocObject();
                *(v156 + 16) = v196 & 1;
                (*(v202 + 32))(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v212, v22);
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v201;
                (*(v165 + 32))(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v213, v166);
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v205 & 1;
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v167 & 1;
              }

              else
              {
                v153 = type metadata accessor for ConversationContextUpdateMetadata();
                v154 = *(v153 + 48);
                v155 = *(v153 + 52);
                v156 = swift_allocObject();
                *(v156 + 16) = v196 & 1;
                (*(v202 + 32))(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v216, v22);
                v157 = v201;
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v201;
                (*(v140 + 32))(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v141, v217);
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
                *(v156 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
                v158 = v157;
                v159 = v218;
                v160 = v197;
              }

              v175 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(*(v220 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled));
              if (one-time initialization token for conversationBridge != -1)
              {
                swift_once();
              }

              v176 = type metadata accessor for Logger();
              __swift_project_value_buffer(v176, static Logger.conversationBridge);
              v177 = Logger.logObject.getter();
              v178 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v177, v178))
              {
                v179 = swift_slowAlloc();
                *v179 = 0;
                _os_log_impl(&dword_1DC659000, v177, v178, "Submitting context update obtained from remote companion device", v179, 2u);
                MEMORY[0x1E12A2F50](v179, -1, -1);
              }

              v180 = v228;
              v181 = v229;
              __swift_project_boxed_opaque_existential_1(v227, v228);
              (*(v181 + 8))(v160, v156, v175, v180, v181);
              v182 = Logger.logObject.getter();
              v183 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v182, v183))
              {
                v184 = swift_slowAlloc();
                *v184 = 0;
                _os_log_impl(&dword_1DC659000, v182, v183, "Successfully applied remote context update", v184, 2u);
                MEMORY[0x1E12A2F50](v184, -1, -1);
              }

              v185 = v219;
              if (v219)
              {
                v186 = objc_allocWithZone(MEMORY[0x1E69C7788]);

                v187 = [v186 init];
                UUID.init()();
                v188 = UUID.uuidString.getter();
                v190 = v189;
                (*(v208 + 8))(v159, v209);
                v191 = MEMORY[0x1E12A1410](v188, v190);

                [v187 setAceId_];

                v192 = v187;
                v193 = [v223 aceId];
                [v192 setRefId_];

                v185(v192, 0);
                _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v185);
              }

              outlined consume of Data._Representation(v198, v199);

              goto LABEL_53;
            }
          }

          else
          {
            outlined destroy of ReferenceResolutionClientProtocol?(&v225, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.conversationBridge);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          v59 = os_log_type_enabled(v57, v58);
          v60 = v218;
          if (v59)
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v225 = v62;
            *v61 = 136315138;
            *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001DCA80630, &v225);
            _os_log_impl(&dword_1DC659000, v57, v58, "%s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v62);
            MEMORY[0x1E12A2F50](v62, -1, -1);
            MEMORY[0x1E12A2F50](v61, -1, -1);
          }

          if (v55)
          {
            v63 = objc_allocWithZone(MEMORY[0x1E69C7778]);

            v64 = [v63 init];
            UUID.init()();
            v65 = UUID.uuidString.getter();
            v67 = v66;
            (*(v208 + 8))(v60, v209);
            v68 = MEMORY[0x1E12A1410](v65, v67);

            [v64 setAceId_];

            v69 = v64;
            v70 = [v223 aceId];
            [v69 setRefId_];

            [v69 setErrorCode_];
            v71 = MEMORY[0x1E12A1410](0xD00000000000002CLL, 0x80000001DCA80630);
            [v69 setReason_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DCA66060;
            *(inited + 32) = 0x6567617373654DLL;
            v73 = inited + 32;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 40) = 0xE700000000000000;
            *(inited + 48) = 0xD00000000000002CLL;
            *(inited + 56) = 0x80000001DCA80630;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            outlined destroy of ReferenceResolutionClientProtocol?(v73, &_sSS_yptMd, &_sSS_yptMR);
            v74 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v75 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v77 = [v74 initWithDomain:v75 code:-1 userInfo:isa];

            v55(v69, v77);
            outlined consume of Data._Representation(v198, v199);

            _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v55);
LABEL_54:
            __swift_destroy_boxed_opaque_existential_1Tm(v227);
            return;
          }

          outlined consume of Data._Representation(v198, v199);
LABEL_53:

          goto LABEL_54;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(&v225, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        __swift_project_value_buffer(v114, static Logger.conversationBridge);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v227[0] = v118;
          *v117 = 136315138;
          *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x80000001DCA805F0, v227);
          _os_log_impl(&dword_1DC659000, v115, v116, "%s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v118);
          MEMORY[0x1E12A2F50](v118, -1, -1);
          MEMORY[0x1E12A2F50](v117, -1, -1);
        }

        if (v55)
        {
          v119 = objc_allocWithZone(MEMORY[0x1E69C7778]);

          v120 = [v119 init];
          v121 = v218;
          UUID.init()();
          v122 = UUID.uuidString.getter();
          v124 = v123;
          (*(v208 + 8))(v121, v209);
          v125 = MEMORY[0x1E12A1410](v122, v124);

          [v120 setAceId_];

          v126 = v120;
          v127 = [v223 aceId];
          [v126 setRefId_];

          [v126 setErrorCode_];
          v128 = MEMORY[0x1E12A1410](0xD000000000000033, 0x80000001DCA805F0);
          [v126 setReason_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          v129 = swift_initStackObject();
          *(v129 + 16) = xmmword_1DCA66060;
          *(v129 + 32) = 0x6567617373654DLL;
          v130 = v129 + 32;
          *(v129 + 72) = MEMORY[0x1E69E6158];
          *(v129 + 40) = 0xE700000000000000;
          *(v129 + 48) = 0xD000000000000033;
          *(v129 + 56) = 0x80000001DCA805F0;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v129);
          swift_setDeallocating();
          outlined destroy of ReferenceResolutionClientProtocol?(v130, &_sSS_yptMd, &_sSS_yptMR);
          v131 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v132 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
          v133 = Dictionary._bridgeToObjectiveC()().super.isa;

          v134 = [v131 initWithDomain:v132 code:-1 userInfo:v133];

          v55(v126, v134);
          outlined consume of Data._Representation(v52, v199);

          goto LABEL_44;
        }

        outlined consume of Data._Representation(v52, v199);
        goto LABEL_56;
      }

      v78 = 0x80000001DCA805A0;
      v55 = v219;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Logger.conversationBridge);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v227[0] = v83;
        *v82 = 136315138;
        *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x80000001DCA805A0, v227);
        _os_log_impl(&dword_1DC659000, v80, v81, "%s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x1E12A2F50](v83, -1, -1);
        MEMORY[0x1E12A2F50](v82, -1, -1);
      }

      if (v55)
      {
        v84 = objc_allocWithZone(MEMORY[0x1E69C7778]);

        v85 = [v84 init];
        v86 = v218;
        UUID.init()();
        v87 = UUID.uuidString.getter();
        v89 = v88;
        (*(v208 + 8))(v86, v209);
        v90 = MEMORY[0x1E12A1410](v87, v89);

        [v85 setAceId_];

        v91 = v85;
        v92 = [v223 aceId];
        [v91 setRefId_];

        [v91 setErrorCode_];
        v93 = MEMORY[0x1E12A1410](0xD00000000000004CLL, 0x80000001DCA805A0);
        [v91 setReason_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
LABEL_36:
        v108 = swift_initStackObject();
        *(v108 + 16) = xmmword_1DCA66060;
        *(v108 + 32) = 0x6567617373654DLL;
        v109 = v108 + 32;
        *(v108 + 72) = MEMORY[0x1E69E6158];
        *(v108 + 40) = 0xE700000000000000;
        *(v108 + 48) = 0xD00000000000004CLL;
        *(v108 + 56) = v78;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v108);
        swift_setDeallocating();
        outlined destroy of ReferenceResolutionClientProtocol?(v109, &_sSS_yptMd, &_sSS_yptMR);
        v110 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v111 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
        v112 = Dictionary._bridgeToObjectiveC()().super.isa;

        v113 = [v110 initWithDomain:v111 code:-1 userInfo:v112];

        v55(v91, v113);
LABEL_44:

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v55);
        return;
      }
    }

LABEL_56:

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.conversationBridge);
  v223 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v223, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DC659000, v223, v44, "Ignoring RemoteExecutionContextUpdate as we are not in a turn.", v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  v46 = v223;
}

uint64_t ConversationRequestProcessor.handleFlowOutputResponseMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1DC659000, v11, v12, "ExecutionBridge received message: %@", v13, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
  FlowOutputResponseMessage.outputId.getter();
  v17 = FlowOutputResponseMessage.commandResult.getter();
  (*(*v16 + 312))(v8, v17, 0);

  return (*(v5 + 8))(v8, v4);
}

void ConversationRequestProcessor.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void), char *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v158 = v151 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = v151 - v13;
  v14 = type metadata accessor for SelectedUserAttributes();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v159 = v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v161 = v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v160 = v151 - v22;
  v23 = type metadata accessor for UserID();
  v170 = *(v23 - 8);
  v171 = v23;
  v24 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v169 = v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RequestType();
  v167 = *(v26 - 8);
  v27 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v166 = v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v165 = v151 - v30;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.conversationBridge);
  v33 = a1;
  v172 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v164 = v15;
  v168 = v26;
  v162 = v14;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v175[0] = v38;
    *v37 = 136315138;
    v39 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0xB0))();
    v41 = a2;
    v42 = a3;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v175);

    *(v37 + 4) = v43;
    a3 = v42;
    a2 = v41;
    _os_log_impl(&dword_1DC659000, v34, v35, "<<<--- %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  v44 = *(v33 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
  v45 = *(v33 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);
  v47 = *(v4 + 8);
  v46 = *(v4 + 9);
  if (v44 == v47 && v45 == v46 || (v48 = *(v33 + OBJC_IVAR___SKRExecutionOutput_executionRequestId), v49 = *(v33 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8), v50 = *(v4 + 8), v51 = *(v4 + 9), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v44 == *(v4 + 10) && v45 == *(v4 + 11) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v52 = (*(*v4 + 608))();
    if (v52)
    {
      v53 = v52;
      v157 = v47;
      v54 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v55 = *(v53 + v54);
      if (v55 >> 62 == 1)
      {
        v156 = v46;
        v154 = v4;
        v172 = a2;
        v158 = a3;
        v56 = (v55 & 0x3FFFFFFFFFFFFFFFLL);
        v57 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
        swift_beginAccess();
        v58 = v168;
        v59 = *(v167 + 16);
        v60 = v165;
        v59(v165, v53 + v57, v168);
        v61 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
        swift_beginAccess();
        v155 = v53;
        v62 = *((*MEMORY[0x1E69E7D40] & *v33) + 0xB8);
        v153 = *(v53 + v61);
        v63 = v153;

        v152 = v62(v64);
        v59(v166, v60, v58);
        (*(v170 + 16))(v169, v56 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v171);
        v65 = (*v56 + 792);
        v66 = *v65;

        v68 = v160;
        v69 = v56;
        v151[1] = v65;
        v66(v67);
        v70 = v164;
        v71 = *(v164 + 48);
        v72 = v162;
        if (v71(v68, 1, v162))
        {
          v73 = outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v160) = 0;
        }

        else
        {
          v112 = v159;
          (*(v70 + 16))(v159, v68, v72);
          outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v160) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
          v73 = (*(v70 + 8))(v112, v72);
        }

        v113 = v161;
        v66(v73);
        v114 = v113;
        v115 = v71(v113, 1, v72);
        v116 = v155;
        v117 = v167;
        v118 = v154;
        if (v115)
        {

          v119 = v168;
          (*(v117 + 8))(v165, v168);
          outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v120 = 0;
        }

        else
        {
          v121 = v164;
          v122 = v159;
          (*(v164 + 16))(v159, v114, v72);
          outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v120 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

          (*(v121 + 8))(v122, v72);
          v119 = v168;
          (*(v117 + 8))(v165, v168);
        }

        v123 = v69;
        v151[2] = v69;
        updated = type metadata accessor for ConversationContextUpdateMetadata();
        v125 = *(updated + 48);
        v126 = *(updated + 52);
        v127 = swift_allocObject();
        *(v127 + 16) = 0;
        (*(v117 + 32))(v127 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v166, v119);
        *(v127 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v153;
        (*(v170 + 32))(v127 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v169, v171);
        *(v127 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v152 & 1;
        *(v127 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v160 & 1;
        *(v127 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v120 & 1;
        v128 = *(v33 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
        v129 = v123[3];

        specialized ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:)(v128, v127);

        (*(**&v118[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker] + 256))(*(v33 + OBJC_IVAR___SKRExecutionOutput_command));
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v130 = type metadata accessor for InsightRequestSummaryLogger();
        v131 = __swift_project_value_buffer(v130, static Logger.insightRequestSummaryLogger);
        v132 = v33;

        specialized InsightRequestSummaryLogger.emitDebug(_:)(v131, v118, v132);

        v133 = *&v118[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
        v134 = *(v118 + 10);
        v170 = *(v118 + 11);
        v171 = v134;
        v136 = *(v118 + 12);
        v135 = *(v118 + 13);
        v168 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
        v169 = v136;
        v167 = v135;
        v137 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
        v138 = type metadata accessor for UUID();
        v139 = *(v138 - 8);
        v140 = v163;
        (*(v139 + 16))(v163, &v118[v137], v138);
        (*(v139 + 56))(v140, 0, 1, v138);
        v141 = swift_allocObject();
        v141[2] = v118;
        v141[3] = v116;
        v142 = v172;
        v141[4] = v132;
        v141[5] = v142;
        v141[6] = v158;
        v143 = *(*v133 + 296);
        v144 = v132;

        v143(v144, v157, v156, v171, v170, &v118[v168], 0, v127, v169, v167, v140, 0, 0, partial apply for closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:), v141);

        outlined destroy of ReferenceResolutionClientProtocol?(v140, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v79 = *(v33 + OBJC_IVAR___SKRExecutionOutput_command);
        if (!v79)
        {
          goto LABEL_30;
        }

        v80 = one-time initialization token for warmUpSignals;
        v81 = v79;
        if (v80 != -1)
        {
          swift_once();
        }

        v82 = static ConversationRequestProcessor.warmUpSignals;
        v174[0] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCmMd, &_sSo13SABaseCommandCmMR);
        LODWORD(v82) = [v82 containsObject_];

        swift_unknownObjectRelease();
        if (v82)
        {
          v156 = v46;
          v83 = v33;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.debug.getter();
          v169 = v83;

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v172 = a2;
            v87 = v86;
            v88 = a3;
            v89 = swift_slowAlloc();
            v174[0] = v89;
            *v87 = 136315138;
            v173 = v79;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
            v90 = Optional.debugDescription.getter();
            v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v174);

            *(v87 + 4) = v92;
            _os_log_impl(&dword_1DC659000, v84, v85, "Sending warmUp command: %s", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v89);
            v93 = v89;
            a3 = v88;
            MEMORY[0x1E12A2F50](v93, -1, -1);
            v94 = v87;
            a2 = v172;
            MEMORY[0x1E12A2F50](v94, -1, -1);
          }

          v95 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
          v96 = *(v4 + 10);
          v97 = *(v4 + 11);
          v98 = type metadata accessor for UUID();
          v99 = v163;
          (*(*(v98 - 8) + 56))(v163, 1, 1, v98);
          v100 = v158;
          (*(v170 + 56))(v158, 1, 1, v171);
          (*(*v95 + 328))(v79, v157, v156, v96, v97, 0, 0, 0, v99, v100, 0, a2, a3);
          outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (one-time initialization token for insightRequestSummaryLogger != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for InsightRequestSummaryLogger();
          v102 = __swift_project_value_buffer(v101, static Logger.insightRequestSummaryLogger);
          v103 = v169;

          specialized InsightRequestSummaryLogger.emitDebug(_:)(v102, v4, v103);
        }

        else
        {
LABEL_30:
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&dword_1DC659000, v104, v105, "EXECUTION IS TRYING TO SUBMIT FLOWOUTPUT BEFORE ENDPOINTING!! THIS MUST NOT HAPPEN", v106, 2u);
            MEMORY[0x1E12A2F50](v106, -1, -1);
          }

          if (one-time initialization token for insightRequestSummaryLogger != -1)
          {
            swift_once();
          }

          v107 = type metadata accessor for InsightRequestSummaryLogger();
          v108 = __swift_project_value_buffer(v107, static Logger.insightRequestSummaryLogger);
          v109 = v33;

          specialized InsightRequestSummaryLogger.emitDebug(_:)(v108, v4, v109);

          lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
          v110 = swift_allocError();
          *v111 = 8;
          a2(0, v110);
        }
      }

      return;
    }

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DC659000, v74, v75, "Request already canceled. Not submitting flow output", v76, 2u);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v77 = swift_allocError();
    *v78 = 1;
  }

  else
  {
    v156 = v46;
    v145 = v33;

    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v175[0] = v149;
      *v148 = 136315394;
      *(v148 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v175);
      *(v148 + 12) = 2080;
      *(v148 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v156, v175);
      _os_log_impl(&dword_1DC659000, v146, v147, "Received FlowOutput for requestId:%s on ConversationRequestProcessor with requestId:%s .. dropping it on the floor", v148, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v149, -1, -1);
      MEMORY[0x1E12A2F50](v148, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v77 = swift_allocError();
    *v150 = 0;
  }

  a2(0, v77);
}

uint64_t closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - v15;
  v17 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);

  v33 = a4;

  v19 = a2;
  v20 = a2;
  v21 = one-time initialization token for shared;
  v22 = a5;
  v23 = a7;

  v24 = a1;
  v25 = a1;
  if (v21 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = static MessageBusActor.shared;
  v27 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v30 = v33;
  v29 = v34;
  v28[4] = a3;
  v28[5] = v30;
  v28[6] = v19;
  v28[7] = v22;
  v28[8] = v29;
  v28[9] = v23;
  v28[10] = v24;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:), v28);
  (*(*v17 + 120))();
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v12;
  v8[14] = v13;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:), v9, 0);
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  (*(*v5 + 160))(*(v3 + v6), 1, v2 != 0, v4[8], v4[9], v4[10], v4[11], v1);
  v7 = *(v3 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + v6) = v9;
  if (v2)
  {
    if (one-time initialization token for insightRequestSummaryLogger == -1)
    {
LABEL_4:
      v10 = *(v0 + 88);
      v11 = *(v0 + 64);
      v12 = type metadata accessor for InsightRequestSummaryLogger();
      v13 = __swift_project_value_buffer(v12, static Logger.insightRequestSummaryLogger);

      specialized InsightRequestSummaryLogger.emitDebug(_:)(v13, v11, v10);
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = type metadata accessor for InsightRequestSummaryLogger();
  v17 = __swift_project_value_buffer(v16, static Logger.insightRequestSummaryLogger);

  specialized InsightRequestSummaryLogger.emitDebug(_:)(v17, v15, v14);
LABEL_8:
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 96);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);

  v20(v18, v21);
  v23 = *(v0 + 8);

  return v23();
}

void ConversationRequestProcessor.close(withExecutionOutput:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB0))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v4, v5, "<<<--- %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v3, 0, 0, 0);
}

void ConversationRequestProcessor.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xB0))();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v8, v9, "<<<--- %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
    _os_log_impl(&dword_1DC659000, v15, v16, "There was an error while running execution: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v7, a2, a3, 0);
}

void ConversationRequestProcessor.close(withExecutionOutput:errorString:shouldFailRequest:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v12 = 136315138;
    v13 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0xB0))();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v10, v11, "<<<--- %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v9, a2, a3, a4 & 1);
}

void ConversationRequestProcessor.close(withExecutionOutput:needsUserInput:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB0))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v4, v5, "<<<--- %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v3, 0, 0, 0);
}

void ConversationRequestProcessor.fallbackToServer(forResultCandidateId:serverFallbackReason:)()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "Execution cannot fallback to server since it is not implemented", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall ConversationRequestProcessor.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "Execution cannot fallback to info domain results since it is not implemented", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

void ConversationRequestProcessor.fetchSpeechInfo(reply:)(void (*a1)(void))
{
  v3 = (*(*v1 + 608))();
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    if (*v4 >> 62 == 1)
    {
      v5 = v4[1];
      if (v5)
      {
        v6 = objc_allocWithZone(MEMORY[0x1E698D218]);
        v7 = v5;
        v8 = [v6 initWithSpeechRecognizedCommand_];
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.conversationBridge);
        v10 = v8;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = v28;
          *v13 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12AFSpeechInfoCSgMd, &_sSo12AFSpeechInfoCSgMR);
          v14 = Optional.debugDescription.getter();
          v16 = a1;
          v17 = v8;
          v18 = v10;
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v29);

          *(v13 + 4) = v19;
          v10 = v18;
          v8 = v17;
          a1 = v16;
          _os_log_impl(&dword_1DC659000, v11, v12, "Replying with speechInfo: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          MEMORY[0x1E12A2F50](v28, -1, -1);
          MEMORY[0x1E12A2F50](v13, -1, -1);
        }

        a1(v8);
      }

      else
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.conversationBridge);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1DC659000, v25, v26, "Cannot fetch speechInfo since SpeechRecognized is nil", v27, 2u);
          MEMORY[0x1E12A2F50](v27, -1, -1);
        }

        a1(0);
      }

      return;
    }
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
    _os_log_impl(&dword_1DC659000, v21, v22, "Cannot fetch speechInfo before endpointing", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  a1(0);
}

void ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for RequestType();
  v57 = *(v8 - 8);
  isa = v57[8].isa;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1DC659000, v14, v15, "Received FlowPluginInfo: %@", v16, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v19 = (*(*v2 + 608))();
  if (v19)
  {
    v20 = v19;
    v21 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
    swift_beginAccess();
    v22 = *(v20 + v21);
    *(v20 + v21) = v13;

    v23 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    v24 = swift_beginAccess();
    v25 = *(v20 + v23);
    if (v25 >> 62 == 1)
    {
      if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) == 1)
      {
        v28 = (v25 & 0x3FFFFFFFFFFFFFFFLL) + 16;
        v26 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *(v28 + 8);
        MEMORY[0x1EEE9AC00](v24);
        *(&v55 - 4) = v2;
        *(&v55 - 3) = v29;
        v53 = v27;
        v54 = v13;
        v30 = objc_allocWithZone(type metadata accessor for FlowPluginInfoMessage());
        v31 = v13;

        v32 = FlowPluginInfoMessage.init(build:)();

        if (v32)
        {
          v33 = v2[7];
          __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
          dispatch thunk of MessagePublishing.postMessage(_:)();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_1DC659000, v34, v35, "Posted FlowPluginInfo message to the bus", v36, 2u);
            MEMORY[0x1E12A2F50](v36, -1, -1);
          }

          goto LABEL_21;
        }

        v34 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v34, v41))
        {
          goto LABEL_20;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Could not init FlowPluginInfoMessage";
        goto LABEL_19;
      }

      v44 = v2[10];
      v55 = v2[11];
      v56 = v44;
      v45 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v46 = v57;
      (v57[2].isa)(v11, v20 + v45, v8);
      v47 = v13[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest];
      v48 = v13;
      LOBYTE(v45) = ConversationRequestProcessorTurnState.isServerFallback.getter();
      v49 = type metadata accessor for UserID();
      (*(*(v49 - 8) + 56))(v7, 1, 1, v49);
      v50 = specialized static ConversationMUXUtils.voiceIdentificationSignal(withRefId:requestType:isPersonalRequest:isServerFallback:voiceIdClassification:voiceIdOverridden:selectedUserId:)(v56, v55, v11, v47, v45 & 1, 0, 1, 0, v7);
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (v46[1].isa)(v11, v8);
      if (v50)
      {
        v51 = v2[2];
        aBlock[4] = closure #2 in ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:);
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_8;
        v52 = _Block_copy(aBlock);
        v34 = v50;
        [v51 handleCommand:v34 completion:v52];

        _Block_release(v52);

        goto LABEL_21;
      }

      v34 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "VoiceIdentificationSignal was not initialized. Refer to RequestDispatcher logs to understand why.";
        goto LABEL_19;
      }
    }

    else
    {
      v40 = v13;
      v34 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Received FlowPluginInfo from Conversation before endpointing. FlowPluginInfo is not supposed to be sent eagerly.";
LABEL_19:
        _os_log_impl(&dword_1DC659000, v34, v41, v43, v42, 2u);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }
    }

LABEL_20:

LABEL_21:

    return;
  }

  v57 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1DC659000, v57, v37, "Ignoring FlowPluginInfo as we are not in a turn", v38, 2u);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  v39 = v57;
}

uint64_t closure #1 in ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - v13;
  v15 = *MEMORY[0x1E69D0460];
  v16 = type metadata accessor for MessageSource();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  FlowPluginInfoMessage.Builder.source.setter();
  v18 = *(a2 + 12);
  v19 = *(a2 + 13);

  FlowPluginInfoMessage.Builder.assistantId.setter();
  v20 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v10, &a2[v20], v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  FlowPluginInfoMessage.Builder.sessionId.setter();
  v24 = *(a2 + 8);
  v23 = *(a2 + 9);

  FlowPluginInfoMessage.Builder.requestId.setter();

  FlowPluginInfoMessage.Builder.resultCandidateId.setter();
  v25 = *(a5 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL);
  FlowPluginInfoMessage.Builder.supportsOnDeviceNL.setter();
  v26 = *(a5 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest);
  return FlowPluginInfoMessage.Builder.isPersonalRequest.setter();
}

uint64_t ConversationRequestProcessor.getSelfReflectionDecision()@<X0>(_BYTE *a1@<X8>)
{
  (*(**(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 320))(v4);
  result = outlined destroy of SelfReflectionResponse(v4);
  *a1 = v4[0];
  return result;
}

void ConversationRequestProcessor.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "Submitting an External activation request", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v12 = *(v4 + 16);
  if ([v12 respondsToSelector_])
  {
    v14[4] = a2;
    v14[5] = a3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v14[3] = &block_descriptor_8;
    v13 = _Block_copy(v14);

    [v12 submitExternalActivationRequest:a1 completion:v13];
    _Block_release(v13);
  }
}

void ConversationRequestProcessor.postToMessageBus(message:completion:)(void *a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  type metadata accessor for RequestMessageBase();
  if (swift_dynamicCastClass())
  {
    v25 = a1;
    if (RequestMessageBase.requestId.getter() == v3[8] && v6 == v3[9])
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.conversationBridge);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v26 = v13;
          *v12 = 136315138;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v26);
          _os_log_impl(&dword_1DC659000, v10, v11, "Skipping: %s,  Message requestId doesn't match current requestId", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v13);
          MEMORY[0x1E12A2F50](v13, -1, -1);
          MEMORY[0x1E12A2F50](v12, -1, -1);
        }

        v14 = 0;
LABEL_23:
        a2(v14, 0);

        return;
      }
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "Posting message received from Flow", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v24 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
    v14 = 1;
    goto LABEL_23;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v26);
    _os_log_impl(&dword_1DC659000, v16, v17, "Skipping: %s,  Message from flow is not of type RequestMessageBase", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  a2(0, 0);
}

void ConversationRequestProcessor.closeInternal(_:_:_:)(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!(*(*v4 + 608))())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v20, "Request already canceled. Not closing.", v21, 2u);
    goto LABEL_18;
  }

  v9 = *&a1[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v10 = *&a1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8];
  v11 = v4[8];
  v12 = v4[9];
  v13 = v9 == v11 && v10 == v12;
  if (v13 || (v14 = *&a1[OBJC_IVAR___SKRExecutionOutput_executionRequestId], v15 = *&a1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], v16 = v4[8], v17 = v4[9], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v18 = *(*v4 + 1136);

    v18(a1, a2, a3, a4 & 1);
    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationBridge);
  v23 = a1;

  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v24))
  {
    v21 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v27);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v27);
    _os_log_impl(&dword_1DC659000, oslog, v24, "Received close() for requestId:%s on ConversationRequestProcessor with requestId:%s .. ignoring.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v25, -1, -1);
LABEL_18:
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

LABEL_19:
}

void ConversationRequestProcessor.synchronizedClose(_:_:_:)(void *a1, uint64_t a2, void (**a3)(char *, uint64_t), int a4)
{
  v5 = v4;
  LODWORD(v179) = a4;
  v180 = a3;
  v174 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v160 - v9;
  v168 = type metadata accessor for OSSignpostID();
  v167 = *(v168 - 8);
  v11 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v13 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v160 - v16;
  v18 = type metadata accessor for SelectedUserAttributes();
  v173 = *(v18 - 8);
  v19 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v170 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v169 = &v160 - v25;
  v178 = type metadata accessor for UserID();
  v26 = *(v178 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v185 = (&v160 - v30);
  v183 = type metadata accessor for RequestType();
  v31 = *(v183 - 8);
  v32 = v31[8];
  MEMORY[0x1EEE9AC00](v183);
  v176 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v172 = &v160 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v182 = &v160 - v37;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, static Logger.conversationBridge);
  v40 = a1;
  v184 = v39;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v43 = os_log_type_enabled(v41, v42);
  v164 = v13;
  v166 = v10;
  v175 = v17;
  v181 = v40;
  v171 = v18;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v188 = v45;
    *v44 = 136315138;
    v46 = [v40 debugDescription];
    v47 = v5;
    v48 = v31;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = v49;
    v31 = v48;
    v5 = v47;
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v188);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_1DC659000, v41, v42, "synchronizedClose with ExecutionOutput: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1E12A2F50](v45, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  v54 = (*(*v5 + 608))();
  v55 = v185;
  if (v54)
  {
    v56 = v54;
    if (v179)
    {
      v57 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
      v58 = v5[11];
      v183 = v5[10];
      v59 = v174;
      specialized static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:)(v57, v183, v58, v174, v180);
      v60 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v61 = *(v56 + v60);
      v62 = 0xE000000000000000;
      v163 = v56;
      if (v61 >> 62 == 1)
      {
        v63 = v61 & 0x3FFFFFFFFFFFFFFFLL;
        v64 = *(v63 + 24);
        v185 = *(v63 + 16);
      }

      else
      {
        v185 = 0;
        v64 = 0xE000000000000000;
      }

      if (v180)
      {
        v86 = v59;
      }

      else
      {
        v86 = 0;
      }

      if (v180)
      {
        v62 = v180;
      }

      v87 = v5[8];
      v88 = v5[9];
      v89 = *(**(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) + 152);

      v90 = v86;
      v91 = v183;
      v183 = v87;
      v92 = v87;
      v93 = v88;
      v94 = v185;
      v89(v90, v62, v91, v58, v92, v88, v185, v64);

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v187 = v98;
        *v97 = 136315394;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v93, &v187);
        *(v97 + 12) = 2080;
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v64, &v187);

        *(v97 + 14) = v99;
        _os_log_impl(&dword_1DC659000, v95, v96, "Failed the request for requestId: %s for rcId : %s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v98, -1, -1);
        MEMORY[0x1E12A2F50](v97, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v68 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v180 = v31;
      v69 = v31[2];
      v69(v182, v56 + v68, v183);
      v70 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
      swift_beginAccess();
      v71 = *((*MEMORY[0x1E69E7D40] & *v181) + 0xB8);
      v162 = *(v56 + v70);
      LODWORD(v174) = v71(v162);
      v72 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v73 = 0;
      v179 = v72;
      v74 = *(v56 + v72);
      if (v74 >> 62 == 1)
      {
        v73 = v74 & 0x3FFFFFFFFFFFFFFFLL;
      }

      v75 = *(v26 + 16);
      v76 = v178;
      v75(v55, v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v178);
      if (v73)
      {
        v161 = v26;
        v77 = v172;
        v78 = v183;
        v69(v172, v182, v183);
        v69(v176, v77, v78);
        v79 = (v75)(v177, v73 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v76);
        v80 = *(*v73 + 792);
        v81 = v169;
        v160 = *v73 + 792;
        v80(v79);
        v82 = v173;
        v83 = *(v173 + 48);
        v84 = v171;
        if (v83(v81, 1, v171))
        {
          v85 = outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v169) = 0;
        }

        else
        {
          v106 = v165;
          (*(v82 + 16))(v165, v81, v84);
          outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v169) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
          v107 = v106;
          v77 = v172;
          v85 = (*(v82 + 8))(v107, v84);
        }

        v172 = v5;
        v108 = v170;
        v80(v85);
        v109 = v108;
        v110 = v83(v108, 1, v84);
        v111 = v181;
        if (v110)
        {

          v112 = v180;
          v113 = v180[1];
          v114 = v183;
          v113(v77, v183);
          v115 = v161;
          v116 = v178;
          (*(v161 + 8))(v185, v178);
          v113(v182, v114);
          outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v117 = 0;
          v105 = v111;
        }

        else
        {
          v118 = v173;
          v119 = v165;
          (*(v173 + 16))(v165, v109, v84);
          outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v117 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

          (*(v118 + 8))(v119, v84);
          v112 = v180;
          v120 = v180[1];
          v121 = v183;
          v120(v77, v183);
          v115 = v161;
          v116 = v178;
          (*(v161 + 8))(v185, v178);
          v120(v182, v121);
          v114 = v121;
          v105 = v181;
        }

        v104 = v175;
        updated = type metadata accessor for ConversationContextUpdateMetadata();
        v123 = *(updated + 48);
        v124 = *(updated + 52);
        v103 = swift_allocObject();
        *(v103 + 16) = 0;
        v112[4](v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v176, v114);
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v162;
        (*(v115 + 32))(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v177, v116);
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v174 & 1;
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v169 & 1;
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v117 & 1;
        v5 = v172;
      }

      else
      {
        v100 = type metadata accessor for ConversationContextUpdateMetadata();
        v101 = *(v100 + 48);
        v102 = *(v100 + 52);
        v103 = swift_allocObject();
        *(v103 + 16) = 0;
        (v180[4])(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v182, v183);
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v162;
        (*(v26 + 32))(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v55, v76);
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v174 & 1;
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
        *(v103 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
        v104 = v175;
        v105 = v181;
      }

      v125 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
      v126 = type metadata accessor for TaskPriority();
      (*(*(v126 - 8) + 56))(v104, 1, 1, v126);
      v127 = one-time initialization token for shared;
      v128 = v105;

      if (v127 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v129 = static MessageBusActor.shared;
      v130 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
      v131 = swift_allocObject();
      v131[2] = v129;
      v131[3] = v130;
      v131[4] = v5;
      v131[5] = v128;
      v131[6] = v103;
      v131[7] = v56;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v104, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v131);
      (*(*v125 + 120))();

      v132 = *(v56 + v179);
      if (v132 >> 62 == 1)
      {
        v163 = v56;
        v185 = v103;
        v133 = (v132 & 0x3FFFFFFFFFFFFFFFLL);
        v134 = *(*(v132 & 0x3FFFFFFFFFFFFFFFLL) + 416);

        v134(9);
        v135 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
        v137 = v5[10];
        v136 = v5[11];
        v139 = v5[8];
        v138 = v5[9];
        v140 = v133[3];
        v183 = v133[2];
        v141 = *(*v135 + 144);

        v181 = v138;
        v182 = v137;
        v141(v137, v136, v139, v138, v183, v140);

        v143 = v166;
        (*(*v133 + 864))(v142);
        v144 = v167;
        v145 = v168;
        if ((*(v167 + 48))(v143, 1, v168) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v143, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
        }

        else
        {
          v149 = v164;
          (*(v144 + 32))(v164, v143, v145);
          static os_signpost_type_t.end.getter();
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          os_signpost(_:dso:log:name:signpostID:)();
          (*(v144 + 8))(v149, v145);
        }

        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v186 = v153;
          *v152 = 136315650;
          *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v181, &v186);
          *(v152 + 12) = 2080;
          *(v152 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v136, &v186);
          *(v152 + 22) = 2080;
          v154 = *(*v133 + 832);

          v156 = v154(v155);
          v158 = v157;

          v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, &v186);

          *(v152 + 24) = v159;
          _os_log_impl(&dword_1DC659000, v150, v151, "Done handling on-device request for requestId: %s, rootRequestId: %s for: %s", v152, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v153, -1, -1);
          MEMORY[0x1E12A2F50](v152, -1, -1);
        }
      }

      else
      {
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_1DC659000, v146, v147, "Close called before an RC was selected. Cannot send ResultCandidateSelected to server", v148, 2u);
          MEMORY[0x1E12A2F50](v148, -1, -1);
        }
      }
    }
  }

  else
  {
    v185 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v185, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1DC659000, v185, v65, "Ignoring synchronizedClosed as we are not in a turn", v66, 2u);
      MEMORY[0x1E12A2F50](v66, -1, -1);
    }

    v67 = v185;
  }
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v7[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v8, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)()
{
  v1 = *(v0 + 96);
  v2 = static MessageBusActor.shared;
  *(v0 + 120) = static MessageBusActor.shared;
  v3 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = *(v0 + 80);
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E69E88D0] + 4);

  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
  *(v0 + 144) = v7;
  *v6 = v0;
  v6[1] = closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:);

  return MEMORY[0x1EEE6DDE0](v0 + 64, v2, v3, 0xD000000000000019, 0x80000001DCA808C0, partial apply for closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v4, v7);
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v4, 0);
}

{
  v25 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[8];
  v6 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  (*(*v6 + 160))(*(v2 + v7), 1, v5 != 0, v4[8], v4[9], v4[10], v4[11], v3);
  v8 = *(v2 + v7);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v7) = v10;
    if (one-time initialization token for conversationBridge == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = v5;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[18];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    v0[9] = v5;
    v18 = Optional.debugDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v24);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v13, v14, "Submitted FlowOutput with error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v21 = v0[10];
  ConversationRequestProcessor.synchronizedCloseRequest()();
  (*(*v21 + 408))(1, 0, 3);

  v22 = v0[1];

  return v22();
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
  v15 = *(a2 + 8);
  v31 = *(a2 + 9);
  v32 = v15;
  v16 = *(a2 + 10);
  v29 = *(a2 + 11);
  v30 = v16;
  v18 = *(a2 + 12);
  v17 = *(a2 + 13);
  v26 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
  v27 = v18;
  v25 = v17;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v13, &a2[v19], v20);
  (*(v21 + 56))(v13, 0, 1, v20);
  (*(v6 + 16))(v9, v28, v5);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v9, v5);
  (*(*v14 + 296))(v33, v32, v31, v30, v29, &a2[v26], 0, v34, v27, v25, v13, 0, 0, partial apply for closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v23);

  return outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationRequestProcessor.handledMitigation(rcState:turn:ruleType:ruleDecision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v59[-v12];
  v14 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v59[-v18];
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v59[-v21];
  (*(*a1 + 512))(a4, v20);
  (*(*a1 + 536))(a3);
  v23 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler);
  v24 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v25 = type metadata accessor for InputOrigin();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v74 = a2;
  v71 = v24;
  v68 = v27;
  v69 = v26 + 16;
  v27(v13, a2 + v24, v25);
  v28 = *(v26 + 56);
  v72 = v25;
  v70 = v26 + 56;
  v67 = v28;
  v28(v13, 0, 1, v25);
  v29 = *(*v23 + 136);
  v66 = v23;
  v29(a1, v13);
  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.conversationBridge);
  v33 = v64;
  v32 = v65;
  v34 = *(v65 + 16);
  v75 = v22;
  v34(v64, v22, v14);

  v62 = v31;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v63 = v14;
    v38 = v37;
    v61 = swift_slowAlloc();
    v77 = v61;
    *v38 = 134218242;
    v39 = TTResponseMessage.MitigationDecision.rawValue.getter();
    v60 = v36;
    v40 = v39;
    v41 = *(v32 + 8);
    v42 = v41(v33, v63);
    *(v38 + 4) = v40;
    *(v38 + 12) = 2080;
    v43 = (*(*a1 + 832))(v42);
    v45 = v32;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v77);

    *(v38 + 14) = v46;
    v32 = v45;
    _os_log_impl(&dword_1DC659000, v35, v60, "[ConversationRequestProcessor] PreExecution Migitation Decision %ld State %s", v38, 0x16u);
    v47 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1E12A2F50](v47, -1, -1);
    v48 = v38;
    v14 = v63;
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  else
  {
    v41 = *(v32 + 8);
    v41(v33, v14);
  }

  v49 = v73;
  (*(v32 + 104))(v73, *MEMORY[0x1E69D0278], v14);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280]);
  v50 = v75;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v41(v49, v14);
  specialized static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(v77 == v76, v5[12], v5[13], v5 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v5[8], v5[9], v5 + 3);
  v51 = v5[10];
  v52 = v5[11];
  v53 = v72;
  v68(v13, v74 + v71, v72);
  v67(v13, 0, 1, v53);
  v54 = (*(*v66 + 144))(a1, v51, v52, v13);
  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  if (v54)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DC659000, v55, v56, "Acted upon pre-execution decision. Not committing..", v57, 2u);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }
  }

  v41(v50, v14);
  return v54 & 1;
}

void ConversationRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = &v75[-v6];
  v7 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v90 = *(v7 - 8);
  isa = v90[8].isa;
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  v10 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v12 = &v75[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v85 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75[-v17];
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v89 = &v75[-v21];
  (*(*v1 + 504))(1, v20);
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
    v26 = swift_slowAlloc();
    v91[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), v91);
    _os_log_impl(&dword_1DC659000, v23, v24, "Attempting commit logic for RC ID: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  v27 = (*(*v2 + 400))();
  if (v29 == 2)
  {
    v30 = v27;
    v87 = v28;
    v32 = *(a1 + 16);
    v31 = *(a1 + 24);
    swift_bridgeObjectRetain_n();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    v35 = os_log_type_enabled(v33, v34);
    v83 = v30;
    v81 = v32;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v32;
      v39 = v37;
      v91[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v31, v91);
      _os_log_impl(&dword_1DC659000, v33, v34, "Calling CheckExecutionOverride for RC ID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1E12A2F50](v39, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    v40 = (*(*a1 + 896))();
    v82 = v31;
    v80 = v40;
    if (v40)
    {
      v41 = (*(*v40 + 144))();
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41;
      }

      v79 = v43;
    }

    else
    {
      v79 = 0;
    }

    v47 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
    v48 = (*v2 + 1328);
    v49 = *v48;
    v50 = (*v48)(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId);
    if (v50)
    {
      v78 = *(v50 + 16);
    }

    else
    {
      v78 = MEMORY[0x1E69E7CC0];
    }

    v51 = v49(a1 + v47);
    if (v51)
    {
      v77 = *(v51 + 24);
    }

    else
    {
      v77 = MEMORY[0x1E69E7CC0];
    }

    v52 = v89;
    v76 = v87[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup];
    (*(*a1 + 552))(v51);
    v53 = v90;
    (v90[13].isa)(v18, *MEMORY[0x1E69D0278], v7);
    (v53[7].isa)(v18, 0, 1, v7);
    v54 = *(v86 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v52, v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v18, &v12[v54], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v55 = v52;
    v56 = v53[6].isa;
    if (v56(v12, 1, v7) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v57 = v56(&v12[v54], 1, v7);
      v58 = v88;
      if (v57 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v59 = 1;
LABEL_32:
        v64 = v83;
        type metadata accessor for ExecutionOverrideContext();
        v65 = swift_allocObject();
        v66 = v77;
        *(v65 + 16) = v78;
        *(v65 + 24) = v66;
        *(v65 + 32) = v76;
        *(v65 + 33) = v59 & 1;
        *(v65 + 40) = v79;
        *(v65 + 48) = 1;
        v67 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
        v68 = type metadata accessor for TaskPriority();
        (*(*(v68 - 8) + 56))(v58, 1, 1, v68);
        v69 = one-time initialization token for shared;

        if (v69 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v70 = static MessageBusActor.shared;
        v71 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
        v72 = swift_allocObject();
        v72[2] = v70;
        v72[3] = v71;
        v74 = v81;
        v73 = v82;
        v72[4] = v2;
        v72[5] = v74;
        v72[6] = v73;
        v72[7] = v65;
        v72[8] = a1;
        v72[9] = v64;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v58, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.commit(rcState:), v72);
        (*(*v67 + 120))();

        return;
      }
    }

    else
    {
      v60 = v85;
      outlined init with copy of ReferenceResolutionClientProtocol?(v12, v85, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      if (v56(&v12[v54], 1, v7) != 1)
      {
        v61 = v90;
        v62 = v84;
        (v90[4].isa)(v84, &v12[v54], v7);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280]);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = v61[1].isa;
        v63(v62, v7);
        outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v63(v85, v7);
        outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v58 = v88;
        goto LABEL_32;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (v90[1].isa)(v60, v7);
      v58 = v88;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    v59 = 0;
    goto LABEL_32;
  }

  outlined consume of ConversationRequestProcessor.State(v27, v28, v29);
  v90 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v90, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DC659000, v90, v44, "Ignoring commit() call as we are not in a turn", v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  v46 = v90;
}

uint64_t closure #1 in ConversationRequestProcessor.commit(rcState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v8[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.commit(rcState:), v9, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.commit(rcState:)()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v2);
  v4 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  v5 = *(v3 + 56);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = closure #1 in ConversationRequestProcessor.commit(rcState:);
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];

  return (v12)(v10, v8, v9, v4, &protocol witness table for ConversationBridgeProcessorDelegate, v2, v3);
}

{
  v35 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (!v1)
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
      _os_log_impl(&dword_1DC659000, v24, v25, "Cannot act on execution override decision as ExecutionOverrideResult is nil", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    goto LABEL_13;
  }

  v3 = one-time initialization token for conversationBridge;
  v4 = *(v0 + 104);
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationBridge);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    *(v0 + 112) = *(v6 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 113) = *(v6 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v34);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DC659000, v7, v8, "ExecutionOverride result type: %s decision: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 40);
  v32 = *(v6 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type);
  v20 = ExecutionOverrideType.asPreExecutionType()();
  v33 = *(v6 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision);
  v21 = ExecutionOverrideDecision.asPreExecutionDecision()();
  v22 = ConversationRequestProcessor.handledMitigation(rcState:turn:ruleType:ruleDecision:)(v18, v17, v20, v21);

  if ((v22 & 1) == 0)
  {
LABEL_13:
    v6 = *(v0 + 104);
    v27 = *(v0 + 72);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    (*(**(v0 + 40) + 1336))(v27, *(v0 + 80));
    ConversationRequestProcessor.sendCommitToExecution(_:_:)(v29, v28, v27);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t closure #1 in ConversationRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.commit(rcState:), v3, 0);
}

Swift::Void __swiftcall ConversationRequestProcessor.handleRuntimeError(error:)(NSError *error)
{
  v2 = v1;
  p_super = &error->super;
  v3 = type metadata accessor for UUID();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
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
    v60 = v3;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[8], v2[9], aBlock);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[10], v2[11], aBlock);
    _os_log_impl(&dword_1DC659000, v15, v16, "Handling Runtime error for requestId: %s, rootRequestId: %s", v17, 0x16u);
    swift_arrayDestroy();
    v3 = v60;
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v20 = (*(*v2 + 608))();
  if (v20)
  {
    v21 = v20;
    v22 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    (*(v7 + 16))(v13, v21 + v22, v6);
    (*(v7 + 104))(v10, *MEMORY[0x1E69D0528], v6);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *(v7 + 8);
    v23(v10, v6);
    v23(v13, v6);
    if (v22)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "Understanding is running on server. Ignoring assistant_service crash", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }
    }

    else
    {
      (*(*v2 + 408))(1, 0, 3);
      v30 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
      v31 = v61;
      UUID.init()();
      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*(v62 + 8))(v31, v3);
      v35 = MEMORY[0x1E12A1410](v32, v34);

      [v30 setAceId_];

      v36 = v2[10];
      v37 = v2[11];
      v38 = v30;
      v39 = MEMORY[0x1E12A1410](v36, v37);
      [v38 setRefId_];

      v40 = p_super;
      v41 = [p_super description];
      if (!v41)
      {
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = MEMORY[0x1E12A1410](v42);
      }

      [v38 setReason_];

      [v38 setErrorCode_];
      v43 = v38;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315394;
        v48 = [v43 debugDescription];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, aBlock);

        *(v46 + 4) = v52;
        *(v46 + 12) = 2048;
        v53 = [v43 errorCode];

        *(v46 + 14) = v53;
        _os_log_impl(&dword_1DC659000, v44, v45, "Sending %s, errorCode: %ld", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1E12A2F50](v47, -1, -1);
        MEMORY[0x1E12A2F50](v46, -1, -1);
      }

      else
      {
      }

      v54 = v2[2];
      aBlock[4] = closure #1 in ConversationRequestProcessor.handleRuntimeError(error:);
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_19;
      v55 = _Block_copy(aBlock);
      [v54 handleCommand:v43 completion:v55];
      _Block_release(v55);

      v56 = (v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v58 = *v56;
      v57 = v56[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v58, v57);
      ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(0);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v58, v57);
    }
  }

  else
  {
    p_super = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(p_super, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DC659000, p_super, v27, "Not handling runtime error since request has already been cancelled", v28, 2u);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

    v29 = p_super;
  }
}

void closure #2 in ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, void *a2, uint64_t (*a3)(void), const char *a4)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = a2;
  oslog = Logger.logObject.getter();
  v9 = a3();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DC659000, oslog, v9, a4, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationRequestProcessor.acquireConversationUserInput(forUserId:requestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001DCA7ECA0, &v12);
    _os_log_impl(&dword_1DC659000, v7, v8, "%s not implemented yet", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  return a5(0);
}

void ConversationRequestProcessor.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v55 = a3;
  v56 = a1;
  v16 = type metadata accessor for UserID();
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = a8;
    v51 = a6;
    v23 = a7;
    v24 = v22;
    v25 = a5;
    v26 = swift_slowAlloc();
    v57 = v26;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, a2, &v57);
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, a4, &v57);
    _os_log_impl(&dword_1DC659000, v20, v21, "Execution asked to re-trigger requestId: %s with userId: %s", v24, 0x16u);
    swift_arrayDestroy();
    v27 = v26;
    a5 = v25;
    MEMORY[0x1E12A2F50](v27, -1, -1);
    v28 = v24;
    a7 = v23;
    a8 = v50;
    a6 = v51;
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  if (*(v9 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) != 1)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DC659000, v34, v35, "Ignoring re-trigger request from SKE since MUX is not enabled", v36, 2u);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v38 = swift_allocError();
    v39 = 14;
    goto LABEL_17;
  }

  if (!(*(*v9 + 608))())
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "Current request already canceled. Not re-triggering another request.", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v38 = swift_allocError();
    v39 = 1;
LABEL_17:
    *v37 = v39;
    a7();
    goto LABEL_18;
  }

  v51 = a7;

  v29 = v9[8];
  v30 = v9[9];
  if (v29 == a5 && v30 == a6 || (v31 = v9[8], v32 = v9[9], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v33 = v52;
    UserID.init(sharedUserId:)();
    ConversationRequestProcessor.synchronizedRetriggerOriginalRequest(rollbackRequestId:userId:reply:)(v56, a2, v33, v51, a8);
    (*(v53 + 8))(v33, v54);
    return;
  }

  v43 = a5;

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = a6;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v47 = 136315394;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v57);
    *(v47 + 12) = 2080;
    *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v46, &v57);
    _os_log_impl(&dword_1DC659000, v44, v45, "Current requestId: %s does not match executionRequestId: %s. Not re-triggering another request", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v48, -1, -1);
    MEMORY[0x1E12A2F50](v47, -1, -1);
  }

  lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
  v38 = swift_allocError();
  *v49 = 0;
  v51();
LABEL_18:
}

Swift::Void __swiftcall ConversationRequestProcessor.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "closeServerRequest() cannot be handled by ConversationRequestProcessor.", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

uint64_t closure #1 in static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v23 = a7;
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v16 = *MEMORY[0x1E69D0460];
  v17 = type metadata accessor for MessageSource();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  ConversationMitigationMessage.Builder.source.setter();

  ConversationMitigationMessage.Builder.assistantId.setter();
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a4, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  ConversationMitigationMessage.Builder.sessionId.setter();

  ConversationMitigationMessage.Builder.requestId.setter();
  return ConversationMitigationMessage.Builder.isMitigated.setter();
}

void ConversationRequestProcessor.synchronizedRetriggerOriginalRequest(rollbackRequestId:userId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for UserID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConversationRequestProcessor.synchronizedCloseRequest()();
  v38 = v5;
  v39 = a1;
  v37 = a1;
  v40 = a2;
  v41 = a3;
  v16 = objc_allocWithZone(type metadata accessor for InitiateMUXStateRollbackMessage());
  v17 = InitiateMUXStateRollbackMessage.init(build:)();
  if (v17)
  {
    v18 = v17;
    v35[1] = a5;
    v36 = a4;
    v19 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    (*(v12 + 16))(v15, a3, v11);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, a2, &v42);
      *(v23 + 12) = 2080;
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v12 + 8))(v15, v11);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v42);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1DC659000, v21, v22, "Posted InitiateMUXStateRollbackMessage for requestId: %s, userId: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (v36)(0);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.conversationBridge);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v30, v31, "Could not create InitiateMUXStateRollbackMessage", v32, 2u);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v33 = swift_allocError();
    *v34 = 13;
    a4();
  }
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedRetriggerOriginalRequest(rollbackRequestId:userId:reply:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = *MEMORY[0x1E69D0460];
  v19 = type metadata accessor for MessageSource();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  InitiateMUXStateRollbackMessage.Builder.source.setter();
  v21 = *(a2 + 12);
  v22 = *(a2 + 13);

  InitiateMUXStateRollbackMessage.Builder.assistantId.setter();
  v23 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, &a2[v23], v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  InitiateMUXStateRollbackMessage.Builder.sessionId.setter();
  v27 = *(a2 + 8);
  v26 = *(a2 + 9);

  InitiateMUXStateRollbackMessage.Builder.originalRequestId.setter();

  InitiateMUXStateRollbackMessage.Builder.rollbackRequestId.setter();
  v28 = type metadata accessor for UserID();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v9, v32, v28);
  (*(v29 + 56))(v9, 0, 1, v28);
  return InitiateMUXStateRollbackMessage.Builder.userId.setter();
}

void ConversationRequestProcessor.synchronizedCloseRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v27 - v5;
  v7 = (*(*v0 + 1216))(v4);
  if ((*(*v0 + 472))(v7))
  {

    ConversationRequestProcessor.completeRequest(completion:)(0, 0);
  }

  else
  {
    v8 = (*(*v0 + 608))();
    if (v8)
    {
      v9 = v8;
      v10 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v11 = *(v9 + v10);
      if (v11 >> 62 == 1)
      {
        v12 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        v15 = one-time initialization token for shared;
        swift_retain_n();

        if (v15 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v16 = static MessageBusActor.shared;
        v17 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
        v18 = swift_allocObject();
        v18[2] = v16;
        v18[3] = v17;
        v18[4] = v1;
        v18[5] = v12;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v18);
        (*(*v13 + 120))();
      }

      else
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
          _os_log_impl(&dword_1DC659000, v24, v25, "Close called before an RC was selected.", v26, 2u);
          MEMORY[0x1E12A2F50](v26, -1, -1);
        }

        ConversationRequestProcessor.completeRequest(completion:)(0, 0);
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationBridge);
      v28 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DC659000, v28, v20, "Ignoring synchronizedCloseRequest as we are not in a turn", v21, 2u);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }

      v22 = v28;
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v5[7] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v6, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()()
{
  v1 = static MessageBusActor.shared;
  *(v0 + 64) = static MessageBusActor.shared;
  v2 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 40);
  v4 = *(MEMORY[0x1E69E88D0] + 4);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = closure #1 in ConversationRequestProcessor.synchronizedCloseRequest();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v1, v2, 0xD00000000000001ALL, 0x80000001DCA808A0, partial apply for closure #1 in closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v3, v6);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v4, 0);
}

{
  v1 = v0[7];

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "ResultCandidateSelected sent. Now submitting RequestCompleted.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v0[5];

  ConversationRequestProcessor.completeRequest(completion:)(0, 0);
  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - v10;
  v13 = *(a3 + 16);
  v12 = *(a3 + 24);
  (*(v7 + 16))(&v17 - v10, a1, v6, v9);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  (*(*a2 + 1312))(v13, v12, 0, partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed(), v15);
}

Swift::Void __swiftcall ConversationRequestProcessor.safelyCloseContextUpdater()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = one-time initialization token for shared;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v10 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater(), v11);
  (*(*v6 + 120))();
}

uint64_t closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 128) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater(), v5, 0);
}

uint64_t ConversationRequestProcessor.makeResultCandidateState(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v87 = &v76 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v76 - v8;
  v83 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v76 - v12;
  v85 = &v76 - v12;
  v14 = type metadata accessor for UserID();
  v89 = v14;
  v86 = *(v14 - 8);
  v15 = v86;
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v18;
  v19 = type metadata accessor for ResultCandidateType(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v81 = v24;
  v82 = v23;
  v25 = DirectActionResultCandidateMessage.directAction.getter();
  v27 = v26;
  v28 = DirectActionResultCandidateMessage.requestExecutionParameters.getter();
  *v22 = v25;
  v22[1] = v27;
  v22[2] = v28;
  v77 = v22;
  swift_storeEnumTagMultiPayload();
  v84 = *(v15 + 16);
  v84(v18, v80 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v14);
  v29 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v30 = *(*(v29 - 8) + 56);
  v30(v13, 1, 1, v29);
  v31 = type metadata accessor for ExecutionLocation();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  v32 = type metadata accessor for ServerFallbackReason();
  v33 = *(*(v32 - 8) + 56);
  v33(v90, 1, 1, v32);
  v34 = type metadata accessor for ResultCandidateState(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = (v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v38 = 0;
  v38[1] = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v40 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v40 - 8) + 56))(v37 + v39, 1, 1, v40);
  v41 = (v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v41 = 0;
  v41[1] = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v42 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v43 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v43 - 8) + 56))(v37 + v42, 1, 1, v43);
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v44 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v30((v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v29);
  v33(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, 1, 1, v32);
  v45 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v46 = type metadata accessor for SiriXRedirectContext();
  (*(*(v46 - 8) + 56))(v37 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v79 = type metadata accessor for SelectedUserAttributes();
  v48 = *(v79 - 8);
  v78 = *(v48 + 56);
  v80 = v48 + 56;
  v78(v37 + v47, 1, 1, v79);
  v49 = v81;
  *(v37 + 16) = v82;
  *(v37 + 24) = v49;
  outlined init with copy of ResultCandidateType(v22, v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType);
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v50 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v51 = *MEMORY[0x1E69D0AA0];
  v52 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v52 - 8) + 104))(v37 + v50, v51, v52);
  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v53 = v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v54 = type metadata accessor for UUID();
  (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
  v55 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v56 = type metadata accessor for OSSignpostID();
  (*(*(v56 - 8) + 56))(v53 + v55, 1, 1, v56);
  v84((v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId), v88, v89);
  swift_beginAccess();
  v57 = v85;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v85, v37 + v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v58 = v83;
  outlined init with copy of ReferenceResolutionClientProtocol?(v83, v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v59 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v60 = v90;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v90, v37 + v59, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v61 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v62 = *MEMORY[0x1E69D02D8];
  v63 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v63 - 8) + 104))(v37 + v61, v62, v63);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v64 = v87;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v86 + 8))(v88, v89);
  outlined destroy of RoutingDecision(v77, type metadata accessor for ResultCandidateType);
  v78(v64, 0, 1, v79);
  v65 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v64, v37 + v65);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.conversationBridge);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v91 = v70;
    *v69 = 136315138;

    v71 = ResultCandidateState.description.getter();
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v91);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_1DC659000, v67, v68, "Created %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x1E12A2F50](v70, -1, -1);
    MEMORY[0x1E12A2F50](v69, -1, -1);
  }

  return v37;
}

uint64_t ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsrResultCandidateMessage();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TextBasedResultCandidateMessage();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for GestureBasedResultCandidateMessage();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for DirectActionResultCandidateMessage();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for TextBasedTRPCandidateMessage();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for TRPCandidateRequestMessage();
            if (!swift_dynamicCastClass())
            {
              type metadata accessor for NLRoutingDecisionMessage();
              if (!swift_dynamicCastClass())
              {
                if (one-time initialization token for conversationBridge != -1)
                {
                  swift_once();
                }

                v88 = type metadata accessor for Logger();
                __swift_project_value_buffer(v88, static Logger.conversationBridge);
                v89 = a1;
                v90 = Logger.logObject.getter();
                v91 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v90, v91))
                {
                  v92 = swift_slowAlloc();
                  v93 = swift_slowAlloc();
                  v105[0] = v93;
                  *v92 = 136315138;
                  swift_getObjectType();
                  v94 = _typeName(_:qualified:)();
                  v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v105);

                  *(v92 + 4) = v96;
                  _os_log_impl(&dword_1DC659000, v90, v91, "These set of prerequisite checks are not valid for RC type: %s", v92, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v93);
                  MEMORY[0x1E12A2F50](v93, -1, -1);
                  MEMORY[0x1E12A2F50](v92, -1, -1);
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  v14 = (*(*v4 + 608))();
  if (v14)
  {
    v15 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    if (*v15 >> 62 == 1)
    {
      v101 = a2;
      v16 = v10;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.conversationBridge);
      v18 = a1;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v102 = v11;
        v22 = v21;
        v99 = swift_slowAlloc();
        v104 = v99;
        *v22 = 136315394;
        v100 = a3;
        v23 = v103;
        v98 = v20;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v97 = v19;
        v10 = v16;
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v27 = v23;
        a3 = v100;
        (*(v102 + 8))(v27, v10);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v104);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2080;
        swift_getObjectType();
        v29 = _typeName(_:qualified:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v104);

        *(v22 + 14) = v31;
        v32 = v97;
        _os_log_impl(&dword_1DC659000, v97, v98, "RC already selected. Not handling Message id %s of type %s", v22, 0x16u);
        v33 = v99;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v33, -1, -1);
        v34 = v22;
        v11 = v102;
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      else
      {

        v10 = v16;
      }

      a2 = v101;
    }

    if (*(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled))
    {
      goto LABEL_29;
    }

    v67 = *v15;
    v68 = v15[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v15, v68);
    v69 = a2;
    v70 = ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(a2, a3, v67);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v67, v68);
    if (!v70 || (, type metadata accessor for RewrittenUtteranceCandidateMessage(), swift_dynamicCastClass()))
    {
LABEL_29:

      return 1;
    }

    v102 = v11;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.conversationBridge);
    v73 = a1;

    v37 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v74))
    {
      v75 = v69;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = a3;
      v79 = v77;
      v104 = v77;
      *v76 = 136315650;
      *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v78, &v104);
      *(v76 + 12) = 2080;
      v80 = v103;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v102 + 8))(v80, v10);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v104);

      *(v76 + 14) = v84;
      *(v76 + 22) = 2080;
      swift_getObjectType();
      v85 = _typeName(_:qualified:)();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v104);

      *(v76 + 24) = v87;
      _os_log_impl(&dword_1DC659000, v37, v74, "Receive multiple RC inputs for the same RC ID: %s, not handling Message id %s of type %s", v76, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }
  }

  else
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {
      v102 = v11;
      v50 = one-time initialization token for conversationBridge;
      v51 = (a4 & 0x1FFFFFFFFFFFFFFFLL);
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.conversationBridge);
      v53 = a1;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v105[0] = v101;
        *v56 = 136315394;
        v57 = v103;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        (*(v102 + 8))(v57, v10);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v105);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2080;
        swift_getObjectType();
        v62 = _typeName(_:qualified:)();
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v105);

        *(v56 + 14) = v64;
        _os_log_impl(&dword_1DC659000, v54, v55, "Message id %s of type %s received for an inactive request. Will cache it for when we get a start-turn signal.", v56, 0x16u);
        v65 = v101;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v65, -1, -1);
        MEMORY[0x1E12A2F50](v56, -1, -1);
      }

      v66 = (*(*v5 + 416))(v105);
      ConversationRequestProcessor.State.cacheCandidateMessage(_:)(a4);
      v66(v105, 0);
      outlined consume of CandidateRequestMessage?(a4);
      return 0;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationBridge);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v105[0] = v40;
      *v39 = 136315394;
      v41 = v103;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v11;
      v45 = v44;
      (*(v43 + 8))(v41, v10);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, v105);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      swift_getObjectType();
      v47 = _typeName(_:qualified:)();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v105);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_1DC659000, v37, v38, "Request already canceled. Not handling Message id %s of type %s.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v40, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }
  }

  return 0;
}

char *ConversationRequestProcessor.buildConversationUserInput(rcState:requestType:nlResponse:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v164 = a3;
  v168 = a2;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  v6 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v169 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v153 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v151 = &v149 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v149 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v159 = &v149 - v16;
  v170 = type metadata accessor for ExecutionLocation();
  v174 = *(v170 - 8);
  v17 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v155 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v149 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v149 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v149 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v158 = &v149 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v154 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v150 = &v149 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v149 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v157 = &v149 - v35;
  v36 = type metadata accessor for RequestType();
  v166 = *(v36 - 8);
  v167 = v36;
  v37 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v165 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v149 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v161 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v175 = &v149 - v50;
  v51 = type metadata accessor for ConversationSessionKey();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54.n128_f64[0] = MEMORY[0x1EEE9AC00](v51);
  v56 = &v149 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 424))(v177, v54);
  __swift_project_boxed_opaque_existential_1(v177, v177[3]);
  (*(v52 + 104))(v56, *MEMORY[0x1E69D0808], v51);
  dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
  (*(v52 + 8))(v56, v51);
  if (v179)
  {
    if (swift_dynamicCast())
    {
      v160 = v176;
      v57 = __swift_destroy_boxed_opaque_existential_1Tm(v177);
      goto LABEL_7;
    }

    v57 = __swift_destroy_boxed_opaque_existential_1Tm(v177);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v177);
    v57 = outlined destroy of ReferenceResolutionClientProtocol?(v178, &_sypSgMd, &_sypSgMR);
  }

  v160 = 0;
LABEL_7:
  v58 = v169;
  v59 = v170;
  v60 = v174;
  (*(*a1 + 744))(v57);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v45, v42, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v61 = type metadata accessor for SiriXRedirectContext();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v42, 1, v61) == 1)
  {
    v63 = type metadata accessor for FlowRedirectContext();
    (*(*(v63 - 8) + 56))(v175, 1, 1, v63);
  }

  else
  {
    v64 = v175;
    (*(v62 + 32))(v175, v42, v61);
    v65 = *MEMORY[0x1E69CFB30];
    v66 = type metadata accessor for FlowRedirectContext();
    v67 = *(v66 - 8);
    (*(v67 + 104))(v64, v65, v66);
    (*(v67 + 56))(v64, 0, 1, v66);
  }

  v68 = v171;
  v70 = v165;
  v69 = v166;
  v71 = v167;
  (*(v166 + 16))(v165, v168, v167);
  v72 = (*(v69 + 88))(v70, v71);
  if (v72 == *MEMORY[0x1E69D0548])
  {
    v73 = (*(*a1 + 896))();
    if (v73)
    {
      v74 = v158;
      v75 = v157;
      v76 = (*(*v73 + 112))();
      v168 = (*(*v4 + 1304))(a1, [v76 speechProfileUsed]);
      v167 = (*(*v4 + 1296))(a1);
      v77 = a1[3];
      v158 = a1[2];
      v78 = *(*a1 + 552);

      v173 = v75;
      v80 = v78(v79);
      v81 = (*(*a1 + 888))(v80);
      v165 = v82;
      v166 = v81;
      v83 = v159;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v159, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v84 = v174;
      v85 = *(v174 + 48);
      v86 = v85(v83, 1, v59);
      v172 = v74;
      if (v86 == 1)
      {
        static ExecutionLocation.unknown.getter();
        if (v85(v83, 1, v59) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v84 + 32))(v74, v83, v59);
      }

      v68 = v171;
      static ExecutionLocation.device.getter();
      v101 = v161;
      outlined init with copy of ReferenceResolutionClientProtocol?(v175, v161, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v102 = type metadata accessor for ConversationUserInput(0);
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      v100 = swift_allocObject();
      *(v100 + 2) = v158;
      *(v100 + 3) = v77;
      v58 = v169;
      UUID.init()();
      v105 = UUID.uuidString.getter();
      v107 = v106;

      v59 = v170;
LABEL_28:
      v60 = v174;
      goto LABEL_48;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  }

  else
  {
    if (v72 == *MEMORY[0x1E69D0530])
    {
      goto LABEL_16;
    }

    if (v72 == *MEMORY[0x1E69D0510] || v72 == *MEMORY[0x1E69D0508])
    {
      goto LABEL_38;
    }

    if (v72 == *MEMORY[0x1E69D0538])
    {
      v173 = v150;
      v168 = (*(*v4 + 1304))(a1, 0);
      v167 = (*(*v4 + 1296))(a1);
      v96 = a1[3];
      v172 = a1[2];
      v97 = *(*a1 + 896);

      v99 = v97(v98);
      if (v99)
      {
        v76 = (*(*v99 + 112))(v99);
      }

      else
      {
        v76 = 0;
      }

      v135 = v152;
      v136 = v151;
      v137 = (*(*a1 + 552))(v99);
      v138 = (*(*a1 + 888))(v137);
      v165 = v139;
      v166 = v138;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v136, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v140 = v174;
      v141 = *(v174 + 48);
      if (v141(v136, 1, v59) == 1)
      {
        static ExecutionLocation.unknown.getter();
        v142 = v141(v136, 1, v59) == 1;
        v143 = v136;
        v144 = v135;
        if (!v142)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v143, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v140 + 32))(v135, v136, v59);
        v144 = v135;
      }

      v68 = v171;
      static ExecutionLocation.device.getter();
      v101 = v161;
      outlined init with copy of ReferenceResolutionClientProtocol?(v175, v161, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v145 = type metadata accessor for ConversationUserInput(0);
      v146 = *(v145 + 48);
      v147 = *(v145 + 52);
      v100 = swift_allocObject();
      *(v100 + 2) = v172;
      *(v100 + 3) = v96;
      UUID.init()();
      v105 = UUID.uuidString.getter();
      v107 = v148;
      v172 = v144;
      goto LABEL_28;
    }

    if (v72 == *MEMORY[0x1E69D0528] || v72 == *MEMORY[0x1E69D0558] || v72 == *MEMORY[0x1E69D0540] || v72 == *MEMORY[0x1E69D0560] || v72 == *MEMORY[0x1E69D0518])
    {
LABEL_38:
      v112 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);
      if (!v112 || ((v113 = a1[2], v114 = a1[3], v113 != *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID)) || v112 != v114) && (v115 = a1[2], v116 = a1[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        v124 = 0;
        v125 = 0;
        v100 = 0;
LABEL_49:
        (*(*a1 + 296))(v124, v125);
        outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
        return v100;
      }

      v117 = *(*a1 + 552);

      v119 = v117(v118);
      v120 = (*(*a1 + 888))(v119);
      v165 = v121;
      v166 = v120;
      v122 = v153;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v153, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v123 = *(v60 + 48);
      if (v123(v122, 1, v59) == 1)
      {
        static ExecutionLocation.unknown.getter();
        if (v123(v122, 1, v59) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v122, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v60 + 32))(v155, v122, v59);
      }

      static ExecutionLocation.device.getter();
      v101 = v161;
      outlined init with copy of ReferenceResolutionClientProtocol?(v175, v161, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v126 = type metadata accessor for ConversationUserInput(0);
      v127 = *(v126 + 48);
      v128 = *(v126 + 52);
      v100 = swift_allocObject();
      *(v100 + 2) = v113;
      *(v100 + 3) = v114;
      UUID.init()();
      v105 = UUID.uuidString.getter();
      v107 = v129;
      v76 = 0;
      v167 = 0;
      v168 = 0;
      v173 = v154;
      v172 = v155;
LABEL_48:
      (*(v162 + 8))(v58, v163);
      *(v100 + 4) = v105;
      *(v100 + 5) = v107;
      *(v100 + 6) = v76;
      *(v100 + 7) = v164;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v173, &v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v130 = v167;
      *&v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = v168;
      *&v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = v130;
      *&v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
      v131 = &v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
      v132 = v165;
      *v131 = v166;
      v131[1] = v132;
      v133 = *(v60 + 32);
      v133(&v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation], v172, v59);
      v133(&v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v68, v59);
      v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = v160;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v101, &v100[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v124 = *(v100 + 4);
      v125 = *(v100 + 5);

      goto LABEL_49;
    }

    if (v72 == *MEMORY[0x1E69D0520])
    {
LABEL_16:
      v168 = (*(*v4 + 1304))(a1, 0);
      v167 = (*(*v4 + 1296))(a1);
      v88 = a1[2];
      v87 = a1[3];
      v89 = *(*a1 + 552);

      v91 = v89(v90);
      v92 = (*(*a1 + 888))(v91);
      v165 = v93;
      v166 = v92;
      v94 = v156;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v156, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v95 = *(v60 + 48);
      if (v95(v94, 1, v59) == 1)
      {
        static ExecutionLocation.unknown.getter();
        if (v95(v94, 1, v59) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v60 + 32))(v172, v94, v59);
      }

      static ExecutionLocation.device.getter();
      v101 = v161;
      outlined init with copy of ReferenceResolutionClientProtocol?(v175, v161, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v108 = type metadata accessor for ConversationUserInput(0);
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      v100 = swift_allocObject();
      *(v100 + 2) = v88;
      *(v100 + 3) = v87;
      UUID.init()();
      v105 = UUID.uuidString.getter();
      v107 = v111;
      v76 = 0;
      goto LABEL_48;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
    (*(v69 + 8))(v70, v71);
  }

  return 0;
}

void closure #1 in ConversationRequestProcessor.sendResultCandidateSelected(selectedResultCandidateId:isServerFallback:completion:)(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v12 = Optional.debugDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v8, v9, "Sent ResultCandidateSelected to server, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  if (a3)
  {
    a3(a1, a2);
  }
}

void ConversationRequestProcessor.completeRequest(completion:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 416))(v17);
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) == 1)
  {
    v20 = objc_allocWithZone(type metadata accessor for FlowCompletedMessage());
    v21 = FlowCompletedMessage.init(build:)();
    if (v21)
    {
      v22 = v21;
      v23 = v2[7];
      __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
      dispatch thunk of MessagePublishing.postMessage(_:)();
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.conversationBridge);
      v46 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v46, v25, "Posted FlowCompletedMessage to message bus", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.conversationBridge);
      v46 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v46, v42, "Error building FlowCompletedMessage", v43, 2u);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }
    }

    v44 = v46;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69C79C0]) init];
    UUID.init()();
    v28 = UUID.uuidString.getter();
    v46 = a2;
    v30 = v29;
    (*(v15 + 8))(v19, v14);
    v31 = MEMORY[0x1E12A1410](v28, v30);

    [v27 setAceId_];

    v32 = v3[8];
    v33 = v3[9];
    v34 = v27;
    v35 = MEMORY[0x1E12A1410](v32, v33);
    [v34 setRefId_];

    v36 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
    (*(v15 + 56))(v13, 1, 1, v14);
    v37 = type metadata accessor for UserID();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    v38 = swift_allocObject();
    v39 = v46;
    *(v38 + 16) = a1;
    *(v38 + 24) = v39;
    v40 = *(*v36 + 328);
    sub_1DC680C50(a1);
    v40(v34, v32, v33, 0, 0, 0, 0, 0, v13, v9, 0, partial apply for closure #2 in ConversationRequestProcessor.completeRequest(completion:), v38);

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }
}

uint64_t closure #1 in ConversationRequestProcessor.completeRequest(completion:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = *MEMORY[0x1E69D0460];
  v12 = type metadata accessor for MessageSource();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  FlowCompletedMessage.Builder.source.setter();
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);

  FlowCompletedMessage.Builder.assistantId.setter();
  v16 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, &a2[v16], v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  FlowCompletedMessage.Builder.sessionId.setter();
  v20 = *(a2 + 8);
  v19 = *(a2 + 9);

  return FlowCompletedMessage.Builder.requestId.setter();
}

void closure #2 in ConversationRequestProcessor.completeRequest(completion:)(void *a1, void *a2, void (*a3)(void *, void *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v13 = Optional.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v16 = Optional.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v19);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DC659000, v9, v10, "Submitted RequestCompleted with error: %s and command: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  if (a3)
  {
    a3(a1, a2);
  }
}

uint64_t ConversationRequestProcessor.fetchCachedAnnounceContext(forUserId:)(uint64_t a1)
{
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversationSessionKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = &v36[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 424))(v36, v11);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  (*(v9 + 104))(v13, *MEMORY[0x1E69D07E0], v8);
  dispatch thunk of ConversationSessionState.value(forKey:userId:)();
  (*(v9 + 8))(v13, v8);
  if (v37[3])
  {
    type metadata accessor for AnnounceContext();
    if (swift_dynamicCast())
    {
      v14 = v35;
    }

    else
    {
      v14 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_sypSgMd, &_sypSgMR);
    v14 = 0;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  (*(v4 + 16))(v7, a1, v3);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36[0] = v19;
    *v18 = 136315650;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v4 + 8))(v7, v3);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v36);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    if (v14)
    {
      v24 = *(v14 + 16);
    }

    else
    {
      v25 = 0;
    }

    v37[0] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v36);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    if (v14)
    {
      v29 = *(v14 + 24);
    }

    else
    {
      v30 = 0;
    }

    v37[0] = v30;
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v36);

    *(v18 + 24) = v33;
    _os_log_impl(&dword_1DC659000, v16, v17, "Fetched the following for userId: %s from cachedSessionContext: activeTasks: %s, executedTasks: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return v14;
}

uint64_t ConversationRequestProcessor.revealAsrTranscription(for:turn:)(uint64_t a1, uint64_t a2)
{
  v61[0] = a2;
  v3 = type metadata accessor for Siri_Nlu_External_RepetitionResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_RepetitionResult.RepetitionType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = v61 - v18;
  v20 = (*(*a1 + 896))(v17);
  if (!v20)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.conversationBridge);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), aBlock);
      _os_log_impl(&dword_1DC659000, v49, v50, "Only speech-based RC can reveal ASR transcription. Not revealing ASR for RCID %s.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1E12A2F50](v52, -1, -1);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

    return 0;
  }

  v21 = *(*v20 + 120);
  v62 = v20;
  v22 = v21();
  if (!v22)
  {
    goto LABEL_23;
  }

  if (!*(v22 + 16))
  {

LABEL_23:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.conversationBridge);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1DC659000, v54, v55, "ASR is not to be revealed.", v56, 2u);
      MEMORY[0x1E12A2F50](v56, -1, -1);
    }

    return 0;
  }

  (*(v4 + 16))(v7, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  Siri_Nlu_External_RepetitionResult.repetitionType.getter();
  (*(v4 + 8))(v7, v3);
  v23 = v9;
  v24 = *(v9 + 32);
  v25 = v8;
  v24(v19, v15, v8);
  (*(v23 + 104))(v12, *MEMORY[0x1E69D0B68], v8);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type Siri_Nlu_External_RepetitionResult.RepetitionType and conformance Siri_Nlu_External_RepetitionResult.RepetitionType, MEMORY[0x1E69D0B78]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v23 + 8);
  v27 = v26(v12, v8);
  if (aBlock[0] != aBlock[6])
  {
    v26(v19, v8);
    goto LABEL_23;
  }

  v28 = (*(*v62 + 112))(v27);
  v29 = [v28 recognition];

  if (!v29 || (v30 = [v29 aceRecognition], v29, !v30))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.conversationBridge);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC659000, v58, v59, "Failed to get ASR Recognition object for ASR reveal. ASR is NOT to be revealed.", v60, 2u);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    v26(v19, v8);
    return 0;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.conversationBridge);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v61[1];
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DC659000, v32, v33, "Preparing ACE command for ASR reveal.", v36, 2u);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69C7BA0]) init];
  v38 = *(v35 + 80);
  v39 = *(v35 + 88);
  v40 = v37;
  v41 = MEMORY[0x1E12A1410](v38, v39);
  [v40 setRefId_];

  [v40 setRecognition_];
  v42 = (v61[0] + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  if (*v42 >> 62 != 1 || (v43 = v42[1]) == 0 || (v44 = [v43 aceId]) == 0)
  {
    v44 = 0;
  }

  [v40 setSpeechRecognizedAceId_];

  v45 = *(v35 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  aBlock[4] = closure #1 in ConversationRequestProcessor.revealAsrTranscription(for:turn:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v46 = _Block_copy(aBlock);
  [v45 handleCommand:v40 completion:v46];

  _Block_release(v46);

  v26(v19, v25);
  return 1;
}

void closure #1 in ConversationRequestProcessor.revealAsrTranscription(for:turn:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "UIRevealRecognizedSpeech handled", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void ConversationRequestProcessor.sendCommitToExecution(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v90 - v10;
  v91 = type metadata accessor for ResultCandidateType(0);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = (&v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = AFIsInternalInstall();
  if (v14)
  {
    type metadata accessor for ConversationBridge(0);
    v15 = *MEMORY[0x1E69C8398];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
    swift_getObjectType();
    swift_unknownObjectRetain();
    specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(v16, v18, v19, 0, 0, 0, 0);

    v14 = swift_unknownObjectRelease();
  }

  v20 = (*(*a3 + 288))(v14);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v94 = v11;
    type metadata accessor for CommitResultCandidateId();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = v22;
    v24[5] = v23;
    v25 = one-time initialization token for conversationBridge;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = __swift_project_value_buffer(v26, static Logger.conversationBridge);

    v93 = v27;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v90 = v24;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      *(v31 + 12) = 2080;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

      *(v31 + 14) = v33;
      _os_log_impl(&dword_1DC659000, v28, v29, "Sending CommitResultCandidateId for RC ID: %s and conversationUserInputId: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v32, -1, -1);
      v34 = v31;
      v24 = v90;
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    else
    {
    }

    v47 = v94;
    v48 = (*(*v4 + 608))();
    if (!v48)
    {
      goto LABEL_30;
    }

    v49 = v48;
    v50 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    swift_beginAccess();
    v51 = *(v49 + v50);
    if (v51 >> 62 == 1)
    {
      v52 = v51 & 0x3FFFFFFFFFFFFFFFLL;
      v53 = *(*(v51 & 0x3FFFFFFFFFFFFFFFLL) + 904);

      v55 = v53(v54);
      if (v55)
      {
        v56 = (*(*v55 + 216))();
        if (v57)
        {
          v58 = v56;
          v59 = v57;
          v60 = *(v49 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
          v90 = v24;
          v61 = *(v49 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);
          v62 = *(v52 + 24);
          v91 = *(v52 + 16);
          v92 = v60;

          v47 = v94;
          ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(v92, v61, v91, v62, v58, v59);

          v24 = v90;
        }

        else
        {
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_1DC659000, v73, v74, "Sending commit to conversation bridge, but selected TCU ID is unknown. This can happen if we didn't get a well-formed TTResponseMessage. ExecutionFinalizedMessage will fail to send.", v75, 2u);
            MEMORY[0x1E12A2F50](v75, -1, -1);
          }
        }
      }

      else
      {
        v63 = v92;
        outlined init with copy of ResultCandidateType(v52 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v92);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          outlined destroy of RoutingDecision(v63, type metadata accessor for ResultCandidateType);
          goto LABEL_30;
        }

        v64 = v63[1];
        v65 = v63[3];
        v66 = v63[5];
        if (!v65)
        {

          goto LABEL_30;
        }

        if (v66)
        {
          v90 = v24;
          v67 = v63[2];
          v92 = v63[4];

          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_1DC659000, v68, v69, "Posting ExecutionFinalizedMessage for text request", v70, 2u);
            MEMORY[0x1E12A2F50](v70, -1, -1);
          }

          v71 = *(v49 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
          v72 = *(v49 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

          ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(v71, v72, v67, v65, v92, v66);

          v24 = v90;
          v47 = v94;
          goto LABEL_30;
        }

        v89 = v63[1];
      }
    }

LABEL_30:
    (*(**(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 392))(a3);
    v76 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
    v77 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v76);
    (*(v77 + 48))(v24, *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v76, v77);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v78 = static Log.executor;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v79 = type metadata accessor for OSSignpostID();
    (*(*(v79 - 8) + 56))(v47, 0, 1, v79);
    (*(*a3 + 872))(v47);
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for InsightRequestSummaryLogger();
    v81 = __swift_project_value_buffer(v80, static Logger.insightRequestSummaryLogger);

    specialized InsightRequestSummaryLogger.emitDebug(_:)(v81, v4, a3);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v95 = v85;
      *v84 = 136315138;
      v86 = CommitResultCandidateId.debugDescription.getter();
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v95);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_1DC659000, v82, v83, "Successfully sent: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1E12A2F50](v85, -1, -1);
      MEMORY[0x1E12A2F50](v84, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.conversationBridge);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1DC659000, v36, v37, "Trying to commit RCState without a conversationUserInputId - this means we did not create a ConversationUserInput for this RC which is an error. Sending CommandFailed.", v38, 2u);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  v39 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  [v39 setErrorCode_];
  v40 = MEMORY[0x1E12A1410](0xD000000000000036, 0x80000001DCA80860);
  [v39 setReason_];

  v41 = v4[8];
  v42 = v4[9];
  v43 = v39;
  v44 = MEMORY[0x1E12A1410](v41, v42);
  [v43 setRefId_];

  v45 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  aBlock[4] = closure #1 in ConversationRequestProcessor.sendCommitToExecution(_:_:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_74;
  v46 = _Block_copy(aBlock);
  [v45 handleCommand:v43 completion:v46];
  _Block_release(v46);
}

void ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(type metadata accessor for ExecutionFinalizedMessage());
  v13 = ExecutionFinalizedMessage.init(build:)();
  if (v13)
  {
    v14 = v13;
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for InsightRequestSummaryLogger();
    v16 = __swift_project_value_buffer(v15, static Logger.insightRequestSummaryLogger);

    specialized InsightRequestSummaryLogger.emitDebug(_:)(v16, v7, a3, a4, a5, a6);

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "Posting ExecutionFinalizedMessage to message bus", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v21 = v7[7];
    __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationBridge);
    v14 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v14, v23, "Error building ExecutionFinalizedMessage", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33[1] = a5;
  v33[2] = a7;
  v34 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v33 - v20;

  ExecutionFinalizedMessage.Builder.requestId.setter();
  v22 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v21, a4 + v22, v23);
  (*(v24 + 56))(v21, 0, 1, v23);
  ExecutionFinalizedMessage.Builder.sessionId.setter();
  v25 = *(a4 + 96);
  v26 = *(a4 + 104);

  ExecutionFinalizedMessage.Builder.assistantId.setter();
  ExecutionFinalizedMessage.Builder.flowPluginId.setter();
  v27 = *MEMORY[0x1E69D0460];
  v28 = type metadata accessor for MessageSource();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v17, v27, v28);
  (*(v29 + 56))(v17, 0, 1, v28);
  ExecutionFinalizedMessage.Builder.source.setter();

  ExecutionFinalizedMessage.Builder.tcuId.setter();

  ExecutionFinalizedMessage.Builder.trpCandidateId.setter();
  v30 = type metadata accessor for UserID();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v13, v34, v30);
  (*(v31 + 56))(v13, 0, 1, v30);
  return ExecutionFinalizedMessage.Builder.userId.setter();
}

void closure #1 in ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v8 = Optional.debugDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, oslog, v5, "Error applying empty NativeFlowContextUpdate: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ConversationRequestProcessor.actionCandidatesGenerated(_:rcId:)(Swift::OpaquePointer _, Swift::String rcId)
{
  v3 = objc_allocWithZone(type metadata accessor for SiriXActionCandidatesGeneratedMessage());
  v4 = SiriXActionCandidatesGeneratedMessage.init(build:)();
  if (v4)
  {
    v5 = v4;
    v6 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v5 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v5, v8, "Could not generate SiriXActionCandidatesGeneratedMessage. Missing fields?", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.actionCandidatesGenerated(_:rcId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77[3] = a5;
  v77[2] = a4;
  v101 = a3;
  v7 = type metadata accessor for CamParse();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = v77 - v12;
  v99 = type metadata accessor for SiriXParse();
  v96 = *(v99 - 8);
  v13 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v89 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v81 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v77 - v19;
  v82 = type metadata accessor for SiriXActionCandidate();
  v20 = *(v82 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v90 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ActionCandidate();
  v23 = *(v102 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v100 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = v77 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v77 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = v77 - v34;
  v36 = *(a2 + 8);
  v37 = *(a2 + 9);

  SiriXActionCandidatesGeneratedMessage.Builder.requestId.setter();
  v38 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v35, &a2[v38], v39);
  (*(v40 + 56))(v35, 0, 1, v39);
  SiriXActionCandidatesGeneratedMessage.Builder.sessionId.setter();
  v41 = *MEMORY[0x1E69D0460];
  v42 = type metadata accessor for MessageSource();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v31, v41, v42);
  (*(v43 + 56))(v31, 0, 1, v42);
  SiriXActionCandidatesGeneratedMessage.Builder.source.setter();
  v44 = *(a2 + 12);
  v45 = *(a2 + 13);

  v77[1] = a1;
  SiriXActionCandidatesGeneratedMessage.Builder.assistantId.setter();
  v46 = *(v101 + 16);
  if (v46)
  {
    v48 = *(v23 + 16);
    v47 = v23 + 16;
    v87 = v48;
    v49 = (v101 + ((*(v47 + 64) + 32) & ~*(v47 + 64)));
    v50 = *(v47 + 56);
    v85 = (v96 + 48);
    v86 = v50;
    v79 = (v96 + 32);
    v97 = (v20 + 48);
    v98 = (v47 - 8);
    v78 = (v96 + 8);
    v96 = v20 + 32;
    v84 = (v20 + 56);
    v95 = MEMORY[0x1E69E7CC0];
    v51 = v99;
    v52 = v100;
    v53 = v82;
    v54 = v102;
    v55 = v94;
    v80 = v20;
    v88 = v47;
    while (1)
    {
      v101 = v46;
      v56 = v87;
      v87(v55, v49, v54);
      v56(v52, v55, v54);
      v57 = v93;
      ActionCandidate.parse.getter();
      v58 = v57;
      v59 = v92;
      SiriXParse.init(fromCamParse:)(v58, v92);
      v60 = (*v85)(v59, 1, v51);
      v61 = v97;
      if (v60 == 1)
      {
        v62 = *v98;
        v63 = v102;
        (*v98)(v55, v102);
        outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
        v64 = v91;
        v65 = v63;
      }

      else
      {
        v83 = v49;
        v66 = v97;
        v67 = v89;
        v68 = (*v79)(v89, v59, v51);
        MEMORY[0x1EEE9AC00](v68);
        v77[-2] = v52;
        v77[-1] = v67;
        v69 = v81;
        SiriXActionCandidate.init(build:)();
        v62 = *v98;
        (*v98)(v55, v102);
        v70 = *v66;
        if (!(*v66)(v69, 1, v53))
        {
          v64 = v91;
          v53 = v82;
          (*v96)(v91, v69, v82);
          (*v78)(v89, v99);
          (*v84)(v64, 0, 1, v53);
          v62(v52, v102);
          v20 = v80;
          v49 = v83;
          goto LABEL_10;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
        (*v78)(v89, v99);
        v64 = v91;
        v53 = v82;
        v49 = v83;
        v20 = v80;
        v61 = v97;
        v65 = v102;
      }

      v62(v100, v65);
      (*v84)(v64, 1, 1, v53);
      v70 = *v61;
LABEL_10:
      if (v70(v64, 1, v53) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
      }

      else
      {
        v71 = *v96;
        (*v96)(v90, v64, v53);
        v72 = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
        }

        v74 = v72[2];
        v73 = v72[3];
        if (v74 >= v73 >> 1)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1, v72);
        }

        v72[2] = v74 + 1;
        v75 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v95 = v72;
        v71(v72 + v75 + *(v20 + 72) * v74, v90, v53);
      }

      v51 = v99;
      v52 = v100;
      v54 = v102;
      v55 = v94;
      v49 += v86;
      v46 = v101 - 1;
      if (v101 == 1)
      {
        goto LABEL_18;
      }
    }
  }

  v95 = MEMORY[0x1E69E7CC0];
LABEL_18:
  SiriXActionCandidatesGeneratedMessage.Builder.actionCandidates.setter();

  return SiriXActionCandidatesGeneratedMessage.Builder.rcId.setter();
}

void *ConversationRequestProcessor.makeAndSendSpeechRecognizedCommand(rcState:turn:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v86 = a4;
  v7 = type metadata accessor for UUID();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  (*(v12 + 16))(v18, a2 + v19, v11);
  (*(v12 + 104))(v15, *MEMORY[0x1E69D0548], v11);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  LOBYTE(v19) = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v20(v18, v11);
  if ((v19 & 1) == 0)
  {
    if (a3)
    {
      a3(0, 0);
    }

    return 0;
  }

  v82 = a3;
  v21 = (a2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  v22 = swift_beginAccess();
  if (*v21 >> 62 == 1 && v21[1])
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_30;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "SpeechRecognized is already sent. Not sending again..";
LABEL_29:
    _os_log_impl(&dword_1DC659000, v24, v25, v27, v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
LABEL_30:

    if (v82)
    {
      v82(0, 0);
    }

    return 0;
  }

  v28 = a1;
  v29 = (*(*a1 + 896))(v22);
  if (!v29)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_30;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "ResultCandidateState is not of the right type. Cannot send SpeechRecognized";
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *(v29 + 24);
  if (!v31)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.conversationBridge);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), aBlock);
      _os_log_impl(&dword_1DC659000, v77, v78, "RC:%s does not contain an ASR output. Not sending SpeechRecognized.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    if (v82)
    {
      v82(0, 0);
    }

    return 0;
  }

  v32 = one-time initialization token for conversationBridge;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.conversationBridge);
  v35 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v31;
    v40 = v35;
    _os_log_impl(&dword_1DC659000, v36, v37, "Rec = %@", v38, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  v41 = [v35 utterances];
  if (!v41 || ((v42 = v41, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SASUtterance, 0x1E69C7A30), v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v42, v43 >> 62) ? (v44 = __CocoaSet.count.getter()) : (v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v44))
  {

    v71 = Logger.logObject.getter();
    v72 = v28;
    v73 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v71, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v72 + 16), *(v72 + 24), aBlock);
      _os_log_impl(&dword_1DC659000, v71, v73, "RC:%s consists of empty recognition. Not sending SpeechRecognized.", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1E12A2F50](v75, -1, -1);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    if (v82)
    {
      v82(0, 0);
    }

    return 0;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1DC659000, v45, v46, "Sending SpeechRecognized command", v47, 2u);
    MEMORY[0x1E12A2F50](v47, -1, -1);
  }

  v48 = [objc_allocWithZone(MEMORY[0x1E69C7A00]) init];
  UUID.init()();
  v49 = UUID.uuidString.getter();
  v51 = v50;
  (*(v83 + 8))(v10, v84);
  v52 = MEMORY[0x1E12A1410](v49, v51);

  [v48 setAceId_];

  v53 = v85;
  v54 = *(v85 + 80);
  v55 = *(v85 + 88);
  v56 = v48;
  v57 = MEMORY[0x1E12A1410](v54, v55);
  [v56 setRefId_];

  [v56 setEager_];
  [v56 setRecognition_];
  v58 = MEMORY[0x1E12A1410](v54, v55);
  [v56 setSessionId_];

  v59 = MEMORY[0x1E12A1410](*(v28 + 16), *(v28 + 24));
  v60 = v56;
  [v56 setResultId_];

  v61 = *(v53 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  if ([v61 respondsToSelector_])
  {
    v62 = swift_allocObject();
    v85 = v30;
    v63 = v35;
    v64 = v82;
    v65 = v86;
    *(v62 + 16) = v82;
    *(v62 + 24) = v65;
    aBlock[4] = partial apply for closure #1 in ConversationRequestProcessor.makeAndSendSpeechRecognizedCommand(rcState:turn:reply:);
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_38;
    v66 = _Block_copy(aBlock);
    v67 = v60;
    v68 = v64;
    v35 = v63;
    sub_1DC680C50(v68);

    [v61 handleSpeechRecognized:v67 completion:v66];
    _Block_release(v66);
  }

  return v60;
}

void closure #1 in ConversationRequestProcessor.makeAndSendSpeechRecognizedCommand(rcState:turn:reply:)(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v12 = Optional.debugDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DC659000, v8, v9, "Sent SpeechRecognized command with error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    if (a3)
    {
LABEL_7:
      a3(a1, a2);
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "Sent SpeechRecognized command successfully", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    if (a3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for TimeoutError();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v2[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), v9, 0);
}