uint64_t DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v3, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = v1;

  v7 = v4[26];
  if (v1)
  {
    v8 = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  }

  else
  {
    v4[40] = a1;
    v8 = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v3, 0);
}

uint64_t DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)()
{
  v108 = v0;
  if (v0[40])
  {
    v2 = v0[35];
    v1 = v0[36];
    v3 = v0[31];
    v4 = v0[32];
    v5 = v0[26];
    v6 = v0[15];
    v7 = v0[13];
    v8 = v0[11];

    v2(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[37];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v107 = v17;
      *v16 = 136315138;
      v18 = PluginAction.flowHandlerId.getter();
      v20 = v19;
      v12(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v107);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v9, v10, "[DecisionEngine]: Found new conversation for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {

      v12(v13, v15);
    }

    v39 = v0[37];
    v40 = v0[23];
    v103 = v0[22];
    v104 = v0[40];
    v41 = v0[20];
    v42 = v0[15];
    v43 = v0[11];
    v44 = v0[6];
    v45 = v0[12] + 8;
    v46 = type metadata accessor for DecisionEngineResponse();
    v47 = *(v46 + 24);
    PluginAction.input.getter();
    v39(v42, v43);
    outlined destroy of RemoteConversationTurnData(v41, type metadata accessor for AmbiguityOutput);
    (*(v40 + 56))(v44 + v47, 0, 1, v103);
    *v44 = v104;
    *(v44 + 8) = 0;
    *(v44 + *(v46 + 28)) = 0;
    (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
    goto LABEL_14;
  }

  v22 = v0[12] + 8;
  (v0[37])(v0[15], v0[11]);
  v23 = v0[34] + 1;
  if (v23 == v0[33])
  {
    v24 = v0[31];
    outlined destroy of RemoteConversationTurnData(v0[20], type metadata accessor for AmbiguityOutput);

    v25 = v0[9];
    v26 = v0[10];
    v27 = v0[8];
    v28 = type metadata accessor for ConversationHelperInput(0);
    if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v27 + *(v28 + 20)), *(v27 + *(v28 + 20) + 8), *(v25 + 33)) & 1) == 0)
    {
      v68 = v0[26];
      v69 = v0[6];

      v70 = type metadata accessor for DecisionEngineResponse();
      (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
LABEL_14:
      v49 = v0[24];
      v48 = v0[25];
      v51 = v0[20];
      v50 = v0[21];
      v52 = v0[19];
      v54 = v0[15];
      v53 = v0[16];
      v56 = v0[13];
      v55 = v0[14];

      v57 = v0[1];

      return v57();
    }

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

  v0[34] = v23;
  v58 = v0[31];
  if (v23 >= *(v58 + 16))
  {
    __break(1u);
LABEL_34:
    swift_once();
LABEL_7:
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.executor);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v30, v31, "[DecisionEngine]: Generating CAM Fallback", v32, 2u);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    v33 = swift_task_alloc();
    v0[45] = v33;
    *v33 = v0;
    v33[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
    v34 = v0[9];
    v35 = v0[10];
    v36 = v0[8];
    v37 = v0[6];

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v37, v36, v34);
  }

  v59 = v0[15];
  v60 = v0[11];
  v61 = v0[12];
  v63 = *(v61 + 16);
  v61 += 16;
  v62 = v63;
  v64 = v58 + ((*(v61 + 64) + 32) & ~*(v61 + 64)) + *(v61 + 56) * v23;
  v0[35] = v63;
  v0[36] = v61 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63(v59, v64, v60);
  if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v65)
  {
    v66 = v0[31];
    v67 = v0[26];

LABEL_24:

    v74 = v0[32];
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1DC659000, v75, v76, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v77, 2u);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    v78 = v0[23];
    v105 = v0[22];
    v79 = v0[20];
    v80 = v0[15];
    v81 = v0[11];
    v82 = v0[12];
    v83 = v0[6];

    v84 = type metadata accessor for DecisionEngineResponse();
    v85 = *(v84 + 24);
    PluginAction.input.getter();
    (*(v82 + 8))(v80, v81);
    outlined destroy of RemoteConversationTurnData(v79, type metadata accessor for AmbiguityOutput);
    (*(v78 + 56))(v83 + v85, 0, 1, v105);
    *v83 = 0;
    *(v83 + 8) = 0;
    *(v83 + *(v84 + 28)) = 0;
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    goto LABEL_14;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    v72 = v0[31];
    v73 = v0[26];
    goto LABEL_24;
  }

  v86 = v0[32];
  v62(v0[14], v0[15], v0[11]);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v0[14];
  v91 = v0[11];
  v92 = v0[12];
  if (v89)
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v107 = v94;
    *v93 = 136315138;
    v106 = PluginAction.flowHandlerId.getter();
    v96 = v95;
    v97 = *(v92 + 8);
    v97(v90, v91);
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v96, &v107);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_1DC659000, v87, v88, "[DecisionEngine]: Trying to load new conversation for %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    MEMORY[0x1E12A2F50](v94, -1, -1);
    MEMORY[0x1E12A2F50](v93, -1, -1);
  }

  else
  {

    v97 = *(v92 + 8);
    v97(v90, v91);
  }

  v0[37] = v97;
  v99 = *(v0[10] + 32);
  v100 = swift_task_alloc();
  v0[38] = v100;
  *v100 = v0;
  v100[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v101 = v0[15];
  v102 = v0[8];

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v101, v102);
}

{
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[20];
  v9 = v0[6];

  outlined destroy of RemoteConversationTurnData(v8, type metadata accessor for AmbiguityOutput);
  v10 = type metadata accessor for DecisionEngineResponse();
  v11 = *(v10 + 24);
  v3(v9 + v11, v5, v7);
  (*(v6 + 56))(v9 + v11, 0, 1, v7);
  *v9 = v1;
  *(v9 + 8) = 0;
  *(v9 + *(v10 + 28)) = 0;
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];
  v18 = v0[15];
  v17 = v0[16];
  v20 = v0[13];
  v19 = v0[14];

  v21 = v0[1];

  return v21();
}

{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v2, 0);
}

{
  v1 = v0[26];
  v2 = v0[6];

  v3 = type metadata accessor for DecisionEngineResponse();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];

  v13 = v0[1];

  return v13();
}

{
  v95 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 120);
    v8 = *(v0 + 88);
    v90 = *(v0 + 96) + 8;
    v91 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v94 = v10;
    *v9 = 136315138;
    *(v0 + 40) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v94);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v4, v5, "[AmbiguityService]: Error when loading a new conversation from a plugin action: %s. Will try the next pluginAction", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);

    v91(v7, v8);
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 120);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96) + 8;

    v15(v16, v17);
  }

  v19 = *(v0 + 272) + 1;
  if (v19 == *(v0 + 264))
  {
    v20 = *(v0 + 248);
    outlined destroy of RemoteConversationTurnData(*(v0 + 160), type metadata accessor for AmbiguityOutput);

    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);
    v24 = type metadata accessor for ConversationHelperInput(0);
    if (DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v23 + *(v24 + 20)), *(v23 + *(v24 + 20) + 8), *(v21 + 33)))
    {
      if (one-time initialization token for executor == -1)
      {
LABEL_7:
        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.executor);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1DC659000, v26, v27, "[DecisionEngine]: Generating CAM Fallback", v28, 2u);
          MEMORY[0x1E12A2F50](v28, -1, -1);
        }

        v29 = swift_task_alloc();
        *(v0 + 360) = v29;
        *v29 = v0;
        v29[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
        v30 = *(v0 + 72);
        v31 = *(v0 + 80);
        v32 = *(v0 + 64);
        v33 = *(v0 + 48);

        return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v33, v32, v30);
      }

LABEL_32:
      swift_once();
      goto LABEL_7;
    }

    v45 = *(v0 + 208);
    v46 = *(v0 + 48);

    v47 = type metadata accessor for DecisionEngineResponse();
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    goto LABEL_22;
  }

  *(v0 + 272) = v19;
  v35 = *(v0 + 248);
  if (v19 >= *(v35 + 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v36 = *(v0 + 120);
  v37 = *(v0 + 88);
  v38 = *(v0 + 96);
  v40 = *(v38 + 16);
  v38 += 16;
  v39 = v40;
  v41 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64)) + *(v38 + 56) * v19;
  *(v0 + 280) = v40;
  *(v0 + 288) = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v41, v37);
  if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v42)
  {
    v43 = *(v0 + 248);
    v44 = *(v0 + 208);

LABEL_19:

    v51 = *(v0 + 256);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    v55 = *(v0 + 184);
    v92 = *(v0 + 176);
    v56 = *(v0 + 160);
    v57 = *(v0 + 120);
    v58 = *(v0 + 88);
    v59 = *(v0 + 96);
    v60 = *(v0 + 48);

    v61 = type metadata accessor for DecisionEngineResponse();
    v62 = *(v61 + 24);
    PluginAction.input.getter();
    (*(v59 + 8))(v57, v58);
    outlined destroy of RemoteConversationTurnData(v56, type metadata accessor for AmbiguityOutput);
    (*(v55 + 56))(v60 + v62, 0, 1, v92);
    *v60 = 0;
    *(v60 + 8) = 0;
    *(v60 + *(v61 + 28)) = 0;
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
LABEL_22:
    v64 = *(v0 + 192);
    v63 = *(v0 + 200);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);
    v67 = *(v0 + 152);
    v69 = *(v0 + 120);
    v68 = *(v0 + 128);
    v71 = *(v0 + 104);
    v70 = *(v0 + 112);

    v72 = *(v0 + 8);

    return v72();
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    v49 = *(v0 + 248);
    v50 = *(v0 + 208);
    goto LABEL_19;
  }

  v73 = *(v0 + 256);
  v39(*(v0 + 112), *(v0 + 120), *(v0 + 88));
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 112);
  v78 = *(v0 + 88);
  v79 = *(v0 + 96);
  if (v76)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v94 = v81;
    *v80 = 136315138;
    v93 = PluginAction.flowHandlerId.getter();
    v83 = v82;
    v84 = *(v79 + 8);
    v84(v77, v78);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v83, &v94);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_1DC659000, v74, v75, "[DecisionEngine]: Trying to load new conversation for %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x1E12A2F50](v81, -1, -1);
    MEMORY[0x1E12A2F50](v80, -1, -1);
  }

  else
  {

    v84 = *(v79 + 8);
    v84(v77, v78);
  }

  *(v0 + 296) = v84;
  v86 = *(*(v0 + 80) + 32);
  v87 = swift_task_alloc();
  *(v0 + 304) = v87;
  *v87 = v0;
  v87[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v88 = *(v0 + 120);
  v89 = *(v0 + 64);

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v88, v89);
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesSearchReason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesSearchReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesError.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesError.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *DecisionEngine.CAMFallbackInfo.conjunctionInfo.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double DecisionEngine.CAMFallbackInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t *DecisionEngine.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v5 = v0[11];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v6 = v0[22];

  v7 = v0[23];

  v8 = v0[24];

  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 25), &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return v0;
}

uint64_t DecisionEngine.__deallocating_deinit()
{
  DecisionEngine.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DecisionMaking.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:) in conformance DecisionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for DecisionMaking.loadConversationFromPluginAction(_:speechData:turnData:bridge:) in conformance DecisionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl;

  return DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(a1, a2, a3, a4, a5);
}

uint64_t Siri_Nlu_External_UserDialogAct.isSetIdentity.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v6 + 8))(v9, v5);
    v10 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    (*(v1 + 8))(v4, v0);
    v11 = MEMORY[0x1E129C9E0](v10);
    v12 = v11;
    if (v11 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v14 = 0;
      while ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](v14, v12);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_16;
        }

LABEL_13:
        static UsoTask_CodegenConverter.convert(task:)();

        if (v20)
        {
          outlined init with take of Any(&v19, v21);
          outlined init with take of Any(v21, &v19);
          type metadata accessor for UsoTask_setIdentity_common_Person();
          if (swift_dynamicCast())
          {

            return 1;
          }
        }

        else
        {
          outlined destroy of ReferenceResolutionClientProtocol?(&v19, &_sypSgMd, &_sypSgMR);
        }

        ++v14;
        if (v15 == i)
        {
          goto LABEL_19;
        }
      }

      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v16 = *(v12 + 8 * v14 + 32);

      v15 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }

  return 0;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for RecentDialog();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38[3] = a10;
  v38[4] = a12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_0, a3, a10);
  v37[3] = a9;
  v37[4] = a11;
  v20 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(*(a9 - 8) + 32))(v20, a5, a9);
  type metadata accessor for ServerFallbackDisablingUtils();
  *(a8 + 176) = 0;
  *(a8 + 184) = 0;
  v21 = swift_allocObject();
  v21[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v21[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v21[4] = 0;
  *(a8 + 192) = v21;
  *(a8 + 200) = 0u;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0;
  *(a8 + 24) = a1;
  outlined init with copy of ReferenceResolutionClientProtocol(a2, a8 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v37, &v34);
  type metadata accessor for ConversationHelper();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(&v34, v22 + 24);
  *(a8 + 32) = v22;
  v23 = type metadata accessor for LinkMetadataProvider();
  v24 = swift_allocObject();
  v25 = objc_allocWithZone(MEMORY[0x1E69ACF60]);
  swift_retain_n();

  *(v24 + 16) = [v25 init];
  v26 = type metadata accessor for AppShortcutStateProvider();
  v27 = swift_allocObject();
  type metadata accessor for AppShortcutExpansionContextBuilder();
  v28 = swift_allocObject();
  v28[9] = v23;
  v28[10] = &protocol witness table for LinkMetadataProvider;
  v28[6] = v24;
  v28[14] = v26;
  v28[15] = &protocol witness table for AppShortcutStateProvider;
  v28[11] = v27;
  type metadata accessor for ConditionalIntentMetadataStore();
  v28[4] = 0;
  v28[5] = 0;
  v28[3] = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x1E69E7CC8];
  v28[2] = v29;
  type metadata accessor for ActionGenerator();
  v30 = swift_allocObject();
  v30[3] = v28;
  v30[4] = a1;
  v30[2] = a4;
  *(a8 + 16) = v30;
  outlined init with copy of ReferenceResolutionClientProtocol(v38, &v34);
  type metadata accessor for CorrectionsService();
  v31 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v34, v31 + 16);
  *(v31 + 56) = a1;
  *(a8 + 40) = v31;
  *(a8 + 88) = a7;
  v35 = type metadata accessor for AppShortcutProvider();
  v36 = MEMORY[0x1E69CFFA8];
  __swift_allocate_boxed_opaque_existential_0(&v34);

  AppShortcutProvider.init()();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  outlined init with take of ReferenceResolutionClientProtocol(&v34, a8 + 96);
  outlined init with take of ReferenceResolutionClientProtocol(a6, a8 + 136);
  return a8;
}

uint64_t specialized DecisionEngine.__allocating_init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a7;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v27 = a4;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a10 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v17 + 16))(v21, a3, a10);
  (*(v13 + 16))(v16, v24, a9);
  return specialized DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(v25, v26, v21, v27, v16, v28, v29, v22, a9, a10, a11, a12);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void destroy for DecisionEngine.CAMFallbackInfo(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];
}

uint64_t initializeWithCopy for DecisionEngine.CAMFallbackInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;

  v6 = v5;
  return a1;
}

uint64_t assignWithCopy for DecisionEngine.CAMFallbackInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  *(a1 + 40) = v7;
  v8 = v7;

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for DecisionEngine.CAMFallbackInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v8 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for DecisionEngine.CAMFallbackInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DecisionEngine.CAMFallbackInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ExecutableTask(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void outlined consume of Result<[RRCandidate], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type RequestConjunctionInfo? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RequestConjunctionInfo? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RequestConjunctionInfo? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
    lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type RequestConjunctionInfo and conformance RequestConjunctionInfo, MEMORY[0x1E69D0850]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestConjunctionInfo? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *DecisionEngineCurareDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static DecisionEngineCurareDonator.instance;
}

uint64_t (*AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = implicit closure #1 in AnyEncodable.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t (*implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR);
  lazy protocol witness table accessor for type Parse and conformance Parse(&lazy protocol witness table cache variable for type CamParse and conformance CamParse, MEMORY[0x1E69CE310]);
  return Optional<A>.encode(to:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  lazy protocol witness table accessor for type Parse and conformance Parse(&lazy protocol witness table cache variable for type Parse and conformance Parse, MEMORY[0x1E69D0188]);
  return Optional<A>.encode(to:)();
}

uint64_t DecisionEngineCurareStream.streamId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DecisionEngineCurareStream.__allocating_init(streamId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DecisionEngineCurareStream.init(streamId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DecisionEngineCurareStream.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DecisionEngineCurareStream.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for instance()
{
  result = specialized DecisionEngineCurareDonator.__allocating_init()();
  static DecisionEngineCurareDonator.instance = result;
  return result;
}

{
  type metadata accessor for NoopSiriKitEventSender();
  result = swift_initStaticObject();
  static NoopSiriKitEventSender.instance = result;
  return result;
}

{
  type metadata accessor for IntentLoggingEventSink();
  result = swift_initStaticObject();
  static IntentLoggingEventSink.instance = result;
  return result;
}

{
  result = specialized SelfReflectionCurareDonator.__allocating_init()();
  static SelfReflectionCurareDonator.instance = result;
  return result;
}

{
  type metadata accessor for SiriKitCurareDonator();
  swift_allocObject();
  result = SiriKitCurareDonator.().init()();
  static SiriKitCurareDonator.instance = result;
  return result;
}

{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = static TaskLoggingService.instance;
  type metadata accessor for TaskLoggingEventSink();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  static TaskLoggingEventSink.instance = v1;
}

{
  v0 = type metadata accessor for FeatureChecker();
  v1 = swift_allocObject();
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v14 = &type metadata for IntelligenceFlowFeatureFlag;
  v15 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  *(v1 + 17) = v2 & 1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v3 = static SiriKitBiomeDonator.instance;
  v14 = type metadata accessor for SiriKitBiomeDonator();
  v15 = &protocol witness table for SiriKitBiomeDonator;
  *&v13 = v3;
  v4 = one-time initialization token for instance;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static SiriKitCurareDonator.instance;
  v11 = type metadata accessor for SiriKitCurareDonator();
  v12 = &protocol witness table for SiriKitCurareDonator;
  v6 = objc_opt_self();

  v7 = [v6 shared];
  type metadata accessor for TaskLoggingService();
  v8 = swift_allocObject();
  v8[24] = v0;
  v8[25] = &protocol witness table for FeatureChecker;
  v8[21] = v1;
  outlined init with take of ReferenceResolutionClientProtocol(&v13, (v8 + 2));
  result = outlined init with take of ReferenceResolutionClientProtocol(&v10, (v8 + 7));
  v8[12] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v8[13] = 0;
  v8[14] = closure #1 in default argument 3 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:);
  v8[15] = 0;
  v8[16] = closure #1 in default argument 4 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:);
  v8[17] = 0;
  v8[18] = closure #1 in default argument 5 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:);
  v8[19] = 0;
  v8[20] = v7;
  static TaskLoggingService.instance = v8;
  return result;
}

uint64_t static DecisionEngineCurareDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t DecisionEngineCurareDonator.__allocating_init(decisionEngineStream:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DecisionEngineCurareDonator.init(decisionEngineStream:)(a1);
  return v2;
}

uint64_t DecisionEngineCurareDonator.init(decisionEngineStream:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v1 + 16, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
  if (!*(a1 + 24))
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.instrumentation);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "Failed to create stream for DecisionEngine - donations will be disabled.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
  return v2;
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t DecisionEngineCurareDonator.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t specialized DecisionEngineCurareDonator.__allocating_init()()
{
  v0 = objc_opt_self();
  if ([v0 isSupportedUser] && objc_msgSend(v0, sel_isSupportedPlatform))
  {
    v1 = type metadata accessor for DecisionEngineCurareStream();
    v2 = swift_allocObject();
    *(v2 + 16) = 0xD000000000000016;
    *(v2 + 24) = 0x80000001DCA821F0;
    *(&v10 + 1) = v1;
    v11 = &protocol witness table for DecisionEngineCurareStream;
    *&v9 = v2;
    type metadata accessor for DecisionEngineCurareDonator();
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.instrumentation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Unsupported User/Platform for feature store - donations will be disabled.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    type metadata accessor for DecisionEngineCurareDonator();
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  v7 = swift_allocObject();
  DecisionEngineCurareDonator.init(decisionEngineStream:)(&v9);
  return v7;
}

void *assignWithCopy for AnyEncodable(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t assignWithTake for AnyEncodable(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return dispatch thunk of Encodable.encode(to:)();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_19(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

unint64_t lazy protocol witness table accessor for type AnyEncodable and conformance AnyEncodable()
{
  result = lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable;
  if (!lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable);
  }

  return result;
}

uint64_t objectdestroy_26Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x1EEE6BDD0](v3, v7 + v8, v6 | 7);
}

uint64_t DecisionEngineResponse.topNlParse.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  v16 = type metadata accessor for DecisionEngineResponse();
  outlined init with copy of Input?(v1 + *(v16 + 24), v15);
  v17 = type metadata accessor for Input();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    outlined destroy of Input?(v15);
    v19 = type metadata accessor for Siri_Nlu_External_UserParse();
    return (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  }

  else
  {
    Input.parse.getter();
    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69D0168])
    {
      (*(v3 + 96))(v6, v2);
      (*(v8 + 32))(v11, v6, v7);
      v21 = v25;
      USOParse.userParse.getter();
      (*(v8 + 8))(v11, v7);
      v22 = 0;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v22 = 1;
      v21 = v25;
    }

    v23 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v23 - 8) + 56))(v21, v22, 1, v23);
    return (*(v18 + 8))(v15, v17);
  }
}

uint64_t Input.topNlParse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69D0168])
  {
    (*(v3 + 96))(v6, v2);
    (*(v8 + 32))(v11, v6, v7);
    USOParse.userParse.getter();
    (*(v8 + 8))(v11, v7);
    v12 = 0;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v12 = 1;
  }

  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

uint64_t outlined init with copy of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Input?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DecisionEngineResponse.init(conversation:existingFlowSelected:inputGivenToFlow:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = type metadata accessor for DecisionEngineResponse();
  result = outlined init with take of Input?(a3, a4 + *(v6 + 24));
  *(a4 + *(v6 + 28)) = 0;
  return result;
}

uint64_t outlined init with take of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DecisionEngineResponse.init(fallbackToPeer:inputGivenToFlow:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = type metadata accessor for DecisionEngineResponse();
  result = outlined init with take of Input?(a2, a3 + *(v6 + 24));
  *(a3 + *(v6 + 28)) = a1;
  return result;
}

uint64_t DecisionEngineResponse.inputGivenToFlow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DecisionEngineResponse() + 24);

  return outlined init with copy of Input?(v3, a1);
}

uint64_t DecisionMaking.getNlParse(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LinkParse();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for USOParse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x1E69D0168])
  {
    (*(v14 + 96))(v18, v13);
    (*(v9 + 32))(v12, v18, v8);
    USOParse.userParse.getter();
    (*(v9 + 8))(v12, v8);
LABEL_5:
    v21 = type metadata accessor for Siri_Nlu_External_UserParse();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  if (v19 == *MEMORY[0x1E69D0170])
  {
    (*(v14 + 96))(v18, v13);
    v20 = v25;
    (*(v25 + 32))(v7, v18, v4);
    LinkParse.usoParse.getter();
    USOParse.userParse.getter();
    (*(v9 + 8))(v12, v8);
    (*(v20 + 8))(v7, v4);
    goto LABEL_5;
  }

  v23 = type metadata accessor for Siri_Nlu_External_UserParse();
  (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  return (*(v14 + 8))(v18, v13);
}

uint64_t initializeBufferWithCopyOfBuffer for DecisionEngineResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
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

    *(v7 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return v7;
}

uint64_t initializeWithCopy for DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t *assignWithCopy for DecisionEngineResponse(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t initializeWithTake for DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t *assignWithTake for DecisionEngineResponse(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

void type metadata completion function for DecisionEngineResponse()
{
  type metadata accessor for Input?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

uint64_t dispatch thunk of DecisionMaking.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of DecisionMaking.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of DecisionMaking.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 24);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of DecisionMaking.commitConversation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of DecisionMaking.commitCorrections()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v9(a1, a2);
}

uint64_t DefaultDeviceState.isCarPlay.getter(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for DeviceRestrictions();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = Restrictions.deviceRestrictions.getter();
  a1(v10);
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v11 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v9, v2);
  return v11 & 1;
}

uint64_t DefaultDeviceState.sessionHandOffContinuityID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID + 8);

  return v1;
}

uint64_t DefaultDeviceState.preferencesLanguageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode + 8);

  return v1;
}

uint64_t DefaultDeviceState.endpointId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId + 8);

  return v1;
}

uint64_t DefaultDeviceState.inputOrigin.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DefaultDeviceState.__allocating_init(inputOrigin:interactionType:renderDeviceIdiom:multiUserState:siriLocale:siriVoiceGender:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:isLockedWithPasscodeClosure:sessionHandOffContinuityID:preferencesLanguageCode:personalDomainsAuthenticationMode:bargeInContext:peerName:endpointId:restrictedCommands:authenticationState:isDeviceShowingLockScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t (*a11)(), uint64_t (*a12)(), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, unsigned __int8 a25)
{
  v26 = v25;
  v91 = a8;
  v90 = a7;
  v112 = a25;
  v113 = a23;
  v110 = a22;
  v111 = a24;
  v108 = a20;
  v109 = a21;
  v106 = a18;
  v107 = a19;
  v104 = a16;
  v105 = a17;
  v103 = a15;
  v100 = a13;
  v101 = a14;
  v97 = a12;
  v87 = a10;
  v85 = a9;
  v88 = type metadata accessor for DeviceRestrictions();
  v89 = *(v88 - 8);
  v33 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v83 = &v80 - v37;
  v38 = *(v26 + 48);
  v39 = *(v26 + 52);
  v40 = swift_allocObject();
  v41 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v40 + v41) = MGGetSInt32Answer() == 7;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v42 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v40 + v42) = MGGetSInt32Answer() == 1;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v40 + v43) = MGGetSInt32Answer() == 3;
  v44 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v40 + v44) = MGGetSInt32Answer() == 2;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v45 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin;
  v46 = type metadata accessor for InputOrigin();
  v92 = *(v46 - 8);
  v47 = *(v92 + 16);
  v102 = a1;
  v93 = v46;
  v47(v40 + v45, a1);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType;
  v49 = type metadata accessor for InteractionType();
  v84 = *(v49 - 8);
  v50 = *(v84 + 16);
  v99 = a2;
  v86 = v49;
  v50(v40 + v48, a2);
  v51 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom;
  v52 = type metadata accessor for DeviceIdiom();
  v81 = *(v52 - 8);
  v53 = *(v81 + 16);
  v98 = a3;
  v82 = v52;
  v53(v40 + v51, a3);
  v96 = a4;
  outlined init with copy of MultiUserState(a4, v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v54 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale;
  v55 = type metadata accessor for Locale();
  v56 = *(v55 - 8);
  v57 = *(v56 + 16);
  v95 = a5;
  v80 = v55;
  v57(v40 + v54, a5);
  v58 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender;
  v59 = type metadata accessor for SiriVoiceGender();
  v60 = *(v59 - 8);
  v61 = *(v60 + 16);
  v94 = a6;
  v61(v40 + v58, a6, v59);
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v90;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v91;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v85;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v87;
  v62 = v83;
  Restrictions.deviceRestrictions.getter();
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v63 = v35;
  v64 = v88;
  LOBYTE(a6) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v65 = *(v89 + 8);
  v65(v63, v64);
  v65(v62, v64);
  if (a6)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v66 = 0;
    v67 = getEnumTag for AffinityScore;
  }

  else
  {
    v67 = a11;
    v66 = v97;
  }

  (*(v60 + 8))(v94, v59);
  (*(v56 + 8))(v95, v80);
  outlined destroy of MultiUserState(v96);
  (*(v81 + 8))(v98, v82);
  (*(v84 + 8))(v99, v86);
  (*(v92 + 8))(v102, v93);
  v68 = (v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v68 = v67;
  v68[1] = v66;
  v69 = (v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v70 = v101;
  *v69 = v100;
  v69[1] = v70;
  v71 = (v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v72 = v104;
  *v71 = v103;
  v71[1] = v72;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v105, v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v106, v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v73 = (v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v74 = v108;
  *v73 = v107;
  v73[1] = v74;
  v75 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v76 = type metadata accessor for Restrictions();
  (*(*(v76 - 8) + 32))(v40 + v75, v113, v76);
  v77 = (v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v78 = v110;
  *v77 = v109;
  v77[1] = v78;
  outlined init with take of ReferenceResolutionClientProtocol(v111, v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v112 & 1;
  return v40;
}

uint64_t DefaultDeviceState.init(inputOrigin:interactionType:renderDeviceIdiom:multiUserState:siriLocale:siriVoiceGender:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:isLockedWithPasscodeClosure:sessionHandOffContinuityID:preferencesLanguageCode:personalDomainsAuthenticationMode:bargeInContext:peerName:endpointId:restrictedCommands:authenticationState:isDeviceShowingLockScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t (*a11)(), uint64_t (*a12)(), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, unsigned __int8 a25)
{
  v26 = v25;
  v86 = a8;
  LODWORD(v104) = a7;
  v109 = a6;
  v108 = a25;
  v106 = a22;
  v107 = a24;
  v105 = a21;
  v102 = a19;
  v103 = a20;
  v100 = a17;
  v101 = a18;
  v98 = a15;
  v99 = a16;
  v95 = a13;
  v96 = a14;
  v92 = a12;
  v82 = a10;
  v81 = a9;
  v84 = type metadata accessor for DeviceRestrictions();
  v85 = *(v84 - 8);
  v32 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v78 = &v76 - v36;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v25 + v37) = MGGetSInt32Answer() == 7;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v25 + v38) = MGGetSInt32Answer() == 1;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v25 + v39) = MGGetSInt32Answer() == 3;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v25 + v40) = MGGetSInt32Answer() == 2;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v41 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin;
  v42 = type metadata accessor for InputOrigin();
  v88 = *(v42 - 8);
  v43 = *(v88 + 16);
  v97 = a1;
  v89 = v42;
  v43(v25 + v41, a1);
  v44 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType;
  v45 = type metadata accessor for InteractionType();
  v83 = *(v45 - 8);
  v46 = *(v83 + 16);
  v94 = a2;
  v87 = v45;
  v46(v25 + v44, a2);
  v47 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom;
  v48 = type metadata accessor for DeviceIdiom();
  v79 = *(v48 - 8);
  v49 = *(v79 + 16);
  v93 = a3;
  v80 = v48;
  v49(v25 + v47, a3);
  v91 = a4;
  outlined init with copy of MultiUserState(a4, v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v50 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale;
  v51 = type metadata accessor for Locale();
  v52 = *(v51 - 8);
  v53 = *(v52 + 16);
  v90 = a5;
  v77 = v51;
  v53(v25 + v50, a5);
  v54 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender;
  v55 = type metadata accessor for SiriVoiceGender();
  v56 = *(v55 - 8);
  (*(v56 + 16))(v25 + v54, v109, v55);
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v104;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v86;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v81;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v82;
  v57 = v78;
  v104 = a23;
  Restrictions.deviceRestrictions.getter();
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v58 = v34;
  v59 = v84;
  v60 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v61 = *(v85 + 8);
  v61(v58, v59);
  v61(v57, v59);
  if (v60)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v62 = 0;
    v63 = getEnumTag for AffinityScore;
  }

  else
  {
    v63 = a11;
    v62 = v92;
  }

  (*(v56 + 8))(v109, v55);
  (*(v52 + 8))(v90, v77);
  outlined destroy of MultiUserState(v91);
  (*(v79 + 8))(v93, v80);
  (*(v83 + 8))(v94, v87);
  (*(v88 + 8))(v97, v89);
  v64 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v64 = v63;
  v64[1] = v62;
  v65 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v66 = v96;
  *v65 = v95;
  v65[1] = v66;
  v67 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v68 = v99;
  *v67 = v98;
  v67[1] = v68;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v100, v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v101, v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v69 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v70 = v103;
  *v69 = v102;
  v69[1] = v70;
  v71 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v72 = type metadata accessor for Restrictions();
  (*(*(v72 - 8) + 32))(v26 + v71, v104, v72);
  v73 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v74 = v106;
  *v73 = v105;
  v73[1] = v74;
  outlined init with take of ReferenceResolutionClientProtocol(v107, v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v108 & 1;
  return v26;
}

uint64_t DefaultDeviceState.isWatch.getter(unsigned int *a1)
{
  v2 = type metadata accessor for DeviceIdiom();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[13];
  v8(v7, *MEMORY[0x1E69D34B8], v2, v5);
  v9 = static DeviceIdiom.== infix(_:_:)();
  v10 = v3[1];
  v10(v7, v2);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    (v8)(v7, *a1, v2);
    v11 = static DeviceIdiom.== infix(_:_:)();
    v10(v7, v2);
  }

  return v11 & 1;
}

uint64_t DefaultDeviceState.isHomePod.getter(void *a1, unsigned int *a2)
{
  v16 = a2;
  v4 = type metadata accessor for DeviceIdiom();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v5[13];
  v10(v9, *MEMORY[0x1E69D34B8], v4, v7);
  v11 = static DeviceIdiom.== infix(_:_:)();
  v12 = v5[1];
  v12(v9, v4);
  if (v11)
  {
    v13 = *(v2 + *a1);
  }

  else
  {
    (v10)(v9, *v16, v4);
    v13 = static DeviceIdiom.== infix(_:_:)();
    v12(v9, v4);
  }

  return v13 & 1;
}

uint64_t DefaultDeviceState.isLockedWithPasscode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure + 8);
  return v1() & 1;
}

uint64_t DefaultDeviceState.peerDeviceName.getter()
{
  v1 = type metadata accessor for DeviceIdiom();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[13];
  v7(v6, *MEMORY[0x1E69D34B8], v1, v4);
  v8 = static DeviceIdiom.== infix(_:_:)();
  v9 = v2[1];
  v9(v6, v1);
  if ((v8 & 1) == 0)
  {
    (v7)(v6, *MEMORY[0x1E69D34A8], v1);
    v11 = static DeviceIdiom.== infix(_:_:)();
    v9(v6, v1);
    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v10 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
    v12 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName + 8);

    return v10;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt) == 1)
  {
    goto LABEL_5;
  }

  return 0;
}

SiriKitRuntime::AuthenticationStateImpl __swiftcall AuthenticationStateImpl.init(isAuthenticatedByWatch:isAuthenticatedByHeadphones:)(Swift::Bool isAuthenticatedByWatch, Swift::Bool isAuthenticatedByHeadphones)
{
  if (isAuthenticatedByHeadphones)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | isAuthenticatedByWatch);
}

void type metadata completion function for DefaultDeviceState()
{
  v0 = type metadata accessor for InputOrigin();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    v2 = type metadata accessor for InteractionType();
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      v4 = type metadata accessor for MultiUserState();
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Locale();
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          v8 = type metadata accessor for SiriVoiceGender();
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            v10 = type metadata accessor for DeviceIdiom();
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              type metadata accessor for PersonalDomainsAuthenticationMode?(319, &lazy cache variable for type metadata for PersonalDomainsAuthenticationMode?, MEMORY[0x1E69D3668]);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                type metadata accessor for PersonalDomainsAuthenticationMode?(319, &lazy cache variable for type metadata for BargeInContext?, MEMORY[0x1E69D3588]);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  v16 = type metadata accessor for Restrictions();
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for PersonalDomainsAuthenticationMode?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AuthenticationStateImpl(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AuthenticationStateImpl(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DefaultMeCardProxy.__allocating_init(remoteMeCard:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *DefaultMeCardProxy.fetchMeCard(options:)()
{
  v1 = v0;
  v2 = type metadata accessor for MeCardOptions();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MeCardOptions.ignoreLocalMeCard.getter();
  lazy protocol witness table accessor for type MeCardOptions and conformance MeCardOptions();
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v9 = static MeCardService.instance;
  static MeCardOptions.ignoreCachedMeCard.getter();
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8(v6, v2);
  v11 = (*(*v9 + 168))((v10 & 1) == 0);
  if (!v11)
  {
LABEL_5:
    v11 = *(v1 + 16);
    v12 = v11;
  }

  return v11;
}

unint64_t lazy protocol witness table accessor for type MeCardOptions and conformance MeCardOptions()
{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    type metadata accessor for MeCardOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

uint64_t DefaultMeCardProxy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *DeviceContextHelper.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.sharedInstance;
}

uint64_t one-time initialization function for legacyNLContextKey()
{
  result = MEMORY[0x1E12A1410](0x4C4E79636167656CLL, 0xEF747865746E6F43);
  static DeviceContextHelper.legacyNLContextKey = result;
  return result;
}

uint64_t *DeviceContextHelper.legacyNLContextKey.unsafeMutableAddressor()
{
  if (one-time initialization token for legacyNLContextKey != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.legacyNLContextKey;
}

uint64_t one-time initialization function for onDeviceConversationKey()
{
  result = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7A5F0);
  static DeviceContextHelper.onDeviceConversationKey = result;
  return result;
}

uint64_t *DeviceContextHelper.onDeviceConversationKey.unsafeMutableAddressor()
{
  if (one-time initialization token for onDeviceConversationKey != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.onDeviceConversationKey;
}

uint64_t one-time initialization function for serverBoundContextUpdate()
{
  result = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7A620);
  static DeviceContextHelper.serverBoundContextUpdate = result;
  return result;
}

uint64_t *DeviceContextHelper.serverBoundContextUpdate.unsafeMutableAddressor()
{
  if (one-time initialization token for serverBoundContextUpdate != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.serverBoundContextUpdate;
}

id static DeviceContextHelper.legacyNLContextKey.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void one-time initialization function for sharedInstance()
{
  type metadata accessor for DeviceContextHelper();
  inited = swift_initStaticObject();
  specialized DeviceContextHelper.registerTransfomers()();
  static DeviceContextHelper.sharedInstance = inited;
}

uint64_t DeviceContextHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  specialized DeviceContextHelper.registerTransfomers()();
  return v0;
}

uint64_t static DeviceContextHelper.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t DeviceContextHelper.donateContextToCollector(_:_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-1] - v9;
  v17[3] = &type metadata for HALFeatureFlags;
  v17[4] = lazy protocol witness table accessor for type HALFeatureFlags and conformance HALFeatureFlags();
  v11 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if ((v11 & 1) == 0)
  {
    return a2(0);
  }

  v12 = [objc_opt_self() defaultService];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = v12;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in DeviceContextHelper.donateContextToCollector(_:_:), v14);
}

id DeviceContextHelper.getContextDonationService()()
{
  v0 = [objc_opt_self() defaultService];

  return v0;
}

uint64_t closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in DeviceContextHelper.donateContextToCollector(_:_:), 0, 0);
}

uint64_t closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)()
{
  specialized DeviceContextHelper.donateDataWithContext(_:_:_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

id closure #2 in DeviceContextHelper.fetchContextFromCollector(from:_:_:)(unint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.conversationBridge);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_99;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Nil contexts returned from ContextCollector";
    goto LABEL_98;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_94:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.conversationBridge);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_99;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Empty contexts returned from ContextCollector";
    goto LABEL_98;
  }

LABEL_4:
  v83 = a2;
  v9 = 0;
  v89[0] = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E12A1FE0](v9, a1);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_92;
      }

      v11 = *(a1 + 8 * v9 + 32);
    }

    a2 = v11;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        goto LABEL_94;
      }

      goto LABEL_4;
    }

    if ([v11 proximity] == 4000)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v89[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v9;
  }

  while (v12 != v8);
  v90 = v89[0];
  if (v89[0] < 0 || (v89[0] & 0x4000000000000000) != 0)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v89[0] + 16);
  }

  a2 = v83;
  if (!v13)
  {

    if (one-time initialization token for conversationBridge == -1)
    {
LABEL_89:
      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static Logger.conversationBridge);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v73, v74))
      {
LABEL_99:

        swift_beginAccess();
        v79 = *(a4 + 16);

        a2(v80);
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "Filtered context is empty";
LABEL_98:
      _os_log_impl(&dword_1DC659000, v73, v74, v76, v75, 2u);
      MEMORY[0x1E12A2F50](v75, -1, -1);
      goto LABEL_99;
    }

LABEL_107:
    swift_once();
    goto LABEL_89;
  }

  specialized MutableCollection<>.sort(by:)(&v90);
  v14 = v90;
  if (v90 >> 62)
  {
    v15 = a4;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_102;
    }

LABEL_20:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E12A1FE0](0, v14);
LABEL_23:
      v17 = v16;
      v18 = *(a5 + 16);
      if (!v18)
      {
        goto LABEL_103;
      }

      goto LABEL_24;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v14 + 32);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_107;
  }

  v15 = a4;
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_102:
  v17 = 0;
  v18 = *(a5 + 16);
  if (!v18)
  {
LABEL_103:

    swift_beginAccess();
    v81 = *(v15 + 16);

    v83(v82);
  }

LABEL_24:
  v19 = (a5 + 32);
  v84 = v17;
  while (2)
  {
    while (2)
    {
      v22 = *v19++;
      v21 = v22;
      if (!v17)
      {
LABEL_57:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.conversationBridge);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v89[0] = v47;
          *v46 = 136315138;
          v48 = 0x4C4E79636167656CLL;
          if (v21 != 1)
          {
            v48 = 0xD00000000000001ALL;
          }

          v49 = 0x80000001DCA7A620;
          if (v21 == 1)
          {
            v49 = 0xEF747865746E6F43;
          }

          if (v21)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0xD000000000000019;
          }

          if (v21)
          {
            v51 = v49;
          }

          else
          {
            v51 = 0x80000001DCA7A5F0;
          }

          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v89);

          *(v46 + 4) = v52;
          _os_log_impl(&dword_1DC659000, v44, v45, "Missing context data for key=%s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          MEMORY[0x1E12A2F50](v47, -1, -1);
          MEMORY[0x1E12A2F50](v46, -1, -1);

          v17 = v84;
        }

        else
        {
        }

        swift_beginAccess();
        v53 = *(v15 + 16);
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
        if (v55)
        {
          v56 = v54;
          v57 = *(v15 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = *(v15 + 16);
          v88[0] = v59;
          *(v15 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v59 = v88[0];
          }

          v20 = *(*(v59 + 56) + 8 * v56);
          swift_unknownObjectRelease();
          specialized _NativeDictionary._delete(at:)(v56, v59);
          *(v15 + 16) = v59;
        }

        swift_endAccess();
        if (!--v18)
        {
          goto LABEL_103;
        }

        continue;
      }

      break;
    }

    result = [v17 serializedContextByKey];
    if (result)
    {
      v24 = result;
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0x4C4E79636167656CLL;
      if (v21 != 1)
      {
        v26 = 0xD00000000000001ALL;
      }

      v27 = 0x80000001DCA7A620;
      if (v21 == 1)
      {
        v27 = 0xEF747865746E6F43;
      }

      if (v21)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xD000000000000019;
      }

      if (v21)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0x80000001DCA7A5F0;
      }

      if (*(v25 + 16))
      {
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
        v32 = v31;

        if (v32)
        {
          outlined init with copy of Any(*(v25 + 56) + 32 * v30, v89);

          if (one-time initialization token for conversationBridge != -1)
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
            v88[0] = v37;
            *v36 = 136315138;
            v38 = 0x4C4E79636167656CLL;
            if (v21 != 1)
            {
              v38 = 0xD00000000000001ALL;
            }

            v39 = 0x80000001DCA7A620;
            if (v21 == 1)
            {
              v39 = 0xEF747865746E6F43;
            }

            if (v21)
            {
              v40 = v38;
            }

            else
            {
              v40 = 0xD000000000000019;
            }

            if (v21)
            {
              v41 = v39;
            }

            else
            {
              v41 = 0x80000001DCA7A5F0;
            }

            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v88);

            *(v36 + 4) = v42;
            _os_log_impl(&dword_1DC659000, v34, v35, "Found data for key=%s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v37);
            MEMORY[0x1E12A2F50](v37, -1, -1);
            MEMORY[0x1E12A2F50](v36, -1, -1);

            v17 = v84;
          }

          else
          {
          }

          if (v21)
          {
            outlined init with copy of Any(v89, v88);
            if (v21 == 1)
            {
              v60 = objc_allocWithZone(type metadata accessor for ServerPromptData());
              v61 = ServerPromptData.init(serializedBackingStore:)(v88);
              swift_beginAccess();
              v62 = *(v15 + 16);
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v87 = *(v15 + 16);
              *(v15 + 16) = 0x8000000000000000;
              v64 = v61;
              v65 = 1;
            }

            else
            {
              v69 = objc_allocWithZone(type metadata accessor for ServerBoundContextUpdateContainer());
              v70 = ServerBoundContextUpdateContainer.init(serializedBackingStore:)(v88);
              swift_beginAccess();
              v71 = *(v15 + 16);
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v87 = *(v15 + 16);
              *(v15 + 16) = 0x8000000000000000;
              v64 = v70;
              v65 = 2;
            }
          }

          else
          {
            outlined init with copy of Any(v89, v88);
            v66 = objc_allocWithZone(type metadata accessor for ConversationalContextContainer());
            v67 = ConversationalContextContainer.init(serializedBackingStore:)(v88);
            swift_beginAccess();
            v68 = *(v15 + 16);
            v63 = swift_isUniquelyReferenced_nonNull_native();
            v87 = *(v15 + 16);
            *(v15 + 16) = 0x8000000000000000;
            v64 = v67;
            v65 = 0;
          }

          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v65, v63);
          *(v15 + 16) = v87;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1Tm(v89);
          if (!--v18)
          {
            goto LABEL_103;
          }

          continue;
        }
      }

      else
      {
      }

      goto LABEL_57;
    }

    break;
  }

  __break(1u);
  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        specialized Array.remove(at:)(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 proximity];
      v104 = [v14 proximity];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 proximity];
        v7 = [v18 proximity];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        specialized Array.remove(at:)(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 proximity];
    v41 = [v39 proximity];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 proximity];
          v35 = [v33 proximity];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 proximity];
          v20 = [v18 proximity];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized DeviceContextHelper.registerTransfomers()()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v0 = static GenericContextTransformer.sharedInstance;
  v1 = [objc_opt_self() defaultService];
  v2 = v1;
  if (one-time initialization token for legacyNLContextKey != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 registerContextTransformer:v0 forType:static DeviceContextHelper.legacyNLContextKey];
  if (one-time initialization token for onDeviceConversationKey != -1)
  {
    swift_once();
  }

  [v2 registerContextTransformer:v0 forType:static DeviceContextHelper.onDeviceConversationKey];
  if (one-time initialization token for serverBoundContextUpdate != -1)
  {
    swift_once();
  }

  [v2 registerContextTransformer:v0 forType:static DeviceContextHelper.serverBoundContextUpdate];
}

unint64_t lazy protocol witness table accessor for type HALFeatureFlags and conformance HALFeatureFlags()
{
  result = lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags;
  if (!lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags;
  if (!lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags);
  }

  return result;
}

uint64_t partial apply for closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)(uint64_t a1)
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
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void specialized DeviceContextHelper.donateDataWithContext(_:_:_:)(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v45 = a4;
  v46 = a3;
  v49 = a1;
  v5 = type metadata accessor for Date();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  Date.init()();
  v52 = v11;
  v53 = v8;
  Date.addingTimeInterval(_:)();
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v50 = 0x80000001DCA7A5F0;
  v51 = 0x80000001DCA7A620;
  v54 = a2;

  v17 = 0;
  *&v18 = 136315138;
  v47 = v18;
  while (v15)
  {
    while (1)
    {
LABEL_10:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = *(*(v54 + 48) + v21);
      v23 = *(*(v54 + 56) + 8 * v21);
      v24 = 0x4C4E79636167656CLL;
      if (v22 != 1)
      {
        v24 = 0xD00000000000001ALL;
      }

      v25 = 0xEF747865746E6F43;
      if (v22 != 1)
      {
        v25 = v51;
      }

      if (v22)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xD000000000000019;
      }

      if (v22)
      {
        v27 = v25;
      }

      else
      {
        v27 = v50;
      }

      swift_unknownObjectRetain();
      v28 = MEMORY[0x1E12A1410](v26, v27);

      v29 = objc_allocWithZone(MEMORY[0x1E698D108]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v31 = Date._bridgeToObjectiveC()().super.isa;
      v32 = [v29 initWithType:v28 deliveryDate:isa expirationDate:v31 redactedKeyPaths:0 historyConfiguration:0];

      v55 = v23;
      [v49 donateContext:v23 withMetadata:v32 pushToRemote:1];
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.conversationBridge);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        break;
      }

      swift_unknownObjectRelease();
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v48 = v32;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56 = v37;
    *v36 = v47;
    if (v22)
    {
      v38 = 0x4C4E79636167656CLL;
      v39 = 0xEF747865746E6F43;
      if (v22 != 1)
      {
        v38 = 0xD00000000000001ALL;
        v39 = v51;
      }
    }

    else
    {
      v38 = 0xD000000000000019;
      v39 = v50;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v56);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v34, v35, "Syncing the contextType=%s to ContextCollector", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);

    swift_unknownObjectRelease();
  }

LABEL_6:
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v46(1);
      v41 = v44;
      v42 = *(v43 + 8);
      v42(v53, v44);
      v42(v52, v41);
      return;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t specialized DeviceContextHelper.fetchContextFromCollector(from:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = MEMORY[0x1E69E7CC8];
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v31 = a1;
    v32 = v8;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = aBlock[0];
    v30 = a2;
    v12 = (a2 + 32);
    v13 = 0xEF747865746E6F43;
    do
    {
      v15 = *v12++;
      v14 = v15;
      v16 = v15 == 1;
      if (v15 == 1)
      {
        v17 = 0x4C4E79636167656CLL;
      }

      else
      {
        v17 = 0xD00000000000001ALL;
      }

      if (v16)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0x80000001DCA7A620;
      }

      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xD000000000000019;
      }

      if (v14)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0x80000001DCA7A5F0;
      }

      aBlock[0] = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v13 = v24;
        v11 = aBlock[0];
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      --v10;
    }

    while (v10);
    a1 = v31;
    v9 = v32;
    a2 = v30;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v11);

  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = v9;
  v25[5] = a2;
  v26 = [a1 respondsToSelector_];

  if (v26)
  {

    isa = Set._bridgeToObjectiveC()().super.isa;
    aBlock[4] = partial apply for closure #2 in DeviceContextHelper.fetchContextFromCollector(from:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    aBlock[3] = &block_descriptor_9;
    v28 = _Block_copy(aBlock);

    [a1 fetchContextsForKeys:isa includesNearbyDevices:1 completion:v28];
    _Block_release(v28);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type [UsoEntity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntity] and conformance [A]);
  }

  return result;
}

id specialized static DialogMetricsLogger.getSparseDialog(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69C77A0]);
  v3 = a1;
  v4 = [v2 init];
  [v4 setCanUseServerTTS_];
  v5 = [v3 caption];
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E69C77B0]);
    v7 = v5;
    v5 = [v6 init];
    v8 = [v7 speakableTextOverride];
    [v5 setSpeakableTextOverride_];

    v9 = [v7 text];
    [v5 setText_];
  }

  [v4 setCaption_];

  v10 = [v3 configuration];
  if (v10)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E69C77A8]);
    v12 = v10;
    v10 = [v11 init];
    v13 = [v12 gender];
    [v10 setGender_];

    v14 = [v12 languageCode];
    [v10 setLanguageCode_];
  }

  [v4 setConfiguration_];

  v15 = [v3 content];
  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69C77B0]);
    v17 = v15;
    v15 = [v16 init];
    v18 = [v17 speakableTextOverride];
    [v15 &selRef_userClassified + 7];

    v19 = [v17 &selRef_setUserSessionState_];
    [v15 &selRef:v19 setUserSessionState:?];
  }

  [v4 setContent_];

  v20 = [v3 dialogIdentifier];
  [v4 setDialogIdentifier_];

  [v4 setPrintedOnly_];
  [v4 setSpokenOnly_];

  return v4;
}

id specialized static DialogMetricsLogger.getSparseAddDialog(addDialog:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AF0]) init];
  result = [a1 dialogs];
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADialog, 0x1E69C77A0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setDialogs_];

    v12 = [a1 listenAfterSpeaking];
    [v2 setListenAfterSpeaking_];

    v13 = [a1 listenAfterSpeakingBehavior];
    [v2 setListenAfterSpeakingBehavior_];

    return v2;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12A1FE0](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (!specialized static DialogMetricsLogger.getSparseDialog(_:)(v9))
      {
        [objc_allocWithZone(MEMORY[0x1E69C77A0]) init];
      }

      ++v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized static DialogMetricsLogger.logAnalytics(dialog:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.instrumentation);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "Logging Dialog to AFAnalytics", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v26 = v12;
  v13 = specialized static DialogMetricsLogger.getSparseAddDialog(addDialog:)(a1);
  v14 = [v13 dictionary];
  if (v14)
  {
    v15 = v14;
    v25 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    *&v24 = v15;
    outlined init with take of Any(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v17 = v22;
    v26 = v22;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v24);
    outlined destroy of Any?(&v24);
    v17 = v26;
  }

  v18 = [objc_opt_self() sharedAnalytics];
  if (v18)
  {
    v19 = v18;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v17);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v6, v2);
}

SiriKitRuntime::EmergencyAffinityScorer __swiftcall EmergencyAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CAA0;
  v1 = 0xD000000000000022;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized EmergencyAffinityScorer.score(input:environment:)()
{
  v157 = type metadata accessor for Google_Protobuf_StringValue();
  v142 = *(v157 - 8);
  v0 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v143 = &v137 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v152 = &v137 - v3;
  v160 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v158 = *(v160 - 8);
  v4 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v144 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v137 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v147 = *(v8 - 8);
  v148 = v8;
  v9 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v146 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UserParse();
  v155 = *(v16 - 8);
  v156 = v16;
  v17 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v154 = (&v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v153 = &v137 - v21;
  v22 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v23 = *(v22 - 8);
  v150 = v22;
  v151 = v23;
  v24 = v23[8];
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v137 - v27;
  v28 = type metadata accessor for USOParse();
  v29 = *(v28 - 8);
  v30 = *(v29 + 8);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Parse();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v34 + 88))(v37, v33) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DC659000, v50, v51, "EmergencyAffinityScorer Got unexpected parse", v52, 2u);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    (*(v34 + 8))(v37, v33);
    return 2;
  }

  (*(v34 + 96))(v37, v33);
  (*(v29 + 4))(v32, v37, v28);
  v38 = specialized static AffinityScorerUtils.getTask(_:)();
  v39 = v29;
  if (!v38)
  {
    if (one-time initialization token for executor != -1)
    {
LABEL_86:
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.executor);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "EmergencyAffinityScorer Could not extract usoTask from parse", v58, 2u);
      MEMORY[0x1E12A2F50](v58, -1, -1);

      v39[1](v32, v28);
      return 2;
    }

    v39[1](v32, v28);
    return 2;
  }

  v141 = v38;
  v138 = v28;
  v139 = v29;
  v40 = v154;
  v140 = v32;
  v41 = USOParse.userParse.getter();
  v42 = v40;
  v43 = MEMORY[0x1E129C0F0](v41);
  (*(v155 + 8))(v40, v156);
  v44 = *(v43 + 16);
  if (v44)
  {
    v28 = 0;
    v45 = (v12 + 16);
    v46 = (v12 + 8);
    while (v28 < *(v43 + 16))
    {
      (*(v12 + 16))(v15, v43 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v11);
      v42 = v15;
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {

        v48 = v153;
        (*(v12 + 32))(v153, v15, v11);
        v47 = 0;
        goto LABEL_20;
      }

      ++v28;
      (*v46)(v15, v11);
      if (v44 == v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_84:

    v39[1](v11, v46);
LABEL_36:
    (*(v15 + 1))(v45, v28);
    return 2;
  }

LABEL_8:

  v47 = 1;
  v48 = v153;
LABEL_20:
  (*(v12 + 56))(v48, v47, 1, v11);
  if ((*(v12 + 48))(v48, 1, v11) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v48);
    v15 = v139;
    v28 = v138;
    v45 = v140;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.executor);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1DC659000, v60, v61, "EmergencyAffinityScorer Could not extract userStatedTask", v62, 2u);
      MEMORY[0x1E12A2F50](v62, -1, -1);

      (*(v15 + 1))(v45, v28);
      return 2;
    }

    goto LABEL_36;
  }

  v63 = v146;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(v12 + 8))(v48, v11);
  v64 = v145;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v147 + 8))(v63, v148);
  v66 = v150;
  v65 = v151;
  v11 = v149;
  v151[4](v149, v64, v150);
  if (UsoTask.baseEntityAsString.getter() != 0xD000000000000014 || 0x80000001DCA82520 != v67)
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v68 = v140;
    if (v69)
    {
      goto LABEL_30;
    }

    if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v77 == 0xEE00676E69747465)
    {
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {
        if (UsoTask.baseEntityAsString.getter() == 0x505F6E6F6D6D6F63 && v109 == 0xED00006E6F737265)
        {
        }

        else
        {
          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v110 & 1) == 0)
          {
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v133 = type metadata accessor for Logger();
            __swift_project_value_buffer(v133, static Logger.executor);
            v42 = Logger.logObject.getter();
            v134 = static os_log_type_t.debug.getter();
            v135 = os_log_type_enabled(v42, v134);
            v15 = v139;
            v28 = v138;
            v45 = v140;
            v46 = v150;
            v39 = v151;
            if (v135)
            {
              v53 = 2;
              v136 = swift_slowAlloc();
              *v136 = 0;
              _os_log_impl(&dword_1DC659000, v42, v134, "EmergencyAffinityScorer Didn't detect any supported entities", v136, 2u);
              MEMORY[0x1E12A2F50](v136, -1, -1);

              v39[1](v11, v46);
              (*(v15 + 1))(v45, v28);
              return v53;
            }

            goto LABEL_84;
          }
        }

        v111 = UsoTask.verbString.getter();
        v81 = v112;
        v161[0] = v111;
        v161[1] = v112;
        MEMORY[0x1EEE9AC00](v111);
        *(&v137 - 2) = v161;
        LODWORD(v159) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v137 - 4), &outlined read-only object #0 of EmergencyAffinityScorer.score(input:environment:));
        swift_arrayDestroy();

        v113 = Siri_Nlu_External_UsoGraph.identifiers.getter();
        v114 = 0;
        v115 = *(v113 + 16);
        v116 = (v142 + 8);
        v117 = (v158 + 8);
        while (1)
        {
          if (v115 == v114)
          {

            goto LABEL_75;
          }

          if (v114 >= *(v113 + 16))
          {
            __break(1u);
LABEL_88:
            swift_once();
LABEL_49:
            v87 = type metadata accessor for Logger();
            __swift_project_value_buffer(v87, static Logger.executor);
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.debug.getter();
            v90 = os_log_type_enabled(v88, v89);
            v91 = v139;
            v92 = v140;
            v94 = v150;
            v93 = v151;
            v95 = v149;
            if (v90)
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v161[0] = v97;
              *v96 = 136315138;
              *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v81, v161);
              _os_log_impl(&dword_1DC659000, v88, v89, "EmergencyAffinityScorer Detected supported identifier: %s", v96, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v97);
              MEMORY[0x1E12A2F50](v97, -1, -1);
              MEMORY[0x1E12A2F50](v96, -1, -1);
            }

            (v93[1])(v95, v94);
            (*(v91 + 1))(v92, v138);
            return 3;
          }

          (*(v158 + 16))(v144, v113 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v114, v160);
          v81 = v143;
          Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
          v119 = Google_Protobuf_StringValue.value.getter();
          v121 = v120;
          (*v116)(v81, v157);
          if (v119 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v121)
          {
            break;
          }

          ++v114;
          v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v117)(v144, v160);
          if (v118)
          {
            goto LABEL_68;
          }
        }

        (*v117)(v144, v160);
LABEL_68:

        if (v159)
        {
          v122 = v140;
          v124 = v150;
          v123 = v151;
          v125 = v149;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v126 = type metadata accessor for Logger();
          __swift_project_value_buffer(v126, static Logger.executor);
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v161[0] = v130;
            *v129 = 136315138;
            *(v129 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001DCA7ABA0, v161);
            _os_log_impl(&dword_1DC659000, v127, v128, "EmergencyAffinityScorer Detected supported identifier: %s", v129, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v130);
            MEMORY[0x1E12A2F50](v130, -1, -1);
            MEMORY[0x1E12A2F50](v129, -1, -1);
          }

          (v123[1])(v125, v124);
          (*(v139 + 1))(v122, v138);
          return 3;
        }

LABEL_75:
        v104 = v140;
        v106 = v150;
        v105 = v151;
        v107 = v149;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        __swift_project_value_buffer(v131, static Logger.executor);
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();
        v132 = os_log_type_enabled(v99, v100);
        v102 = v139;
        v103 = v138;
        if (v132)
        {
          goto LABEL_55;
        }

LABEL_56:

        (v105[1])(v107, v106);
        (*(v102 + 1))(v104, v103);
        return 0;
      }
    }

    v79 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v80 = 0;
    v39 = *(v79 + 16);
    v81 = 0x80000001DCA82500;
    v82 = (v142 + 8);
    v32 = (v158 + 8);
    while (v39 != v80)
    {
      if (v80 >= *(v79 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      (*(v158 + 16))(v159, v79 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v80, v160);
      v28 = v152;
      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v84 = Google_Protobuf_StringValue.value.getter();
      v86 = v85;
      (*v82)(v28, v157);
      if (v84 == 0xD000000000000012 && 0x80000001DCA82500 == v86)
      {

        (*v32)(v159, v160);
LABEL_48:

        if (one-time initialization token for executor != -1)
        {
          goto LABEL_88;
        }

        goto LABEL_49;
      }

      ++v80;
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v32)(v159, v160);
      if (v83)
      {
        goto LABEL_48;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.executor);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    v101 = os_log_type_enabled(v99, v100);
    v102 = v139;
    v103 = v138;
    v104 = v140;
    v106 = v150;
    v105 = v151;
    v107 = v149;
    if (!v101)
    {
      goto LABEL_56;
    }

LABEL_55:
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_1DC659000, v99, v100, "EmergencyAffinityScorer No matching identifiers found", v108, 2u);
    MEMORY[0x1E12A2F50](v108, -1, -1);
    goto LABEL_56;
  }

  v68 = v140;
LABEL_30:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static Logger.executor);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v139;
  v75 = v138;
  if (v73)
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1DC659000, v71, v72, "EmergencyAffinityScorer Detected common_CrisisSupport entity", v76, 2u);
    MEMORY[0x1E12A2F50](v76, -1, -1);
  }

  (v65[1])(v11, v66);
  (*(v74 + 1))(v68, v75);
  return 3;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EmergencyCallMitigatorOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t EmergencyCallMitigatorOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t EmergencyCallMitigatorOverride.__allocating_init(topRankedParse:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  outlined init with take of Siri_Nlu_External_UserParse?(a1, v5 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse);
  return v5;
}

uint64_t EmergencyCallMitigatorOverride.init(topRankedParse:)(uint64_t a1)
{
  *(v1 + 16) = 1;
  outlined init with take of Siri_Nlu_External_UserParse?(a1, v1 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse);
  return v1;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall EmergencyCallMitigatorOverride.evaluate()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Siri_Nlu_External_UserParse?(v1 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = outlined destroy of Siri_Nlu_External_UserParse?(v6);
    v13 = 11;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    specialized static EmergencyCallMitigatorOverride.isEmergencyRequest(userParse:)();
    v15 = v14;
    result = (*(v8 + 8))(v11, v7);
    if (v15)
    {
      v13 = 3;
    }

    else
    {
      v13 = 11;
    }
  }

  *v2 = v13;
  return result;
}

uint64_t outlined destroy of Siri_Nlu_External_UserParse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EmergencyCallMitigatorOverride.__deallocating_deinit()
{
  outlined destroy of Siri_Nlu_External_UserParse?(v0 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance EmergencyCallMitigatorOverride()
{
  (*(**v0 + 128))();
  v2 = *(v1 + 8);

  return v2();
}

void specialized static EmergencyCallMitigatorOverride.isEmergencyRequest(userParse:)()
{
  v0 = static ConversionUtils.toLegacyUserParse(from:)();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = [v0 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_62;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_4:
  v50 = v1;
  v5 = 0;
  v1 = v3 & 0xC000000000000001;
  v51 = v3 + 32;
  v52 = v3 & 0xFFFFFFFFFFFFFF8;
  v6 = 0x80000001DCA7AB70;
  v7 = 0x1E69D2000;
  v8 = &selRef_setMitigationSource_;
  v9 = &selRef_setMitigationSource_;
  v53 = v3;
  v48 = v3 & 0xC000000000000001;
  v49 = v4;
  while (1)
  {
    if (v1)
    {
      MEMORY[0x1E12A1FE0](v5, v3);
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v5 >= *(v52 + 16))
      {
        __break(1u);
        return;
      }

      v11 = *(v51 + 8 * v5);
      swift_unknownObjectRetain();
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_61;
      }
    }

    v12 = *(v7 + 1448);
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = [v13 v8[154]];
    v1 = [v14 v9[155]];

    type metadata accessor for USOSerializedIdentifier();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v15;
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = 0x1E8647000;
      if (v16)
      {
        break;
      }

      goto LABEL_5;
    }

    v16 = __CocoaSet.count.getter();
    v3 = 0x1E8647000;
    if (v16)
    {
      break;
    }

LABEL_5:

    v3 = v53;
    v1 = v48;
    v4 = v49;
    v7 = 0x1E69D2000uLL;
    v8 = &selRef_setMitigationSource_;
    v9 = &selRef_setMitigationSource_;
LABEL_6:
    swift_unknownObjectRelease();
    if (v5 == v4)
    {

LABEL_64:

      return;
    }
  }

  v17 = 0;
  v57 = v15 & 0xFFFFFFFFFFFFFF8;
  v58 = v15 & 0xC000000000000001;
  v56 = v15 + 32;
  v54 = v16;
  while (1)
  {
    if (v58)
    {
      v18 = MEMORY[0x1E12A1FE0](v17, v55);
    }

    else
    {
      if (v17 >= *(v57 + 16))
      {
        goto LABEL_60;
      }

      v18 = *(v56 + 8 * v17);
    }

    v19 = v18;
    v10 = __OFADD__(v17++, 1);
    if (v10)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_63;
      }

      goto LABEL_4;
    }

    v20 = [v18 *(v3 + 1248)];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (v22 == 0xD000000000000014 && v6 == v24)
      {
        break;
      }

      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_33;
      }
    }

    v26 = [v19 *(v3 + 1248)];
    if (!v26)
    {
      goto LABEL_45;
    }

    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == 0x6D754E656E6F6870 && v30 == 0xEB00000000726562)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1)
    {
      goto LABEL_33;
    }

LABEL_45:
    v43 = [v19 *(v3 + 1248)];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (v45 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v47)
      {

        goto LABEL_57;
      }

      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {

LABEL_57:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
    }

    if (v17 == v16)
    {
      goto LABEL_5;
    }
  }

LABEL_33:
  v31 = v6;
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  v32 = static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
  v1 = [v19 value];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (!*(v32 + 16) || (v36 = *(v32 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v37 = Hasher._finalize()(), v1 = v32 + 56, v38 = -1 << *(v32 + 32), v39 = v37 & ~v38, ((*(v32 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0))
  {
LABEL_44:

    v6 = v31;
    v3 = &selRef_setMitigationSource_;
    v16 = v54;
    goto LABEL_45;
  }

  v40 = ~v38;
  while (1)
  {
    v41 = (*(v32 + 48) + 16 * v39);
    v42 = *v41 == v33 && v41[1] == v35;
    if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v39 = (v39 + 1) & v40;
    if (((*(v1 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for EmergencyCallMitigatorOverride()
{
  result = type metadata singleton initialization cache for EmergencyCallMitigatorOverride;
  if (!type metadata singleton initialization cache for EmergencyCallMitigatorOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for EmergencyCallMitigatorOverride()
{
  type metadata accessor for Siri_Nlu_External_UserParse?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t type metadata accessor for USOSerializedIdentifier()
{
  result = lazy cache variable for type metadata for USOSerializedIdentifier[0];
  if (!lazy cache variable for type metadata for USOSerializedIdentifier[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for USOSerializedIdentifier);
  }

  return result;
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

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static EmergencyRequestUtils.isEmergencyRequest(userDialogAct:)()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    v2 = [v1 task];
    v3 = [v2 identifiers];

    type metadata accessor for USOSerializedIdentifier();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v4;
    if (v4 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v6 = 0;
      v7 = v46 & 0xC000000000000001;
      v8 = v46 & 0xFFFFFFFFFFFFFF8;
      v9 = v46 + 32;
      while (1)
      {
        if (v7)
        {
          v10 = MEMORY[0x1E12A1FE0](v6, v46);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_45;
          }

          v10 = *(v9 + 8 * v6);
        }

        v11 = v10;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v13 = [v10 namespaceString];
        if (!v13)
        {
          goto LABEL_17;
        }

        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == 0xD000000000000014 && 0x80000001DCA7AB70 == v17)
        {
          goto LABEL_20;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
LABEL_17:
          v20 = [v11 namespaceString];
          if (!v20)
          {
            goto LABEL_33;
          }

          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          if (v22 != 0x6D754E656E6F6870 || v24 != 0xEB00000000726562)
          {
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v45 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_21;
          }

LABEL_20:
        }

LABEL_21:
        v25 = v7;
        v26 = i;
        if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
        {
          swift_once();
        }

        v27 = static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
        v28 = [v11 value];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (*(v27 + 16))
        {
          v32 = *(v27 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v33 = Hasher._finalize()();
          v34 = -1 << *(v27 + 32);
          v35 = v33 & ~v34;
          if ((*(v27 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            v36 = ~v34;
            while (1)
            {
              v37 = (*(v27 + 48) + 16 * v35);
              v38 = *v37 == v29 && v37[1] == v31;
              if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v35 = (v35 + 1) & v36;
              if (((*(v27 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            swift_unknownObjectRelease();

            return 1;
          }
        }

LABEL_32:

        i = v26;
        v7 = v25;
        v9 = v46 + 32;
        v8 = v46 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
        v39 = [v11 namespaceString];
        if (v39)
        {
          v40 = v39;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          if (v41 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v43)
          {

            swift_unknownObjectRelease();

            return 1;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v44)
          {

            swift_unknownObjectRelease();
            return 1;
          }
        }

        else
        {
        }

        if (v6 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

LABEL_47:

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t USOSerializedIdentifier.isEmergencyRequest.getter()
{
  if (USOSerializedIdentifier.isEmergencyNumber.getter())
  {
    return 1;
  }

  return USOSerializedIdentifier.isEmergencyOrganization.getter();
}

uint64_t USOSerializedIdentifier.isEmergencyNumber.getter()
{
  v1 = [v0 namespaceString];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD000000000000014 && 0x80000001DCA7AB70 == v5)
    {
LABEL_14:

      goto LABEL_15;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_15;
    }
  }

  v8 = [v0 namespaceString];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 0x6D754E656E6F6870 && v12 == 0xEB00000000726562)
  {
    goto LABEL_14;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  v16 = static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
  v17 = [v0 value];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  LOBYTE(v16) = specialized Set.contains(_:)(v18, v20, v16);

  return v16 & 1;
}

uint64_t USOSerializedIdentifier.isEmergencyOrganization.getter()
{
  v1 = [v0 namespaceString];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t USOSerializedIdentifier.KnownEmergencyNamespaces.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x6D754E656E6F6870;
  }

  return 0xD000000000000015;
}

uint64_t *USOSerializedIdentifier.emergencyNumberSemanticValueSet.unsafeMutableAddressor()
{
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  return &static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
}

BOOL USOSerializedIdentifier.KnownEmergencyIdentifiers.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of USOSerializedIdentifier.KnownEmergencyIdentifiers.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for emergencyNumberSemanticValueSet()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for emergencyNumberSemanticValueSet);
  result = swift_arrayDestroy();
  static USOSerializedIdentifier.emergencyNumberSemanticValueSet = v0;
  return result;
}

uint64_t static USOSerializedIdentifier.emergencyNumberSemanticValueSet.getter()
{
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E656E6F6870;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6D754E656E6F6870;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v4 == 1)
  {
    v6 = 0xEB00000000726562;
  }

  else
  {
    v6 = 0x80000001DCA7ABA0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001DCA7AB70;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001DCA7ABA0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001DCA7AB70;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance USOSerializedIdentifier.KnownEmergencyNamespaces()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized USOSerializedIdentifier.KnownEmergencyNamespaces.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance USOSerializedIdentifier.KnownEmergencyNamespaces(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0x6D754E656E6F6870;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001DCA7ABA0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x80000001DCA7AB70;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t specialized USOSerializedIdentifier.KnownEmergencyNamespaces.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of USOSerializedIdentifier.KnownEmergencyNamespaces.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers()
{
  result = lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers;
  if (!lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces()
{
  result = lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces;
  if (!lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces);
  }

  return result;
}

uint64_t _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EmptyAsrOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t EmptyAsrOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t EmptyAsrOverride.aceInputOrigin.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t EmptyAsrOverride.__allocating_init(endpointMode:aceInputOrigin:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:didPreviouslyFallbackToServer:isSpeechRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9)
{
  result = swift_allocObject();
  *(result + 16) = 6;
  *(result + 40) = a5;
  *(result + 41) = a6;
  *(result + 24) = a1;
  *(result + 32) = a7;
  *(result + 42) = a8;
  *(result + 44) = a4;
  *(result + 43) = a9;
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t EmptyAsrOverride.init(endpointMode:aceInputOrigin:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:didPreviouslyFallbackToServer:isSpeechRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9)
{
  *(v9 + 16) = 6;
  *(v9 + 40) = a5;
  *(v9 + 41) = a6;
  *(v9 + 24) = a1;
  *(v9 + 32) = a7;
  *(v9 + 42) = a8;
  *(v9 + 44) = a4;
  *(v9 + 43) = a9;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  return v9;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall EmptyAsrOverride.evaluate()()
{
  v2 = v1;
  v40 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-v5];
  v7 = type metadata accessor for InputOrigin();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38[-v13];
  v15 = *(v2 + 48);
  v16 = *(v2 + 56);

  InputOrigin.init(aceValue:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of InputOrigin?(v6);
    v39 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 104))(v11, *MEMORY[0x1E69D3508], v7);
    lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v43[0] == v41 && v43[1] == v42)
    {
      v39 = 0;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v17 = *(v8 + 8);
    v17(v11, v7);
    v17(v14, v7);
  }

  v18 = *(v2 + 24);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  swift_retain_n();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43[0] = v23;
    *v22 = 136316930;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v43);
    *(v22 + 12) = 2080;
    if (*(v2 + 44))
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (*(v2 + 44))
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v43);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    v41 = v18;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v43);

    *(v22 + 24) = v29;
    *(v22 + 32) = 1024;
    LODWORD(v29) = *(v2 + 40);

    *(v22 + 34) = v29;

    *(v22 + 38) = 1024;
    LODWORD(v29) = *(v2 + 41);

    *(v22 + 40) = v29;

    *(v22 + 44) = 2048;
    v30 = *(v2 + 32);

    *(v22 + 46) = v30;

    *(v22 + 54) = 1024;
    LODWORD(v30) = *(v2 + 43);

    *(v22 + 56) = v30;

    *(v22 + 60) = 1024;
    v31 = *(v2 + 42);

    *(v22 + 62) = v31;

    _os_log_impl(&dword_1DC659000, v20, v21, "[EmptyAsrOverride]\ninputOrigin: %s,\nisNlEmpty: %s,\nendpointMode:%s,\nisFirstRequestInSession:%{BOOL}d,\nisFlowAwaitingInput:%{BOOL}d,\nconsecutiveEmptyInputs:%ld,\nisSpeechRequest:%{BOOL}d,\ndidPreviouslyFallbackToServer:%{BOOL}d", v22, 0x42u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 43) == 1 && *(v2 + 44) == 1)
  {
    if (*(v2 + 40))
    {
      v33 = 7;
    }

    else if (v39 & 1 | (v18 == 2) || (*(v2 + 42) & 1) != 0)
    {
      v33 = 8;
    }

    else
    {
      v34 = *(v2 + 32);
      if (v34 < 1)
      {
        if (*(v2 + 41))
        {
          v33 = 11;
        }

        else
        {
          v33 = 8;
        }
      }

      else
      {

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134217984;
          *(v37 + 4) = v34;

          _os_log_impl(&dword_1DC659000, v35, v36, "[EmptyAsrOverride] Ignore repetitive empty parse. repetition: %ld", v37, 0xCu);
          MEMORY[0x1E12A2F50](v37, -1, -1);
        }

        else
        {
        }

        v33 = 8;
      }
    }
  }

  else
  {
    v33 = 11;
  }

  *v40 = v33;
  return result;
}

uint64_t EmptyAsrOverride.deinit()
{
  v1 = *(v0 + 56);

  return v0;
}

uint64_t EmptyAsrOverride.__deallocating_deinit()
{
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance EmptyAsrOverride()
{
  (*(**v0 + 184))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t outlined destroy of InputOrigin?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin()
{
  result = lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin;
  if (!lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin)
  {
    type metadata accessor for InputOrigin();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin);
  }

  return result;
}

uint64_t EmptyASRRule.ruleType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t EmptyASRRule.endpointMode.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t EmptyASRRule.__allocating_init(endpointMode:isFirstRequestInSession:isSystemPrompted:didPreviouslyFallbackToServer:)(uint64_t a1, char a2, char a3, char a4, char a5)
{
  result = swift_allocObject();
  *(result + 16) = 6;
  *(result + 24) = a1;
  *(result + 32) = a2 & 1;
  *(result + 33) = a3;
  *(result + 34) = a4;
  *(result + 35) = a5;
  return result;
}

uint64_t EmptyASRRule.init(endpointMode:isFirstRequestInSession:isSystemPrompted:didPreviouslyFallbackToServer:)(uint64_t a1, char a2, char a3, char a4, char a5)
{
  *(v5 + 16) = 6;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2 & 1;
  *(v5 + 33) = a3;
  *(v5 + 34) = a4;
  *(v5 + 35) = a5;
  return v5;
}

SiriKitRuntime::PreExecutionDecision __swiftcall EmptyASRRule.evaluate()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315906;
    v12 = *(v0 + 24);
    v13 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14AFEndpointModeVSgMd, &_sSo14AFEndpointModeVSgMR);
    v7 = Optional.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    LODWORD(v9) = *(v0 + 33);

    *(v5 + 14) = v9;

    *(v5 + 18) = 1024;
    LODWORD(v9) = *(v0 + 34);

    *(v5 + 20) = v9;

    *(v5 + 24) = 1024;
    v10 = *(v0 + 35);

    *(v5 + 26) = v10;

    _os_log_impl(&dword_1DC659000, v3, v4, "endpointMode:%s, isFirstRequestInSession:%{BOOL}d, isSystemPrompted:%{BOOL}d, didPreviouslyFallbackToServer:%{BOOL}d", v5, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);

    if ((*(v1 + 33) & 1) == 0)
    {
      goto LABEL_5;
    }

    return 7;
  }

  if (*(v0 + 33))
  {
    return 7;
  }

LABEL_5:
  if (*(v1 + 32))
  {
    if (*(v1 + 34) != 1)
    {
      return 8;
    }
  }

  else if (*(v1 + 34) != 1 || *(v1 + 24) == 2)
  {
    return 8;
  }

  if (*(v1 + 35) == 1)
  {
    return 8;
  }

  return 11;
}

uint64_t SiriRequestContext.init(publisher:aceService:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, a3);

  return outlined init with take of ReferenceResolutionClientProtocol(a2, a3 + 40);
}

uint64_t EncoreConversation.encoreEventsHandled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreEventsHandled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EncoreConversation.encoreRegistered.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EncoreConversation.State.description.getter()
{
  v1 = type metadata accessor for EncoreConversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of EncoreEngineEvent(v0, v4, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR);
      outlined destroy of EncoreConversation.State(&v4[*(v11 + 48)], type metadata accessor for RequestContinuation);
      outlined destroy of EncoreConversation.State(v4, type metadata accessor for SiriRequest);
      return 0x6465747065636361;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
      return 0x7964616572;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
    v9 = *(v8 + 48);
    v10 = *&v4[*(v8 + 64)];

    outlined destroy of EncoreConversation.State(&v4[v9], type metadata accessor for RequestContinuation);
    outlined destroy of EncoreConversation.State(v4, type metadata accessor for SiriRequest);
    return 0x6E69726170657270;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR);
    outlined destroy of EncoreConversation.State(&v4[*(v6 + 48)], type metadata accessor for RequestContinuation);
    outlined destroy of EncoreConversation.State(v4, type metadata accessor for SiriRequest);
    return 0x726F467964616572;
  }

  else
  {
    outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreConversation.State);
    return 0x697474696D6D6F63;
  }
}

uint64_t EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, void *))
{
  v15 = a13(a1, a2, a3, a4);

  swift_unknownObjectRelease();

  (*(*(a11 - 8) + 8))(a1, a11);
  return v15;
}

uint64_t closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return EncoreConversation.setupEncoreEventHandling()();
}

uint64_t EncoreConversation.setupEncoreEventHandling()()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;
  *(v1 + 48) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.setupEncoreEventHandling(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Register Encore Handler.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = static ReactiveUIEventActor.shared;
  v0[8] = static ReactiveUIEventActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.setupEncoreEventHandling(), v6, 0);
}

{
  v1 = v0[8];
  v2 = v0[6];
  ReactiveUIEventActor.setHandler(_:)(partial apply for closure #1 in EncoreConversation.setupEncoreEventHandling(), v0[5]);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.setupEncoreEventHandling(), v2, 0);
}

{
  v1 = v0[7];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Registered Encore Handler.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered;
  swift_beginAccess();
  *(v5 + v6) = 1;
  v7 = v0[1];

  return v7();
}

uint64_t EncoreConversation.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "[EncoreConversation] deinit.", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v10 = *(v1 + 16);
  v11 = *(v10 + 32);

  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v10, &v25);
  OS_dispatch_semaphore.signal()();

  v12 = *(v1 + 24);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in EncoreConversation.deinit, v14);

  v15 = *(v1 + 16);

  v16 = *(v1 + 24);

  v17 = *(v1 + 40);

  v18 = *(v1 + 48);

  v19 = *(v1 + 64);

  v20 = *(v1 + 72);

  outlined destroy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest, &_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  outlined destroy of EncoreConversation.State(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state, type metadata accessor for EncoreConversation.State);
  v21 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks);

  v22 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine));
  return v1;
}

uint64_t closure #1 in EncoreConversation.deinit()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreEngine.stop()();
}

uint64_t EncoreEngine.stop()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = type metadata accessor for EncoreEngineEvent(0);
  v1[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](EncoreEngine.stop(), 0, 0);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.stop(), v3, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0[2] + 16);
  outlined init with copy of EncoreEngineEvent(v1, v3, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v9 = *(*v8 + 96);
  outlined init with copy of EncoreEngineEvent(v3, v2, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v4, v6);
  outlined destroy of EncoreConversation.State(v3, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for EncoreEngineEvent);

  v10 = v0[1];

  return v10();
}

uint64_t EncoreConversation.__deallocating_deinit()
{
  EncoreConversation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in EncoreConversation.setupEncoreEventHandling()(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = one-time initialization token for shared;

  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;
  v12 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling(), v13);
}

uint64_t closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling(), v6, 0);
}

uint64_t closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()()
{
  v1 = *(v0 + 16);
  EncoreConversation.handleEncoreEvent(event:)(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void EncoreConversation.handleEncoreEvent(event:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for EncoreConversation.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.executor);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_1DC659000, v20, v21, "[EncoreConversation] handleEncoreEvent %@", v22, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v25 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreEventsHandled;
  swift_beginAccess();
  v26 = *(v2 + v25);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + v25) = v28;
  v29 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v2 + v29, v16, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    outlined destroy of EncoreConversation.State(v16, type metadata accessor for EncoreConversation.State);
    v11 = v53;
LABEL_10:
    v31 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest;
    swift_beginAccess();
    outlined init with copy of ReferenceResolutionClientProtocol?(v2 + v31, v10, &_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
    v32 = type metadata accessor for SiriRequest(0);
    LODWORD(v31) = (*(*(v32 - 8) + 48))(v10, 1, v32);
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
    if (v31 == 1)
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DC659000, v33, v34, "[EncoreConversation] handleEncoreEvent failed. Missing siriRequest)", v35, 2u);
        MEMORY[0x1E12A2F50](v35, -1, -1);
      }

      return;
    }

    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
    v37 = one-time initialization token for shared;
    v18 = v19;

    if (v37 == -1)
    {
LABEL_15:
      v38 = static ConversationActor.shared;
      v39 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor);
      v40 = swift_allocObject();
      v40[2] = v38;
      v40[3] = v39;
      v40[4] = v2;
      v40[5] = v18;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in EncoreConversation.handleEncoreEvent(event:), v40);

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v11 = v53;
  if (!EnumCaseMultiPayload)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    goto LABEL_10;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54 = v44;
    *v43 = 136315138;
    v45 = v2 + v29;
    v46 = v52;
    outlined init with copy of EncoreEngineEvent(v45, v52, type metadata accessor for EncoreConversation.State);
    v47 = EncoreConversation.State.description.getter();
    v49 = v48;
    outlined destroy of EncoreConversation.State(v46, type metadata accessor for EncoreConversation.State);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v54);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_1DC659000, v41, v42, "[EncoreConversation] handleEncoreEvent failed. Invalid state %s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

  outlined destroy of EncoreConversation.State(v16, type metadata accessor for EncoreConversation.State);
}

Swift::Void __swiftcall EncoreConversation.setEncoreRegistered(registered:)(Swift::Bool registered)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered;
  swift_beginAccess();
  *(v1 + v3) = registered;
}

uint64_t closure #1 in EncoreConversation.handleEncoreEvent(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v5[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v11 = type metadata accessor for EncoreEngineEvent(0);
  v5[10] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.handleEncoreEvent(event:), v13, 0);
}

uint64_t closure #1 in EncoreConversation.handleEncoreEvent(event:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[3];
  v0[12] = *(v0[2] + 24);
  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  v4 = one-time initialization token for shared;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.handleEncoreEvent(event:), v6, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0[12] + 16);
  outlined init with copy of EncoreEngineEvent(v1, v3, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v9 = *(*v8 + 96);
  outlined init with copy of EncoreEngineEvent(v3, v2, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v4, v6);
  outlined destroy of EncoreConversation.State(v3, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for EncoreEngineEvent);

  v10 = v0[1];

  return v10();
}

uint64_t EncoreConversation.cancel()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = type metadata accessor for EncoreEngineEvent(0);
  v1[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.cancel(), v9, 0);
}

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
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Cancel. Sending ensureReady event to interrupt any running request.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[2];

  v0[11] = *(v7 + 24);
  *v5 = closure #1 in EncoreConversation.cancel();
  v5[1] = 0;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.cancel(), v8, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0[11] + 16);
  outlined init with copy of EncoreEngineEvent(v1, v3, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v9 = *(*v8 + 96);
  outlined init with copy of EncoreEngineEvent(v3, v2, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v4, v6);
  outlined destroy of EncoreConversation.State(v3, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for EncoreEngineEvent);

  v10 = v0[1];

  return v10();
}

void closure #1 in EncoreConversation.cancel()()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "[EncoreConversation] Ensured ready due to cancellation.", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t EncoreConversation.ensureReady(timeout:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for TimeoutError();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for ConversationCommitResult();
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = type metadata accessor for EncoreConversation.State(0);
  v2[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v2[19] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), v10, 0);
}

uint64_t EncoreConversation.ensureReady(timeout:)()
{
  v75 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  *(v0 + 160) = __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v74[0] = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
    swift_beginAccess();
    outlined init with copy of EncoreEngineEvent(v6 + v9, v5, type metadata accessor for EncoreConversation.State);
    v10 = EncoreConversation.State.description.getter();
    v12 = v11;
    outlined destroy of EncoreConversation.State(v5, type metadata accessor for EncoreConversation.State);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v74);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreConversation] Ensuring ready. state: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v16 = *(v0 + 80);
  v17 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v16 + v17, v14, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v37 = *(v0 + 136);
      v26 = *v37;
      *(v0 + 192) = *v37;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DC659000, v38, v39, "[EncoreConversation] ensureReady waiting for commit to complete.", v40, 2u);
        MEMORY[0x1E12A2F50](v40, -1, -1);
      }

      v41 = *(v0 + 72);

      v31 = DispatchTimeInterval.seconds.getter();
      v42 = *(MEMORY[0x1E69D3548] + 4);

      v43 = swift_task_alloc();
      *(v0 + 200) = v43;
      *v43 = v0;
      v43[1] = EncoreConversation.ensureReady(timeout:);
      v36 = *(v0 + 112);
      v33 = *(v0 + 120);
      v35 = &async function pointer to partial apply for closure #2 in EncoreConversation.ensureReady(timeout:);
      goto LABEL_15;
    case 2:
      v24 = *(v0 + 136);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v26 = *(v24 + *(v25 + 64));
      *(v0 + 168) = v26;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DC659000, v27, v28, "[EncoreConversation] ensureReady waiting for prepare to complete.", v29, 2u);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      v30 = *(v0 + 72);

      *(v0 + 232) = *(v25 + 48);
      v31 = DispatchTimeInterval.seconds.getter();
      v32 = *(MEMORY[0x1E69D3548] + 4);

      v33 = swift_task_alloc();
      *(v0 + 176) = v33;
      *v33 = v0;
      v33[1] = EncoreConversation.ensureReady(timeout:);
      v35 = &async function pointer to partial apply for closure #1 in EncoreConversation.ensureReady(timeout:);
      v36 = MEMORY[0x1E69E7CA8] + 8;
LABEL_15:
      v34.n128_f64[0] = v31;

      return MEMORY[0x1EEE40F70](v33, v35, v26, v36, v34);
    case 0:
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 136), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
      v20 = *(v0 + 136);
      v19 = *(v0 + 144);
      v21 = *(v0 + 120);
      v22 = *(v0 + 104);

      v23 = *(v0 + 8);
LABEL_27:

      return v23();
  }

  v44 = *(v0 + 80);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 144);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v74[0] = v49;
    *v48 = 136315138;
    outlined init with copy of EncoreEngineEvent(v16 + v17, v47, type metadata accessor for EncoreConversation.State);
    v50 = EncoreConversation.State.description.getter();
    v52 = v51;
    outlined destroy of EncoreConversation.State(v47, type metadata accessor for EncoreConversation.State);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v74);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1DC659000, v45, v46, "[EncoreConversation] ensureReady can only be called for committed conversation. Invalid state %s.", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1E12A2F50](v49, -1, -1);
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  v54 = *(v0 + 136);
  v55 = *(v0 + 144);
  v74[0] = 0;
  v74[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  strcpy(v74, "Invalid state ");
  HIBYTE(v74[1]) = -18;
  outlined init with copy of EncoreEngineEvent(v16 + v17, v55, type metadata accessor for EncoreConversation.State);
  v56 = EncoreConversation.State.description.getter();
  MEMORY[0x1E12A1580](v56);

  outlined destroy of EncoreConversation.State(v55, type metadata accessor for EncoreConversation.State);
  MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA82690);
  v57 = v74[0];
  v58 = v74[1];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v59 = swift_allocError();
  *v60 = v57;
  v60[1] = v58;
  swift_willThrow();
  outlined destroy of EncoreConversation.State(v54, type metadata accessor for EncoreConversation.State);
  v61 = *(v0 + 104);
  v62 = *(v0 + 88);
  *(v0 + 64) = v59;
  v63 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    v69 = *(v0 + 136);
    v70 = *(v0 + 144);
    v71 = *(v0 + 120);
    v72 = *(v0 + 104);

    v23 = *(v0 + 8);
    goto LABEL_27;
  }

  v64 = *(v0 + 160);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1DC659000, v65, v66, "[EncoreConversation] Grace period expired. Sending ensureReady event.", v67, 2u);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  v68 = *(v0 + 80);

  *(v0 + 216) = *(v68 + 24);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = EncoreConversation.ensureReady(timeout:);
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 152);

    v5 = EncoreConversation.ensureReady(timeout:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);

  outlined destroy of EncoreConversation.State(v3 + v1, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v3, type metadata accessor for SiriRequest);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

{
  v2 = *v1;
  v3 = (*v1)[25];
  v9 = *v1;
  (*v1)[26] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = EncoreConversation.ensureReady(timeout:);
  }

  else
  {
    v6 = v2[24];
    v7 = v2[19];
    outlined destroy of EncoreConversation.State(v2[15], type metadata accessor for ConversationCommitResult);

    v5 = EncoreConversation.ensureReady(timeout:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[24];

  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = EncoreConversation.ensureReady(timeout:);
  v3 = *(v0 + 216);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, 0, 0, 0xD000000000000017, 0x80000001DCA826B0, partial apply for closure #1 in EncoreEngine.asyncEnsureReadyEvent(), v3, v4);
}

{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), *(v0 + 152), 0);
}

{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);

  outlined destroy of EncoreConversation.State(v3 + v1, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v3, type metadata accessor for SiriRequest);
  v4 = *(v0 + 184);
  *(v0 + 64) = v4;
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 160);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "[EncoreConversation] Grace period expired. Sending ensureReady event.", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v12 = *(v0 + 80);

    *(v0 + 216) = *(v12 + 24);

    return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
  }

  else
  {
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  *(v0 + 64) = v2;
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 160);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "[EncoreConversation] Grace period expired. Sending ensureReady event.", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    v10 = *(v0 + 80);

    *(v0 + 216) = *(v10 + 24);

    return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
  }

  else
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 104);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t closure #1 in EncoreConversation.ensureReady(timeout:)(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);
  v8 = MEMORY[0x1E69E7288];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](a1, a2, v9, v7, v8);
}

uint64_t EncoreEngine.asyncEnsureReadyEvent()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncEnsureReadyEvent(), 0, 0);
}

{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, 0, 0, 0xD000000000000017, 0x80000001DCA826B0, closure #1 in EncoreEngine.asyncEnsureReadyEvent()partial apply, v3, v4);
}

uint64_t EncoreConversation.accept(request:)(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  v4 = type metadata accessor for UserInputResult();
  v3[62] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v3[64] = v6;
  v7 = *(v6 - 8);
  v3[65] = v7;
  v8 = *(v7 + 64) + 15;
  v3[66] = swift_task_alloc();
  v9 = type metadata accessor for RequestContinuation(0);
  v3[67] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v11 = type metadata accessor for ExecutionContext();
  v3[72] = v11;
  v12 = *(v11 - 8);
  v3[73] = v12;
  v13 = *(v12 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v14 = type metadata accessor for ConversationContext();
  v3[76] = v14;
  v15 = *(v14 - 8);
  v3[77] = v15;
  v16 = *(v15 + 64) + 15;
  v3[78] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR) - 8) + 64) + 15;
  v3[79] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v3[80] = v18;
  v19 = *(v18 - 8);
  v3[81] = v19;
  v20 = *(v19 + 64) + 15;
  v3[82] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR) - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR) - 8) + 64) + 15;
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v23 = type metadata accessor for ResponseMode();
  v3[88] = v23;
  v24 = *(v23 - 8);
  v3[89] = v24;
  v25 = *(v24 + 64) + 15;
  v3[90] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR) - 8) + 64) + 15;
  v3[91] = swift_task_alloc();
  v27 = type metadata accessor for EncoreConversation.State(0);
  v3[92] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v29 = type metadata accessor for SiriRequest(0);
  v3[95] = v29;
  v30 = *(v29 - 8);
  v3[96] = v30;
  v31 = *(v30 + 64) + 15;
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v32 = static ConversationActor.shared;
  v3[104] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v32, 0);
}

uint64_t EncoreConversation.accept(request:)()
{
  v200 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 480);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  outlined init with copy of EncoreEngineEvent(v3, v1, type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v3, v2, type metadata accessor for SiriRequest);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 824);
  v9 = *(v0 + 816);
  if (v7)
  {
    v189 = *(v0 + 760);
    v10 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v199[0] = v194;
    *v10 = 136315394;
    v11 = *v8;
    v12 = v8[1];

    outlined destroy of EncoreConversation.State(v8, type metadata accessor for SiriRequest);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v199);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *(v189 + 20);
    type metadata accessor for Input();
    lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    outlined destroy of EncoreConversation.State(v9, type metadata accessor for SiriRequest);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v199);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1DC659000, v5, v6, "[EncoreConversation] Accept. request id: %s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v194, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v9, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v8, type metadata accessor for SiriRequest);
  }

  v19 = *(v0 + 752);
  v20 = *(v0 + 736);
  v21 = *(v0 + 488);
  v22 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  *(v0 + 840) = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v21 + v22, v19, type metadata accessor for EncoreConversation.State);
  if (swift_getEnumCaseMultiPayload())
  {
    v23 = *(v0 + 488);
    outlined destroy of EncoreConversation.State(*(v0 + 752), type metadata accessor for EncoreConversation.State);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 744);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v199[0] = v28;
      *v27 = 136315138;
      outlined init with copy of EncoreEngineEvent(v21 + v22, v26, type metadata accessor for EncoreConversation.State);
      v29 = EncoreConversation.State.description.getter();
      v31 = v30;
      outlined destroy of EncoreConversation.State(v26, type metadata accessor for EncoreConversation.State);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v199);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1DC659000, v24, v25, "[EncoreConversation] Accept failed. Invalid state %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v33 = *(v0 + 760);
    v34 = *(v0 + 744);
    v35 = *(v0 + 480);
    v199[0] = 0;
    v199[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    strcpy(v199, "Invalid state ");
    HIBYTE(v199[1]) = -18;
    outlined init with copy of EncoreEngineEvent(v21 + v22, v34, type metadata accessor for EncoreConversation.State);
    v36 = EncoreConversation.State.description.getter();
    MEMORY[0x1E12A1580](v36);

    outlined destroy of EncoreConversation.State(v34, type metadata accessor for EncoreConversation.State);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA826D0);
    v37 = *(v33 + 20);
    type metadata accessor for Input();
    lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v38);

    v40 = v199[0];
    v39 = v199[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v41 = v40;
    v41[1] = v39;
    swift_willThrow();
    v42 = *(v0 + 824);
    v43 = *(v0 + 816);
    v44 = *(v0 + 808);
    v45 = *(v0 + 800);
    v46 = *(v0 + 792);
    v47 = *(v0 + 784);
    v48 = *(v0 + 776);
    v49 = *(v0 + 752);
    v50 = *(v0 + 744);
    v51 = *(v0 + 728);
    v172 = *(v0 + 720);
    v173 = *(v0 + 696);
    v174 = *(v0 + 688);
    v175 = *(v0 + 680);
    v176 = *(v0 + 672);
    v177 = *(v0 + 664);
    v178 = *(v0 + 656);
    v179 = *(v0 + 632);
    v180 = *(v0 + 624);
    v181 = *(v0 + 600);
    v182 = *(v0 + 592);
    v183 = *(v0 + 568);
    v184 = *(v0 + 560);
    v185 = *(v0 + 552);
    v187 = *(v0 + 544);
    v190 = *(v0 + 528);
    v195 = *(v0 + 504);

    v52 = *(v0 + 8);

    return v52();
  }

  v54 = *(v0 + 808);
  v55 = *(v0 + 800);
  v56 = *(v0 + 768);
  v57 = *(v0 + 760);
  v58 = *(v0 + 752);
  v59 = *(v0 + 728);
  v61 = *(v0 + 480);
  v60 = *(v0 + 488);
  v62 = *(v58 + 32);
  v63 = *(v58 + 16);
  *(v0 + 96) = *v58;
  *(v0 + 112) = v63;
  *(v0 + 128) = v62;
  outlined init with copy of EncoreEngineEvent(v61, v59, type metadata accessor for SiriRequest);
  (*(v56 + 56))(v59, 0, 1, v57);
  v64 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest;
  swift_beginAccess();
  outlined assign with take of SiriRequest?(v59, v60 + v64);
  swift_endAccess();
  outlined init with copy of EncoreEngineEvent(v61, v54, type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v61, v55, type metadata accessor for SiriRequest);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  v67 = os_log_type_enabled(v65, v66);
  v68 = *(v0 + 808);
  v69 = *(v0 + 800);
  if (v67)
  {
    v70 = *(v0 + 760);
    v71 = *(v0 + 720);
    v186 = *(v0 + 712);
    v188 = *(v0 + 704);
    v196 = v66;
    v72 = *(v0 + 488);
    v73 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v199[0] = v191;
    *v73 = 136315650;
    v74 = *(v72 + 64);
    v75 = ObjectIdentifier.debugDescription.getter();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v199);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2080;
    v78 = *(v68 + *(v70 + 24));
    v79 = ObjectIdentifier.debugDescription.getter();
    v81 = v80;
    outlined destroy of EncoreConversation.State(v68, type metadata accessor for SiriRequest);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v199);

    *(v73 + 14) = v82;
    *(v73 + 22) = 2080;
    v83 = *(v69 + *(v70 + 24));
    CurrentRequest.responseMode.getter();
    lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550]);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    (*(v186 + 8))(v71, v188);
    outlined destroy of EncoreConversation.State(v69, type metadata accessor for SiriRequest);
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v199);

    *(v73 + 24) = v87;
    _os_log_impl(&dword_1DC659000, v65, v196, "Setting environment %s currentRequest to %s with responseMode %s", v73, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v191, -1, -1);
    MEMORY[0x1E12A2F50](v73, -1, -1);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v68, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v69, type metadata accessor for SiriRequest);
  }

  v88 = *(v0 + 784);
  v89 = *(v0 + 776);
  v90 = *(v0 + 480);
  outlined init with copy of EncoreEngineEvent(v90, *(v0 + 792), type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v90, v88, type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v90, v89, type metadata accessor for SiriRequest);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.debug.getter();
  v93 = os_log_type_enabled(v91, v92);
  v94 = *(v0 + 792);
  v95 = *(v0 + 784);
  v96 = *(v0 + 776);
  if (v93)
  {
    v97 = *(v0 + 760);
    v98 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v199[0] = v197;
    *v98 = 136315650;
    v192 = v92;
    v99 = *(v94 + *(v97 + 24));
    v100 = CurrentRequest.executionRequestId.getter();
    if (v101)
    {
      v102 = v100;
    }

    else
    {
      v102 = 7104878;
    }

    if (v101)
    {
      v103 = v101;
    }

    else
    {
      v103 = 0xE300000000000000;
    }

    outlined destroy of EncoreConversation.State(v94, type metadata accessor for SiriRequest);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v199);

    *(v98 + 4) = v104;
    *(v98 + 12) = 2080;
    v105 = *(v95 + *(v97 + 24));
    v106 = CurrentRequest.rootRequestId.getter();
    if (v107)
    {
      v108 = v106;
    }

    else
    {
      v108 = 7104878;
    }

    if (v107)
    {
      v109 = v107;
    }

    else
    {
      v109 = 0xE300000000000000;
    }

    outlined destroy of EncoreConversation.State(v95, type metadata accessor for SiriRequest);
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v199);

    *(v98 + 14) = v110;
    *(v98 + 22) = 2080;
    v111 = *(v96 + *(v97 + 24));
    v112 = CurrentRequest.sessionId.getter();
    if (v113)
    {
      v114 = v112;
    }

    else
    {
      v114 = 7104878;
    }

    if (v113)
    {
      v115 = v113;
    }

    else
    {
      v115 = 0xE300000000000000;
    }

    outlined destroy of EncoreConversation.State(v96, type metadata accessor for SiriRequest);
    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v199);

    *(v98 + 24) = v116;
    _os_log_impl(&dword_1DC659000, v91, v192, "updating root environment with SiriRequest having executionRequestId - %s, rootRequestId - %s, sessionId - %s", v98, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v197, -1, -1);
    MEMORY[0x1E12A2F50](v98, -1, -1);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v94, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v95, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v96, type metadata accessor for SiriRequest);
  }

  v117 = *(*(v0 + 488) + 64);
  SiriEnvironment.currentRequest.getter();
  v118 = CurrentRequest.overrideProperties.getter();

  if (v118)
  {
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_1DC659000, v119, v120, "[EncoreConversation] Applying overrides on request", v121, 2u);
      MEMORY[0x1E12A2F50](v121, -1, -1);
    }

    v122 = *(v0 + 760);
    v123 = *(v0 + 480);

    v124 = *(v123 + *(v122 + 24));
    static CurrentRequestOverrides.applyOverrides(on:overrides:)();
  }

  v125 = *(v0 + 760);
  v126 = *(v0 + 680);
  v127 = *(v0 + 480);
  v128 = *(v127 + *(v125 + 24));

  SiriEnvironment.currentRequest.setter();
  SiriEnvironment.userIdentity.getter();
  v129 = *(v125 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v127 + v129, v126, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v130 = type metadata accessor for SiriRequestIdentities(0);
  v131 = *(*(v130 - 8) + 48);
  v132 = v131(v126, 1, v130);
  v133 = *(v0 + 696);
  v134 = *(v0 + 680);
  if (v132 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 680), &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v135 = type metadata accessor for IdentifiedUser();
    (*(*(v135 - 8) + 56))(v133, 1, 1, v135);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 680), *(v0 + 696), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of EncoreConversation.State(v134, type metadata accessor for SiriRequestIdentities);
  }

  v136 = *(v0 + 696);
  v137 = *(v0 + 672);
  dispatch thunk of UserIdentityProvider.identityForCurrentRequest.setter();

  SiriEnvironment.userIdentity.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v127 + v129, v137, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v138 = v131(v137, 1, v130);
  v139 = *(v0 + 688);
  v140 = *(v0 + 672);
  if (v138 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 672), &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v141 = type metadata accessor for IdentifiedUser();
    (*(*(v141 - 8) + 56))(v139, 1, 1, v141);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v140 + *(v130 + 20), *(v0 + 688), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of EncoreConversation.State(v140, type metadata accessor for SiriRequestIdentities);
  }

  v142 = *(v0 + 688);
  v143 = *(v0 + 664);
  dispatch thunk of UserIdentityProvider.identityMeetingUserSessionThreshold.setter();

  SiriEnvironment.userIdentity.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v127 + v129, v143, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v144 = v131(v143, 1, v130);
  v145 = *(v0 + 664);
  if (v144 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  }

  else
  {
    v146 = *(v145 + *(v130 + 24));

    outlined destroy of EncoreConversation.State(v145, type metadata accessor for SiriRequestIdentities);
  }

  v147 = *(v0 + 488);
  dispatch thunk of UserIdentityProvider.knownHomeMembers.setter();

  v148 = *(v147 + 48);
  swift_beginAccess();
  v151 = *(v148 + 32);
  if (v151 >> 62)
  {
    v152 = __CocoaSet.count.getter();
    if (!v152)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v152 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v152)
    {
      goto LABEL_55;
    }
  }

  if ((v151 & 0xC000000000000001) != 0)
  {

    v153 = MEMORY[0x1E12A1FE0](0, v151);
  }

  else
  {
    if (!*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v152, v149, v150);
    }

    v153 = *(v151 + 32);
  }

  v154 = *(v0 + 656);
  v155 = *(v0 + 648);
  v156 = *(v0 + 640);
  v198 = *(v0 + 632);
  type metadata accessor for FlowTaskProvider();
  v157 = *(v153 + 24);
  v193 = *(v153 + 16);
  v158 = *(v153 + 33);
  v159 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v160 = *(v155 + 16);
  v160(v154, v153 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v156);

  dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
  SiriEnvironment.flowTask.setter();
  SiriEnvironment.currentRequest.getter();
  v160(v154, v153 + v159, v156);

  FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
  v161 = type metadata accessor for FlowTaskMetadata();
  (*(*(v161 - 8) + 56))(v198, 0, 1, v161);
  CurrentRequest.flowTaskMetadata.setter();

LABEL_55:
  v162 = *(v0 + 760);
  v163 = *(v0 + 624);
  v164 = *(v0 + 600);
  v165 = *(v0 + 592);
  v166 = *(v0 + 584);
  v167 = *(v0 + 576);
  v168 = *(v0 + 480);
  SiriEnvironment.scopedReferenceResolutionData.getter();
  outlined copy of Data?(*(v168 + *(v162 + 32)), *(v168 + *(v162 + 32) + 8));
  dispatch thunk of ScopedReferenceResolutionDataProvider.dataForCurrentRequest.setter();

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static AceService.currentAsync.getter();
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 176);
  ExecutionContext.init(outputPublisher:aceServiceInvoker:)();
  (*(v166 + 16))(v165, v164, v167);
  ConversationContext.init(executionContext:)();
  (*(v166 + 8))(v164, v167);
  outlined destroy of SiriRequestContext((v0 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 96, v0 + 256, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  if (*(v0 + 280))
  {
    v169 = *(v0 + 488);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v0 + 216);
    *(v0 + 848) = *(v169 + 24);
    v152 = EncoreConversation.accept(request:);
    v149 = 0;
    v150 = 0;

    return MEMORY[0x1EEE6DFA0](v152, v149, v150);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 256, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  v170 = swift_task_alloc();
  *(v0 + 888) = v170;
  *v170 = v0;
  v170[1] = EncoreConversation.accept(request:);
  v171 = *(v0 + 488);

  return EncoreConversation.isEmpty()();
}

{
  v1 = v0[106];
  v2 = swift_task_alloc();
  v0[107] = v2;
  *(v2 + 16) = v0 + 27;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = EncoreConversation.accept(request:);
  v5 = v0[70];
  v6 = v0[67];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000015, 0x80000001DCA826F0, closure #1 in EncoreEngine.asyncPushEvent(flow:)partial apply, v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v9 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v4 = EncoreConversation.accept(request:);
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 856);
    v7 = *(v2 + 832);

    v4 = EncoreConversation.accept(request:);
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

{
  outlined init with take of RequestContinuation(v0[70], v0[71], type metadata accessor for RequestContinuation);
  v1 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
  if (ActingFlow.isAdaptedFlow.getter())
  {
    v2 = swift_task_alloc();
    v0[110] = v2;
    *v2 = v0;
    v2[1] = EncoreConversation.accept(request:);
    v3 = v0[106];
    v4 = v0[78];
    v5 = v0[69];
    v6 = v0[60];

    return EncoreEngine.asyncAcceptEvent(request:context:)(v5, v6, v4);
  }

  else
  {
    v8 = v0[78];
    v9 = v0[77];
    v10 = v0[76];
    v11 = v0[66];
    v12 = v0[65];
    v13 = v0[64];
    v14 = v0[61];
    v15 = v0[60] + *(v0[95] + 20);
    Input.parse.getter();
    v16 = Parse.usoTasks.getter();
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v17 = *(v14 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks);
    *(v14 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks) = v16;

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    v18 = v0[62];
    outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v19 = v0[105];
      v20 = v0[93];
      v21 = v0[92];
      v22 = v0[71];
      v23 = v0[60];
      v24 = v0[61];
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      outlined init with copy of EncoreEngineEvent(v23, v20, type metadata accessor for SiriRequest);
      outlined init with copy of EncoreEngineEvent(v22, v20 + v25, type metadata accessor for RequestContinuation);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of EncoreConversation.State(v20, v24 + v19);
      swift_endAccess();
    }

    else
    {
      outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
    }

    v26 = v0[103];
    v27 = v0[102];
    v28 = v0[101];
    v29 = v0[100];
    v30 = v0[99];
    v31 = v0[98];
    v32 = v0[97];
    v33 = v0[94];
    v36 = v0[93];
    v37 = v0[91];
    v38 = v0[90];
    v39 = v0[87];
    v40 = v0[86];
    v41 = v0[85];
    v42 = v0[84];
    v43 = v0[83];
    v44 = v0[82];
    v45 = v0[79];
    v46 = v0[78];
    v47 = v0[75];
    v34 = v0[71];
    v48 = v0[74];
    v49 = v0[70];
    v50 = v0[69];
    v51 = v0[68];
    v52 = v0[66];
    v53 = v0[63];
    outlined init with copy of EncoreEngineEvent(v34, v0[59], type metadata accessor for UserInputResult);
    outlined destroy of EncoreConversation.State(v34, type metadata accessor for RequestContinuation);

    v35 = v0[1];

    return v35();
  }
}

{
  v1 = *(v0 + 856);
  v2 = *(v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v2, 0);
}

{
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v30 = v0[109];
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[91];
  v13 = v0[90];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[66];
  v29 = v0[63];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 832);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v2, 0);
}

{
  v1 = v0[71];
  v2 = v0[69];
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for RequestContinuation);
  outlined init with take of RequestContinuation(v2, v1, type metadata accessor for RequestContinuation);
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[60] + *(v0[95] + 20);
  Input.parse.getter();
  v11 = Parse.usoTasks.getter();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  v12 = *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks);
  *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks) = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v13 = v0[62];
  outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v14 = v0[105];
    v15 = v0[93];
    v16 = v0[92];
    v17 = v0[71];
    v18 = v0[60];
    v19 = v0[61];
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with copy of EncoreEngineEvent(v18, v15, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v17, v15 + v20, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v15, v19 + v14);
    swift_endAccess();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
  }

  v21 = v0[103];
  v22 = v0[102];
  v23 = v0[101];
  v24 = v0[100];
  v25 = v0[99];
  v26 = v0[98];
  v27 = v0[97];
  v28 = v0[94];
  v32 = v0[93];
  v33 = v0[91];
  v34 = v0[90];
  v35 = v0[87];
  v36 = v0[86];
  v37 = v0[85];
  v38 = v0[84];
  v39 = v0[83];
  v40 = v0[82];
  v41 = v0[79];
  v42 = v0[78];
  v43 = v0[75];
  v29 = v0[71];
  v44 = v0[74];
  v45 = v0[70];
  v46 = v0[69];
  v47 = v0[68];
  v48 = v0[66];
  v49 = v0[63];
  outlined init with copy of EncoreEngineEvent(v29, v0[59], type metadata accessor for UserInputResult);
  outlined destroy of EncoreConversation.State(v29, type metadata accessor for RequestContinuation);

  v30 = v0[1];

  return v30();
}

{
  if (*(v0 + 944) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 896) = v1;
    *v1 = v0;
    v1[1] = EncoreConversation.accept(request:);
    v2 = *(v0 + 480);
    v3 = *(v0 + 488);

    return EncoreConversation.attemptCorrection(on:)(v0 + 336, v2);
  }

  else
  {
    v5 = *(*(v0 + 488) + 24);
    v6 = swift_task_alloc();
    *(v0 + 936) = v6;
    *v6 = v0;
    v6[1] = EncoreConversation.accept(request:);
    v7 = *(v0 + 624);
    v8 = *(v0 + 568);
    v9 = *(v0 + 480);

    return EncoreEngine.asyncAcceptEvent(request:context:)(v8, v9, v7);
  }
}

{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 832);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v2, 0);
}

{
  if (*(v0 + 360))
  {
    v1 = *(v0 + 488);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 336), v0 + 296);
    *(v0 + 904) = *(v1 + 24);

    return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), 0, 0);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 336, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v2 = *(*(v0 + 488) + 24);
    v3 = swift_task_alloc();
    *(v0 + 936) = v3;
    *v3 = v0;
    v3[1] = EncoreConversation.accept(request:);
    v4 = *(v0 + 624);
    v5 = *(v0 + 568);
    v6 = *(v0 + 480);

    return EncoreEngine.asyncAcceptEvent(request:context:)(v5, v6, v4);
  }
}

{
  v1 = v0[113];
  v2 = swift_task_alloc();
  v0[114] = v2;
  *(v2 + 16) = v0 + 37;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[115] = v4;
  *v4 = v0;
  v4[1] = EncoreConversation.accept(request:);
  v5 = v0[68];
  v6 = v0[67];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000015, 0x80000001DCA826F0, partial apply for closure #1 in EncoreEngine.asyncPushEvent(flow:), v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v9 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = EncoreConversation.accept(request:);
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 912);
    v7 = *(v2 + 832);

    v4 = EncoreConversation.accept(request:);
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

{
  v1 = v0[71];
  v2 = v0[68];
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  outlined init with take of RequestContinuation(v2, v1, type metadata accessor for RequestContinuation);
  v3 = v0[62];
  outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = v0[105];
    v5 = v0[93];
    v6 = v0[92];
    v7 = v0[71];
    v8 = v0[60];
    v9 = v0[61];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with copy of EncoreEngineEvent(v8, v5, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v7, v5 + v10, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v5, v9 + v4);
    swift_endAccess();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
  }

  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[94];
  v22 = v0[93];
  v23 = v0[91];
  v24 = v0[90];
  v25 = v0[87];
  v26 = v0[86];
  v27 = v0[85];
  v28 = v0[84];
  v29 = v0[83];
  v30 = v0[82];
  v31 = v0[79];
  v32 = v0[78];
  v33 = v0[75];
  v19 = v0[71];
  v34 = v0[74];
  v35 = v0[70];
  v36 = v0[69];
  v37 = v0[68];
  v38 = v0[66];
  v39 = v0[63];
  outlined init with copy of EncoreEngineEvent(v19, v0[59], type metadata accessor for UserInputResult);
  outlined destroy of EncoreConversation.State(v19, type metadata accessor for RequestContinuation);

  v20 = v0[1];

  return v20();
}

{
  v1 = *(v0 + 912);
  v2 = *(v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v2, 0);
}

{
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  v30 = v0[116];
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[91];
  v13 = v0[90];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[66];
  v29 = v0[63];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 832);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v2, 0);
}

{
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  v1 = v0[62];
  outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = v0[105];
    v3 = v0[93];
    v4 = v0[92];
    v5 = v0[71];
    v6 = v0[60];
    v7 = v0[61];
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with copy of EncoreEngineEvent(v6, v3, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v5, v3 + v8, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v3, v7 + v2);
    swift_endAccess();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
  }

  v9 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[94];
  v20 = v0[93];
  v21 = v0[91];
  v22 = v0[90];
  v23 = v0[87];
  v24 = v0[86];
  v25 = v0[85];
  v26 = v0[84];
  v27 = v0[83];
  v28 = v0[82];
  v29 = v0[79];
  v30 = v0[78];
  v31 = v0[75];
  v17 = v0[71];
  v32 = v0[74];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[68];
  v36 = v0[66];
  v37 = v0[63];
  outlined init with copy of EncoreEngineEvent(v17, v0[59], type metadata accessor for UserInputResult);
  outlined destroy of EncoreConversation.State(v17, type metadata accessor for RequestContinuation);

  v18 = v0[1];

  return v18();
}

uint64_t EncoreConversation.accept(request:)(char a1)
{
  v2 = *(*v1 + 888);
  v3 = *(*v1 + 832);
  v5 = *v1;
  *(*v1 + 944) = a1;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v3, 0);
}

uint64_t EncoreEngine.asyncPushEvent(flow:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncPushEvent(flow:), 0, 0);
}

uint64_t EncoreEngine.asyncPushEvent(flow:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for RequestContinuation(0);
  *v3 = v0;
  v3[1] = EncoreEngine.asyncPushEvent(flow:);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000015, 0x80000001DCA826F0, closure #1 in EncoreEngine.asyncPushEvent(flow:)partial apply, v1, v4);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncPushEvent(flow:), 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SiriRequest(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Parse();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for Parse.DirectInvocation();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

uint64_t EncoreEngine.asyncAcceptEvent(request:context:)()
{
  v47 = v0;
  v2 = v0 + 10;
  v1 = v0[10];
  v3 = v0 + 9;
  v4 = v0[9];
  v6 = v0 + 8;
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[3] + *(v7 + 20);
  Input.parse.getter();
  if ((*(v4 + 88))(v1, v5) != *MEMORY[0x1E69D0158])
  {
    goto LABEL_8;
  }

  v2 = v0 + 13;
  v9 = v0[13];
  v3 = v0 + 12;
  v10 = v0[12];
  v6 = v0 + 11;
  v11 = v0[11];
  v12 = v0[10];
  (*(v0[9] + 96))(v12, v0[8]);
  (*(v10 + 32))(v9, v12, v11);
  v13 = Parse.DirectInvocation.toSnippetEvent.getter();
  v0[14] = v13;
  if (v13)
  {
    v14 = v13;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "[EncoreConversation] asyncAcceptEvent DirectInvocation", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v20 = v0[4];
    v19 = v0[5];

    v21 = swift_task_alloc();
    v0[15] = v21;
    v21[2] = v19;
    v21[3] = v14;
    v21[4] = v20;
    v22 = *(MEMORY[0x1E69E88D0] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    v24 = type metadata accessor for RequestContinuation(0);
    *v23 = v0;
    v23[1] = EncoreEngine.asyncAcceptEvent(request:context:);
    v25 = v0[2];
    v26 = partial apply for closure #1 in EncoreEngine.asyncAcceptEvent(request:context:);
  }

  else
  {
LABEL_8:
    (*(*v3 + 8))(*v2, *v6);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = v0[7];
    v28 = v0[3];
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.executor);
    outlined init with copy of EncoreEngineEvent(v28, v27, type metadata accessor for SiriRequest);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[7];
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136315138;
      v36 = *(v7 + 20);
      type metadata accessor for Input();
      lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      outlined destroy of EncoreConversation.State(v33, type metadata accessor for SiriRequest);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v46);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1DC659000, v30, v31, "[EncoreConversation] default asyncAcceptEvent %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    else
    {

      outlined destroy of EncoreConversation.State(v33, type metadata accessor for SiriRequest);
    }

    v41 = v0[5];
    v21 = swift_task_alloc();
    v0[17] = v21;
    v42 = *(v0 + 3);
    v21[2] = v41;
    *(v21 + 3) = v42;
    v43 = *(MEMORY[0x1E69E88D0] + 4);
    v44 = swift_task_alloc();
    v0[18] = v44;
    v24 = type metadata accessor for RequestContinuation(0);
    *v44 = v0;
    v44[1] = EncoreEngine.asyncAcceptEvent(request:context:);
    v25 = v0[2];
    v26 = partial apply for closure #2 in EncoreEngine.asyncAcceptEvent(request:context:);
  }

  return MEMORY[0x1EEE6DDE0](v25, 0, 0, 0xD000000000000022, 0x80000001DCA82710, v26, v21, v24);
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v9 = *v0;

  v4 = v1[13];
  v5 = v1[10];
  v6 = v1[7];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t EncoreConversation.isEmpty()()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;
  *(v1 + 24) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isEmpty(), v2, 0);
}

{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = EncoreConversation.isEmpty();

  return EncoreEngine.isEmpty()();
}

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
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Is empty %{BOOL}d", v5, 8u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 40);

  return v6(v7);
}

uint64_t EncoreConversation.isEmpty()(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isEmpty(), v3, 0);
}

uint64_t EncoreConversation.attemptCorrection(on:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for AcceptanceType();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for Acceptance();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.attemptCorrection(on:), v10, 0);
}

uint64_t EncoreConversation.attemptCorrection(on:)()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine;
  outlined init with copy of ReferenceResolutionClientProtocol(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine, (v0 + 8));
  v3 = v0[11];
  v4 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v3);
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  if (v5)
  {
    v35 = v0[30];
    v36 = v0[28];
    v6 = v0[26];
    v37 = v0[27];
    v38 = v0[25];
    v7 = v0[24];
    v34 = v0[23];
    outlined init with copy of ReferenceResolutionClientProtocol(v1 + v2, (v0 + 13));
    v8 = v0[16];
    v33 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v8);
    v9 = v7[4];
    v32 = v7[5];
    v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0aB7Runtime0a11CorrectionsC0C_Qo_Md, &_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0aB7Runtime0a11CorrectionsC0C_Qo_MR);
    v10 = type metadata accessor for SiriCorrectionsFlow();
    v11 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow, type metadata accessor for SiriCorrectionsFlow);
    v0[18] = v10;
    v0[19] = v11;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v0[20] = v10;
    v0[6] = OpaqueTypeConformance2;
    v0[21] = v11;
    v0[7] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    CorrectionsEngine.getCorrectionFlow(pluginId:)(v9, v32, v8, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
    type metadata accessor for SiriEnvironment();
    v13 = v7[8];
    v14 = v0 + 2;
    v15 = swift_task_alloc();
    *(v15 + 16) = v0 + 2;
    *(v15 + 24) = v34;
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    Acceptance.type.getter();
    v16 = (*(v6 + 88))(v37, v38);
    v17 = v0[30];
    v18 = v0[29];
    v20 = v0[27];
    v19 = v0[28];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[22];
    if (v16 == *MEMORY[0x1E69CFE28])
    {
      (*(v18 + 8))(v0[30], v0[28]);
      (*(v21 + 8))(v20, v22);
      *(v23 + 32) = 0;
      *v23 = 0u;
      *(v23 + 16) = 0u;
    }

    else
    {
      (*(v21 + 8))(v0[27], v0[25]);
      v39 = *(v0 + 5);
      v25 = v0[5];
      v26 = __swift_project_boxed_opaque_existential_1(v14, v25);
      *(v23 + 24) = v39;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
      (*(*(v25 - 8) + 16))(boxed_opaque_existential_0, v26, v25);
      (*(v18 + 8))(v17, v19);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v24 = v0[22];
    *(v24 + 32) = 0;
    *v24 = 0u;
    *(v24 + 16) = 0u;
  }

  v28 = v0[30];
  v29 = v0[27];

  v30 = v0[1];

  return v30();
}

uint64_t EncoreConversation.prepare()()
{
  v1[8] = v0;
  v2 = type metadata accessor for EncoreConversation.State(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = *(*(type metadata accessor for RequestContinuation(0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SiriRequest(0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.prepare(), v6, 0);
}

{
  v40 = v0;
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
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Prepare", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  v8 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v7 + v8, v5, type metadata accessor for EncoreConversation.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    v38 = v0[9];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR);
    v37 = v8;
    v14 = v7;
    v15 = *(v13 + 48);
    outlined init with take of RequestContinuation(v12, v10, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v12 + v15, v9, type metadata accessor for RequestContinuation);
    v16 = *(v13 + 48);
    outlined init with take of RequestContinuation(v10, v11, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v9, v11 + v16, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v11, v14 + v37);
    swift_endAccess();

    v17 = v0[1];
  }

  else
  {
    v18 = v0[8];
    outlined destroy of EncoreConversation.State(v0[11], type metadata accessor for EncoreConversation.State);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[10];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = v23;
      *v22 = 136315138;
      outlined init with copy of EncoreEngineEvent(v7 + v8, v21, type metadata accessor for EncoreConversation.State);
      v24 = EncoreConversation.State.description.getter();
      v26 = v25;
      outlined destroy of EncoreConversation.State(v21, type metadata accessor for EncoreConversation.State);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v39);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1DC659000, v19, v20, "[EncoreConversation] Prepare failed. Invalid state %s.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[10];
    v31 = v0[11];
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    strcpy(v39, "Invalid state ");
    HIBYTE(v39[1]) = -18;
    outlined init with copy of EncoreEngineEvent(v7 + v8, v30, type metadata accessor for EncoreConversation.State);
    v32 = EncoreConversation.State.description.getter();
    MEMORY[0x1E12A1580](v32);

    outlined destroy of EncoreConversation.State(v30, type metadata accessor for EncoreConversation.State);
    MEMORY[0x1E12A1580](0xD000000000000017, 0x80000001DCA82740);
    v33 = v39[0];
    v34 = v39[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v35 = v33;
    v35[1] = v34;
    swift_willThrow();

    v17 = v0[1];
  }

  return v17();
}

uint64_t EncoreConversation.commit()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for EncoreConversation.State(0);
  v2[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *(type metadata accessor for RequestContinuation(0) - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = *(type metadata accessor for SiriRequest(0) - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static ConversationActor.shared;
  v2[22] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.commit(), v8, 0);
}

uint64_t EncoreConversation.commit()()
{
  v64 = v0;
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
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Commit", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = *(v5 + 16);
  v7 = v6[4];
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v6);
  v8 = v0[13];
  v9 = v0[11];
  v10 = v0[9];
  OS_dispatch_semaphore.signal()();
  v11 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v10 + v11, v8, type metadata accessor for EncoreConversation.State);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = v0[21];
    v60 = v0[22];
    v13 = v0[20];
    v14 = v0[17];
    v57 = v0[19];
    v58 = v0[15];
    v15 = v0[13];
    v55 = v0[14];
    v56 = v0[18];
    v61 = v0[12];
    v62 = v0[11];
    v16 = v0[10];
    v54 = v0[16];
    v59 = v0[9];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with take of RequestContinuation(v15, v12, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v15 + v17, v14, type metadata accessor for RequestContinuation);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    outlined init with copy of EncoreEngineEvent(v12, v13, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v14, v54, type metadata accessor for RequestContinuation);
    v19 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor);
    v20 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v21 = (v57 + *(v55 + 80) + v20) & ~*(v55 + 80);
    v22 = swift_allocObject();
    v22[2] = v60;
    v22[3] = v19;
    v22[4] = v59;
    outlined init with take of RequestContinuation(v13, v22 + v20, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v54, v22 + v21, type metadata accessor for RequestContinuation);

    v23 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime24ConversationCommitResultO_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in EncoreConversation.commit(), v22);
    v0[23] = v23;
    *v61 = v23;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    outlined assign with take of EncoreConversation.State(v61, v10 + v11);
    swift_endAccess();
    v24 = *(MEMORY[0x1E69E86A8] + 4);
    v25 = swift_task_alloc();
    v0[24] = v25;
    v26 = type metadata accessor for ConversationCommitResult();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v25 = v0;
    v25[1] = EncoreConversation.commit();
    v28 = v0[8];
    v29 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v28, v23, v26, v27, v29);
  }

  else
  {
    v30 = v0[9];
    outlined destroy of EncoreConversation.State(v0[13], type metadata accessor for EncoreConversation.State);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[12];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63[0] = v35;
      *v34 = 136315138;
      outlined init with copy of EncoreEngineEvent(v10 + v11, v33, type metadata accessor for EncoreConversation.State);
      v36 = EncoreConversation.State.description.getter();
      v38 = v37;
      outlined destroy of EncoreConversation.State(v33, type metadata accessor for EncoreConversation.State);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v63);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1DC659000, v31, v32, "[EncoreConversation] Commit failed. Invalid state %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v40 = v0[12];
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    strcpy(v63, "Invalid state ");
    HIBYTE(v63[1]) = -18;
    outlined init with copy of EncoreEngineEvent(v10 + v11, v40, type metadata accessor for EncoreConversation.State);
    v41 = EncoreConversation.State.description.getter();
    MEMORY[0x1E12A1580](v41);

    outlined destroy of EncoreConversation.State(v40, type metadata accessor for EncoreConversation.State);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA82760);
    v42 = v63[0];
    v43 = v63[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v44 = v42;
    v44[1] = v43;
    swift_willThrow();
    v46 = v0[20];
    v45 = v0[21];
    v48 = v0[16];
    v47 = v0[17];
    v50 = v0[12];
    v49 = v0[13];
    v51 = v0[10];

    v52 = v0[1];

    return v52();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = EncoreConversation.commit();
  }

  else
  {
    v6 = EncoreConversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];

  outlined destroy of EncoreConversation.State(v4, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v3, type metadata accessor for SiriRequest);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[17];

  outlined destroy of EncoreConversation.State(v3, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for SiriRequest);
  v4 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}