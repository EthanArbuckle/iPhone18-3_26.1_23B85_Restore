uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:isPersonalDomainFallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a15 + 32);
  v17 = *(a15 + 16);
  v20[0] = *a15;
  v20[1] = v17;
  v21 = v16;
  return (*(v15 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v20);
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:resultCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  v22 = *a20;
  if (a16)
  {
    v23 = 0;
  }

  else
  {
    a15 = 0;
    v23 = -1;
  }

  v25[0] = a15;
  v25[1] = a16;
  v25[2] = 0;
  v25[3] = 0;
  v26 = v23;
  return (*(v20 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v25);
}

id PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:taskStepLogs:userSensitiveTier1Logs:componentsWarmedUp:searchReason:domainUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  v30 = objc_allocWithZone(v23);
  v55 = *(a15 + 32);
  v56 = *a22;
  v31 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog];
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog] = xmmword_1DC64F240;
  v32 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log];
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log] = xmmword_1DC64F240;
  v33 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  *v34 = 0;
  v34[8] = 1;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences] = a1;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_clientResults] = a2;
  v35 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext];
  *v35 = a3;
  v35[1] = a4;
  v36 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName];
  *v36 = a5;
  v36[1] = a6;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered] = 0;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts] = a7;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v37 = *v31;
  v38 = v31[1];
  *v31 = a8;
  v31[1] = a9;
  outlined copy of Data?(a3, a4);
  outlined copy of Data?(a8, a9);
  outlined consume of Data._Representation?(v37, v38);
  swift_beginAccess();
  v39 = *v32;
  v40 = v32[1];
  *v32 = a10;
  v32[1] = a11;
  outlined copy of Data?(a10, a11);
  outlined consume of Data._Representation?(v39, v40);
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking] = a12;
  v41 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId];
  *v41 = a13;
  v41[1] = a14;
  v42 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId];
  v43 = *(a15 + 16);
  *v42 = *a15;
  *(v42 + 1) = v43;
  v42[32] = v55;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight] = a16;
  v44 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier];
  *v44 = a17;
  v44[1] = a18;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation] = 0;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs] = a19;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs] = a20;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason] = v56;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp] = a21;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse] = 0;
  v45 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance];
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v46 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId];
  *v46 = 0;
  v46[1] = 0;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses] = xmmword_1DC64F240;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse] = xmmword_1DC64F240;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition] = 0;
  v47 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult];
  *v47 = 0;
  v47[1] = 0;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult] = 0;
  v48 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite];
  *v48 = 0;
  v48[1] = 0;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion] = 0;
  v49 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext;
  v50 = type metadata accessor for PommesContext();
  (*(*(v50 - 8) + 56))(&v30[v49], 1, 1, v50);
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases] = a23;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion] = 0;
  v58.receiver = v30;
  v58.super_class = v57;
  v51 = objc_msgSendSuper2(&v58, sel_init);
  outlined consume of Data._Representation?(a10, a11);
  outlined consume of Data._Representation?(a8, a9);
  outlined consume of Data._Representation?(a3, a4);
  return v51;
}

id PommesResponse.init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:taskStepLogs:userSensitiveTier1Logs:componentsWarmedUp:searchReason:domainUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  v49 = *(a15 + 32);
  v50 = *a22;
  v27 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog];
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog] = xmmword_1DC64F240;
  v28 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log];
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log] = xmmword_1DC64F240;
  v29 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  *v30 = 0;
  v30[8] = 1;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences] = a1;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_clientResults] = a2;
  v31 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext];
  *v31 = a3;
  v31[1] = a4;
  v32 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName];
  *v32 = a5;
  v32[1] = a6;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered] = 0;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts] = a7;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v34 = *v27;
  v33 = v27[1];
  *v27 = a8;
  v27[1] = a9;
  outlined copy of Data?(a3, a4);
  outlined copy of Data?(a8, a9);
  outlined consume of Data._Representation?(v34, v33);
  swift_beginAccess();
  v35 = *v28;
  v36 = v28[1];
  *v28 = a10;
  v28[1] = a11;
  outlined copy of Data?(a10, a11);
  outlined consume of Data._Representation?(v35, v36);
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking] = a12;
  v37 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId];
  *v37 = a13;
  v37[1] = a14;
  v38 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 1) = v39;
  v38[32] = v49;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight] = a16;
  v40 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier];
  *v40 = a17;
  v40[1] = a18;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation] = 0;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs] = a19;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs] = a20;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason] = v50;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp] = a21;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse] = 0;
  v41 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance];
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId];
  *v42 = 0;
  v42[1] = 0;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses] = xmmword_1DC64F240;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse] = xmmword_1DC64F240;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition] = 0;
  v43 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult];
  *v43 = 0;
  v43[1] = 0;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult] = 0;
  v44 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite];
  *v44 = 0;
  v44[1] = 0;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion] = 0;
  v45 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext;
  v46 = type metadata accessor for PommesContext();
  (*(*(v46 - 8) + 56))(&v23[v45], 1, 1, v46);
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases] = a23;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion] = 0;
  v52.receiver = v23;
  v52.super_class = type metadata accessor for PommesResponse(0);
  v47 = objc_msgSendSuper2(&v52, sel_init);
  outlined consume of Data._Representation?(a10, a11);
  outlined consume of Data._Representation?(a8, a9);
  outlined consume of Data._Representation?(a3, a4);
  return v47;
}

uint64_t PommesResponse.__allocating_init(_:)(void (*a1)(char *))
{
  v3 = type metadata accessor for PommesResponse.Builder(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  PommesResponse.Builder.init()(&v12 - v8);
  a1(v9);
  outlined init with copy of PommesResponse.Builder(v9, v7);
  v10 = (*(v1 + 360))(v7);
  outlined destroy of PommesResponse.Builder(v9, type metadata accessor for PommesResponse.Builder);
  return v10;
}

uint64_t PommesResponse.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xF000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1DC64F440;
  *(a1 + 96) = 0xF000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 255;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 200) = MEMORY[0x1E69E7CC0];
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xF000000000000000;
  *(a1 + 288) = xmmword_1DC64F240;
  v3 = type metadata accessor for PommesResponse.Builder(0);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  v4 = v3[34];
  v5 = type metadata accessor for PommesContext();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[35]) = v2;
  *(a1 + v3[36]) = 0;
  return result;
}

id PommesResponse.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog) = xmmword_1DC64F240;
  v5 = v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log) = xmmword_1DC64F240;
  v6 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode);
  *v6 = 0;
  v6[1] = 0;
  v7 = v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence;
  *v7 = 0;
  v7[8] = 1;
  v8 = *a1;
  if (!v8)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC5C3000, v58, v59, "Attempting to create a PommesResponse without experiences", v60, 2u);
      MEMORY[0x1E1299E70](v60, -1, -1);
    }

    outlined destroy of PommesResponse.Builder(a1, type metadata accessor for PommesResponse.Builder);
    outlined consume of Data._Representation?(*v4, *(v4 + 1));
    outlined consume of Data._Representation?(*v5, *(v5 + 1));
    goto LABEL_43;
  }

  v9 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences) = v8;
  v10 = *(a1 + 8);
  v11 = 0x1ECC8F000uLL;
  v119 = v9;
  v120 = v10;
  if (!v10)
  {
    v61 = one-time initialization token for pommes;

    if (v61 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_25;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = "Attempting to create a PommesResponse without clientResults";
    goto LABEL_24;
  }

  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_clientResults) = v10;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
  *v14 = v13;
  v14[1] = v12;
  v15 = *(a1 + 40);
  if (!v15)
  {

    outlined copy of Data?(v13, v12);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.pommes);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.fault.getter();
    v11 = 0x1ECC8F000uLL;
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_25;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = "Attempting to create a PommesResponse without metadataDomainName";
LABEL_24:
    _os_log_impl(&dword_1DC5C3000, v63, v64, v66, v65, 2u);
    MEMORY[0x1E1299E70](v65, -1, -1);
LABEL_25:

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_26;
  }

  v16 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
  *v16 = *(a1 + 32);
  v16[1] = v15;
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered) = *(a1 + 48);
  v17 = *(a1 + 56);
  if (v17)
  {
    v117 = v6;
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts) = v17;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = *(a1 + 72);
    if (*(a1 + 64))
    {
      v18 = *(a1 + 64);
    }

    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts) = v18;
    v20 = *(a1 + 80);
    swift_beginAccess();
    v112 = *(v4 + 1);
    v114 = *v4;
    *v4 = v19;
    *(v4 + 1) = v20;
    v111 = v4;

    outlined copy of Data?(v13, v12);

    outlined copy of Data?(v19, v20);

    outlined consume of Data._Representation?(v114, v112);
    v21 = *(a1 + 88);
    v22 = *(a1 + 96);
    swift_beginAccess();
    v23 = *v5;
    v24 = *(v5 + 1);
    *v5 = v21;
    *(v5 + 1) = v22;
    v115 = v5;
    outlined copy of Data?(v21, v22);
    outlined consume of Data._Representation?(v23, v24);
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking) = *(a1 + 104);
    v25 = *(a1 + 120);
    v26 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId);
    *v26 = *(a1 + 112);
    v26[1] = v25;
    v27 = *(a1 + 128);
    v28 = *(a1 + 136);
    v30 = *(a1 + 144);
    v29 = *(a1 + 152);
    v31 = *(a1 + 160);
    v32 = v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId;
    *v32 = v27;
    *(v32 + 1) = v28;
    *(v32 + 2) = v30;
    *(v32 + 3) = v29;
    v32[32] = v31;
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight) = *(a1 + 161);
    v33 = *(a1 + 176);
    v34 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier);
    *v34 = *(a1 + 168);
    v34[1] = v33;
    v35 = *(a1 + 184);
    if (v35)
    {
      *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs) = v35;
      v36 = *(a1 + 192);
      if (v36)
      {
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs) = v36;
        v109 = *(a1 + 208);
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp) = *(a1 + 200);
        v110 = v31;
        v37 = *(a1 + 216);
        swift_beginAccess();
        v113 = v117[1];
        *v117 = v109;
        v117[1] = v37;

        outlined copy of PommesCandidateId?(v27, v28, v30, v29, v110);

        v38 = *(a1 + 224);
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation) = v38;
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason) = *(a1 + 232);
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse) = *(a1 + 233);
        v39 = *(a1 + 248);
        if (v39)
        {
          v40 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance);
          *v40 = *(a1 + 240);
          v40[1] = v39;
          v41 = *(a1 + 264);
          v42 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId);
          *v42 = *(a1 + 256);
          v42[1] = v41;
          v116 = *(a1 + 280);
          v118 = *(a1 + 272);
          v43 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
          *v43 = v118;
          v43[1] = v116;
          v44 = *(a1 + 288);
          v45 = *(a1 + 296);
          v46 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
          *v46 = v44;
          v46[1] = v45;
          v47 = *(a1 + 312);
          v121 = *(a1 + 304);
          *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition) = v121;
          v48 = *(a1 + 320);
          v49 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult);
          *v49 = v47;
          v49[1] = v48;
          *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult) = *(a1 + 328);
          v50 = *(a1 + 344);
          v51 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite);
          *v51 = *(a1 + 336);
          v51[1] = v50;
          *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion) = *(a1 + 352);
          v52 = type metadata accessor for PommesResponse.Builder(0);
          outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1 + v52[34], v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases) = *(a1 + v52[35]);
          *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion) = *(a1 + v52[36]);

          v53 = v38;

          outlined copy of Data?(v118, v116);
          outlined copy of Data?(v44, v45);
          v122.receiver = v2;
          v122.super_class = type metadata accessor for PommesResponse(0);
          v54 = v121;

          v55 = objc_msgSendSuper2(&v122, sel_init);
          outlined destroy of PommesResponse.Builder(a1, type metadata accessor for PommesResponse.Builder);
          return v55;
        }

        v103 = one-time initialization token for pommes;
        v104 = v38;
        if (v103 != -1)
        {
          swift_once();
        }

        v105 = type metadata accessor for Logger();
        __swift_project_value_buffer(v105, static Logger.pommes);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.fault.getter();
        v5 = v115;
        v6 = v117;
        v4 = v111;
        v11 = 0x1ECC8F000;
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&dword_1DC5C3000, v106, v107, "Attempting to create a PommesResponse without searchRequestUtterance", v108, 2u);
          MEMORY[0x1E1299E70](v108, -1, -1);
        }

        v68 = 1;
        v69 = 1;
        v70 = 1;
        v71 = 1;
      }

      else
      {

        outlined copy of PommesCandidateId?(v27, v28, v30, v29, v31);
        v98 = one-time initialization token for pommes;

        if (v98 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Logger.pommes);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.fault.getter();
        v5 = v115;
        v6 = v117;
        v4 = v111;
        v11 = 0x1ECC8F000;
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_1DC5C3000, v100, v101, "Attempting to create a PommesResponse without userSensitiveTier1Logs", v102, 2u);
          MEMORY[0x1E1299E70](v102, -1, -1);
        }

        v71 = 0;
        v68 = 1;
        v69 = 1;
        v70 = 1;
      }
    }

    else
    {

      outlined copy of PommesCandidateId?(v27, v28, v30, v29, v31);
      v93 = one-time initialization token for pommes;

      if (v93 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.pommes);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.fault.getter();
      v5 = v115;
      v6 = v117;
      v4 = v111;
      v11 = 0x1ECC8F000;
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_1DC5C3000, v95, v96, "Attempting to create a PommesResponse without taskStepLogs", v97, 2u);
        MEMORY[0x1E1299E70](v97, -1, -1);
      }

      v70 = 0;
      v71 = 0;
      v68 = 1;
      v69 = 1;
    }
  }

  else
  {

    outlined copy of Data?(v13, v12);
    v88 = one-time initialization token for pommes;

    if (v88 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.pommes);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();
    v11 = 0x1ECC8F000;
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1DC5C3000, v90, v91, "Attempting to create a PommesResponse without renderedTexts", v92, 2u);
      MEMORY[0x1E1299E70](v92, -1, -1);
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 1;
  }

LABEL_26:
  outlined destroy of PommesResponse.Builder(a1, type metadata accessor for PommesResponse.Builder);
  v72 = *(v2 + v119);

  if (v120)
  {
    v73 = *(v2 + *(v11 + 3440));

    outlined consume of Data._Representation?(*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8));
  }

  if (v68)
  {
    v74 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
  }

  if (v69)
  {
    v75 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts);

    v76 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts);

    outlined consume of Data._Representation?(*v4, *(v4 + 1));
    if ((v70 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    outlined consume of Data._Representation?(*v4, *(v4 + 1));
    if (!v70)
    {
LABEL_32:
      outlined consume of Data._Representation?(*v5, *(v5 + 1));
      if (v71)
      {
LABEL_33:
        v77 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs);

        if ((v69 & 1) == 0)
        {
          v84 = v6[1];

LABEL_45:
          v85 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp);
          goto LABEL_46;
        }

        v78 = 1;
LABEL_39:
        v80 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId + 8);

        v81 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier + 8);

        v82 = v6[1];

        if (v78)
        {
        }

        outlined consume of PommesCandidateId?(*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 8), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 16), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32));
        if (!v78)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

  v79 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs);

  outlined consume of Data._Representation?(*v5, *(v5 + 1));
  if (v71)
  {
    goto LABEL_33;
  }

LABEL_37:
  if (v69)
  {
    v78 = 0;
    goto LABEL_39;
  }

LABEL_43:
  v83 = v6[1];
LABEL_46:

LABEL_47:
  type metadata accessor for PommesResponse(0);
  v86 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v87 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t PommesResponse.Builder.experiences.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PommesResponse.Builder.clientResults.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PommesResponse.Builder.conversationContext.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t PommesResponse.Builder.conversationContext.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PommesResponse.Builder.metadataDomainName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PommesResponse.Builder.metadataDomainName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PommesResponse.Builder.renderedTexts.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t PommesResponse.Builder.redactedRenderedTexts.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t PommesResponse.Builder.pegasusDomainFlowStepLog.getter()
{
  v1 = *(v0 + 72);
  outlined copy of Data?(v1, *(v0 + 80));
  return v1;
}

uint64_t PommesResponse.Builder.pegasusDomainFlowStepLog.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation?(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.getter()
{
  v1 = *(v0 + 88);
  outlined copy of Data?(v1, *(v0 + 96));
  return v1;
}

uint64_t PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation?(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t PommesResponse.Builder.requestId.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t PommesResponse.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t PommesResponse.Builder.pommesCandidateId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 160);
  *(a1 + 32) = v6;
  return outlined copy of PommesCandidateId?(v2, v3, v4, v5, v6);
}

__n128 PommesResponse.Builder.pommesCandidateId.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of PommesCandidateId?(*(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v5;
  *(v1 + 160) = v3;
  return result;
}

uint64_t PommesResponse.Builder.preflightClientHandlerIdentifier.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t PommesResponse.Builder.preflightClientHandlerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 176);

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t PommesResponse.Builder.taskStepLogs.setter(uint64_t a1)
{
  v3 = *(v1 + 184);

  *(v1 + 184) = a1;
  return result;
}

uint64_t PommesResponse.Builder.userSensitiveTier1Logs.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t PommesResponse.Builder.componentsWarmedUp.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t PommesResponse.Builder.requestCountryCode.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t PommesResponse.Builder.requestCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 216);

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

void *PommesResponse.Builder.requestLocation.getter()
{
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.Builder.searchRequestUtterance.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t PommesResponse.Builder.searchRequestUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 248);

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t PommesResponse.Builder.sharedUserId.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t PommesResponse.Builder.sharedUserId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 264);

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t PommesResponse.Builder.encodedNLUserParses.getter()
{
  v1 = *(v0 + 272);
  outlined copy of Data?(v1, *(v0 + 280));
  return v1;
}

uint64_t PommesResponse.Builder.encodedNLUserParses.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation?(*(v2 + 272), *(v2 + 280));
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t PommesResponse.Builder.encodedNLFallbackParse.getter()
{
  v1 = *(v0 + 288);
  outlined copy of Data?(v1, *(v0 + 296));
  return v1;
}

uint64_t PommesResponse.Builder.encodedNLFallbackParse.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation?(*(v2 + 288), *(v2 + 296));
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

void *PommesResponse.Builder.asrRecognition.getter()
{
  v1 = *(v0 + 304);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.Builder.responseVariantResult.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return v1;
}

uint64_t PommesResponse.Builder.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 320);

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return result;
}

uint64_t PommesResponse.Builder.albusMultiturnRewrite.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return v1;
}

uint64_t PommesResponse.Builder.albusMultiturnRewrite.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 344);

  *(v2 + 336) = a1;
  *(v2 + 344) = a2;
  return result;
}

uint64_t PommesResponse.Builder.previousPommesContext.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PommesResponse.Builder(0) + 136);

  return outlined assign with take of PommesContext?(a1, v3);
}

uint64_t PommesResponse.Builder.domainUseCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesResponse.Builder(0) + 140));
}

uint64_t PommesResponse.Builder.domainUseCases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesResponse.Builder(0) + 140);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesResponse.Builder.isQueryDirectQuestion.setter(char a1)
{
  result = type metadata accessor for PommesResponse.Builder(0);
  *(v1 + *(result + 144)) = a1;
  return result;
}

uint64_t key path setter for PommesResponse.experiences : PommesResponse(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t PommesResponse.conversationContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8));
  return v1;
}

uint64_t PommesResponse.metadataDomainName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);

  return v1;
}

uint64_t PommesResponse.pegasusDomainFlowStepLog.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t PommesResponse.pegasusDomainFlowStepLog.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return outlined consume of Data._Representation?(v7, v8);
}

uint64_t PommesResponse.clientResults.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t PommesResponse.listenAfterSpeaking.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesResponse.listenAfterSpeaking.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesResponse.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId + 8);

  return v1;
}

uint64_t PommesResponse.resultCandidateId.getter()
{
  v1 = 0;
  v2 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32);
  if (v3 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32))
    {
      return v1;
    }

    goto LABEL_5;
  }

  if (v3 == 2)
  {
LABEL_5:
    v1 = *v2;
    outlined copy of PommesCandidateId(*v2, v2[1], v2[2], v2[3], v3);
  }

  return v1;
}

uint64_t PommesResponse.preflightClientHandlerIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier + 8);

  return v1;
}

uint64_t PommesResponse.isPersonalDomainFallback.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x270))(&v3);
  if (v3 == 3)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t PommesResponse.requestCountryCode.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PommesResponse.requestCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void *PommesResponse.requestLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.searchReason.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t PommesResponse.pommesCandidateId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId;
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId);
  v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 8);
  v5 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 16);
  v6 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return outlined copy of PommesCandidateId?(v3, v4, v5, v6, v7);
}

uint64_t PommesResponse.searchRequestUtterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8);

  return v1;
}

uint64_t PommesResponse.sharedUserId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId + 8);

  return v1;
}

uint64_t PommesResponse.encodedNLUserParses.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8));
  return v1;
}

uint64_t PommesResponse.encodedNLFallbackParse.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8));
  return v1;
}

void *PommesResponse.asrRecognition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.responseVariantResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult + 8);

  return v1;
}

uint64_t PommesResponse.albusMultiturnRewrite.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite + 8);

  return v1;
}

uint64_t PommesResponse.__allocating_init(coder:)(void *a1)
{
  v3 = type metadata accessor for PommesResponse.Builder(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  PommesResponse.Builder.init()(v9);
  closure #1 in PommesResponse.init(coder:)(v9, a1);
  outlined init with copy of PommesResponse.Builder(v9, v7);
  v12 = (*(ObjectType + 360))(v7);

  outlined destroy of PommesResponse.Builder(v9, type metadata accessor for PommesResponse.Builder);
  v13 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x30);
  v14 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t PommesResponse.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PommesResponse.Builder(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  ObjectType = swift_getObjectType();
  PommesResponse.Builder.init()(v10);
  closure #1 in PommesResponse.init(coder:)(v10, a1);
  outlined init with copy of PommesResponse.Builder(v10, v8);
  v12 = (*(ObjectType + 360))(v8);

  outlined destroy of PommesResponse.Builder(v10, type metadata accessor for PommesResponse.Builder);
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

void closure #1 in PommesResponse.init(coder:)(char *a1, void *a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v193 = v188 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v192 = *(v11 - 8);
  v12 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v195 = v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v188 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v19 = swift_allocObject();
  v197 = xmmword_1DC64ED70;
  *(v19 + 16) = xmmword_1DC64ED70;
  v196 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v19 + 32) = v196;
  *(v19 + 40) = type metadata accessor for Experience(0);
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v201 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
    if (swift_dynamicCast())
    {
      v20 = v203;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
    v20 = 0;
  }

  v21 = *a1;

  *a1 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v197;
  *(v22 + 32) = v196;
  *(v22 + 40) = type metadata accessor for PommesResult();
  NSCoder.decodeObject(of:forKey:)();

  v199 = v11;
  v190 = v17;
  if (*(&v201 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
    if (swift_dynamicCast())
    {
      v23 = v203;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
    v23 = 0;
  }

  v24 = *(a1 + 1);

  *(a1 + 1) = v23;
  v194 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v25 = NSCoder.decodeObject<A>(of:forKey:)();
  v198 = v7;
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 2), *(a1 + 3));
  *(a1 + 2) = v27;
  *(a1 + 3) = v29;
  v30 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v31 = NSCoder.decodeObject<A>(of:forKey:)();
  v191 = v30;
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v30 = v191;
  }

  else
  {
    v35 = 0xE400000000000000;
    v33 = 1701736302;
  }

  v36 = *(a1 + 5);

  *(a1 + 4) = v33;
  *(a1 + 5) = v35;
  v37 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  v38 = [a2 decodeBoolForKey_];

  a1[48] = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v197;
  *(v39 + 32) = v196;
  *(v39 + 40) = v30;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v201 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v40 = v203;
      goto LABEL_22;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v41 = *(a1 + 7);

  *(a1 + 7) = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v197;
  *(v42 + 32) = v196;
  *(v42 + 40) = v30;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v201 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v43 = v203;
      goto LABEL_27;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v44 = *(a1 + 8);

  *(a1 + 8) = v43;
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v45)
  {
    v46 = v45;
    v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 9), *(a1 + 10));
  *(a1 + 9) = v47;
  *(a1 + 10) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v197;
  v51 = v194;
  *(v50 + 32) = v196;
  *(v50 + 40) = v51;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v201 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v52 = v203;
      goto LABEL_35;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v53 = specialized _arrayForceCast<A, B>(_:)(v52);

  v54 = *(a1 + 23);

  *(a1 + 23) = v53;
  v55 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v55)
  {
    v56 = v55;
    v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 11), *(a1 + 12));
  *(a1 + 11) = v57;
  *(a1 + 12) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = v197;
  v61 = v194;
  *(v60 + 32) = v196;
  *(v60 + 40) = v61;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v201 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v62 = v203;
      goto LABEL_43;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v63 = specialized _arrayForceCast<A, B>(_:)(v62);

  v64 = *(a1 + 24);

  *(a1 + 24) = v63;
  v65 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651AE0);
  LOBYTE(v63) = [a2 decodeBoolForKey_];

  a1[104] = v63;
  v66 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v66)
  {
    v67 = v66;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = *(a1 + 15);

  *(a1 + 14) = v68;
  *(a1 + 15) = v70;
  v72 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  v73 = [a2 decodeBoolForKey_];

  a1[161] = v73;
  v74 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v79 = *(a1 + 22);

  *(a1 + 21) = v76;
  *(a1 + 22) = v78;
  v80 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v80)
  {
    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85 = *(a1 + 27);

  *(a1 + 26) = v82;
  *(a1 + 27) = v84;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CLLocation, 0x1E6985C40);
  v86 = NSCoder.decodeObject<A>(of:forKey:)();

  *(a1 + 28) = v86;
  v87 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651B40);
  v88 = [a2 decodeBoolForKey_];

  a1[233] = v88;
  v89 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v89)
  {
    v90 = v89;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0xE000000000000000;
  }

  v94 = *(a1 + 31);

  *(a1 + 30) = v91;
  *(a1 + 31) = v93;
  v95 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v95)
  {
    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;
  }

  else
  {
    v97 = 0;
    v99 = 0;
  }

  v100 = *(a1 + 33);

  *(a1 + 32) = v97;
  *(a1 + 33) = v99;
  v101 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v101)
  {
    v102 = v101;
    v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;
  }

  else
  {
    v103 = 0;
    v105 = 0xF000000000000000;
  }

  v106 = v190;
  outlined consume of Data._Representation?(*(a1 + 34), *(a1 + 35));
  *(a1 + 34) = v103;
  *(a1 + 35) = v105;
  v107 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v107)
  {
    v108 = v107;
    v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;
  }

  else
  {
    v109 = 0;
    v111 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 36), *(a1 + 37));
  *(a1 + 36) = v109;
  *(a1 + 37) = v111;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
  v112 = NSCoder.decodeObject<A>(of:forKey:)();

  *(a1 + 38) = v112;
  v113 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v113)
  {
    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0;
  }

  v118 = *(a1 + 40);

  *(a1 + 39) = v115;
  *(a1 + 40) = v117;
  v119 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  v120 = [a2 decodeBoolForKey_];

  a1[328] = v120;
  v121 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v121)
  {
    v122 = v121;
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0;
  }

  v126 = *(a1 + 43);

  *(a1 + 42) = v123;
  *(a1 + 43) = v125;
  v127 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  v128 = [a2 decodeBoolForKey_];

  a1[352] = v128;
  closure #1 in closure #1 in PommesResponse.init(coder:)(v106);
  v188[0] = type metadata accessor for PommesResponse.Builder(0);
  outlined assign with take of PommesContext?(v106, &a1[*(v188[0] + 136)]);
  v129 = swift_allocObject();
  *(v129 + 16) = v197;
  *(v129 + 32) = v196;
  *(v129 + 40) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v201 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
    goto LABEL_74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_74:
    v130 = MEMORY[0x1E69E7CC0];
    goto LABEL_75;
  }

  v130 = v203;
LABEL_75:
  v188[1] = v18;
  v189 = a2;
  v190 = a1;
  v131 = v130 & 0xFFFFFFFFFFFFFF8;
  if (v130 >> 62)
  {
LABEL_141:
    if (v130 < 0)
    {
      v187 = v130;
    }

    else
    {
      v187 = v131;
    }

    v132 = MEMORY[0x1E1299770](v187);
  }

  else
  {
    v132 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = 0;
  v134 = MEMORY[0x1E69E7CC0];
  while (v132 != v133)
  {
    if ((v130 & 0xC000000000000001) != 0)
    {
      v135 = MEMORY[0x1E12996A0](v133, v130);
    }

    else
    {
      if (v133 >= *(v131 + 16))
      {
        goto LABEL_138;
      }

      v135 = *(v130 + 8 * v133 + 32);
    }

    v136 = v135;
    v137 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v138 = [v135 integerValue];

    if (v138)
    {
      ++v133;
      if (v138 == 1)
      {
        v139 = 1;
        goto LABEL_87;
      }
    }

    else
    {
      v139 = 0;
LABEL_87:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 2) + 1, 1, v134);
      }

      v141 = *(v134 + 2);
      v140 = *(v134 + 3);
      if (v141 >= v140 >> 1)
      {
        v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1, v134);
      }

      *(v134 + 2) = v141 + 1;
      v134[v141 + 32] = v139;
      v133 = v137;
    }
  }

  v142 = v190;
  v143 = *(v190 + 25);

  *(v142 + 25) = v134;
  v144 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v144 || (v145 = v144, v146._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), PommesSearchReason.init(rawValue:)(v146), v145, v147 = v200, v200 == 5))
  {
    v147 = 0;
  }

  v142[232] = v147;
  v148 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v148)
  {
    goto LABEL_112;
  }

  v149 = v148;
  v150 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v150 || (v200 = 0uLL, v151 = v150, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v151, (v152 = *(&v200 + 1)) == 0))
  {

    goto LABEL_112;
  }

  v153 = v200;
  v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v156 = v155;
  v157._countAndFlagsBits = v154;
  v157._object = v156;
  v158 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesCandidateId.CandidateIdType.init(rawValue:), v157);

  switch(v158)
  {
    case 0:

      outlined consume of PommesCandidateId?(*(v142 + 16), *(v142 + 17), *(v142 + 18), *(v142 + 19), v142[160]);
      *(v142 + 16) = v153;
      *(v142 + 17) = v152;
      *(v142 + 18) = 0;
      *(v142 + 19) = 0;
      v142[160] = 0;
      goto LABEL_112;
    case 1:
      v160 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v160)
      {
        v200 = 0uLL;
        v161 = v160;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v162 = *(&v200 + 1);
        if (*(&v200 + 1))
        {
          v163 = v200;
          outlined consume of PommesCandidateId?(*(v142 + 16), *(v142 + 17), *(v142 + 18), *(v142 + 19), v142[160]);
          *(v142 + 16) = v153;
          *(v142 + 17) = v152;
          *(v142 + 18) = v163;
          *(v142 + 19) = v162;
          v159 = 1;
LABEL_111:
          v142[160] = v159;
          goto LABEL_112;
        }
      }

      else
      {
      }

      outlined consume of PommesCandidateId?(*(v142 + 16), *(v142 + 17), *(v142 + 18), *(v142 + 19), v142[160]);
      *(v142 + 8) = 0u;
      *(v142 + 9) = 0u;
      v159 = -1;
      goto LABEL_111;
    case 2:

      outlined consume of PommesCandidateId?(*(v142 + 16), *(v142 + 17), *(v142 + 18), *(v142 + 19), v142[160]);
      *(v142 + 16) = v153;
      *(v142 + 17) = v152;
      *(v142 + 18) = 0;
      *(v142 + 19) = 0;
      v159 = 2;
      goto LABEL_111;
  }

LABEL_112:
  v164 = swift_allocObject();
  *(v164 + 16) = v197;
  v165 = v194;
  *(v164 + 32) = v196;
  *(v164 + 40) = v165;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v201 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v200, &_sypSgMd, &_sypSgMR);
    v168 = MEMORY[0x1E69E7CC0];
    v167 = v193;
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_117;
    }

    goto LABEL_131;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
  v166 = swift_dynamicCast();
  v167 = v193;
  if ((v166 & 1) == 0)
  {
    v168 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_117;
    }

LABEL_131:
    if (v168 < 0)
    {
      v180 = v168;
    }

    else
    {
      v180 = v168 & 0xFFFFFFFFFFFFFF8;
    }

    v130 = MEMORY[0x1E1299770](v180);
    if (v130)
    {
      goto LABEL_118;
    }

    goto LABEL_135;
  }

  v168 = v203;
  if (v203 >> 62)
  {
    goto LABEL_131;
  }

LABEL_117:
  v130 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v130)
  {
LABEL_118:
    v169 = 0;
    v196 = v168 & 0xFFFFFFFFFFFFFF8;
    *&v197 = v168 & 0xC000000000000001;
    v170 = (v192 + 56);
    v171 = MEMORY[0x1E69E7CC0];
    v194 = (v192 + 32);
    v191 = v168;
    while (1)
    {
      if (v197)
      {
        v172 = MEMORY[0x1E12996A0](v169, v168);
      }

      else
      {
        if (v169 >= *(v196 + 16))
        {
          goto LABEL_140;
        }

        v172 = *(v168 + 8 * v169 + 32);
      }

      v173 = v172;
      v174 = v169 + 1;
      if (__OFADD__(v169, 1))
      {
        goto LABEL_139;
      }

      v175 = v130;
      v203 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v204 = v176;
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0]);
      v177 = v199;
      Message.init<A>(serializedBytes:extensions:partial:options:)();

      (*v170)(v167, 0, 1, v177);
      v178 = *v194;
      (*v194)(v195, v167, v177);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v171 + 2) + 1, 1, v171);
      }

      v130 = v175;
      v131 = *(v171 + 2);
      v179 = *(v171 + 3);
      if (v131 >= v179 >> 1)
      {
        v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v179 > 1, v131 + 1, 1, v171);
      }

      *(v171 + 2) = v131 + 1;
      v178(&v171[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v131], v195, v199);
      v167 = v193;
      v168 = v191;
      ++v169;
      if (v174 == v130)
      {
        goto LABEL_136;
      }
    }
  }

LABEL_135:
  v171 = MEMORY[0x1E69E7CC0];
LABEL_136:

  v181 = v188[0];
  v182 = *(v188[0] + 140);
  v183 = v190;
  v184 = *&v190[v182];

  *&v183[v182] = v171;
  v185 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  v186 = [v189 decodeBoolForKey_];

  v183[*(v181 + 144)] = v186;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      outlined copy of Data._Representation(*v4, *(v4 + 8));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PommesResponse.__allocating_init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for PommesResponse.Builder(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v21 - v16);
  v18 = *(a4 + 16);
  v21[0] = *a4;
  v21[1] = v18;
  v22 = *(a4 + 32);
  PommesResponse.Builder.init()(v21 - v16);
  closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(v17, a1, a2, a3, v21, a5);

  outlined destroy of ClientExperienceSignals?(v21, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

  outlined init with copy of PommesResponse.Builder(v17, v15);
  v19 = (*(v5 + 360))(v15);

  outlined destroy of PommesResponse.Builder(v17, type metadata accessor for PommesResponse.Builder);
  return v19;
}

void closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v197 = a5;
  v198 = a6;
  v195 = a4;
  v194 = a3;
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v200 = &v190 - v13;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v199 = *(v14 - 8);
  v15 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v202 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v193 = &v190 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v21 = swift_allocObject();
  v204 = xmmword_1DC64ED70;
  *(v21 + 16) = xmmword_1DC64ED70;
  v22 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v21 + 32) = v22;
  *(v21 + 40) = type metadata accessor for Experience(0);
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v208 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
    if (swift_dynamicCast())
    {
      v23 = v210[0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
    v23 = 0;
  }

  v24 = *a1;

  *a1 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v204;
  *(v25 + 32) = v22;
  *(v25 + 40) = type metadata accessor for PommesResult();
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v208 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
    if (swift_dynamicCast())
    {
      v26 = v210[0];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
    v26 = 0;
  }

  v27 = a1[1];

  a1[1] = v26;
  v28 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v203 = 0xD000000000000013;
  v205 = v28;
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  v196 = v14;
  if (v29)
  {
    v30 = v29;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(a1[2], a1[3]);
  a1[2] = v31;
  a1[3] = v33;
  v34 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v192 = 0xD000000000000012;
  v35 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v39 = 0xE400000000000000;
    v37 = 1701736302;
  }

  v40 = a1[5];

  a1[4] = v37;
  a1[5] = v39;
  v41 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  v42 = [a2 decodeBoolForKey_];

  *(a1 + 48) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v204;
  *(v43 + 32) = v22;
  *(v43 + 40) = v34;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v208 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v44 = v210[0];
      goto LABEL_22;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v45 = a1[7];

  a1[7] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v204;
  *(v46 + 32) = v22;
  *(v46 + 40) = v34;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v208 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v47 = v210[0];
      goto LABEL_27;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v48 = a1[8];

  a1[8] = v47;
  v49 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v49)
  {
    v50 = v49;
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(a1[9], a1[10]);
  a1[9] = v51;
  a1[10] = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = v204;
  v55 = v205;
  *(v54 + 32) = v22;
  *(v54 + 40) = v55;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v208 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v56 = v210[0];
      goto LABEL_35;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v57 = specialized _arrayForceCast<A, B>(_:)(v56);

  v58 = a1[23];

  a1[23] = v57;
  v59 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v59)
  {
    v60 = v59;
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(a1[11], a1[12]);
  a1[11] = v61;
  a1[12] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = v204;
  v65 = v205;
  *(v64 + 32) = v22;
  *(v64 + 40) = v65;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v208 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    v66 = swift_dynamicCast();
    v67 = v203;
    if (v66)
    {
      v68 = v210[0];
      v69 = &off_1E8636000;
      goto LABEL_43;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
    v67 = v203;
  }

  v69 = &off_1E8636000;
  v68 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v70 = specialized _arrayForceCast<A, B>(_:)(v68);

  v71 = a1[24];

  a1[24] = v70;
  v72 = MEMORY[0x1E1299430](v67, 0x80000001DC651AE0);
  LOBYTE(v70) = [a2 v69[238]];

  *(a1 + 104) = v70;
  v73 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  LOBYTE(v70) = [a2 v69[238]];

  *(a1 + 161) = v70;
  v74 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v79 = a1[22];

  a1[21] = v76;
  a1[22] = v78;
  v80 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v80)
  {
    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85 = a1[27];

  a1[26] = v82;
  a1[27] = v84;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CLLocation, 0x1E6985C40);
  v86 = NSCoder.decodeObject<A>(of:forKey:)();

  a1[28] = v86;
  v87 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v87)
  {
    v88 = v87;
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0xE000000000000000;
  }

  v92 = a1[31];

  a1[30] = v89;
  a1[31] = v91;
  v93 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v93)
  {
    v94 = v93;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;
  }

  else
  {
    v95 = 0;
    v97 = 0;
  }

  v98 = a1[33];

  a1[32] = v95;
  a1[33] = v97;
  v99 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v99)
  {
    v100 = v99;
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
  }

  else
  {
    v101 = 0;
    v103 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(a1[34], a1[35]);
  a1[34] = v101;
  a1[35] = v103;
  v104 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v104)
  {
    v105 = v104;
    v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(a1[36], a1[37]);
  a1[36] = v106;
  a1[37] = v108;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
  v109 = NSCoder.decodeObject<A>(of:forKey:)();

  a1[38] = v109;
  v110 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v110)
  {
    v111 = v110;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v115 = a1[40];

  a1[39] = v112;
  a1[40] = v114;
  v116 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  v117 = [a2 v69[238]];

  *(a1 + 328) = v117;
  v118 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v118)
  {
    v119 = v118;
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;
  }

  else
  {
    v120 = 0;
    v122 = 0;
  }

  v203 = v20;
  v123 = a1[43];

  a1[42] = v120;
  a1[43] = v122;
  v124 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  v125 = [a2 v69[238]];

  *(a1 + 352) = v125;
  v126 = v193;
  closure #1 in closure #1 in PommesResponse.init(coder:)(v193);
  v192 = type metadata accessor for PommesResponse.Builder(0);
  outlined assign with take of PommesContext?(v126, a1 + *(v192 + 136));
  v127 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v127 || (v128 = v127, v129._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), PommesSearchReason.init(rawValue:)(v129), v128, v130 = v207, v207 == 5))
  {
    v130 = 0;
  }

  *(a1 + 232) = v130;
  v131 = a1[15];
  v132 = v195;

  a1[14] = v194;
  a1[15] = v132;
  v133 = a1[16];
  v134 = a1[17];
  v135 = a1[18];
  v136 = a1[19];
  v137 = *(a1 + 160);
  v138 = v197;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v197, &v207, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  outlined consume of PommesCandidateId?(v133, v134, v135, v136, v137);
  v139 = v138[1];
  *(a1 + 8) = *v138;
  *(a1 + 9) = v139;
  *(a1 + 160) = *(v138 + 32);
  v140 = a1[25];
  v141 = v198;

  a1[25] = v141;
  *(a1 + 233) = 1;
  v142 = NSCoder.decodeObject<A>(of:forKey:)();
  v191 = a1;
  v201 = v22;
  if (v142)
  {
    v143 = v142;
    v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v145;
  }

  else
  {
    v144 = 0;
    v146 = 0;
  }

  v197 = a2;
  closure #2 in closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(&v207);
  v147 = *(&v207 + 1);
  v148 = v207;
  v149 = *(&v208 + 1);
  v150 = v208;
  LOBYTE(v151) = v209;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v152 = type metadata accessor for Logger();
    v153 = __swift_project_value_buffer(v152, static Logger.pommes);

    outlined copy of PommesCandidateId?(v148, v147, v150, v149, v151);
    v198 = v153;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.debug.getter();

    outlined consume of PommesCandidateId?(v148, v147, v150, v149, v151);
    if (os_log_type_enabled(v154, v155))
    {
      v156 = v144;
      v157 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v210[0] = v195;
      *v157 = 136315394;
      *&v207 = v156;
      *(&v207 + 1) = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v158 = String.init<A>(describing:)();
      v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, v210);

      *(v157 + 4) = v160;
      *(v157 + 12) = 2080;
      *&v207 = v148;
      *(&v207 + 1) = v147;
      *&v208 = v150;
      *(&v208 + 1) = v149;
      LOBYTE(v209) = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v161 = String.init<A>(describing:)();
      v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, v210);

      *(v157 + 14) = v163;
      _os_log_impl(&dword_1DC5C3000, v154, v155, "PommesResponse : Cached response constructed from:\n  requestId = %s\n  pommesCandidateId = %s", v157, 0x16u);
      v164 = v195;
      swift_arrayDestroy();
      MEMORY[0x1E1299E70](v164, -1, -1);
      MEMORY[0x1E1299E70](v157, -1, -1);
    }

    else
    {

      outlined consume of PommesCandidateId?(v148, v147, v150, v149, v151);
    }

    v165 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651B40);
    v166 = [v197 decodeBoolForKey_];

    v151 = v196;
    v167 = v201;
    if (v166)
    {
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_1DC5C3000, v168, v169, "PommesResponse : A cached response should not be cached", v170, 2u);
        MEMORY[0x1E1299E70](v170, -1, -1);
      }
    }

    v171 = swift_allocObject();
    *(v171 + 16) = v204;
    v172 = v205;
    *(v171 + 32) = v167;
    *(v171 + 40) = v172;
    NSCoder.decodeObject(of:forKey:)();

    if (*(&v208 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
      v173 = swift_dynamicCast();
      v146 = v200;
      if (v173)
      {
        v174 = v210[0];
        goto LABEL_86;
      }
    }

    else
    {
      outlined destroy of ClientExperienceSignals?(&v207, &_sypSgMd, &_sypSgMR);
      v146 = v200;
    }

    v174 = MEMORY[0x1E69E7CC0];
LABEL_86:
    if (v174 >> 62)
    {
      break;
    }

    v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v175)
    {
      goto LABEL_107;
    }

LABEL_88:
    v147 = 0;
    v144 = 0;
    v205 = v174 & 0xC000000000000001;
    *&v204 = v174 & 0xFFFFFFFFFFFFFF8;
    v150 = (v199 + 56);
    v203 = MEMORY[0x1E69E7CC0];
    v201 = (v199 + 32);
    v198 = v174;
    while (1)
    {
      if (v205)
      {
        v176 = MEMORY[0x1E12996A0](v147, v174);
      }

      else
      {
        if (v147 >= *(v204 + 16))
        {
          goto LABEL_101;
        }

        v176 = *(v174 + 8 * v147 + 32);
      }

      v177 = v176;
      v148 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        break;
      }

      v210[0] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v210[1] = v178;
      v209 = 0;
      v207 = 0u;
      v208 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0]);
      Message.init<A>(serializedBytes:extensions:partial:options:)();

      (*v150)(v146, 0, 1, v151);
      v179 = *v201;
      (*v201)(v202, v146, v151);
      v180 = v203;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v180 + 2) + 1, 1, v180);
      }

      v149 = *(v180 + 2);
      v181 = *(v180 + 3);
      if (v149 >= v181 >> 1)
      {
        v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v181 > 1, v149 + 1, 1, v180);
      }

      *(v180 + 2) = v149 + 1;
      v182 = (*(v199 + 80) + 32) & ~*(v199 + 80);
      v203 = v180;
      v179(&v180[v182 + *(v199 + 72) * v149], v202, v151);
      v146 = v200;
      v174 = v198;
      ++v147;
      if (v148 == v175)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
  }

  if (v174 < 0)
  {
    v183 = v174;
  }

  else
  {
    v183 = v174 & 0xFFFFFFFFFFFFFF8;
  }

  v175 = MEMORY[0x1E1299770](v183);
  if (v175)
  {
    goto LABEL_88;
  }

LABEL_107:
  v203 = MEMORY[0x1E69E7CC0];
LABEL_108:

  v184 = v192;
  v185 = *(v192 + 140);
  v186 = v191;
  v187 = *(v191 + v185);

  *(v186 + v185) = v203;
  v188 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  v189 = [v197 decodeBoolForKey_];

  *(v186 + *(v184 + 144)) = v189;
}

uint64_t closure #1 in closure #1 in PommesResponse.init(coder:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v10 = type metadata accessor for PommesContext();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, type metadata accessor for PommesContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v4, v6);
    v12 = *(*(v10 - 8) + 56);
    v13 = a1;
    v14 = 0;
    v15 = v10;
  }

  else
  {
    v11 = type metadata accessor for PommesContext();
    v12 = *(*(v11 - 8) + 56);
    v15 = v11;
    v13 = a1;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void closure #2 in closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(uint64_t a1@<X8>)
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    v4 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v4)
    {
      v5 = v4;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
}

Swift::Void __swiftcall PommesResponse.encode(with:)(NSCoder with)
{
  v2 = v1;
  v159 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v161 = *(v159 - 8);
  v4 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v162 = &v154 - v8;
  v163 = type metadata accessor for PommesContext();
  v158 = *(v163 - 1);
  v9 = *(v158 + 8);
  v10 = MEMORY[0x1EEE9AC00](v163);
  v155 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v10);
  type metadata accessor for Experience(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = MEMORY[0x1E1299430](0x6E65697265707865, 0xEB00000000736563);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v14];

  (*((*v12 & *v2) + 0x188))();
  type metadata accessor for PommesResult();
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = MEMORY[0x1E1299430](0x6552746E65696C63, 0xED000073746C7573);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8);
  if (v17 >> 60 != 15)
  {
    v18 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
    v19 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data?(v18, v17);
    outlined copy of Data._Representation(v18, v17);
    v20 = Data._bridgeToObjectiveC()().super.isa;
    v21 = [v19 initWithData_];

    outlined consume of Data._Representation?(v18, v17);
    v22 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651D20);
    [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

    outlined consume of Data._Representation?(v18, v17);
  }

  v23 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8));
  v157 = 0xD000000000000012;
  v24 = MEMORY[0x1E1299430]();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered);
  v26 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  [(objc_class *)with.super.isa encodeBool:v25 forKey:v26];

  (*((*v12 & *v2) + 0x1A0))();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = MEMORY[0x1E1299430](0x64657265646E6572, 0xED00007374786554);
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  (*((*v12 & *v2) + 0x1B8))();
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651AA0);
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];

  v31 = (*((*v12 & *v2) + 0x1D0))();
  if (v32 >> 60 != 15)
  {
    v33 = v31;
    v34 = v32;
    v35 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v33, v34);
    v36 = Data._bridgeToObjectiveC()().super.isa;
    v37 = [v35 initWithData_];

    outlined consume of Data._Representation?(v33, v34);
    v38 = MEMORY[0x1E1299430](0xD000000000000018, 0x80000001DC651D00);
    [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];

    v31 = outlined consume of Data._Representation?(v33, v34);
  }

  (*((*v12 & *v2) + 0x1E8))(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = MEMORY[0x1E1299430](0x706574536B736174, 0xEC00000073676F4CLL);
  [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];

  v41 = (*((*v12 & *v2) + 0x200))();
  if (v42 >> 60 != 15)
  {
    v43 = v41;
    v44 = v42;
    v45 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v43, v44);
    v46 = Data._bridgeToObjectiveC()().super.isa;
    v47 = [v45 initWithData_];

    outlined consume of Data._Representation?(v43, v44);
    v48 = MEMORY[0x1E1299430](0xD000000000000022, 0x80000001DC651CD0);
    [(objc_class *)with.super.isa encodeObject:v47 forKey:v48];

    v41 = outlined consume of Data._Representation?(v43, v44);
  }

  (*((*v12 & *v2) + 0x218))(v41);
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v50 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651AC0);
  [(objc_class *)with.super.isa encodeObject:v49 forKey:v50];

  LOBYTE(v50) = (*((*v12 & *v2) + 0x230))();
  v156 = 0xD000000000000013;
  v51 = MEMORY[0x1E1299430]();
  [(objc_class *)with.super.isa encodeBool:v50 & 1 forKey:v51];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId + 8))
  {
    v52 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId));
    v53 = MEMORY[0x1E1299430](0x4974736575716572, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v52 forKey:v53];
  }

  v54 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight);
  v55 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  [(objc_class *)with.super.isa encodeBool:v54 forKey:v55];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier + 8))
  {
    v56 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier));
    v57 = MEMORY[0x1E1299430](0xD000000000000020, 0x80000001DC651CA0);
    [(objc_class *)with.super.isa encodeObject:v56 forKey:v57];
  }

  v58 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp);
  v59 = *(v58 + 16);
  if (v59)
  {
    v164 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v60 = (v58 + 32);
    do
    {
      v61 = *v60++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v62 = *(v164 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v59;
    }

    while (v59);
  }

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v63 = Array._bridgeToObjectiveC()().super.isa;

  v64 = v157;
  v65 = MEMORY[0x1E1299430](v157, 0x80000001DC651B20);
  [(objc_class *)with.super.isa encodeObject:v63 forKey:v65];

  v66 = (*((*v12 & *v2) + 0x258))();
  if (v67)
  {
    v68 = MEMORY[0x1E1299430](v66);

    v69 = MEMORY[0x1E1299430](v64, 0x80000001DC651C80);
    [(objc_class *)with.super.isa encodeObject:v68 forKey:v69];
  }

  v70 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation);
  if (v70)
  {
    v71 = v70;
    v72 = MEMORY[0x1E1299430](0x4C74736575716572, 0xEF6E6F697461636FLL);
    [(objc_class *)with.super.isa encodeObject:v71 forKey:v72];
  }

  (*((*v12 & *v2) + 0x270))(&v164, v66);
  v73 = 0xE700000000000000;
  v74 = 0x6E776F6E6B6E75;
  v75 = 0xEF6B6361626C6C61;
  v76 = 0x4665737261506F6ELL;
  v77 = 0x80000001DC6511D0;
  if (v164 == 3)
  {
    v78 = 0xD000000000000016;
  }

  else
  {
    v78 = 0xD000000000000010;
  }

  if (v164 != 3)
  {
    v77 = 0x80000001DC6511F0;
  }

  if (v164 != 2)
  {
    v76 = v78;
    v75 = v77;
  }

  if (v164)
  {
    v74 = 0x616D6F446F666E69;
    v73 = 0xEF65737261506E69;
  }

  if (v164 <= 1u)
  {
    v79 = v74;
  }

  else
  {
    v79 = v76;
  }

  if (v164 <= 1u)
  {
    v80 = v73;
  }

  else
  {
    v80 = v75;
  }

  v81 = MEMORY[0x1E1299430](v79, v80);

  v82 = MEMORY[0x1E1299430](0x6552686372616573, 0xEC0000006E6F7361);
  [(objc_class *)with.super.isa encodeObject:v81 forKey:v82];

  v84 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId);
  v83 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 8);
  v86 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 16);
  v85 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
  v87 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32);
  if (v87 > 1)
  {
    if (v87 != 2)
    {
      goto LABEL_43;
    }

    v157 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
    v88 = 0xE900000000000073;
    v89 = 0x656D6D6F506E7572;
  }

  else
  {
    v157 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
    if (v87)
    {
      v88 = 0xE500000000000000;
      v89 = 0x636F64656DLL;
    }

    else
    {
      v88 = 0xE200000000000000;
      v89 = 25458;
    }
  }

  v90 = MEMORY[0x1E1299430](v89, v88);

  v91 = MEMORY[0x1E1299430](0x74616469646E6163, 0xEF65707954644965);
  [(objc_class *)with.super.isa encodeObject:v90 forKey:v91];

  if (v87 == 1)
  {
    v92 = MEMORY[0x1E1299430](v84, v83);
    v93 = MEMORY[0x1E1299430](0x74616469646E6163, 0xEB00000000644965);
    [(objc_class *)with.super.isa encodeObject:v92 forKey:v93];

    v94 = MEMORY[0x1E1299430](v86, v157);
    v95 = MEMORY[0x1E1299430](0x6449756374, 0xE500000000000000);
  }

  else
  {
    v94 = MEMORY[0x1E1299430](v84, v83);
    v95 = MEMORY[0x1E1299430](0x74616469646E6163, 0xEB00000000644965);
  }

  [(objc_class *)with.super.isa encodeObject:v94 forKey:v95];

LABEL_43:
  v96 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse);
  v97 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651B40);
  [(objc_class *)with.super.isa encodeBool:v96 forKey:v97];

  v98 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8));
  v99 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651B60);
  [(objc_class *)with.super.isa encodeObject:v98 forKey:v99];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId + 8))
  {
    v100 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId));
    v101 = MEMORY[0x1E1299430](0x7355646572616873, 0xEC00000064497265);
    [(objc_class *)with.super.isa encodeObject:v100 forKey:v101];
  }

  v102 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
  v103 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8);
  if (v103 >> 60 != 15)
  {
    v104 = *v102;
    outlined copy of Data._Representation(*v102, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8));
    v105 = Data._bridgeToObjectiveC()().super.isa;
    v106 = MEMORY[0x1E1299430](v156, 0x80000001DC651C60);
    [(objc_class *)with.super.isa encodeObject:v105 forKey:v106];

    outlined consume of Data._Representation?(v104, v103);
  }

  v107 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
  v108 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8);
  if (v108 >> 60 != 15)
  {
    v109 = *v107;
    outlined copy of Data._Representation(*v107, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8));
    v110 = Data._bridgeToObjectiveC()().super.isa;
    v111 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651C40);
    [(objc_class *)with.super.isa encodeObject:v110 forKey:v111];

    outlined consume of Data._Representation?(v109, v108);
  }

  v112 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition);
  if (v112)
  {
    v113 = v112;
    v114 = MEMORY[0x1E1299430](0x676F636552727361, 0xEE006E6F6974696ELL);
    [(objc_class *)with.super.isa encodeObject:v113 forKey:v114];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult + 8))
  {
    v115 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult));
    v116 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C20);
    [(objc_class *)with.super.isa encodeObject:v115 forKey:v116];
  }

  v117 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult);
  v118 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  [(objc_class *)with.super.isa encodeBool:v117 forKey:v118];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite + 8))
  {
    v119 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite));
  }

  else
  {
    v119 = 0;
  }

  v120 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BA0);
  [(objc_class *)with.super.isa encodeObject:v119 forKey:v120];
  swift_unknownObjectRelease();

  v121 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion);
  v122 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  [(objc_class *)with.super.isa encodeBool:v121 forKey:v122];

  v123 = type metadata accessor for JSONEncoder();
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v126 = JSONEncoder.init()();
  v127 = v162;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext, v162, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v128 = (*(v158 + 6))(v127, 1, v163);
  v156 = v126;
  if (v128 == 1)
  {
    outlined destroy of ClientExperienceSignals?(v127, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v129 = v155;
    outlined init with take of PommesContext(v127, v155);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, type metadata accessor for PommesContext);
    v130 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v132 = v131;
    v133 = Data._bridgeToObjectiveC()().super.isa;
    v134 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C00);
    [(objc_class *)with.super.isa encodeObject:v133 forKey:v134];
    outlined consume of Data._Representation(v130, v132);

    outlined destroy of PommesResponse.Builder(v129, type metadata accessor for PommesContext);
  }

  v157 = v2;
  v158 = with.super.isa;
  v135 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases);
  v136 = *(v135 + 16);
  v137 = v160;
  if (v136)
  {
    v138 = *(v161 + 16);
    v139 = v135 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v162 = *(v161 + 72);
    v163 = v138;
    v140 = (v161 + 8);
    v141 = MEMORY[0x1E69E7CC0];
    v142 = v159;
    v161 += 16;
    v138(v160, v139, v159);
    while (1)
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0]);
      v143 = Message.serializedData(partial:)();
      v145 = v144;
      (*v140)(v137, v142);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v141 + 2) + 1, 1, v141);
      }

      v147 = *(v141 + 2);
      v146 = *(v141 + 3);
      if (v147 >= v146 >> 1)
      {
        v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), v147 + 1, 1, v141);
      }

      *(v141 + 2) = v147 + 1;
      v148 = &v141[16 * v147];
      *(v148 + 4) = v143;
      *(v148 + 5) = v145;
      v142 = v159;
      v137 = v160;
      v139 += v162;
      if (!--v136)
      {
        break;
      }

      v163(v160, v139, v159);
    }
  }

  v149 = Array._bridgeToObjectiveC()().super.isa;

  v150 = MEMORY[0x1E1299430](0x73556E69616D6F64, 0xEE00736573614365);
  v151 = v158;
  [(objc_class *)v158 encodeObject:v149 forKey:v150];

  v152 = *(v157 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion);
  v153 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  [(objc_class *)v151 encodeBool:v152 forKey:v153];
}

Swift::Void __swiftcall PommesResponse.encode(cachingCoder:)(NSCoder cachingCoder)
{
  v2 = v1;
  v122 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v124 = *(v122 - 8);
  v4 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v123 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v125 = v119 - v8;
  v126 = type metadata accessor for PommesContext();
  v120 = *(v126 - 1);
  v9 = v120[8];
  v10 = MEMORY[0x1EEE9AC00](v126);
  v119[0] = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v10);
  type metadata accessor for Experience(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = MEMORY[0x1E1299430](0x6E65697265707865, 0xEB00000000736563);
  [(objc_class *)cachingCoder.super.isa encodeObject:isa forKey:v14];

  (*((*v12 & *v2) + 0x188))();
  type metadata accessor for PommesResult();
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = MEMORY[0x1E1299430](0x6552746E65696C63, 0xED000073746C7573);
  [(objc_class *)cachingCoder.super.isa encodeObject:v15 forKey:v16];

  v17 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8);
  if (v17 >> 60 != 15)
  {
    v18 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
    v19 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data?(v18, v17);
    outlined copy of Data._Representation(v18, v17);
    v20 = Data._bridgeToObjectiveC()().super.isa;
    v21 = [v19 initWithData_];

    outlined consume of Data._Representation?(v18, v17);
    v22 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651D20);
    [(objc_class *)cachingCoder.super.isa encodeObject:v21 forKey:v22];

    outlined consume of Data._Representation?(v18, v17);
  }

  v23 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8));
  v24 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651A60);
  [(objc_class *)cachingCoder.super.isa encodeObject:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered);
  v26 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  [(objc_class *)cachingCoder.super.isa encodeBool:v25 forKey:v26];

  (*((*v12 & *v2) + 0x1A0))();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = MEMORY[0x1E1299430](0x64657265646E6572, 0xED00007374786554);
  [(objc_class *)cachingCoder.super.isa encodeObject:v27 forKey:v28];

  (*((*v12 & *v2) + 0x1B8))();
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651AA0);
  [(objc_class *)cachingCoder.super.isa encodeObject:v29 forKey:v30];

  v31 = (*((*v12 & *v2) + 0x1D0))();
  if (v32 >> 60 != 15)
  {
    v33 = v31;
    v34 = v32;
    v35 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v33, v34);
    v36 = Data._bridgeToObjectiveC()().super.isa;
    v37 = [v35 initWithData_];

    outlined consume of Data._Representation?(v33, v34);
    v38 = MEMORY[0x1E1299430](0xD000000000000018, 0x80000001DC651D00);
    [(objc_class *)cachingCoder.super.isa encodeObject:v37 forKey:v38];

    v31 = outlined consume of Data._Representation?(v33, v34);
  }

  (*((*v12 & *v2) + 0x1E8))(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = MEMORY[0x1E1299430](0x706574536B736174, 0xEC00000073676F4CLL);
  [(objc_class *)cachingCoder.super.isa encodeObject:v39 forKey:v40];

  v41 = (*((*v12 & *v2) + 0x200))();
  if (v42 >> 60 != 15)
  {
    v43 = v41;
    v44 = v42;
    v45 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v43, v44);
    v46 = Data._bridgeToObjectiveC()().super.isa;
    v47 = [v45 initWithData_];

    outlined consume of Data._Representation?(v43, v44);
    v48 = MEMORY[0x1E1299430](0xD000000000000022, 0x80000001DC651CD0);
    [(objc_class *)cachingCoder.super.isa encodeObject:v47 forKey:v48];

    v41 = outlined consume of Data._Representation?(v43, v44);
  }

  (*((*v12 & *v2) + 0x218))(v41);
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v50 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651AC0);
  [(objc_class *)cachingCoder.super.isa encodeObject:v49 forKey:v50];

  LOBYTE(v50) = (*((*v12 & *v2) + 0x230))();
  v51 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651AE0);
  [(objc_class *)cachingCoder.super.isa encodeBool:v50 & 1 forKey:v51];

  v52 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight);
  v53 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  [(objc_class *)cachingCoder.super.isa encodeBool:v52 forKey:v53];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier + 8))
  {
    v54 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier));
    v55 = MEMORY[0x1E1299430](0xD000000000000020, 0x80000001DC651CA0);
    [(objc_class *)cachingCoder.super.isa encodeObject:v54 forKey:v55];
  }

  v56 = (*((*v12 & *v2) + 0x258))();
  if (v57)
  {
    v58 = MEMORY[0x1E1299430](v56);

    v59 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651C80);
    [(objc_class *)cachingCoder.super.isa encodeObject:v58 forKey:v59];
  }

  v60 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation);
  if (v60)
  {
    v61 = v60;
    v62 = MEMORY[0x1E1299430](0x4C74736575716572, 0xEF6E6F697461636FLL);
    [(objc_class *)cachingCoder.super.isa encodeObject:v61 forKey:v62];
  }

  v63 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8));
  v64 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651B60);
  [(objc_class *)cachingCoder.super.isa encodeObject:v63 forKey:v64];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId + 8))
  {
    v65 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId));
    v66 = MEMORY[0x1E1299430](0x7355646572616873, 0xEC00000064497265);
    [(objc_class *)cachingCoder.super.isa encodeObject:v65 forKey:v66];
  }

  v67 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
  v68 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8);
  if (v68 >> 60 != 15)
  {
    v69 = *v67;
    outlined copy of Data._Representation(*v67, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8));
    v70 = Data._bridgeToObjectiveC()().super.isa;
    v71 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651C60);
    [(objc_class *)cachingCoder.super.isa encodeObject:v70 forKey:v71];

    outlined consume of Data._Representation?(v69, v68);
  }

  v72 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
  v73 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8);
  if (v73 >> 60 != 15)
  {
    v74 = *v72;
    outlined copy of Data._Representation(*v72, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8));
    v75 = Data._bridgeToObjectiveC()().super.isa;
    v76 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651C40);
    [(objc_class *)cachingCoder.super.isa encodeObject:v75 forKey:v76];

    outlined consume of Data._Representation?(v74, v73);
  }

  v77 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition);
  if (v77)
  {
    v78 = v77;
    v79 = MEMORY[0x1E1299430](0x676F636552727361, 0xEE006E6F6974696ELL);
    [(objc_class *)cachingCoder.super.isa encodeObject:v78 forKey:v79];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult + 8))
  {
    v80 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult));
    v81 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C20);
    [(objc_class *)cachingCoder.super.isa encodeObject:v80 forKey:v81];
  }

  v82 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult);
  v83 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  [(objc_class *)cachingCoder.super.isa encodeBool:v82 forKey:v83];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite + 8))
  {
    v84 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite));
  }

  else
  {
    v84 = 0;
  }

  v85 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BA0);
  [(objc_class *)cachingCoder.super.isa encodeObject:v84 forKey:v85];
  swift_unknownObjectRelease();

  v86 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion);
  v87 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  [(objc_class *)cachingCoder.super.isa encodeBool:v86 forKey:v87];

  v88 = type metadata accessor for JSONEncoder();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  v91 = JSONEncoder.init()();
  v92 = v125;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext, v125, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v93 = (v120[6])(v92, 1, v126);
  v121 = cachingCoder.super.isa;
  v119[1] = v91;
  if (v93 == 1)
  {
    outlined destroy of ClientExperienceSignals?(v92, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v94 = v119[0];
    outlined init with take of PommesContext(v92, v119[0]);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, type metadata accessor for PommesContext);
    v95 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v97 = v96;
    v98 = Data._bridgeToObjectiveC()().super.isa;
    v99 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C00);
    [(objc_class *)cachingCoder.super.isa encodeObject:v98 forKey:v99];
    outlined consume of Data._Representation(v95, v97);

    outlined destroy of PommesResponse.Builder(v94, type metadata accessor for PommesContext);
  }

  v120 = v2;
  v100 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases);
  v101 = *(v100 + 16);
  v102 = v123;
  if (v101)
  {
    v103 = *(v124 + 16);
    v104 = v100 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v125 = *(v124 + 72);
    v126 = v103;
    v105 = (v124 + 8);
    v106 = MEMORY[0x1E69E7CC0];
    v107 = v122;
    v124 += 16;
    v103(v123, v104, v122);
    while (1)
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0]);
      v108 = Message.serializedData(partial:)();
      v110 = v109;
      (*v105)(v102, v107);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
      }

      v112 = *(v106 + 2);
      v111 = *(v106 + 3);
      if (v112 >= v111 >> 1)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v106);
      }

      *(v106 + 2) = v112 + 1;
      v113 = &v106[16 * v112];
      *(v113 + 4) = v108;
      *(v113 + 5) = v110;
      v107 = v122;
      v102 = v123;
      v104 += v125;
      if (!--v101)
      {
        break;
      }

      v126(v123, v104, v122);
    }
  }

  v114 = Array._bridgeToObjectiveC()().super.isa;

  v115 = MEMORY[0x1E1299430](0x73556E69616D6F64, 0xEE00736573614365);
  v116 = v121;
  [(objc_class *)v121 encodeObject:v114 forKey:v115];

  v117 = *(v120 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion);
  v118 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  [(objc_class *)v116 encodeBool:v117 forKey:v118];
}

Swift::String_optional __swiftcall PommesResponse.primaryPluginIdentifier()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v2 >> 62)
  {
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 < 0)
    {
      v10 = v2;
    }

    v11 = v2;
    v12 = MEMORY[0x1E1299770](v10);
    v2 = v11;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12996A0](0);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v7 = (*((*v1 & *v5) + 0x88))(v6);
  v9 = v8;

LABEL_11:
  v2 = v7;
  v3 = v9;
LABEL_14:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

double PommesResponse._computedPrimaryQueryConfidence.getter()
{
  v1 = &v0[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  if ((v0[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence + 8] & 1) == 0)
  {
    return *v1;
  }

  result = specialized closure #1 in PommesResponse._computedPrimaryQueryConfidence.getter(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t PommesResponse.primaryCatIds()()
{
  v1 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (result >> 62)
  {
    v7 = result & 0xFFFFFFFFFFFFFF8;
    if (result < 0)
    {
      v7 = result;
    }

    v8 = result;
    v9 = MEMORY[0x1E1299770](v7);
    result = v8;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12996A0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    v6 = (*((*v1 & *v4) + 0xD0))(v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t PommesResponse.primaryInstructionIntent()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20 - v6;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v5);
  if (result >> 62)
  {
    v13 = result & 0xFFFFFFFFFFFFFF8;
    if (result < 0)
    {
      v13 = result;
    }

    v14 = result;
    v15 = MEMORY[0x1E1299770](v13);
    result = v14;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_10:

    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v7, 1, 1, v16);
    return (*(v17 + 104))(a1, *MEMORY[0x1E69BCBD8], v16);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E12996A0](0, result);

    v19 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, v18 + v19, v11);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(result + 32);

    v10 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, &v9[v10], v11);

LABEL_6:
    (*(v12 + 56))(v7, 0, 1, v11);
    return (*(v12 + 32))(a1, v7, v11);
  }

  __break(1u);
  return result;
}

uint64_t PommesResponse.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DC64F450;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCmMd, &_s21SiriInformationSearch14PommesResponseCmMR);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 64) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v1 + 96) = type metadata accessor for PommesResponse(0);
  *(v1 + 104) = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesResponse and conformance NSObject, type metadata accessor for PommesResponse);
  *(v1 + 72) = v0;
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2B8);
  v8 = v0;
  v9 = v7();
  v10 = MEMORY[0x1E69E6438];
  *(v1 + 136) = MEMORY[0x1E69E63B0];
  *(v1 + 144) = v10;
  *(v1 + 112) = v9;
  v12 = *(v8 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
  v11 = *(v8 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;
  *(v1 + 152) = v12;
  *(v1 + 160) = v11;

  return String.init(format:_:)();
}

uint64_t PommesResponse.setPegasusDomainLogs(flowStep:userSensitiveTier1:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1D8);
  outlined copy of Data?(a1, a2);
  v10(a1, a2);
  v12 = *((*v9 & *v4) + 0x208);
  outlined copy of Data?(a3, a4);

  return v12(a3, a4);
}

Swift::Void __swiftcall PommesResponse.setPegasusDomainLogs(flowStep:userSensitiveTier1:)(Swift::OpaquePointer flowStep, Swift::OpaquePointer userSensitiveTier1)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1F0);

  v6(v7);
  v8 = *((*v5 & *v2) + 0x220);

  v8(v9);
  v10 = 0;
  v11 = *(flowStep._rawValue + 2);
  v12 = flowStep._rawValue + 40;
  v13 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v14 = &v12[16 * v10];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_33;
    }

    v17 = *v14;
    v14 += 2;
    v16 = v17;
    ++v10;
    if (v17 >> 60 != 15)
    {
      v18 = *(v14 - 3);
      outlined copy of Data._Representation(v18, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v18;
      *(v21 + 5) = v16;
      v10 = v15;
      goto LABEL_2;
    }
  }

  v22 = MEMORY[0x1E69E7D40];
  if (*(v13 + 2))
  {
    v23 = *(v13 + 4);
    v24 = *(v13 + 5);
    outlined copy of Data._Representation(v23, v24);
  }

  else
  {
    v23 = 0;
    v24 = 0xF000000000000000;
  }

  (*((*v22 & *v2) + 0x1D8))(v23, v24);
  v25 = 0;
  v26 = *(userSensitiveTier1._rawValue + 2);
  v27 = userSensitiveTier1._rawValue + 40;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v29 = &v27[16 * v25];
  while (v26 != v25)
  {
    if (v25 >= v26)
    {
      goto LABEL_34;
    }

    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_35;
    }

    v32 = *v29;
    v29 += 2;
    v31 = v32;
    ++v25;
    if (v32 >> 60 != 15)
    {
      v33 = *(v29 - 3);
      outlined copy of Data._Representation(v33, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v35 = *(v28 + 2);
      v34 = *(v28 + 3);
      if (v35 >= v34 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v28);
      }

      *(v28 + 2) = v35 + 1;
      v36 = &v28[16 * v35];
      *(v36 + 4) = v33;
      *(v36 + 5) = v31;
      v25 = v30;
      goto LABEL_16;
    }
  }

  if (*(v28 + 2))
  {
    v37 = *(v28 + 4);
    v38 = *(v28 + 5);
    outlined copy of Data._Representation(v37, v38);
  }

  else
  {
    v37 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = *((*v22 & *v2) + 0x208);

  v39(v37, v38);
}

id PommesResult.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static PommesCandidateId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v19 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      outlined copy of PommesCandidateId(v19, v2, v10, v9, 0);
      outlined copy of PommesCandidateId(v3, v2, v5, v4, 0);
      outlined consume of PommesCandidateId(v3, v2, v5, v4, 0);
      v14 = v3;
      v15 = v2;
      v16 = v10;
      v17 = v9;
      v18 = 0;
      goto LABEL_30;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 0);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 0);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 0);
    v22 = v8;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = 0;
LABEL_28:
    outlined consume of PommesCandidateId(v22, v23, v24, v25, v26);
    return v21 & 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v27 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      outlined copy of PommesCandidateId(v27, v2, v10, v9, 2);
      outlined copy of PommesCandidateId(v3, v2, v5, v4, 2);
      outlined consume of PommesCandidateId(v3, v2, v5, v4, 2);
      v14 = v3;
      v15 = v2;
      v16 = v10;
      v17 = v9;
      v18 = 2;
      goto LABEL_30;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 2);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 2);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 2);
    v22 = v8;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    outlined copy of PommesCandidateId(*a2, *(a2 + 8), v10, v9, v11);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, v6);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, v6);
    v29 = v8;
    v30 = v7;
    v31 = v10;
    v32 = v9;
    v33 = v11;
LABEL_25:
    outlined consume of PommesCandidateId(v29, v30, v31, v32, v33);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v13 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined copy of PommesCandidateId(v8, v7, v10, v9, 1);
      outlined copy of PommesCandidateId(v3, v2, v5, v4, 1);
      outlined consume of PommesCandidateId(v3, v2, v5, v4, 1);
      v29 = v8;
      v30 = v7;
      v31 = v10;
      v32 = v9;
      v33 = 1;
      goto LABEL_25;
    }
  }

  if (v5 != v10 || v4 != v9)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 1);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 1);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 1);
    v22 = v8;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = 1;
    goto LABEL_28;
  }

  outlined copy of PommesCandidateId(v8, v7, v5, v4, 1);
  outlined copy of PommesCandidateId(v3, v2, v5, v4, 1);
  outlined consume of PommesCandidateId(v3, v2, v5, v4, 1);
  v14 = v8;
  v15 = v7;
  v16 = v5;
  v17 = v4;
  v18 = 1;
LABEL_30:
  outlined consume of PommesCandidateId(v14, v15, v16, v17, v18);
  return 1;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of PommesResponse.Builder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesResponse.Builder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PommesCandidateId?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of PommesCandidateId(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t outlined copy of PommesCandidateId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t outlined assign with take of PommesContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PommesContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of PommesResponse.Builder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

unint64_t lazy protocol witness table accessor for type PommesCandidateId and conformance PommesCandidateId()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId;
  if (!lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for PommesCandidateId(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesCandidateId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void type metadata completion function for PommesResponse()
{
  type metadata accessor for PommesContext?(319, &lazy cache variable for type metadata for PommesContext?, type metadata accessor for PommesContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PommesResponse.setPegasusDomainLogs(flowStep:userSensitiveTier1:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8))();
}

void type metadata completion function for PommesResponse.Builder()
{
  type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Experience]?, &_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [PommesResult]?, &_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Data?(319, &lazy cache variable for type metadata for PommesCandidateId?, &type metadata for PommesCandidateId, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Data?]?, &_sSay10Foundation4DataVSgGMd, &_sSay10Foundation4DataVSgGMR);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Data?(319, &lazy cache variable for type metadata for [WarmupComponent], &type metadata for WarmupComponent, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for SASRecognition?(319, &lazy cache variable for type metadata for CLLocation?, &lazy cache variable for type metadata for CLLocation, 0x1E6985C40);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SASRecognition?(319, &lazy cache variable for type metadata for SASRecognition?, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for PommesContext?(319, &lazy cache variable for type metadata for PommesContext?, type metadata accessor for PommesContext, MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for PommesContext?(319, &lazy cache variable for type metadata for [Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata], MEMORY[0x1E69BD5C0], MEMORY[0x1E69E62F8]);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for SASRecognition?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSArray(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for PommesContext?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PommesCandidateId.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesCandidateId.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesCandidateId.RcCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PommesCandidateId.RcCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized PommesCandidateId.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25458 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636F64656DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6D6F506E7572 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double specialized closure #1 in PommesResponse._computedPrimaryQueryConfidence.getter(void *a1)
{
  v3 = [objc_opt_self() sharedPreferences];
  v4 = [v3 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v112 = v6;
    *(&v112 + 1) = v8;
    lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);

  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v112 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v112);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName), *(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8), &v112);
    _os_log_impl(&dword_1DC5C3000, v14, v15, "locale: %s, metadataDomainName: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1299E70](v17, -1, -1);
    MEMORY[0x1E1299E70](v16, -1, -1);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v19 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC6519B0);
  v20 = [v18 initWithSuiteName_];

  if (!v20)
  {
LABEL_13:
    v20 = *(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
    v12 = *(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
    v25 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v25 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "Domain name is empty. Query confidence: 0";
LABEL_66:
        _os_log_impl(&dword_1DC5C3000, v41, v42, v44, v43, 2u);
        goto LABEL_67;
      }

LABEL_69:

      return 0.0;
    }

    specialized FeatureFlag.domainLocaleFeature(_:_:)(v20, v12, v9, v11);
    v26 = StaticString.description.getter();
    v28 = v27;

    if ((v28 & 0x2000000000000000) != 0)
    {
      v37 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v38 = MEMORY[0x1E69E7D40];
    if (v20 == 7300455 && v12 == 0xE300000000000000 || (v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v29 & 1) != 0) || v20 == 1936744813 && v12 == 0xE400000000000000 || (v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v29 & 1) != 0))
    {
      v39 = (*((*v38 & *v13) + 0x258))(v29, v30, v31, v32, v33, v34, v35, v36);
      if (v40)
      {
        if (v39 == 20035 && v40 == 0xE200000000000000)
        {

LABEL_37:

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_1DC5C3000, v49, v50, "CN-specific override for Geo traffic. Falling through without FF check", v51, 2u);
            MEMORY[0x1E1299E70](v51, -1, -1);
          }

          goto LABEL_47;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {

          goto LABEL_37;
        }
      }
    }

    if (v37)
    {
      *(&v113 + 1) = &type metadata for FeatureFlag;
      v114 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v60 = swift_allocObject();
      *&v112 = v60;
      *(v60 + 16) = v20;
      *(v60 + 24) = v12;
      *(v60 + 32) = v9;
      *(v60 + 40) = v11;
      *(v60 + 48) = 1;

      v61 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v112);
      if (v61)
      {

        goto LABEL_47;
      }

      v41 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v90))
      {
        v43 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v112 = v91;
        *v43 = 136315394;
        v92 = StaticString.description.getter();
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v112);

        *(v43 + 4) = v94;
        *(v43 + 12) = 2080;
        specialized FeatureFlag.domainLocaleFeature(_:_:)(v20, v12, v9, v11);

        v95 = StaticString.description.getter();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v112);

        *(v43 + 14) = v97;
        _os_log_impl(&dword_1DC5C3000, v41, v90, "%s\\%s featureflag is disabled. Query confidence: 0", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1299E70](v91, -1, -1);
LABEL_67:
        v107 = v43;
        goto LABEL_68;
      }
    }

    else
    {

      specialized FeatureFlag.domainFeature(for:)(v20, v12);
      v62 = StaticString.description.getter();
      v64 = v63;

      v65 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v65 = v62 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65)
      {
        goto LABEL_47;
      }

      *(&v113 + 1) = &type metadata for FeatureFlag;
      v114 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v66 = swift_allocObject();
      *&v112 = v66;
      *(v66 + 16) = v20;
      *(v66 + 24) = v12;
      *(v66 + 32) = 0;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;

      v67 = isFeatureEnabled(_:)();
      v52 = __swift_destroy_boxed_opaque_existential_0(&v112);
      if (v67)
      {
LABEL_47:
        v68 = (*((*v38 & *v13) + 0x170))(v52, v53, v54, v55, v56, v57, v58, v59);
        if (v68 >> 62)
        {
          v108 = v68 & 0xFFFFFFFFFFFFFF8;
          if (v68 < 0)
          {
            v108 = v68;
          }

          v109 = v68;
          v110 = MEMORY[0x1E1299770](v108);
          v68 = v109;
          if (v110)
          {
            goto LABEL_49;
          }
        }

        else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_49:
          if ((v68 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x1E12996A0](0);
            goto LABEL_52;
          }

          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v69 = *(v68 + 32);
LABEL_52:
            v70 = v69;

            v71 = v70;
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 134217984;
              *(v74 + 4) = (*((*v38 & *v71) + 0xA0))(v74, v75, v76, v77, v78, v79, v80, v81);
              _os_log_impl(&dword_1DC5C3000, v72, v73, "Pommes result primary experience query confidence: %f", v74, 0xCu);
              MEMORY[0x1E1299E70](v74, -1, -1);
            }

            v1 = (*((*v38 & *v71) + 0xA0))(v82, v83, v84, v85, v86, v87, v88, v89);
            return v1;
          }

          __break(1u);
          goto LABEL_73;
        }

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = "Pommes result has no experiences. Query confidence: 0";
          goto LABEL_66;
        }

        goto LABEL_69;
      }

      v41 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v112 = v100;
        *v99 = 136315394;
        v101 = StaticString.description.getter();
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v112);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2080;
        specialized FeatureFlag.domainFeature(for:)(v20, v12);

        v104 = StaticString.description.getter();
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v112);

        *(v99 + 14) = v106;
        _os_log_impl(&dword_1DC5C3000, v41, v98, "%s\\%s featureflag is disabled. Query confidence: 0", v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1299E70](v100, -1, -1);
        v107 = v99;
LABEL_68:
        MEMORY[0x1E1299E70](v107, -1, -1);
        goto LABEL_69;
      }
    }

    goto LABEL_69;
  }

  v21 = MEMORY[0x1E1299430](0xD000000000000024, 0x80000001DC6519D0);
  v22 = [v20 objectForKey_];

  if (!v22)
  {

    v112 = 0u;
    v113 = 0u;
    outlined destroy of ClientExperienceSignals?(&v112, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined destroy of ClientExperienceSignals?(&v112, &_sypSgMd, &_sypSgMR);
  v23 = MEMORY[0x1E1299430](0xD000000000000024, 0x80000001DC6519D0);
  [v20 doubleForKey_];
  v1 = v24;

  if (v1 < 0.0)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for overrides != -1)
  {
LABEL_73:
    swift_once();
  }

  __swift_project_value_buffer(v12, static Logger.overrides);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = v1;
    _os_log_impl(&dword_1DC5C3000, v45, v46, "Developer override for Pommes query confidence: %f", v47, 0xCu);
    MEMORY[0x1E1299E70](v47, -1, -1);
  }

  return v1;
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

uint64_t outlined consume of FeatureFlag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

id Experience.init(pluginId:queryConfidence:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v12 = &v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a3;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v11, v7);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v13 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v14 = *MEMORY[0x1E69BCBD8];
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v15 - 8) + 104))(&v3[v13], v14, v15);
  v16 = type metadata accessor for Experience(0);
  v18.receiver = v3;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall Experience.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00]();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v6);
  v11 = MEMORY[0x1E1299430](v10);

  v12 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651F20);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = (*((*v9 & *v1) + 0xA0))();
  v14 = MEMORY[0x1E1299430](0x6E6F437972657571, 0xEF65636E65646966);
  [(objc_class *)with.super.isa encodeDouble:v14 forKey:v13];

  v15 = (*((*v9 & *v1) + 0xB8))();
  v16 = MEMORY[0x1E1299430](0x704F7265646E6572, 0xED0000736E6F6974);
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = *((*v9 & *v1) + 0xF8);
  v49 = v1;
  v18 = v17();
  v20 = v18;
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = 0;
    v56 = (v4 + 8);
    v57 = v4 + 16;
    v51 = MEMORY[0x1E69E7CC0];
    v48 = v21 - 1;
    *&v19 = 136315138;
    v52 = v19;
    v54 = v8;
    v55 = v18;
    v53 = v4;
    while (1)
    {
      v23 = v22;
      if (v22 >= *(v20 + 16))
      {
        break;
      }

      (*(v4 + 16))(v8, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22++, v3);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity, MEMORY[0x1E69BD1D8]);
      v24 = Message.serializedData(partial:)();
      v47 = v21;
      v26 = v25;
      v27 = v24;
      (*v56)(v8, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
      }

      v29 = *(v51 + 2);
      v28 = *(v51 + 3);
      if (v29 >= v28 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v51);
        v31 = v26;
        v51 = v34;
        v30 = v27;
      }

      else
      {
        v30 = v27;
        v31 = v26;
      }

      v32 = v51;
      *(v51 + 2) = v29 + 1;
      v33 = &v32[16 * v29];
      *(v33 + 4) = v30;
      *(v33 + 5) = v31;
      v21 = v47;
      v20 = v55;
      if (v48 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_12:

    v35 = Array._bridgeToObjectiveC()().super.isa;

    v36 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651F40);
    v37 = isa;
    [(objc_class *)isa encodeObject:v35 forKey:v36];

    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69D0A68]);
    v38 = Message.serializedData(partial:)();
    v40 = v39;
    v41 = Data._bridgeToObjectiveC()().super.isa;
    v42 = MEMORY[0x1E1299430](0x6C61694472657375, 0xED0000746341676FLL);
    [(objc_class *)v37 encodeObject:v41 forKey:v42];

    v43 = outlined consume of Data._Representation(v38, v40);
    v44 = MEMORY[0x1E1298CB0](v43);
    v45 = MEMORY[0x1E1299430](0x746E65746E69, 0xE600000000000000);
    [(objc_class *)v37 encodeInteger:v44 forKey:v45];
  }
}

id Experience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v113 = &v104 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x1EEE9AC00])();
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v128 = &v104 - v11;
  v117 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v116 = *(v117 - 8);
  v12 = *(v116 + 64);
  (MEMORY[0x1EEE9AC00])();
  v114 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v115 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18 - 8);
  v131 = &v104 - v20;
  v134 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v120 = *(v134 - 8);
  v21 = *(v120 + 64);
  v22 = MEMORY[0x1EEE9AC00](v134);
  v130 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v104 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v104 - v27;
  v118 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities) = MEMORY[0x1E69E7CC0];
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v28 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v28 || (v137 = 0uLL, v29 = v28, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v29, (v30 = *(&v137 + 1)) == 0))
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_23:
      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.pommes);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1DC5C3000, v54, v55, "Experience missing pluginID in coder", v56, 2u);
        MEMORY[0x1E1299E70](v56, -1, -1);
      }

      goto LABEL_41;
    }

LABEL_60:
    swift_once();
    goto LABEL_23;
  }

  v31 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier);
  *v31 = v137;
  v31[1] = v30;
  v108 = v31;
  v32 = MEMORY[0x1E1299430](0x6E6F437972657571, 0xEF65636E65646966);
  [a1 decodeDoubleForKey:v32];
  v34 = v33;

  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1DC64ED70;
  *(v35 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  v109 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v35 + 40) = v109;
  NSCoder.decodeObject(of:forKey:)();

  v107 = v6;
  v106 = v7;
  if (!*(&v138 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v137, &_sypSgMd, &_sypSgMR);
    v38 = v128;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
  v36 = swift_dynamicCast();
  v38 = v128;
  if ((v36 & 1) == 0)
  {
LABEL_27:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC5C3000, v58, v59, "Experience missing entities in coder", v60, 2u);
      MEMORY[0x1E1299E70](v60, -1, -1);
    }

    goto LABEL_34;
  }

  v39 = v135;
  if (v135 >> 62)
  {
    if (v135 < 0)
    {
      v103 = v135;
    }

    else
    {
      v103 = v135 & 0xFFFFFFFFFFFFFF8;
    }

    v40 = MEMORY[0x1E1299770](v103);
  }

  else
  {
    v40 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = v2;
  if (v40)
  {
    v2 = 0;
    v127 = v39 & 0xC000000000000001;
    v126 = v39 & 0xFFFFFFFFFFFFFF8;
    v122 = (v120 + 56);
    v129 = (v120 + 32);
    v121 = (v120 + 48);
    v133 = MEMORY[0x1E69E7CC0];
    *&v37 = 136315138;
    v110 = v37;
    v125 = v26;
    v111 = a1;
    v124 = v39;
    v123 = v40;
    while (1)
    {
      if (v127)
      {
        v41 = MEMORY[0x1E12996A0](v2, v39);
      }

      else
      {
        if (v2 >= *(v126 + 16))
        {
          goto LABEL_59;
        }

        v41 = *(v39 + 8 * v2 + 32);
      }

      v42 = v41;
      v43 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity, MEMORY[0x1E69BD1D8]);
      v44 = v125;
      v45 = v134;
      Message.init(serializedData:extensions:partial:options:)();
      v46 = v131;
      (*v129)(v131, v44, v45);
      (*v122)(v46, 0, 1, v45);

      if ((*v121)(v46, 1, v45) == 1)
      {
        outlined destroy of ClientExperienceSignals?(v46, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      }

      else
      {
        v47 = *v129;
        v48 = v119;
        (*v129)(v119, v46, v45);
        v47(v130, v48, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v133 + 2) + 1, 1, v133, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, MEMORY[0x1E69BD1D8]);
        }

        v50 = *(v133 + 2);
        v49 = *(v133 + 3);
        if (v50 >= v49 >> 1)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v133, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, MEMORY[0x1E69BD1D8]);
        }

        v52 = v133;
        v51 = v134;
        *(v133 + 2) = v50 + 1;
        v47(&v52[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v50], v130, v51);
      }

      ++v2;
      v39 = v124;
      if (v43 == v123)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v133 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v2 = v105;
  v61 = v118;
  swift_beginAccess();
  v62 = *(v2 + v61);
  *(v2 + v61) = v133;

LABEL_34:
  v63 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v63)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DC5C3000, v67, v68, "Unable to decode userDialogActData", v69, 2u);
      MEMORY[0x1E1299E70](v69, -1, -1);
    }

    v70 = v108[1];

LABEL_41:
    v71 = *(v2 + v118);

LABEL_42:
    type metadata accessor for Experience(0);
    v72 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v73 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v64 = v63;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69D0A68]);
  v65 = v117;
  Message.init(serializedData:extensions:partial:options:)();
  v75 = v116;
  (*(v116 + 56))(v38, 0, 1, v65);
  v76 = v114;
  (*(v75 + 32))(v114, v38, v65);
  (*(v75 + 16))(v2 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct, v76, v65);
  type metadata accessor for PommesRenderOptions(0);
  v77 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v77)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.pommes);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1DC5C3000, v91, v92, "Experience failed to extract renderOptions", v93, 2u);
      MEMORY[0x1E1299E70](v93, -1, -1);
    }

    v94 = *(v116 + 8);
    v95 = v117;
    v94(v114, v117);
    v96 = v108[1];

    goto LABEL_57;
  }

  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions) = v77;
  v78 = v77;
  v79 = MEMORY[0x1E1299430](0x746E65746E69, 0xE600000000000000);
  [a1 decodeIntegerForKey:v79];

  v80 = v113;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent.init(rawValue:)();
  v81 = v106;
  v82 = v107;
  if ((*(v106 + 48))(v80, 1, v107) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v80, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.pommes);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v2;
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1DC5C3000, v84, v85, "Unable to decode intent", v87, 2u);
      v88 = v87;
      v2 = v86;
      MEMORY[0x1E1299E70](v88, -1, -1);
      v89 = v78;
    }

    else
    {
      v89 = v84;
      v84 = a1;
      a1 = v78;
    }

    v94 = *(v116 + 8);
    v95 = v117;
    v94(v114, v117);
    v101 = v108[1];

LABEL_57:
    v102 = *(v2 + v118);

    v94((v2 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct), v95);
    goto LABEL_42;
  }

  (*(v116 + 8))(v114, v117);

  v97 = *(v81 + 32);
  v98 = v112;
  v97(v112, v80, v82);
  v97((v2 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent), v98, v82);
  v99 = type metadata accessor for Experience(0);
  v136.receiver = v2;
  v136.super_class = v99;
  v100 = [&v136 init];

  return v100;
}

uint64_t Experience.pluginIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

id Experience.renderOptions.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t Experience.associatedEntities.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t Experience.associatedEntities.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v6 = &v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v4[v7], a3, v8);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v10 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v11 = *MEMORY[0x1E69BCBD8];
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for Experience(0);
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v9 + 8))(a3, v8);
  return v13;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:renderOptions:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v10 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v11 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v6[v11], a3, v12);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], a5, v15);
  v19.receiver = v6;
  v19.super_class = type metadata accessor for Experience(0);
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v16 + 8))(a5, v15);
  (*(v13 + 8))(a3, v12);
  return v17;
}

double Experience.queryConfidence.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for Experience.pluginIdentifier : Experience(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

void key path setter for Experience.renderOptions : Experience(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t Experience.userDialogAct.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id Experience.__allocating_init(pluginId:queryConfidence:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v3);
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v13 = &v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a3;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v8 + 32))(&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v11, v7);
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v15 = *MEMORY[0x1E69BCBD8];
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  v18.receiver = v12;
  v18.super_class = v3;
  return objc_msgSendSuper2(&v18, sel_init);
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v10 = &v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v11 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a3, v12);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v15 = *MEMORY[0x1E69BCBD8];
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
  v19.receiver = v9;
  v19.super_class = v4;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v13 + 8))(a3, v12);
  return v17;
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v12 = &v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v13 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a3, v14);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v16 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v17 = *MEMORY[0x1E69BCBD8];
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v18 - 8) + 104))(&v11[v16], v17, v18);
  v21.receiver = v11;
  v21.super_class = v5;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v15 + 8))(a3, v14);
  return v19;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v8 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a3, v10);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v12 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v13 = *MEMORY[0x1E69BCBD8];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  v17.receiver = v5;
  v17.super_class = type metadata accessor for Experience(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v11 + 8))(a3, v10);
  return v15;
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v13 = &v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a3, v15);
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v17 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], a4, v18);
  v22.receiver = v12;
  v22.super_class = v6;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v19 + 8))(a4, v18);
  (*(v16 + 8))(a3, v15);
  return v20;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v8 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a3, v10);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v12 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a4, v13);
  v17.receiver = v5;
  v17.super_class = type metadata accessor for Experience(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a4, v13);
  (*(v11 + 8))(a3, v10);
  return v15;
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:renderOptions:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v15 = &v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v16 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a3, v17);
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v19 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v14[v19], a5, v20);
  v24.receiver = v14;
  v24.super_class = v7;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a5, v20);
  (*(v18 + 8))(a3, v17);
  return v22;
}

id Experience.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

SiriInformationSearch::PommesRenderOptions::PromptType_optional __swiftcall PommesRenderOptions.PromptType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesRenderOptions.PromptType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PommesRenderOptions.PromptType.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PommesRenderOptions.PromptType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x80000001DC651370;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DC651370;
  }

  else
  {
    v6 = 0x80000001DC651390;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x80000001DC651390;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesRenderOptions.PromptType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesRenderOptions.PromptType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesRenderOptions.PromptType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PommesRenderOptions.PromptType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xD000000000000013;
  v5 = 0x80000001DC651370;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001DC651390;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PommesRenderOptions.Builder.switchProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PommesRenderOptions.Builder(0) + 28);

  return outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(v3, a1);
}

uint64_t PommesRenderOptions.Builder.switchProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PommesRenderOptions.Builder(0) + 28);

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(a1, v3);
}

uint64_t PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter(char a1)
{
  result = type metadata accessor for PommesRenderOptions.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PommesRenderOptions.Builder.promptTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesRenderOptions.Builder(0) + 36));
}

uint64_t PommesRenderOptions.Builder.promptTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesRenderOptions.Builder(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesRenderOptions.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for PommesRenderOptions.Builder(0);
  v3 = v2[7];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t PommesRenderOptions.Builder.init(isImmersiveExperience:isSquawkResponse:isPhoneCallActive:switchProfile:preserveResultSpaceIfPossible:promptTypes:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v11 = type metadata accessor for PommesRenderOptions.Builder(0);
  result = outlined init with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(a4, &a7[v11[7]]);
  a7[v11[8]] = a5;
  *&a7[v11[9]] = a6;
  return result;
}

uint64_t PommesRenderOptions.__allocating_init(isImmersiveExperience:isSquawkResponse:)(char a1, char a2)
{
  v4[16] = a1;
  v4[17] = a2;
  return (*(v2 + 128))(partial apply for closure #1 in PommesRenderOptions.init(isImmersiveExperience:isSquawkResponse:), v4);
}

uint64_t PommesRenderOptions.init()()
{
  ObjectType = swift_getObjectType();
  v2 = (*(ObjectType + 128))(destructiveProjectEnumData for UserPromptExperience.PromptType, 0);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x30);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return v2;
}

id PommesRenderOptions.init(_:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for PommesRenderOptions.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0;
  v8[2] = 0;
  v9 = v5[9];
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = v5[10];
  v8[v11] = 0;
  v12 = v5[11];
  *&v8[v12] = MEMORY[0x1E69E7CC0];
  a1(v8);
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isImmersiveExperience] = *v8;
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isSquawkResponse] = v8[1];
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isPhoneCallActive] = v8[2];
  outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(&v8[v9], &v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile]);
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_preserveResultSpaceIfPossible] = v8[v11];
  v13 = *&v8[v12];

  outlined destroy of PommesRenderOptions.Builder(v8);
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_promptTypes] = v13;
  v14 = type metadata accessor for PommesRenderOptions(0);
  v16.receiver = v2;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

id PommesRenderOptions.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized PommesRenderOptions.init(coder:)(a1);

  return v4;
}

id PommesRenderOptions.init(coder:)(void *a1)
{
  v2 = specialized PommesRenderOptions.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall PommesRenderOptions.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isImmersiveExperience);
  v9 = MEMORY[0x1E1299430](0x76697372656D6D69, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeBool:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isSquawkResponse);
  v11 = MEMORY[0x1E1299430](0x6B7761757173, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeBool:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isPhoneCallActive);
  v13 = MEMORY[0x1E1299430](0x6C6143656E6F6870, 0xEF6576697463416CLL);
  [(objc_class *)with.super.isa encodeBool:v12 forKey:v13];

  outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile, v7);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v7, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams and conformance Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams, MEMORY[0x1E69BDA10]);
    v16 = Message.serializedData(partial:)();
    v17 = v7;
    v19 = v18;
    (*(v15 + 8))(v17, v14);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v21 = MEMORY[0x1E1299430](0x7250686374697773, 0xED0000656C69666FLL);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v21];

    outlined consume of Data._Representation(v16, v19);
  }

  v22 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_preserveResultSpaceIfPossible);
  v23 = MEMORY[0x1E1299430](0xD00000000000001DLL, 0x80000001DC651F90);
  [(objc_class *)with.super.isa encodeBool:v22 forKey:v23];

  v24 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_promptTypes);
  v25 = *(v24 + 16);
  if (v25)
  {
    v37 = with.super.isa;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v26 = (v24 + 32);
    do
    {
      v28 = *v26++;
      v27 = v28;
      v29 = 0xD00000000000001ALL;
      if (v28 == 1)
      {
        v29 = 0xD000000000000013;
        v30 = 0x80000001DC651370;
      }

      else
      {
        v30 = 0x80000001DC651390;
      }

      if (v27)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0x656E696665646E75;
      }

      if (v27)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE900000000000064;
      }

      MEMORY[0x1E1299430](v31, v32);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(v38 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v25;
    }

    while (v25);
    with.super.isa = v37;
  }

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = MEMORY[0x1E1299430](0x795474706D6F7270, 0xEB00000000736570);
  [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];
}

id Experience.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
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
    v10 = MEMORY[0x1E69E7CC0];
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMd, &_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x1E69BD108]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMR, MEMORY[0x1E69BD5C0]);
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

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
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
    return MEMORY[0x1E69E7CC0];
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
          return MEMORY[0x1E69E7CC0];
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *partial apply for closure #1 in PommesRenderOptions.init(isImmersiveExperience:isSquawkResponse:)(_BYTE *result)
{
  v2 = *(v1 + 17);
  *result = *(v1 + 16);
  result[1] = v2;
  return result;
}

uint64_t outlined destroy of PommesRenderOptions.Builder(uint64_t a1)
{
  v2 = type metadata accessor for PommesRenderOptions.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized PommesRenderOptions.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - v8;
  v10 = MEMORY[0x1E1299430](0x76697372656D6D69, 0xE900000000000065);
  v11 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isImmersiveExperience] = v11;
  v12 = MEMORY[0x1E1299430](0x6B7761757173, 0xE600000000000000);
  v13 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isSquawkResponse] = v13;
  v14 = MEMORY[0x1E1299430](0x6C6143656E6F6870, 0xEF6576697463416CLL);
  v15 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isPhoneCallActive] = v15;
  v16 = MEMORY[0x1E1299430](0x7250686374697773, 0xED0000656C69666FLL);
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v46 = v50;
  v47 = v51;
  if (*(&v51 + 1))
  {
    if (swift_dynamicCast())
    {
      v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams and conformance Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams, MEMORY[0x1E69BDA10]);
      Message.init(serializedData:extensions:partial:options:)();
      (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
      outlined init with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(v9, &v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile]);
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v46, &_sypSgMd, &_sypSgMR);
  }

  v19 = OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  (*(*(v20 - 8) + 56))(&v1[v19], 1, 1, v20);
LABEL_9:
  v21 = MEMORY[0x1E1299430](0xD00000000000001DLL, 0x80000001DC651F90);
  v22 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_preserveResultSpaceIfPossible] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DC64ED70;
  *(v23 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v23 + 40) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v47 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v46, &_sypSgMd, &_sypSgMR);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSStringCGMd, &_sSaySo8NSStringCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v43 = 0;
  v44 = v2;
  v24 = v50;
  if (v50 >> 62)
  {
LABEL_32:
    if (v24 < 0)
    {
      v42 = v24;
    }

    else
    {
      v42 = v24 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = MEMORY[0x1E1299770](v42);
  }

  else
  {
    v25 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  while (v25 != v26)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E12996A0](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    v33._countAndFlagsBits = v30;
    v33._object = v32;
    v34 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesRenderOptions.init(coder:), v33);

    ++v26;
    if (v34 < 3)
    {
      v35 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      v45 = v35;
      if (v37 >= v36 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v45);
      }

      v38 = v45;
      *(v45 + 2) = v37 + 1;
      v38[v37 + 32] = v34;
      v26 = v29;
    }
  }

  v2 = v44;
  v39 = v45;
LABEL_29:
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_promptTypes] = v39;
  v40 = type metadata accessor for PommesRenderOptions(0);
  v49.receiver = v2;
  v49.super_class = v40;
  return objc_msgSendSuper2(&v49, sel_init);
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType()
{
  result = lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType;
  if (!lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType);
  }

  return result;
}

uint64_t type metadata completion function for Experience()
{
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata completion function for PommesRenderOptions()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?()
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?);
    }
  }
}

void type metadata completion function for PommesRenderOptions.Builder()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [PommesRenderOptions.PromptType]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [PommesRenderOptions.PromptType]()
{
  if (!lazy cache variable for type metadata for [PommesRenderOptions.PromptType])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [PommesRenderOptions.PromptType]);
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t GeoExperience.geoClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GeoExperience.__allocating_init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v24 = a2;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a3, v15);
  (*(v11 + 16))(v14, a4, v10);
  v20 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v21 = (*(v5 + 336))(a1, v24, v19, v14, v20, a5);
  (*(v11 + 8))(a4, v10);
  (*(v16 + 8))(a3, v15);
  return v21;
}

id GeoExperience.__allocating_init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v34 = a5;
  v35 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v7);
  v21 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v22 = *(v30 - 8);
  (*(v22 + 16))(&v20[v21], a3, v30);
  v23 = v16[2];
  v23(v19, v35, v15);
  (*(v11 + 104))(v14, *MEMORY[0x1E69BCBD8], v10);
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v24 = &v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v25 = v33;
  *v24 = v32;
  *(v24 + 1) = v25;
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v23(&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v19, v15);
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v34;
  (*(v11 + 16))(&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v14, v10);
  v26 = type metadata accessor for Experience(0);
  v36.receiver = v20;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, sel_init);
  v28 = v16[1];
  v28(v35, v15);
  (*(v22 + 8))(v31, v30);
  (*(v11 + 8))(v14, v10);
  v28(v19, v15);
  return v27;
}

id GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v34 = a5;
  v35 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v19 = *(v30 - 8);
  (*(v19 + 16))(&v6[v18], a3, v30);
  v20 = v14[2];
  v20(v17, v35, v13);
  v21 = v29;
  (*(v9 + 104))(v12, *MEMORY[0x1E69BCBD8], v29);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v22 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v20(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v13);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v34;
  (*(v9 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v21);
  v24 = type metadata accessor for Experience(0);
  v36.receiver = v6;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, sel_init);
  v26 = v14[1];
  v26(v35, v13);
  (*(v19 + 8))(v31, v30);
  (*(v9 + 8))(v12, v21);
  v26(v17, v13);
  return v25;
}

id GeoExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
    memset(&v22[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v7 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent, v10, v6);
    v17 = Experience.init(coder:)(a1);
    v18 = v17;

    if (v17)
    {

      return v17;
    }
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
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC5C3000, v14, v15, "GeoExperience cannot be decoded", v16, 2u);
      MEMORY[0x1E1299E70](v16, -1, -1);
    }

    type metadata accessor for GeoExperience();
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

Swift::Void __swiftcall GeoExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC6520D0);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t GeoExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id GeoExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GeoExperience()
{
  result = type metadata singleton initialization cache for GeoExperience;
  if (!type metadata singleton initialization cache for GeoExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for GeoExperience()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
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

uint64_t key path setter for GenericExperience.serverSuggestions : GenericExperience(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v9 - v6, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x168))(v7);
}

uint64_t key path setter for GenericExperience.sageExperience : GenericExperience(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v9 - v6, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x180))(v7);
}

uint64_t GenericExperience.serverSuggestions.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v4 + v8, a4, a2, a3);
}

uint64_t GenericExperience.serverSuggestions.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t GenericExperience.__allocating_init(components:queryConfidenceScore:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v6 + 104))(v9, *MEMORY[0x1E69BCBD8], v5);
  v14 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  return (*(v2 + 408))(a1, v13, v9, v14, a2);
}

uint64_t GenericExperience.__allocating_init(components:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12);
  (*(v8 + 104))(v11, *MEMORY[0x1E69BCBD8], v7);
  v17 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v18 = (*(v3 + 408))(a1, v16, v11, v17, a3);
  (*(v13 + 8))(a2, v12);
  return v18;
}

id GenericExperience.__allocating_init(components:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v31 = a3;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v5);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v21 - 8) + 56))(&v19[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v23 - 8) + 56))(&v19[v22], 1, 1, v23);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v24 = v15[2];
  v24(v18, a2, v14);
  (*(v10 + 104))(v13, *MEMORY[0x1E69BCBD8], v9);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v25 = &v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v25 = 0x73757361676570;
  *(v25 + 1) = 0xE700000000000000;
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v24(&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v18, v14);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v31;
  (*(v10 + 16))(&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v13, v9);
  v26 = type metadata accessor for Experience(0);
  v32.receiver = v19;
  v32.super_class = v26;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  v28 = v15[1];
  v28(a2, v14);
  (*(v10 + 8))(v13, v9);
  v28(v18, v14);
  return v27;
}

id GenericExperience.init(components:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v29 = a3;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v22 = v14[2];
  v22(v17, a2, v13);
  (*(v9 + 104))(v12, *MEMORY[0x1E69BCBD8], v8);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v23 = &v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v23 = 0x73757361676570;
  *(v23 + 1) = 0xE700000000000000;
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v22(&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v13);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v29;
  (*(v9 + 16))(&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v8);
  v24 = type metadata accessor for Experience(0);
  v30.receiver = v4;
  v30.super_class = v24;
  v25 = objc_msgSendSuper2(&v30, sel_init);
  v26 = v14[1];
  v26(a2, v13);
  (*(v9 + 8))(v12, v8);
  v26(v17, v13);
  return v25;
}

id GenericExperience.__allocating_init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v40 = a3;
  v41 = a4;
  v37 = a2;
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v36 = *(v39 - 8);
  v10 = v36;
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v38 = *(v14 - 8);
  v15 = v38;
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v6);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v21 - 8) + 56))(&v19[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v23 - 8) + 56))(&v19[v22], 1, 1, v23);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v24 = *(v15 + 16);
  v35 = v18;
  v24(v18, a2, v14);
  v25 = *(v10 + 16);
  v26 = v39;
  v27 = v40;
  v25(v13, v40, v39);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v28 = &v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v28 = 0x73757361676570;
  *(v28 + 1) = 0xE700000000000000;
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v24(&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v18, v14);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v41;
  v25(&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v13, v26);
  v29 = type metadata accessor for Experience(0);
  v42.receiver = v19;
  v42.super_class = v29;
  v30 = objc_msgSendSuper2(&v42, sel_init);
  v31 = *(v36 + 8);
  v31(v27, v26);
  v32 = *(v38 + 8);
  v32(v37, v14);
  v31(v13, v26);
  v32(v35, v14);
  return v30;
}

id GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v34 = *(v37 - 8);
  v9 = v34;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v36 = *(v13 - 8);
  v14 = v36;
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v22 = *(v14 + 16);
  v33 = v17;
  v22(v17, a2, v13);
  v23 = *(v9 + 16);
  v25 = v37;
  v24 = v38;
  v23(v12, v38, v37);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v26 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v26 = 0x73757361676570;
  *(v26 + 1) = 0xE700000000000000;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v22(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v13);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v39;
  v23(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v25);
  v27 = type metadata accessor for Experience(0);
  v40.receiver = v5;
  v40.super_class = v27;
  v28 = objc_msgSendSuper2(&v40, sel_init);
  v29 = *(v34 + 8);
  v29(v24, v25);
  v30 = *(v36 + 8);
  v30(v35, v13);
  v29(v12, v25);
  v30(v33, v13);
  return v28;
}

char *GenericExperience.catIds.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = 0;
  v9 = (v2 + 8);
  v22 = v7 - 1;
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v8;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);

        (*v9)(v5, v1);

        __break(1u);
        return result;
      }

      (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v1);
      closure #1 in GenericExperience.catIds.getter(&v24);
      (*v9)(v5, v1);
      v11 = v25;
      if (v25)
      {
        break;
      }

      if (v7 == ++v10)
      {
        return v23;
      }
    }

    v21 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v13 = *(v23 + 2);
    v12 = *(v23 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v19 = *(v23 + 2);
      v20 = v13 + 1;
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v23);
      v13 = v19;
      v14 = v20;
      v23 = v17;
    }

    v8 = v10 + 1;
    v15 = v23;
    *(v23 + 2) = v14;
    v16 = &v15[16 * v13];
    *(v16 + 4) = v21;
    *(v16 + 5) = v11;
  }

  while (v22 != v10);
  return v23;
}

uint64_t closure #1 in GenericExperience.catIds.getter@<X0>(void *a1@<X8>)
{
  v107 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v92 - v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v9 = *(v8 - 8);
  v105 = v8;
  v106 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v97 = *(v16 - 8);
  v98 = v16;
  v17 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v104 = *(v23 - 8);
  v24 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v92 - v32;
  Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v33, 1, v34);
  v37 = v107;
  if (v36 == 1)
  {
    goto LABEL_2;
  }

  v92 = v33;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v33, v31, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v39 = (*(v35 + 88))(v31, v34);
  if (v39 == *MEMORY[0x1E69BD570])
  {
    (*(v35 + 96))(v31, v34);
    v40 = v104;
    (*(v104 + 32))(v26, v31, v23);
    v41 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
    v43 = v42;

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v68 = v107;
    (*(v40 + 8))(v26, v23);
    *v68 = v45;
    v68[1] = v47;
LABEL_24:
    v38 = v92;
    return outlined destroy of ClientExperienceSignals?(v38, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  }

  if (v39 == *MEMORY[0x1E69BD578])
  {
    (*(v35 + 96))(v31, v34);
    v49 = v102;
    v48 = v103;
    v50 = (*(v102 + 32))(v22, v31, v103);
    v51 = MEMORY[0x1E1298DE0](v50);
    v53 = v52;

    v55 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v55 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v56 = MEMORY[0x1E1298DE0](v54);
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v80 = v107;
    v81 = v92;
    (*(v49 + 8))(v22, v48);
    goto LABEL_33;
  }

  if (v39 == *MEMORY[0x1E69BD560])
  {
    (*(v35 + 96))(v31, v34);
    v59 = (*(v100 + 32))(v99, v31, v101);
    result = MEMORY[0x1E1298F90](v59);
    v61 = result;
    v104 = *(result + 16);
    if (v104)
    {
      v62 = 0;
      v103 = result + ((*(v106 + 80) + 32) & ~*(v106 + 80));
      LODWORD(v102) = *MEMORY[0x1E69BCBC0];
      v63 = v106;
      do
      {
        if (v62 >= *(v61 + 16))
        {
          __break(1u);
          return result;
        }

        v64 = v105;
        (*(v63 + 16))(v12, v103 + *(v63 + 72) * v62, v105);
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
        (*(v63 + 8))(v12, v64);
        v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
        v66 = *(v65 - 8);
        if ((*(v66 + 48))(v4, 1, v65) == 1)
        {
          result = outlined destroy of ClientExperienceSignals?(v4, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
        }

        else
        {
          v67 = (*(v66 + 88))(v4, v65);
          if (v67 == v102)
          {

            (*(v66 + 96))(v4, v65);
            v83 = v93;
            v82 = v94;
            v84 = v95;
            v85 = (*(v94 + 32))(v93, v4, v95);
            v86 = MEMORY[0x1E1298E10](v85);
            v88 = v87;

            v90 = HIBYTE(v88) & 0xF;
            if ((v88 & 0x2000000000000000) == 0)
            {
              v90 = v86 & 0xFFFFFFFFFFFFLL;
            }

            if (v90)
            {
              v56 = MEMORY[0x1E1298E10](v89);
              v58 = v91;
            }

            else
            {
              v56 = 0;
              v58 = 0;
            }

            v80 = v107;
            v81 = v92;
            (*(v82 + 8))(v83, v84);
            (*(v100 + 8))(v99, v101);
            goto LABEL_33;
          }

          result = (*(v66 + 8))(v4, v65);
        }

        ++v62;
      }

      while (v104 != v62);
    }

    (*(v100 + 8))(v99, v101);
    v79 = v107;
    *v107 = 0;
    v79[1] = 0;
    goto LABEL_24;
  }

  if (v39 != *MEMORY[0x1E69BD568])
  {
    (*(v35 + 8))(v31, v34);
    v37 = v107;
    v33 = v92;
LABEL_2:
    *v37 = 0;
    v37[1] = 0;
    v38 = v33;
    return outlined destroy of ClientExperienceSignals?(v38, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  }

  (*(v35 + 96))(v31, v34);
  v70 = v96;
  v69 = v97;
  v71 = v98;
  v72 = (*(v97 + 32))(v96, v31, v98);
  v73 = MEMORY[0x1E1298D40](v72);
  v75 = v74;

  v77 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v77 = v73 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {
    v56 = MEMORY[0x1E1298D40](v76);
    v58 = v78;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v80 = v107;
  v81 = v92;
  (*(v69 + 8))(v70, v71);
LABEL_33:
  *v80 = v56;
  v80[1] = v58;
  v38 = v81;
  return outlined destroy of ClientExperienceSignals?(v38, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
}

char *GenericExperience.catCategories.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v42 = v9;
  v19 = *(v11 + 16);
  v17 = v11 + 16;
  v18 = v19;
  v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v47 = *(v17 + 56);
  v45 = *MEMORY[0x1E69BD570];
  v43 = v5;
  v21 = (v17 - 8);
  v38 = (v6 + 8);
  v39 = (v6 + 32);
  v46 = MEMORY[0x1E69E7CC0];
  v40 = v17;
  v41 = v19;
  v19(v14, v20, v10);
  while (1)
  {
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      (*v21)(v14, v10);
      outlined destroy of ClientExperienceSignals?(v4, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
    }

    else
    {
      v24 = (*(v23 + 88))(v4, v22);
      if (v24 == v45)
      {
        (*(v23 + 96))(v4, v22);
        v25 = v42;
        v26 = v43;
        (*v39)(v42, v4, v43);
        v27 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catCategory.getter();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v44 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catCategory.getter();
          v32 = v31;
          (*v38)(v25, v26);
          (*v21)(v14, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
          }

          v34 = *(v46 + 2);
          v33 = *(v46 + 3);
          if (v34 >= v33 >> 1)
          {
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v46);
          }

          v35 = v46;
          *(v46 + 2) = v34 + 1;
          v36 = &v35[16 * v34];
          *(v36 + 4) = v44;
          *(v36 + 5) = v32;
          v18 = v41;
        }

        else
        {
          (*v38)(v25, v26);
          (*v21)(v14, v10);
          v18 = v41;
        }
      }

      else
      {
        (*v21)(v14, v10);
        (*(v23 + 8))(v4, v22);
      }
    }

    v20 += v47;
    if (!--v16)
    {
      break;
    }

    v18(v14, v20, v10);
  }

  return v46;
}

char *GenericExperience.renderedTexts.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - v6;
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v17 = *(v16 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(v12 + 16);
  v18 = v12 + 16;
  v54 = v19;
  v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v21 = *(v18 + 56);
  v51 = *MEMORY[0x1E69BD570];
  v48 = a1;
  v22 = (v18 - 8);
  v44 = (v8 + 8);
  v45 = (v8 + 32);
  v53 = MEMORY[0x1E69E7CC0];
  v46 = v21;
  v47 = v18;
  v19(v15, v20, v11);
  while (1)
  {
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {
      (*v22)(v15, v11);
      outlined destroy of ClientExperienceSignals?(v7, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
    }

    else
    {
      v25 = (*(v24 + 88))(v7, v23);
      if (v25 == v51)
      {
        (*(v24 + 96))(v7, v23);
        v26 = v49;
        v27 = (*v45)(v49, v7, v52);
        v28 = v48;
        v29 = v48(v27);
        v31 = v30;

        v33 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v33 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          v34 = v28(v32);
        }

        else
        {
          v34 = v43(v32);
        }

        v50 = v34;
        v36 = v35;
        (*v44)(v26, v52);
        (*v22)(v15, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
        }

        v39 = *(v53 + 2);
        v38 = *(v53 + 3);
        if (v39 >= v38 >> 1)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v53);
        }

        v40 = v53;
        *(v53 + 2) = v39 + 1;
        v41 = &v40[16 * v39];
        *(v41 + 4) = v50;
        *(v41 + 5) = v36;
      }

      else
      {
        (*v22)(v15, v11);
        (*(v24 + 8))(v7, v23);
      }
    }

    v20 += v21;
    if (!--v17)
    {
      break;
    }

    v54(v15, v20, v11);
  }

  return v53;
}

uint64_t GenericExperience.listenAfterSpeaking.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v90 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v9 = *(v74 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  v77 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v28 = *(*(v77 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v77);
  v32 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v84 = *(v32 + 16);
  if (v84)
  {
    v71 = v12;
    v85 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v25;
    v33 = v9;
    v34 = 0;
    v83 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v82 = v31 + 16;
    v76 = *MEMORY[0x1E69BD570];
    v73 = *MEMORY[0x1E69BD560];
    v81 = (v31 + 8);
    v63 = (v13 + 32);
    v62 = (v13 + 8);
    v69 = (v33 + 32);
    v75 = (v17 + 8);
    v88 = v6 + 16;
    v68 = *MEMORY[0x1E69BD568];
    v86 = v6 + 8;
    v87 = (v93 + 8);
    v67 = (v33 + 8);
    v72 = (v17 + 32);
    v70 = v20;
    v35 = v77;
    v66 = v16;
    v79 = v32;
    v80 = v31;
    while (1)
    {
      if (v34 >= *(v32 + 16))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v36 = v85;
      (*(v31 + 16))(v85, v83 + *(v31 + 72) * v34, v35);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v27, 1, v37) == 1)
      {
        break;
      }

      v39 = v78;
      outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v27, v78, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      v40 = (*(v38 + 88))(v39, v37);
      if (v40 == v76)
      {
        (*(v38 + 96))(v39, v37);
        (*v72)(v20, v39, v16);
        v41 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter();
        (*v75)(v20, v16);
        v35 = v77;
        (*v81)(v85, v77);
        v42 = v27;
      }

      else
      {
        if (v40 == v73)
        {
          v43 = v78;
          (*(v38 + 96))(v78, v37);
          v44 = v71;
          v45 = v74;
          (*v69)(v71, v43, v74);
          if (Apple_Parsec_Siri_V2alpha_DelayedActionComponent.hasRenderedDialog.getter() & 1) != 0 && (Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.getter(), v46 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter(), (*v75)(v20, v16), (v46))
          {
            (*v67)(v44, v45);
            (*v81)(v85, v77);
            outlined destroy of ClientExperienceSignals?(v27, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
          }

          else
          {
            result = MEMORY[0x1E1298F90]();
            v47 = result;
            v48 = 0;
            v93 = *(result + 16);
            do
            {
              if (v93 == v48)
              {

                (*v67)(v71, v74);
                v35 = v77;
                (*v81)(v85, v77);
                v16 = v66;
                v20 = v70;
                goto LABEL_4;
              }

              v49 = v48;
              if (v48 >= *(v47 + 16))
              {
                __break(1u);
                goto LABEL_31;
              }

              v50 = v89;
              v51 = v91;
              (*(v6 + 16))(v89, v47 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v48++, v91);
              v52 = v6;
              v53 = v27;
              v54 = v90;
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.sayIt.getter();
              v55 = Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasListenAfterSpeaking_p.getter();
              v56 = v54;
              v27 = v53;
              v6 = v52;
              (*v87)(v56, v92);
              result = (*(v52 + 8))(v50, v51);
            }

            while ((v55 & 1) == 0);

            (*v67)(v71, v74);
            v35 = v77;
            (*v81)(v85, v77);
            result = outlined destroy of ClientExperienceSignals?(v27, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
            v16 = v66;
            v20 = v70;
            if (v93 == v49)
            {
              goto LABEL_5;
            }
          }

          return 1;
        }

        if (v40 != v68)
        {
          v35 = v77;
          (*v81)(v85, v77);
          (*(v38 + 8))(v78, v37);
LABEL_4:
          result = outlined destroy of ClientExperienceSignals?(v27, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
          goto LABEL_5;
        }

        v57 = v78;
        (*(v38 + 96))(v78, v37);
        v58 = v64;
        v59 = v65;
        (*v63)(v64, v57, v65);
        v41 = Apple_Parsec_Siri_V2alpha_SayItComponent.hasListenAfterSpeaking_p.getter();
        v60 = v58;
        v20 = v70;
        (*v62)(v60, v59);
        v35 = v77;
        (*v81)(v85, v77);
        v42 = v27;
      }

      result = outlined destroy of ClientExperienceSignals?(v42, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      if (v41)
      {
        return 1;
      }

LABEL_5:
      ++v34;
      v32 = v79;
      v31 = v80;
      if (v34 == v84)
      {
        return 0;
      }
    }

    (*v81)(v36, v35);
    goto LABEL_4;
  }

  return 0;
}

id GenericExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v46 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v53 = v18;
  v52 = v20;
  v51 = v19 + 56;
  (v20)(v1 + v17, 1, 1);
  v21 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DC64ED70;
  *(v23 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  v55 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v23 + 40) = v55;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v64 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
    if (swift_dynamicCast())
    {
      v24 = v66;
      if (v66 >> 62)
      {
        if (v66 < 0)
        {
          v45 = v66;
        }

        else
        {
          v45 = v66 & 0xFFFFFFFFFFFFFF8;
        }

        v21 = MEMORY[0x1E1299770](v45);
      }

      else
      {
        v21 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v50 = v17;
      v49 = v7;
      if (v21)
      {
        v47 = a1;
        v48 = v1;
        v66 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
        if ((v21 & 0x8000000000000000) == 0)
        {
          v25 = 0;
          v17 = v66;
          v59 = v24;
          v60 = v24 & 0xC000000000000001;
          v56 = v24 & 0xFFFFFFFFFFFFFF8;
          v57 = v14 + 32;
          v58 = v21;
          while (1)
          {
            a1 = (v25 + 1);
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v60)
            {
              v26 = MEMORY[0x1E12996A0](v25, v24);
            }

            else
            {
              if (v25 >= *(v56 + 16))
              {
                goto LABEL_30;
              }

              v26 = *(v24 + 8 * v25 + 32);
            }

            v27 = v26;
            static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = 0;
            v63 = 0u;
            v64 = 0u;
            BinaryDecodingOptions.init()();
            lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent, MEMORY[0x1E69BD588]);
            Message.init(serializedData:extensions:partial:options:)();

            v66 = v17;
            v21 = *(v17 + 16);
            v28 = *(v17 + 24);
            v2 = (v21 + 1);
            v24 = v59;
            if (v21 >= v28 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v21 + 1, 1);
              v17 = v66;
            }

            *(v17 + 16) = v2;
            (*(v14 + 32))(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v21, v62, v13);
            ++v25;
            if (a1 == v58)
            {

              v2 = v48;
              a1 = v47;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        __break(1u);
        swift_once();
        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.pommes);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1DC5C3000, v42, v43, "GenericExperience failed to extract server suggestions", v44, 2u);
          MEMORY[0x1E1299E70](v44, -1, -1);
        }
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
LABEL_23:
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components) = v17;
        v36 = v50;
        v37 = NSCoder.decodeObject<A>(of:forKey:)();
        if (v37)
        {
          v38 = v37;
          static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          BinaryDecodingOptions.init()();
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, MEMORY[0x1E69BD410]);
          v39 = v49;
          v40 = v53;
          Message.init(serializedData:extensions:partial:options:)();

          v52(v39, 0, 1, v40);
          swift_beginAccess();
          outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v39, v2 + v36, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
          swift_endAccess();
        }
      }

      return Experience.init(coder:)(a1);
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v63, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for pommes != -1)
  {
LABEL_31:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.pommes);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DC5C3000, v30, v31, "GenericExperience failed to extract componentsArray", v32, 2u);
    MEMORY[0x1E1299E70](v32, -1, -1);
  }

  outlined destroy of ClientExperienceSignals?(v2 + v17, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  outlined destroy of ClientExperienceSignals?(v2 + v21, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  type metadata accessor for GenericExperience();
  v33 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v34 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall GenericExperience.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v52 - v4;
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v58 = *(v55 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v63 = (v9 + 8);
    v64 = v9 + 16;
    v59 = MEMORY[0x1E69E7CC0];
    v62 = v15;
    v53 = (v15 - 1);
    *&v11 = 136315138;
    v60 = v11;
    v61 = v14;
    while (v16 < *(v14 + 16))
    {
      (*(v9 + 16))(v13, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v8);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent, MEMORY[0x1E69BD588]);
      v17 = Message.serializedData(partial:)();
      v65 = v16 + 1;
      v19 = v18;
      v20 = v17;
      (*v63)(v13, v8);
      v21 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
      }

      v23 = *(v59 + 2);
      v22 = *(v59 + 3);
      if (v23 >= v22 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v59);
        v25 = v19;
        v59 = v29;
        v24 = v20;
      }

      else
      {
        v24 = v20;
        v25 = v19;
      }

      v14 = v61;
      v26 = v59;
      *(v59 + 2) = v23 + 1;
      v27 = &v26[16 * v23];
      *(v27 + 4) = v24;
      *(v27 + 5) = v25;
      v28 = v53 == v16;
      v7 = v21;
      v16 = v65;
      if (v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    swift_once();
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.pommes);
    v36 = 0;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65 = v7;
      v41 = v40;
      v66[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v66);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1DC5C3000, v37, v38, "Failed to serialize server suggestions %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1E1299E70](v41, -1, -1);
      MEMORY[0x1E1299E70](v39, -1, -1);

      (*(v58 + 8))(v65, v9);
    }

    else
    {

      (*(v58 + 8))(v7, v9);
    }
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = MEMORY[0x1E1299430](0x6E656E6F706D6F63, 0xEA00000000007374);
    v8 = isa;
    [(objc_class *)isa encodeObject:v30 forKey:v31];

    v32 = v54;
    (*((*MEMORY[0x1E69E7D40] & *v57) + 0x160))();
    v33 = v58;
    v34 = v55;
    if ((*(v58 + 48))(v32, 1, v55) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v32, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
    }

    else
    {
      (*(v33 + 32))(v7, v32, v34);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, MEMORY[0x1E69BD410]);
      v45 = Message.serializedData(partial:)();
      v47 = v46;
      v48 = Data._bridgeToObjectiveC()().super.isa;
      v49 = v7;
      v50 = v33;
      v51 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC652150);
      [v8 encodeObject:v48 forKey:v51];
      outlined consume of Data._Representation(v45, v47);

      (*(v50 + 8))(v49, v34);
    }
  }

  Experience.encode(with:)(v8);
}

uint64_t GenericExperience.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);

  outlined destroy of ClientExperienceSignals?(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  return outlined destroy of ClientExperienceSignals?(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
}

id GenericExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GenericExperience()
{
  result = type metadata singleton initialization cache for GenericExperience;
  if (!type metadata singleton initialization cache for GenericExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for GenericExperience()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_ServerSuggestion?, MEMORY[0x1E69BD410]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SageExperience?, MEMORY[0x1E69BD310]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t UInt16.audioType.getter@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69BD250];
  if (a1 <= 0x4880u)
  {
    if (a1 <= 0x487Bu)
    {
      if (a1 > 0x36CDu)
      {
        if (a1 == 14030)
        {
          goto LABEL_39;
        }

        if (a1 == 18555)
        {
          v3 = MEMORY[0x1E69BD238];
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      if (a1 == 3620)
      {
        goto LABEL_39;
      }

      if (a1 != 8199)
      {
LABEL_32:
        v3 = MEMORY[0x1E69BD260];
        goto LABEL_39;
      }
    }

    else
    {
      if (a1 > 0x487Du)
      {
        switch(a1)
        {
          case 0x487Eu:
            goto LABEL_39;
          case 0x487Fu:
            v3 = MEMORY[0x1E69BD240];
            goto LABEL_39;
          case 0x4880u:
            v3 = MEMORY[0x1E69BD248];
            goto LABEL_39;
        }

        goto LABEL_32;
      }

      if (a1 == 18556)
      {
        goto LABEL_39;
      }
    }

    v3 = MEMORY[0x1E69BD270];
    goto LABEL_39;
  }

  if (a1 > 0x4885u)
  {
    if (a1 <= 0xA4CBu)
    {
      if (a1 == 18566)
      {
        v3 = MEMORY[0x1E69BD258];
        goto LABEL_39;
      }

      if (a1 == 34312)
      {
LABEL_29:
        v3 = MEMORY[0x1E69BD268];
        goto LABEL_39;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xA4CCu:
          v3 = MEMORY[0x1E69BD228];
          goto LABEL_39;
        case 0xA4CDu:
          v3 = MEMORY[0x1E69BD208];
          goto LABEL_39;
        case 0xA4CEu:
          goto LABEL_39;
      }
    }

    goto LABEL_32;
  }

  if (a1 <= 0x4882u)
  {
    if (a1 == 18561)
    {
      v3 = MEMORY[0x1E69BD200];
      goto LABEL_39;
    }

    if (a1 == 18562)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (a1 == 18563)
  {
    v3 = MEMORY[0x1E69BD230];
  }

  else if (a1 != 18564)
  {
    v3 = MEMORY[0x1E69BD210];
  }

LABEL_39:
  v4 = *v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t VocabularyField.value.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8);

  return v1;
}

id VocabularyField.__allocating_init(value:fieldType:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id VocabularyField.init(value:fieldType:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = &v3[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for VocabularyField();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t VocabularyField.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  specialized VocabularyField.init(coder:)(a1);
  v5 = v4;

  return v5;
}

uint64_t VocabularyField.init(coder:)(void *a1)
{
  specialized VocabularyField.init(coder:)(a1);
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall VocabularyField.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value);
    v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = MEMORY[0x1E1299430](v3, v4);

  v6 = MEMORY[0x1E1299430](0x65756C6176, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType);
  v8 = MEMORY[0x1E1299430](0x707954646C656966, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

unint64_t VocabularyField.description.getter()
{
  _StringGuts.grow(_:)(45);

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value);
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1E1299490](v1, v2);

  MEMORY[0x1E1299490](0x54646C656966202CLL, 0xEC0000003D657079);
  v3 = UInt16.cascadeDescription.getter(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType));
  MEMORY[0x1E1299490](v3);

  MEMORY[0x1E1299490](32032, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

uint64_t UInt16.cascadeDescription.getter(unsigned __int16 a1)
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CCTypeIdentifierRegistry, 0x1E69AA778);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata isValidItemType_] & 1) != 0 || objc_msgSend(ObjCClassFromMetadata, sel_isValidFieldType_, a1))
  {
    v3 = [ObjCClassFromMetadata descriptionForTypeIdentifier_];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    lazy protocol witness table accessor for type UInt16 and conformance UInt16();
    return BinaryInteger.description.getter();
  }
}

id VocabularyField.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t VocabularyResult.appId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId + 8);

  return v1;
}

uint64_t VocabularyResult.itemId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8);

  return v1;
}

uint64_t VocabularyResult.semanticValue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue + 8);

  return v1;
}

uint64_t VocabularyResult.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8);

  return v1;
}