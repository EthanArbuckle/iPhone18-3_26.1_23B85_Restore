uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1520);
  v6 = *v2;
  *(v4 + 1528) = a1;
  *(v4 + 1536) = v1;

  v7 = *(v3 + 1184);
  if (v1)
  {
    v8 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v8 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1);
}

uint64_t ConversationService.State.isNewSession.getter(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2 >> 6)
  {
    a1 = v2;
  }

  return a1 & 1;
}

uint64_t closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), a4, 0);
}

uint64_t ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for ConversationService.EagerResult(0);
  v4[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_RepetitionResult();
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = type metadata accessor for Siri_Nlu_External_RepetitionResult.RepetitionType();
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v17 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[29] = v17;
  v18 = *(v17 - 8);
  v4[30] = v18;
  v19 = *(v18 + 64) + 15;
  v4[31] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static MessageBusActor.shared;
  v4[32] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveInput:from:), v20, 0);
}

uint64_t ConversationService.bridge(didReceiveInput:from:)()
{
  v75 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v64 = *(v1 + 24);
  v65 = *(v1 + 16);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeBegin(rcId:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v74[0] = v7;
    *v6 = 136315138;
    v8 = ConversationUserInput.debugDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v74);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "Received ConversationUserInput: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v11 = *(v0 + 96);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v74);
    _os_log_impl(&dword_1DC659000, v12, v13, "[ConversationService] received ConversationUserInput for rcId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v16 = *(v0 + 120);
  swift_beginAccess();
  v17 = *(v16 + 112);
  LOBYTE(v16) = *(v16 + 120);
  outlined copy of ConversationService.State(v17, v16);
  v18 = specialized ConversationService.State.assertTurnStarted(function:)("bridge(didReceiveInput:from:)", 29, 2, v17, v16);
  *(v0 + 264) = v18;
  v19 = v18;
  v20 = *(v0 + 96);

  outlined consume of ConversationService.State(v17, v16);
  v21 = *(v20 + 56);
  v22 = *(v21 + 16);
  v23 = *(v22 + 16);
  if (v23)
  {
    v60 = *(v20 + 56);
    v24 = *(v0 + 240);
    v25 = *(v0 + 208);
    v62 = *(v0 + 96);
    v63 = v19;
    v70 = *(v24 + 16);
    v26 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v68 = (v24 + 8);
    v69 = *(v24 + 72);
    v67 = (*(v0 + 184) + 8);
    v66 = *MEMORY[0x1E69D0B70];
    v72 = (v25 + 104);
    v27 = (v25 + 8);
    v61 = *MEMORY[0x1E69D0B68];

    v71 = v27;
    do
    {
      v30 = *(v0 + 248);
      v31 = *(v0 + 232);
      v32 = *(v0 + 216);
      v34 = *(v0 + 192);
      v33 = *(v0 + 200);
      v35 = *(v0 + 176);
      v70(v30, v26, v31);
      Siri_Nlu_External_UserParse.repetitionResult.getter();
      (*v68)(v30, v31);
      Siri_Nlu_External_RepetitionResult.repetitionType.getter();
      (*v67)(v34, v35);
      v36 = *v72;
      (*v72)(v32, v66, v33);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Siri_Nlu_External_RepetitionResult.RepetitionType and conformance Siri_Nlu_External_RepetitionResult.RepetitionType, 255, MEMORY[0x1E69D0B78]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v37 = *v71;
      (*v71)(v32, v33);
      if (*(v0 + 64) == *(v0 + 72) || (v38 = *(v0 + 216), v39 = *(v0 + 200), v36(v38, v61, v39), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v37(v38, v39), *(v0 + 80) == *(v0 + 88)))
      {
        v28 = [*(v62 + 48) recognition];
        v29 = [v28 aceRecognition];

        (*(*v63 + 336))(v65, v64, v29);
      }

      v37(*(v0 + 224), *(v0 + 200));
      v26 += v69;
      --v23;
    }

    while (v23);

    v21 = v60;
    v19 = v63;
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), v21 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, *(v0 + 152));
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1DC659000, v40, v41, "[ConversationService] Storing NL Response code ConversationUserInput for execution overrides check", v42, 2u);
    MEMORY[0x1E12A2F50](v42, -1, -1);
  }

  v43 = *(v0 + 168);
  v44 = *(v0 + 144);
  v45 = *(v0 + 120);
  v46 = *(v0 + 96);
  v73 = *(v0 + 104);

  (*(*v19 + 368))(v65, v64, v43);
  v47 = type metadata accessor for TaskPriority();
  (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
  v48 = static MessageBusActor.shared;
  v50 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v49, type metadata accessor for MessageBusActor);
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  *(v51 + 24) = v50;
  *(v51 + 32) = v46;
  *(v51 + 40) = v45;
  *(v51 + 48) = v19;
  *(v51 + 56) = v73;

  swift_unknownObjectRetain();

  v52 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime19ConversationServiceC11EagerResultO_Tt2g5(0, 0, v44, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveInput:from:), v51);
  *(v0 + 272) = v52;
  (*(*v19 + 320))(v46, v52);
  v53 = *(MEMORY[0x1E69E86A8] + 4);
  v54 = swift_task_alloc();
  *(v0 + 280) = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v54 = v0;
  v54[1] = ConversationService.bridge(didReceiveInput:from:);
  v57 = *(v0 + 128);
  v56 = *(v0 + 136);
  v58 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v56, v52, v57, v55, v58);
}

{
  v2 = *v1;
  v3 = (*v1)[35];
  v4 = *v1;
  v2[36] = v0;

  v5 = v2[32];
  if (v0)
  {
    v6 = ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    outlined destroy of ConversationService.EagerResult(v2[17], type metadata accessor for ConversationService.EagerResult);
    v6 = ConversationService.bridge(didReceiveInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v13 = v0[18];
  v14 = v0[17];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  (*(v5 + 8))(v4, v6);
  v7 = v0[36];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[24];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t ConversationService.State.assertTurnStarted(function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = specialized ConversationService.State.assertTurnStarted(function:)(a1, a2, a3, a4, a5);
  if (!v5)
  {
  }

  return result;
}

uint64_t closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  v9 = type metadata accessor for Siri_Nlu_External_Parser();
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v11 = *(v10 + 64) + 15;
  v8[26] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v13 = *(*(type metadata accessor for InputContinuationState() - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v14 = type metadata accessor for Parse();
  v8[29] = v14;
  v15 = *(v14 - 8);
  v8[30] = v15;
  v16 = *(v15 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v17 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8[33] = v17;
  v18 = *(v17 - 8);
  v8[34] = v18;
  v19 = *(v18 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v8[40] = swift_task_alloc();
  v21 = type metadata accessor for Input();
  v8[41] = v21;
  v22 = *(v21 - 8);
  v8[42] = v22;
  v23 = *(v22 + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR) - 8) + 64) + 15;
  v8[46] = swift_task_alloc();
  v25 = type metadata accessor for DecisionEngineResponse();
  v8[47] = v25;
  v26 = *(v25 - 8);
  v8[48] = v26;
  v27 = *(v26 + 64) + 15;
  v8[49] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR) - 8) + 64) + 15;
  v8[50] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR) - 8) + 64) + 15;
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v30 = type metadata accessor for ServerFallbackReason();
  v8[53] = v30;
  v31 = *(v30 - 8);
  v8[54] = v31;
  v32 = *(v31 + 64) + 15;
  v8[55] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = static MessageBusActor.shared;
  v8[56] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v33, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveInput:from:)()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(*(v0 + 152) + 56);
  *(v0 + 456) = v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, v3, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 160);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 416), &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    swift_beginAccess();
    v7 = *(v5 + 104);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();

      if (v8)
      {
LABEL_4:
        v9 = static MessageBusActor.shared;
        *(v0 + 464) = static MessageBusActor.shared;
        v10 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v6, type metadata accessor for MessageBusActor);
        v11 = swift_task_alloc();
        *(v0 + 472) = v11;
        v11[1] = vextq_s8(*(v0 + 152), *(v0 + 152), 8uLL);
        v12 = *(MEMORY[0x1E69E87D8] + 4);

        v13 = swift_task_alloc();
        *(v0 + 480) = v13;
        *v13 = v0;
        v13[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);
        v14 = MEMORY[0x1E69E6370];
        v15 = MEMORY[0x1E69E6370];
        v16 = MEMORY[0x1E69E6370];

        return MEMORY[0x1EEE6DBF8](v0 + 572, v14, v15, v9, v10, &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:), v11, v16);
      }
    }

    else if (*(v7 + 16))
    {
      goto LABEL_4;
    }

    v52 = *(v0 + 160);
    swift_beginAccess();
    if (!*(v52 + 280))
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      *(v0 + 488) = __swift_project_value_buffer(v91, static Logger.executor);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_1DC659000, v92, v93, "[ConversationService] Eagerly executing...", v94, 2u);
        MEMORY[0x1E12A2F50](v94, -1, -1);
      }

      v95 = *(v0 + 152);

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = *(v0 + 152);
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v143 = v100;
        *v99 = 136315138;
        *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v98 + 16), *(v98 + 24), &v143);
        _os_log_impl(&dword_1DC659000, v96, v97, "[ConversationService] calling decision engine for rcId: %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        MEMORY[0x1E12A2F50](v100, -1, -1);
        MEMORY[0x1E12A2F50](v99, -1, -1);
      }

      v101 = *(v0 + 160);
      v102 = *(v0 + 168);
      v103 = v101[6];
      __swift_project_boxed_opaque_existential_1(v101 + 2, v101[5]);
      *(v0 + 496) = v101[13];
      *(v0 + 504) = *(v52 + 280);
      v104 = *(v103 + 8);

      v138 = v104 + *v104;
      v105 = v104[1];
      v106 = swift_task_alloc();
      *(v0 + 512) = v106;
      *v106 = v0;
      v106[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);
      v107 = *(v0 + 368);
      v108 = *(v0 + 176);
      v109 = *(v0 + 184);
      v110 = *(v0 + 152);

      __asm { BRAA            X8, X16 }
    }

    v53 = *(v0 + 448);

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 152);
    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.executor);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 152);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v143 = v60;
      *v59 = 136315138;
      *(v0 + 136) = v58;
      type metadata accessor for ConversationUserInput(0);

      v61 = String.init<A>(describing:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v143);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1DC659000, v56, v57, "[ConversationService] Skipping eager for %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x1E12A2F50](v60, -1, -1);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    v64 = *(*(v0 + 456) + 16);
    if (*(v64 + 16))
    {
      v65 = *(v0 + 272);
      v130 = *(v65 + 16);
      v130(*(v0 + 280), v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), *(v0 + 264));
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1DC659000, v66, v67, "[ConversationService] Storing first parse from ConversationUserInput for execution overrides check", v68, 2u);
        MEMORY[0x1E12A2F50](v68, -1, -1);
      }

      v127 = *(v0 + 344);
      v133 = *(v0 + 336);
      v136 = *(v0 + 328);
      v69 = *(v0 + 296);
      v70 = v66;
      v71 = *(v0 + 280);
      v140 = *(v0 + 272);
      v72 = *(v0 + 264);
      v73 = *(v0 + 240);
      v74 = *(v0 + 208);
      v75 = *(v0 + 216);
      v76 = *(v0 + 200);
      v113 = *(v0 + 192);
      v115 = *(v0 + 256);
      v119 = *(v0 + 232);
      v121 = *(v0 + 168);
      v77 = *(v0 + 152);

      v117 = *(v77 + 16);
      v124 = *(v77 + 24);
      v130(v69, v71, v72);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*(v76 + 8))(v74, v113);
      v78 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v78 - 8) + 56))(v75, 0, 1, v78);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      (*(v73 + 104))(v115, *MEMORY[0x1E69D0168], v119);
      Input.init(parse:)();
      (*(*v121 + 352))(v117, v124, v127);
      (*(v133 + 8))(v127, v136);
      (*(v140 + 8))(v71, v72);
    }

    v79 = *(v0 + 152);
    **(v0 + 144) = v79;
    type metadata accessor for ConversationService.EagerResult(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ConversationSELFHelper();

    static ConversationSELFHelper.shared.getter();
    v80 = *(v79 + 16);
    v81 = *(v79 + 24);
  }

  else
  {
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    v20 = *(v0 + 432);
    v21 = *(v0 + 408);
    v22 = *(v0 + 416);
    v23 = *(v0 + 400);
    v24 = *(v0 + 272);
    v135 = *(v0 + 264);
    v25 = *(v0 + 160);
    v139 = *(v0 + 168);

    v129 = v20[4];
    v129(v18, v22, v19);
    v26 = v25[32];
    v27 = v25[33];
    __swift_project_boxed_opaque_existential_1(v25 + 29, v26);
    (*(v24 + 56))(v23, 1, 1, v135);
    v126 = v20[2];
    v126(v21, v18, v19);
    v123 = v20[7];
    v123(v21, 0, 1, v19);
    LOBYTE(v18) = (*(v27 + 8))(0, v23, v21, *(v139 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData), *(v139 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8), v26, v27);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (v18)
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
        _os_log_impl(&dword_1DC659000, v29, v30, "[ConversationService] Receiving serverFallbackReason from NLResponse for eager task but shouldDisableServerFallback returns true, we will generate fatal response for request", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      v32 = *(v0 + 440);
      v33 = *(v0 + 424);
      v34 = *(v0 + 144);
      v35 = *(v0 + 152);

      v129(v34, v32, v33);
      type metadata accessor for ConversationService.EagerResult(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConversationSELFHelper();
      static ConversationSELFHelper.shared.getter();
      v36 = *(v35 + 16);
      v37 = *(v35 + 24);
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.executor);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1DC659000, v39, v40, "[ConversationService] Receiving serverFallbackReason from NLResponse for eager task and shouldDisableServerFallback returns false, will fall back to server if this RC is selected.", v41, 2u);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }

      v42 = *(v0 + 432);
      v43 = *(v0 + 440);
      v44 = *(v0 + 424);
      v45 = *(v0 + 408);
      v47 = *(v0 + 176);
      v46 = *(v0 + 184);
      v48 = *(v0 + 152);
      v132 = *(v0 + 144);

      ObjectType = swift_getObjectType();
      v50 = *(v48 + 16);
      v51 = *(v48 + 24);
      v126(v45, v43, v44);
      v123(v45, 0, 1, v44);
      (*(v46 + 48))(v50, v51, v45, ObjectType, v46);
      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      (*(v42 + 8))(v43, v44);
      type metadata accessor for ConversationService.EagerResult(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConversationSELFHelper();
      static ConversationSELFHelper.shared.getter();
    }
  }

  v82 = *(v0 + 440);
  v84 = *(v0 + 408);
  v83 = *(v0 + 416);
  v85 = *(v0 + 392);
  v86 = *(v0 + 400);
  v88 = *(v0 + 360);
  v87 = *(v0 + 368);
  v89 = *(v0 + 352);
  v112 = *(v0 + 344);
  v114 = *(v0 + 320);
  v116 = *(v0 + 312);
  v118 = *(v0 + 304);
  v120 = *(v0 + 296);
  v122 = *(v0 + 288);
  v125 = *(v0 + 280);
  v128 = *(v0 + 256);
  v131 = *(v0 + 248);
  v134 = *(v0 + 224);
  v137 = *(v0 + 216);
  v141 = *(v0 + 208);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v90 = *(v0 + 8);

  return v90();
}

{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v4 = *(*v0 + 448);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v4, 0);
}

{
  if (*(v0 + 572) == 1)
  {
    v1 = *(v0 + 160);
    swift_beginAccess();
    if (!*(v1 + 280))
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      *(v0 + 488) = __swift_project_value_buffer(v41, static Logger.executor);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1DC659000, v42, v43, "[ConversationService] Eagerly executing...", v44, 2u);
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      v45 = *(v0 + 152);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 152);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v86 = v50;
        *v49 = 136315138;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v48 + 16), *(v48 + 24), &v86);
        _os_log_impl(&dword_1DC659000, v46, v47, "[ConversationService] calling decision engine for rcId: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x1E12A2F50](v50, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      v51 = *(v0 + 160);
      v52 = *(v0 + 168);
      v53 = v51[6];
      __swift_project_boxed_opaque_existential_1(v51 + 2, v51[5]);
      *(v0 + 496) = v51[13];
      *(v0 + 504) = *(v1 + 280);
      v54 = *(v53 + 8);

      v82 = v54 + *v54;
      v55 = v54[1];
      v56 = swift_task_alloc();
      *(v0 + 512) = v56;
      *v56 = v0;
      v56[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);
      v57 = *(v0 + 368);
      v58 = *(v0 + 176);
      v59 = *(v0 + 184);
      v60 = *(v0 + 152);

      __asm { BRAA            X8, X16 }
    }
  }

  v2 = *(v0 + 448);

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v86 = v9;
    *v8 = 136315138;
    *(v0 + 136) = v7;
    type metadata accessor for ConversationUserInput(0);

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v86);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v5, v6, "[ConversationService] Skipping eager for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v13 = *(*(v0 + 456) + 16);
  if (*(v13 + 16))
  {
    v14 = *(v0 + 272);
    v76 = *(v14 + 16);
    v76(*(v0 + 280), v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), *(v0 + 264));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "[ConversationService] Storing first parse from ConversationUserInput for execution overrides check", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v74 = *(v0 + 344);
    v78 = *(v0 + 336);
    v80 = *(v0 + 328);
    v18 = *(v0 + 296);
    v19 = v15;
    v20 = *(v0 + 280);
    v83 = *(v0 + 272);
    v21 = *(v0 + 264);
    v22 = *(v0 + 240);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    v62 = *(v0 + 192);
    v64 = *(v0 + 256);
    v68 = *(v0 + 232);
    v70 = *(v0 + 168);
    v26 = *(v0 + 152);

    v66 = *(v26 + 16);
    v72 = *(v26 + 24);
    v76(v18, v20, v21);
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v25 + 8))(v23, v62);
    v27 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
    USOParse.init(userParse:parserIdentifier:appBundleId:)();
    (*(v22 + 104))(v64, *MEMORY[0x1E69D0168], v68);
    Input.init(parse:)();
    (*(*v70 + 352))(v66, v72, v74);
    (*(v78 + 8))(v74, v80);
    (*(v83 + 8))(v20, v21);
  }

  v28 = *(v0 + 152);
  **(v0 + 144) = v28;
  type metadata accessor for ConversationService.EagerResult(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationSELFHelper();

  static ConversationSELFHelper.shared.getter();
  v29 = *(v28 + 16);
  v30 = *(v28 + 24);
  v31 = *(v0 + 440);
  v33 = *(v0 + 408);
  v32 = *(v0 + 416);
  v35 = *(v0 + 392);
  v34 = *(v0 + 400);
  v36 = *(v0 + 360);
  v37 = *(v0 + 368);
  v38 = *(v0 + 352);
  v61 = *(v0 + 344);
  v63 = *(v0 + 320);
  v65 = *(v0 + 312);
  v67 = *(v0 + 304);
  v69 = *(v0 + 296);
  v71 = *(v0 + 288);
  v73 = *(v0 + 280);
  v75 = *(v0 + 256);
  v77 = *(v0 + 248);
  v79 = *(v0 + 224);
  v81 = *(v0 + 216);
  v84 = *(v0 + 208);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v39 = *(v0 + 8);

  return v39();
}

{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v10 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    v6 = v2[62];
    v7 = v2[63];
    v8 = v2[56];

    v5 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v144 = v0;
  v1 = v0;
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v1[61];
    v6 = v1[56];
    v7 = v1[19];

    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v1[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v143 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v10 + 16), *(v10 + 24), &v143);
      _os_log_impl(&dword_1DC659000, v8, v9, "[ConversationService] No DecisionEngine response found for rcId %s during eager phase. Will redirect to server if this result is selected.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

LABEL_5:
    v13 = v1[18];
    v14 = v1[19];
    type metadata accessor for ConversationService.EagerResult(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = v1[55];
    v19 = v1[51];
    v18 = v1[52];
    v21 = v1[49];
    v20 = v1[50];
    v22 = v1;
    v23 = v1[46];
    v24 = v22[44];
    v25 = v22[45];
    v116 = v22[43];
    v118 = v22[40];
    v120 = v22[39];
    v122 = v22[38];
    v124 = v22[37];
    v126 = v22[36];
    v128 = v22[35];
    v130 = v22[32];
    v131 = v22[31];
    v134 = v22[28];
    v137 = v22[27];
    v140 = v22[26];
    dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

    v26 = v22[1];

    return v26();
  }

  v28 = v1[49];
  v30 = v1[41];
  v29 = v1[42];
  v31 = v1[40];
  outlined init with take of DecisionEngineResponse(v4, v28, type metadata accessor for DecisionEngineResponse);
  v32 = *(v3 + 24);
  *(v1 + 142) = v32;
  outlined init with copy of ReferenceResolutionClientProtocol?(v28 + v32, v31, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1[40], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v33 = v1[49];
    v34 = *v33;
    v1[67] = *v33;
    if (!v34)
    {
      v78 = v1[61];
      v79 = v1[56];
      v80 = v1[19];

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();

      v83 = os_log_type_enabled(v81, v82);
      v84 = v1[49];
      if (v83)
      {
        v85 = v1[19];
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v143 = v87;
        *v86 = 136315138;
        *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v85 + 16), *(v85 + 24), &v143);
        _os_log_impl(&dword_1DC659000, v81, v82, "[ConversationService] No conversation found for rcId %s during eager phase. Will redirect to server if this result is selected.", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1E12A2F50](v87, -1, -1);
        MEMORY[0x1E12A2F50](v86, -1, -1);
      }

      outlined destroy of ConversationService.EagerResult(v84, type metadata accessor for DecisionEngineResponse);
      goto LABEL_5;
    }

    v35 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
    v36 = v34;
    v37 = 0;

    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

  v38 = v1[57];
  v39 = v1[44];
  v40 = v1[45];
  v41 = v1[41];
  v42 = v1[42];
  (*(v42 + 32))(v40, v1[40], v41);
  (*(v42 + 16))(v39, v40, v41);
  v43 = *(v38 + 16);
  v44 = *(v43 + 16);

  v45 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
    v46 = 0;
    v47 = v1[34];
    v132 = v44;
    v135 = v1;
    v138 = (v47 + 32);
    while (v46 < *(v43 + 16))
    {
      v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v49 = *(v47 + 72);
      v50 = (*(v47 + 16))(v1[39], v43 + v48 + v49 * v46, v1[33]);
      MEMORY[0x1E129C0F0](v50);
      v51 = Array<A>.hasWantedToPause.getter();

      v52 = v1[39];
      if (v51)
      {
        v53 = *v138;
        (*v138)(v1[38], v1[39], v1[33]);
        v143 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1);
          v45 = v143;
        }

        v55 = *(v45 + 16);
        v54 = *(v45 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1);
          v45 = v143;
        }

        v56 = v135[38];
        v57 = v135[33];
        *(v45 + 16) = v55 + 1;
        v58 = v45 + v48 + v55 * v49;
        v1 = v135;
        v35 = v53(v58, v56, v57);
        v44 = v132;
      }

      else
      {
        v35 = (*(v47 + 8))(v1[39], v1[33]);
      }

      if (v44 == ++v46)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_24:

  v59 = *(v45 + 16);
  if (v59)
  {
    v60 = v1[34];
    v61 = v1[30];
    v62 = v1[25];
    v143 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v63 = v143;
    v64 = *(v60 + 16);
    v60 += 16;
    v65 = v45 + ((*(v60 + 64) + 32) & ~*(v60 + 64));
    v125 = *(v60 + 56);
    v127 = v64;
    v121 = (v60 - 8);
    v123 = (v62 + 8);
    v119 = *MEMORY[0x1E69D0168];
    v129 = v61;
    v117 = (v61 + 104);
    do
    {
      v136 = v63;
      v141 = v59;
      v66 = v1[36];
      v67 = v1[37];
      v68 = v1[33];
      v133 = v1[31];
      v139 = v1[29];
      v69 = v1[26];
      v70 = v1[27];
      v71 = v1[24];
      v127(v67, v65, v68);
      v127(v66, v67, v68);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v72 = v71;
      v63 = v136;
      (*v123)(v69, v72);
      v73 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v73 - 8) + 56))(v70, 0, 1, v73);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      (*v121)(v67, v68);
      (*v117)(v133, v119, v139);
      v143 = v136;
      v75 = *(v136 + 16);
      v74 = *(v136 + 24);
      if (v75 >= v74 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1);
        v63 = v143;
      }

      v76 = v1[31];
      v77 = v1[29];
      *(v63 + 16) = v75 + 1;
      (*(v129 + 32))(v63 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v75, v76, v77);
      v65 += v125;
      v59 = v141 - 1;
    }

    while (v141 != 1);
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
  }

  v142 = v1[61];
  v89 = v1[44];
  v88 = v1[45];
  v90 = v1[42];
  v91 = v1[43];
  v92 = v1[41];
  v93 = v1;
  v94 = v1[32];
  v95 = v93[28];
  Input.parse.getter();
  v143 = Input.alternatives.getter();
  specialized Array.append<A>(contentsOf:)(v63);
  Input.continuationState.getter();
  Input.init(parse:alternatives:continuationState:)();
  (*(v90 + 40))(v89, v91, v92);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = v93[44];
    v99 = v93[41];
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v143 = v101;
    *v100 = 136315138;
    swift_beginAccess();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v143);

    *(v100 + 4) = v104;
    _os_log_impl(&dword_1DC659000, v96, v97, "[ConversationService] input: %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x1E12A2F50](v101, -1, -1);
    MEMORY[0x1E12A2F50](v100, -1, -1);
  }

  v105 = v93;
  v106 = v93[44];
  v107 = v93[45];
  v108 = v93[32];
  v109 = v93[21];
  v110 = v93[19];
  v111 = *(v110 + 16);
  v112 = *(v110 + 24);
  swift_beginAccess();
  (*(*v109 + 352))(v111, v112, v106);
  Input.parse.getter();
  v113 = swift_task_alloc();
  v105[66] = v113;
  *v113 = v105;
  v113[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  v114 = v105[32];
  v115 = v105[21];

  return specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(v115, v111, v112, v114);
}

{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 232);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v2, 0);
}

{
  v43 = v0;
  v1 = v0[44];
  v2 = v0[41];
  v3 = *(v0[42] + 8);
  v3(v0[45], v2);
  v3(v1, v2);
  v4 = v0[49];
  v5 = *v4;
  v0[67] = *v4;
  if (v5)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v5, 0);
  }

  else
  {
    v6 = v0[61];
    v7 = v0[56];
    v8 = v0[19];

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[49];
    if (v11)
    {
      v13 = v0[19];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v13 + 16), *(v13 + 24), &v42);
      _os_log_impl(&dword_1DC659000, v9, v10, "[ConversationService] No conversation found for rcId %s during eager phase. Will redirect to server if this result is selected.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    outlined destroy of ConversationService.EagerResult(v12, type metadata accessor for DecisionEngineResponse);
    v17 = v0[18];
    v16 = v0[19];
    type metadata accessor for ConversationService.EagerResult(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = v0[55];
    v22 = v0[51];
    v21 = v0[52];
    v24 = v0[49];
    v23 = v0[50];
    v25 = v0[45];
    v26 = v0[46];
    v27 = v0[44];
    v30 = v0[43];
    v31 = v0[40];
    v32 = v0[39];
    v33 = v0[38];
    v34 = v0[37];
    v35 = v0[36];
    v36 = v0[35];
    v37 = v0[32];
    v38 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v41 = v0[26];
    dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

    v28 = v0[1];

    return v28();
  }
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 488);
  v9 = *(v0 + 176);
  Logger.debugF(file:function:)();
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v4 = swift_allocObject();
  *(v0 + 544) = v4;
  *(v4 + 16) = v9;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 552) = v7;
  *v7 = v0;
  v7[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v8 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);
    v5 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    v6 = *(v2 + 544);

    v4 = *(v2 + 536);
    v5 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), *(v0 + 448), 0);
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 568);
  v3 = *(v0 + 448);
  v4 = *(v0 + 392);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
  *v6 = v5;
  v6[1] = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v2, v6 + v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  outlined destroy of ConversationService.EagerResult(v4, type metadata accessor for DecisionEngineResponse);
  type metadata accessor for ConversationService.EagerResult(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v0 + 440);
  v12 = *(v0 + 408);
  v11 = *(v0 + 416);
  v14 = *(v0 + 392);
  v13 = *(v0 + 400);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v20 = *(v0 + 344);
  v21 = *(v0 + 320);
  v22 = *(v0 + 312);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  v25 = *(v0 + 288);
  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 216);
  v31 = *(v0 + 208);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = *(v0 + 544);
  v2 = *(v0 + 448);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v2, 0);
}

{
  v1 = v0[67];
  v2 = v0[56];
  v3 = v0[49];

  outlined destroy of ConversationService.EagerResult(v3, type metadata accessor for DecisionEngineResponse);
  v29 = v0[70];
  v4 = v0[55];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[45];
  v10 = v0[46];
  v16 = v0[44];
  v17 = v0[43];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[26];
  v11 = v0[19];
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[56];

  v29 = v0[65];
  v4 = v0[55];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[45];
  v10 = v0[46];
  v16 = v0[44];
  v17 = v0[43];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[26];
  v11 = v0[19];
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySb_GMd, &_sScG8IteratorVySb_GMR);
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v4[31] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:), v9, 0);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)()
{
  v61 = v0;
  v1 = *(v0 + 192);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 104);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    v2 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v55 = v4;
  v56 = v2;
  v57 = v11;
  while (v2 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19)
    {
      goto LABEL_32;
    }

    *(v0 + 168) = v19;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v18 = *(v0 + 160);
    v16 = v6;
    v17 = v7;
    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v58 = v17;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v24;
      v60[0] = 0;
      *v23 = 136315138;
      v60[1] = 0xE000000000000000;

      _StringGuts.grow(_:)(17);

      strcpy(v60, "FlowExtension(");
      HIBYTE(v60[1]) = -18;
      MEMORY[0x1E12A1580](*(v18 + 112), *(v18 + 120));
      MEMORY[0x1E12A1580](41, 0xE100000000000000);

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60[0], v60[1], &v59);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v21, v22, "[ConversationService] check for inputContinuation support for conversation: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v28 = *(v0 + 200);
    v29 = type metadata accessor for TaskPriority();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = swift_allocObject();
    v31[2] = 0;
    v32 = v31 + 2;
    v31[3] = 0;
    v31[4] = v18;
    v31[5] = v28;
    outlined init with copy of ReferenceResolutionClientProtocol?(v26, v27, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v27) = (*(v30 + 48))(v27, 1, v29);

    v33 = *(v0 + 232);
    if (v27 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sScPSgMd, &_sScPSgMR);
      if (*v32)
      {
        goto LABEL_27;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v30 + 8))(v33, v29);
      if (*v32)
      {
LABEL_27:
        v34 = v31[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = dispatch thunk of Actor.unownedExecutor.getter();
        v37 = v36;
        swift_unknownObjectRelease();
        goto LABEL_30;
      }
    }

    v35 = 0;
    v37 = 0;
LABEL_30:
    v38 = **(v0 + 184);
    v39 = swift_allocObject();
    *(v39 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
    *(v39 + 24) = v31;

    if (v37 | v35)
    {
      v12 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v35;
      *(v0 + 80) = v37;
    }

    else
    {
      v12 = 0;
    }

    v4 = v55;
    v2 = v56;
    v13 = *(v0 + 240);
    *(v0 + 136) = 1;
    *(v0 + 144) = v12;
    *(v0 + 152) = v38;
    swift_task_create();

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sScPSgMd, &_sScPSgMR);
    v6 = v16;
    v7 = v58;
    v11 = v57;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (!v7)
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_32;
      }

      v15 = *(v4 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_17:
  v17 = (v15 - 1) & v15;
  v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

  if (v18)
  {
    goto LABEL_21;
  }

LABEL_32:
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  if (one-time initialization token for executor == -1)
  {
    goto LABEL_33;
  }

LABEL_39:
  swift_once();
LABEL_33:
  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.executor);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DC659000, v41, v42, "[ConversationService] checking if conversation group satisifies input continuation check", v43, 2u);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

  v44 = *(v0 + 224);
  v45 = *(v0 + 184);

  v46 = *v45;
  TaskGroup.makeAsyncIterator()();
  v47 = static MessageBusActor.shared;
  *(v0 + 256) = static MessageBusActor.shared;
  v49 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v48, type metadata accessor for MessageBusActor);
  v50 = *(MEMORY[0x1E69E8588] + 4);

  v51 = swift_task_alloc();
  *(v0 + 264) = v51;
  *v51 = v0;
  v51[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  v52 = *(v0 + 224);
  v53 = *(v0 + 208);

  return MEMORY[0x1EEE6D8A8](v0 + 272, v47, v49, v53);
}

{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:), v3, 0);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 272);
  if (v3 == 2)
  {
    v4 = 1;
LABEL_8:
    v11 = *(v2 + 240);
    v12 = *(v2 + 248);
    v13 = *(v2 + 232);
    v14 = *(v2 + 176);
    (*(*(v2 + 216) + 8))(*(v2 + 224), *(v2 + 208));

    *v14 = v4;

    v15 = *(v2 + 8);

    return v15();
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v5 = static MessageBusActor.shared;
  *(v2 + 256) = static MessageBusActor.shared;
  v6 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor);
  v7 = *(MEMORY[0x1E69E8588] + 4);

  v8 = swift_task_alloc();
  *(v2 + 264) = v8;
  *v8 = v2;
  v8[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  v9 = *(v2 + 224);
  v10 = *(v2 + 208);

  return MEMORY[0x1EEE6D8A8](v2 + 272, v5, v6, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for FlexibleExecutionSupportOptions();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v5[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[12] = v11;
  v12 = swift_task_alloc();
  v5[13] = v12;
  *v12 = v5;
  v12[1] = closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);

  return RemoteConversationClient.flexibleExecutionSupportOptions()(v11);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)()
{
  v2 = *(*v1 + 104);
  v5 = *v1;

  if (v0)
  {

    v3 = closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    v3 = closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v42 = v0;
  (*(*(v0 + 48) + 56))(*(v0 + 96), 0, 1, *(v0 + 40));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v1, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  if (v8)
  {
    v10 = *(v0 + 80);
    v39 = *(v0 + 64);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v11 + 16), *(v11 + 24), &v40);
    *(v13 + 12) = 2080;
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v41, "FlowExtension(");
    HIBYTE(v41[1]) = -18;
    MEMORY[0x1E12A1580](*(v12 + 112), *(v12 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v13 + 14) = v15;
    *(v13 + 22) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol?(v9, v10, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v40);

    *(v13 + 24) = v19;
    _os_log_impl(&dword_1DC659000, v6, v7, "[ConversationService] flexible execution options for rcId: %s, active conversation:  %s are  %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 96), v20, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v23 = (*(v22 + 48))(v20, 1, v21);
  v24 = *(v0 + 96);
  v25 = *(v0 + 72);
  if (v23 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 96), &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v26 = 0;
  }

  else
  {
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);
    static FlexibleExecutionSupportOptions.inputContinuation.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, 255, MEMORY[0x1E69D00C0]);
    v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v31 = *(v28 + 8);
    v31(v27, v29);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v31(v25, v29);
    v26 = v30 & 1;
  }

  v33 = *(v0 + 88);
  v32 = *(v0 + 96);
  v35 = *(v0 + 72);
  v34 = *(v0 + 80);
  v36 = *(v0 + 56);
  **(v0 + 16) = v26;

  v37 = *(v0 + 8);

  return v37();
}

{
  v42 = v0;
  (*(*(v0 + 48) + 56))(*(v0 + 96), 1, 1, *(v0 + 40));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v1, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  if (v8)
  {
    v10 = *(v0 + 80);
    v39 = *(v0 + 64);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v11 + 16), *(v11 + 24), &v40);
    *(v13 + 12) = 2080;
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v41, "FlowExtension(");
    HIBYTE(v41[1]) = -18;
    MEMORY[0x1E12A1580](*(v12 + 112), *(v12 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v13 + 14) = v15;
    *(v13 + 22) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol?(v9, v10, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v40);

    *(v13 + 24) = v19;
    _os_log_impl(&dword_1DC659000, v6, v7, "[ConversationService] flexible execution options for rcId: %s, active conversation:  %s are  %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 96), v20, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v23 = (*(v22 + 48))(v20, 1, v21);
  v24 = *(v0 + 96);
  v25 = *(v0 + 72);
  if (v23 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 96), &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v26 = 0;
  }

  else
  {
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);
    static FlexibleExecutionSupportOptions.inputContinuation.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, 255, MEMORY[0x1E69D00C0]);
    v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v31 = *(v28 + 8);
    v31(v27, v29);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v31(v25, v29);
    v26 = v30 & 1;
  }

  v33 = *(v0 + 88);
  v32 = *(v0 + 96);
  v35 = *(v0 + 72);
  v34 = *(v0 + 80);
  v36 = *(v0 + 56);
  **(v0 + 16) = v26;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = one-time initialization token for shared;

  if (v16 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v19 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v18, type metadata accessor for MessageBusActor);
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = v5;
  v20[7] = a1;
  v20[8] = a2;
  v20[9] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v20);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a4;
  v8[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8[7] = static MessageBusActor.shared;

  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:);

  return ConversationService.checkExecutionOverrides(context:resultCandidateId:)(a7, a8, v14);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v3, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = type metadata accessor for Parse();
  v4[52] = v5;
  v6 = *(v5 - 8);
  v4[53] = v6;
  v7 = *(v6 + 64) + 15;
  v4[54] = swift_task_alloc();
  v8 = type metadata accessor for USOParse();
  v4[55] = v8;
  v9 = *(v8 - 8);
  v4[56] = v9;
  v10 = *(v9 + 64) + 15;
  v4[57] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v12 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v4[60] = v12;
  v13 = *(v12 - 8);
  v4[61] = v13;
  v14 = *(v13 + 64) + 15;
  v4[62] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMR);
  v4[63] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[64] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static MessageBusActor.shared;
  v4[71] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), v19, 0);
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)()
{
  v1 = *(v0 + 408);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 576) = v2;
  v3 = *(v1 + 120);
  *(v0 + 700) = v3;
  if ((v3 & 0xC0) == 0x80)
  {
    v4 = one-time initialization token for executor;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    *(v0 + 584) = __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "[ConversationService] didReceiveCheckExecutionOverrides", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v9 = *(v1 + 120);
    v10 = v2;
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      v9 = *(v1 + 112);
    }

    *(v0 + 701) = v9 & 1;
    v25 = *(v0 + 560);
    v26 = *(v0 + 536);
    v27 = *(v0 + 528);
    v28 = *(v0 + 512);
    v57 = *(v0 + 504);
    v29 = *(v0 + 480);
    v30 = *(v0 + 488);
    v32 = *(v0 + 392);
    v31 = *(v0 + 400);
    (*(*v10 + 360))(v32, v31);
    (*(*v10 + 376))(v32, v31);
    v33 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
    *(v0 + 592) = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
    v60 = v10;
    v34 = &v10[v33];
    v35 = *(type metadata accessor for RemoteConversationTurnData(0) + 32);
    *(v0 + 696) = v35;
    v36 = (*&v34[v35] + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);
    *(v0 + 600) = *v36;
    *(v0 + 608) = v36[1];
    (*(v30 + 104))(v27, *MEMORY[0x1E69D0A98], v29);
    (*(v30 + 56))(v27, 0, 1, v29);
    v37 = *(v57 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v26, v28, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v27, v28 + v37, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
    v38 = *(v30 + 48);
    if (v38(v28, 1, v29) == 1)
    {
      v39 = *(v0 + 528);
      v40 = *(v0 + 480);

      outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
      v41 = v38(v28 + v37, 1, v40);
      v42 = v60;
      if (v41 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 512), &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
        v43 = 1;
LABEL_20:
        *(v0 + 702) = v43 & 1;
        v54 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker;
        v55 = swift_task_alloc();
        *(v0 + 616) = v55;
        *v55 = v0;
        v55[1] = ConversationService.checkExecutionOverrides(context:resultCandidateId:);

        return specialized static ConversationService.skipEmptyAsr(_:)(&v42[v54]);
      }
    }

    else
    {
      v44 = *(v0 + 480);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 512), *(v0 + 520), &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
      v45 = v38(v28 + v37, 1, v44);
      v46 = *(v0 + 528);
      v47 = *(v0 + 520);
      if (v45 != 1)
      {
        v58 = *(v0 + 512);
        v51 = *(v0 + 488);
        v50 = *(v0 + 496);
        v52 = *(v0 + 480);
        (*(v51 + 32))(v50, v28 + v37, v52);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, 255, MEMORY[0x1E69D0AA8]);

        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = *(v51 + 8);
        v53(v50, v52);
        outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
        v53(v47, v52);
        outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
        v42 = v60;
        goto LABEL_20;
      }

      v49 = *(v0 + 480);
      v48 = *(v0 + 488);

      outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
      (*(v48 + 8))(v47, v49);
      v42 = v60;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 512), &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMR);
    v43 = 0;
    goto LABEL_20;
  }

  v11 = *(v0 + 568);
  outlined copy of ConversationService.State(v2, v3);

  _StringGuts.grow(_:)(35);

  v12 = StaticString.description.getter();
  MEMORY[0x1E12A1580](v12);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA80F50);
  outlined consume of ConversationService.State(v2, v3);

  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 512);
  v20 = *(v0 + 496);
  v22 = *(v0 + 464);
  v21 = *(v0 + 472);
  v56 = *(v0 + 456);
  v59 = *(v0 + 432);

  v23 = *(v0 + 8);

  return v23(0);
}

{
  v1 = *(v0 + 408);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  *(v0 + 624) = v3;
  v4 = *(v0 + 696);
  v5 = *(v0 + 576);
  v6 = *(v0 + 408);
  v7 = *(v0 + 384);
  v8 = v5 + *(v0 + 592);
  swift_beginAccess();
  *(v0 + 632) = *(v6 + 272);
  *(v0 + 640) = *(v7 + 40);
  v9 = *(v8 + v4);
  *(v0 + 704) = *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer);
  *(v0 + 705) = *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest);
  v10 = v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge;
  *(v0 + 648) = *(v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge);
  *(v0 + 656) = *(v10 + 8);

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

{
  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  specialized Logger.debugF(_:_:_:_:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = *(v0 + 472);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 552), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v7 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  else
  {
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);
    v10 = *(v0 + 416);
    v11 = *(v0 + 552);
    Input.parse.getter();
    if ((*(v9 + 88))(v8, v10) == *MEMORY[0x1E69D0168])
    {
      v12 = *(v0 + 472);
      v14 = *(v0 + 448);
      v13 = *(v0 + 456);
      v16 = *(v0 + 432);
      v15 = *(v0 + 440);
      (*(*(v0 + 424) + 96))(v16, *(v0 + 416));
      (*(v14 + 32))(v13, v16, v15);
      USOParse.userParse.getter();
      (*(v14 + 8))(v13, v15);
      v17 = 0;
    }

    else
    {
      (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
      v17 = 1;
    }

    v18 = *(v0 + 552);
    v19 = *(v0 + 472);
    v20 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v20 - 8) + 56))(v19, v17, 1, v20);
    (*(v5 + 8))(v18, v4);
  }

  v21 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = *(v0 + 705);
  v24 = *(v0 + 702);
  v26 = *(v0 + 464);
  v25 = *(v0 + 472);
  v27 = MEMORY[0x1E69E7CC0];
  *(v0 + 328) = MEMORY[0x1E69E7CC0];
  outlined init with copy of ReferenceResolutionClientProtocol?(v25, v26, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v28 = type metadata accessor for HangUpOverride();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(v26, v22, v21, v23, v24);
  swift_beginAccess();
  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v27);
  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
  }

  v35 = *(v0 + 608);
  v83 = *(v0 + 600);
  v36 = *(v0 + 701);
  v37 = *(v0 + 560);
  v38 = *(v0 + 544);
  *(v0 + 40) = v28;
  *(v0 + 48) = &protocol witness table for HangUpOverride;
  *(v0 + 16) = v31;
  v32[2] = v34 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), &v32[5 * v34 + 4]);
  *(v0 + 328) = v32;
  outlined init with copy of ReferenceResolutionClientProtocol?(v37, v38, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v39 = type metadata accessor for WaitUniversalActionOverride();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  *(v42 + 16) = 7;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v38, v42 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v82 = v36;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = v36;
  v43 = (v42 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v43 = v83;
  v43[1] = v35;
  v45 = v32[2];
  v44 = v32[3];

  if (v45 >= v44 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v32);
  }

  v47 = *(v0 + 464);
  v46 = *(v0 + 472);
  *(v0 + 80) = v39;
  *(v0 + 88) = &protocol witness table for WaitUniversalActionOverride;
  *(v0 + 56) = v42;
  v32[2] = v45 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), &v32[5 * v45 + 4]);
  *(v0 + 328) = v32;
  outlined init with copy of ReferenceResolutionClientProtocol?(v46, v47, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v48 = type metadata accessor for EmergencyCallMitigatorOverride();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v51 = swift_allocObject();
  *(v51 + 16) = 1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v47, v51 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v53 = v32[2];
  v52 = v32[3];
  if (v53 >= v52 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v32);
  }

  v54 = *(v0 + 464);
  v55 = *(v0 + 472);
  v56 = *(v0 + 384);
  *(v0 + 120) = v48;
  *(v0 + 128) = &protocol witness table for EmergencyCallMitigatorOverride;
  *(v0 + 96) = v51;
  v32[2] = v53 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), &v32[5 * v53 + 4]);
  *(v0 + 328) = v32;
  v58 = *(v56 + 16);
  v57 = *(v56 + 24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v55, v54, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  LOBYTE(v55) = *(v56 + 32);
  *(v0 + 706) = v55;
  v59 = *(v56 + 33);
  LOBYTE(v56) = *(v56 + 48);
  v60 = type metadata accessor for AnnounceExecutionOverride();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  *(v63 + 16) = 1028;
  *(v63 + 24) = v58;
  *(v63 + 32) = v57;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v54, v63 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = v55;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = v59;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = v56;
  v64 = v32[2];
  v65 = v32[3];

  if (v64 >= v65 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v64 + 1, 1, v32);
  }

  v66 = *(v0 + 703);
  *(v0 + 160) = v60;
  *(v0 + 168) = &protocol witness table for AnnounceExecutionOverride;
  *(v0 + 136) = v63;
  v32[2] = v64 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), &v32[5 * v64 + 4]);
  *(v0 + 328) = v32;
  swift_endAccess();
  if (v66 == 1)
  {
    v67 = *(v0 + 608);
  }

  else
  {
    v80 = *(v0 + 704);
    v81 = *(v0 + 705);
    v68 = *(v0 + 640);
    v69 = *(v0 + 632);
    v70 = *(v0 + 702);
    v71 = *(v0 + 608);
    v72 = *(v0 + 600);
    v73 = *(v0 + 624) != 0;
    v84 = type metadata accessor for EmptyAsrOverride();
    v74 = swift_allocObject();
    *(v74 + 16) = 6;
    *(v74 + 40) = v82;
    *(v74 + 41) = v73;
    *(v74 + 24) = v68;
    *(v74 + 32) = v69;
    *(v74 + 42) = v80;
    *(v74 + 44) = v70;
    *(v74 + 43) = v81;
    *(v74 + 48) = v72;
    *(v74 + 56) = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64 + 2, 1, v32);
    }

    v76 = v32[2];
    v75 = v32[3];
    if (v76 >= v75 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v32);
    }

    *(v0 + 200) = v84;
    *(v0 + 208) = &protocol witness table for EmptyAsrOverride;
    *(v0 + 176) = v74;
    v32[2] = v76 + 1;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), &v32[5 * v76 + 4]);
  }

  *(v0 + 664) = v32;
  type metadata accessor for ExecutionOverrideDecisionMaker();
  swift_initStaticObject();
  type metadata accessor for CompositeExecutionOverrides();
  inited = swift_initStackObject();
  *(v0 + 672) = inited;
  *(inited + 16) = v32;

  v78 = swift_task_alloc();
  *(v0 + 680) = v78;
  *v78 = v0;
  v78[1] = ConversationService.checkExecutionOverrides(context:resultCandidateId:);

  return ExecutionOverrideDecisionMaker.evaluate(rules:)(inited);
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 584);
  v3 = *(v0 + 384);

  v4 = v1;
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2, v2, v3, v4);

  v5 = v4[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type];
  if (v5 == 8)
  {
    *(v0 + 706);
  }

  v6 = *(v0 + 664);
  v7 = *(v0 + 584);
  v8 = *(v0 + 568);
  v9 = *(v0 + 472);
  v11 = *(v0 + 392);
  v10 = *(v0 + 400);
  specialized Logger.debugF(_:_:_:_:)();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionOverrideInfo(rcId:executionOverrideDecision:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), v8, 0);
}

{
  v20 = *(v0 + 688);
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  v5 = *(v0 + 700);

  outlined consume of ConversationService.State(v1, v5);
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 528);
  v11 = *(v0 + 520);
  v12 = *(v0 + 512);
  v13 = *(v0 + 496);
  v14 = *(v0 + 464);
  v15 = *(v0 + 472);
  v18 = *(v0 + 456);
  v19 = *(v0 + 432);

  v16 = *(v0 + 8);

  return v16(v20);
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)(char a1)
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 568);
  v5 = *v1;
  *(*v1 + 703) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), v3, 0);
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1)
{
  v2 = *(*v1 + 680);
  v3 = *(*v1 + 672);
  v5 = *v1;
  *(*v1 + 688) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

uint64_t static ConversationService.skipEmptyAsr(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return specialized static ConversationService.skipEmptyAsr(_:)(a1);
}

uint64_t ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_UUID();
  v4[43] = v6;
  v7 = *(v6 - 8);
  v4[44] = v7;
  v8 = *(v7 + 64) + 15;
  v4[45] = swift_task_alloc();
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[46] = v9;
  v10 = *(v9 - 8);
  v4[47] = v10;
  v11 = *(v10 + 64) + 15;
  v4[48] = swift_task_alloc();
  v12 = type metadata accessor for ServerFallbackReason();
  v4[49] = v12;
  v13 = *(v12 - 8);
  v4[50] = v13;
  v14 = *(v13 + 64) + 15;
  v4[51] = swift_task_alloc();
  v15 = type metadata accessor for USOParse();
  v4[52] = v15;
  v16 = *(v15 - 8);
  v4[53] = v16;
  v17 = *(v16 + 64) + 15;
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR) - 8) + 64) + 15;
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR) - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v21 = type metadata accessor for Parse();
  v4[61] = v21;
  v22 = *(v21 - 8);
  v4[62] = v22;
  v23 = *(v22 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v24 = type metadata accessor for Input();
  v4[67] = v24;
  v25 = *(v24 - 8);
  v4[68] = v25;
  v26 = *(v25 + 64) + 15;
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v27 = type metadata accessor for DecisionEngineResponse();
  v4[72] = v27;
  v28 = *(v27 - 8);
  v4[73] = v28;
  v29 = *(v28 + 64) + 15;
  v4[74] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR) - 8) + 64) + 15;
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v31 = type metadata accessor for ConversationService.EagerResult(0);
  v4[80] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v34 = type metadata accessor for SiriKitEventPayload();
  v4[90] = v34;
  v35 = *(v34 - 8);
  v4[91] = v35;
  v36 = *(v35 + 64) + 15;
  v4[92] = swift_task_alloc();
  updated = type metadata accessor for ContextUpdateScope();
  v4[93] = updated;
  v38 = *(updated - 8);
  v4[94] = v38;
  v39 = *(v38 + 64) + 15;
  v4[95] = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR) - 8) + 64) + 15;
  v4[98] = swift_task_alloc();
  v42 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v4[99] = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR) - 8) + 64) + 15;
  v4[100] = swift_task_alloc();
  v44 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v4[101] = v44;
  v45 = *(v44 - 8);
  v4[102] = v45;
  v46 = *(v45 + 64) + 15;
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v47 = type metadata accessor for RequestSummary.ExecutionSource();
  v4[105] = v47;
  v48 = *(v47 - 8);
  v4[106] = v48;
  v49 = *(v48 + 64) + 15;
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR) - 8) + 64) + 15;
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v51 = static MessageBusActor.shared;
  v4[119] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v51, 0);
}

uint64_t ConversationService.bridge(didReceiveCommitResultCandidateId:from:)()
{
  v110 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Logger();
  *(v0 + 960) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  swift_beginAccess();
  v3 = *(v1 + 112);
  LOBYTE(v1) = *(v1 + 120);
  outlined copy of ConversationService.State(v3, v1);
  v4 = specialized ConversationService.State.assertTurnStarted(function:)("bridge(didReceiveCommitResultCandidateId:from:)", 47, 2, v3, v1);
  *(v0 + 968) = v4;
  v5 = v4;
  v6 = *(v0 + 296);

  outlined consume of ConversationService.State(v3, v1);
  v7 = *(v6 + 16);
  *(v0 + 976) = v7;
  v8 = *(v6 + 24);
  *(v0 + 984) = v8;
  v108 = (*(*v5 + 344))(v7, v8);
  if (v108)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "Sending ACE command to reveal ASR", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v12 = *(v0 + 944);
    v13 = *(v0 + 896);
    v101 = *(v0 + 936);
    v103 = *(v0 + 888);
    v14 = *(v0 + 848);
    v15 = *(v0 + 840);

    v16 = [objc_allocWithZone(MEMORY[0x1E69C7BA0]) init];
    [v16 setRecognition_];
    v17 = MEMORY[0x1E12A1410](v7, v8);
    [v16 setSpeechRecognizedAceId_];

    v19 = *(v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v18 = *(v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8);
    v20 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    (*(v14 + 104))(v13, *MEMORY[0x1E69D0678], v15);
    v21 = *(v14 + 16);
    v21(v103, v13, v15);
    outlined init with copy of ReferenceResolutionClientProtocol?(v12, v101, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v106 = type metadata accessor for ExecutionOutput();
    v22 = objc_allocWithZone(v106);
    v23 = &v22[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v23 = v19;
    *(v23 + 1) = v18;
    v24 = &v22[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v22[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v22[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v22[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v27 = 0;
    *(v27 + 1) = 0;
    v21(&v22[OBJC_IVAR___SKRExecutionOutput_executionSource], v103, v15);
    v104 = v22;
    outlined init with copy of ReferenceResolutionClientProtocol?(v101, &v22[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v29 = v16;
    v30 = v29;
    v102 = v29;
    if (v28)
    {
      v31 = v29;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v109[0] = v36;
        *v34 = 136315394;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v109);
        *(v34 + 12) = 2112;
        *(v34 + 14) = v28;
        *v35 = v28;
        v37 = v31;
        _os_log_impl(&dword_1DC659000, v32, v33, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v34, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1E12A2F50](v36, -1, -1);
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      v38 = [v28 promptContextProto];
      v100 = v28;
      if (v38)
      {
        v39 = *(v0 + 808);
        v40 = *(v0 + 800);
        v41 = *(v0 + 792);
        v42 = v38;
        v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        memset(v109, 0, 40);
        outlined copy of Data._Representation(v43, v45);
        BinaryDecodingOptions.init()();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500]);
        Message.init(serializedData:extensions:partial:options:)();
        v79 = *(v0 + 832);
        v80 = *(v0 + 824);
        v81 = *(v0 + 816);
        v82 = *(v0 + 808);
        v83 = *(v0 + 800);
        (*(v81 + 56))(v83, 0, 1, v82);
        (*(v81 + 32))(v79, v83, v82);
        (*(v81 + 16))(v80, v79, v82);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.debug.getter();
        v86 = os_log_type_enabled(v84, v85);
        v87 = *(v0 + 832);
        v88 = *(v0 + 824);
        v89 = *(v0 + 816);
        v90 = *(v0 + 808);
        if (v86)
        {
          v98 = v85;
          v91 = *(v0 + 808);
          v92 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v109[0] = v99;
          *v92 = 136315394;
          *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v109);
          *(v92 + 12) = 2080;
          v93 = Message.textFormatString()();
          v94 = *(v89 + 8);
          v94(v88, v91);
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93._countAndFlagsBits, v93._object, v109);

          *(v92 + 14) = v95;
          _os_log_impl(&dword_1DC659000, v84, v98, "ExecutionOutput: %s: NFCU has prompt context %s", v92, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v99, -1, -1);
          MEMORY[0x1E12A2F50](v92, -1, -1);

          outlined consume of Data._Representation(v43, v45);
          v94(v87, v91);
        }

        else
        {

          outlined consume of Data._Representation(v43, v45);
          v96 = *(v89 + 8);
          v96(v88, v90);
          v96(v87, v90);
        }
      }

      else
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v109[0] = v49;
          *v48 = 136315138;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v109);
          _os_log_impl(&dword_1DC659000, v46, v47, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x1E12A2F50](v49, -1, -1);
          MEMORY[0x1E12A2F50](v48, -1, -1);
        }
      }

      v50 = *(v0 + 784);
      v51 = *(v0 + 776);
      v52 = *(v0 + 768);
      v53 = *(v0 + 760);
      v54 = *(v0 + 752);
      v55 = *(v0 + 744);
      v56 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v56 - 8) + 56))(v50, 1, 1, v56);
      v57 = type metadata accessor for PommesContext();
      (*(*(v57 - 8) + 56))(v51, 1, 1, v57);
      (*(v54 + 104))(v53, *MEMORY[0x1E69CFF08], v55);
      v58 = type metadata accessor for ExecutionContextUpdate();
      v59 = objc_allocWithZone(v58);
      outlined init with copy of ReferenceResolutionClientProtocol?(v51, v52, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v52, v100);
      *&v59[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
      *&v59[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v100;
      *&v59[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
      *&v59[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
      *&v59[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v50, &v59[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      *&v59[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v52, &v59[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      (*(v54 + 16))(&v59[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v53, v55);
      v60 = &v59[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
      *v60 = 0;
      v60[1] = 0;
      v59[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
      *(v0 + 280) = v59;
      *(v0 + 288) = v58;
      v61 = objc_msgSendSuper2((v0 + 280), sel_init);
      (*(v54 + 8))(v53, v55);
      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v22 = v104;
      *&v104[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v61;
      *&v104[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    }

    else
    {

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v109[0] = v66;
        *v64 = 136315394;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v109);
        *(v64 + 12) = 2112;
        *(v64 + 14) = v30;
        *v65 = v16;
        v67 = v30;
        _os_log_impl(&dword_1DC659000, v62, v63, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v64, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v65, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x1E12A2F50](v66, -1, -1);
        MEMORY[0x1E12A2F50](v64, -1, -1);
      }

      *&v22[OBJC_IVAR___SKRExecutionOutput_command] = v16;
      *&v22[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v68 = v30;
    }

    v69 = v106;
    v105 = *(v0 + 944);
    v70 = *(v0 + 936);
    v71 = *(v0 + 896);
    v72 = *(v0 + 888);
    v73 = *(v0 + 848);
    v74 = *(v0 + 840);
    v76 = *(v0 + 304);
    v75 = *(v0 + 312);
    ObjectType = swift_getObjectType();
    *(v0 + 264) = v22;
    *(v0 + 272) = v69;
    v77 = objc_msgSendSuper2((v0 + 264), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v78 = *(v73 + 8);
    v78(v72, v74);

    v78(v71, v74);
    outlined destroy of ReferenceResolutionClientProtocol?(v105, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    (*(v75 + 8))(v77, closure #1 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, ObjectType, v75);
  }

  *(v0 + 992) = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
}

{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = (v0[121] + v0[124]);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v0[125] = type metadata accessor for SiriKitEvent();
  *v3 = v2;
  v3[1] = v1;
  v9 = *MEMORY[0x1E69CFC40];
  v10 = *(v4 + 104);
  v0[126] = v10;
  v0[127] = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v3, v9, v5);

  v11 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[128] = v11;
  v12 = *(MEMORY[0x1E69CFC60] + 4);
  v13 = swift_task_alloc();
  v0[129] = v13;
  *v13 = v0;
  v13[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return MEMORY[0x1EEE39338](v11, v7, v8);
}

{
  v1 = *(*v0 + 1032);
  v2 = *(*v0 + 1024);
  v3 = *(*v0 + 952);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v3, 0);
}

{
  v114 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  ConversationService.markBusy(doing:)();
  v4 = (*(*v1 + 328))(*(v3 + 32), *(v3 + 40));
  *(v0 + 1040) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(MEMORY[0x1E69E86A8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 1048) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v7 = v0;
    v7[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    v11 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v9, v5, v10, v8, v11);
  }

  else
  {
    v12 = *(v0 + 968);
    v109 = *(v0 + 960);
    v13 = *(v0 + 952);
    v14 = *(v0 + 912);
    v15 = *(v0 + 904);
    v16 = *(v0 + 864);
    v17 = *(v0 + 856);
    v18 = *(v0 + 848);
    v19 = *(v0 + 840);

    v20 = v12 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
    v21 = *(v12 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v22 = *(v20 + 8);
    v23 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    (*(v18 + 104))(v16, *MEMORY[0x1E69D0678], v19);
    v24 = *(v18 + 16);
    v24(v17, v16, v19);
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v15, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v25 = type metadata accessor for ExecutionOutput();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v27 = v21;
    *(v27 + 1) = v22;
    v28 = &v26[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v26[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v29 = 0;
    *(v29 + 1) = 0;
    v30 = &v26[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v26[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v31 = 0;
    *(v31 + 1) = 0;
    v24(&v26[OBJC_IVAR___SKRExecutionOutput_executionSource], v17, v19);
    outlined init with copy of ReferenceResolutionClientProtocol?(v15, &v26[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v112 = v36;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v112);
      *(v34 + 12) = 2112;
      *(v34 + 14) = 0;
      *v35 = 0;
      _os_log_impl(&dword_1DC659000, v32, v33, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v34, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v101 = *(v0 + 976);
    v103 = *(v0 + 984);
    v37 = *(v0 + 912);
    v38 = *(v0 + 904);
    v39 = *(v0 + 864);
    v40 = *(v0 + 856);
    v41 = *(v0 + 848);
    v42 = *(v0 + 840);
    v105 = *(v0 + 312);
    v110 = *(v0 + 304);
    ObjectType = swift_getObjectType();
    *&v26[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v26[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    *(v0 + 200) = v26;
    *(v0 + 208) = v25;
    v43 = objc_msgSendSuper2((v0 + 200), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v44 = *(v41 + 8);
    v44(v40, v42);
    v44(v39, v42);
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v112 = 0;
    v113 = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA810A0);
    MEMORY[0x1E12A1580](v101, v103);
    MEMORY[0x1E12A1580](0xD000000000000027, 0x80000001DCA810D0);
    (*(v105 + 32))(v43, v112, v113, ObjectType);

    v45 = *(v0 + 968);
    v46 = *(v0 + 944);
    v47 = *(v0 + 936);
    v48 = *(v0 + 928);
    v49 = *(v0 + 920);
    v50 = *(v0 + 912);
    v57 = *(v0 + 904);
    v58 = *(v0 + 896);
    v59 = *(v0 + 888);
    v60 = *(v0 + 880);
    v61 = *(v0 + 872);
    v62 = *(v0 + 864);
    v63 = *(v0 + 856);
    v64 = *(v0 + 832);
    v65 = *(v0 + 824);
    v66 = *(v0 + 800);
    v67 = *(v0 + 792);
    v68 = *(v0 + 784);
    v69 = *(v0 + 776);
    v70 = *(v0 + 768);
    v71 = *(v0 + 760);
    v72 = *(v0 + 736);
    v73 = *(v0 + 712);
    v74 = *(v0 + 704);
    v75 = *(v0 + 696);
    v76 = *(v0 + 688);
    v77 = *(v0 + 680);
    v78 = *(v0 + 672);
    v79 = *(v0 + 664);
    v80 = *(v0 + 656);
    v81 = *(v0 + 648);
    v82 = *(v0 + 632);
    v83 = *(v0 + 624);
    v84 = *(v0 + 616);
    v85 = *(v0 + 608);
    v86 = *(v0 + 600);
    v87 = *(v0 + 592);
    v88 = *(v0 + 568);
    v89 = *(v0 + 560);
    v90 = *(v0 + 552);
    v91 = *(v0 + 528);
    v92 = *(v0 + 520);
    v93 = *(v0 + 512);
    v94 = *(v0 + 504);
    v95 = *(v0 + 480);
    v96 = *(v0 + 472);
    v97 = *(v0 + 464);
    v51 = *(v0 + 448);
    v98 = *(v0 + 456);
    v99 = *(v0 + 440);
    v100 = *(v0 + 432);
    v102 = *(v0 + 408);
    v104 = *(v0 + 384);
    v106 = *(v0 + 360);
    v108 = *(v0 + 336);
    v111 = *(v0 + 328);
    v52 = *(v0 + 320);
    v53 = type metadata accessor for TaskPriority();
    (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v52;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #1 in ConversationService.markNotBusyAsync(), v54);

    v55 = *(v0 + 8);

    return v55();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v4 = *v1;
  *(*v1 + 1056) = v0;

  v5 = *(v2 + 952);
  if (v0)
  {
    v6 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  else
  {
    v6 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v92 = *(v0 + 960);
      v93 = *(v0 + 296);
      *(v0 + 1064) = *v1;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = *(v0 + 984);
        v97 = *(v0 + 976);
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v291 = v99;
        *v98 = 136315138;
        *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v96, &v291);
        _os_log_impl(&dword_1DC659000, v94, v95, "[ConversationService] Now running unsafe eager input %s, since it was committed", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x1E12A2F50](v99, -1, -1);
        MEMORY[0x1E12A2F50](v98, -1, -1);
      }

      v100 = *(v0 + 968);
      v101 = *(v0 + 320);
      v102 = v101[6];
      __swift_project_boxed_opaque_existential_1(v101 + 2, v101[5]);
      swift_beginAccess();
      *(v0 + 1072) = v101[13];
      swift_beginAccess();
      *(v0 + 1080) = v101[35];
      *(v0 + 1088) = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
      v103 = *(v102 + 8);

      v279 = v103 + *v103;
      v104 = v103[1];
      v105 = swift_task_alloc();
      *(v0 + 1096) = v105;
      *v105 = v0;
      v105[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
      v106 = *(v0 + 632);
      v107 = *(v0 + 304);
      v108 = *(v0 + 312);

      __asm { BRAA            X8, X16 }
    }

    v15 = *(v0 + 960);
    v16 = *(v0 + 704);
    v18 = *v1;
    v17 = v1[1];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v1 + *(v19 + 64), v16, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "Now running commit for conversation which was eagerly prepared", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = *(v0 + 712);
    v24 = *(v0 + 704);

    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v24, v23, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    *(v0 + 1176) = v17;
    *(v0 + 1168) = v18;
    v25 = *(v0 + 712);
    v26 = *(v0 + 672);
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);

    v284 = v17;

    outlined init with copy of ReferenceResolutionClientProtocol?(v25, v26, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v29 = *(v27 + 48);
    v30 = v29(v26, 1, v28);
    v31 = *(v0 + 672);
    if (v30 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 672), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }

    else
    {
      v109 = *(v0 + 512);
      v110 = *(v0 + 488);
      v111 = *(v0 + 496);
      (*(*(v0 + 544) + 32))(*(v0 + 560), *(v0 + 672), *(v0 + 536));
      Input.parse.getter();
      if ((*(v111 + 88))(v109, v110) == *MEMORY[0x1E69D0178])
      {
        v112 = *(v0 + 320);
        (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
        result = swift_beginAccess();
        v113 = *(v112 + 272);
        v114 = __OFADD__(v113, 1);
        v115 = v113 + 1;
        if (v114)
        {
          __break(1u);
          return result;
        }

        v116 = *(v0 + 960);
        v117 = *(v0 + 320);
        *(v112 + 272) = v115;

        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.debug.getter();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v0 + 320);
        if (v120)
        {
          v122 = swift_slowAlloc();
          *v122 = 134217984;
          *(v122 + 4) = *(v112 + 272);

          _os_log_impl(&dword_1DC659000, v118, v119, "Input given to flow was empty: Incrementing consecutiveEmptyInputs to %ld", v122, 0xCu);
          MEMORY[0x1E12A2F50](v122, -1, -1);
        }

        else
        {
          v143 = *(v0 + 320);
        }

        (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
LABEL_42:
        v144 = *(v0 + 664);
        v145 = *(v0 + 536);
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 712), v144, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        v146 = v29(v144, 1, v145);
        v147 = *(v0 + 664);
        if (v146 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_53:
          v188 = *(v0 + 712);
          v189 = *(v0 + 656);
          v190 = *(v0 + 536);
          type metadata accessor for ConversationSELFHelper();
          *(v0 + 1184) = static ConversationSELFHelper.shared.getter();
          outlined init with copy of ReferenceResolutionClientProtocol?(v188, v189, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v191 = v29(v189, 1, v190);
          v192 = *(v0 + 656);
          if (v191 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 656), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
            v193 = 1;
          }

          else
          {
            v194 = *(v0 + 544);
            v195 = *(v0 + 536);
            v196 = *(v0 + 328);
            Input.identifier.getter();
            (*(v194 + 8))(v192, v195);
            v193 = 0;
          }

          v197 = v284;
          v198 = *(v0 + 968);
          v200 = *(v0 + 320);
          v199 = *(v0 + 328);
          v201 = *(v0 + 296);
          v202 = type metadata accessor for UUID();
          v289 = *(v0 + 304);
          (*(*(v202 - 8) + 56))(v199, v193, 1, v202);
          v203 = swift_allocObject();
          *(v0 + 1192) = v203;
          *(v203 + 16) = v200;
          *(v203 + 24) = v201;
          *(v203 + 32) = v198;
          *(v203 + 40) = v289;
          *(v203 + 56) = v197;
          *(v203 + 64) = 0;
          *(v203 + 72) = v18;
          v204 = *(MEMORY[0x1E69D0038] + 4);
          v283 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

          swift_unknownObjectRetain();
          v205 = swift_task_alloc();
          *(v0 + 1200) = v205;
          *v205 = v0;
          v205[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
          v206 = *(v0 + 984);
          v207 = *(v0 + 976);
          v208 = *(v0 + 328);

          return v283();
        }

        v149 = *(v0 + 496);
        v148 = *(v0 + 504);
        v150 = *(v0 + 488);
        (*(*(v0 + 544) + 32))(*(v0 + 552), *(v0 + 664), *(v0 + 536));
        Input.parse.getter();
        v151 = (*(v149 + 88))(v148, v150);
        if (v151 == *MEMORY[0x1E69D0138])
        {
          v152 = *(v0 + 552);
          v282 = v18;
          v153 = *(v0 + 544);
          v154 = *(v0 + 536);
          v155 = *(v0 + 304);
          v156 = *(v0 + 312);
          (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
          ObjectType = swift_getObjectType();
          v158 = type metadata accessor for ExecutionInputInfo();
          v159 = objc_allocWithZone(v158);
          v160 = &v159[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
          *v160 = 0;
          v160[1] = 0;
          v159[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 1;
          *(v0 + 232) = v159;
          *(v0 + 240) = v158;
          v161 = objc_msgSendSuper2((v0 + 232), sel_init);
          (*(v156 + 168))(v161, ObjectType, v156);

          (*(v153 + 8))(v152, v154);
        }

        else
        {
          if (v151 != *MEMORY[0x1E69D0168])
          {
            v176 = *(v0 + 496);
            v175 = *(v0 + 504);
            v177 = *(v0 + 488);
            (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
            (*(v176 + 8))(v175, v177);
            goto LABEL_53;
          }

          v162 = *(v0 + 504);
          v164 = *(v0 + 424);
          v163 = *(v0 + 432);
          v165 = *(v0 + 416);
          v167 = *(v0 + 376);
          v166 = *(v0 + 384);
          v276 = *(v0 + 368);
          v282 = v18;
          v168 = *(v0 + 360);
          v272 = *(v0 + 336);
          (*(*(v0 + 496) + 96))(v162, *(v0 + 488));
          (*(v164 + 32))(v163, v162, v165);
          USOParse.userParse.getter();
          Siri_Nlu_External_UserParse.id.getter();
          (*(v167 + 8))(v166, v276);
          v169 = type metadata accessor for ExecutionInputInfo();
          v170 = objc_allocWithZone(v169);
          static ConversionUtils.convertProtoToUuid(protoUuid:)();
          v171 = type metadata accessor for UUID();
          v172 = *(v171 - 8);
          v173 = (*(v172 + 48))(v272, 1, v171);
          v174 = *(v0 + 336);
          v277 = v169;
          if (v173 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v174, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v254 = 0;
            v257 = 0;
          }

          else
          {
            v178 = UUID.uuidString.getter();
            v254 = v179;
            v257 = v178;
            (*(v172 + 8))(v174, v171);
          }

          v180 = *(v0 + 544);
          v268 = *(v0 + 536);
          v273 = *(v0 + 552);
          v181 = *(v0 + 424);
          v260 = *(v0 + 416);
          v264 = *(v0 + 432);
          v182 = *(v0 + 352);
          v251 = *(v0 + 360);
          v183 = *(v0 + 344);
          v184 = *(v0 + 304);
          v185 = *(v0 + 312);
          v249 = swift_getObjectType();
          v186 = &v170[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
          *v186 = v257;
          v186[1] = v254;
          v170[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
          *(v0 + 248) = v170;
          *(v0 + 256) = v277;
          v187 = objc_msgSendSuper2((v0 + 248), sel_init);
          (*(v182 + 8))(v251, v183);
          (*(v185 + 168))(v187, v249, v185);

          (*(v181 + 8))(v264, v260);
          (*(v180 + 8))(v273, v268);
        }

        v18 = v282;
        goto LABEL_53;
      }

      v139 = *(v0 + 512);
      v140 = *(v0 + 488);
      v141 = *(v0 + 496);
      (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
      (*(v141 + 8))(v139, v140);
    }

    v142 = *(v0 + 320);
    swift_beginAccess();
    *(v142 + 272) = 0;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v32 = *(v0 + 968);
    v33 = *(v0 + 960);
    v34 = *(v0 + 952);
    v35 = *(v0 + 456);
    v37 = *(v0 + 400);
    v36 = *(v0 + 408);
    v38 = *(v0 + 392);

    (*(v37 + 32))(v36, v1, v38);
    v39 = (v32 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v40 = *(v32 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v255 = v39[2];
    v278 = v39[3];
    v285 = v39[1];
    (*(v37 + 16))(v35, v36, v38);
    (*(v37 + 56))(v35, 0, 1, v38);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      _os_log_impl(&dword_1DC659000, v41, v42, "[ConversationService] ServerFallback needed with domainDirected=%{BOOL}d but shouldDisableServerFallback returns true; initiating a fatal response and returning an error instead of performing fallback.", v43, 8u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v265 = *(v0 + 960);
    v44 = *(v0 + 928);
    v45 = *(v0 + 920);
    v46 = *(v0 + 880);
    v47 = *(v0 + 872);
    v48 = *(v0 + 848);
    v49 = *(v0 + 840);

    v50 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
    (*(v48 + 104))(v46, *MEMORY[0x1E69D0678], v49);
    v51 = *(v48 + 16);
    v51(v47, v46, v49);
    outlined init with copy of ReferenceResolutionClientProtocol?(v44, v45, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v269 = type metadata accessor for ExecutionOutput();
    v52 = objc_allocWithZone(v269);
    v53 = &v52[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    v252 = v40;
    *v53 = v40;
    *(v53 + 1) = v285;
    v54 = &v52[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v54 = 0;
    *(v54 + 1) = 0;
    v55 = &v52[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v55 = 0;
    *(v55 + 1) = 0;
    v56 = &v52[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v56 = 0;
    *(v56 + 1) = 0;
    v57 = &v52[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v57 = 0;
    *(v57 + 1) = 0;
    v51(&v52[OBJC_IVAR___SKRExecutionOutput_executionSource], v47, v49);
    outlined init with copy of ReferenceResolutionClientProtocol?(v45, &v52[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v291 = v62;
      *v60 = 136315394;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v291);
      *(v60 + 12) = 2112;
      *(v60 + 14) = 0;
      *v61 = 0;
      _os_log_impl(&dword_1DC659000, v58, v59, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v60, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1E12A2F50](v62, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    v63 = *(v0 + 920);
    v258 = *(v0 + 880);
    v261 = *(v0 + 928);
    v64 = *(v0 + 872);
    v65 = *(v0 + 848);
    v66 = *(v0 + 840);
    v67 = *(v0 + 312);
    v266 = *(v0 + 320);
    v68 = *(v0 + 304);
    *&v52[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v52[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    *(v0 + 216) = v52;
    *(v0 + 224) = v269;
    v69 = objc_msgSendSuper2((v0 + 216), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v70 = *(v65 + 8);
    v70(v64, v66);
    v70(v258, v66);
    outlined destroy of ReferenceResolutionClientProtocol?(v261, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v71 = swift_getObjectType();
    v274 = v69;
    (*(v67 + 40))(v69, 0xD000000000000028, 0x80000001DCA81100, 1, v71, v67);
    outlined init with copy of ReferenceResolutionClientProtocol(v266 + 232, v0 + 16);
    v72 = *(v0 + 48);
    v270 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v270);
    if (v278)
    {
      v73 = v255;
      v74 = v278;
    }

    else
    {
      v74 = v285;

      v73 = v252;
    }

    v262 = *(v0 + 1040);
    v123 = *(v0 + 984);
    v124 = *(v0 + 976);
    v125 = *(v0 + 456);
    v126 = *(v0 + 400);
    v280 = *(v0 + 392);
    v287 = *(v0 + 408);
    v127 = *(v72 + 24);

    v127(v124, v123, v73, v74, v125, v270, v72);

    outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    (*(v126 + 8))(v287, v280);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v210 = &closure #1 in ConversationService.markNotBusyAsync()partial apply;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v4 = *(v0 + 960);
    v5 = *(v0 + 952);
    v6 = *(v0 + 296);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1040);
    if (v9)
    {
      v11 = *(v0 + 984);
      v12 = *(v0 + 976);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v291 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v291);
      _os_log_impl(&dword_1DC659000, v7, v8, "[ConversationService] rcId %s fell back to server, ending commit.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    else
    {
    }

    v210 = &closure #1 in ConversationService.markNotBusyAsync()partial apply;
LABEL_35:
    v128 = *(v0 + 968);
    v129 = *(v0 + 944);
    v130 = *(v0 + 936);
    v131 = *(v0 + 928);
    v132 = *(v0 + 920);
    v133 = *(v0 + 912);
    v209 = *(v0 + 904);
    v211 = *(v0 + 896);
    v212 = *(v0 + 888);
    v213 = *(v0 + 880);
    v214 = *(v0 + 872);
    v215 = *(v0 + 864);
    v216 = *(v0 + 856);
    v217 = *(v0 + 832);
    v218 = *(v0 + 824);
    v219 = *(v0 + 800);
    v220 = *(v0 + 792);
    v221 = *(v0 + 784);
    v222 = *(v0 + 776);
    v223 = *(v0 + 768);
    v224 = *(v0 + 760);
    v225 = *(v0 + 736);
    v226 = *(v0 + 712);
    v227 = *(v0 + 704);
    v228 = *(v0 + 696);
    v229 = *(v0 + 688);
    v230 = *(v0 + 680);
    v231 = *(v0 + 672);
    v232 = *(v0 + 664);
    v233 = *(v0 + 656);
    v234 = *(v0 + 648);
    v235 = *(v0 + 632);
    v236 = *(v0 + 624);
    v237 = *(v0 + 616);
    v238 = *(v0 + 608);
    v239 = *(v0 + 600);
    v240 = *(v0 + 592);
    v241 = *(v0 + 568);
    v242 = *(v0 + 560);
    v243 = *(v0 + 552);
    v244 = *(v0 + 528);
    v245 = *(v0 + 520);
    v246 = *(v0 + 512);
    v247 = *(v0 + 504);
    v248 = *(v0 + 480);
    v250 = *(v0 + 472);
    v253 = *(v0 + 464);
    v256 = *(v0 + 456);
    v134 = *(v0 + 448);
    v259 = *(v0 + 440);
    v263 = *(v0 + 432);
    v267 = *(v0 + 408);
    v271 = *(v0 + 384);
    v275 = *(v0 + 360);
    v281 = *(v0 + 336);
    v288 = *(v0 + 328);
    v135 = *(v0 + 320);
    v136 = type metadata accessor for TaskPriority();
    (*(*(v136 - 8) + 56))(v134, 1, 1, v136);
    v137 = swift_allocObject();
    v137[2] = 0;
    v137[3] = 0;
    v137[4] = v135;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v134, v210, v137);

    v138 = *(v0 + 8);

    return v138();
  }

  v75 = *(v0 + 960);
  v76 = *(v0 + 296);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 984);
    v80 = *(v0 + 976);
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v291 = v82;
    *v81 = 136315138;
    *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, &v291);
    _os_log_impl(&dword_1DC659000, v77, v78, "[ConversationService] No conversation found for rcId %s during commit. Will redirect to server.", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1E12A2F50](v82, -1, -1);
    MEMORY[0x1E12A2F50](v81, -1, -1);
  }

  v83 = *(v0 + 320);
  v84 = v83[11];
  v85 = v83[12];
  __swift_project_boxed_opaque_existential_1(v83 + 8, v84);
  v86 = *(v85 + 40);
  v286 = (v86 + *v86);
  v87 = v86[1];
  v88 = swift_task_alloc();
  *(v0 + 1160) = v88;
  *v88 = v0;
  v88[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v89 = *(v0 + 984);
  v90 = *(v0 + 976);

  return v286(v90, v89, v84, v85);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = v2[135];
  v6 = v2[134];
  v7 = v2[119];

  if (v0)
  {
    v8 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  else
  {
    v8 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v1 = v0[78];
  v2 = v0[73];
  v3 = v0[72];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[79], v1, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v4 = *(v2 + 48);
  v0[139] = v4;
  v0[140] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[78];
    v6 = &_s14SiriKitRuntime22DecisionEngineResponseVSgMd;
    v7 = &_s14SiriKitRuntime22DecisionEngineResponseVSgMR;
LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(v5, v6, v7);
    v14 = v0[40];
    v15 = v14[11];
    v16 = v14[12];
    __swift_project_boxed_opaque_existential_1(v14 + 8, v15);
    v17 = *(v16 + 40);
    v30 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[144] = v19;
    *v19 = v0;
    v19[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
    v20 = v0[123];
    v21 = v0[122];

    return v30(v21, v20, v15, v16);
  }

  v8 = v0[87];
  v9 = v0[74];
  v10 = v0[72];
  v11 = v0[68];
  v12 = v0[67];
  outlined init with take of DecisionEngineResponse(v0[78], v9, type metadata accessor for DecisionEngineResponse);
  outlined init with copy of ReferenceResolutionClientProtocol?(v9 + *(v10 + 24), v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v11 + 48))(v8, 1, v12) == 1)
  {
    v13 = v0[87];
    outlined destroy of ConversationService.EagerResult(v0[74], type metadata accessor for DecisionEngineResponse);
    v6 = &_s11SiriKitFlow5InputVSgMd;
    v7 = &_s11SiriKitFlow5InputVSgMR;
    v5 = v13;
    goto LABEL_5;
  }

  v23 = v0[133];
  v24 = v0[66];
  (*(v0[68] + 32))(v0[71], v0[87], v0[67]);
  v25 = *(v23 + 16);
  v26 = *(v23 + 24);
  Input.parse.getter();
  v27 = swift_task_alloc();
  v0[141] = v27;
  *v27 = v0;
  v27[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v28 = v0[121];
  v29 = v0[66];

  return specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(v28, v25, v26, v29);
}

{
  v1 = *(*v0 + 1128);
  v2 = *(*v0 + 952);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 496);
  v5 = *(*v0 + 488);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v2, 0);
}

{
  v1 = v0[74];
  if (*(v1 + 8))
  {
    (*(v0[68] + 8))(v0[71], v0[67]);
    outlined destroy of ConversationService.EagerResult(v1, type metadata accessor for DecisionEngineResponse);
    v2 = v0[40];
    v3 = v2[11];
    v4 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
    v5 = *(v4 + 40);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[144] = v7;
    *v7 = v0;
    v7[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
    v8 = v0[123];
    v9 = v0[122];

    return v11(v9, v8, v3, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
  }
}

{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[92];
  v5 = v0[90];
  v6 = v0[71];
  v7 = (v0[121] + v0[124]);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  *v4 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v4[1] = v10;
  v2(v4, *MEMORY[0x1E69CFBC8], v5);
  v11 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[142] = v11;
  v12 = *(MEMORY[0x1E69CFC60] + 4);
  v13 = swift_task_alloc();
  v0[143] = v13;
  *v13 = v0;
  v13[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return MEMORY[0x1EEE39338](v11, v8, v9);
}

{
  v1 = *(*v0 + 1144);
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 952);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v3, 0);
}

{
  v1 = v0[74];
  (*(v0[68] + 8))(v0[71], v0[67]);
  outlined destroy of ConversationService.EagerResult(v1, type metadata accessor for DecisionEngineResponse);
  v2 = v0[40];
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  v5 = *(v4 + 40);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[144] = v7;
  *v7 = v0;
  v7[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v8 = v0[123];
  v9 = v0[122];

  return v11(v9, v8, v3, v4);
}

{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 952);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v2, 0);
}

{
  v220 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 616);
  v4 = *(v0 + 576);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 632), v3, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  if (v2(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 952);
    v6 = *(v0 + 616);

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
LABEL_7:
    v20 = *(v0 + 960);
    v21 = *(v0 + 296);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 984);
      v25 = *(v0 + 976);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v219 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v219);
      _os_log_impl(&dword_1DC659000, v22, v23, "[ConversationService] No conversation found for followup input %s during commit. Will redirect to server.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v28 = *(v0 + 1120);
    v29 = *(v0 + 1112);
    v30 = *(v0 + 600);
    v31 = *(v0 + 576);
    v32 = (*(v0 + 968) + *(v0 + 1088));
    v209 = v32[1];
    v213 = *v32;
    v201 = v32[3];
    v205 = v32[2];
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 632), v30, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    v33 = v29(v30, 1, v31);
    v34 = *(v0 + 600);
    v35 = *(v0 + 480);
    if (v33 == 1)
    {
      v36 = *(v0 + 368);
      v37 = *(v0 + 376);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 600), &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
      (*(v37 + 56))(v35, 1, 1, v36);
    }

    else
    {
      DecisionEngineResponse.topNlParse.getter(*(v0 + 480));
      outlined destroy of ConversationService.EagerResult(v34, type metadata accessor for DecisionEngineResponse);
    }

    v192 = *(v0 + 1040);
    v195 = *(v0 + 1064);
    v38 = *(v0 + 984);
    v39 = *(v0 + 976);
    v198 = *(v0 + 632);
    v40 = *(v0 + 480);
    v41 = *(v0 + 464);
    v42 = *(v0 + 392);
    v43 = *(v0 + 400);
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);
    v46 = *(v0 + 304);
    (*(v43 + 104))(v41, *MEMORY[0x1E69D0780], v42);
    (*(v43 + 56))(v41, 0, 1, v42);
    ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v46, v45, v39, v38, v213, v209, v205, v201, 0, v40, v41);

    outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v198, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    v47 = *(v0 + 968);
    v48 = *(v0 + 944);
    v49 = *(v0 + 936);
    v50 = *(v0 + 928);
    v51 = *(v0 + 920);
    v52 = *(v0 + 912);
    v146 = *(v0 + 904);
    v147 = *(v0 + 896);
    v148 = *(v0 + 888);
    v149 = *(v0 + 880);
    v150 = *(v0 + 872);
    v151 = *(v0 + 864);
    v152 = *(v0 + 856);
    v153 = *(v0 + 832);
    v154 = *(v0 + 824);
    v155 = *(v0 + 800);
    v156 = *(v0 + 792);
    v157 = *(v0 + 784);
    v158 = *(v0 + 776);
    v159 = *(v0 + 768);
    v160 = *(v0 + 760);
    v161 = *(v0 + 736);
    v162 = *(v0 + 712);
    v163 = *(v0 + 704);
    v164 = *(v0 + 696);
    v165 = *(v0 + 688);
    v166 = *(v0 + 680);
    v167 = *(v0 + 672);
    v168 = *(v0 + 664);
    v169 = *(v0 + 656);
    v170 = *(v0 + 648);
    v171 = *(v0 + 632);
    v172 = *(v0 + 624);
    v173 = *(v0 + 616);
    v174 = *(v0 + 608);
    v175 = *(v0 + 600);
    v176 = *(v0 + 592);
    v177 = *(v0 + 568);
    v178 = *(v0 + 560);
    v179 = *(v0 + 552);
    v180 = *(v0 + 528);
    v181 = *(v0 + 520);
    v182 = *(v0 + 512);
    v183 = *(v0 + 504);
    v184 = *(v0 + 480);
    v186 = *(v0 + 472);
    v188 = *(v0 + 464);
    v190 = *(v0 + 456);
    v53 = *(v0 + 448);
    v193 = *(v0 + 440);
    v196 = *(v0 + 432);
    v199 = *(v0 + 408);
    v202 = *(v0 + 384);
    v206 = *(v0 + 360);
    v210 = *(v0 + 336);
    v214 = *(v0 + 328);
    v54 = *(v0 + 320);
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v54;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v53, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v56);

    v57 = *(v0 + 8);

    return v57();
  }

  v7 = *(v0 + 616);
  v8 = *v7;

  outlined destroy of ConversationService.EagerResult(v7, type metadata accessor for DecisionEngineResponse);
  if (!v8)
  {
    v19 = *(v0 + 952);

    goto LABEL_7;
  }

  v9 = *(v0 + 1120);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 608);
  v12 = *(v0 + 576);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 632), v11, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v13 = v10(v11, 1, v12);
  v14 = *(v0 + 1064);
  v15 = *(v0 + 688);
  v16 = *(v0 + 608);
  if (v13 == 1)
  {
    v17 = *(v0 + 544);
    v18 = *(v0 + 536);

    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    (*(v17 + 56))(v15, 1, 1, v18);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v16 + *(*(v0 + 576) + 24), *(v0 + 688), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

    outlined destroy of ConversationService.EagerResult(v16, type metadata accessor for DecisionEngineResponse);
  }

  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 688), *(v0 + 712), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v59 = *(v0 + 1064);
  *(v0 + 1176) = v8;
  v211 = v59;
  *(v0 + 1168) = v59;
  v60 = *(v0 + 672);
  v61 = *(v0 + 544);
  v62 = *(v0 + 536);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 712), v60, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v63 = *(v61 + 48);
  v64 = v63(v60, 1, v62);
  v65 = *(v0 + 672);
  if (v64 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 672), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    v66 = *(v0 + 512);
    v67 = *(v0 + 488);
    v68 = *(v0 + 496);
    (*(*(v0 + 544) + 32))(*(v0 + 560), *(v0 + 672), *(v0 + 536));
    Input.parse.getter();
    if ((*(v68 + 88))(v66, v67) == *MEMORY[0x1E69D0178])
    {
      v69 = *(v0 + 320);
      (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
      result = swift_beginAccess();
      v70 = *(v69 + 272);
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        __break(1u);
        return result;
      }

      v73 = *(v0 + 960);
      v74 = *(v0 + 320);
      *(v69 + 272) = v72;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 320);
      if (v77)
      {
        v79 = swift_slowAlloc();
        *v79 = 134217984;
        *(v79 + 4) = *(v69 + 272);

        _os_log_impl(&dword_1DC659000, v75, v76, "Input given to flow was empty: Incrementing consecutiveEmptyInputs to %ld", v79, 0xCu);
        MEMORY[0x1E12A2F50](v79, -1, -1);
      }

      else
      {
        v84 = *(v0 + 320);
      }

      (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
      goto LABEL_26;
    }

    v80 = *(v0 + 512);
    v81 = *(v0 + 488);
    v82 = *(v0 + 496);
    (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
    (*(v82 + 8))(v80, v81);
  }

  v83 = *(v0 + 320);
  swift_beginAccess();
  *(v83 + 272) = 0;
LABEL_26:
  v85 = *(v0 + 664);
  v86 = *(v0 + 536);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 712), v85, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v87 = v63(v85, 1, v86);
  v88 = *(v0 + 664);
  if (v87 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    v90 = *(v0 + 496);
    v89 = *(v0 + 504);
    v91 = *(v0 + 488);
    (*(*(v0 + 544) + 32))(*(v0 + 552), *(v0 + 664), *(v0 + 536));
    Input.parse.getter();
    v92 = (*(v90 + 88))(v89, v91);
    if (v92 == *MEMORY[0x1E69D0138])
    {
      v215 = *(v0 + 552);
      v93 = *(v0 + 544);
      v94 = *(v0 + 536);
      v95 = *(v0 + 304);
      v96 = *(v0 + 312);
      (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
      ObjectType = swift_getObjectType();
      v98 = type metadata accessor for ExecutionInputInfo();
      v99 = objc_allocWithZone(v98);
      v100 = &v99[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
      *v100 = 0;
      v100[1] = 0;
      v99[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 1;
      *(v0 + 232) = v99;
      *(v0 + 240) = v98;
      v101 = objc_msgSendSuper2((v0 + 232), sel_init);
      (*(v96 + 168))(v101, ObjectType, v96);

      (*(v93 + 8))(v215, v94);
    }

    else if (v92 == *MEMORY[0x1E69D0168])
    {
      v102 = *(v0 + 504);
      v104 = *(v0 + 424);
      v103 = *(v0 + 432);
      v105 = *(v0 + 416);
      v106 = *(v0 + 376);
      v107 = *(v0 + 384);
      v216 = *(v0 + 368);
      v203 = *(v0 + 360);
      v207 = *(v0 + 336);
      (*(*(v0 + 496) + 96))(v102, *(v0 + 488));
      (*(v104 + 32))(v103, v102, v105);
      USOParse.userParse.getter();
      Siri_Nlu_External_UserParse.id.getter();
      (*(v106 + 8))(v107, v216);
      v217 = type metadata accessor for ExecutionInputInfo();
      v108 = objc_allocWithZone(v217);
      static ConversionUtils.convertProtoToUuid(protoUuid:)();
      v109 = type metadata accessor for UUID();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v207, 1, v109);
      v112 = *(v0 + 336);
      if (v111 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 336), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v191 = 0;
        v194 = 0;
      }

      else
      {
        v116 = *(v0 + 336);
        v117 = UUID.uuidString.getter();
        v191 = v118;
        v194 = v117;
        (*(v110 + 8))(v112, v109);
      }

      v119 = *(v0 + 544);
      v204 = *(v0 + 536);
      v208 = *(v0 + 552);
      v120 = *(v0 + 424);
      v197 = *(v0 + 416);
      v200 = *(v0 + 432);
      v121 = *(v0 + 352);
      v189 = *(v0 + 360);
      v185 = *(v0 + 344);
      v122 = *(v0 + 304);
      v123 = *(v0 + 312);
      v187 = swift_getObjectType();
      v124 = &v108[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
      *v124 = v194;
      v124[1] = v191;
      v108[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
      *(v0 + 248) = v108;
      *(v0 + 256) = v217;
      v125 = objc_msgSendSuper2((v0 + 248), sel_init);
      (*(v121 + 8))(v189, v185);
      (*(v123 + 168))(v125, v187, v123);

      (*(v120 + 8))(v200, v197);
      (*(v119 + 8))(v208, v204);
    }

    else
    {
      v114 = *(v0 + 496);
      v113 = *(v0 + 504);
      v115 = *(v0 + 488);
      (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
      (*(v114 + 8))(v113, v115);
    }
  }

  v126 = *(v0 + 712);
  v127 = *(v0 + 656);
  v128 = *(v0 + 536);
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 1184) = static ConversationSELFHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v126, v127, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v129 = v63(v127, 1, v128);
  v130 = *(v0 + 656);
  if (v129 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 656), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v131 = 1;
  }

  else
  {
    v132 = *(v0 + 544);
    v133 = *(v0 + 536);
    v134 = *(v0 + 328);
    Input.identifier.getter();
    (*(v132 + 8))(v130, v133);
    v131 = 0;
  }

  v135 = *(v0 + 968);
  v137 = *(v0 + 320);
  v136 = *(v0 + 328);
  v138 = *(v0 + 296);
  v139 = type metadata accessor for UUID();
  v218 = *(v0 + 304);
  (*(*(v139 - 8) + 56))(v136, v131, 1, v139);
  v140 = swift_allocObject();
  *(v0 + 1192) = v140;
  *(v140 + 16) = v137;
  *(v140 + 24) = v138;
  *(v140 + 32) = v135;
  *(v140 + 40) = v218;
  *(v140 + 56) = v8;
  *(v140 + 64) = 1;
  *(v140 + 72) = v211;
  v141 = *(MEMORY[0x1E69D0038] + 4);
  v212 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

  swift_unknownObjectRetain();
  v142 = swift_task_alloc();
  *(v0 + 1200) = v142;
  *v142 = v0;
  v142[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v143 = *(v0 + 984);
  v144 = *(v0 + 976);
  v145 = *(v0 + 328);

  return v212();
}

{
  v1 = *(*v0 + 1160);
  v2 = *(*v0 + 952);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v2, 0);
}

{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];
  v5 = v0[85];
  v6 = v0[68];
  v7 = v0[67];

  v103 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8);
  v105 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
  v99 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 24);
  v101 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 16);
  (*(*v3 + 360))(v2, v1);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    v8 = v0[59];
    v9 = v0[46];
    v10 = v0[47];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[85], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  else
  {
    v11 = v0[65];
    v13 = v0[61];
    v12 = v0[62];
    v14 = v0[85];
    Input.parse.getter();
    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x1E69D0168])
    {
      v15 = v0[65];
      v16 = v0[59];
      v17 = v0 + 55;
      v18 = v0[55];
      v19 = v0 + 53;
      v20 = v0 + 52;
      v22 = v0[52];
      v21 = v0[53];
      (*(v0[62] + 96))(v15, v0[61]);
      (*(v21 + 32))(v18, v15, v22);
      USOParse.userParse.getter();
      v23 = 0;
    }

    else
    {
      v17 = v0 + 65;
      v19 = v0 + 62;
      v20 = v0 + 61;
      v23 = 1;
    }

    v24 = *v17;
    v25 = *v19;
    v26 = v0[85];
    v27 = v0[68];
    v28 = v0[67];
    v29 = v0[59];
    v31 = v0[46];
    v30 = v0[47];
    (*(v25 + 8))(v24, *v20);
    (*(v30 + 56))(v29, v23, 1, v31);
    (*(v27 + 8))(v26, v28);
  }

  v97 = v0[130];
  v32 = v0[123];
  v33 = v0[122];
  v35 = v0[58];
  v34 = v0[59];
  v36 = v0[49];
  v37 = v0[50];
  v39 = v0[39];
  v38 = v0[40];
  v40 = v0[38];
  (*(v37 + 104))(v35, *MEMORY[0x1E69D0780], v36);
  (*(v37 + 56))(v35, 0, 1, v36);
  ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v40, v39, v33, v32, v105, v103, v101, v99, 0, v34, v35);

  outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v41 = v0[121];
  v42 = v0[118];
  v43 = v0[117];
  v44 = v0[116];
  v45 = v0[115];
  v46 = v0[114];
  v53 = v0[113];
  v54 = v0[112];
  v55 = v0[111];
  v56 = v0[110];
  v57 = v0[109];
  v58 = v0[108];
  v59 = v0[107];
  v60 = v0[104];
  v61 = v0[103];
  v62 = v0[100];
  v63 = v0[99];
  v64 = v0[98];
  v65 = v0[97];
  v66 = v0[96];
  v67 = v0[95];
  v68 = v0[92];
  v69 = v0[89];
  v70 = v0[88];
  v71 = v0[87];
  v72 = v0[86];
  v73 = v0[85];
  v74 = v0[84];
  v75 = v0[83];
  v76 = v0[82];
  v77 = v0[81];
  v78 = v0[79];
  v79 = v0[78];
  v80 = v0[77];
  v81 = v0[76];
  v82 = v0[75];
  v83 = v0[74];
  v84 = v0[71];
  v85 = v0[70];
  v86 = v0[69];
  v87 = v0[66];
  v88 = v0[65];
  v89 = v0[64];
  v90 = v0[63];
  v91 = v0[60];
  v92 = v0[59];
  v93 = v0[58];
  v47 = v0[56];
  v94 = v0[57];
  v95 = v0[55];
  v96 = v0[54];
  v98 = v0[51];
  v100 = v0[48];
  v102 = v0[45];
  v104 = v0[42];
  v106 = v0[41];
  v48 = v0[40];
  v49 = type metadata accessor for TaskPriority();
  (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v48;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v47, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v50);

  v51 = v0[1];

  return v51();
}

{
  v2 = *v1;
  v3 = (*v1)[150];
  v4 = *v1;
  (*v1)[151] = v0;

  v5 = v2[149];
  v6 = v2[148];
  v7 = v2[119];
  outlined destroy of ReferenceResolutionClientProtocol?(v2[41], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  if (v0)
  {
    v8 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  else
  {
    v8 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v1 = v0[147];
  v2 = v0[146];
  v3 = v0[130];
  v4 = v0[119];
  v5 = v0[89];

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v6 = v0[121];
  v7 = v0[118];
  v8 = v0[117];
  v9 = v0[116];
  v10 = v0[115];
  v11 = v0[114];
  v18 = v0[113];
  v19 = v0[112];
  v20 = v0[111];
  v21 = v0[110];
  v22 = v0[109];
  v23 = v0[108];
  v24 = v0[107];
  v25 = v0[104];
  v26 = v0[103];
  v27 = v0[100];
  v28 = v0[99];
  v29 = v0[98];
  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[95];
  v33 = v0[92];
  v34 = v0[89];
  v35 = v0[88];
  v36 = v0[87];
  v37 = v0[86];
  v38 = v0[85];
  v39 = v0[84];
  v40 = v0[83];
  v41 = v0[82];
  v42 = v0[81];
  v43 = v0[79];
  v44 = v0[78];
  v45 = v0[77];
  v46 = v0[76];
  v47 = v0[75];
  v48 = v0[74];
  v49 = v0[71];
  v50 = v0[70];
  v51 = v0[69];
  v52 = v0[66];
  v53 = v0[65];
  v54 = v0[64];
  v55 = v0[63];
  v56 = v0[60];
  v57 = v0[59];
  v58 = v0[58];
  v59 = v0[57];
  v12 = v0[56];
  v60 = v0[55];
  v61 = v0[54];
  v62 = v0[51];
  v63 = v0[48];
  v64 = v0[45];
  v65 = v0[42];
  v66 = v0[41];
  v13 = v0[40];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v15);

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[130];
  v2 = v0[121];
  v3 = v0[119];
  v4 = v0[56];
  v5 = v0[40];

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v7);

  v65 = v0[132];
  v8 = v0[118];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[115];
  v12 = v0[114];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
  v16 = v0[110];
  v17 = v0[109];
  v20 = v0[108];
  v21 = v0[107];
  v22 = v0[104];
  v23 = v0[103];
  v24 = v0[100];
  v25 = v0[99];
  v26 = v0[98];
  v27 = v0[97];
  v28 = v0[96];
  v29 = v0[95];
  v30 = v0[92];
  v31 = v0[89];
  v32 = v0[88];
  v33 = v0[87];
  v34 = v0[86];
  v35 = v0[85];
  v36 = v0[84];
  v37 = v0[83];
  v38 = v0[82];
  v39 = v0[81];
  v40 = v0[79];
  v41 = v0[78];
  v42 = v0[77];
  v43 = v0[76];
  v44 = v0[75];
  v45 = v0[74];
  v46 = v0[71];
  v47 = v0[70];
  v48 = v0[69];
  v49 = v0[66];
  v50 = v0[65];
  v51 = v0[64];
  v52 = v0[63];
  v53 = v0[60];
  v54 = v0[59];
  v55 = v0[58];
  v56 = v0[57];
  v57 = v0[56];
  v58 = v0[55];
  v59 = v0[54];
  v60 = v0[51];
  v61 = v0[48];
  v62 = v0[45];
  v63 = v0[42];
  v64 = v0[41];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[133];
  v2 = v0[130];
  v3 = v0[121];
  v4 = v0[119];
  v5 = v0[56];
  v6 = v0[40];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v8);

  v66 = v0[138];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[116];
  v12 = v0[115];
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[111];
  v17 = v0[110];
  v18 = v0[109];
  v21 = v0[108];
  v22 = v0[107];
  v23 = v0[104];
  v24 = v0[103];
  v25 = v0[100];
  v26 = v0[99];
  v27 = v0[98];
  v28 = v0[97];
  v29 = v0[96];
  v30 = v0[95];
  v31 = v0[92];
  v32 = v0[89];
  v33 = v0[88];
  v34 = v0[87];
  v35 = v0[86];
  v36 = v0[85];
  v37 = v0[84];
  v38 = v0[83];
  v39 = v0[82];
  v40 = v0[81];
  v41 = v0[79];
  v42 = v0[78];
  v43 = v0[77];
  v44 = v0[76];
  v45 = v0[75];
  v46 = v0[74];
  v47 = v0[71];
  v48 = v0[70];
  v49 = v0[69];
  v50 = v0[66];
  v51 = v0[65];
  v52 = v0[64];
  v53 = v0[63];
  v54 = v0[60];
  v55 = v0[59];
  v56 = v0[58];
  v57 = v0[57];
  v58 = v0[56];
  v59 = v0[55];
  v60 = v0[54];
  v61 = v0[51];
  v62 = v0[48];
  v63 = v0[45];
  v64 = v0[42];
  v65 = v0[41];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[147];
  v2 = v0[146];
  v3 = v0[130];
  v4 = v0[121];
  v5 = v0[119];
  v6 = v0[89];
  v7 = v0[56];
  v8 = v0[40];

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v10);

  v68 = v0[151];
  v11 = v0[118];
  v12 = v0[117];
  v13 = v0[116];
  v14 = v0[115];
  v15 = v0[114];
  v16 = v0[113];
  v17 = v0[112];
  v18 = v0[111];
  v19 = v0[110];
  v20 = v0[109];
  v23 = v0[108];
  v24 = v0[107];
  v25 = v0[104];
  v26 = v0[103];
  v27 = v0[100];
  v28 = v0[99];
  v29 = v0[98];
  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[95];
  v33 = v0[92];
  v34 = v0[89];
  v35 = v0[88];
  v36 = v0[87];
  v37 = v0[86];
  v38 = v0[85];
  v39 = v0[84];
  v40 = v0[83];
  v41 = v0[82];
  v42 = v0[81];
  v43 = v0[79];
  v44 = v0[78];
  v45 = v0[77];
  v46 = v0[76];
  v47 = v0[75];
  v48 = v0[74];
  v49 = v0[71];
  v50 = v0[70];
  v51 = v0[69];
  v52 = v0[66];
  v53 = v0[65];
  v54 = v0[64];
  v55 = v0[63];
  v56 = v0[60];
  v57 = v0[59];
  v58 = v0[58];
  v59 = v0[57];
  v60 = v0[56];
  v61 = v0[55];
  v62 = v0[54];
  v63 = v0[51];
  v64 = v0[48];
  v65 = v0[45];
  v66 = v0[42];
  v67 = v0[41];

  v21 = v0[1];

  return v21();
}

void closure #1 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.executor);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v6, v7, "UIRevealRecognizedSpeech error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);

      return;
    }

    v17 = a2;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v15, "UIRevealRecognizedSpeech handled", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v17 = oslog;
  }
}

uint64_t ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v106 = a8;
  v105 = a7;
  v121 = a3;
  v116 = a1;
  v117 = a2;
  v15 = a11;
  v108 = a10;
  v16 = type metadata accessor for RequestSummary.ExecutionSource();
  v114 = *(v16 - 8);
  v115 = v16;
  v17 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v98[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v112 = &v98[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v110 = &v98[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v98[-v25];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v26 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v98[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v98[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v101 = &v98[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v98[-v35];
  v37 = v11[32];
  v38 = v11[33];
  v104 = v11;
  __swift_project_boxed_opaque_existential_1(v11 + 29, v37);
  v39 = *(v38 + 8);
  LODWORD(v109) = a9;
  v40 = v108;
  v120 = a5;
  v41 = v39(a9, v108, a11, a5, a6, v37, v38);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = __swift_project_value_buffer(v42, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v40, v36, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a11, v30, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

  v108 = v43;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = os_log_type_enabled(v44, v45);
  v47 = a6;
  v118 = a11;
  v119 = a4;
  LODWORD(v107) = v41;
  if (!v46)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v50 = v109;
    goto LABEL_11;
  }

  v99 = v45;
  v100 = v30;
  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v122[0] = v49;
  *v48 = 67110402;
  *(v48 + 4) = v41 & 1;
  *(v48 + 8) = 2080;
  *(v48 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, a6, v122);
  *(v48 + 18) = 2080;
  *(v48 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, a4, v122);
  *(v48 + 28) = 1024;
  v50 = v109;
  *(v48 + 30) = v109 & 1;
  *(v48 + 34) = 1024;
  v51 = v101;
  outlined init with copy of ReferenceResolutionClientProtocol?(v36, v101, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v52 = type metadata accessor for Siri_Nlu_External_UserParse();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
LABEL_9:
    v55 = 0;
    goto LABEL_10;
  }

  v54 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
  (*(v53 + 8))(v51, v52);
  if ((v54 & 1) == 0)
  {
    goto LABEL_9;
  }

  v55 = 1;
LABEL_10:
  v47 = a6;
  outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v48 + 36) = v55;
  *(v48 + 40) = 2080;
  v56 = v100;
  outlined init with copy of ReferenceResolutionClientProtocol?(v100, v102, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v57 = String.init<A>(describing:)();
  v59 = v58;
  outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v122);

  *(v48 + 42) = v60;
  _os_log_impl(&dword_1DC659000, v44, v99, "[ConversationService] shouldDisableServerFallbackWithABExperiment = %{BOOL}d) for executionRequestId: %s, rcId: %s, isDomainDirected: %{BOOL}d, nlExceptionParse: %{BOOL}d, serverFallbackReason: %s", v48, 0x32u);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v49, -1, -1);
  MEMORY[0x1E12A2F50](v48, -1, -1);

  v15 = v118;
  a4 = v119;
LABEL_11:
  if (v107)
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 67109120;
      *(v63 + 4) = v50 & 1;
      _os_log_impl(&dword_1DC659000, v61, v62, "[ConversationService] ServerFallback needed with domainDirected=%{BOOL}d but shouldDisableServerFallback returns true; initiating a fatal response and returning an error instead of performing fallback.", v63, 8u);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    v64 = 0xD00000000000002CLL;
    if ((v50 & 1) == 0)
    {
      v64 = 0xD000000000000028;
    }

    v107 = v64;
    if (v50)
    {
      v65 = " execution.";
    }

    else
    {
      v65 = "before RC was received?";
    }

    v109 = v65;
    v66 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v67 = v111;
    (*(*(v66 - 8) + 56))(v111, 1, 1, v66);
    v69 = v114;
    v68 = v115;
    v70 = v112;
    (*(v114 + 104))(v112, *MEMORY[0x1E69D0678], v115);
    v71 = *(v69 + 16);
    v72 = v113;
    v71(v113, v70, v68);
    v73 = v110;
    outlined init with copy of ReferenceResolutionClientProtocol?(v67, v110, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v74 = type metadata accessor for ExecutionOutput();
    v75 = objc_allocWithZone(v74);
    v76 = &v75[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v76 = v120;
    *(v76 + 1) = v47;
    v77 = &v75[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v77 = 0;
    *(v77 + 1) = 0;
    v78 = &v75[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v78 = 0;
    *(v78 + 1) = 0;
    v79 = &v75[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v79 = 0;
    *(v79 + 1) = 0;
    v80 = &v75[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v80 = 0;
    *(v80 + 1) = 0;
    v71(&v75[OBJC_IVAR___SKRExecutionOutput_executionSource], v72, v68);
    outlined init with copy of ReferenceResolutionClientProtocol?(v73, &v75[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v103 = v47;

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v122[0] = v85;
      *v83 = 136315394;
      *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v122);
      *(v83 + 12) = 2112;
      *(v83 + 14) = 0;
      *v84 = 0;
      _os_log_impl(&dword_1DC659000, v81, v82, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v83, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v84, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1E12A2F50](v85, -1, -1);
      MEMORY[0x1E12A2F50](v83, -1, -1);
    }

    v86 = v118;
    v87 = v105;
    *&v75[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v75[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v125.receiver = v75;
    v125.super_class = v74;
    v88 = objc_msgSendSuper2(&v125, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v89 = *(v114 + 8);
    v90 = v115;
    v89(v113, v115);
    v89(v112, v90);
    outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    ObjectType = swift_getObjectType();
    (*(v117 + 40))(v88, v107, v109 | 0x8000000000000000, 1, ObjectType);

    outlined init with copy of ReferenceResolutionClientProtocol((v104 + 29), v122);
    v92 = v123;
    v93 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    v94 = v106;
    if (!v106)
    {
      v94 = v103;

      v87 = v120;
    }

    v95 = *(v93 + 24);

    v95(v121, v119, v87, v94, v86, v92, v93);

    return __swift_destroy_boxed_opaque_existential_1Tm(v122);
  }

  else
  {
    v97 = swift_getObjectType();
    return (*(v117 + 48))(v121, a4, v15, v97);
  }
}

uint64_t closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v10;
  *(v8 + 128) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
}

uint64_t closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  v5 = *(v2 + 16);
  v0[9] = v5;
  v6 = *(v2 + 24);
  v0[10] = v6;
  v7 = *(v4 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return v11(v5, v6, v3, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v3;
  v4[1] = closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[4];

  return specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)(v7, v6, v5);
}

{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = ConversationUserInput.asSpeechData.getter();
  *(v0 + 104) = v3;
  v4 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v6 = *(v0 + 128);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(v8, v6, v3, v2 + v4, v9, v7, v1);
}

{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1();
}

uint64_t ConversationService.bridge(didReceiveClearContext:from:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized ConversationService.bridge(didReceiveClearContext:from:)();
}

uint64_t ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return (specialized ConversationService.bridge(didReceiveCancelRequest:from:))(a1);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[27] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v6, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 104);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient);
    v4 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  v46 = v0 + 7;
  v14 = (v8 + 64) >> 6;
  v47 = v7;
  v48 = v2;
  v49 = v14;
  v51 = v0;
  while (v2 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v0[21] = v23, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v22 = v0[20], v19 = v9, v20 = v10, !v22))
    {
LABEL_28:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
      v39 = static MessageBusActor.shared;
      v0[28] = static MessageBusActor.shared;
      v41 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v40, type metadata accessor for MessageBusActor);
      v42 = *(MEMORY[0x1E69E8578] + 4);

      v43 = swift_task_alloc();
      v0[29] = v43;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd, &_sScGyytGMR);
      *v43 = v0;
      v43[1] = closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:);
      v44 = v0[22];
      v4 = v39;
      v5 = v41;

      return MEMORY[0x1EEE6D898](v4, v5, v6);
    }

LABEL_21:
    v50 = v20;
    v25 = v0[25];
    v24 = v0[26];
    v26 = v51[24];
    v27 = v22;
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v24, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v31 = v30 + 2;
    v30[3] = 0;
    v30[4] = v27;
    v30[5] = v26;
    outlined init with copy of ReferenceResolutionClientProtocol?(v24, v25, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v25) = (*(v29 + 48))(v25, 1, v28);

    v0 = v51;

    v32 = v51[25];
    if (v25 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v51[25], &_sScPSgMd, &_sScPSgMR);
      if (*v31)
      {
        goto LABEL_23;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v29 + 8))(v32, v28);
      if (*v31)
      {
LABEL_23:
        v33 = v30[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
        goto LABEL_26;
      }
    }

    v34 = 0;
    v36 = 0;
LABEL_26:
    v37 = *v51[22];
    v38 = swift_allocObject();
    *(v38 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:);
    *(v38 + 24) = v30;

    if (v36 | v34)
    {
      v15 = v46;
      *v46 = 0;
      v46[1] = 0;
      v51[9] = v34;
      v51[10] = v36;
    }

    else
    {
      v15 = 0;
    }

    v7 = v47;
    v2 = v48;
    v16 = v51[26];
    v51[17] = 1;
    v51[18] = v15;
    v51[19] = v37;
    swift_task_create();

    v4 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sScPSgMd, &_sScPSgMR);
    v9 = v19;
    v10 = v50;
    v14 = v49;
  }

  v17 = v9;
  v18 = v10;
  v19 = v9;
  if (v10)
  {
LABEL_17:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v2 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v22)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      goto LABEL_28;
    }

    v18 = *(v7 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D898](v4, v5, v6);
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v3, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), 0, 0);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 32);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v1, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)();
  v4 = v2[19];
  v5 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v4);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = v1;
  v7 = *(v5 + 16);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return (v12)(v0 + 7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.cancel(_:), v6, v10, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  v6 = *(v2 + 16);
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

uint64_t ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return (specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:))(a1);
}

uint64_t ConversationService.drainAsyncWork()()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 48) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.drainAsyncWork(), v2, 0);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.drainAsyncWork(), v3, 0);
}

{
  v1 = *(v0[5] + 216);
  v0[9] = v1;
  v2 = *(*v1 + 216);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = ConversationService.drainAsyncWork();

  return v6();
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.drainAsyncWork(), v3, 0);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ConversationService.drainAsyncWork()(uint64_t a1, uint64_t a2)
{
  v2[7] = static MessageBusActor.shared;
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor);
  v3 = *(MEMORY[0x1E69E87D8] + 4);

  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = ConversationService.drainAsyncWork();
  v5 = v2[5];

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t closure #1 in ConversationService.drainAsyncWork()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.drainAsyncWork(), v5, 0);
}

uint64_t closure #1 in ConversationService.drainAsyncWork()()
{
  v1 = v0[26];
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 104);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v46 = v5;
  v47 = v2;
  v45 = v12;
  while (v2 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (v0[24] = v20, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v19 = v0[23], v17 = v7, v18 = v8, !v19))
    {
LABEL_29:
      v35 = v0[26];
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
      swift_beginAccess();
      v36 = *(v35 + 280);
      if (v36)
      {
        v37 = v0[27];
        v38 = v0[25];
        v39 = type metadata accessor for TaskPriority();
        (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = 0;
        v40[4] = v36;

        _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v37, &async function pointer to partial apply for closure #2 in closure #1 in ConversationService.drainAsyncWork(), v40);
        outlined destroy of ReferenceResolutionClientProtocol?(v37, &_sScPSgMd, &_sScPSgMR);
      }

      v42 = v0[28];
      v41 = v0[29];
      v43 = v0[27];

      v44 = v0[1];

      return v44();
    }

LABEL_21:
    v49 = v18;
    v22 = v0[28];
    v21 = v0[29];
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v19;
    v48 = v25;
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, v22, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v22) = (*(v24 + 48))(v22, 1, v23);

    v27 = v0[28];
    if (v22 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[28], &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v27, v23);
    }

    if (*v26)
    {
      v28 = v48[3];
      v29 = *v26;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = *v0[25];
    v34 = swift_allocObject();
    *(v34 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.drainAsyncWork();
    *(v34 + 24) = v48;

    if (v32 | v30)
    {
      v13 = v0 + 7;
      v0[7] = 0;
      v0[8] = 0;
      v0[9] = v30;
      v0[10] = v32;
    }

    else
    {
      v13 = 0;
    }

    v14 = v0[29];
    v0[20] = 1;
    v0[21] = v13;
    v0[22] = v33;
    swift_task_create();

    result = outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScPSgMd, &_sScPSgMR);
    v7 = v17;
    v8 = v49;
    v5 = v46;
    v2 = v47;
    v12 = v45;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (v8)
  {
LABEL_17:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ConversationService.drainAsyncWork()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 32, &async function pointer to closure #1 in RemoteConversationClient.drainAsyncWork(), 0, v8, v3, v4);
}

uint64_t closure #2 in closure #1 in ConversationService.drainAsyncWork()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = closure #2 in closure #1 in ConversationService.drainAsyncWork();
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 32, &async function pointer to closure #1 in RemoteConversationClient.drainAsyncWork(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {
    v6 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t ConversationService.ActiveTurn.__allocating_init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  v19 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v19;
}

uint64_t ConversationService.ActiveTurn.bridge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge);
  v2 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge + 8);
  return swift_unknownObjectRetain();
}

uint64_t ConversationService.ActiveTurn.conversationLoggingId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_conversationLoggingId;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t ConversationService.ActiveTurn.registerEagerTask(forInput:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks;
  swift_beginAccess();

  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v4, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + v6) = v10;
  return swift_endAccess();
}

uint64_t ConversationService.ActiveTurn.getEagerTask(conversationUserInputId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void ConversationService.ActiveTurn.registerNeedsASRReveal(rcId:recognition:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = a3;

    specialized Dictionary.subscript.setter(a3, a1, a2);
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v8, "[ConversationService] nil SASRecognition found, cannot reveal ASR", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void *ConversationService.ActiveTurn.getNeedsASRReveal(rcId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_needsASRReveal;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ConversationService.ActiveTurn.registerInput(rcId:input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Input();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a3, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v9, a1, a2);
  return swift_endAccess();
}

uint64_t ConversationService.ActiveTurn.registerNlResponseCode(rcId:responseCode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a3, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v9, a1, a2);
  return swift_endAccess();
}

uint64_t ConversationService.ActiveTurn.getInput(rcId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (*(v11 + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v13)
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = a4(0);
      v17 = *(v16 - 8);
      (*(v17 + 16))(a5, v15 + *(v17 + 72) * v14, v16);

      return (*(v17 + 56))(a5, 0, 1, v16);
    }
  }

  v19 = a4(0);
  return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
}

void *ConversationService.ExecutionTaskContext.init(forceTimeout:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v2;
  v1[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = a1;
  return v1;
}

void *ConversationService.ExecutionTaskContext.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ConversationService.ExecutionTaskContext.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t ConversationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v2 = *(v0 + 104);

  outlined consume of ConversationService.State(*(v0 + 112), *(v0 + 120));
  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);

  v9 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  v10 = *(v0 + 280);

  v11 = *(v0 + 296);

  v12 = *(v0 + 320);
  v13 = *(v0 + 328);
  outlined consume of ConversationServiceSerialFacade?(*(v0 + 312));
  return v0;
}

uint64_t ConversationService.__deallocating_deinit()
{
  ConversationService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = *(v16 + 112) == v10 && *(v16 + 120) == v11;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v1;
  v22 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  specialized _NativeSet._delete(at:)(v14);
  result = v21;
  *v1 = v22;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = __CocoaSet.count.getter();
  v7 = swift_unknownObjectRetain();
  v8 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14SiriKitRuntime24RemoteConversationClientC_Tt1g5(v7, v6);
  v21 = v8;
  v9 = *(v8 + 40);
  Hasher.init(_seed:)();
  v10 = *(a2 + 112);
  v11 = *(a2 + 120);

  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if ((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v8 + 48) + 8 * v14);
      v17 = *(v16 + 112) == v10 && *(v16 + 120) == v11;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v18 = *(*(v8 + 48) + 8 * v14);
  specialized _NativeSet._delete(at:)(v14);
  v19 = v10 == *(v18 + 112) && v11 == *(v18 + 120);
  if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v3 = v21;
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v104 = a7;
  v105 = a1;
  v100 = a6;
  v101 = a4;
  v102 = a5;
  LODWORD(v93) = a3;
  v106 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v91 - v14;
  v15 = type metadata accessor for DispatchTimeInterval();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = a10;
  v114[4] = a11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v114);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_0, a8, a10);
  *(a9 + 104) = MEMORY[0x1E69E7CD0];
  *(a9 + 112) = 1;
  *(a9 + 120) = 0;
  *(a9 + 136) = 0;
  v24 = type metadata accessor for CorrectionsPlatformClient();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v96 = v24;
  swift_allocObject();
  *(a9 + 184) = CorrectionsPlatformClient.init()();
  type metadata accessor for TaskService();
  v27 = swift_allocObject();
  v27[2] = closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:);
  v27[3] = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v27[4] = MEMORY[0x1E69E7CC0];
  *(a9 + 192) = v27;
  v95 = type metadata accessor for ConcurrentTaskPool();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v29 + 24) = v30;
  *(a9 + 200) = v29;
  type metadata accessor for ConversationService.ExecutionTaskContext();
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = v28;
  v31[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = 60000000000;
  *(a9 + 208) = v31;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v18, static Logger.executor);
  v33 = *(v19 + 16);
  v92 = v32;
  v33(v22);
  v34 = type metadata accessor for AsyncSerialQueue();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v37[2] = v28;
  v37[3] = 0;
  v37[4] = 0;
  v37[5] = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v37[6] = v38;
  v37[7] = 0xD000000000000021;
  v37[8] = 0x80000001DCA80DD0;
  (*(v19 + 32))(v37 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v22, v18);
  *(a9 + 216) = v37;
  v94 = type metadata accessor for ExperimentationAnalyticsManager();
  *(a9 + 224) = [objc_allocWithZone(v94) init];
  *(a9 + 272) = 0;
  *(a9 + 280) = 0;
  *(a9 + 320) = 0;
  *(a9 + 328) = 0;
  *(a9 + 312) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v106, &v111, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v112)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v111, v113);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v111, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v39 = type metadata accessor for ReferenceResolutionClient();
    v40 = ReferenceResolutionClient.__allocating_init()();
    v113[3] = v39;
    v113[4] = MEMORY[0x1E69D01B0];
    v113[0] = v40;
  }

  v41 = v105;
  outlined init with copy of ReferenceResolutionClientProtocol(v113, a9 + 144);
  if (v93)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v42 = static StubCamBridge.shared;
    v43 = type metadata accessor for StubCamBridge();
    v44 = &protocol witness table for StubCamBridge;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v42 = static CamBridgeImpl.shared;
    v43 = type metadata accessor for CamBridgeImpl();
    v44 = &protocol witness table for CamBridgeImpl;
  }

  *(a9 + 88) = v43;
  *(a9 + 96) = v44;
  *(a9 + 64) = v42;

  *(a9 + 56) = v41;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1DC659000, v45, v46, "[ConversationService] Ambiguity handling Feature Flag is on. Using DecisionEngine", v47, 2u);
    MEMORY[0x1E12A2F50](v47, -1, -1);
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v113, &v111);
  v48 = *(a9 + 184);
  v49 = type metadata accessor for LinkMetadataProvider();
  v50 = swift_allocObject();
  v51 = objc_allocWithZone(MEMORY[0x1E69ACF60]);

  v52 = v48;

  *(v50 + 16) = [v51 init];
  type metadata accessor for LinkExpansionContextBuilder();
  v53 = swift_allocObject();
  v53[6] = v49;
  v53[7] = &protocol witness table for LinkMetadataProvider;
  v53[11] = &type metadata for LinkViewActionProvider;
  v53[12] = &protocol witness table for LinkViewActionProvider;
  v53[2] = 0;
  v53[3] = v50;
  v53[13] = 0;
  v54 = *(a9 + 200);
  outlined init with copy of ReferenceResolutionClientProtocol(a9 + 64, v110);
  v55 = one-time initialization token for instance;

  if (v55 != -1)
  {
    swift_once();
  }

  v91 = static DecisionEngineCurareDonator.instance;
  v93 = type metadata accessor for DecisionEngine();
  v56 = swift_allocObject();
  v109[3] = v96;
  v109[4] = &protocol witness table for CorrectionsPlatformClient;
  v109[0] = v52;
  v92 = v52;
  v108[3] = v95;
  v108[4] = &protocol witness table for ConcurrentTaskPool;
  v108[0] = v54;
  type metadata accessor for ServerFallbackDisablingUtils();
  *(v56 + 176) = 0;
  *(v56 + 184) = 0;
  v57 = swift_allocObject();
  v58 = objc_allocWithZone(v94);
  swift_retain_n();
  swift_retain_n();

  v57[2] = [v58 init];
  v57[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v57[4] = 0;
  *(v56 + 192) = v57;
  *(v56 + 200) = 0u;
  *(v56 + 216) = 0u;
  *(v56 + 232) = 0;
  v59 = v105;
  *(v56 + 24) = v105;
  outlined init with copy of ReferenceResolutionClientProtocol(&v111, v56 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v108, v107);
  type metadata accessor for ConversationHelper();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  outlined init with take of ReferenceResolutionClientProtocol(v107, v60 + 24);
  *(v56 + 32) = v60;
  v61 = swift_allocObject();
  v62 = objc_allocWithZone(MEMORY[0x1E69ACF60]);
  swift_retain_n();
  *(v61 + 16) = [v62 init];
  v63 = type metadata accessor for AppShortcutStateProvider();
  v64 = swift_allocObject();
  v96 = v54;
  v65 = v64;
  type metadata accessor for AppShortcutExpansionContextBuilder();
  v66 = swift_allocObject();
  v66[9] = v49;
  v66[10] = &protocol witness table for LinkMetadataProvider;
  v66[6] = v61;
  v66[14] = v63;
  v66[15] = &protocol witness table for AppShortcutStateProvider;
  v66[11] = v65;
  type metadata accessor for ConditionalIntentMetadataStore();
  v66[4] = 0;
  v66[5] = 0;
  v66[3] = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = MEMORY[0x1E69E7CC8];
  v66[2] = v67;
  type metadata accessor for ActionGenerator();
  v68 = swift_allocObject();
  v68[3] = v66;
  v68[4] = v59;
  v68[2] = v53;
  *(v56 + 16) = v68;
  outlined init with copy of ReferenceResolutionClientProtocol(v109, v107);
  type metadata accessor for CorrectionsService();
  v69 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(v107, v69 + 16);
  *(v69 + 56) = v59;
  *(v56 + 40) = v69;
  *(v56 + 88) = v91;
  v70 = type metadata accessor for AppShortcutProvider();
  v71 = MEMORY[0x1E69CFFA8];
  *(v56 + 120) = v70;
  *(v56 + 128) = v71;
  __swift_allocate_boxed_opaque_existential_0((v56 + 96));
  AppShortcutProvider.init()();

  __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  outlined init with take of ReferenceResolutionClientProtocol(v110, v56 + 136);
  *(a9 + 40) = v93;
  *(a9 + 48) = &protocol witness table for DecisionEngine;
  *(a9 + 16) = v56;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v72 = static OS_dispatch_queue.main.getter();
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v73 = v99;
  v74 = __swift_project_value_buffer(v99, static JetsamHelper.defaultTimeout);
  v76 = v97;
  v75 = v98;
  (*(v98 + 16))(v97, v74, v73);
  v77 = type metadata accessor for JetsamHelper();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  v80 = swift_allocObject();
  v81 = (v80 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v81 = 0;
  v81[1] = 0;
  v80[2] = 0xD00000000000002CLL;
  v80[3] = 0x80000001DCA80E00;
  v80[4] = dispatch_semaphore_create(1);
  v80[5] = v72;
  (*(v75 + 32))(v80 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v76, v73);
  *(a9 + 128) = v80;
  v82 = v104;
  *(a9 + 288) = v100;
  *(a9 + 296) = v82;
  *(a9 + 304) = v101 & 1;
  outlined init with copy of ReferenceResolutionClientProtocol(v114, a9 + 232);
  v83 = v103;
  if (v102)
  {
    v84 = type metadata accessor for TaskPriority();
    (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
    v85 = one-time initialization token for shared;

    if (v85 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v86 = static MessageBusActor.shared;
    v88 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v87, type metadata accessor for MessageBusActor);
    v89 = swift_allocObject();
    v89[2] = v86;
    v89[3] = v88;
    v89[4] = a9;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v83, &closure #1 in ConversationService.warmup()partial apply, v89);

    outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  return a9;
}

uint64_t outlined consume of ConversationServiceSerialFacade?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of ConversationServiceSerialFacade?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationService.warmup()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.warmup()(a1, v4, v5, v6);
}

uint64_t specialized ConversationService.State.assertTurnStarted(function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xC0) != 0x80)
  {
    v11[6] = v5;
    v11[7] = v6;
    _StringGuts.grow(_:)(35);

    strcpy(v11, "Cannot call ");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    v7 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v7);

    MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA80F50);
    v8 = v11[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v9 = v11[0];
    v9[1] = v8;
    swift_willThrow();
  }

  return a4;
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1)
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

  return closure #1 in ConversationService.bridge(didReceiveInput:from:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1)
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

  return closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t specialized static ConversationService.skipEmptyAsr(_:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 152) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized static ConversationService.skipEmptyAsr(_:), v2, 0);
}

{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](specialized static ConversationService.skipEmptyAsr(_:), v3, 0);
}

uint64_t specialized static ConversationService.skipEmptyAsr(_:)()
{
  v1 = *(v0 + 144);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69D0020] + 4);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = specialized static ConversationService.skipEmptyAsr(_:);

  return MEMORY[0x1EEE39A78](v2, v3);
}

void specialized static ConversationService.skipEmptyAsr(_:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  if (!(v1 >> 62))
  {
    v53 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_26:
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

LABEL_25:
  v53 = v1 & 0xFFFFFFFFFFFFFF8;
  *(v0 + 168);
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = *(v0 + 168) + 32;
  v54 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1E12A1FE0](v7, *(v0 + 168));
      }

      else
      {
        if (v7 >= *(v53 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v6 + 8 * v7);
      }

      v1 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v9 = RecentDialog.addViews.getter();
      v10 = [v9 views];

      if (!v10)
      {
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      v11 = RecentDialog.addViews.getter();
      v12 = [v11 views];

      if (v12)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = specialized _arrayForceCast<A, B>(_:)(v14);

LABEL_16:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v54;
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
    }

    v17 = v15[2];
    v16 = v15[3];
    v1 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v1;
    v54 = v15;
    v15[v17 + 4] = v13;
  }

  while (v4 != v3);
LABEL_27:
  v18 = *(v0 + 168);

  v19 = v54;
  v20 = v54[2];
  v21 = MEMORY[0x1E69E7CC0];
  if (!v20)
  {
LABEL_45:

    v55 = MEMORY[0x1E69E7CC0];
    v34 = *(v21 + 2);
    if (v34)
    {
      v35 = (v21 + 32);
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with copy of Any(v35, v0 + 16);
        outlined init with take of Any((v0 + 16), (v0 + 48));
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIAssistantUtteranceView, 0x1E69C7B08);
        if ((swift_dynamicCast() & 1) != 0 && *(v0 + 136))
        {
          MEMORY[0x1E12A1680]();
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v37 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v36 = v55;
        }

        v35 += 32;
        --v34;
      }

      while (v34);

      if (!(v36 >> 62))
      {
LABEL_54:
        v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
          goto LABEL_55;
        }

        goto LABEL_69;
      }
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_54;
      }
    }

    v38 = __CocoaSet.count.getter();
    if (v38)
    {
LABEL_55:
      v39 = 0;
      v40 = &selRef_setMitigationSource_;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1E12A1FE0](v39, v36);
        }

        else
        {
          if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v41 = *(v36 + 8 * v39 + 32);
        }

        v42 = v41;
        v43 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_76;
        }

        v44 = [v41 v40[111]];
        if (v44)
        {

          v45 = v40;
          v46 = [v42 v40[111]];
          if (!v46)
          {
            goto LABEL_80;
          }

          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          *(v0 + 104) = v48;
          *(v0 + 112) = v50;
          *(v0 + 120) = 0xD000000000000019;
          *(v0 + 128) = 0x80000001DCA816C0;
          lazy protocol witness table accessor for type String and conformance String();
          lazy protocol witness table accessor for type String and conformance String();
          LOBYTE(v47) = BidirectionalCollection<>.starts<A>(with:)();

          v40 = v45;
          if (v47)
          {
            v51 = 1;
            goto LABEL_70;
          }
        }

        else
        {
        }

        ++v39;
      }

      while (v43 != v38);
    }

LABEL_69:
    v51 = 0;
LABEL_70:

    v52 = *(v0 + 8);

    v52(v51);
    return;
  }

  v22 = 0;
  v23 = v54 + 4;
  while (v22 < v19[2])
  {
    v24 = v23[v22];
    v25 = *(v24 + 16);
    v26 = *(v21 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_74;
    }

    v28 = v23[v22];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v27 <= *(v21 + 3) >> 1)
    {
      if (*(v24 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v26 <= v27)
      {
        v30 = v26 + v25;
      }

      else
      {
        v30 = v26;
      }

      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v21);
      if (*(v24 + 16))
      {
LABEL_41:
        if ((*(v21 + 3) >> 1) - *(v21 + 2) < v25)
        {
          goto LABEL_78;
        }

        swift_arrayInitWithCopy();

        if (v25)
        {
          v31 = *(v21 + 2);
          v32 = __OFADD__(v31, v25);
          v33 = v31 + v25;
          if (v32)
          {
            goto LABEL_79;
          }

          *(v21 + 2) = v33;
        }

        goto LABEL_30;
      }
    }

    if (v25)
    {
      goto LABEL_75;
    }

LABEL_30:
    ++v22;
    v19 = v54;
    if (v20 == v22)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t partial apply for closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t specialized ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[10] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveCancelRequest:from:), v3, 0);
}

uint64_t specialized ConversationService.bridge(didReceiveCancelRequest:from:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = *(v1 + 216);
  v0[12] = v3;
  v4 = *(*v3 + 216);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = specialized ConversationService.bridge(didReceiveCancelRequest:from:);

  return v8();
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveCancelRequest:from:), v3, 0);
}

{
  v1 = v0[4].i64[1];
  swift_beginAccess();
  v3 = *(v1 + 120);
  if ((v3 & 0xC0) != 0x80)
  {
    goto LABEL_25;
  }

  v4 = *(v1 + 112);
  v5 = v0[4].i64[0];
  v6 = *&v4[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
  v7 = *&v4[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8];
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (v6 == v8 && v7 == v9)
  {
    goto LABEL_25;
  }

  v11 = *&v4[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
  v12 = *&v4[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8];
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_25;
  }

  v15 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((v9 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v16 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v17 = v0[5].i64[1];
    if (v16)
    {
      v18 = v0[5].i64[0];

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DC659000, v19, v20, "Received CancelExecutionTurn for turn that is not currently executing. Will ignore.", v21, 2u);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }

      outlined consume of ConversationService.State(v4, v3);
      v22 = v0->i64[1];

      return v22();
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_24;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Got a CancelExecutionTurn, but its executionRequestId is empty. Will proceed with cancellation.";
    goto LABEL_23;
  }

  v24 = v0[5].i64[1];

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Got a CancelExecutionTurn, but the current turn's executionRequestId is empty. Will proceed with cancellation.";
LABEL_23:
    _os_log_impl(&dword_1DC659000, v25, v26, v28, v27, 2u);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

LABEL_24:

  outlined consume of ConversationService.State(v4, v3);
LABEL_25:
  v29 = static MessageBusActor.shared;
  v0[7].i64[0] = static MessageBusActor.shared;
  v30 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v2, type metadata accessor for MessageBusActor);
  v31 = swift_task_alloc();
  v0[7].i64[1] = v31;
  v31[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v32 = *(MEMORY[0x1E69E87D8] + 4);

  v33 = swift_task_alloc();
  v0[8].i64[0] = v33;
  *v33 = v0;
  v33[1] = specialized ConversationService.bridge(didReceiveCancelRequest:from:);
  v34 = MEMORY[0x1E69E7CA8] + 8;
  v35 = MEMORY[0x1E69E7CA8] + 8;
  v36 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v33, v34, v35, v29, v30, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v31, v36);
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 80);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveCancelRequest:from:), v4, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 64), v3);
  (*(v4 + 72))(v3, v4);
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  if (v6 >> 6 == 1)
  {
    v7 = *(v2 + 120);
  }

  else
  {
    v7 = 0;
  }

  if (v6 >> 6)
  {
    LOBYTE(v8) = v7;
  }

  else
  {
    v8 = *(v2 + 112);
  }

  v9 = v0[9];
  *(v9 + 112) = v8 & 1;
  *(v9 + 120) = 0;
  outlined consume of ConversationService.State(v5, v6);
  v10 = v0[1];

  return v10();
}

uint64_t specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v2[20] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:), v6, 0);
}

uint64_t specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)()
{
  v46 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = off_1E8646000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 0x3E6C696E3CLL;
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45 = v10;
    *v9 = 136315394;
    v11 = [v8 bundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v16 = *(v0 + 120);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v45);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v6 = off_1E8646000;
    v18 = [v16 refId];
    if (v18)
    {
      v19 = v18;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v6 = off_1E8646000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v21, &v45);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v4, v5, "SiriKitPluginSignal received with bundleIdentifier=%s and refId=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v23 = [*(v0 + 120) bundleIdentifier];
  if (v23)
  {
    v24 = *(v0 + 120);
    v25 = v23;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v0 + 168) = v28;
    v29 = [v24 v6[426]];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v0 + 176) = v31;
      *(v0 + 184) = v33;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 152);
      v35 = *(v0 + 128);
      v36 = static Log.executor;
      *(v0 + 192) = static Log.executor;
      v37 = v36;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v38 = *(v35 + 56);
      v39 = swift_task_alloc();
      *(v0 + 200) = v39;
      *v39 = v0;
      v39[1] = specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:);

      return ConversationHandlerLocator.handler(id:)(v0 + 56, v26, v28);
    }

    v42 = *(v0 + 160);
  }

  else
  {
    v41 = *(v0 + 160);
  }

  v43 = *(v0 + 152);

  v44 = *(v0 + 8);

  return v44();
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:), v3, 0);
}

{
  if (*(v0 + 80))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = *(v2 + 24);
    v17 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v5[1] = specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);

    return v17(v7, v6, v1, v2);
  }

  else
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v11 = *(v0 + 192);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v13 + 8))(v12, v14);
    v15 = *(v0 + 152);

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:), v3, 0);
}

{
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[24];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v4 + 8))(v3, v5);
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ConversationService.drainAsyncWork()(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.drainAsyncWork()(a1, a2, v2);
}

uint64_t assignWithCopy for ConversationService.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ConversationService.State(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of ConversationService.State(v5, v6);
  return a1;
}

uint64_t assignWithTake for ConversationService.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of ConversationService.State(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationService.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 9))
  {
    return (*a1 + 8190);
  }

  v3 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3 | (((*(a1 + 8) >> 1) & 0x1F) << 6)))) ^ 0x1FFF;
  if (v3 >= 0x1FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConversationService.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x7FF | ((-a2 & 0x1FFF) << 11);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 5) & 0xFE;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ConversationService.State(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 6);
  *result &= 0xFFFFFFFFFFFFFF9uLL;
  *(result + 8) = v2;
  return result;
}

char *initializeBufferWithCopyOfBuffer for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v14 = type metadata accessor for ServerFallbackReason();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_14;
    case 1:
      *a1 = *a2;

LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v8 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v8;

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
      v10 = type metadata accessor for Input();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v9], 1, v10))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v11 + 16))(&a1[v9], &a2[v9], v10);
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
      }

      goto LABEL_14;
  }

  v15 = *(v6 + 64);

  return memcpy(a1, a2, v15);
}

char *initializeWithCopy for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v12 = type metadata accessor for ServerFallbackReason();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_12;
    case 1:
      *a1 = *a2;

LABEL_12:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
      v9 = type metadata accessor for Input();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(&a2[v8], 1, v9))
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
      }

      else
      {
        (*(v10 + 16))(&a1[v8], &a2[v8], v9);
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
      }

      goto LABEL_12;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *assignWithCopy for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationService.EagerResult(a1, type metadata accessor for ConversationService.EagerResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = type metadata accessor for ServerFallbackReason();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_13;
    case 1:
      *a1 = *a2;

LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
      v8 = type metadata accessor for Input();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 16))(&a1[v7], &a2[v7], v8);
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
      }

      goto LABEL_13;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *initializeWithTake for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for ServerFallbackReason();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_10;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *assignWithTake for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationService.EagerResult(a1, type metadata accessor for ConversationService.EagerResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for ServerFallbackReason();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_11;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void type metadata completion function for ConversationService.EagerResult()
{
  type metadata accessor for Input?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1E69E5D20] + 64;
    swift_getTupleTypeLayout3();
    v7 = &v6;
    v8 = v3;
    v4 = type metadata accessor for ServerFallbackReason();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void type metadata accessor for Input?()
{
  if (!lazy cache variable for type metadata for Input?)
  {
    type metadata accessor for Input();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Input?);
    }
  }
}

uint64_t type metadata completion function for ConversationService.ActiveTurn()
{
  result = type metadata accessor for RemoteConversationTurnData(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in ConversationService.drainAsyncWork()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in closure #1 in ConversationService.drainAsyncWork()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.drainAsyncWork()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.drainAsyncWork()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.cancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.cancel(_:)(a1, a2, a3, v8);
}

uint64_t closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(a1, a2, v7, v6);
}

uint64_t objectdestroy_160Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(a1, v4, v5, v7, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v5);
}

uint64_t objectdestroy_272Tm()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
  v3 = v0 + v21;
  v4 = *(v0 + v21 + 8);

  v5 = *(v0 + v21 + 24);

  v6 = v1[6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v21 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v10 = v1[7];
  v11 = type metadata accessor for SessionConfiguration();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = v1[9];
  if (!v9(v3 + v13, 1, v7))
  {
    (*(v8 + 8))(v3 + v13, v7);
  }

  v14 = *(v3 + v1[10]);

  v15 = (v3 + v1[13]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v15, v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v22 + v17);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v22, v17 + 16, v2 | 7);
}

uint64_t outlined consume of RemoteConversationClient??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1, v4, v5, v6);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  v14 = StaticString.description.getter();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);
  *(v17 + 24) = v12;
  *(v17 + 32) = "bridge(didReceiveStartExecutionTurn:from:)";
  *(v17 + 40) = 42;
  *(v17 + 48) = 2;
  v18 = *(*a5 + 208);

  v18(v14, v16, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:), v17);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  v14 = StaticString.description.getter();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:);
  *(v17 + 24) = v12;
  *(v17 + 32) = "bridge(didReceiveRequestContextData:from:)";
  *(v17 + 40) = 42;
  *(v17 + 48) = 2;
  v18 = *(*a5 + 208);

  v18(v14, v16, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v17);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = "bridge(didReceiveInput:from:)";
  *(v16 + 48) = 29;
  *(v16 + 56) = 2;
  *(v16 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:);
  *(v16 + 72) = v12;
  v17 = *(*a5 + 208);

  v17(v13, v15, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), v16);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:);
  *(v16 + 24) = v12;
  *(v16 + 32) = "bridge(didReceiveClearContext:from:)";
  *(v16 + 40) = 36;
  *(v16 + 48) = 2;
  v17 = *(*a5 + 208);

  v17(v13, v15, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v16);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:);
  *(v16 + 24) = v12;
  *(v16 + 32) = "bridge(didReceiveCancelRequest:from:)";
  *(v16 + 40) = 37;
  *(v16 + 48) = 2;
  v17 = *(*a5 + 208);

  v17(v13, v15, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v16);
}

uint64_t ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

uint64_t ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23ExecutionOverrideResultCSgMd, &_s14SiriKitRuntime23ExecutionOverrideResultCSgMR);
  *v7 = v0;
  v7[1] = ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000033, 0x80000001DCA80B80, partial apply for closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), v5, v8);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.recentDialogs() in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = "bridge(didReceiveCommitResultCandidateId:from:)";
  *(v16 + 48) = 47;
  *(v16 + 56) = 2;
  *(v16 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:);
  *(v16 + 72) = v12;
  v17 = *(*a5 + 208);

  v17(v13, v15, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v16);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v46 = a8;
  v44 = a6;
  v42 = a4;
  v43 = a5;
  v40 = a1;
  v41 = a3;
  v39 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v39 - v15;
  outlined init with copy of SessionConfiguration?(a2, &v39 - v15);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = a9;
  v20[3] = a10;
  v21 = v40;
  v20[4] = a11;
  v20[5] = v21;
  outlined init with take of SessionConfiguration?(v16, v20 + v17);
  v22 = v41;
  *(v20 + v18) = v41;
  v24 = v42;
  v23 = v43;
  *(v20 + v19) = v42;
  v25 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v23;
  v25[8] = v44;
  v26 = (v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8));
  v27 = v46;
  *v26 = v45;
  v26[1] = v27;
  v28 = v23;
  swift_unknownObjectRetain();
  v29 = v39;

  v30 = v21;
  v31 = v22;
  v32 = v24;
  v33 = StaticString.description.getter();
  v35 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = a10;
  *(v36 + 32) = a11;
  *(v36 + 40) = "bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)";
  *(v36 + 48) = 157;
  *(v36 + 56) = 2;
  *(v36 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  *(v36 + 72) = v20;
  v37 = *(*a10 + 208);

  v37(v33, v35, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v36);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  v14 = StaticString.description.getter();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = "bridge(didReceiveSiriKitPluginSignal:from:)";
  *(v17 + 48) = 43;
  *(v17 + 56) = 2;
  *(v17 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:);
  *(v17 + 72) = v12;
  v18 = *(*a5 + 208);

  v18(v14, v16, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v17);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ConversationServiceSerialFacade.init(wrapping:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static Logger.executor);
  v16 = v1[2];
  v16(v4, v5, v0);
  v6 = type metadata accessor for AsyncSerialQueue();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 2) = MEMORY[0x1E69E7CC0];
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 6) = v10;
  *(v9 + 7) = 0xD000000000000022;
  *(v9 + 8) = 0x80000001DCA80E60;
  v11 = v1[4];
  v11(&v9[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v4, v0);
  v16(v4, v5, v0);
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  *(v14 + 2) = MEMORY[0x1E69E7CC0];
  *(v14 + 3) = 0;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 6) = v15;
  *(v14 + 7) = 0xD000000000000020;
  *(v14 + 8) = 0x80000001DCA80E90;
  v11(&v14[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v4, v0);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.bridge(didReceiveInput:from:)(a4, a5, a6);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;

  v17 = StaticString.description.getter();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  *(v20 + 32) = a8;
  *(v20 + 40) = "bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)";
  *(v20 + 48) = 71;
  *(v20 + 56) = 2;
  *(v20 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:);
  *(v20 + 72) = v16;
  v21 = *(*a7 + 208);

  v21(v17, v19, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v20);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), 0, 0);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = static MessageBusActor.shared;
  v6 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v10;
  *(v7 + 48) = v11;
  *(v7 + 64) = v3;
  *(v7 + 72) = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  (*(v11 + 16))(&v31 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v16, v15, v10);
  v20 = (v19 + v17);
  *v20 = a2;
  v20[1] = a3;
  v22 = v31;
  v21 = v32;
  v20[2] = v31;
  *(v19 + v18) = v21;
  v23 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;

  v25 = StaticString.description.getter();
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  *(v28 + 32) = v22;
  *(v28 + 40) = "checkExecutionOverrides(context:resultCandidateId:)";
  *(v28 + 48) = 51;
  *(v28 + 56) = 2;
  *(v28 + 64) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:);
  *(v28 + 72) = v19;
  v29 = *(*a3 + 208);

  v29(v25, v27, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v28);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a1;
  v11 = swift_task_alloc();
  *(v7 + 32) = v11;
  *v11 = v7;
  v11[1] = closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:);

  return ConversationService.checkExecutionOverrides(context:resultCandidateId:)(a5, a6, a7);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)()
{
  v1 = v0[3];
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return (specialized ConversationService.bridge(didReceiveCancelRequest:from:))(a4);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(a4, a5, a6);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTQ0_;

  return (specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:))(a4);
}

uint64_t outlined init with copy of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t destroy for ConversationServiceSerialFacade(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

void *initializeBufferWithCopyOfBuffer for ConversationServiceSerialFacade(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for ConversationServiceSerialFacade(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;

  return a1;
}

uint64_t *assignWithTake for ConversationServiceSerialFacade(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = v7[2];
  v12 = *(v0 + v6);
  v13 = *(v0 + v6 + 8);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(v0 + v3, v8, v9, v11, v10, v12, v13);
}

uint64_t key path setter for CurrentRequest.flowTaskMetadata : CurrentRequest(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  outlined init with copy of FlowTaskMetadata?(a1, &v9 - v6);
  v7 = *a2;
  return CurrentRequest.flowTaskMetadata.setter();
}

uint64_t keypath_set_91Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t outlined init with copy of FlowTaskMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PommesInfo.__allocating_init(pommesResponse:pommesError:pommesSearchReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, v9 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a3, v9 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  return v9;
}

uint64_t NLResponse.__allocating_init(nlParses:nlResponseStatusCode:pommesInfo:languageVariantResult:responseVariantResult:serverFallbackReason:nlRoutingDecision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v22 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v22 - 8) + 32))(v20 + v21, a2, v22);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a4, v20 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v23 = (v20 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  *v23 = a5;
  v23[1] = a6;
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = a3;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a7, v20 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a8, v20 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  return v20;
}

uint64_t ConversationUserInput.debugDescription.getter()
{
  v1 = v0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v2 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v78 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - v6;
  v8 = *v0;
  v82[0] = _typeName(_:qualified:)();
  v82[1] = v9;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v10 = v82[0];
  v11 = v82[1];
  v82[0] = 123;
  v82[1] = 0xE100000000000000;
  MEMORY[0x1E12A1580](v10, v11);

  v12 = v82[0];
  v13 = v82[1];
  v82[0] = 0xD000000000000013;
  v82[1] = 0x80000001DCA81880;
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v15 = v82[0];
  v14 = v82[1];
  v82[0] = v12;
  v82[1] = v13;

  MEMORY[0x1E12A1580](v15, v14);

  v17 = v82[0];
  v16 = v82[1];
  v82[0] = 0xD000000000000019;
  v82[1] = 0x80000001DCA818A0;
  MEMORY[0x1E12A1580](v1[4], v1[5]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v18 = v82[0];
  v19 = v82[1];
  v82[0] = v17;
  v82[1] = v16;

  MEMORY[0x1E12A1580](v18, v19);

  v20 = v82[0];
  v21 = v82[1];
  v82[0] = 0x6150686365657073;
  v82[1] = 0xEF203A6567616B63;
  v80 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  v22 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v22);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v23 = v82[0];
  v24 = v82[1];
  v82[0] = v20;
  v82[1] = v21;

  MEMORY[0x1E12A1580](v23, v24);

  v26 = v82[0];
  v25 = v82[1];
  strcpy(v82, "nlResponse: ");
  BYTE5(v82[1]) = 0;
  HIWORD(v82[1]) = -5120;
  v27 = v0[7];
  v28 = NLResponse.debugDescription.getter();
  MEMORY[0x1E12A1580](v28);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v29 = v82[0];
  v30 = v82[1];
  v82[0] = v26;
  v82[1] = v25;

  MEMORY[0x1E12A1580](v29, v30);

  v32 = v82[0];
  v31 = v82[1];
  v82[0] = 0xD000000000000014;
  v82[1] = 0x80000001DCA818C0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision, v7, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v33 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v33);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v34 = v82[0];
  v35 = v82[1];
  v82[0] = v32;
  v82[1] = v31;

  MEMORY[0x1E12A1580](v34, v35);

  v37 = v82[0];
  v36 = v82[1];
  v82[0] = 0xD000000000000023;
  v82[1] = 0x80000001DCA818E0;
  v38 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  if (v38)
  {
    v39 = [v38 debugDescription];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v80 = v40;
  v81 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v43 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v43);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v44 = v82[0];
  v45 = v82[1];
  v82[0] = v37;
  v82[1] = v36;

  MEMORY[0x1E12A1580](v44, v45);

  v47 = v82[0];
  v46 = v82[1];
  v82[0] = 0xD000000000000030;
  v82[1] = 0x80000001DCA81910;
  v48 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold);
  if (v48)
  {
    v49 = [v48 debugDescription];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v80 = v50;
  v81 = v52;
  v53 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v53);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v54 = v82[0];
  v55 = v82[1];
  v82[0] = v47;
  v82[1] = v46;

  MEMORY[0x1E12A1580](v54, v55);

  v57 = v82[0];
  v56 = v82[1];
  v82[0] = 0xD00000000000001FLL;
  v82[1] = 0x80000001DCA81950;
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession))
  {
    v58 = 1702195828;
  }

  else
  {
    v58 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession))
  {
    v59 = 0xE400000000000000;
  }

  else
  {
    v59 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v58, v59);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v60 = v82[0];
  v61 = v82[1];
  v82[0] = v57;
  v82[1] = v56;

  MEMORY[0x1E12A1580](v60, v61);

  v63 = v82[0];
  v62 = v82[1];
  strcpy(v82, "asrLocation: ");
  HIWORD(v82[1]) = -4864;
  v64 = ExecutionLocation.description.getter();
  MEMORY[0x1E12A1580](v64);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v65 = v82[0];
  v66 = v82[1];
  v82[0] = v63;
  v82[1] = v62;

  MEMORY[0x1E12A1580](v65, v66);

  v68 = v82[0];
  v67 = v82[1];
  strcpy(v82, "nlLocation: ");
  BYTE5(v82[1]) = 0;
  HIWORD(v82[1]) = -5120;
  v69 = ExecutionLocation.description.getter();
  MEMORY[0x1E12A1580](v69);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v70 = v82[0];
  v71 = v82[1];
  v82[0] = v68;
  v82[1] = v67;

  MEMORY[0x1E12A1580](v70, v71);

  v73 = v82[0];
  v72 = v82[1];
  v82[0] = 0xD000000000000015;
  v82[1] = 0x80000001DCA81970;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext, v78, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v74 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v74);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v75 = v82[0];
  v76 = v82[1];
  v82[0] = v73;
  v82[1] = v72;

  MEMORY[0x1E12A1580](v75, v76);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v82[0];
}

char *ConversationUserInput.__allocating_init(resultCandidateId:speechPackage:nlResponse:mitigationDecision:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:utterance:asrLocation:nlLocation:flowRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v45 = a8;
  v43 = a12;
  v44 = a13;
  v41 = a7;
  v42 = a11;
  v39 = a9;
  v40 = a10;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v14 + 48);
  v27 = *(v14 + 52);
  v28 = swift_allocObject();
  *(v28 + 2) = a1;
  *(v28 + 3) = a2;
  UUID.init()();
  v29 = UUID.uuidString.getter();
  v31 = v30;
  (*(v22 + 8))(v25, v21);
  *(v28 + 4) = v29;
  *(v28 + 5) = v31;
  *(v28 + 6) = a3;
  *(v28 + 7) = a4;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a5, &v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  *&v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = a6;
  *&v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = v41;
  *&v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
  v32 = &v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
  v33 = v40;
  *v32 = v39;
  *(v32 + 1) = v33;
  v34 = OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation;
  v35 = type metadata accessor for ExecutionLocation();
  v36 = *(*(v35 - 8) + 32);
  v36(&v28[v34], v42, v35);
  v36(&v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v43, v35);
  v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = v45;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v44, &v28[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return v28;
}

id ConversationUserInput.asSpeechData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExecutionLocation();
  v3 = *(v2 - 8);
  v85 = v2;
  v86 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v90 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v69 - v10;
  v11 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute();
  v70 = *(v71 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v69 - v25;
  v27 = *(v0 + 2);
  v81 = *(v0 + 3);
  v82 = v27;

  v29 = MEMORY[0x1E12A2570](v28);
  v30 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold];
  v87 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser];
  v88 = v30;
  v77 = v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession];
  v78 = v29;
  v31 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8];
  v79 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
  v32 = *(v0 + 6);
  v33 = *(v0 + 7);
  v84 = v32;
  v34 = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);
  v75 = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v76 = v34;

  v80 = v31;

  v35 = NLResponse.requestLanguageVariant.getter();
  v73 = v36;
  v74 = v35;
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v22, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  if ((*(v12 + 48))(v22, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    v37 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
    v38 = v26;
    (*(*(v37 - 8) + 56))(v26, 1, 1, v37);
  }

  else
  {
    (*(v12 + 16))(v15, v22, v11);
    if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E69D02E8])
    {
      (*(v12 + 96))(v15, v11);
      v39 = v70;
      v40 = v15;
      v41 = v71;
      (*(v70 + 32))(v18, v40, v71);
      NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.genAIFallbackSuppressReason.getter();
      (*(v39 + 8))(v18, v41);
      (*(v12 + 8))(v22, v11);
    }

    else
    {
      v42 = *(v12 + 8);
      v42(v15, v11);
      v43 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
      (*(*(v43 - 8) + 56))(v26, 1, 1, v43);
      v42(v22, v11);
    }

    v38 = v26;
  }

  v44 = v83;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], v83, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v45 = v85;
  v46 = v86;
  v47 = *(v86 + 16);
  v47(v89, &v1[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation], v85);
  v47(v90, &v1[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v45);
  v48 = type metadata accessor for RemoteConversationSpeechData();
  v49 = objc_allocWithZone(v48);
  v50 = &v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v51 = v81;
  *v50 = v82;
  v50[1] = v51;
  v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = v78;
  v52 = v88;
  *&v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v87;
  *&v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v52;
  v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v77;
  v53 = v84;
  *&v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v84;
  v54 = &v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  v55 = v80;
  *v54 = v79;
  v54[1] = v55;
  v56 = &v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  v57 = v76;
  *v56 = v75;
  v56[1] = v57;
  v58 = &v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  v59 = v73;
  *v58 = v74;
  v58[1] = v59;
  v72 = v38;
  outlined init with copy of ReferenceResolutionClientProtocol?(v38, &v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v60 = v44;
  outlined init with copy of ReferenceResolutionClientProtocol?(v44, &v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v61 = v89;
  v47(&v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v89, v45);
  v62 = v90;
  v47(&v49[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v90, v45);
  v91.receiver = v49;
  v91.super_class = v48;
  v63 = v87;
  v64 = v88;
  v65 = v53;
  v66 = objc_msgSendSuper2(&v91, sel_init);
  v67 = *(v46 + 8);
  v67(v62, v45);
  v67(v61, v45);
  outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  return v66;
}

uint64_t NLResponse.responseVariantResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NLResponse.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NLResponse.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NLResponse.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NLResponse.CodingKeys(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0xD000000000000014;
    v10 = 0x80000001DCA7AAA0;
    if (v2 != 1)
    {
      v9 = 0x6E4973656D6D6F70;
      v10 = 0xEA00000000006F66;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x7365737261506C6ELL;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001DCA7AB00;
    v4 = 0xD000000000000011;
    if (v2 == 5)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x80000001DCA7AB20;
    }

    v5 = 0x80000001DCA7AAC0;
    if (v2 != 3)
    {
      v5 = 0x80000001DCA7AAE0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t NLResponse.init(nlParses:nlResponseStatusCode:pommesInfo:languageVariantResult:responseVariantResult:serverFallbackReason:nlRoutingDecision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v17 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v17 - 8) + 32))(v8 + v16, a2, v17);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a4, v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v18 = (v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = a3;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a7, v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a8, v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  return v8;
}

uint64_t NLResponse.debugDescription.getter()
{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DCA696F0;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v12 = v0[2];
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  v14 = MEMORY[0x1E12A1700](v12, v13);
  MEMORY[0x1E12A1580](v14);

  v15 = v41;
  *(v11 + 32) = v40;
  *(v11 + 40) = v15;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  _print_unlocked<A, B>(_:_:)();
  v16 = v41;
  *(v11 + 48) = v40;
  *(v11 + 56) = v16;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v38 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime10PommesInfoCSgMd, &_s14SiriKitRuntime10PommesInfoCSgMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v17);

  v18 = v41;
  *(v11 + 64) = v40;
  *(v11 + 72) = v18;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, v10, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v19 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v19);

  v20 = v41;
  *(v11 + 80) = v40;
  *(v11 + 88) = v20;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 4;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v21 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);
  v38 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v39 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v22 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v22);

  v23 = v41;
  *(v11 + 96) = v40;
  *(v11 + 104) = v23;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 5;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, v6, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v24 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v24);

  v25 = v41;
  *(v11 + 112) = v40;
  *(v11 + 120) = v25;
  v40 = 0;
  v41 = 0xE000000000000000;
  LOBYTE(v38) = 6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v36, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v26 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v26);

  v27 = v41;
  *(v11 + 128) = v40;
  *(v11 + 136) = v27;
  v40 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  v31 = *v1;
  v40 = _typeName(_:qualified:)();
  v41 = v32;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  MEMORY[0x1E12A1580](v28, v30);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return v40;
}