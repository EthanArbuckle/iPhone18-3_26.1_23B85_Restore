uint64_t closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for PommesCandidateId();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  if ((*(*a1 + class metadata base offset for PommesBridgeRequestProcessor + 96))(v19))
  {
    v20 = a2;
    v21 = v32;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2232BB000, v23, v24, "Not posting pommes message, request finished", v25, 2u);
      MEMORY[0x223DE0F80](v25, -1, -1);
    }

    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for InsightRequestSummaryLogger();
    __swift_project_value_buffer(v26, static Logger.insightRequestSummaryLogger);
    (*(v16 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v15);
    v27 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    (*(v16 + 32))(v28 + v27, &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);

    InsightRequestSummaryLogger.emitDebug(_:)();

    *v21 = 0;
  }

  else
  {
    *v14 = PommesBridgeRequestProcessor.fetchAndUpdateState(_:)(&v14[*(v6 + 48)], a2) & 1;
    outlined init with copy of MediaUserStateCenter?(v14, v11, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
    outlined assign with take of MediaUserStateCenter?(&v11[*(v6 + 48)], v31, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    outlined init with take of PommesSearchReason?(v14, v11, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
    v30 = *(v6 + 48);
    *v32 = *v11;
    return outlined destroy of MediaUserStateCenter?(&v11[v30], &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36[1] = a5;
  v36[2] = a2;
  v38 = a3;
  v39 = a4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2234D4CD0;
  v37 = v14;
  v15 = v14 + v13;
  v16 = v14 + v13 + *(v11 + 48);
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v16, "PommesBridge");
  *(v16 + 13) = 0;
  *(v16 + 14) = -5120;
  v17 = (v15 + v12 + *(v11 + 48));
  static InsightRequestSummaryKey.messageDescription.getter();
  *v17 = 0xD000000000000018;
  v17[1] = 0x80000002234D9540;
  v18 = (v15 + 2 * v12 + *(v11 + 48));
  static InsightRequestSummaryKey.assistantId.getter();
  *v18 = RequestProcessorBase.assistantId.getter();
  v18[1] = v19;
  v20 = (v15 + 3 * v12 + *(v11 + 48));
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v22;
  (*(v6 + 8))(v10, v5);
  *v20 = v21;
  v20[1] = v23;
  v24 = (v15 + 4 * v12 + *(v11 + 48));
  static InsightRequestSummaryKey.requestId.getter();
  *v24 = RequestProcessorBase.requestId.getter();
  v24[1] = v25;
  v26 = (v15 + 5 * v12 + *(v11 + 48));
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v26 = PommesCandidateId.asResultCandidateId.getter();
  v26[1] = v27;
  v28 = (v15 + 6 * v12 + *(v11 + 48));
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for InsightRequestSummaryKey();
  v30 = __swift_project_value_buffer(v29, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  v31 = *(*(v29 - 8) + 16);
  v31(v15 + 6 * v12, v30, v29);
  *v28 = 0x65736C6166;
  v28[1] = 0xE500000000000000;
  v32 = *(v11 + 48);
  if (*v38 != -1)
  {
    swift_once();
  }

  v33 = (v15 - v12 + 8 * v12 + v32);
  v34 = __swift_project_value_buffer(v29, v39);
  v31(v15 - v12 + 8 * v12, v34, v29);
  *v33 = 1702195828;
  v33[1] = 0xE400000000000000;
  return v37;
}

uint64_t implicit closure #12 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v51 = type metadata accessor for UUID();
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v51, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v46 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR);
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2234D4CD0;
  v50 = v16;
  v17 = v16 + v15;
  v18 = v16 + v15 + *(v13 + 48);
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v18, "PommesBridge");
  *(v18 + 13) = 0;
  *(v18 + 14) = -5120;
  v19 = (v17 + v14 + *(v13 + 48));
  static InsightRequestSummaryKey.messageDescription.getter();
  *v19 = 0xD000000000000015;
  v19[1] = 0x80000002234D9560;
  if (one-time initialization token for pommesError != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for InsightRequestSummaryKey();
  v21 = __swift_project_value_buffer(v20, static PommesInsightRequestSummaryKey.pommesError);
  v22 = *(v20 - 8);
  v47 = *(v22 + 16);
  v48 = v20;
  v46 = v22 + 16;
  v47(v17 + 2 * v14, v21, v20);
  v54 = 0;
  v55 = 0xE000000000000000;
  outlined init with copy of MediaUserStateCenter?(a1, v12, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v23 = type metadata accessor for PommesError();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v12, 1, v23) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v25 = PommesError.rawValue.getter();
    v26 = v27;
    (*(v24 + 8))(v12, v23);
  }

  v28 = (v17 + 2 * v14 + *(v13 + 48));
  MEMORY[0x223DDF6D0](v25, v26);

  v29 = v55;
  *v28 = v54;
  v28[1] = v29;
  v30 = (v17 + 3 * v14 + *(v13 + 48));
  static InsightRequestSummaryKey.assistantId.getter();
  *v30 = RequestProcessorBase.assistantId.getter();
  v30[1] = v31;
  v32 = (v17 + 4 * v14 + *(v13 + 48));
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v33 = v51;
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;
  (*(v49 + 8))(v7, v33);
  *v32 = v34;
  v32[1] = v36;
  v37 = (v17 + 5 * v14 + *(v13 + 48));
  static InsightRequestSummaryKey.requestId.getter();
  *v37 = RequestProcessorBase.requestId.getter();
  v37[1] = v38;
  v39 = (v17 + 6 * v14 + *(v13 + 48));
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v39 = PommesCandidateId.asResultCandidateId.getter();
  v39[1] = v40;
  v41 = *(v13 + 48);
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v42 = (v17 - v14 + 8 * v14 + v41);
  v43 = v48;
  v44 = __swift_project_value_buffer(v48, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  v47(v17 - v14 + 8 * v14, v44, v43);
  *v42 = 0x65736C6166;
  v42[1] = 0xE500000000000000;
  return v50;
}

uint64_t PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(uint64_t a1)
{
  v47 = a1;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v50 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v50, v3);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PommesCandidateId();
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v42, v11);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchTime();
  v44 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v43 = &v40 - v26;
  v46 = RequestProcessorBase.requestQueue.getter();
  v27 = static DispatchTime.now()();
  (*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 240))(v27);
  MEMORY[0x223DDF450](v24, v17);
  (*(v13 + 8))(v17, v12);
  v45 = *(v19 + 8);
  v45(v24, v18);
  v28 = swift_allocObject();
  swift_weakInit();
  v30 = v41;
  v29 = v42;
  (*(v9 + 16))(v41, v47, v42);
  v31 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  (*(v9 + 32))(v32 + v31, v30, v29);
  aBlock[4] = partial apply for closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:);
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_98;
  v33 = _Block_copy(aBlock);

  v34 = v48;
  static DispatchQoS.unspecified.getter();
  v54 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v36 = v49;
  v35 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v43;
  v38 = v46;
  MEMORY[0x223DDFBC0](v43, v34, v36, v33);
  _Block_release(v33);

  (*(v53 + 8))(v36, v35);
  (*(v51 + 8))(v34, v52);
  v45(v37, v44);
}

void *closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + class metadata base offset for PommesBridgeRequestProcessor + 496))(a2);
  }

  return result;
}

void PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v209 = &v205 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v7 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207, v8);
  v208 = &v205 - v9;
  v10 = type metadata accessor for PommesError();
  v216 = *(v10 - 8);
  v217 = v10;
  v11 = *(v216 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v210 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v213 = &v205 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v205 - v21;
  v225 = type metadata accessor for PommesSearchReason();
  v221 = *(v225 - 8);
  v23 = *(v221 + 64);
  v25 = MEMORY[0x28223BE20](v225, v24);
  v211 = &v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v215 = &v205 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v205 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v226 = &v205 - v35;
  v36 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v222 = *(v36 - 8);
  v223 = v36;
  v37 = *(v222 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v220 = &v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PommesCandidateId();
  v41 = *(v40 - 8);
  v227 = v40;
  v228 = v41;
  isa = v41[8].isa;
  v44 = MEMORY[0x28223BE20](v40, v43);
  v45 = &v205 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v214 = &v205 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v218 = &v205 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v224 = &v205 - v54;
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v205 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  v59 = *(*(v58 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v63 = &v205 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v61, v64);
  v67 = &v205 - v66;
  if ((*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 96))(v65))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.pommes);
    v228 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v228, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2232BB000, v228, v69, "Not posting pommes timeout message, request finished", v70, 2u);
      MEMORY[0x223DE0F80](v70, -1, -1);
    }

    v71 = v228;

    return;
  }

  v72 = &v67[*(v58 + 48)];
  v219 = a1;
  v212 = v1;
  v73 = PommesBridgeRequestProcessor.fetchAndUpdateState(_:)(v72, a1);
  *v67 = v73 & 1;
  if ((v73 & 1) == 0)
  {
    v206 = v67;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.pommes);
    v92 = v227;
    v91 = v228;
    v93 = v228[2].isa;
    v94 = v219;
    (v93)(v57, v219, v227);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v226 = v93;
      v98 = v97;
      v99 = swift_slowAlloc();
      v229[0] = v99;
      *v98 = 136315138;
      v100 = PommesCandidateId.description.getter();
      v102 = v101;
      (v228[1].isa)(v57, v92);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v229);
      v94 = v219;

      *(v98 + 4) = v103;
      _os_log_impl(&dword_2232BB000, v95, v96, "Not posting pommes timeout message, %s finished", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      v104 = v99;
      v91 = v228;
      MEMORY[0x223DE0F80](v104, -1, -1);
      v105 = v98;
      v93 = v226;
      MEMORY[0x223DE0F80](v105, -1, -1);
    }

    else
    {

      (v91[1].isa)(v57, v92);
    }

    v109 = v212;
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for InsightRequestSummaryLogger();
    __swift_project_value_buffer(v110, static Logger.insightRequestSummaryLogger);
    v111 = v224;
    v112 = v227;
    (v93)(v224, v94, v227);
    v113 = (LOBYTE(v91[10].isa) + 24) & ~LOBYTE(v91[10].isa);
    v114 = swift_allocObject();
    *(v114 + 16) = v109;
    (v91[4].isa)(v114 + v113, v111, v112);

    InsightRequestSummaryLogger.emitDebug(_:)();

    goto LABEL_25;
  }

  outlined init with copy of MediaUserStateCenter?(v67, v63, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  v74 = *(v58 + 48);
  v75 = v223;
  if ((*(v222 + 48))(&v63[v74], 1, v223) == 1)
  {
    outlined destroy of MediaUserStateCenter?(&v63[v74], &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    v76 = v228;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.pommes);
    v78 = v227;
    (v76[2].isa)(v45, v219, v227);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v76;
      v82 = v67;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v229[0] = v84;
      *v83 = 136315138;
      v85 = PommesCandidateId.description.getter();
      v87 = v86;
      (v81[1].isa)(v45, v78);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v229);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_2232BB000, v79, v80, "Not posting pommes timeout message, no Pommes state for %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x223DE0F80](v84, -1, -1);
      MEMORY[0x223DE0F80](v83, -1, -1);

      v89 = v82;
    }

    else
    {

      (v76[1].isa)(v45, v78);
      v89 = v67;
    }

    goto LABEL_26;
  }

  v106 = v220;
  outlined init with take of NLXResultCandidate(&v63[v74], v220, type metadata accessor for PommesBridgeResultCandidateState);
  outlined init with copy of MediaUserStateCenter?(v106 + v75[15], v22, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v107 = type metadata accessor for PommesSearchEagerInfo(0);
  v108 = (*(*(v107 - 8) + 48))(v22, 1, v107);
  v206 = v67;
  if (v108 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v22, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
    (*(v221 + 104))(v226, *MEMORY[0x277D56670], v225);
  }

  else
  {
    v115 = v221;
    v116 = v225;
    (*(v221 + 16))(v33, v22, v225);
    outlined destroy of NLXResultCandidate(v22, type metadata accessor for PommesSearchEagerInfo);
    (*(v115 + 32))(v226, v33, v116);
  }

  v117 = v212;
  v118 = *(v212 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v119 = RequestProcessorBase.requestId.getter();
  v121 = v120;
  v122 = RequestProcessorBase.rootLevelRequestId.getter();
  v123 = v219;
  (*(*v118 + 144))(3, v219, v119, v121, v122, v124);

  v126 = v227;
  v125 = v228;
  v127 = v228[2].isa;
  v128 = v218;
  (v127)(v218, v123, v227);
  v129 = (v125[11].isa)(v128, v126);
  if (v129 == *MEMORY[0x277D56618])
  {
    v205 = v127;
    (v125[12].isa)(v128, v126);
    v130 = *v128;
    v131 = v128[1];
    v133 = v216;
    v132 = v217;
    v134 = v213;
    (*(v216 + 104))(v213, *MEMORY[0x277D5CEE8], v217);
    (*(v133 + 56))(v134, 0, 1, v132);
    v135 = (*(*v117 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v130, v131, 0, v134, v226);

    outlined destroy of MediaUserStateCenter?(v134, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    if (!v135)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      __swift_project_value_buffer(v136, static Logger.pommes);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v221;
      v141 = v225;
      if (!v139)
      {
        goto LABEL_36;
      }

      v142 = swift_slowAlloc();
      *v142 = 0;
      v143 = "Could not construct PommesResultCandidate message, buildCandidateMessage returned nil";
LABEL_35:
      _os_log_impl(&dword_2232BB000, v137, v138, v143, v142, 2u);
      MEMORY[0x223DE0F80](v142, -1, -1);
LABEL_36:

      (*(v140 + 8))(v226, v141);
      v144 = v106;
LABEL_44:
      outlined destroy of NLXResultCandidate(v144, type metadata accessor for PommesBridgeResultCandidateState);
LABEL_25:
      v89 = v206;
LABEL_26:
      outlined destroy of MediaUserStateCenter?(v89, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
      return;
    }

    goto LABEL_47;
  }

  if (v129 == *MEMORY[0x277D56620])
  {
    v205 = v127;
    (v228[12].isa)(v128, v126);
    v145 = v128[1];
    v222 = *v128;
    v146 = v128[3];
    v213 = v128[2];
    v147 = v223[5];
    v148 = v106;
    v150 = v216;
    v149 = v217;
    v151 = v210;
    (*(v216 + 104))(v210, *MEMORY[0x277D5CEE8], v217);
    v135 = (*(*v212 + class metadata base offset for PommesBridgeRequestProcessor + 576))(v222, v145, v213, v146, v151, v226, v148 + v147);

    (*(v150 + 8))(v151, v149);
    if (!v135)
    {
      v152 = v220;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v153 = type metadata accessor for Logger();
      __swift_project_value_buffer(v153, static Logger.pommes);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();
      v156 = os_log_type_enabled(v154, v155);
      v157 = v221;
      v158 = v225;
      if (v156)
      {
        v159 = swift_slowAlloc();
        *v159 = 0;
        _os_log_impl(&dword_2232BB000, v154, v155, "Could not construct PommesTRPCandidateMessage message, buildTRPCommonErrorMessage returned nil", v159, 2u);
        MEMORY[0x223DE0F80](v159, -1, -1);
      }

      (*(v157 + 8))(v226, v158);
      v144 = v152;
      goto LABEL_44;
    }

LABEL_47:
    v162 = one-time initialization token for insightRequestSummaryLogger;
    v223 = v135;
    if (v162 != -1)
    {
      swift_once();
    }

    v163 = type metadata accessor for InsightRequestSummaryLogger();
    __swift_project_value_buffer(v163, static Logger.insightRequestSummaryLogger);
    v164 = v224;
    v165 = v219;
    v166 = v205;
    v205(v224, v219, v126);
    v167 = v228;
    v168 = (LOBYTE(v228[10].isa) + 24) & ~LOBYTE(v228[10].isa);
    v169 = swift_allocObject();
    *(v169 + 16) = v212;
    (v167[4].isa)(v169 + v168, v164, v126);

    InsightRequestSummaryLogger.emitDebug(_:)();

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v170 = type metadata accessor for Logger();
    __swift_project_value_buffer(v170, static Logger.pommes);
    v171 = v214;
    v166(v214, v165, v126);
    v172 = v126;
    v173 = v221;
    v174 = *(v221 + 16);
    v175 = v215;
    v176 = v225;
    v174(v215, v226, v225);
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = v171;
      v180 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v229[0] = v224;
      *v180 = 136315394;
      v181 = PommesCandidateId.description.getter();
      v183 = v182;
      (v228[1].isa)(v179, v172);
      v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v183, v229);

      *(v180 + 4) = v184;
      *(v180 + 12) = 2080;
      v185 = v215;
      v174(v211, v215, v225);
      v186 = String.init<A>(describing:)();
      v188 = v187;
      v189 = *(v173 + 8);
      v189(v185, v225);
      v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, v229);
      v176 = v225;

      *(v180 + 14) = v190;
      _os_log_impl(&dword_2232BB000, v177, v178, "Posting pommes result candidate with timeout error for %s; search reason was %s", v180, 0x16u);
      v191 = v224;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v191, -1, -1);
      MEMORY[0x223DE0F80](v180, -1, -1);
    }

    else
    {

      v189 = *(v173 + 8);
      v189(v175, v176);
      (v228[1].isa)(v171, v172);
    }

    RequestProcessorBase.messagePublisher.getter();
    __swift_project_boxed_opaque_existential_1(v229, v229[3]);
    v192 = v223;
    dispatch thunk of MessagePublishing.postMessage(_:)();

    v189(v226, v176);
    outlined destroy of NLXResultCandidate(v220, type metadata accessor for PommesBridgeResultCandidateState);
    outlined destroy of MediaUserStateCenter?(v206, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
    __swift_destroy_boxed_opaque_existential_1(v229);
    return;
  }

  if (v129 == *MEMORY[0x277D56610])
  {
    v205 = v127;
    (v228[1].isa)(v128, v126);
    v160 = v208;
    (*(v216 + 104))(v208, *MEMORY[0x277D5CEE8], v217);
    swift_storeEnumTagMultiPayload();
    v161 = v209;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v106, v209, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v222 + 56))(v161, 0, 1, v223);
    v135 = (*(*v212 + class metadata base offset for PommesBridgeRequestProcessor + 552))(v160, v161, v226);
    outlined destroy of MediaUserStateCenter?(v161, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    outlined destroy of MediaUserStateCenter?(v160, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
    if (!v135)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v203 = type metadata accessor for Logger();
      __swift_project_value_buffer(v203, static Logger.pommes);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();
      v204 = os_log_type_enabled(v137, v138);
      v140 = v221;
      v141 = v225;
      if (!v204)
      {
        goto LABEL_36;
      }

      v142 = swift_slowAlloc();
      *v142 = 0;
      v143 = "Could not construct RunPommesResponseMessage, buildRunPommesResponseMessage returned nil";
      goto LABEL_35;
    }

    goto LABEL_47;
  }

  v193 = v206;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v194 = type metadata accessor for Logger();
  __swift_project_value_buffer(v194, static Logger.pommes);
  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.error.getter();
  v197 = os_log_type_enabled(v195, v196);
  v198 = v228;
  v199 = v225;
  if (v197)
  {
    v200 = v193;
    v201 = swift_slowAlloc();
    *v201 = 0;
    _os_log_impl(&dword_2232BB000, v195, v196, "Unexpected pommesCandidateId. Not posting timeoutMessage.", v201, 2u);
    v202 = v201;
    v193 = v200;
    MEMORY[0x223DE0F80](v202, -1, -1);
  }

  (*(v221 + 8))(v226, v199);
  outlined destroy of NLXResultCandidate(v106, type metadata accessor for PommesBridgeResultCandidateState);
  outlined destroy of MediaUserStateCenter?(v193, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  (v198[1].isa)(v128, v126);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2234D4CD0;
  v34 = v11;
  v12 = v11 + v10;
  v13 = v11 + v10 + *(v8 + 48);
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v13, "PommesBridge");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  v14 = (v12 + v9 + *(v8 + 48));
  static InsightRequestSummaryKey.messageDescription.getter();
  *v14 = 0xD000000000000018;
  v14[1] = 0x80000002234D9540;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  static InsightRequestSummaryKey.assistantId.getter();
  *v15 = RequestProcessorBase.assistantId.getter();
  v15[1] = v16;
  v17 = (v12 + 3 * v9 + *(v8 + 48));
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  (*(v3 + 8))(v7, v2);
  *v17 = v18;
  v17[1] = v20;
  v21 = (v12 + 4 * v9 + *(v8 + 48));
  static InsightRequestSummaryKey.requestId.getter();
  *v21 = RequestProcessorBase.requestId.getter();
  v21[1] = v22;
  v23 = (v12 + 5 * v9 + *(v8 + 48));
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v23 = PommesCandidateId.asResultCandidateId.getter();
  v23[1] = v24;
  v25 = (v12 + 6 * v9 + *(v8 + 48));
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for InsightRequestSummaryKey();
  v27 = __swift_project_value_buffer(v26, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  v28 = *(*(v26 - 8) + 16);
  v28(v12 + 6 * v9, v27, v26);
  *v25 = 1702195828;
  v25[1] = 0xE400000000000000;
  v29 = *(v8 + 48);
  if (one-time initialization token for isRcFinished != -1)
  {
    swift_once();
  }

  v30 = (v12 - v9 + 8 * v9 + v29);
  v31 = __swift_project_value_buffer(v26, static PommesInsightRequestSummaryKey.isRcFinished);
  v28(v12 - v9 + 8 * v9, v31, v26);
  *v30 = 1702195828;
  v30[1] = 0xE400000000000000;
  return v34;
}

uint64_t implicit closure #5 in PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v30[1] = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2234D4CC0;
  v30[0] = v11;
  v12 = v11 + v10;
  v13 = v12 + v8[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v13, "PommesBridge");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  v14 = (v12 + v9 + v8[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v14 = 0xD000000000000015;
  v14[1] = 0x80000002234D9560;
  v15 = (v12 + 2 * v9 + v8[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v15 = RequestProcessorBase.assistantId.getter();
  v15[1] = v16;
  v17 = (v12 + 3 * v9 + v8[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  (*(v3 + 8))(v7, v2);
  *v17 = v18;
  v17[1] = v20;
  v21 = (v12 + 4 * v9 + v8[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v21 = RequestProcessorBase.requestId.getter();
  v21[1] = v22;
  v23 = (v12 + 5 * v9 + v8[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v23 = PommesCandidateId.asResultCandidateId.getter();
  v23[1] = v24;
  v25 = v8[14];
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v26 = (v12 + 6 * v9 + v25);
  v27 = type metadata accessor for InsightRequestSummaryKey();
  v28 = __swift_project_value_buffer(v27, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  (*(*(v27 - 8) + 16))(v12 + 6 * v9, v28, v27);
  *v26 = 1702195828;
  v26[1] = 0xE400000000000000;
  return v30[0];
}

void PommesBridgeRequestProcessor.update(prState:with:selectedUserAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for PommesCandidateId();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v60 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for SelectedUserAttributes();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v56 - v35;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v27, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v56 = v8;
    outlined destroy of NLXResultCandidate(v27, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v42 = type metadata accessor for TCUMappedNLResponse();
    (*(*(v42 - 8) + 56))(v36, 1, 1, v42);
    goto LABEL_5;
  }

  v37 = *(v27 + 1);

  v38 = *(v27 + 3);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v40 = v39[20];
  v41 = v39[24];
  outlined init with take of PommesSearchReason?(&v27[v39[16]], v36, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(&v27[v41], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  outlined destroy of MediaUserStateCenter?(&v27[v40], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v42 = type metadata accessor for TCUMappedNLResponse();
  if ((*(*(v42 - 8) + 48))(v36, 1, v42) == 1)
  {
    v56 = v8;
LABEL_5:
    outlined destroy of MediaUserStateCenter?(v36, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    type metadata accessor for TCUMappedNLResponse();
    v43 = *(v42 - 8);
    (*(v43 + 16))(v33, v57, v42);
    (*(v43 + 56))(v33, 0, 1, v42);
    PommesBridgeResultCandidateState.setParseResponse(_:)(v33);
    outlined destroy of MediaUserStateCenter?(v33, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v44 = type metadata accessor for PommesBridgeResultCandidateState(0);
    *(a1 + v44[12]) = 1;
    v45 = v59;
    outlined init with copy of MediaUserStateCenter?(v59, v17, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v46 = v58;
    if ((*(v58 + 48))(v17, 1, v18) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v17, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    }

    else
    {
      (*(v46 + 32))(v22, v17, v18);
      v47 = SelectedUserAttributes.classification.getter();
      (*(v46 + 8))(v22, v18);
      *(a1 + v44[6]) = v47;
    }

    v48 = v56;
    v49 = outlined assign with copy of ConversationSessionState?(v45, a1 + v44[7], &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v50 = (*(*v61 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v49);
    v51 = v60;
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v60);
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v48, type metadata accessor for PommesBridgeResultCandidateState);
    (*(*(v44 - 1) + 56))(v48, 0, 1, v44);
    (*(*v50 + 152))(v48, v51);

    return;
  }

  outlined destroy of MediaUserStateCenter?(v36, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.pommes);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2232BB000, v53, v54, "Will not update prState with mappedNLResponse because it already has a value", v55, 2u);
    MEMORY[0x223DE0F80](v55, -1, -1);
  }
}

uint64_t PommesBridgeRequestProcessor.buildRewriteMessage(rewriteUtterance:rewriteReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v31 - v24;
  Apple_Parsec_Siri_V2alpha_RewrittenUtterance.init()();

  MEMORY[0x223DDB2E0](a1, a2);
  outlined init with copy of MediaUserStateCenter?(a3, v15, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return outlined destroy of MediaUserStateCenter?(v15, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  }

  (*(v17 + 32))(v25, v15, v16);
  (*(v17 + 16))(v22, v25, v16);
  v27 = (*(v17 + 88))(v22, v16);
  v28 = *(v31 + 104);
  v29 = (v17 + 8);
  if (v27 == *MEMORY[0x277D5CCC8])
  {
    v28(v10, *MEMORY[0x277D39368], v32);
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter();
    return (*v29)(v25, v16);
  }

  else
  {
    v28(v10, *MEMORY[0x277D39388], v32);
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter();
    v30 = *v29;
    (*v29)(v25, v16);
    return v30(v22, v16);
  }
}

void PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v66 = a3;
  v68 = a2;
  v65 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v6 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59, v7);
  v61 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v60 = &v58 - v12;
  v67 = type metadata accessor for PommesError();
  v64 = *(v67 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v67, v14);
  v62 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v58 - v19;
  v21 = type metadata accessor for PommesCandidateId();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = (&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v4 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  RequestProcessorBase.requestId.getter();
  RequestProcessorBase.rootLevelRequestId.getter();
  v28 = *(*v27 + 144);
  v29 = v65;
  v28(v66);

  (*(v22 + 16))(v26, v29, v21);
  v30 = (*(v22 + 88))(v26, v21);
  if (v30 == *MEMORY[0x277D56618])
  {
    (*(v22 + 96))(v26, v21);
    v31 = *v26;
    v32 = v26[1];
    v33 = v64;
    v34 = v67;
    (*(v64 + 104))(v20, *MEMORY[0x277D5CED8], v67);
    (*(v33 + 56))(v20, 0, 1, v34);
    v35 = (*(*v5 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v31, v32, 0, v20, v68);

    outlined destroy of MediaUserStateCenter?(v20, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    if (v35)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v36 = v4;
  v37 = v67;
  v38 = v68;
  if (v30 == *MEMORY[0x277D56620])
  {
    (*(v22 + 96))(v26, v21);
    v39 = *v26;
    v40 = v26[1];
    v41 = v26[2];
    v42 = v26[3];
    v43 = v64;
    v44 = v62;
    (*(v64 + 104))(v62, *MEMORY[0x277D5CED8], v37);
    v35 = (*(*v36 + class metadata base offset for PommesBridgeRequestProcessor + 576))(v39, v40, v41, v42, v44, v38, v63);

    (*(v43 + 8))(v44, v37);
    if (!v35)
    {
      goto LABEL_15;
    }

LABEL_9:
    v49 = v35;
    RequestProcessorBase.messagePublisher.getter();
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    dispatch thunk of MessagePublishing.postMessage(_:)();

    __swift_destroy_boxed_opaque_existential_1(v69);
    return;
  }

  if (v30 != *MEMORY[0x277D56610])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.pommes);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2232BB000, v51, v52, "Unexpected pommesCandidateId", v53, 2u);
      MEMORY[0x223DE0F80](v53, -1, -1);
    }

    (*(v22 + 8))(v26, v21);
    goto LABEL_15;
  }

  v45 = (*(v22 + 8))(v26, v21);
  v46 = (*(*v4 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v45);
  v47 = v60;
  (*(*v46 + 144))(v29);

  v48 = v61;
  (*(v64 + 104))(v61, *MEMORY[0x277D5CED8], v37);
  swift_storeEnumTagMultiPayload();
  v35 = (*(*v4 + class metadata base offset for PommesBridgeRequestProcessor + 552))(v48, v47, v38);
  outlined destroy of MediaUserStateCenter?(v48, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  outlined destroy of MediaUserStateCenter?(v47, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.pommes);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2232BB000, v55, v56, "PommesBridgeRequestProcessor failed to build noQuery message", v57, 2u);
    MEMORY[0x223DE0F80](v57, -1, -1);
  }
}

uint64_t closure #1 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_Parser();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v15 + 8))(v19, v14);
  (*(v5 + 104))(v10, *MEMORY[0x277D5DA68], v4);
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = *(v5 + 8);
  v20(v10, v4);
  v20(v13, v4);
  v22 = v26[2];
  v21 = v26[3];
  v23 = type metadata accessor for Siri_Nlu_External_UserParse();
  if (v21 != v22)
  {
    return (*(*(v23 - 8) + 16))(a2, a1, v23);
  }

  MEMORY[0x28223BE20](v23, v24);
  v26[-2] = a1;
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = Siri_Nlu_External_Span.matcherNames.getter();
  MEMORY[0x223DDBF50](v3);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_UserParse.parser.setter();
  Siri_Nlu_External_UserParse.probability.setter();
  return Siri_Nlu_External_UserParse.comparableProbability.setter();
}

size_t closure #2 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v35 - v18;
  v20 = TCUMappedNLResponse.nlResponse.getter();
  v21 = NLParseResponse.userParses.getter();

  v22 = *(v21 + 16);
  if (v22)
  {
    v36 = v19;
    v37 = a2;
    v38 = a1;
    v48 = MEMORY[0x277D84F90];
    v44 = v22;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v24 = 0;
    v25 = v48;
    v43 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v42 = v21 + v43;
    v40 = v7 + 8;
    v41 = v7 + 16;
    v39 = (v7 + 32);
    while (v24 < *(v21 + 16))
    {
      v26 = v21;
      v27 = *(v7 + 72);
      v28 = v45;
      (*(v7 + 16))(v45, v42 + v27 * v24, v6);
      v46(v28);
      v29 = v7;
      (*(v7 + 8))(v28, v6);
      v48 = v25;
      v30 = v14;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v25 = v48;
      }

      ++v24;
      *(v25 + 16) = v32 + 1;
      result = (*v39)(v25 + v43 + v32 * v27, v30, v6);
      v14 = v30;
      v7 = v29;
      v21 = v26;
      if (v44 == v24)
      {

        v19 = v36;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    NLParseResponse.Builder.userParses.setter();
    v33 = TCUMappedNLResponse.nlResponse.getter();
    NLParseResponse.responseStatusCode.getter();

    v34 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
    (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
    return NLParseResponse.Builder.responseStatusCode.setter();
  }

  return result;
}

uint64_t PommesBridgeRequestProcessor.fetchAndUpdateState(_:)(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = type metadata accessor for PommesCandidateId();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v25 = *(*v24(v21) + 144);
  v37 = a2;
  v25(a2);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
LABEL_5:
    (*(v18 + 56))(v38, 1, 1, v17);
    return 0;
  }

  v26 = outlined init with take of NLXResultCandidate(v16, v23, type metadata accessor for PommesBridgeResultCandidateState);
  v27 = *(v17 + 44);
  if (v23[v27] == 1)
  {
    outlined destroy of NLXResultCandidate(v23, type metadata accessor for PommesBridgeResultCandidateState);
    goto LABEL_5;
  }

  v23[v27] = 1;
  v29 = v24(v26);
  v30 = v36;
  (*(v34 + 16))(v36, v37, v35);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v23, v13, type metadata accessor for PommesBridgeResultCandidateState);
  v31 = *(v18 + 56);
  v31(v13, 0, 1, v17);
  (*(*v29 + 152))(v13, v30);

  v32 = v38;
  outlined init with take of NLXResultCandidate(v23, v38, type metadata accessor for PommesBridgeResultCandidateState);
  v31(v32, 0, 1, v17);
  return 1;
}

uint64_t PommesBridgeRequestProcessor.buildCandidateMessage(_:pommesRes:error:searchReason:)()
{
  v0 = objc_allocWithZone(type metadata accessor for PommesResultCandidateMessage());
  result = PommesResultCandidateMessage.init(build:)();
  if (!result)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "Could not construct PommesResultCandidate message, constructor failure", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in PommesBridgeRequestProcessor.buildCandidateMessage(_:pommesRes:error:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v35 = a3;
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v35 - v25;
  v27 = *MEMORY[0x277D5CDF0];
  v28 = type metadata accessor for MessageSource();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26, v27, v28);
  (*(v29 + 56))(v26, 0, 1, v28);
  PommesResultCandidateMessage.Builder.source.setter();
  RequestProcessorBase.assistantId.getter();
  PommesResultCandidateMessage.Builder.assistantId.setter();
  RequestProcessorBase.sessionId.getter();
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
  PommesResultCandidateMessage.Builder.sessionId.setter();
  RequestProcessorBase.requestId.getter();
  PommesResultCandidateMessage.Builder.requestId.setter();

  PommesResultCandidateMessage.Builder.resultCandidateId.setter();
  v31 = v36;
  PommesResultCandidateMessage.Builder.pommesResponse.setter();
  outlined init with copy of MediaUserStateCenter?(v37, v16, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  PommesResultCandidateMessage.Builder.error.setter();
  v32 = type metadata accessor for PommesSearchReason();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v11, v38, v32);
  (*(v33 + 56))(v11, 0, 1, v32);
  return PommesResultCandidateMessage.Builder.searchReason.setter();
}

uint64_t PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a2, v12, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "Unable to construct RunPommesResponseMessage without PR state", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }
  }

  else
  {
    v23 = outlined init with take of NLXResultCandidate(v12, v18, type metadata accessor for PommesBridgeResultCandidateState);
    MEMORY[0x28223BE20](v23, v24);
    *(&v42 - 2) = v18;
    v25 = objc_allocWithZone(type metadata accessor for NLParseResponse());
    v26 = NLParseResponse.init(build:)();
    if (v26)
    {
      v28 = v26;
      v29 = MEMORY[0x28223BE20](v26, v27);
      *(&v42 - 6) = v4;
      *(&v42 - 5) = a1;
      *(&v42 - 4) = v29;
      *(&v42 - 3) = a3;
      *(&v42 - 2) = v18;
      v30 = objc_allocWithZone(type metadata accessor for RunPommesResponseMessage());
      v31 = RunPommesResponseMessage.init(build:)();
      if (v31)
      {
        v32 = v31;

        outlined destroy of NLXResultCandidate(v18, type metadata accessor for PommesBridgeResultCandidateState);
        return v32;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.pommes);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2232BB000, v39, v40, "Could not construct RunPommesResponseMessage message, constructor failure", v41, 2u);
        MEMORY[0x223DE0F80](v41, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.pommes);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2232BB000, v35, v36, "Could not construct NLParseResponse needed for RunPommesResponse message, constructor failure", v37, 2u);
        MEMORY[0x223DE0F80](v37, -1, -1);
      }
    }

    outlined destroy of NLXResultCandidate(v18, type metadata accessor for PommesBridgeResultCandidateState);
  }

  return 0;
}

uint64_t closure #1 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v14 - v8;
  PommesBridgeResultCandidateState.userParses.getter();
  NLParseResponse.Builder.userParses.setter();
  PommesBridgeResultCandidateState.fallbackParse.getter(v9);
  NLParseResponse.Builder.fallbackParse.setter();
  v10 = *MEMORY[0x277D5DBB8];
  v11 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  return NLParseResponse.Builder.responseStatusCode.setter();
}

uint64_t closure #2 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v55 = a4;
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v58 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017RunPommesResponseB0C9UserInputOSgMd, &_s16SiriMessageTypes017RunPommesResponseB0C9UserInputOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v54 = (&v53 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v53 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v53 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v53 - v37;
  v39 = *MEMORY[0x277D5CDF0];
  v40 = type metadata accessor for MessageSource();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v38, v39, v40);
  (*(v41 + 56))(v38, 0, 1, v40);
  RunPommesResponseMessage.Builder.source.setter();
  RequestProcessorBase.assistantId.getter();
  RunPommesResponseMessage.Builder.assistantId.setter();
  RequestProcessorBase.sessionId.getter();
  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
  RunPommesResponseMessage.Builder.sessionId.setter();
  RequestProcessorBase.requestId.getter();
  RunPommesResponseMessage.Builder.requestId.setter();
  outlined init with copy of MediaUserStateCenter?(v53, v28, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  (*(*(v43 - 8) + 56))(v28, 0, 1, v43);
  RunPommesResponseMessage.Builder.pommesResult.setter();
  v44 = v55;
  RunPommesResponseMessage.Builder.nlResponse.setter();
  v45 = type metadata accessor for PommesSearchReason();
  v46 = *(v45 - 8);
  (*(v46 + 16))(v23, v56, v45);
  (*(v46 + 56))(v23, 0, 1, v45);
  RunPommesResponseMessage.Builder.pommesSearchReason.setter();
  v47 = v57;
  closure #1 in closure #2 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)(v57, v54);
  RunPommesResponseMessage.Builder.userInput.setter();
  v48 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v49 = *(v48 + 20);
  v50 = type metadata accessor for UserID();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v14, v47 + v49, v50);
  (*(v51 + 56))(v14, 0, 1, v50);
  RunPommesResponseMessage.Builder.userId.setter();
  outlined init with copy of MediaUserStateCenter?(v47 + *(v48 + 28), v58, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  return RunPommesResponseMessage.Builder.selectedUserAttributes.setter();
}

uint64_t closure #1 in closure #2 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v8, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of NLXResultCandidate(v8, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v27, v28, "Attempting to build RunPommesResponseMessage with incorrect PommesBridgeResultCandidateState", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    goto LABEL_28;
  }

  v10 = *v8;
  v9 = v8[1];

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
  outlined destroy of MediaUserStateCenter?(v8 + *(v11 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v12 = [v10 requestType];
  if (!v12)
  {
    v30 = *MEMORY[0x277D487A8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_21;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = *MEMORY[0x277D487A8];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v16)
  {
LABEL_21:

    v31 = *MEMORY[0x277D487B0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_22:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_27;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Unexpected requestType for SARDRunPOMMESRequest";
LABEL_26:
    _os_log_impl(&dword_2232BB000, v33, v34, v36, v35, 2u);
    MEMORY[0x223DE0F80](v35, -1, -1);
LABEL_27:

LABEL_28:
    v37 = type metadata accessor for RunPommesResponseMessage.UserInput();
    return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
  }

  if (v18 == v14 && v16 == v19)
  {

    goto LABEL_30;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_30:

    v39 = *(a1 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 32));
    if (v39)
    {
      v40 = v39;

      *a2 = v40;
      v41 = *MEMORY[0x277D5CBF0];
      v42 = type metadata accessor for RunPommesResponseMessage.UserInput();
      v43 = *(v42 - 8);
      (*(v43 + 104))(a2, v41, v42);
      return (*(v43 + 56))(a2, 0, 1, v42);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pommes);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_27;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Unable to build RunPommesResponseMessage with type SARDRequestTypeSPEECHValue without AFSpeechPackage";
    goto LABEL_26;
  }

  v22 = *MEMORY[0x277D487B0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v16 == v23)
  {

    goto LABEL_37;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_37:
  v45 = (a1 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 36));
  v46 = v45[1];
  *a2 = *v45;
  a2[1] = v46;
  v47 = *MEMORY[0x277D5CBE8];
  v48 = type metadata accessor for RunPommesResponseMessage.UserInput();
  v49 = *(v48 - 8);
  (*(v49 + 104))(a2, v47, v48);
  (*(v49 + 56))(a2, 0, 1, v48);
}

uint64_t PommesBridgeRequestProcessor.buildTRPMessage(trpId:tcuId:pommesResult:searchReason:userId:)()
{
  v0 = objc_allocWithZone(type metadata accessor for PommesTRPCandidateMessage());
  result = PommesTRPCandidateMessage.init(build:)();
  if (!result)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "Could not construct PommesTRPCandidateMessage message, constructor failure", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in PommesBridgeRequestProcessor.buildTRPMessage(trpId:tcuId:pommesResult:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a7;
  v46 = a8;
  v44[3] = a6;
  v44[4] = a5;
  v44[1] = a4;
  v44[2] = a3;
  v47 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = v44 - v32;
  v34 = *MEMORY[0x277D5CDF0];
  v35 = type metadata accessor for MessageSource();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v33, v34, v35);
  (*(v36 + 56))(v33, 0, 1, v35);
  PommesTRPCandidateMessage.Builder.source.setter();
  RequestProcessorBase.assistantId.getter();
  PommesTRPCandidateMessage.Builder.assistantId.setter();
  RequestProcessorBase.sessionId.getter();
  v37 = type metadata accessor for UUID();
  (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
  PommesTRPCandidateMessage.Builder.sessionId.setter();
  RequestProcessorBase.requestId.getter();
  PommesTRPCandidateMessage.Builder.requestId.setter();

  PommesTRPCandidateMessage.Builder.trpCandidateId.setter();

  PommesTRPCandidateMessage.Builder.tcuId.setter();
  outlined init with copy of MediaUserStateCenter?(v45, v23, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  (*(*(v38 - 8) + 56))(v23, 0, 1, v38);
  PommesTRPCandidateMessage.Builder.pommesResult.setter();
  v39 = type metadata accessor for PommesSearchReason();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v18, v46, v39);
  (*(v40 + 56))(v18, 0, 1, v39);
  PommesTRPCandidateMessage.Builder.searchReason.setter();
  v41 = type metadata accessor for UserID();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v13, v47, v41);
  (*(v42 + 56))(v13, 0, 1, v41);
  return PommesTRPCandidateMessage.Builder.userId.setter();
}

uint64_t PommesBridgeRequestProcessor.buildTRPMessage(trpId:tcuId:response:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v14);
  v17 = &v22 - v16;
  *(&v22 - v16) = a5;
  swift_storeEnumTagMultiPayload();
  v18 = *(*v7 + class metadata base offset for PommesBridgeRequestProcessor + 560);
  v19 = a5;
  v20 = v18(a1, a2, a3, a4, v17, a6, v23);
  outlined destroy of MediaUserStateCenter?(v17, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  return v20;
}

uint64_t PommesBridgeRequestProcessor.buildTRPErrorMessage(trpId:tcuId:error:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v23 - v18;
  v20 = type metadata accessor for PommesError();
  (*(*(v20 - 8) + 16))(v19, a5, v20);
  swift_storeEnumTagMultiPayload();
  v21 = (*(*v7 + class metadata base offset for PommesBridgeRequestProcessor + 560))(a1, a2, a3, a4, v19, a6, a7);
  outlined destroy of MediaUserStateCenter?(v19, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  return v21;
}

uint64_t PommesBridgeRequestProcessor.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridgeRequestProcessor.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  v2 = *(v0 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8);

  v3 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext);

  v4 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);

  v5 = *(v0 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);

  v6 = direct field offset for PommesBridgeRequestProcessor.timeout;
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t PommesBridgeRequestProcessor.deinit()
{
  v0 = RequestProcessorBase.deinit();
  v1 = *(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridgeRequestProcessor.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  v2 = *(v0 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8);

  v3 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext);

  v4 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);

  v5 = *(v0 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);

  v6 = direct field offset for PommesBridgeRequestProcessor.timeout;
  v7 = type metadata accessor for DispatchTimeInterval();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t specialized PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)(uint64_t a1)
{
  v149 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v126 - v5;
  v142 = type metadata accessor for TCUMappedNLResponse();
  v140 = *(v142 - 8);
  v7 = *(v140 + 64);
  v9 = MEMORY[0x28223BE20](v142, v8);
  v138 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v126 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v136 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v139 = &v126 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v141 = &v126 - v23;
  v144 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v134 = *(v144 - 8);
  v24 = *(v134 + 64);
  v26 = MEMORY[0x28223BE20](v144, v25);
  v148 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v147 = &v126 - v29;
  v146 = type metadata accessor for Siri_Nlu_External_Parser();
  v137 = *(v146 - 8);
  v30 = *(v137 + 64);
  MEMORY[0x28223BE20](v146, v31);
  v145 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Siri_Nlu_External_UserParse();
  v150 = *(v129 - 8);
  v33 = *(v150 + 8);
  v35 = MEMORY[0x28223BE20](v129, v34);
  v37 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v143 = &v126 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v126 - v43;
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v126 - v46;
  v48 = type metadata accessor for NLXResultCandidate();
  v49 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8, v50);
  v53 = &v126 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v126 - v55;
  v57 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v126 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a1;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v61, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v142 = v47;
    v70 = *(v61 + 1);

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v61[*(v71 + 48)], v56, type metadata accessor for NLXResultCandidate);
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v56, v53, type metadata accessor for NLXResultCandidate);
    v61 = *v53;
    v72 = *(*v53 + 16);
    if (v72)
    {
      v127 = v56;
      v128 = v53;
      v153 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
      v66 = 0;
      v73 = v153;
      v139 = (v150[80] + 32) & ~v150[80];
      v138 = &v61[v139];
      v137 += 8;
      LODWORD(v136) = *MEMORY[0x277D5DA68];
      v74 = v134;
      v134 += 8;
      v135 = (v74 + 104);
      v133 = (v150 + 8);
      v132 = (v150 + 32);
      v75 = v129;
      v140 = v72;
      v141 = v61;
      v131 = (v150 + 16);
      while (v66 < *(v61 + 2))
      {
        v143 = *(v150 + 9);
        v76 = *(v150 + 2);
        v76(v44, &v138[v143 * v66], v75);
        v77 = v145;
        Siri_Nlu_External_UserParse.parser.getter();
        v78 = v147;
        Siri_Nlu_External_Parser.parserID.getter();
        (*v137)(v77, v146);
        v79 = v148;
        v80 = v144;
        (*v135)(v148, v136, v144);
        lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v81 = *v134;
        (*v134)(v79, v80);
        v82 = (v81)(v78, v80);
        if (v152 == v151)
        {
          MEMORY[0x28223BE20](v82, v83);
          *(&v126 - 2) = v44;
          lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
          v84 = v142;
          v85 = v149;
          static Message.with(_:)();
          v149 = v85;
        }

        else
        {
          v84 = v142;
          v76(v142, v44, v75);
        }

        (*v133)(v44, v75);
        v153 = v73;
        v87 = *(v73 + 16);
        v86 = *(v73 + 24);
        if (v87 >= v86 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1);
          v73 = v153;
        }

        ++v66;
        *(v73 + 16) = v87 + 1;
        (*v132)(v73 + v139 + v87 * v143, v84, v75);
        v61 = v141;
        if (v140 == v66)
        {

          v53 = v128;
          v56 = v127;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v122 = *v53;

    v73 = MEMORY[0x277D84F90];
LABEL_31:
    *v53 = v73;
    PommesBridgeResultCandidateState.setNLXResultCandidate(_:)(v53);
    outlined destroy of NLXResultCandidate(v56, type metadata accessor for NLXResultCandidate);
    outlined destroy of NLXResultCandidate(v53, type metadata accessor for NLXResultCandidate);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {

    v88 = *(v61 + 1);
    v89 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64)];
    v128 = v6;
    outlined init with take of PommesSearchReason?(v89, v6, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v66 = *(v88 + 16);
    if (v66)
    {
      v153 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
      v90 = 0;
      v91 = v153;
      v139 = (v150[80] + 32) & ~v150[80];
      v138 = (v88 + v139);
      v44 = v150 + 16;
      v137 += 8;
      LODWORD(v136) = *MEMORY[0x277D5DA68];
      v92 = v134;
      v134 += 8;
      v135 = (v92 + 104);
      v133 = (v150 + 8);
      v132 = (v150 + 32);
      v93 = v129;
      v140 = v88;
      v131 = v66;
      while (v90 < *(v88 + 16))
      {
        v141 = *(v150 + 9);
        v142 = v91;
        v94 = *(v150 + 2);
        v94(v37, &v138[v141 * v90], v93);
        v95 = v145;
        Siri_Nlu_External_UserParse.parser.getter();
        v96 = v147;
        Siri_Nlu_External_Parser.parserID.getter();
        (*v137)(v95, v146);
        v97 = v148;
        v98 = v44;
        v99 = v144;
        (*v135)(v148, v136, v144);
        lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v100 = *v134;
        (*v134)(v97, v99);
        v101 = (v100)(v96, v99);
        if (v152 == v151)
        {
          MEMORY[0x28223BE20](v101, v102);
          *(&v126 - 2) = v37;
          lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
          v103 = v149;
          static Message.with(_:)();
          v149 = v103;
        }

        else
        {
          v94(v143, v37, v93);
        }

        v66 = v131;
        v44 = v98;
        (*v133)(v37, v93);
        v91 = v142;
        v153 = v142;
        v105 = *(v142 + 16);
        v104 = *(v142 + 24);
        v61 = (v105 + 1);
        v88 = v140;
        if (v105 >= v104 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1);
          v91 = v153;
        }

        ++v90;
        *(v91 + 16) = v61;
        (*v132)(v91 + v139 + v105 * v141, v143, v93);
        if (v66 == v90)
        {

          goto LABEL_33;
        }
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v91 = MEMORY[0x277D84F90];
LABEL_33:
    v123 = v128;
    PommesBridgeResultCandidateState.setRunPommesRequest(userParses:fallbackParse:)(v91, v128);

    outlined destroy of MediaUserStateCenter?(v123, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    return 1;
  }

  v150 = v13;
  v63 = *(v61 + 1);

  v65 = *(v61 + 2);
  v64 = *(v61 + 3);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v67 = v141;
  outlined init with take of PommesSearchReason?(&v61[*(v66 + 64)], v141, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v68 = v139;
  outlined init with copy of MediaUserStateCenter?(v67, v139, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v69 = v140;
  if ((*(v140 + 48))(v68, 1, v142) != 1)
  {
    v106 = v150;
    v107 = (*(v69 + 32))(v150, v68, v142);
    MEMORY[0x28223BE20](v107, v108);
    *(&v126 - 4) = v106;
    *(&v126 - 3) = closure #1 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:);
    *(&v126 - 2) = 0;
    v109 = objc_allocWithZone(type metadata accessor for NLParseResponse());
    v110 = NLParseResponse.init(build:)();
    if (!v110)
    {
      outlined destroy of MediaUserStateCenter?(v141, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

      (*(v69 + 8))(v106, v142);
      goto LABEL_36;
    }

    v44 = v110;
    if (one-time initialization token for pommes == -1)
    {
LABEL_27:
      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logger.pommes);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_2232BB000, v112, v113, "Assigning overridden TCUMappedNLResponse to prState", v114, 2u);
        MEMORY[0x223DE0F80](v114, -1, -1);
      }

      v115 = v44;
      v116 = v138;
      TCUMappedNLResponse.init(tcuId:nlResponse:)();
      v117 = v140;
      v118 = v136;
      v119 = v142;
      (*(v140 + 16))(v136, v116, v142);
      v120 = 1;
      (*(v117 + 56))(v118, 0, 1, v119);
      PommesBridgeResultCandidateState.setParseResponse(_:)(v118);

      outlined destroy of MediaUserStateCenter?(v118, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v121 = *(v117 + 8);
      v121(v116, v119);
      outlined destroy of MediaUserStateCenter?(v141, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v121(v150, v119);
      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_27;
  }

  outlined destroy of MediaUserStateCenter?(v67, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

  outlined destroy of MediaUserStateCenter?(v68, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_36:
  v120 = 0;
LABEL_37:
  v125 = *(v66 + 80);
  outlined destroy of MediaUserStateCenter?(&v61[*(v66 + 96)], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  outlined destroy of MediaUserStateCenter?(&v61[v125], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  return v120;
}

uint64_t outlined destroy of NLXResultCandidate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PommesBridgeResultCandidateState.ParseState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NLXResultCandidate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PommesStateHolder.update(pommesCandidateId:with:)()
{
  v1 = *(type metadata accessor for PommesCandidateId() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in PommesStateHolder.update(pommesCandidateId:with:)(v5, v0 + v2, v6);
}

uint64_t partial apply for closure #4 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #4 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(a1, a2 & 1);
}

uint64_t partial apply for closure #1 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)();
}

uint64_t partial apply for closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)()
{
  v1 = *(type metadata accessor for PommesCandidateId() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(v4, v0 + v2, v5, v6);
}

uint64_t partial apply for implicit closure #12 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for PommesCandidateId() - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return implicit closure #12 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(v0 + v2, v5, v6);
}

uint64_t partial apply for implicit closure #2 in PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PommesCandidateId() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void type metadata completion function for PommesBridgeResultCandidateState()
{
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UserID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AFUserIdentityClassfication(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SelectedUserAttributes?(319, &lazy cache variable for type metadata for SelectedUserAttributes?, MEMORY[0x277D5D228]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AFSpeechPackage?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SelectedUserAttributes?(319, &lazy cache variable for type metadata for PommesSearchEagerInfo?, type metadata accessor for PommesSearchEagerInfo);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for AFSpeechPackage?()
{
  if (!lazy cache variable for type metadata for AFSpeechPackage?)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for AFSpeechPackage, 0x277CEF470);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AFSpeechPackage?);
    }
  }
}

void type metadata accessor for SelectedUserAttributes?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for PommesBridgeResultCandidateState.ParseState()
{
  type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?)(319, v0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool)()
{
  if (!lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool))
  {
    type metadata accessor for NLXResultCandidate();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool));
    }
  }
}

void type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?)(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?))
  {
    MEMORY[0x28223BE20](a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?));
    }
  }
}

void type metadata accessor for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?)()
{
  if (!lazy cache variable for type metadata for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?))
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for SARDRunPOMMESRequest, 0x277D476A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMd, &_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?));
    }
  }
}

uint64_t type metadata completion function for PommesBridgeRequestProcessor()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined assign with copy of ConversationSessionState?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *partial apply for closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)()
{
  v1 = *(type metadata accessor for PommesCandidateId() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v2, v3);
}

uint64_t static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for serialQueue != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  MEMORY[0x28223BE20](a1, a2);
  type metadata accessor for DomainAffinityKVStore();
  OS_dispatch_queue.sync<A>(execute:)();
  return v5;
}

void *one-time initialization function for singletonInstances()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch21DomainAffinityKVStoreCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DomainAffinityKVStoreManager.singletonInstances = result;
  return result;
}

uint64_t one-time initialization function for serialQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = *(v0 - 8);
  v20 = v0;
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v18 = "[DomainAffinityKVStore][";
  (*(v12 + 104))(v16, *MEMORY[0x277D851C8], v11);
  static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v16, v11);
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v19 + 104))(v4, *MEMORY[0x277D85260], v20);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DomainAffinityKVStoreManager.serialQueue = result;
  return result;
}

void closure #1 in static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  if (one-time initialization token for singletonInstances != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static DomainAffinityKVStoreManager.singletonInstances;
  if (*(static DomainAffinityKVStoreManager.singletonInstances + 2) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    v10 = one-time initialization token for pommes;

    if (v10 != -1)
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
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v22);
      v16 = "[DomainAffinityKVStoreManager] Found existing DomainAffinityKVStore singleton instance for %s";
LABEL_13:
      _os_log_impl(&dword_2232BB000, v12, v13, v16, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DE0F80](v15, -1, -1);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    v17 = type metadata accessor for DomainAffinityKVStore();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    v9 = DomainAffinityKVStore.init(name:)(a1, a2);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = static DomainAffinityKVStoreManager.singletonInstances;
    static DomainAffinityKVStoreManager.singletonInstances = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    static DomainAffinityKVStoreManager.singletonInstances = v23;
    swift_endAccess();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pommes);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v22);
      v16 = "[DomainAffinityKVStoreManager] Created new DomainAffinityKVStore singleton instance for %s";
      goto LABEL_13;
    }
  }

  *a3 = v9;
}

uint64_t type metadata accessor for DomainAffinityKVStore()
{
  result = type metadata singleton initialization cache for DomainAffinityKVStore;
  if (!type metadata singleton initialization cache for DomainAffinityKVStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainAffinityKVStore.dictStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t DomainAffinityKVStore.dictStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

char *DomainAffinityKVStore.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43, v11);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v39 - v30;
  *(v3 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSfGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v32 = OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_baseAssetsDir;
  URL.init(fileURLWithPath:isDirectory:)();
  v33 = &v3[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name];
  *v33 = a1;
  *(v33 + 1) = a2;
  (*(v23 + 16))(v28, &v3[v32], v22);

  URL.appendingPathComponent(_:isDirectory:)();

  (*(v23 + 8))(v28, v22);
  (*(v23 + 32))(&v3[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_assetDir], v31, v22);
  type metadata accessor for OS_dispatch_queue();
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v47 = 0xD000000000000018;
  v48 = 0x80000002234DE400;
  v34 = *v33;
  v35 = *(v33 + 1);

  MEMORY[0x223DDF6D0](v34, v35);

  MEMORY[0x223DDF6D0](0x516C61697265535DLL, 0xEC00000065756575);
  v36 = v39;
  v37 = v40;
  (*(v39 + 104))(v21, *MEMORY[0x277D851C8], v40);
  static OS_dispatch_queue.global(qos:)();
  (*(v36 + 8))(v21, v37);
  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, *MEMORY[0x277D85260], v46);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_serialQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(*v3 + 184))();
  return v3;
}

uint64_t DomainAffinityKVStore.maximumDomainAffinity(forKey:usingNormalizer:)()
{
  v1 = (*(*v0 + 160))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  if (!v6)
  {
    v11 = 0;
    v10 = (v4 + 63) >> 6;
    while (v10 - 1 != v6)
    {
      v7 = v6 + 1;
      v12 = *(v1 + 8 * v6 + 72);
      v11 -= 64;
      ++v6;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        v8 = __clz(__rbit64(v12)) - v11;
        goto LABEL_10;
      }
    }

    return 0;
  }

  v7 = 0;
  v8 = __clz(__rbit64(v6));
  v9 = (v6 - 1) & v6;
  v10 = (v4 + 63) >> 6;
LABEL_10:
  v13 = (*(v1 + 48) + 16 * v8);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(*(v1 + 56) + 4 * v8);

  if (!v9)
  {
    goto LABEL_13;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v19 = v18 | (v7 << 6);
      v20 = *(*(v2 + 56) + 4 * v19);
      if (v16 < v20)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v22 = (*(v2 + 48) + 16 * v19);
    v14 = *v22;
    v23 = v22[1];

    v16 = v20;
  }

  while (v9);
LABEL_13:
  while (1)
  {
    v21 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v21 >= v10)
    {

      return v14;
    }

    v9 = *(v3 + 8 * v21);
    ++v7;
    if (v9)
    {
      v7 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t DomainAffinityKVStore.domainAffinities(forKey:usingNormalizer:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v7 = a3();
  v9 = v8;
  v10 = (*(*v3 + 120))();
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = a1;
    v26 = v7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315906;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name), *(v4 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8), &v27);
    *(v17 + 12) = 2080;
    if (!v13)
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SfTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, a2, &v27);
    *(v17 + 32) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v9, &v27);

    *(v17 + 34) = v23;
    _os_log_impl(&dword_2232BB000, v15, v16, "[DomainAffinityKVStore][%s] Found (value: %s) for (key: %s, normalizedKey: %s)", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  else
  {
  }

  return v13;
}

void DomainAffinityKVStore.setDomainAffinities(_:forKey:usingNormalizer:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v5 = v4;
  v9 = a4(a2, a3);
  v11 = v10;
  v12 = *(*v4 + 136);

  v13 = v12(v28);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v15;
  *v15 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v9, v11, isUniquelyReferenced_nonNull_native);

  *v15 = v27;
  v13(v28, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315906;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name), *(v5 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8), v28);
    *(v21 + 12) = 2080;
    v23 = Dictionary.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v28);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v28);
    *(v21 + 32) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v28);

    *(v21 + 34) = v26;
    _os_log_impl(&dword_2232BB000, v19, v20, "[DomainAffinityKVStore][%s] Updated (value: %s) for (key: %s, normalizedKey: %s)", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall DomainAffinityKVStore.clear()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSfGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = *(*v0 + 128);

  v2(v1);
}

Swift::Void __swiftcall DomainAffinityKVStore.load()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_serialQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in DomainAffinityKVStore.load();
  *(v2 + 24) = v0;
  v4[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_12;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void closure #1 in DomainAffinityKVStore.load()(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static PerformanceUtil.shared;
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v22 = 0xD000000000000016;
  v23 = 0x80000002234DE350;
  v9 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8);
  v21 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name);
  MEMORY[0x223DDF6D0]();
  MEMORY[0x223DDF6D0](0x292864616F6C2E5DLL, 0xE800000000000000);
  v10 = v22;
  v11 = v23;
  Date.init()();
  v12 = *(*v8 + 200);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSfGGMd, &_sSDySSSDySSSfGGMR);
  v12(&v24, v10, v11, 0, v7, "SiriInformationSearch/DomainAffinityKVStore.swift", 49, 2, 107, "load()", 6, 2, partial apply for closure #1 in closure #1 in DomainAffinityKVStore.load(), a1, v13);
  (*(v3 + 8))(v7, v2);

  (*(*a1 + 128))(v24);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v9, &v22);
    *(v17 + 12) = 2048;
    v19 = *((*(*a1 + 120))() + 16);

    *(v17 + 14) = v19;

    _os_log_impl(&dword_2232BB000, v15, v16, "[DomainAffinityKVStore][%s] Loaded %ld entries from disk", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in closure #1 in DomainAffinityKVStore.load()()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v4 = Data.init(contentsOf:options:)();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSfGGMd, &_sSDySSSDySSSfGGMR);
    lazy protocol witness table accessor for type [String : [String : Float]] and conformance <> [A : B]();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v6, v7);
  }
}

Swift::Void __swiftcall DomainAffinityKVStore.save()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_serialQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in DomainAffinityKVStore.save();
  *(v2 + 24) = v0;
  v4[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_7_0;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void closure #1 in DomainAffinityKVStore.save()(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static PerformanceUtil.shared;
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v20 = 0xD000000000000016;
  v21 = 0x80000002234DE350;
  v9 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name);
  v10 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8);
  MEMORY[0x223DDF6D0](v9, v10);
  MEMORY[0x223DDF6D0](0x2928657661732E5DLL, 0xE800000000000000);
  v11 = v20;
  v12 = v21;
  Date.init()();
  (*(*v8 + 200))(v11, v12, 0, v7, "SiriInformationSearch/DomainAffinityKVStore.swift", 49, 2, 121, "save()", 6, 2, partial apply for closure #1 in closure #1 in DomainAffinityKVStore.save(), a1, MEMORY[0x277D84F78] + 8);
  (*(v3 + 8))(v7, v2);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);
    *(v16 + 12) = 2048;
    v18 = *((*(*a1 + 120))() + 16);

    *(v16 + 14) = v18;

    _os_log_impl(&dword_2232BB000, v14, v15, "[DomainAffinityKVStore][%s] Saved %ld entries to disk", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DE0F80](v17, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in closure #1 in DomainAffinityKVStore.save()(uint64_t a1)
{
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  (*(*a1 + 120))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSfGGMd, &_sSDySSSDySSSfGGMR);
  lazy protocol witness table accessor for type [String : [String : Float]] and conformance <> [A : B]();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    Data.write(to:options:)();
    return outlined consume of Data._Representation(v6, v8);
  }

  return result;
}

uint64_t DomainAffinityKVStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_baseAssetsDir;
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8);

  v4(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_assetDir, v3);

  return v0;
}

uint64_t DomainAffinityKVStore.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_baseAssetsDir;
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v5 = *&v0[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8];

  v4(&v0[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_assetDir], v3);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for DomainAffinityKVStore()
{
  result = type metadata accessor for URL();
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

uint64_t UserPersonaFeaturiser.name.getter()
{
  type metadata accessor for UserPersonaFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21UserPersonaFeaturiserCmMd, &_s21SiriInformationSearch21UserPersonaFeaturiserCmMR);
  return String.init<A>(describing:)();
}

id UserPersonaFeaturiser.currentUser.getter()
{
  result = [objc_opt_self() currentPersona];
  if (result)
  {
    v1 = result;
    v2 = [result userPersonaUniqueString];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UserPersonaFeaturiser.isPrimaryUser.getter()
{
  v0 = [objc_opt_self() currentPersona];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isDefaultPersona];

  return v2;
}

uint64_t UserPersonaFeaturiser.__allocating_init(query:)()
{
  v0 = swift_allocObject();
  UserPersonaFeaturiser.init(query:)();
  return v0;
}

uint64_t UserPersonaFeaturiser.init(query:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0xEB00000000544E45;
    v6 = 0x534552505F544F4ELL;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315650;
    v9 = (*(*v0 + 88))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = objc_opt_self();
    v13 = [v12 currentPersona];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 userPersonaNickName];

      if (v15)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v16;
      }
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v22);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    v18 = [v12 currentPersona];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 userPersonaType];
    }

    else
    {
      v20 = 9999999;
    }

    *(v7 + 24) = v20;
    _os_log_impl(&dword_2232BB000, v3, v4, "UserPersonaFeaturiser : currentUserPersona=%s nickname=%s personType=%lu", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
  }

  return v1;
}

void UserPersonaFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  if (v5 == (*(*v1 + 88))() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = (*((*v4 & *v3) + 0xB8))(v5);
      v12.n128_u32[0] = 1.0;
      (*((*v4 & *v11) + 0xE8))(v12);
      goto LABEL_10;
    }
  }

  v11 = (*((*v4 & *v3) + 0xB8))(v5);
  v13.n128_u32[0] = 1066192077;
  (*((*v4 & *v11) + 0xE8))(v13);
LABEL_10:

  if ((*(*v2 + 96))())
  {
    v14 = (*((*v4 & *v3) + 0xB8))();
    v15 = (*((*v4 & *v14) + 0xF0))(v17);
    *v16 = *v16 * 1.01;
    v15(v17, 0);
  }
}

Class @nonobjc LNMetadataProvider.actionsConforming(to:logicalType:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v16[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for LNSystemProtocol();
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  v9.super.isa = Set._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    a4 = MEMORY[0x223DDF550](a3, a4);
  }

  v16[0] = 0;
  v10 = [v5 actionsConformingToSystemProtocols:v9.super.isa logicalType:a2 bundleIdentifier:a4 error:v16];

  v11 = v16[0];
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
    v9.super.isa = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9.super.isa;
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

uint64_t PluginWarmupHandler.pluginIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *PluginWarmupHandler.__allocating_init(pluginIdentifier:warmupComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *PluginWarmupHandler.init(pluginIdentifier:warmupComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PluginWarmupHandler.warmup(request:serviceHelper:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &type metadata for FeatureFlag;
  v45 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v12 = swift_allocObject();
  aBlock[0] = v12;
  *(v12 + 16) = 2;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 3;
  v13 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if ((v13 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = v3[2];
  v14 = v3[3];
  v16 = objc_allocWithZone(MEMORY[0x277D47458]);
  v42 = v15;
  v17 = MEMORY[0x223DDF550](v15, v14);
  v18 = [v16 initWithBundleIdentifier_];

  v19 = v18;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v7 + 8))(v11, v6);
  v23 = MEMORY[0x223DDF550](v20, v22);

  [v19 setAceId_];

  v24 = type metadata accessor for PommesSearchRequest(0);
  v25 = (a1 + *(v24 + 36));
  if (v25[1])
  {
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v28 = (a1 + *(v24 + 32));
    v27 = v28[1];
    if (!v27)
    {
      v40 = v19;
      v31 = 0;
      goto LABEL_7;
    }

    v26 = *v28;
    v29 = v28[1];
  }

  v30 = v19;

  v31 = MEMORY[0x223DDF550](v26, v27);

LABEL_7:
  [v19 setRefId_];

  if (a2)
  {
    v45 = partial apply for closure #1 in PluginWarmupHandler.warmup(request:serviceHelper:);
    v46 = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v44 = &block_descriptor_13;
    v32 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [a2 handleCommand:v19 completion:v32];
    swift_unknownObjectRelease();

    _Block_release(v32);
    v33 = v3[4];
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.pommes);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v14, aBlock);
    _os_log_impl(&dword_2232BB000, v36, v37, "PluginWarmupHandler#warmup serviceHelper nil, skipping warming up for %s plugin", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v38, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void closure #1 in PluginWarmupHandler.warmup(request:serviceHelper:)(void *a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      v11 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_2232BB000, v7, v8, "PluginWarmupHandler#warmup Service helper returned an error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223DE0F80](v10, -1, -1);
      MEMORY[0x223DE0F80](v9, -1, -1);

      return;
    }

    v29 = a2;
  }

  else
  {
    if (a1)
    {
      v16 = one-time initialization token for pommes;
      v17 = a1;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.pommes);
      v19 = v17;

      oslog = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34 = v22;
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v34);
        *(v21 + 12) = 2080;
        v23 = v19;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v34);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_2232BB000, oslog, v20, "PluginWarmupHandler#warmup %s plugin warmup successful with result %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v22, -1, -1);
        MEMORY[0x223DE0F80](v21, -1, -1);

        return;
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.pommes);
      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2232BB000, oslog, v31, "PluginWarmupHandler#warmup Service helper returned nil responseCommand. Please make sure we set the right refId and check assistantd logs for more details.", v32, 2u);
        MEMORY[0x223DE0F80](v32, -1, -1);
      }
    }

    v29 = oslog;
  }
}

uint64_t PluginWarmupHandler.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t PluginWarmupHandler.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DDFF80](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t specialized Collection<>.merge<A>(with:by:isAscending:)(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  v45 = MEMORY[0x277D84F90];
  if (a4 >> 62)
  {
LABEL_105:
    v42 = a4 & 0xFFFFFFFFFFFFFF8;
    v35 = a4;
    v36 = __CocoaSet.count.getter();
    a4 = v35;
    v6 = v36;
  }

  else
  {
    v42 = a4 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 0;
  v37 = a4;
  v9 = a4 & 0xC000000000000001;
  v10 = a4 + 32;
  v40 = a1 + 32;
  v41 = a1 & 0xC000000000000001;
  result = MEMORY[0x277D84F90];
  v38 = a2;
  while (1)
  {
    while (1)
    {
      v12 = a1 >> 62;
      if (v8 >= v6)
      {
        if (v12)
        {
          v28 = result;
          v29 = __CocoaSet.count.getter();
          result = v28;
          a2 = v38;
          if (v7 >= v29)
          {
            return result;
          }
        }

        else if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }
      }

      if (v8 == v6)
      {
        if (v41)
        {
          MEMORY[0x223DDFF80](v7, a1);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_102;
          }

          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_104;
          }

          v15 = *(v40 + 8 * v7);
        }

        MEMORY[0x223DDF820]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a2 = v38;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = __OFADD__(v7++, 1);
        if (v14)
        {
          goto LABEL_103;
        }

        v8 = v6;
        goto LABEL_27;
      }

      if (v12)
      {
        break;
      }

      if (v7 != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

LABEL_11:
      if (v9)
      {
        MEMORY[0x223DDFF80](v8, v37);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v8 >= *(v42 + 16))
        {
          goto LABEL_91;
        }

        v13 = *(v10 + 8 * v8);
      }

      MEMORY[0x223DDF820]();
      a2 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = __OFADD__(v8++, 1);
      if (v14)
      {
        goto LABEL_90;
      }

      a2 = v38;
LABEL_4:
      result = v45;
    }

    if (v7 == __CocoaSet.count.getter())
    {
      goto LABEL_11;
    }

LABEL_29:
    if (a3)
    {
      if (v9)
      {
        v16 = MEMORY[0x223DDFF80](v8, v37);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_93;
        }

        if (v8 >= *(v42 + 16))
        {
          goto LABEL_95;
        }

        v16 = *(v10 + 8 * v8);
      }

      v17 = v16;
      swift_getAtKeyPath();

      if (v41)
      {
        v18 = MEMORY[0x223DDFF80](v7, a1);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v18 = *(v40 + 8 * v7);
      }

      v19 = v18;
      swift_getAtKeyPath();

      if (v44 < v43)
      {
        if (v9)
        {
          MEMORY[0x223DDFF80](v8, v37);
        }

        else
        {
          v24 = *(v10 + 8 * v8);
        }

        MEMORY[0x223DDF820]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a2 = v38;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_101;
        }

        goto LABEL_4;
      }

      if (v41)
      {
        MEMORY[0x223DDFF80](v7, a1);
      }

      else
      {
        v26 = *(v40 + 8 * v7);
      }

      MEMORY[0x223DDF820]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        a2 = v38;
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = __OFADD__(v7++, 1);
      if (v14)
      {
        goto LABEL_106;
      }

      goto LABEL_27;
    }

    if (v9)
    {
      v20 = MEMORY[0x223DDFF80](v8, v37);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (v8 >= *(v42 + 16))
      {
        goto LABEL_94;
      }

      v20 = *(v10 + 8 * v8);
    }

    v21 = v20;
    swift_getAtKeyPath();

    if (v41)
    {
      v22 = MEMORY[0x223DDFF80](v7, a1);
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v22 = *(v40 + 8 * v7);
    }

    v23 = v22;
    swift_getAtKeyPath();

    if (v44 >= v43)
    {
      if (v9)
      {
        MEMORY[0x223DDFF80](v8, v37);
      }

      else
      {
        v25 = *(v10 + 8 * v8);
      }

      MEMORY[0x223DDF820]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        a2 = v38;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = __OFADD__(v8++, 1);
      if (v14)
      {
        goto LABEL_100;
      }

      goto LABEL_4;
    }

    if (v41)
    {
      MEMORY[0x223DDFF80](v7, a1);
    }

    else
    {
      v27 = *(v40 + 8 * v7);
    }

    MEMORY[0x223DDF820]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      a2 = v38;
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = __OFADD__(v7++, 1);
    if (v14)
    {
      break;
    }

LABEL_27:
    result = v45;
  }

  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t AudioRanker.__allocating_init(localeIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale;
  Locale.init(identifier:)();
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v3 + v4, 0, 1, v5);
  return v3;
}

uint64_t AudioRanker.init(localeIdentifier:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v8 - v4;
  Locale.init(identifier:)();
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  outlined init with take of Locale?(v5, v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale);
  return v0;
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudioRanker.rank(query:clientCandidate:serverCandidate:clientSignals:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v220 = a4;
  v210 = a1;
  v238 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v235 = *(v238 - 8);
  v6 = *(v235 + 64);
  MEMORY[0x28223BE20](v238, v7);
  v242 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier();
  v239 = *(v241 - 8);
  v9 = *(v239 + 64);
  MEMORY[0x28223BE20](v241, v10);
  v240 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides();
  v206 = *(v207 - 8);
  v12 = *(v206 + 64);
  v14 = MEMORY[0x28223BE20](v207, v13);
  v205 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v204 = &v203 - v17;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v223 = *(v18 - 8);
  v19 = *(v223 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v209 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact();
  v236 = *(v22 - 8);
  v23 = *(v236 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo();
  v234 = *(v237 - 1);
  v27 = *(v234 + 64);
  MEMORY[0x28223BE20](v237, v28);
  v233 = &v203 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v35 = (&v203 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v203 - v37;
  v216 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo();
  v215 = *(v216 - 8);
  v39 = *(v215 + 64);
  v41 = MEMORY[0x28223BE20](v216, v40);
  v43 = &v203 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v41, v44);
  v232 = &v203 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v219 = &v203 - v48;
  v244 = a3;
  v245 = a2;
  v49 = one-time initialization token for pommes;
  v217 = a2;

  v218 = a3;

  if (v49 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v50 = type metadata accessor for Logger();
    v51 = __swift_project_value_buffer(v50, static Logger.pommes);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    v222 = v18;
    v221 = v51;
    v214 = v35;
    v208 = v22;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v243 = v22;
      *v55 = 136315138;
      v56 = type metadata accessor for AudioItemCandidate(0);

      v58 = MEMORY[0x223DDF870](v57, v56);
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v243);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_2232BB000, v52, v53, "AudioRanker#rank clientCandidate: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DE0F80](v22, -1, -1);
      MEMORY[0x223DE0F80](v55, -1, -1);
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v243 = v22;
      *v64 = 136315138;
      v65 = type metadata accessor for AudioItemCandidate(0);

      v67 = MEMORY[0x223DDF870](v66, v65);
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v243);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_2232BB000, v62, v63, "AudioRanker#rank serverCandidate: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DE0F80](v22, -1, -1);
      MEMORY[0x223DE0F80](v64, -1, -1);
    }

    v71 = v222;
    v72 = v223;
    v35 = v43;
    outlined init with copy of MediaUserStateCenter?(v220, v38, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v73 = *(v72 + 48);
    v212 = v72 + 48;
    v211 = v73;
    if (v73(v38, 1, v71) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v38, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2232BB000, v74, v75, "AudioRanker#rank musicRankingInfluenceImpactInfo: NOT_AVAILABLE ", v76, 2u);
        MEMORY[0x223DE0F80](v76, -1, -1);
      }
    }

    else
    {
      v77 = v232;
      Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.getter();
      (*(v72 + 8))(v38, v71);
      v78 = v215;
      v79 = v219;
      v80 = v216;
      (*(v215 + 32))(v219, v77, v216);
      (*(v78 + 16))(v35, v79, v80);
      v18 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v81))
      {
        v82 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v243 = v22;
        *v82 = 136315138;
        lazy protocol witness table accessor for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(&lazy protocol witness table cache variable for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo, MEMORY[0x277D39D38]);
        v83 = Message.debugDescription.getter();
        v84 = v35;
        v35 = v85;
        v203 = *(v78 + 8);
        v203(v84, v80);
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v35, &v243);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_2232BB000, v18, v81, "AudioRanker#rank musicRankingInfluenceImpactInfo: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x223DE0F80](v22, -1, -1);
        MEMORY[0x223DE0F80](v82, -1, -1);
      }

      else
      {

        v203 = *(v78 + 8);
        v203(v35, v80);
      }

      v38 = v208;
      v87 = Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.suggestionImpactInfo.getter();
      v224 = *(v87 + 16);
      if (v224)
      {
        v43 = 0;
        v230 = v234 + 16;
        v229 = *MEMORY[0x277D39C78];
        v228 = v236 + 104;
        v227 = *MEMORY[0x277D39CA8];
        v226 = v234 + 8;
        v231 = (v236 + 8);
        v225 = xmmword_2234CF940;
        v232 = v87;
        while (v43 < *(v87 + 16))
        {
          v88 = v234;
          v89 = v233;
          (*(v234 + 16))(v233, v87 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v43, v237);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactOGMR);
          v90 = v236;
          v18 = *(v236 + 72);
          v91 = (*(v236 + 80) + 32) & ~*(v236 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = v225;
          v35 = (v22 + v91);
          v92 = *(v90 + 104);
          v92(v35, v229, v38);
          v92((v35 + v18), v227, v38);
          Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.impact.getter();
          (*(v88 + 8))(v89, v237);
          lazy protocol witness table accessor for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(&lazy protocol witness table cache variable for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact, MEMORY[0x277D39CB8]);
          if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (dispatch thunk of static Equatable.== infix(_:_:)())
          {

            (*v231)(v26, v38);

            v199 = Logger.logObject.getter();
            v200 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v199, v200))
            {
              v201 = swift_slowAlloc();
              *v201 = 0;
              _os_log_impl(&dword_2232BB000, v199, v200, "AudioRanker#rank musicRankingInfluenceImpactInfo: Top result from the server is a slotted result. Ignoring the client results and returning the server results", v201, 2u);
              MEMORY[0x223DE0F80](v201, -1, -1);
            }

            v203(v219, v216);

            return v218;
          }

          ++v43;

          (*v231)(v26, v38);
          v87 = v232;
          if (v224 == v43)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_77;
      }

LABEL_19:
      v203(v219, v216);
    }

    v93 = v213;
    v94 = v210;
    swift_beginAccess();
    swift_beginAccess();
    AudioRanker.featurise(clientCandidate:serverCandidate:with:)(&v245, &v244, v94);
    swift_endAccess();
    swift_endAccess();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v243 = v98;
      *v97 = 136315138;
      v99 = type metadata accessor for AudioItemCandidate(0);

      v101 = MEMORY[0x223DDF870](v100, v99);
      v103 = v102;

      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v243);

      *(v97 + 4) = v104;
      _os_log_impl(&dword_2232BB000, v95, v96, "AudioRanker#rank Post featurise-clientCandidate: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x223DE0F80](v98, -1, -1);
      MEMORY[0x223DE0F80](v97, -1, -1);
    }

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v243 = v108;
      *v107 = 136315138;
      v109 = type metadata accessor for AudioItemCandidate(0);

      v111 = MEMORY[0x223DDF870](v110, v109);
      v113 = v112;

      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v243);

      *(v107 + 4) = v114;
      _os_log_impl(&dword_2232BB000, v105, v106, "AudioRanker#rank Post featurise-serverCandidate: %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x223DE0F80](v108, -1, -1);
      MEMORY[0x223DE0F80](v107, -1, -1);
    }

    swift_beginAccess();
    v115 = *(*v93 + 112);
    v115(&v245, 1);
    swift_endAccess();
    swift_beginAccess();
    v115(&v244, 1);
    swift_endAccess();
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v243 = v119;
      *v118 = 136315138;
      v120 = type metadata accessor for AudioItemCandidate(0);

      v122 = MEMORY[0x223DDF870](v121, v120);
      v124 = v123;

      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v243);

      *(v118 + 4) = v125;
      _os_log_impl(&dword_2232BB000, v116, v117, "AudioRanker#rank Post score-clientCandidate: %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x223DE0F80](v119, -1, -1);
      MEMORY[0x223DE0F80](v118, -1, -1);
    }

    v126 = v244;

    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v243 = v130;
      *v129 = 136315138;
      v131 = type metadata accessor for AudioItemCandidate(0);
      v132 = MEMORY[0x223DDF870](v126, v131);
      v134 = v133;

      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v243);

      *(v129 + 4) = v135;
      _os_log_impl(&dword_2232BB000, v127, v128, "AudioRanker#rank Post score-serverCandidate: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x223DE0F80](v130, -1, -1);
      MEMORY[0x223DE0F80](v129, -1, -1);
    }

    else
    {
    }

    v136 = v223;
    v137 = v214;
    outlined init with copy of MediaUserStateCenter?(v220, v214, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v138 = v222;
    if (v211(v137, 1, v222) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v137, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      goto LABEL_64;
    }

    v233 = v126;
    (*(v136 + 32))(v209, v137, v138);
    v139 = v204;
    Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
    Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultUniversalScoreMultiplier.getter();
    v141 = v140;
    v43 = v206 + 8;
    v142 = *(v206 + 8);
    v143 = v139;
    v26 = v207;
    v142(v143, v207);
    if (v141 >= 0.001)
    {
      v144 = v141;
    }

    else
    {
      v144 = 1.0;
    }

    v145 = v205;
    v146 = Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
    v22 = MEMORY[0x223DDB8E0](v146);
    v142(v145, v26);
    v147 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SfTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v35 = *(v22 + 16);
    if (v35)
    {
      v38 = 0;
      v148 = (v22 + ((*(v239 + 80) + 32) & ~*(v239 + 80)));
      v18 = v239 + 16;
      v234 = v235 + 16;
      v236 = v239 + 8;
      v237 = (v235 + 8);
      while (v38 < *(v22 + 16))
      {
        v149 = (*(v239 + 16))(v240, &v148[*(v239 + 72) * v38], v241);
        v43 = v242;
        v150 = MEMORY[0x223DDBC80](v149);
        v151 = MEMORY[0x223DDBC90](v150);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v243 = v147;
        v153 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
        v155 = v147[2];
        v156 = (v154 & 1) == 0;
        v157 = __OFADD__(v155, v156);
        v158 = v155 + v156;
        if (v157)
        {
          goto LABEL_73;
        }

        v43 = v154;
        if (v147[3] >= v158)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v166 = v153;
            specialized _NativeDictionary.copy()();
            v153 = v166;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v158, isUniquelyReferenced_nonNull_native);
          v153 = specialized __RawDictionaryStorage.find<A>(_:)(v242);
          if ((v43 & 1) != (v159 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);

            __break(1u);
            return result;
          }
        }

        v160 = v144 * v151;
        v147 = v243;
        if (v43)
        {
          *(v243[7] + 4 * v153) = v160;
          (*v237)(v242, v238);
          (*v236)(v240, v241);
        }

        else
        {
          v26 = v148;
          v161 = v35;
          v35 = v22;
          v243[(v153 >> 6) + 8] |= 1 << v153;
          v162 = v235;
          v163 = v153;
          v22 = v242;
          v43 = v238;
          (*(v235 + 16))(v147[6] + *(v235 + 72) * v153, v242, v238);
          *(v147[7] + 4 * v163) = v160;
          (*(v162 + 8))(v22, v43);
          (*v236)(v240, v241);
          v164 = v147[2];
          v157 = __OFADD__(v164, 1);
          v165 = v164 + 1;
          if (v157)
          {
            goto LABEL_76;
          }

          v147[2] = v165;
          v22 = v35;
          v35 = v161;
          v148 = v26;
        }

        if (v35 == ++v38)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_48:

    v18 = v245;
    v43 = v245 >> 62 ? __CocoaSet.count.getter() : *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v43)
    {
      break;
    }

    v167 = 0;
    v26 = (v18 & 0xC000000000000001);
    v38 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v170 = MEMORY[0x223DDFF80](v167, v18);
      }

      else
      {
        if (v167 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v170 = *(v18 + 8 * v167 + 32);
      }

      v35 = v170;
      v22 = v167 + 1;
      if (__OFADD__(v167, 1))
      {
        break;
      }

      v171 = v144;
      if (v147[2])
      {
        v172 = specialized __RawDictionaryStorage.find<A>(_:)(v170 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType);
        v171 = v144;
        if (v173)
        {
          v171 = *(v147[7] + 4 * v172);
        }
      }

      v168 = (*((*MEMORY[0x277D85000] & *v35) + 0xB0))(&v243);
      *v169 = v171 * *v169;
      v168(&v243, 0);

      ++v167;
      if (v22 == v43)
      {
        goto LABEL_61;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_61:

  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v243 = v177;
    *v176 = 136315138;
    v178 = type metadata accessor for AudioItemCandidate(0);

    v180 = MEMORY[0x223DDF870](v179, v178);
    v182 = v181;

    v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v182, &v243);

    *(v176 + 4) = v183;
    _os_log_impl(&dword_2232BB000, v174, v175, "AudioRanker#rank Post multipliers-clientCandidate: %s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v177);
    MEMORY[0x223DE0F80](v177, -1, -1);
    MEMORY[0x223DE0F80](v176, -1, -1);
  }

  (*(v223 + 8))(v209, v222);
  v126 = v233;
LABEL_64:
  v184 = v245;
  swift_bridgeObjectRetain_n();
  v243 = specialized Array._copyToContiguousArray()(v184);
  specialized MutableCollection<>.sort(by:)(&v243);
  swift_bridgeObjectRelease_n();
  v185 = v243;

  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v243 = v189;
    *v188 = 136315138;
    v190 = type metadata accessor for AudioItemCandidate(0);
    v191 = MEMORY[0x223DDF870](v185, v190);
    v192 = v126;
    v194 = v193;

    v195 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v191, v194, &v243);
    v126 = v192;

    *(v188 + 4) = v195;
    _os_log_impl(&dword_2232BB000, v186, v187, "AudioRanker#rank Post sorting by score-clientCandidate: %s", v188, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v189);
    MEMORY[0x223DE0F80](v189, -1, -1);
    MEMORY[0x223DE0F80](v188, -1, -1);
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();

  v198 = specialized Collection<>.merge<A>(with:by:isAscending:)(v197, KeyPath, 0, v126);
  swift_bridgeObjectRelease_n();

  return v198;
}

uint64_t AudioRanker.featurise(clientCandidate:serverCandidate:with:)(unint64_t *a1, unint64_t *a2, unint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (&v46 - v7);
  v9 = v54;
  v10 = type metadata accessor for AudioTypeFeaturiser(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v14 = specialized AudioTypeFeaturiser.init(query:)(v13);

  v54[7] = v10;
  v54[8] = &protocol witness table for AudioTypeFeaturiser;
  v54[4] = v14;
  matched = type metadata accessor for SourceMatchFeaturiser();
  v16 = *(matched + 48);
  v17 = *(matched + 52);
  swift_allocObject();

  v19 = specialized SourceMatchFeaturiser.init(query:)(v18);

  v54[12] = matched;
  v54[13] = &protocol witness table for SourceMatchFeaturiser;
  v54[9] = v19;
  v20 = type metadata accessor for SourcePriorityFeaturiser();
  swift_allocObject();

  v22 = SourcePriorityFeaturiser.init(query:)(v21);
  v54[17] = v20;
  v54[18] = &protocol witness table for SourcePriorityFeaturiser;
  v54[14] = v22;
  v23 = type metadata accessor for DownloadedFeaturiser();
  v24 = swift_allocObject();
  v25 = one-time initialization token for pommes;

  if (v25 != -1)
  {
    goto LABEL_21;
  }

LABEL_2:
  v48 = v9 + 32;
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.pommes);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

    _os_log_impl(&dword_2232BB000, v27, v28, "DownloadedFeaturiser : networkAvailable=%{BOOL}d", v29, 8u);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  else
  {
  }

  *(v24 + 16) = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

  v54[22] = v23;
  v54[23] = &protocol witness table for DownloadedFeaturiser;
  v54[19] = v24;
  v30 = type metadata accessor for UserPersonaFeaturiser();
  swift_allocObject();

  v31 = UserPersonaFeaturiser.init(query:)();
  v54[27] = v30;
  v54[28] = &protocol witness table for UserPersonaFeaturiser;
  v54[24] = v31;
  outlined init with copy of MediaUserStateCenter?(v49 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale, v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v32 = type metadata accessor for QTreeFeaturiser();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v36 = QTreeFeaturiser.init(query:locale:)(v35, v8);
  v9 = 0;
  a3 = 0;
  v54[32] = v32;
  v54[33] = &protocol witness table for QTreeFeaturiser;
  v54[29] = v36;
  do
  {
    v37 = outlined init with copy of AppDataProviding(v48 + 40 * v9, v51);
    v8 = &v46;
    v38 = *v46;
    MEMORY[0x28223BE20](v37, v39);
    *(&v46 - 2) = v51;

    specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in AudioRanker.featurise(clientCandidate:serverCandidate:with:), (&v46 - 4), v38);

    v40 = *v47;
    v49 = a3;
    if (v40 >> 62)
    {
      v44 = __CocoaSet.count.getter();
      if (v44 < 0)
      {
        goto LABEL_20;
      }

      v41 = v44;
      a3 = v9;
      if (v44)
      {
LABEL_9:
        v42 = 0;
        v8 = (v40 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x223DDFF80](v42, v40);
          }

          else
          {
            if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              __break(1u);
LABEL_21:
              swift_once();
              goto LABEL_2;
            }

            v43 = *(v40 + 8 * v42 + 32);
          }

          v9 = v42 + 1;
          v50[0] = v43;
          v23 = v52;
          v24 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          (*(v24 + 16))(v50, v42, v23, v24);

          v42 = v9;
        }

        while (v41 != v9);
      }
    }

    else
    {
      a3 = v9;
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_9;
      }
    }

    v9 = a3 + 1;
    __swift_destroy_boxed_opaque_existential_1(v51);
    a3 = v49;
  }

  while (v9 != 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch10Featuriser_pMd, &_s21SiriInformationSearch10Featuriser_pMR);
  return swift_arrayDestroy();
}

void closure #1 in closure #1 in AudioRanker.featurise(clientCandidate:serverCandidate:with:)(id *a1, void *a2)
{
  v5 = *a1;
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = v5;
  Featuriser.featurise(candidate:)(&v5, v2, v3);
}

Swift::Void __swiftcall AudioRanker.score(items:maxCandidateFieldCount:)(Swift::OpaquePointer *items, Swift::Int maxCandidateFieldCount)
{
  rawValue = items->_rawValue;
  if (items->_rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DDFF80](j, rawValue);
      }

      else
      {
        if (j >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(rawValue + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v5;
      closure #1 in AudioRanker.score(items:maxCandidateFieldCount:)(&v8);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t closure #1 in AudioRanker.score(items:maxCandidateFieldCount:)(void **a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & **a1) + 0xB8);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x98))();

  v6 = v3();
  v7 = (*((*v2 & *v6) + 0x80))();

  v8 = v3();
  v9 = (*((*v2 & *v8) + 0xE0))();

  v10 = v3();
  v11 = (*((*v2 & *v10) + 0xF8))();

  v12 = v3();
  v13 = (*((*v2 & *v12) + 0xB0))();

  v14 = v3();
  v15 = (*((*v2 & *v14) + 0xF8))();

  v16 = ((v13 * v15) * 2.2) + 1.0;
  if (v13 < 0.001)
  {
    v16 = 1.0;
  }

  v17 = (((v5 * v7) * v9) * v11) * v16;
  v18 = v3();
  v19 = (*((*v2 & *v18) + 0xC8))();

  v20 = v3();
  (*((*v2 & *v20) + 0xF8))();

  return (*((*v2 & *v1) + 0xA8))(v17 * v19);
}

uint64_t AudioRanker.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AudioItemCandidate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = MEMORY[0x277D85000];
LABEL_5:
    v20 = a3;
    v8 = *(v4 + 8 * a3);
    v18 = v6;
    v19 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = *((*v7 & *v8) + 0xA0);
      v11 = v8;
      v12 = v9;
      v13 = v10();
      v14 = (*((*v7 & *v12) + 0xA0))();

      if (v14 >= v13)
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v19 + 8;
        v6 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v15 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v15;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v98 = *(v9 + 2);
    if (v98 >= 2)
    {
      while (*v6)
      {
        v99 = v9;
        v9 = (v98 - 1);
        v100 = *&v99[16 * v98];
        v101 = *&v99[16 * v98 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v100), (*v6 + 8 * *&v99[16 * v98 + 16]), (*v6 + 8 * v101), v8);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v101 < v100)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
        }

        if (v98 - 2 >= *(v99 + 2))
        {
          goto LABEL_114;
        }

        v102 = &v99[16 * v98];
        *v102 = v100;
        *(v102 + 1) = v101;
        specialized Array.remove(at:)(v98 - 1);
        v9 = v99;
        v98 = *(v99 + 2);
        if (v98 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v8 = (v8 + 1);
    if (v8 < v7)
    {
      v116 = v7;
      v105 = v9;
      v109 = v5;
      v11 = *(*v6 + 8 * v8);
      v12 = v10;
      v114 = 8 * v10;
      v13 = (*v6 + 8 * v10);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = MEMORY[0x277D85000];
      v9 = *((*MEMORY[0x277D85000] & *v11) + 0xA0);
      v17 = v11;
      v18 = v15;
      v19 = (v9)();
      v20 = (*((*v16 & *v18) + 0xA0))();

      v107 = v12;
      v21 = (v12 + 2);
      while (1)
      {
        v8 = v116;
        if (v116 == v21)
        {
          break;
        }

        v22 = *(v14 - 1);
        v9 = MEMORY[0x277D85000];
        v23 = *((*MEMORY[0x277D85000] & **v14) + 0xA0);
        v24 = *v14;
        v25 = v22;
        v26 = v23();
        v27 = (*((*v9 & *v25) + 0xA0))();

        v21 = (v21 + 1);
        ++v14;
        if (v20 < v19 == v27 >= v26)
        {
          v8 = (v21 - 1);
          break;
        }
      }

      v10 = v107;
      v5 = v109;
      v6 = a3;
      v28 = v114;
      if (v20 < v19)
      {
        if (v8 < v107)
        {
          goto LABEL_117;
        }

        if (v107 < v8)
        {
          v29 = 8 * v8 - 8;
          v30 = v8;
          v31 = v107;
          do
          {
            v30 = (v30 - 1);
            if (v31 != v30)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v32 = *(v33 + v28);
              *(v33 + v28) = *(v33 + v29);
              *(v33 + v29) = v32;
            }

            v31 = (v31 + 1);
            v29 -= 8;
            v28 += 8;
          }

          while (v31 < v30);
        }
      }

      v9 = v105;
    }

    v34 = v6[1];
    if (v8 < v34)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_118;
        }

        if (v10 + a4 >= v34)
        {
          v35 = v6[1];
        }

        else
        {
          v35 = (v10 + a4);
        }

        if (v35 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v35)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v52 = *(v9 + 2);
    v51 = *(v9 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v9);
    }

    *(v9 + 2) = v53;
    v54 = &v9[16 * v52];
    *(v54 + 4) = v10;
    *(v54 + 5) = v8;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v9 + 4);
          v58 = *(v9 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_57:
          if (v60)
          {
            goto LABEL_104;
          }

          v73 = &v9[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_107;
          }

          v79 = &v9[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_111;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v83 = &v9[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_71:
        if (v78)
        {
          goto LABEL_106;
        }

        v86 = &v9[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_109;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_78:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v95 = *&v9[16 * v94 + 32];
        v96 = *&v9[16 * v56 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v95), (*v6 + 8 * *&v9[16 * v56 + 32]), (*v6 + 8 * v96), v55);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v96 < v95)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v94 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v97 = &v9[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        specialized Array.remove(at:)(v56);
        v53 = *(v9 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v9[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_102;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_103;
      }

      v68 = &v9[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_105;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_108;
      }

      if (v72 >= v64)
      {
        v90 = &v9[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_112;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v110 = v5;
  v36 = v10;
  v37 = *v6;
  v38 = *v6 + 8 * v8 - 8;
  v106 = v9;
  v108 = v36;
  v39 = v36 - v8;
  v112 = v35;
LABEL_30:
  v115 = v38;
  v117 = v8;
  v40 = *(v37 + 8 * v8);
  v113 = v39;
  v41 = v38;
  while (1)
  {
    v42 = *v41;
    v43 = MEMORY[0x277D85000];
    v44 = *((*MEMORY[0x277D85000] & *v40) + 0xA0);
    v45 = v40;
    v46 = v42;
    v47 = v44();
    v48 = (*((*v43 & *v46) + 0xA0))();

    if (v48 >= v47)
    {
LABEL_29:
      v8 = (v117 + 1);
      v38 = v115 + 8;
      v39 = v113 - 1;
      if ((v117 + 1) != v112)
      {
        goto LABEL_30;
      }

      v8 = v112;
      v10 = v108;
      v5 = v110;
      v6 = a3;
      v9 = v106;
      goto LABEL_37;
    }

    if (!v37)
    {
      break;
    }

    v49 = *v41;
    v40 = *(v41 + 8);
    *v41 = v40;
    *(v41 + 8) = v49;
    v41 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v13;
    }

    v39 = &a4[v9];
    v14 = a4;
    if (v7 < 8 || v5 >= v4)
    {
      v5 = v6;
      goto LABEL_38;
    }

    v37 = v4;
    while (1)
    {
      v15 = *v14;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & **v5) + 0xA0);
      v18 = *v5;
      v19 = v15;
      v20 = v17();
      v21 = (*((*v16 & *v19) + 0xA0))();

      if (v21 >= v20)
      {
        break;
      }

      v22 = v5;
      v23 = v6 == v5++;
      if (!v23)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v6;
      if (v14 >= v39 || v5 >= v37)
      {
        v5 = v6;
        goto LABEL_38;
      }
    }

    v22 = v14;
    v23 = v6 == v14++;
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v22;
    goto LABEL_18;
  }

  v14 = a4;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v39 = &v14[v12];
  if (v10 >= 8 && v5 > v6)
  {
    do
    {
      v24 = v5 - 1;
      v25 = v4 - 1;
      v26 = v39;
      v36 = v5 - 1;
      while (1)
      {
        v27 = v25;
        v28 = (v25 + 1);
        v29 = *--v26;
        v30 = *v24;
        v38 = *((*MEMORY[0x277D85000] & *v29) + 0xA0);
        v31 = v29;
        v32 = v30;
        v33 = v38();
        v34 = (*((*MEMORY[0x277D85000] & *v32) + 0xA0))();

        if (v34 < v33)
        {
          break;
        }

        if (v28 != v39)
        {
          *v27 = *v26;
        }

        v25 = v27 - 1;
        v39 = v26;
        v24 = v5 - 1;
        if (v26 <= v14)
        {
          v39 = v26;
          goto LABEL_38;
        }
      }

      v4 = v27;
      if (v28 != v5)
      {
        *v27 = *v36;
      }

      if (v39 <= v14)
      {
        break;
      }

      --v5;
    }

    while (v36 > v6);
    v5 = v36;
  }

LABEL_38:
  if (v5 != v14 || v5 >= (v14 + ((v39 - v14 + (v39 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v14, 8 * ((v39 - v14) / 8));
  }

  return 1;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch18AudioItemCandidateC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AudioRanker()
{
  result = type metadata singleton initialization cache for AudioRanker;
  if (!type metadata singleton initialization cache for AudioRanker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AudioRanker()
{
  type metadata accessor for Locale?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Locale?()
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t one-time initialization function for PommesMultiClassParserIds()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for PommesMultiClassParserIds);
  result = swift_arrayDestroy();
  static PommesSearchRequest.PommesMultiClassParserIds = v0;
  return result;
}

uint64_t *PommesSearchRequest.PommesMultiClassParserIds.unsafeMutableAddressor()
{
  if (one-time initialization token for PommesMultiClassParserIds != -1)
  {
    swift_once();
  }

  return &static PommesSearchRequest.PommesMultiClassParserIds;
}

uint64_t one-time initialization function for PommesPhaseTwoAllowedDeviceClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOGMR);
  v0 = type metadata accessor for DeviceClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2234D1950;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D61BA8], v0);
  v6(v5 + v2, *MEMORY[0x277D61B98], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D61BB8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D61BB0], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D61BC0], v0);
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11DeviceClassO_Tt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses = v7;
  return result;
}

uint64_t *PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses.unsafeMutableAddressor()
{
  if (one-time initialization token for PommesPhaseTwoAllowedDeviceClasses != -1)
  {
    swift_once();
  }

  return &static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses;
}

uint64_t one-time initialization function for PommesMultiClassAllowedDeviceClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy13SiriUtilities11DeviceClassOGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy13SiriUtilities11DeviceClassOGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF910;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x80000002234D9380;
  if (one-time initialization token for PommesPhaseTwoAllowedDeviceClasses != -1)
  {
    v5 = inited;
    swift_once();
    inited = v5;
  }

  v1 = static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses;
  *(inited + 48) = static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000002234D93B0;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000002234D93D0;
  *(inited + 96) = v1;
  v2 = inited;
  swift_bridgeObjectRetain_n();
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy13SiriUtilities11DeviceClassOGTt0g5Tf4g_n(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_Shy13SiriUtilities11DeviceClassOGtMd, &_sSS_Shy13SiriUtilities11DeviceClassOGtMR);
  result = swift_arrayDestroy();
  static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses = v3;
  return result;
}

uint64_t *PommesSearchRequest.PommesMultiClassAllowedDeviceClasses.unsafeMutableAddressor()
{
  if (one-time initialization token for PommesMultiClassAllowedDeviceClasses != -1)
  {
    swift_once();
  }

  return &static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses;
}

uint64_t static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v328 = a2;
  v336 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v329 = &v323 - v8;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v360 = *(v390 - 8);
  v9 = *(v360 + 64);
  v11 = MEMORY[0x28223BE20](v390, v10);
  v330 = &v323 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v323 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v335 = &v323 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v323 = &v323 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v339 = &v323 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v343 = &v323 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v342 = &v323 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v325 = &v323 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v327 = &v323 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v333 = &v323 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v326 = &v323 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v341 = (&v323 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v323 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v340 = &v323 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v358 = &v323 - v56;
  MEMORY[0x28223BE20](v55, v57);
  v354 = &v323 - v58;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
  v400 = *(v356 - 8);
  v59 = *(v400 + 64);
  v61 = MEMORY[0x28223BE20](v356, v60);
  v344 = &v323 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v323 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v67 = *(*(v66 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v66 - 8, v68);
  v334 = &v323 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v69, v71);
  v337 = &v323 - v73;
  MEMORY[0x28223BE20](v72, v74);
  v370 = &v323 - v75;
  v384 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v338 = *(v384 - 8);
  v76 = *(v338 + 64);
  v78 = MEMORY[0x28223BE20](v384, v77);
  v324 = &v323 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78, v80);
  v369 = &v323 - v81;
  v82 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v372 = *(v82 - 8);
  v83 = *(v372 + 64);
  v85 = MEMORY[0x28223BE20](v82, v84);
  v348 = &v323 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v85, v87);
  v90 = (&v323 - v89);
  MEMORY[0x28223BE20](v88, v91);
  v404 = (&v323 - v92);
  v389 = type metadata accessor for Siri_Nlu_External_Parser();
  isUniquelyReferenced_nonNull_native = *(v389 - 8);
  v94 = *(isUniquelyReferenced_nonNull_native + 64);
  v96 = MEMORY[0x28223BE20](v389, v95);
  v359 = &v323 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96, v98);
  v368 = &v323 - v99;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
  v100 = *(*(v397 - 8) + 64);
  v102 = MEMORY[0x28223BE20](v397, v101);
  v353 = &v323 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102, v104);
  v401 = &v323 - v105;
  v374 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v373 = *(v374 - 8);
  v106 = *(v373 + 64);
  MEMORY[0x28223BE20](v374, v107);
  v391 = &v323 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = type metadata accessor for Siri_Nlu_External_UserParse();
  v109 = *(v375 - 8);
  v110 = v109[8];
  v112 = MEMORY[0x28223BE20](v375, v111);
  v367 = &v323 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112, v114);
  v361 = &v323 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
  v117 = *(*(v116 - 8) + 64);
  v119 = MEMORY[0x28223BE20](v116 - 8, v118);
  v352 = &v323 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119, v121);
  v355 = &v323 - v122;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v123 = type metadata accessor for Logger();
    v124 = __swift_project_value_buffer(v123, static Logger.pommes);

    v376 = v124;
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    v127 = os_log_type_enabled(v125, v126);
    v371 = v65;
    v331 = v16;
    v332 = v50;
    if (v127)
    {
      v128 = swift_slowAlloc();
      *v128 = 134217984;
      *(v128 + 4) = *(a1 + 16);

      _os_log_impl(&dword_2232BB000, v125, v126, "Extract DUDA: considering %ld user parses", v128, 0xCu);
      MEMORY[0x223DE0F80](v128, -1, -1);
    }

    else
    {
    }

    v129 = v374;
    v65 = v373;
    static PommesSearchRequest.getRewriteFromParsers(_:)(a1, v355);
    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v130 = v375;
    v347 = *(a1 + 16);
    if (!v347)
    {
      break;
    }

    v131 = 0;
    v132 = v109[2];
    v109 += 2;
    v378 = v132;
    v346 = a1 + ((*(v109 + 64) + 32) & ~*(v109 + 64));
    v393 = v65 + 16;
    v392 = (v65 + 8);
    v383 = v372 + 104;
    v366 = *MEMORY[0x277D5DA68];
    v388 = (isUniquelyReferenced_nonNull_native + 8);
    v402 = (v372 + 16);
    v382 = *MEMORY[0x277D5DA80];
    v403 = v372 + 8;
    v365 = (v338 + 8);
    v364 = (v360 + 56);
    v363 = (v360 + 48);
    v377 = v109 - 1;
    v351 = (v400 + 48);
    v350 = (v338 + 32);
    v379 = v109;
    v345 = v109[7];
    *(&v133 + 1) = 4;
    v362 = xmmword_2234CF940;
    *&v133 = 136315906;
    v357 = v133;
    isUniquelyReferenced_nonNull_native = v391;
    v134 = v361;
    v386 = v90;
    while (1)
    {
      v349 = v131;
      v378(v134, v346 + v345 * v131, v130);
      v136 = Siri_Nlu_External_Span.matcherNames.getter();
      v137 = v136;
      v395 = *(v136 + 16);
      if (v395)
      {
        break;
      }

LABEL_8:
      v135 = v349 + 1;
      v134 = v361;
      (*v377)(v361, v130);
      v131 = v135;
      if (v135 == v347)
      {
        goto LABEL_55;
      }
    }

    v109 = 0;
    v394 = v136 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v16 = v361;
    v385 = v136;
    while (1)
    {
      if (v109 >= *(v137 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      (*(v65 + 16))(isUniquelyReferenced_nonNull_native, v394 + *(v65 + 72) * v109, v129);
      if (Siri_Nlu_External_UserDialogAct.hasDelegated.getter())
      {
        break;
      }

      (*v392)(isUniquelyReferenced_nonNull_native, v129);
LABEL_12:
      v109 = (v109 + 1);
      if (v109 == v395)
      {

        v130 = v375;
        goto LABEL_8;
      }
    }

    v396 = v109;
    v399 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMR);
    v138 = v372;
    v139 = *(v372 + 72);
    v140 = (*(v372 + 80) + 32) & ~*(v372 + 80);
    v141 = swift_allocObject();
    *(v141 + 16) = v362;
    v142 = *(v138 + 104);
    v142((v141 + v140), v366, v82);
    v142((v141 + v140 + v139), v382, v82);
    v143 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(v141);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v144 = *(v397 + 48);
    v145 = v401;
    Siri_Nlu_External_UserDialogAct.delegated.getter();
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v3 = v146;
    *(v145 + v144) = v146;
    v147 = v368;
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    v387 = *v388;
    v387(v147, v389);
    v148 = *(v143 + 16);
    v381 = v142;
    if (v148 && (v149 = *(v143 + 40), lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier), v150 = dispatch thunk of Hashable._rawHashValue(seed:)(), v151 = -1 << *(v143 + 32), v152 = v150 & ~v151, ((*(v143 + 56 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) != 0))
    {
      v153 = ~v151;
      v154 = *v402;
      do
      {
        v154(v90, *(v143 + 48) + v152 * v139, v82);
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
        v155 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v403)(v90, v82);
        if (v155)
        {
          break;
        }

        v152 = (v152 + 1) & v153;
      }

      while (((*(v143 + 56 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) != 0);
    }

    else
    {
      v155 = 0;
    }

    v156 = *(v397 + 64);
    v380 = *v403;
    v380(v404, v82);
    *(v401 + v156) = v155 & 1;
    v157 = v369;
    isUniquelyReferenced_nonNull_native = v391;
    Siri_Nlu_External_UserDialogAct.delegated.getter();
    v158 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
    v160 = v159;
    (*v365)(v157, v384);
    v50 = v399;
    v161 = *(v399 + 16);
    v400 = v160;
    if (v161)
    {
      v162 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v160);
      v163 = v370;
      if (v164)
      {
        outlined init with copy of MediaUserStateCenter?(*(v50 + 56) + *(v360 + 72) * v162, v370, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v165 = 0;
      }

      else
      {
        v165 = 1;
      }
    }

    else
    {
      v165 = 1;
      v163 = v370;
    }

    v398 = v158;
    v166 = v390;
    (*v364)(v163, v165, 1, v390);
    v167 = -1.0;
    if (!(*v363)(v163, 1, v166))
    {
      v167 = *(v163 + *(v390 + 48));
    }

    outlined destroy of MediaUserStateCenter?(v163, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v168 = v367;
    v169 = v375;
    v378(v367, v16, v375);
    v170 = v400;

    v171 = v170;
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v405[0] = v175;
      *v174 = v357;
      v176 = v359;
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v387(v176, v389);
      v16 = v361;
      v177 = String.init<A>(describing:)();
      v179 = v178;
      (*v377)(v168, v169);
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v179, v405);
      v50 = v399;

      *(v174 + 4) = v180;
      v171 = v400;
      *(v174 + 12) = 2080;
      v181 = v398;
      *(v174 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v398, v171, v405);
      *(v174 + 22) = 2048;
      *(v174 + 24) = v3;
      *(v174 + 32) = 2048;
      *(v174 + 34) = v167;
      _os_log_impl(&dword_2232BB000, v172, v173, "Extract DUDA: considering %s %s, comparing score %f > %f", v174, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v175, -1, -1);
      v182 = v174;
      isUniquelyReferenced_nonNull_native = v391;
      MEMORY[0x223DE0F80](v182, -1, -1);

      v183 = v371;
    }

    else
    {

      (*v377)(v168, v169);
      v183 = v371;
      v181 = v398;
    }

    v184 = specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(v181, v171);
    v90 = v386;
    v137 = v385;
    v109 = v396;
    if ((v184 & 1) == 0 || v167 >= v3)
    {
      v129 = v374;
      (*v392)(isUniquelyReferenced_nonNull_native, v374);

      outlined destroy of MediaUserStateCenter?(v401, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
      v65 = v373;
      goto LABEL_12;
    }

    v185 = v352;
    v186 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR;
    outlined init with copy of MediaUserStateCenter?(v355, v352, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
    v187 = (*v351)(v185, 1, v356) == 1;
    v188 = v185;
    if (v187)
    {
      v189 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd;
    }

    else
    {
      v186 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR;
      outlined init with take of PommesSearchReason?(v185, v183, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
      v190 = v359;
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v387(v190, v389);
      v191 = v348;
      v381(v348, v382, v82);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v192 = v380;
      v380(v191, v82);
      v192(v90, v82);
      if (v405[0] == v405[3])
      {
        v193 = v344;
        outlined init with copy of MediaUserStateCenter?(v183, v344, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
        v194 = v356;
        v195 = *(v356 + 48);
        swift_beginAccess();
        Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.setter();
        v196 = type metadata accessor for Siri_Nlu_External_RewriteMessage();
        (*(*(v196 - 8) + 8))(v193 + v195, v196);
        v186 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR;
        outlined init with copy of MediaUserStateCenter?(v183, v193, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
        v197 = *(v194 + 48);
        Siri_Nlu_External_DelegatedUserDialogAct.rewrite.setter();
        swift_endAccess();
        v198 = type metadata accessor for Google_Protobuf_StringValue();
        (*(*(v198 - 8) + 8))(v193, v198);
        v199 = Logger.logObject.getter();
        v200 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          *v201 = 0;
          _os_log_impl(&dword_2232BB000, v199, v200, "Extract DUDA: patching rewrite for overrides", v201, 2u);
          MEMORY[0x223DE0F80](v201, -1, -1);
        }

        v188 = v183;
        v189 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd;
      }

      else
      {
        v188 = v183;
        v189 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd;
      }
    }

    outlined destroy of MediaUserStateCenter?(v188, v189, v186);
    v202 = v401;
    swift_beginAccess();
    v65 = v353;
    outlined init with copy of MediaUserStateCenter?(v202, v353, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
    v3 = *(v65 + *(v397 + 48));
    LOBYTE(v202) = *(v65 + *(v397 + 64));
    a1 = *(v390 + 48);
    v203 = *(v390 + 64);
    v204 = v354;
    (*v350)(v354, v65, v384);
    *(v204 + a1) = v3;
    *(v204 + v203) = v202;
    outlined init with take of PommesSearchReason?(v204, v358, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v405[0] = v50;
    v205 = specialized __RawDictionaryStorage.find<A>(_:)(v398, v400);
    v207 = *(v50 + 16);
    v208 = (v206 & 1) == 0;
    v209 = __OFADD__(v207, v208);
    v210 = v207 + v208;
    v109 = v396;
    if (!v209)
    {
      a1 = v206;
      if (*(v50 + 24) >= v210)
      {
        v129 = v374;
        v65 = v373;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v216 = v205;
          specialized _NativeDictionary.copy()();
          v205 = v216;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v210, isUniquelyReferenced_nonNull_native);
        v205 = specialized __RawDictionaryStorage.find<A>(_:)(v398, v400);
        v129 = v374;
        v65 = v373;
        if ((a1 & 1) != (v211 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v391;
      v212 = v400;
      v50 = v405[0];
      if (a1)
      {
        outlined assign with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v358, *(v405[0] + 56) + *(v360 + 72) * v205);
      }

      else
      {
        *(v405[0] + 8 * (v205 >> 6) + 64) |= 1 << v205;
        v213 = (*(v50 + 48) + 16 * v205);
        *v213 = v398;
        v213[1] = v212;
        outlined init with take of PommesSearchReason?(v358, *(v50 + 56) + *(v360 + 72) * v205, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v214 = *(v50 + 16);
        v209 = __OFADD__(v214, 1);
        v215 = v214 + 1;
        if (v209)
        {
          goto LABEL_136;
        }

        *(v50 + 16) = v215;
      }

      (*v392)(isUniquelyReferenced_nonNull_native, v129);
      outlined destroy of MediaUserStateCenter?(v401, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
      v137 = v385;
      goto LABEL_12;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    swift_once();
  }

LABEL_55:
  isUniquelyReferenced_nonNull_native = v50 + 64;
  v217 = 1 << *(v50 + 32);
  v218 = -1;
  if (v217 < 64)
  {
    v218 = ~(-1 << v217);
  }

  v219 = v218 & *(v50 + 64);
  v16 = (v217 + 63) >> 6;
  v404 = (v338 + 8);
  v399 = v50;

  v50 = 0;
  v403 = MEMORY[0x277D84F90];
  a1 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd;
  v90 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR;
  while (1)
  {
    v220 = v50;
    if (!v219)
    {
      break;
    }

    v82 = v340;
LABEL_64:
    v221 = __clz(__rbit64(v219));
    v219 &= v219 - 1;
    v65 = *(v360 + 72);
    outlined init with copy of MediaUserStateCenter?(*(v399 + 56) + v65 * (v221 | (v50 << 6)), v82, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v109 = v341;
    outlined init with copy of MediaUserStateCenter?(v82, v341, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v222 = *(v109 + *(v390 + 64));
    (*v404)(v109, v384);
    if (v222 == 1)
    {
      outlined init with take of PommesSearchReason?(v82, v326, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v223 = v403;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v405[0] = v223;
      if ((v224 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v223 + 16) + 1, 1);
        v223 = v405[0];
      }

      v109 = *(v223 + 16);
      v225 = *(v223 + 24);
      v226 = v109 + 1;
      if (v109 >= v225 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v225 > 1, v109 + 1, 1);
        v226 = v109 + 1;
        v223 = v405[0];
      }

      *(v223 + 16) = v226;
      v227 = *(v360 + 80);
      v403 = v223;
      outlined init with take of PommesSearchReason?(v326, v223 + ((v227 + 32) & ~v227) + v109 * v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(v82, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    }
  }

  v82 = v340;
  while (1)
  {
    v50 = v220 + 1;
    if (__OFADD__(v220, 1))
    {
      goto LABEL_134;
    }

    if (v50 >= v16)
    {
      break;
    }

    v219 = *(isUniquelyReferenced_nonNull_native + 8 * v50);
    ++v220;
    if (v219)
    {
      goto LABEL_64;
    }
  }

  v50 = v399;

  v109 = *(v403 + 16);
  if (v109)
  {
    v228 = *(v390 + 48);
    v229 = v403 + ((*(v360 + 80) + 32) & ~*(v360 + 80));
    v230 = *(v360 + 72);
    v3 = 0.0;
    v231 = v332;
    do
    {
      outlined init with copy of MediaUserStateCenter?(v229, v231, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v232 = *(v231 + v228);
      outlined destroy of MediaUserStateCenter?(v231, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v3 = v3 + v232;
      v229 += v230;
      v109 = (v109 - 1);
    }

    while (v109);
  }

  else
  {

    v3 = 0.0;
  }

  v82 = Logger.logObject.getter();
  v233 = static os_log_type_t.debug.getter();
  v234 = os_log_type_enabled(v82, v233);
  v235 = v341;
  if (v234)
  {
    v236 = swift_slowAlloc();
    *v236 = 134217984;
    *(v236 + 4) = v3;
    _os_log_impl(&dword_2232BB000, v82, v233, "Extract DUDA: synthesized combined POMMES parse score is %f", v236, 0xCu);
    MEMORY[0x223DE0F80](v236, -1, -1);
  }

  v403 = 0x80000002234D9360;
  if (!*(v50 + 16) || (v237 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, v403), (v238 & 1) == 0))
  {
LABEL_87:
    v258 = 1 << *(v50 + 32);
    v259 = -1;
    if (v258 < 64)
    {
      v259 = ~(-1 << v258);
    }

    v50 = v259 & *(v50 + 64);
    v65 = (v258 + 63) >> 6;

    v260 = 0;
    a1 = MEMORY[0x277D84F90];
    v90 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd;
    v16 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR;
LABEL_90:
    v402 = a1;
    while (v50)
    {
LABEL_98:
      v263 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v82 = *(v360 + 72);
      v264 = v342;
      outlined init with copy of MediaUserStateCenter?(*(v399 + 56) + v82 * (v263 | (v260 << 6)), v342, v90, v16);
      v265 = v264;
      v266 = v339;
      v109 = v90;
      v267 = v16;
      outlined init with copy of MediaUserStateCenter?(v265, v339, v90, v16);
      v268 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
      v270 = v269;
      (*v404)(v266, v384);
      if (v268 == 0xD000000000000010 && v403 == v270)
      {
      }

      else
      {
        v261 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v261 & 1) == 0)
        {
          v90 = v109;
          outlined init with take of PommesSearchReason?(v342, v323, v109, v267);
          v271 = v402;
          v272 = swift_isUniquelyReferenced_nonNull_native();
          v405[0] = v271;
          if ((v272 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v271 + 16) + 1, 1);
            v271 = v405[0];
          }

          v274 = *(v271 + 16);
          v273 = *(v271 + 24);
          v109 = (v274 + 1);
          if (v274 >= v273 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v273 > 1, v274 + 1, 1);
            v271 = v405[0];
          }

          *(v271 + 16) = v109;
          v275 = v271 + ((*(v360 + 80) + 32) & ~*(v360 + 80)) + v274 * v82;
          v16 = v267;
          outlined init with take of PommesSearchReason?(v323, v275, v90, v267);
          a1 = v271;
          goto LABEL_90;
        }
      }

      v90 = v109;
      v16 = v267;
      outlined destroy of MediaUserStateCenter?(v342, v109, v267);
      a1 = v402;
    }

    while (1)
    {
      v262 = v260 + 1;
      if (__OFADD__(v260, 1))
      {
        goto LABEL_135;
      }

      if (v262 >= v65)
      {
        break;
      }

      v50 = *(isUniquelyReferenced_nonNull_native + 8 * v262);
      ++v260;
      if (v50)
      {
        v260 = v262;
        goto LABEL_98;
      }
    }

    v276 = v399;

    v109 = *(a1 + 16);
    if (v109)
    {
      isUniquelyReferenced_nonNull_native = v276;
      v82 = a1 + ((*(v360 + 80) + 32) & ~*(v360 + 80));
      outlined init with copy of MediaUserStateCenter?(v82, v343, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v277 = v341;
      v65 = v331;
      if (v109 != 1)
      {
        v16 = 1;
        v90 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR;
        v50 = v343;
        while (v16 < *(a1 + 16))
        {
          outlined init with copy of MediaUserStateCenter?(v82 + *(v360 + 72) * v16, v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
          if (*(v50 + *(v390 + 48)) >= *(v65 + *(v390 + 48)))
          {
            outlined destroy of MediaUserStateCenter?(v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
          }

          else
          {
            outlined destroy of MediaUserStateCenter?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
            outlined init with take of PommesSearchReason?(v65, v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
          }

          if (v109 == ++v16)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_137;
      }

LABEL_108:

      v278 = v337;
      outlined init with take of PommesSearchReason?(v343, v337, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v279 = 0;
    }

    else
    {

      v279 = 1;
      v277 = v341;
      v278 = v337;
    }

    v280 = v360;
    v282 = v360 + 56;
    v281 = *(v360 + 56);
    v283 = v390;
    v281(v278, v279, 1, v390);
    v284 = v334;
    outlined init with copy of MediaUserStateCenter?(v278, v334, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    if ((*(v280 + 48))(v284, 1, v283) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v284, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v285 = v329;
      outlined init with copy of MediaUserStateCenter?(v328, v329, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      v286 = v338;
      v287 = v384;
      if ((*(v338 + 48))(v285, 1, v384) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v285, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      }

      else
      {
        v302 = v324;
        (*(v286 + 32))(v324, v285, v287);
        if (specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(0xD000000000000018, 0x80000002234D93B0))
        {
          v303 = Logger.logObject.getter();
          v304 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v303, v304))
          {
            v305 = swift_slowAlloc();
            *v305 = 0;
            _os_log_impl(&dword_2232BB000, v303, v304, "Convert general fallback parse to PSC DUDA.", v305, 2u);
            MEMORY[0x223DE0F80](v305, -1, -1);
          }

          v306 = v390;
          v307 = *(v390 + 48);
          v308 = *(v390 + 64);
          v309 = v338 + 16;
          v310 = v336;
          v311 = v384;
          (*(v338 + 16))(v336, v302, v384);
          Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
          (*(v309 - 8))(v302, v311);
          outlined destroy of MediaUserStateCenter?(v337, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
          outlined destroy of MediaUserStateCenter?(v355, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
          *(v310 + v307) = 0;
          *(v310 + v308) = 0;
          v281(v310, 0, 1, v306);
        }

        (*v404)(v302, v287);
      }

      v319 = Logger.logObject.getter();
      v320 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v319, v320))
      {
        v321 = swift_slowAlloc();
        *v321 = 0;
        _os_log_impl(&dword_2232BB000, v319, v320, "Extract DUDA: no parse meets criteria; returning nil", v321, 2u);
        MEMORY[0x223DE0F80](v321, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v278, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      outlined destroy of MediaUserStateCenter?(v355, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
      v316 = v336;
      v317 = 1;
      v318 = v390;
    }

    else
    {
      v288 = v284;
      v289 = v335;
      outlined init with take of PommesSearchReason?(v288, v335, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v290 = v289;
      v291 = v330;
      outlined init with copy of MediaUserStateCenter?(v290, v330, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v292 = Logger.logObject.getter();
      v293 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        v403 = v282;
        v295 = v294;
        v296 = swift_slowAlloc();
        v405[0] = v296;
        *v295 = 136315138;
        outlined init with copy of MediaUserStateCenter?(v291, v277, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v297 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
        v299 = v298;
        v300 = v384;
        outlined destroy of MediaUserStateCenter?(v291, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        (*v404)(v341, v300);
        v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v299, v405);
        v277 = v341;

        *(v295 + 4) = v301;
        _os_log_impl(&dword_2232BB000, v292, v293, "Extract DUDA: combined parse class is usable; returning with %s", v295, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v296);
        MEMORY[0x223DE0F80](v296, -1, -1);
        MEMORY[0x223DE0F80](v295, -1, -1);

        outlined destroy of MediaUserStateCenter?(v337, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
        outlined destroy of MediaUserStateCenter?(v355, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
      }

      else
      {

        outlined destroy of MediaUserStateCenter?(v291, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        outlined destroy of MediaUserStateCenter?(v278, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
        outlined destroy of MediaUserStateCenter?(v355, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
        v300 = v384;
      }

      v312 = v390;
      v313 = *(v390 + 48);
      v314 = *(v390 + 64);
      outlined init with take of PommesSearchReason?(v335, v277, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v315 = v336;
      (*(v338 + 32))(v336, v277, v300);
      *(v315 + v313) = v3;
      *(v315 + v314) = 0;
      v316 = v315;
      v317 = 0;
      v318 = v312;
    }

    v281(v316, v317, 1, v318);
  }

  v239 = v327;
  outlined init with copy of MediaUserStateCenter?(*(v50 + 56) + *(v360 + 72) * v237, v327, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v240 = v239;
  v82 = v333;
  outlined init with take of PommesSearchReason?(v240, v333, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v241 = *(v82 + *(v390 + 48));
  specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
  if (v242 > v241)
  {
    specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
    if (v3 >= v243)
    {
LABEL_86:
      outlined destroy of MediaUserStateCenter?(v333, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      goto LABEL_87;
    }
  }

  v244 = Logger.logObject.getter();
  v245 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v405[0] = v247;
    *v246 = 136315138;
    *(v246 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v403, v405);
    _os_log_impl(&dword_2232BB000, v244, v245, "Extract DUDA: primary parse class is usable alone, or combined parse is not usable; returning with %s", v246, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v247);
    MEMORY[0x223DE0F80](v247, -1, -1);
    MEMORY[0x223DE0F80](v246, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v355, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
  v248 = v384;
  v249 = v390;
  v250 = *(v390 + 48);
  v251 = *(v390 + 64);
  v252 = v333;
  outlined init with copy of MediaUserStateCenter?(v333, v235, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v253 = v235;
  v254 = v338 + 32;
  v255 = v336;
  (*(v338 + 32))(v336, v253, v248);
  v256 = v252;
  v257 = v325;
  outlined init with take of PommesSearchReason?(v256, v325, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  *(v255 + v250) = *(v257 + *(v249 + 48));
  *(v255 + v251) = 0;
  (*(v360 + 56))(v255, 0, 1, v249);
  (*(v254 - 24))(v257, v248);
}

uint64_t static PommesSearchRequest.getRewriteFromParsers(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v37 = &v34 - v7;
  v44 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v38 = a2;
  v35 = v21;
  v36 = v19;
  v34 = v20 + 56;
  result = (v21)(a2, 1, 1);
  v41 = *(a1 + 16);
  if (v41)
  {
    v23 = 0;
    v24 = *(type metadata accessor for Siri_Nlu_External_UserParse() - 8);
    v40 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v45 = v14 + 16;
    v25 = (v14 + 8);
    v43 = (v8 + 8);
    v39 = *(v24 + 72);
    while (1)
    {
      result = Siri_Nlu_External_Span.matcherNames.getter();
      v26 = result;
      v27 = *(result + 16);
      if (v27)
      {
        break;
      }

LABEL_4:
      if (++v23 == v41)
      {
        return result;
      }
    }

    v42 = v23;
    v28 = 0;
    v29 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    while (v28 < *(v26 + 16))
    {
      (*(v14 + 16))(v18, v29 + *(v14 + 72) * v28, v13);
      if (Siri_Nlu_External_UserDialogAct.hasDelegated.getter())
      {
        Siri_Nlu_External_UserDialogAct.delegated.getter();
        if (Siri_Nlu_External_DelegatedUserDialogAct.hasRewrite.getter())
        {

          v31 = v36;
          v30 = v37;
          v32 = *(v36 + 48);
          Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.getter();
          Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
          (*v43)(v12, v44);
          (*v25)(v18, v13);
          v33 = v38;
          outlined destroy of MediaUserStateCenter?(v38, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
          v35(v30, 0, 1, v31);
          result = outlined init with take of PommesSearchReason?(v30, v33, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
          goto LABEL_14;
        }

        (*v43)(v12, v44);
      }

      ++v28;
      result = (*v25)(v18, v13);
      if (v27 == v28)
      {

LABEL_14:
        v23 = v42;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static PommesSearchRequest.convertToPommesDelegatedUDA(fallbackParse:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
  return 0;
}

BOOL static PommesSearchRequest.shouldSearchToolFederateToPegasus(userParses:fallbackParse:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v51 = &v47 - v11;
  v50 = type metadata accessor for Siri_Nlu_External_Parser();
  v12 = *(v50 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v50, v14);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v47 - v29;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a1, a2, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v24, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v31 = *(a1 + 16);
    if (v31)
    {
      v32 = (v12 + 8);
      v48 = *MEMORY[0x277D5DA68];
      v33 = (v5 + 104);
      v34 = (v5 + 8);
      v35 = *(type metadata accessor for Siri_Nlu_External_UserParse() - 8);
      v36 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v47 = *(v35 + 72);
      while (1)
      {
        v37 = v49;
        Siri_Nlu_External_UserParse.parser.getter();
        v38 = v51;
        Siri_Nlu_External_Parser.parserID.getter();
        (*v32)(v37, v50);
        v39 = v52;
        (*v33)(v52, v48, v4);
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *v34;
        (*v34)(v39, v4);
        v41(v38, v4);
        if ((v40 & 1) == 0)
        {
          Siri_Nlu_External_UserParse.comparableProbability.getter();
          if (v42 > 0.05)
          {
            break;
          }
        }

        v36 += v47;
        if (!--v31)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    outlined init with take of PommesSearchReason?(v24, v30, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    outlined init with copy of MediaUserStateCenter?(v30, v21, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    (*(v26 + 56))(v21, 0, 1, v25);
    v44 = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v21, 0);
    outlined destroy of MediaUserStateCenter?(v21, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
    v46 = v45;
    outlined destroy of MediaUserStateCenter?(v30, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    return v46 <= v44;
  }
}

void specialized static PommesSearchRequest.pommesDUDAThreshold.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = MEMORY[0x223DDF550](0x685473656D6D6F70, 0xEF646C6F68736572);
    [v2 doubleForKey_];
  }
}

uint64_t specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26[-1] - v7;
  v9 = type metadata accessor for DeviceClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for PommesMultiClassParserIds != -1)
  {
    swift_once();
  }

  if (specialized Set.contains(_:)(a1, a2, static PommesSearchRequest.PommesMultiClassParserIds))
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceClass.getter();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v8, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
LABEL_14:
      v15 = 1;
      return v15 & 1;
    }

    (*(v10 + 32))(v14, v8, v9);
    if (one-time initialization token for PommesMultiClassAllowedDeviceClasses != -1)
    {
      swift_once();
    }

    v16 = static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses;
    if (!*(static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v18 & 1) == 0))
    {
      (*(v10 + 8))(v14, v9);
      goto LABEL_14;
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = objc_opt_self();

    v21 = [v20 processInfo];
    v22 = NSProcessInfo.isRunningUnitTests.getter();

    if (v22)
    {
      v15 = specialized Set.contains(_:)(v14, v19);

      (*(v10 + 8))(v14, v9);
    }

    else
    {

      v26[3] = &type metadata for FeatureFlag;
      v26[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v24 = swift_allocObject();
      v26[0] = v24;
      *(v24 + 16) = 5;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0;
      *(v24 + 48) = 3;
      v15 = isFeatureEnabled(_:)();
      (*(v10 + 8))(v14, v9);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t outlined assign with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v69 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v69 - v26;
  if (a2)
  {
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
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v29, v30, "POMMES request is for fallback. Forcing effective PSC score to 1.0.", v31, 2u);
      MEMORY[0x223DE0F80](v31, -1, -1);
    }

    return 1.0;
  }

  outlined init with copy of MediaUserStateCenter?(a1, v13, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.pommes);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2232BB000, v34, v35, "No delegated UDA found. Setting effective PSC score to 0.0.", v36, 2u);
      MEMORY[0x223DE0F80](v36, -1, -1);
    }

    goto LABEL_13;
  }

  outlined init with take of PommesSearchReason?(v13, v27, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  outlined init with copy of MediaUserStateCenter?(v27, v24, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v37 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v39 = v38;
  v40 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v41 = *(*(v40 - 8) + 8);
  v41(v24, v40);
  LOBYTE(v37) = specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(v37, v39);

  if (v37)
  {
    outlined init with take of PommesSearchReason?(v27, v24, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v32 = *&v24[*(v14 + 48)];
    v41(v24, v40);
    goto LABEL_16;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.pommes);
  outlined init with copy of MediaUserStateCenter?(v27, v20, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v70 = v54;
    v71 = v53;
    v55 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v72 = v69;
    *v55 = 136315394;
    outlined init with copy of MediaUserStateCenter?(v20, v24, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v56 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
    v58 = v57;
    outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v41(v24, v40);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v72);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceClass.getter();

    v60 = type metadata accessor for DeviceClass();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v8, 1, v60) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v8, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    }

    else
    {
      v62 = DeviceClass.stringValue()();
      object = v62.value._object;
      (*(v61 + 8))(v8, v60);
      if (v62.value._object)
      {
        countAndFlagsBits = v62.value._countAndFlagsBits;
LABEL_33:
        v65 = v70;
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v72);

        *(v55 + 14) = v66;
        v67 = v71;
        _os_log_impl(&dword_2232BB000, v71, v65, "externalParseID: %s is unsupported in current DeviceClass %s. Setting effective PSC score to 0.0.", v55, 0x16u);
        v68 = v69;
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v68, -1, -1);
        MEMORY[0x223DE0F80](v55, -1, -1);

        outlined destroy of MediaUserStateCenter?(v27, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        goto LABEL_13;
      }
    }

    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
    goto LABEL_33;
  }

  outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  outlined destroy of MediaUserStateCenter?(v27, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
LABEL_13:
  v32 = 0.0;
LABEL_16:
  v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v43 = MEMORY[0x223DDF550](0xD000000000000012, 0x80000002234DE540);
  v44 = [v42 initWithSuiteName_];

  if (v44)
  {
    v45 = MEMORY[0x223DDF550](0x7265766F20435350, 0xEC00000065646972);
    v46 = [v44 stringForKey_];

    if (v46)
    {

      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.overrides);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = v32;
        _os_log_impl(&dword_2232BB000, v48, v49, "WARNING: POMMES override enabled in CDM for PSC score. This may lead to unintended user-facing behavior. Effective PSC score: %f", v50, 0xCu);
        MEMORY[0x223DE0F80](v50, -1, -1);
      }
    }
  }

  return v32;
}

uint64_t SearchToolPegasusProxy.lastGroundedUserId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchToolPegasusProxy.lastGroundedUserId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path setter for SearchToolPegasusProxy.client : <A>SearchToolPegasusProxy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(*(a3 + a4 - 16) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 256))(v7);
}

uint64_t SearchToolPegasusProxy.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  return (*(*(*(v3 + 128) - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchToolPegasusProxy.client.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  (*(*(*(v3 + 128) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*SearchToolPegasusProxy.client.modify())()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return AmpDataProvider.cachedMediaUserStates.modify;
}

uint64_t SearchToolPegasusProxy.persistentPegasusConversationContext.getter()
{
  v1 = v0 + *(*v0 + 184);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t SearchToolPegasusProxy.persistentPegasusConversationContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 184));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

uint64_t (*SearchToolPegasusProxy.persistentPegasusConversationContext.modify())()
{
  v1 = *(*v0 + 184);
  swift_beginAccess();
  return PommesSearch.serverFallbackPreferences.modify;
}

void *SearchToolPegasusProxy.location.getter()
{
  v1 = *(*v0 + 200);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SearchToolPegasusProxy.location.setter(uint64_t a1)
{
  v3 = *(*v1 + 200);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*SearchToolPegasusProxy.location.modify())()
{
  v1 = *(*v0 + 200);
  swift_beginAccess();
  return AmpDataProvider.cachedMediaUserStates.modify;
}

uint64_t SearchToolPegasusProxy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 216);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchToolPegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

char *SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v94 = a6;
  v95 = a7;
  v93 = a5;
  v96 = a3;
  v11 = *v7;
  v91 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v89 = *(v91 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v91, v13);
  v90 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS.QoSClass();
  v92 = *(v88 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x28223BE20](v88, v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *&v7[*(v11 + 184)] = xmmword_2234CF930;
  *&v7[*(*v7 + 200)] = 0;
  v25 = *(v11 + 128);
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v7[*(*v7 + 152)], a1, v25);
  *&v7[*(*v7 + 160)] = a2;
  *&v7[*(*v7 + 168)] = v96;
  if (a4)
  {
    (*(v26 + 8))(a1, v25);
LABEL_5:
    *&v7[*(*v7 + 176)] = a4;
    outlined init with take of DomainWarmupHandling(v93, &v7[*(*v7 + 192)]);
    *&v7[*(*v7 + 208)] = v94;
    v70 = *(*v7 + 216);
    v71 = type metadata accessor for Logger();
    (*(*(v71 - 8) + 32))(&v7[v70], v95, v71);
    return v7;
  }

  v75 = v18;
  v27 = v92;
  v79 = v26;
  v80 = v25;
  v81 = a1;
  v82 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v78 = a2;

  v76 = specialized AnyDataProvider.init<A>(provider:)(v28);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v100, v98, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v29 = swift_allocObject();
  *(v29 + 32) = 0u;
  *(v29 + 16) = 0u;
  v30 = MEMORY[0x277D84F90];
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v98, v29 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v77 = specialized AnyDataProvider.init<A>(provider:)(v29);
  outlined destroy of MediaUserStateCenter?(&v100, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v32 = result;
    v33 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v34 = specialized AudioQueueStateManager.init(queueStateObserver:)(v32, v33);
    type metadata accessor for AudioQueueStateDataProvider();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v87 = specialized AnyDataProvider.init<A>(provider:)(v35);
    v86 = default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)();
    type metadata accessor for AppDataProvider();
    v36 = swift_allocObject();
    *(&v101 + 1) = &type metadata for PommesSystemAppChecking;
    v102 = &protocol witness table for PommesSystemAppChecking;
    *(v36 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v100, v36 + 16);
    v37 = objc_opt_self();
    v38 = [v37 sharedPreferences];
    v85 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v36, v38);

    v39 = type metadata accessor for MarketplaceInfoDataProvider();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v44 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v74 = specialized AnyDataProvider.init<A>(provider:)(v42);
    type metadata accessor for PairedDeviceDataProvider();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v72 = specialized AnyDataProvider.init<A>(provider:)(v45);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v100, v98, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v46 = type metadata accessor for GMAvailabilityPolicyDataProvider();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v73 = specialized AnyDataProvider.init<A>(provider:)(v49);
    outlined destroy of MediaUserStateCenter?(&v100, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v50 = type metadata accessor for CarPlaySessionDataProvider();
    v51 = objc_allocWithZone(v50);
    v52 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v51[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v51[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v51[v52] = 0;
    v97.receiver = v51;
    v97.super_class = v50;
    v53 = objc_msgSendSuper2(&v97, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v84 = specialized AnyDataProvider.init<A>(provider:)(v53);
    v54 = [v37 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v83 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    a4 = swift_allocObject();
    *(&v101 + 1) = &type metadata for PommesSystemAppChecking;
    v102 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v55 = v27;
    v56 = *(v27 + 104);
    v57 = v75;
    v58 = v88;
    v56(v75, *MEMORY[0x277D851C8], v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v55 + 8))(v57, v58);
    (*(v89 + 104))(v90, *MEMORY[0x277D85260], v91);
    v59 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(a4 + 128) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    v60 = v77;
    *(a4 + 16) = v59;
    *(a4 + 24) = v60;
    v61 = v86;
    *(a4 + 32) = v87;
    *(a4 + 40) = v61;
    v62 = v76;
    *(a4 + 48) = v85;
    *(a4 + 56) = v62;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v98, 0, sizeof(v98));
    v99 = 0;
    v63 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = v63;

    v65 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v98, v64, 0);

    outlined destroy of MediaUserStateCenter?(v98, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v66 = v74;
    *(a4 + 64) = v65;
    *(a4 + 72) = v66;
    *(a4 + 80) = v72;
    *(a4 + 96) = v84;
    *(a4 + 104) = 0;
    *(a4 + 112) = v83;
    *(a4 + 120) = v54;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;

    v67 = v54;
    outlined init with copy of AppDataProviding(&v100, v98);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v98, a4 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(a4 + 88) = v73;
    v68 = *(**(a4 + 40) + 160);

    v68(1);

    v69 = *(**(a4 + 48) + 160);

    v69(1);

    (*(**(a4 + 56) + 160))(1);

    (*(v79 + 8))(v81, v80);
    __swift_destroy_boxed_opaque_existential_1(&v100);
    v7 = v82;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SearchToolPegasusProxy.prepareForSearchAtRequestStart(requestId:location:)(Swift::String requestId, CLLocation_optional location)
{
  isa = location.value.super.isa;
  v4 = *(*v2 + 304);
  v5 = location.value.super.isa;
  v4(isa);
  if (isa)
  {
    v6 = *(*v2 + 216);
    v13 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      [(objc_class *)v13 coordinate];
      *(v9 + 4) = v10;
      *(v9 + 12) = 2048;
      [(objc_class *)v13 coordinate];
      *(v9 + 14) = v11;
      _os_log_impl(&dword_2232BB000, v7, v8, "Received location: (%f, %f) from search tool", v9, 0x16u);
      MEMORY[0x223DE0F80](v9, -1, -1);
      v12 = v7;
    }

    else
    {
      v12 = v13;
      v13 = v7;
    }
  }
}

Swift::Void __swiftcall SearchToolPegasusProxy.tearDown()()
{
  (*(**(v0 + *(*v0 + 176)) + 328))();
  v1 = *(*v0 + 280);

  v1(0, 0xF000000000000000);
}

void SearchToolPegasusProxy.init()()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);
  specialized SearchToolPegasusProxy.init()();
}

uint64_t SearchToolPegasusProxy.__ivar_destroyer()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 128) - 8) + 8))(&v0[*(*v0 + 152)]);
  v3 = *&v0[*(*v0 + 160)];

  v4 = *&v0[*(*v0 + 168)];

  v5 = *&v0[*(*v0 + 176)];

  outlined consume of Data?(*&v0[*(*v0 + 184)], *&v0[*(*v0 + 184) + 8]);
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 192)]);

  v6 = *&v0[*(*v0 + 208)];

  v7 = *(*v0 + 216);
  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 8);

  return v9(&v0[v7], v8);
}

char *SearchToolPegasusProxy.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 128) - 8) + 8))(&v0[*(*v0 + 152)]);
  v3 = *&v0[*(*v0 + 160)];

  v4 = *&v0[*(*v0 + 168)];

  v5 = *&v0[*(*v0 + 176)];

  outlined consume of Data?(*&v0[*(*v0 + 184)], *&v0[*(*v0 + 184) + 8]);
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 192)]);

  v6 = *&v0[*(*v0 + 208)];

  v7 = *(*v0 + 216);
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t SearchToolPegasusProxy.__deallocating_deinit()
{
  SearchToolPegasusProxy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v97 = a7;
  v96 = a6;
  v99 = a5;
  v98 = a10;
  v95 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v93 = *(v95 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x28223BE20](v95, v16);
  v94 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v92 = *(v18 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v26 = type metadata accessor for DispatchQoS();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a9;
  v108 = v98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, v99, a9);
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 64) = xmmword_2234CF930;
  *(a8 + 120) = 0;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  v32 = a2;
  v33 = a8;
  v99 = a3;
  *(a8 + 48) = a3;
  if (a4)
  {
    goto LABEL_4;
  }

  v81 = v30;
  v83 = v22;
  v84 = v18;
  v85 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();

  v87 = v32;

  v86 = specialized AnyDataProvider.init<A>(provider:)(v34);
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v103, v101, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v35 = swift_allocObject();
  *(v35 + 32) = 0u;
  *(v35 + 16) = 0u;
  v36 = MEMORY[0x277D84F90];
  *(v35 + 48) = 0;
  *(v35 + 56) = v36;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v101, v35 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v82 = specialized AnyDataProvider.init<A>(provider:)(v35);
  outlined destroy of MediaUserStateCenter?(&v103, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v38 = result;

    v39 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v40 = specialized AudioQueueStateManager.init(queueStateObserver:)(v38, v39);
    type metadata accessor for AudioQueueStateDataProvider();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v98 = specialized AnyDataProvider.init<A>(provider:)(v41);
    v91 = default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)();
    type metadata accessor for AppDataProvider();
    v42 = swift_allocObject();
    *(&v104 + 1) = &type metadata for PommesSystemAppChecking;
    v105 = &protocol witness table for PommesSystemAppChecking;
    *(v42 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v103, v42 + 16);
    v43 = objc_opt_self();
    v44 = [v43 sharedPreferences];
    v90 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v42, v44);

    v45 = type metadata accessor for MarketplaceInfoDataProvider();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    v49 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v50 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v80 = specialized AnyDataProvider.init<A>(provider:)(v48);
    type metadata accessor for PairedDeviceDataProvider();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v78 = specialized AnyDataProvider.init<A>(provider:)(v51);
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v103, v101, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v52 = type metadata accessor for GMAvailabilityPolicyDataProvider();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v55 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v79 = specialized AnyDataProvider.init<A>(provider:)(v55);
    outlined destroy of MediaUserStateCenter?(&v103, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v56 = type metadata accessor for CarPlaySessionDataProvider();
    v57 = objc_allocWithZone(v56);
    v58 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v57[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v57[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v57[v58] = 0;
    v100.receiver = v57;
    v100.super_class = v56;
    v59 = objc_msgSendSuper2(&v100, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v89 = specialized AnyDataProvider.init<A>(provider:)(v59);
    v60 = [v43 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v88 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    a4 = swift_allocObject();
    *(&v104 + 1) = &type metadata for PommesSystemAppChecking;
    v105 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v61 = v92;
    v62 = v83;
    v63 = v84;
    (*(v92 + 104))(v83, *MEMORY[0x277D851C8], v84);
    static OS_dispatch_queue.global(qos:)();
    (*(v61 + 8))(v62, v63);
    (*(v93 + 104))(v94, *MEMORY[0x277D85260], v95);
    v64 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(a4 + 128) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    v65 = v82;
    *(a4 + 16) = v64;
    *(a4 + 24) = v65;
    v66 = v91;
    *(a4 + 32) = v98;
    *(a4 + 40) = v66;
    v67 = v86;
    *(a4 + 48) = v90;
    *(a4 + 56) = v67;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v101, 0, sizeof(v101));
    v102 = 0;
    v68 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = v68;

    v70 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v101, v69, 0);

    outlined destroy of MediaUserStateCenter?(v101, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v71 = v80;
    *(a4 + 64) = v70;
    *(a4 + 72) = v71;
    *(a4 + 80) = v78;
    *(a4 + 96) = v89;
    *(a4 + 104) = 0;
    *(a4 + 112) = v88;
    *(a4 + 120) = v60;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;

    v72 = v60;
    outlined init with copy of AppDataProviding(&v103, v101);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v101, a4 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(a4 + 88) = v79;
    v73 = *(**(a4 + 40) + 160);

    v73(1);

    v74 = *(**(a4 + 48) + 160);

    v74(1);

    (*(**(a4 + 56) + 160))(1);

    __swift_destroy_boxed_opaque_existential_1(&v103);
    v33 = v85;
LABEL_4:
    *(v33 + 7) = a4;
    outlined init with take of DomainWarmupHandling(&v106, (v33 + 80));
    *(v33 + 16) = v96;
    v75 = *(*v33 + 216);
    v76 = type metadata accessor for Logger();
    (*(*(v76 - 8) + 32))(&v33[v75], v97, v76);
    return v33;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for SearchToolPegasusProxy(uint64_t a1)
{
  v1 = *(a1 + 128);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.street.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.city.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.state.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.zipCode.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.countryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

double AssistantDataSnapshot.MeCard.ContactAddress.init(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized AssistantDataSnapshot.MeCard.ContactAddress.init(_:)(a1, v7);
  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t AssistantDataSnapshot.MeCard.givenName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.middleName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.familyName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.nickName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.fullName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.contactIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

__n128 AssistantDataSnapshot.MeCard.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized AssistantDataSnapshot.MeCard.init(_:)(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

id AssistantDataSnapshot.ContentRestriction.init(_:)(void *a1)
{
  v2 = [a1 movieRestriction];
  [a1 tvRestriction];

  return v2;
}

Swift::Int AssistantDataSnapshot.Source.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AssistantDataSnapshot.countryCode.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AssistantDataSnapshot.contentRestrictions.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return result;
}

uint64_t AssistantDataSnapshot.uiScale.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t AssistantDataSnapshot.temperatureUnit.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void AssistantDataSnapshot.init(source:countryCode:meCards:contentRestrictions:uiScale:allowUserGeneratedContent:censorSpeech:temperatureUnit:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  if (a4 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = a6;
  v36 = a8;
  if (v19)
  {
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v20 = 0;
    v21 = v38;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DDFF80](v20, a4);
      }

      else
      {
        v22 = *(a4 + 8 * v20 + 32);
      }

      specialized AssistantDataSnapshot.MeCard.init(_:)(v22, v39);
      v24 = *(v38 + 16);
      v23 = *(v38 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v20;
      *(v38 + 16) = v24 + 1;
      v25 = v38 + 104 * v24;
      v26 = v39[0];
      v27 = v39[2];
      *(v25 + 48) = v39[1];
      *(v25 + 64) = v27;
      *(v25 + 32) = v26;
      v28 = v39[3];
      v29 = v39[4];
      v30 = v39[5];
      *(v25 + 128) = v40;
      *(v25 + 96) = v29;
      *(v25 + 112) = v30;
      *(v25 + 80) = v28;
    }

    while (v19 != v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  if (a5)
  {
    v31 = a5;
    v32 = [v31 movieRestriction];
    v33 = [v31 tvRestriction];
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  *a9 = a1 & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v21;
  *(a9 + 32) = v32;
  *(a9 + 40) = v33;
  *(a9 + 48) = a5 == 0;
  *(a9 + 56) = v37;
  *(a9 + 64) = a7 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v36 & 1;
  *(a9 + 89) = a10 & 1;
}

double AssistantDataSnapshot.init(_:replacementMeCards:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized AssistantDataSnapshot.init(_:replacementMeCards:)(a1, v6);
  v3 = v6[3];
  a2[2] = v6[2];
  a2[3] = v3;
  a2[4] = v7[0];
  *(a2 + 74) = *(v7 + 10);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t AssistantDataSnapshot.description.getter()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(190);
  v15 = v12;
  MEMORY[0x223DDF6D0](0xD000000000000028, 0x80000002234DE610);
  v16 = *(v0 + 8);
  v12 = *(v0 + 8);
  outlined init with copy of String?(&v16, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v1);

  MEMORY[0x223DDF6D0](0x656D202020200A2CLL, 0xEF203A7364726143);
  v2 = MEMORY[0x223DDF850](*(v0 + 24), &type metadata for AssistantDataSnapshot.MeCard);
  MEMORY[0x223DDF6D0](v2);

  MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234DE640);
  v12 = *(v0 + 32);
  v13 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotV18ContentRestrictionVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotV18ContentRestrictionVSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v3);

  MEMORY[0x223DDF6D0](0x6975202020200A2CLL, 0xEF203A656C616353);
  *&v12 = *(v0 + 56);
  BYTE8(v12) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v4 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v4);

  MEMORY[0x223DDF6D0](0xD000000000000021, 0x80000002234DE660);
  if (*(v0 + 88))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 88))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v5, v6);

  MEMORY[0x223DDF6D0](0xD000000000000014, 0x80000002234DE690);
  if (*(v0 + 89))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 89))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v7, v8);

  MEMORY[0x223DDF6D0](0xD000000000000017, 0x80000002234DE6B0);
  v12 = *(v0 + 72);
  v14 = *(v0 + 72);
  outlined init with copy of String?(&v12, &v11);
  v9 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v9);

  MEMORY[0x223DDF6D0](2689580, 0xE300000000000000);
  return v15;
}

void specialized AssistantDataSnapshot.MeCard.ContactAddress.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 label];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v7;
    v35 = v6;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v8 = [a1 street];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v11;
    v33 = v10;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v12 = [a1 city];
  if (v12)
  {
    v13 = v12;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v31 = 0;
    v15 = 0;
  }

  v16 = [a1 stateCode];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a1 postalCode];
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

  v26 = [a1 countryCode];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  *a2 = v35;
  a2[1] = v34;
  a2[2] = v33;
  a2[3] = v32;
  a2[4] = v31;
  a2[5] = v15;
  a2[6] = v18;
  a2[7] = v20;
  a2[8] = v23;
  a2[9] = v25;
  a2[10] = v28;
  a2[11] = v30;
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source()
{
  result = lazy protocol witness table cache variable for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source;
  if (!lazy protocol witness table cache variable for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot.MeCard(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot.MeCard(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot.MeCard.ContactAddress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot.MeCard.ContactAddress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot.ContentRestriction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot.ContentRestriction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10)
{
  v16 = type metadata accessor for PerformanceUtil.Ticket(0);
  v17 = a8 + v16[5];
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(a8 + v16[6]) = a6;
  v18 = a8 + v16[7];
  *v18 = a7;
  *(v18 + 8) = a9;
  *(v18 + 16) = a10;
  v19 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(a1);
  v21 = v20;

  v22 = (a8 + v16[8]);
  *v22 = v19;
  v22[1] = v21;
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 32);

  return v24(a8, a2, v23);
}

uint64_t PerformanceUtil.Ticket.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PerformanceUtil.Ticket.fileId.getter()
{
  v1 = (v0 + *(type metadata accessor for PerformanceUtil.Ticket(0) + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t PerformanceUtil.Ticket.callingFunction.getter()
{
  v1 = (v0 + *(type metadata accessor for PerformanceUtil.Ticket(0) + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t PerformanceUtil.Ticket.description.getter()
{
  v1 = (v0 + *(type metadata accessor for PerformanceUtil.Ticket(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PerformanceUtil.Measurement.init(ticket:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_1(a1, a2, type metadata accessor for PerformanceUtil.Ticket);
  result = type metadata accessor for PerformanceUtil.Measurement(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for PerformanceUtil();
  v2 = swift_allocObject();
  result = PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)(v0, v1);
  static PerformanceUtil.shared = v2;
  return result;
}

{
  type metadata accessor for SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator();
  result = swift_initStaticObject();
  static SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared = result;
  return result;
}

uint64_t PerformanceUtil.__allocating_init(analyticsComponentIdGenerator:trialClient:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)(a1, a2);
  return v4;
}

uint64_t static PerformanceUtil.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id PerformanceUtil.mockStream.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t PerformanceUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*PerformanceUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PerformanceUtil.mockStream.getter();
  return PerformanceUtil.mockStream.modify;
}

void PerformanceUtil.mockStream.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t key path setter for PerformanceUtil.measurements : PerformanceUtil(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t PerformanceUtil.measurements.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 40) = MEMORY[0x277D84F90];
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = MEMORY[0x223DDF550](0xD000000000000022, 0x80000002234DE6F0);
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  *(v2 + 56) = v9;
  *(v2 + 32) = a1;
  *(v2 + 16) = a2;
  return v2;
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34 = a8;
  v35 = a1;
  HIDWORD(v33) = a7;
  v41 = a3;
  v36 = a2;
  v37 = a9;
  v39 = a14;
  v40 = a13;
  v38 = a15;
  v19 = type metadata accessor for PerformanceUtil.Ticket(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 16))(v24, a4, v25);
  v26 = &v24[v20[7]];
  *v26 = a5;
  *(v26 + 1) = a6;
  v26[16] = BYTE4(v33);
  v27 = v35;
  *&v24[v20[8]] = v34;
  v28 = &v24[v20[9]];
  *v28 = a10;
  *(v28 + 1) = a11;
  v28[16] = a12;
  v29 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v27);
  v30 = &v24[v20[10]];
  *v30 = v29;
  v30[1] = v31;
  (*(*v15 + 216))(v24, v41, v40, v39, v38);
  return outlined destroy of PerformanceUtil.Measurement(v24, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v18;
  *(v9 + 104) = v8;
  *(v9 + 146) = v16;
  *(v9 + 80) = v15;
  *(v9 + 88) = v17;
  *(v9 + 64) = v14;
  *(v9 + 145) = a8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 144) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  *(v9 + 112) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:), 0, 0);
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v24 = *(v0 + 146);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = *(v0 + 80);
  v5 = *(v0 + 145);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v21 = *(v0 + 32);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 16))(v1, v8, v10);
  v11 = v1 + v2[5];
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v5;
  *(v1 + v2[6]) = v4;
  v12 = v1 + v2[7];
  *v12 = v22;
  *(v12 + 8) = v23;
  *(v12 + 16) = v24;
  v13 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v9);
  v14 = (v1 + v2[8]);
  *v14 = v13;
  v14[1] = v15;
  v25 = (v3 + *v3);
  v16 = v3[1];
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v18 = *(v0 + 96);
  v19 = *(v0 + 16);

  return v25(v19);
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  }

  else
  {
    v3 = PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 120);
  (*(**(v0 + 104) + 184))(v1, *(v0 + 144));
  outlined destroy of PerformanceUtil.Measurement(v1, type metadata accessor for PerformanceUtil.Ticket);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 120);
  (*(**(v0 + 104) + 184))(v1, *(v0 + 144));
  outlined destroy of PerformanceUtil.Measurement(v1, type metadata accessor for PerformanceUtil.Ticket);

  v2 = *(v0 + 8);
  v3 = *(v0 + 136);

  return v2();
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:block:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!v4)
  {
    return (*(*v3 + 184))(a1, a2 & 1);
  }

  return result;
}

Swift::Void __swiftcall PerformanceUtil.emitMeasurements(requestId:resultCandidateId:)(Swift::String_optional requestId, Swift::String_optional resultCandidateId)
{
  object = resultCandidateId.value._object;
  countAndFlagsBits = resultCandidateId.value._countAndFlagsBits;
  v5 = requestId.value._object;
  v6 = requestId.value._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = (&v17 - v10);
  if (object)
  {
    *v11 = countAndFlagsBits;
    v11[1] = object;
    v12 = *MEMORY[0x277D56618];
    v13 = type metadata accessor for PommesCandidateId();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v11, v12, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for PommesCandidateId();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = AFIsInternalInstall();
  (*(*v2 + 248))(v6, v5, v11, v16);
  outlined destroy of PommesCandidateId?(v11);
}

uint64_t PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = AFIsInternalInstall();
  v8 = *(*v3 + 248);

  return v8(a1, a2, a3, v7);
}

void PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:isInternalInstall:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for PerformanceUtil.Measurement(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((specialized closure #1 in PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:isInternalInstall:)(a4, v5) & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_38:
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_31;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Unable to emit PerformanceUtil measurements because this is a production build or this run has not been selected in the subsample";
    goto LABEL_30;
  }

  v16 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (!v16)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_31;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Unable to emit PerformanceUtil measurements because of missing eventWrapper";
LABEL_30:
    _os_log_impl(&dword_2232BB000, v61, v62, v64, v63, 2u);
    MEMORY[0x223DE0F80](v63, -1, -1);
LABEL_31:

    v76 = *(*v5 + 224);

    v76();
    return;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D59F78]) init];
  v19 = v5[6];
  [v19 lock];
  if (v18)
  {
    v83 = v10;
    v85 = v19;
    v20 = *(*v5 + 152);
    v86 = v18;
    v21 = v20();
    v87 = MEMORY[0x277D84F90];
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v82 = v22 - 1;
      v24 = &unk_2784DB000;
      while (1)
      {
        v25 = v23;
        while (1)
        {
          if (v25 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          outlined init with copy of PerformanceUtil.Ticket(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v15, type metadata accessor for PerformanceUtil.Measurement);
          v23 = v25 + 1;
          v26 = [objc_allocWithZone(MEMORY[0x277D59F88]) v24[162]];
          if (v26)
          {
            break;
          }

          outlined destroy of PerformanceUtil.Measurement(v15, type metadata accessor for PerformanceUtil.Measurement);
          ++v25;
          if (v22 == v23)
          {
            goto LABEL_20;
          }
        }

        v80 = v17;
        v81 = v5;
        v27 = v26;
        Date.timeIntervalSinceReferenceDate.getter();
        [v27 setStartTimeIntervalSince2001InMs_];
        [v27 setDurationInMs_];
        v84 = type metadata accessor for PerformanceUtil.Ticket(0);
        v29 = &v15[v84[5]];
        v30 = *v29;
        v31 = *(v29 + 1);
        v32 = v29[16];
        v33 = v27;
        v34 = StaticString.description.getter();
        v35 = MEMORY[0x223DDF550](v34);

        [v33 setFileId_];

        v36 = v84;
        v37 = *&v15[v84[6]];
        if (v37 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v37 > 0x7FFFFFFF)
        {
          goto LABEL_40;
        }

        [v33 setLineNumber_];
        v38 = &v15[v36[7]];
        v39 = *v38;
        v79 = *(v38 + 1);
        v40 = v38[16];
        v41 = v33;
        v42 = StaticString.description.getter();
        v43 = MEMORY[0x223DDF550](v42);

        [v41 setCallingFunction_];

        v44 = &v15[v84[8]];
        v45 = *v44;
        v46 = *(v44 + 1);
        v84 = v41;

        v47 = specialized Collection.prefix(_:)(100);
        v79 = v48;
        v50 = v49;
        v52 = v51;

        v53 = MEMORY[0x223DDF600](v47, v79, v50, v52);
        v55 = v54;
        v56 = v84;

        v57 = MEMORY[0x223DDF550](v53, v55);

        [v56 setMeasurementLabel_];

        v58 = outlined destroy of PerformanceUtil.Measurement(v15, type metadata accessor for PerformanceUtil.Measurement);
        MEMORY[0x223DDF820](v58);
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v81;
        v17 = v80;
        v24 = &unk_2784DB000;
        if (v82 == v25)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
LABEL_20:

      type metadata accessor for POMMESSchemaPOMMESFunctionPerformanceProfile();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v66 = v86;
      [v86 setPerformanceMeasurements_];

      swift_beginAccess();
      v67 = v5[5];
      v5[5] = MEMORY[0x277D84F90];

      [v85 unlock];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.pommes);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_2232BB000, v69, v70, "Emitting POMMESSchemaPOMMESDebugPerformanceReported event", v71, 2u);
        MEMORY[0x223DE0F80](v71, -1, -1);
      }

      [v17 setPerformanceReported_];
      v72 = [objc_opt_self() processInfo];
      v73 = NSProcessInfo.isRunningUnitTests.getter();

      if (v73)
      {
        v74 = (*(*v5 + 128))();
      }

      else
      {
        v74 = [objc_opt_self() sharedStream];
      }

      [v74 emitMessage_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v77 = v5[5];
    v5[5] = MEMORY[0x277D84F90];

    [v19 unlock];
  }
}