uint64_t OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(uint64_t a1)
{
  v3 = *v2;
  v3[519] = v2;
  v3[520] = a1;
  v3[521] = v1;
  v3[625] = v1;

  if (v1)
  {
    v4 = v3[597];
    v5 = v3[596];
    v6 = v3[592];
    v7 = v3[591];

    v8 = *(v6 + 32);
    v3[626] = v8;
    v3[627] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v4, v5, v7);
    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  else
  {

    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v3[522] = v2;
  v3[523] = a1;
  v3[524] = v1;
  v3[629] = v1;

  if (v1)
  {
    v4 = v3[595];
    v5 = v3[594];
    v6 = v3[592];
    v7 = v3[591];

    v8 = *(v6 + 32);
    v3[630] = v8;
    v3[631] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v4, v5, v7);
    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  else
  {

    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return outlined init with copy of DeterministicLanguageModelProtocol(a1, a4);
  }

  v49 = a4;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v57);
  (*(v9 + 16))(v11, a3, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *&v48 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v56[0] = v17;
    *v16 = 134218498;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    swift_getDynamicType();
    v18 = _typeName(_:qualified:)();
    v47 = a2;
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1(v57);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v56);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v8;
    v26 = v47;
    (*(v9 + 8))(v11, v25);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v56);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_220940000, v13, v14, "Using prompt lookup with %ld step(s) for %s for request %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v17, -1, -1);
    v28 = v16;
    a1 = v48;
    MEMORY[0x223D90A10](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v26 = a2;
  }

  outlined init with copy of DeterministicLanguageModelProtocol(a1, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21PromptLookupNodeStateVGMd);
  v30 = swift_allocObject();
  v48 = xmmword_220AE8A30;
  *(v30 + 16) = xmmword_220AE8A30;
  v31 = MEMORY[0x277D84F90];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v30 + 32) = 0;
  *(v30 + 40) = 1;
  *(v30 + 48) = 0;
  *(v30 + 56) = 257;
  *(v30 + 64) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA06PromptD9NodeStateVGMd);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = v30;
  v34[4] = 2;
  v56[3] = v33;
  v56[4] = &protocol witness table for LookupLanguageModel<A>;
  v56[0] = v34;
  v55[3] = &type metadata for LinearSpeculator;
  v55[4] = &protocol witness table for LinearSpeculator;
  v35 = swift_allocObject();
  v55[0] = v35;
  v35[2] = v26;
  v35[6] = type metadata accessor for ArgmaxPresampler();
  v35[7] = &protocol witness table for ArgmaxPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35 + 3);
  v37 = type metadata accessor for LogitIndexSet();
  (*(*(v37 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v37);
  outlined init with copy of DeterministicLanguageModelProtocol(v57, v52);
  outlined init with copy of DeterministicLanguageModelProtocol(v56, v51);
  outlined init with copy of DeterministicLanguageModelProtocol(v55, v50);
  v47 = 0x8000000220AFB1D0;
  v38 = type metadata accessor for SpeculativeLanguageModel();
  v39 = swift_allocObject();
  *(v39 + 169) = 0;
  *(v39 + 184) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(v31);
  outlined init with copy of DeterministicLanguageModelProtocol(v52, v39 + 32);
  outlined init with copy of DeterministicLanguageModelProtocol(v51, v39 + 72);
  outlined init with copy of DeterministicLanguageModelProtocol(v50, v39 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SitGMd);
  inited = swift_initStackObject();
  *(inited + 16) = v48;
  v41 = v53;
  v42 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v43 = *(v42 + 8);

  *(inited + 32) = v43(v41, v42);
  *(inited + 40) = 0;
  v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(inited);
  swift_setDeallocating();

  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  *(v39 + 176) = v44;
  *(v39 + 152) = 0;
  *(v39 + 160) = 1;
  *(v39 + 164) = 0;
  *(v39 + 168) = 1;
  *(v39 + 16) = 0xD000000000000018;
  *(v39 + 24) = v47;
  result = __swift_destroy_boxed_opaque_existential_1(v52);
  v45 = v49;
  v49[3] = v38;
  v45[4] = &protocol witness table for SpeculativeLanguageModel;
  *v45 = v39;
  return result;
}

uint64_t addPriorOutputSpeculation #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InferenceRequest();
  SamplingParameters.priorInferenceOutput.getter();
  if (!v5)
  {
    return outlined init with copy of DeterministicLanguageModelProtocol(a1, a2);
  }

  v6 = dispatch thunk of TokenizerRunner.tokenize(_:)();
  if (v2)
  {

    return outlined init with copy of DeterministicLanguageModelProtocol(a1, a2);
  }

  LookupLanguageModelState<>.init(priorOutputTokens:)(v6, v25);
  v8 = v25[0];
  v9 = v25[1];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = 2;
  v29 = v10;
  v30 = &protocol witness table for LookupLanguageModel<A>;

  *&v28 = v11;
  outlined init with take of RandomNumberGenerator(&v28, v31);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_220940000, v13, v14, "PriorInferenceOutput passed by client being used as draft for base model. no speculative decoding", v15, 2u);
    MEMORY[0x223D90A10](v15, -1, -1);
  }

  v16 = type metadata accessor for SpeculativeLanguageModel();
  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v28);
  outlined init with copy of DeterministicLanguageModelProtocol(v31, v25);
  v17 = v26;
  v18 = v27;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  MEMORY[0x28223BE20](v19);
  v21 = &v24[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21);
  v24[4] = 1;
  v23 = specialized SpeculativeLanguageModel.__allocating_init(target:draft:stepCount:treeFactor:secondaryTreeFactor:earlyStopTokenId:earlyReturnProbabilityThreshold:)(&v28, v21, 63, 1, 0, 1, 0, 1, 0, 1, v16, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v25);
  a2[3] = v16;
  a2[4] = &protocol witness table for SpeculativeLanguageModel;
  *a2 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  v5 = (a3 + *(type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0) + 68));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v10 = off_2834512B0[0];
  type metadata accessor for OnDeviceInferenceOverrides();
  v11 = v10();
  v13 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v11, v12, v6, v7, v8, v9);

  swift_beginAccess();
  result = v13;
  *a1 = v13;
  a1[8] = 0;
  return result;
}

uint64_t OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for GenerationError();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for TokenGenerationError();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for TokenGenerationError.Context();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  type metadata accessor for Schema();
  v6[18] = swift_task_alloc();
  v10 = type metadata accessor for Grammar();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v11 = type metadata accessor for GenerationSchema();
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v12 = type metadata accessor for Constraints();
  v6[27] = v12;
  v6[28] = *(v12 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:), 0, 0);
}

uint64_t OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:)()
{
  v122 = v0;
  v1 = v0;
  v4 = v0 + 28;
  v3 = v0[28];
  v2 = v4[1];
  v5 = v1[27];
  (*(v3 + 16))(v2, v1[4], v5);
  v6 = (*(v3 + 88))(v2, v5);
  if (v6 == *MEMORY[0x277D71B30])
  {
    v7 = v1[29];
    v8 = v1[26];
    v9 = v1[23];
    v10 = v1[24];
    v11 = v1[8];
    v12 = v1[6];
    (*(v1[28] + 96))(v7, v1[27]);
    (*(v10 + 32))(v8, v7, v9);
    type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
    __swift_project_boxed_opaque_existential_1((v11 + 56), *(v11 + 80));
    v13 = off_2834512B0[0];
    type metadata accessor for OnDeviceInferenceOverrides();
    v14 = v13();
    v16 = v15;
    v17 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
    v18 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v14, v16, *(v12 + *(v17 + 68)), *(v12 + *(v17 + 68) + 8), *(v12 + *(v17 + 68) + 16), *(v12 + *(v17 + 68) + 24));

    *&v19 = GenerationSchema.extractPrefixes()();
    if (!v19)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Log.device);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_220940000, v42, v43, "Building grammar from schema", v44, 2u);
        MEMORY[0x223D90A10](v44, -1, -1);
      }

      v46 = v1[25];
      v45 = v1[26];
      v48 = v1[23];
      v47 = v1[24];

      (*(v47 + 16))(v46, v45, v48);
      Schema.init(type:)();
      Grammar.init(_:)();
      v58 = swift_task_alloc();
      v1[30] = v58;
      *v58 = v1;
      v58[1] = OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:);
      v36 = v1[22];
      goto LABEL_41;
    }

    v21 = v19;
    v22 = v20;
    v113 = v18;
    v114 = v1;
    v1 = *(v19 + 16);
    v23 = MEMORY[0x277D84F90];
    v115 = v20;
    v116 = v19;
    if (v1)
    {
      v24 = MEMORY[0x277D84F90];
      *&v119 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v25 = 0;
      v26 = v119;
      v27 = v21 + 40;
      do
      {
        if (v25 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_67;
        }

        v28 = dispatch thunk of TokenizerRunner.tokenize(_:)();

        *&v119 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v26 = v119;
        }

        v25 = (v25 + 1);
        *(v26 + 16) = v30 + 1;
        *(v26 + 8 * v30 + 32) = v28;
        v27 += 16;
        v21 = v116;
      }

      while (v1 != v25);

      v23 = v24;
      v22 = v115;
      v1 = *(v115 + 16);
      if (!v1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
      v1 = *(v20 + 16);
      if (!v1)
      {
LABEL_40:

        v53 = MEMORY[0x277D84F90];
LABEL_44:
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Log.device);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *&v119 = v68;
          *v67 = 136315394;
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
          v70 = MEMORY[0x223D8E8D0](v26, v69);
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v119);

          *(v67 + 4) = v72;
          *(v67 + 12) = 2080;
          v73 = MEMORY[0x223D8E8D0](v53, v69);
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v119);

          *(v67 + 14) = v75;
          _os_log_impl(&dword_220940000, v65, v66, "Building PrefixGuidedLanguageModel\nLegal: %s\nIllegal: %s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D90A10](v68, -1, -1);
          MEMORY[0x223D90A10](v67, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_220AE8A30;
        *(v76 + 32) = v113;
        v77 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
        type metadata accessor for PrefixGuidedLanguageModel.Node();
        v78 = swift_allocObject();
        swift_weakInit();
        *(v78 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCTt0g5Tf4g_n(v23);
        *(v78 + 56) = 256;
        *(v78 + 58) = 0;
        *(v78 + 16) = 0;
        *(v78 + 32) = 0;
        *(v78 + 40) = 1;
        swift_weakAssign();
        *&v119 = v78;
        *(&v119 + 1) = v23;
        v120 = v76;
        v121 = v77;
        *(v78 + 58) = *(v26 + 16) == 0;

        MEMORY[0x223D8E8A0](v79);
        if (*((*(&v119 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v119 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v80 = v114[26];
        v81 = v114[23];
        v82 = v114[24];
        v83 = v114[3];
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        PrefixGuidedLanguageModel.insert(prefixes:isLegal:)(v26, 1);

        PrefixGuidedLanguageModel.insert(prefixes:isLegal:)(v53, 0);

        v85 = v120;
        v84 = v121;
        v117 = v119;
        v83[3] = &type metadata for PrefixGuidedLanguageModel;
        v83[4] = &protocol witness table for PrefixGuidedLanguageModel;
        v86 = swift_allocObject();
        *v83 = v86;
        *(v86 + 16) = v117;
        *(v86 + 32) = v85;
        *(v86 + 40) = v84;
        (*(v82 + 8))(v80, v81);

        v87 = v114[1];
        goto LABEL_63;
      }
    }

    *&v119 = v23;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v52 = 0;
    v53 = v23;
    v54 = v22 + 40;
    while (v52 < *(v22 + 16))
    {

      v55 = dispatch thunk of TokenizerRunner.tokenize(_:)();

      *&v119 = v53;
      v57 = *(v53 + 16);
      v56 = *(v53 + 24);
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        v53 = v119;
      }

      v52 = (v52 + 1);
      *(v53 + 16) = v57 + 1;
      *(v53 + 8 * v57 + 32) = v55;
      v54 += 16;
      v22 = v115;
      if (v1 == v52)
      {

        v23 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v6 != *MEMORY[0x277D71B38])
  {
    if (v6 == *MEMORY[0x277D71B18])
    {
      (*(v1[28] + 8))(v1[29], v1[27]);
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.device);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_220940000, v38, v39, "partialGrammar not support by inference provider. Use .grammar", v40, 2u);
        MEMORY[0x223D90A10](v40, -1, -1);
      }
    }

    else if (v6 == *MEMORY[0x277D71B28])
    {
      (*(v1[28] + 8))(v1[29], v1[27]);
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Log.device);
      v38 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_220940000, v38, v50, "grammarIdentifier not supported by inference provider. Use .grammar", v51, 2u);
        MEMORY[0x223D90A10](v51, -1, -1);
      }
    }

    else
    {
      if (v6 != *MEMORY[0x277D71B20])
      {
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        __swift_project_value_buffer(v98, static Log.device);
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_220940000, v99, v100, "Unknown constriant type provided", v101, 2u);
          MEMORY[0x223D90A10](v101, -1, -1);
        }

        v102 = v1[28];
        v118 = v1[29];
        v103 = v1[27];
        v105 = v1[16];
        v104 = v1[17];
        v106 = v1[15];
        v107 = v1[12];
        v108 = v1[13];

        TokenGenerationError.Context.init(debugDescription:underlyingError:)();
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
        swift_allocError();
        v109 = v1;
        v111 = v110;
        (*(v105 + 16))(v110, v104, v106);
        v112 = v111;
        v1 = v109;
        (*(v108 + 104))(v112, *MEMORY[0x277D71AE0], v107);
        swift_willThrow();
        (*(v105 + 8))(v104, v106);
        (*(v102 + 8))(v118, v103);
        goto LABEL_57;
      }

      (*(v1[28] + 8))(v1[29], v1[27]);
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static Log.device);
      v38 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_220940000, v38, v89, "schemaIdentifier not supported by inference provider. Use .schema", v90, 2u);
        MEMORY[0x223D90A10](v90, -1, -1);
      }
    }

    v92 = v1[16];
    v91 = v1[17];
    v93 = v1[15];
    v94 = v1[12];
    v95 = v1[13];

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    swift_allocError();
    v97 = v96;
    (*(v92 + 16))(v96, v91, v93);
    (*(v95 + 104))(v97, *MEMORY[0x277D71AE0], v94);
    swift_willThrow();
    (*(v92 + 8))(v91, v93);
LABEL_57:

    v87 = v1[1];
LABEL_63:

    return v87();
  }

  (*(v1[28] + 96))(v1[29], v1[27]);
  if (one-time initialization token for device != -1)
  {
LABEL_68:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.device);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_220940000, v32, v33, "Building grammar from grammar definition", v34, 2u);
    MEMORY[0x223D90A10](v34, -1, -1);
  }

  Grammar.init(backusNaurForm:prependSpaceToRootRule:)();
  v35 = swift_task_alloc();
  v1[31] = v35;
  *v35 = v1;
  v35[1] = OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:);
  v36 = v1[21];
LABEL_41:
  v59 = v1[7];
  v60 = v1[5];
  v61 = v1[6];
  v62 = v1[3];

  return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v62, v36, v60, v61, v59);
}

{

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:), 0, 0);
}

{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[22], v0[19]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:), 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = type metadata accessor for Grammar();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v8 = type metadata accessor for GuidedGenerationConstraints();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for GuidedGenerationVocabularyManager();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:), 0, 0);
}

uint64_t OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)()
{
  v1 = v0[35];
  v57 = v0[33];
  v58 = v0[34];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v6 = off_2834512B0[0];
  type metadata accessor for OnDeviceInferenceOverrides();
  v7 = v6();
  v8 = v4;
  v9 = v7;
  v11 = v10;
  v12 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v13 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v9, v11, *(v3 + *(v12 + 68)), *(v3 + *(v12 + 68) + 8), *(v3 + *(v12 + 68) + 16), *(v3 + *(v12 + 68) + 24));

  v14 = *(v5 + 44);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v4 + v14, v57, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  if ((*(v1 + 48))(v57, 1, v58) == 1)
  {
    outlined destroy of [Int](v0[33], &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
LABEL_12:
    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v59 = v13;
    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.guided);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_220940000, v43, v44, "No prewarmed vocabulary manager, building", v45, 2u);
      MEMORY[0x223D90A10](v45, -1, -1);
    }

    v46 = v0[38];
    v48 = v0[34];
    v47 = v0[35];
    v49 = v0[24];
    v50 = v0[22];

    type metadata accessor for TokenizerRunner();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_220AE8A30;
    *(v51 + 32) = v59;

    GuidedGenerationVocabularyManager.init(tokenizer:stopTokenIDs:)();
    outlined destroy of [Int](v8 + v14, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
    (*(v47 + 16))(v8 + v14, v46, v48);
    (*(v47 + 56))(v8 + v14, 0, 1, v48);
    v52 = __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v0[5] = v5;
    v0[6] = &protocol witness table for OnDeviceInferenceAssetObjectTokenizer;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v0[39] = boxed_opaque_existential_1;
    outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v50, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    v54 = *v52;
    v0[40] = *v52;

    return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:), v54, 0);
  }

  v15 = *(v0[35] + 32);
  v15(v0[37], v0[33], v0[34]);
  v16 = GuidedGenerationVocabularyManager.stopTokenIDs.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  *(inited + 32) = v13;
  v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v16, inited);

  swift_setDeallocating();
  if ((v18 & 1) == 0)
  {
    (*(v0[35] + 8))(v0[37], v0[34]);
    goto LABEL_12;
  }

  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.guided);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_220940000, v20, v21, "Using prewarmed vocabulary manager", v22, 2u);
    MEMORY[0x223D90A10](v22, -1, -1);
  }

  v24 = v0[37];
  v23 = v0[38];
  v25 = v0[34];

  v15(v23, v24, v25);
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[36];
  v29 = v0[34];
  v30 = v0[31];
  v31 = v0[32];
  v33 = v0[29];
  v32 = v0[30];
  v55 = v0[20];
  v56 = v26;
  (*(v0[27] + 16))(v0[28], v0[21], v0[26]);
  (*(v27 + 16))(v28, v26, v29);
  v34 = v31;
  GuidedGenerationConstraints.init(grammar:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:)();
  v35 = v30;
  (*(v32 + 16))(v30, v34, v33);
  v36 = type metadata accessor for GrammarGuidedLanguageModel();
  v37 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26GrammarGuidedLanguageModelC4NodeVGMd);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_220AE8A30;
  v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v38 + 32) = 0;
  *(v38 + 40) = 257;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
  *(v38 + 64) = v39;
  *(v37 + 16) = v38;
  (*(v32 + 32))(v37 + OBJC_IVAR____TtC24TokenGenerationInference26GrammarGuidedLanguageModel_constraints, v35, v33);
  v55[3] = v36;
  v55[4] = &protocol witness table for GrammarGuidedLanguageModel;
  *v55 = v37;
  (*(v32 + 8))(v34, v33);
  (*(v27 + 8))(v56, v29);

  v40 = v0[1];

  return v40();
}

{
  v1 = *(v0 + 312);
  v2 = *v1;
  v3 = v1[1];
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 16, v0 + 56);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v0 + 56, v2, v3);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:), 0, 0);
}

{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v17 = v0[20];
  v18 = v1;
  (*(v0[27] + 16))(v0[28], v0[21], v0[26]);
  (*(v2 + 16))(v3, v1, v4);
  v9 = v6;
  GuidedGenerationConstraints.init(grammar:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:)();
  v10 = v5;
  (*(v7 + 16))(v5, v9, v8);
  v11 = type metadata accessor for GrammarGuidedLanguageModel();
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26GrammarGuidedLanguageModelC4NodeVGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220AE8A30;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v13 + 32) = 0;
  *(v13 + 40) = 257;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 64) = v14;
  *(v12 + 16) = v13;
  (*(v7 + 32))(v12 + OBJC_IVAR____TtC24TokenGenerationInference26GrammarGuidedLanguageModel_constraints, v10, v8);
  v17[3] = v11;
  v17[4] = &protocol witness table for GrammarGuidedLanguageModel;
  *v17 = v12;
  (*(v7 + 8))(v9, v8);
  (*(v2 + 8))(v18, v4);

  v15 = v0[1];

  return v15();
}

void *_s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F739LL4fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v3 = type metadata accessor for GenerationSchema();
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Tool.Function();
  v6 = *(v5 - 8);
  v97 = v5;
  v98 = v6;
  MEMORY[0x28223BE20](v5);
  v102 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ToolType.Function();
  v95 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TokenGenerationError();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TokenGenerationError.Context();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ToolType();
  v105 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = (&v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for ToolDescription();
  v12 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolType.Type();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v84 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v84 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  v28 = a1;
  v29 = *(a1 + 16);
  v30 = MEMORY[0x277D84F90];
  v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0, MEMORY[0x277D84F90]);
  v113 = v14;
  v99 = v25;
  v115 = v15;
  v94 = v22;
  if (v29)
  {
    v114[0] = v30;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v30 = v114[0];
    v32 = *(v12 + 16);
    v31 = v12 + 16;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v106 = *(v31 + 56);
    v107 = v32;
    v104 = (v31 - 8);
    ++v105;
    v103 = (v115 + 4);
    v34 = v31;
    v35 = v27;
    do
    {
      v36 = v108;
      v37 = v109;
      v38 = v34;
      v107(v108, v33, v109);
      v39 = v110;
      ToolDescription.toolType.getter();
      ToolType.type.getter();
      (*v105)(v39, v111);
      (*v104)(v36, v37);
      v114[0] = v30;
      v41 = *(v30 + 16);
      v40 = *(v30 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
        v30 = v114[0];
      }

      *(v30 + 16) = v41 + 1;
      v15 = v115;
      v14 = v113;
      v115[4](v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v41, v35, v113);
      v33 += v106;
      --v29;
      v34 = v38;
    }

    while (v29);
    v22 = v94;
    v25 = v99;
  }

  v111 = *(v30 + 16);
  if (v111)
  {
    v42 = 0;
    v109 = (v15 + 11);
    LODWORD(v108) = *MEMORY[0x277D0DE08];
    v105 = (v95 + 32);
    v106 = (v15 + 12);
    v110 = (v15 + 1);
    v103 = (v98 + 32);
    v104 = (v95 + 8);
    v107 = (v15 + 2);
    while (1)
    {
      if (v42 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v43 = v15[2];
      v43(v25, (v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v42), v14);
      v43(v22, v25, v14);
      v44 = (v15[11])(v22, v14);
      if (v44 != v108)
      {
        break;
      }

      (*v106)(v22, v14);
      v45 = (*v105)(v100, v22, v101);
      MEMORY[0x223D8DDC0](v45);
      MEMORY[0x223D8DDB0]();
      MEMORY[0x223D8DDA0]();
      Tool.Function.init(name:description:parameters:)();
      v46 = v112;
      v48 = v112[2];
      v47 = v112[3];
      if (v48 >= v47 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v112);
      }

      v25 = v99;
      ++v42;
      (*v104)(v100, v101);
      v14 = v113;
      (*v110)(v25, v113);
      v46[2] = v48 + 1;
      v49 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v112 = v46;
      (*(v98 + 32))(v46 + v49 + *(v98 + 72) * v48, v102, v97);
      v15 = v115;
      if (v111 == v42)
      {
        goto LABEL_14;
      }
    }

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Log.device);
    v63 = v86;
    v43(v86, v25, v14);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v114[0] = v67;
      *v66 = 136446210;
      v43(v85, v63, v14);
      v68 = String.init<A>(describing:)();
      v70 = v69;
      v71 = *v110;
      v111 = v110 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v115 = v71;
      (v71)(v63, v113);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v114);
      v14 = v113;

      *(v66 + 4) = v72;
      _os_log_impl(&dword_220940000, v64, v65, "Unsupported tool: %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x223D90A10](v67, -1, -1);
      MEMORY[0x223D90A10](v66, -1, -1);
    }

    else
    {

      v73 = *v110;
      v111 = v110 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v115 = v73;
      (v73)(v63, v14);
    }

    v74 = v92;
    v114[0] = 0;
    v114[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    MEMORY[0x223D8E780](0xD000000000000024, 0x8000000220AFD500);
    v75 = v99;
    _print_unlocked<A, B>(_:_:)();
    v76 = v88;
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v77 = v91;
    v78 = v87;
    (*(v91 + 16))(v87, v76, v74);
    v79 = v14;
    v80 = v89;
    v81 = v90;
    (*(v89 + 104))(v78, *MEMORY[0x277D71AE0], v90);
    TokenGenerationError.toInferenceError()();
    (*(v80 + 8))(v78, v81);
    type metadata accessor for InferenceError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v77 + 8))(v76, v74);
    v82 = v115;
    (v115)(v75, v79);
    (v82)(v94, v79);
    v54 = v112;
  }

  else
  {
LABEL_14:

    if (one-time initialization token for guided != -1)
    {
LABEL_26:
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Log.guided);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v112;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v114[0] = v56;
      *v55 = 136315138;

      v58 = MEMORY[0x223D8E8D0](v57, v97);
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v114);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_220940000, v51, v52, "Using tools for request: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x223D90A10](v56, -1, -1);
      MEMORY[0x223D90A10](v55, -1, -1);
    }
  }

  return v54;
}

uint64_t OnDeviceInferenceContextFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
    v19 = *(v12 - 8);
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v11 + *(v19 + 72) * v8, a3, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    specialized _NativeDictionary._delete(at:)(v8, v10, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for NDArray.Buffer();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10, MEMORY[0x277D36B08]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for NDArray.Buffer();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for DataStreamState(0);
    v20 = *(v13 - 8);
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DataStreamState);
    specialized _NativeDictionary._delete(at:)(v7, v9, type metadata accessor for DataStreamState);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DataStreamState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        specialized _NativeDictionary._delete(at:)(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaSet.count.getter();
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAG19ImageEmbeddingCacheC0J033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AG10LinkedListAKLLV4NodeCyAI0T4DataAKLLVyAqU_G_GTt1g5(v5, v7);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = v9;

  v12 = *(*(v8 + 56) + 8 * v11);
  specialized _NativeDictionary._delete(at:)(v11, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for UUID();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = a2(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    specialized _NativeDictionary._delete(at:)(v18, v15, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a2(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAG19ImageEmbeddingCacheC0J033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AG10LinkedListAKLLV4NodeCyAI0T4DataAKLLVyAqU_G_GTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GAC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    for (; __CocoaDictionary.Iterator.next()(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAA19ImageEmbeddingCacheC0F033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GMd);
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10LinkedList33_8DC87293709CC156815E18BD803FE0EELLV4NodeCyAA13AsyncLRUCacheC9CacheDataACLLVyAA014ImageEmbeddingO0C3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation0P0VG_G_GMd);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9 + 1, 1);
        v2 = v16;
      }

      Hasher.init(_seed:)();
      MEMORY[0x223D8F420](*(v15 + 48));
      result = Hasher._finalize()();
      v4 = v2 + 64;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 64 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v15;
      *(*(v2 + 56) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x223D8F420](*(v9 + 48));
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized MaskedLanguageModel.init(_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v17[3] = type metadata accessor for ToolCallLanguageModel();
  v17[4] = &protocol witness table for ToolCallLanguageModel;
  v17[0] = a1;
  v6 = MEMORY[0x277D84F90];
  *(a3 + 16) = MEMORY[0x277D84F90];
  outlined init with copy of DeterministicLanguageModelProtocol(v17, a3 + 24);
  outlined init with copy of DeterministicLanguageModelProtocol(a2, a3 + 64);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v6);
  swift_beginAccess();
  v11 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *(a3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[24 * v14];
  *(v15 + 4) = 0;
  *(v15 + 5) = v9;
  *(v15 + 6) = v10;
  *(a3 + 16) = v11;
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a3;
}

uint64_t specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v23[3] = type metadata accessor for SpeculativeStreamingLanguageModel();
  v23[4] = &protocol witness table for SpeculativeStreamingLanguageModel;
  v23[0] = a1;
  v8 = *a2;
  *(a4 + 152) = MEMORY[0x277D84F90];
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  outlined init with copy of DeterministicLanguageModelProtocol(v23, a4 + 16);
  swift_beginAccess();
  v9 = a1[5];
  v10 = a1[6];
  v11 = __swift_project_boxed_opaque_existential_1(a1 + 2, v9);
  v12 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = (*(v10 + 8))(v9, v10);
  (*(v12 + 8))(v14, v9);
  *(a4 + 56) = v15;
  *(a4 + 144) = v8;
  outlined init with copy of DeterministicLanguageModelProtocol(a3, a4 + 64);
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  (*(v17 + 32))(v21, v16, v17);
  v18 = v21[1];
  *(a4 + 104) = v21[0];
  *(a4 + 120) = v18;
  *(a4 + 136) = v22;
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return a4;
}

uint64_t specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.device);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
    v13 = "Read stop token from overrides %{public}s";
LABEL_6:
    _os_log_impl(&dword_220940000, v9, v10, v13, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223D90A10](v12, -1, -1);
    MEMORY[0x223D90A10](v11, -1, -1);
LABEL_13:

    return dispatch thunk of TokenizerRunner.tokenID(forText:)();
  }

  if (a6 == 1)
  {
LABEL_9:
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.device);
    v9 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x3E626F653CLL, 0xE500000000000000, &v29);
      _os_log_impl(&dword_220940000, v9, v15, "Using default stop token %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x223D90A10](v17, -1, -1);
      MEMORY[0x223D90A10](v16, -1, -1);
    }

    goto LABEL_13;
  }

  if (a4)
  {
    if (a6)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.device);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      outlined consume of StopToken?(a3, a4, a5, a6);
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_13;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v29);
      v13 = "Found string value of stop token in model catalog %{public}s";
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.device);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a3;
    _os_log_impl(&dword_220940000, v26, v27, "Found int value of stop token in model catalog %ld", v28, 0xCu);
    MEMORY[0x223D90A10](v28, -1, -1);
  }

  return a3;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(uint64_t a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.device);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x3E626F653CLL, 0xE500000000000000, &v13);
      _os_log_impl(&dword_220940000, v3, v4, "Using default start tool call token %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x223D90A10](v6, -1, -1);
      MEMORY[0x223D90A10](v5, -1, -1);
    }

    return dispatch thunk of TokenizerRunner.tokenID(forText:)();
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.device);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_220940000, v10, v11, "Read start tool call token from overrides %{public}ld", v12, 0xCu);
      MEMORY[0x223D90A10](v12, -1, -1);
    }

    return a1;
  }
}

uint64_t outlined destroy of InferenceRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.modelPath.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.adapterPath.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.mutableWeightSymbolName.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.tokenizerPath.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.stopToken.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.disablePromptCaching.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftModelPath.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftSteps.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftIsAdaptive.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftTreeFactor.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftSecondaryTreeFactor.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftUseMaximumLikelihoodTree.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

unint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftSoftMatchTolerance.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySfGMd);
  Overridable.wrappedValue.getter();
  return v1 | (v2 << 32);
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.endPromptToken.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.speculativeSampling.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftEarlyReturn.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.promptLookupDraftSteps.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

unint64_t protocol witness for OnDeviceInferenceOverridesProtocol.draftEarlyReturnProbabilityThreshold.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySfGMd);
  Overridable.wrappedValue.getter();
  return v1 | (v2 << 32);
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.allowPromptTemplateFallback.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.startOfImageTokenID.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.endOfImageTokenID.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.startToolCallTokenID.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for OnDeviceInferenceOverridesProtocol.imageEmbeddingCacheBytes.getter in conformance OnDeviceInferenceOverrides()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  Overridable.wrappedValue.getter();
  return v1;
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtMd);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v5;
      v12 = type metadata accessor for TokenizedPromptModule();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      result = v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        outlined init with take of Asset?(v7, a1, &_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtMd);
        return (*(v19 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of [Int](v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of [Int](a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of [Int](a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of [Int](v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of [Int](a3, &_sScPSgMd);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of [Int](a3, &_sScPSgMd);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t RequestMetadata.shouldDetokenizeRenderedPrompt.getter()
{
  v0 = RequestMetadata.userInfo.getter();
  ShouldDetokenizeRendered = static RequestMetadata.userInfoKeyShouldDetokenizeRenderedPrompt.getter();
  if (*(v0 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(ShouldDetokenizeRendered, v2);
    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t OnDeviceInferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  OnDeviceInferenceProvider.init()();
  return v0;
}

uint64_t OnDeviceInferenceProvider.init()()
{
  v1 = type metadata accessor for OnDeviceInferenceProviderDataSource();
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000023;
  *(v2 + 24) = 0x8000000220AFD920;
  v11[3] = v1;
  v11[4] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v11[0] = v2;
  type metadata accessor for TG_OnDeviceInferenceProvider();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v1);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = specialized TG_OnDeviceInferenceProvider.init(dataSource:shouldDoVersionCheck:)(*v6, 0, v3);
  __swift_destroy_boxed_opaque_existential_1(v11);
  *(v0 + 16) = v8;
  return v0;
}

uint64_t OnDeviceInferenceProvider.transitionAsset(withIdentifier:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for InferenceError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderAssetDescriptor();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceProvider.transitionAsset(withIdentifier:to:), 0, 0);
}

uint64_t OnDeviceInferenceProvider.transitionAsset(withIdentifier:to:)()
{

  InferenceProviderAssetDescriptor.init(identifier:version:)();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = OnDeviceInferenceProvider.transitionAsset(withIdentifier:to:);
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[4];

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(v2, v4, v3);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](OnDeviceInferenceProvider.transitionAsset(withIdentifier:to:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY5_()
{
  v1 = *(v0 + 48);
  (*(v0 + 192))(*(v0 + 120), *(v0 + 152), *(v0 + 96));
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
  *(v0 + 208) = v2;
  v3 = *v2;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY8_, v3, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ6_()
{

  if (v0)
  {
    v1 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY11_;
  }

  else
  {
    v1 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY8_()
{
  v1 = OnDeviceInferenceAssetRepository.dumpState()();
  v0[1] = v1;
  v0[13]._object = v1._object;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY9_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY9_()
{
  v25 = v0;
  v23 = *(v0[13] + 16);
  v23(v0[14], v0[15], v0[12]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = v0[2];
    v20 = v0[27];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v6 = 136315394;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    v7 = Error.localizedDescription.getter();
    v9 = v8;
    v22 = *(v3 + 8);
    v22(v4, v5);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_220940000, v1, v2, "Encountered error during asset transition: %s. Asset repository state at the time: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  else
  {
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];

    v22 = *(v12 + 8);
    v22(v13, v14);
  }

  v15 = v0[15];
  v16 = v0[12];
  v23(v0[7], v15, v16);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v22(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY10_()
{
  v1 = *(v0[13] + 32);
  v1(v0[19], v0[18], v0[12]);
  v2 = v0[6];
  v1(v0[15], v0[19], v0[12]);
  v3 = __swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
  v0[26] = v3;
  v4 = *v3;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY8_, v4, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY11_()
{
  v1 = *(v0[13] + 32);
  v1(v0[19], v0[16], v0[12]);
  v2 = v0[6];
  v1(v0[15], v0[19], v0[12]);
  v3 = __swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
  v0[26] = v3;
  v4 = *v3;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY8_, v4, 0);
}

uint64_t OnDeviceInferenceProvider.requestStream(clientData:configuration:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  v12 = MEMORY[0x28223BE20](v35);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v32 - v14;
  TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(a1, a2, 0, &v32 - v14);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.device);
  v16 = *(v6 + 16);
  v37 = v11;
  v16(v9, v11, v5);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v6 + 8);
    v25(v9, v38);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v39);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_220940000, v17, v18, "Received streaming request %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    v27 = v20;
    v5 = v38;
    MEMORY[0x223D90A10](v27, -1, -1);
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v9, v5);
  }

  v28 = v34;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v34, v33, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy24TokenGenerationInference10DataStreamVy0dE021PromptCompletionEvent_pG10Foundation0G0VGMd);
  v30 = v36;
  v36[3] = v29;
  v30[4] = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<DataStream<PromptCompletionEvent>, Data> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy24TokenGenerationInference10DataStreamVy0dE021PromptCompletionEvent_pG10Foundation0G0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v30);
  lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type DataStream<PromptCompletionEvent> and conformance DataStream<A>, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  AsyncMapSequence.init(_:transform:)();
  v25(v37, v5);
  return outlined destroy of [Int](v28, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
}

uint64_t TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v81 = a3;
  v91 = a2;
  v77 = a1;
  v82 = a4;
  v97 = type metadata accessor for ClientData();
  v80 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v78 = v6;
  v96 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for InferenceProviderRequestConfiguration();
  v79 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v74 = v7;
  v92 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices10AuditTokenVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v90 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v23 = v12[2];
  v95 = v20;
  v23(v20, v22, v11);
  v72 = v23;
  v23(v17, v22, v11);
  v75 = v5;
  v24 = *(v5 + 176);
  type metadata accessor for DataStreamCancellationHandler();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v26 = swift_allocObject();
  v99 = 0;

  TokenMask.subscript.read(&v99);
  *(v26 + 16) = v99;
  *(v25 + 24) = v26;
  v93 = v12;
  v27 = v12[4];
  v85 = v17;
  v87 = v27;
  v88 = v12 + 4;
  v27(v25 + OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_requestUUID, v17, v11);
  v98 = v25;
  *(v25 + OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_dataStreamStateManager) = v24;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  v28 = v22;
  v71 = UUID.uuidString.getter();
  v70 = v29;
  v86 = swift_allocObject();
  *(v86 + 16) = -1;
  InferenceProviderRequestConfiguration.auditToken.getter();
  v30 = type metadata accessor for AuditToken();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v10, 1, v30);
  if (v32 == 1)
  {
    outlined destroy of [Int](v10, &_s20ModelManagerServices10AuditTokenVSgMd);
    v68 = 0;
  }

  else
  {
    v68 = AuditToken.realUserIdentifier.getter();
    (*(v31 + 8))(v10, v30);
  }

  v67 = v32 == 1;
  v84 = swift_allocObject();
  *(v84 + 16) = 1;
  v66 = swift_allocObject();
  *(v66 + 16) = 1;
  v65 = swift_allocObject();
  *(v65 + 16) = 1;
  v64 = swift_allocObject();
  *(v64 + 16) = 1;
  v63 = swift_allocObject();
  *(v63 + 16) = 1;
  v33 = swift_allocObject();
  swift_weakInit();
  v69 = v28;
  v34 = v72;
  v72(v85, v28, v11);
  v35 = v79;
  (*(v79 + 16))(v92, v91, v94);
  v36 = v80;
  (*(v80 + 16))(v96, v77, v97);
  v34(v90, v95, v11);
  v37 = *(v93 + 80);
  v83 = v11;
  v38 = (v37 + 24) & ~v37;
  v39 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v35 + 80) + v40 + 8) & ~*(v35 + 80);
  v57 = (v74 + *(v36 + 80) + v41) & ~*(v36 + 80);
  v59 = (v78 + v37 + v57) & ~v37;
  v72 = (v59 + v13);
  v42 = (v59 + v13) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v42 + 27) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v42 + 39) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v33;
  v44 = v43 + v38;
  v45 = v83;
  v46 = v87;
  v87(v44, v85, v83);
  *(v43 + v39) = v98;
  *(v43 + v40) = v84;
  (*(v35 + 32))(v43 + v41, v92, v94);
  (*(v36 + 32))(v43 + v57, v96, v97);
  v46(v43 + v59, v90, v45);
  *(v72 + v43) = v81 & 1;
  v47 = v43 + v42;
  v48 = v70;
  *(v47 + 8) = v71;
  *(v47 + 16) = v48;
  v49 = v43 + v91;
  *v49 = v68;
  *(v49 + 4) = v67;
  *(v43 + v78) = v76;
  *(v43 + v77) = v86;
  *(v43 + v75) = v89;
  *(v43 + v74) = v73;
  *(v43 + v62) = v66;
  *(v43 + v61) = v63;
  *(v43 + v60) = v65;
  *(v43 + v58) = v64;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd);
  v50 = v82;
  AsyncThrowingStream.init<>(unfolding:)();
  v51 = v83;
  (v93[1])(v95, v83);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  v87(v50 + *(v52 + 32), v69, v51);

  v53 = (v50 + *(v52 + 28));
  v54 = v98;
  *v53 = partial apply for closure #2 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  v53[1] = v54;
}

uint64_t closure #1 in OnDeviceInferenceProvider.requestStream(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for CompletePromptResponseElement();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in OnDeviceInferenceProvider.requestStream(clientData:configuration:), 0, 0);
}

uint64_t closure #1 in OnDeviceInferenceProvider.requestStream(clientData:configuration:)()
{
  outlined init with copy of DeterministicLanguageModelProtocol(v0[8], (v0 + 2));
  CompletePromptResponseElement.init(_:)();
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, MEMORY[0x277D71D38]);
  v1 = static Serialization.encode<A>(_:)();
  v3 = v2;
  v4 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  *v4 = v1;
  v4[1] = v3;

  v5 = v0[1];

  return v5();
}

uint64_t OnDeviceInferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for InferenceError.Context();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for ClientData();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceProvider.requestOneShot(clientData:configuration:), 0, 0);
}

uint64_t OnDeviceInferenceProvider.requestOneShot(clientData:configuration:)()
{
  v2 = v0[2];
  v1 = v0[3];
  outlined copy of Data._Representation(v2, v1);
  MEMORY[0x223D8D930](v2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = OnDeviceInferenceProvider.requestOneShot(clientData:configuration:);
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v7 = v0[4];

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKF(v4, v5, v7, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);

  v6 = *(v4 + 8);
  *(v2 + 136) = v6;
  *(v2 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = OnDeviceInferenceProvider.requestOneShot(clientData:configuration:);
  }

  else
  {
    v7 = OnDeviceInferenceProvider.requestOneShot(clientData:configuration:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = ClientData.data.getter();
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[8];
  if (v2 >> 60 == 15)
  {
    v17 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v9 = v0[6];
    v8 = v0[7];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v11 = v10;
    (*(v8 + 16))(v10, v5, v9);
    (*(v7 + 104))(v11, *MEMORY[0x277D29DA8], v6);
    swift_willThrow();
    (*(v8 + 8))(v5, v9);
    v3(v4, v17);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v1;
    v15 = v2;
    v3(v0[15], v0[12]);

    v16 = v0[1];

    return v16(v14, v15);
  }
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[8] = a4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for InferenceProviderRequestConfiguration();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for InferenceError.Context();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for CompileAdapterResponse();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for CompileAdapterRequest();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for ClassifyPromptTemplateRequest();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v11 = type metadata accessor for ClassifyPromptResponse();
  v5[25] = v11;
  v5[26] = *(v11 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v12 = type metadata accessor for ClassificationParameters();
  v5[29] = v12;
  v5[30] = *(v12 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v13 = type metadata accessor for ClassificationResponse();
  v5[33] = v13;
  v5[34] = *(v13 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v14 = type metadata accessor for ClassifyPromptRequest();
  v5[40] = v14;
  v5[41] = *(v14 - 8);
  v5[42] = swift_task_alloc();
  ModelMetadataResponse = type metadata accessor for FetchModelMetadataResponse();
  v5[43] = ModelMetadataResponse;
  v5[44] = *(ModelMetadataResponse - 8);
  v5[45] = swift_task_alloc();
  ModelMetadataRequest = type metadata accessor for FetchModelMetadataRequest();
  v5[46] = ModelMetadataRequest;
  v5[47] = *(ModelMetadataRequest - 8);
  v5[48] = swift_task_alloc();
  TokenizerMetadataResponse = type metadata accessor for FetchTokenizerMetadataResponse();
  v5[49] = TokenizerMetadataResponse;
  v5[50] = *(TokenizerMetadataResponse - 8);
  v5[51] = swift_task_alloc();
  TokenizerMetadataRequest = type metadata accessor for FetchTokenizerMetadataRequest();
  v5[52] = TokenizerMetadataRequest;
  v5[53] = *(TokenizerMetadataRequest - 8);
  v5[54] = swift_task_alloc();
  v19 = type metadata accessor for CompletePromptResponse();
  v5[55] = v19;
  v5[56] = *(v19 - 8);
  v5[57] = swift_task_alloc();
  v20 = type metadata accessor for PromptCompletion();
  v5[58] = v20;
  v5[59] = *(v20 - 8);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  v5[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v21 = type metadata accessor for PromptTemplateInfo();
  v5[67] = v21;
  v5[68] = *(v21 - 8);
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v22 = type metadata accessor for CountTokensPromptTemplateRequest();
  v5[73] = v22;
  v5[74] = *(v22 - 8);
  v5[75] = swift_task_alloc();
  v23 = type metadata accessor for InferenceError();
  v5[76] = v23;
  v5[77] = *(v23 - 8);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v24 = type metadata accessor for RequestMetadata();
  v5[88] = v24;
  v5[89] = *(v24 - 8);
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v25 = type metadata accessor for Prompt();
  v5[94] = v25;
  v5[95] = *(v25 - 8);
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v26 = type metadata accessor for CountTokensRequest();
  v5[100] = v26;
  v5[101] = *(v26 - 8);
  v5[102] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd);
  v5[103] = swift_task_alloc();
  v27 = type metadata accessor for XPCDictionary();
  v5[104] = v27;
  v5[105] = *(v27 - 8);
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd);
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v5[110] = swift_task_alloc();
  v28 = type metadata accessor for XPCCodableObject();
  v5[111] = v28;
  v5[112] = *(v28 - 8);
  v5[113] = swift_task_alloc();
  v5[114] = swift_task_alloc();
  v29 = type metadata accessor for RequestPayload();
  v5[115] = v29;
  v5[116] = *(v29 - 8);
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v30 = type metadata accessor for UUID();
  v5[122] = v30;
  v5[123] = *(v30 - 8);
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY0_()
{
  v206 = v0;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[123];
  v4 = v0[122];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.device);
  v199 = *(v3 + 16);
  v199(v2, v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[128];
  v10 = v0[123];
  v11 = v0[122];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v204 = v202;
    *v12 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v204);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_220940000, v6, v7, "Received one shot request %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v202);
    MEMORY[0x223D90A10](v202, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[130] = v16;
  v18 = ClientData.data.getter();
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v19 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = v19;
  }

  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type RequestPayload and conformance RequestPayload, MEMORY[0x277D71BC0]);
  static Serialization.decode<A>(_:from:)();
  v203 = v16;
  v22 = v0[112];
  v23 = v0[111];
  v24 = v0[110];
  outlined consume of Data._Representation(v20, v21);
  ClientData.xpcData.getter();
  v25 = *(v22 + 48);
  if (v25(v24, 1, v23) == 1)
  {
    outlined destroy of [Int](v0[110], &_s3XPC16XPCCodableObjectVSgMd);
  }

  else
  {
    (*(v0[112] + 32))(v0[114], v0[110], v0[111]);
    XPCCodableObject.copyUnderlyingXPCObject()();
    v28 = MEMORY[0x223D90BE0]();
    if (v28 == XPC_TYPE_DICTIONARY.getter())
    {
      v195 = v0[114];
      v29 = v0[112];
      v30 = v0[111];
      v31 = v0[107];
      v32 = v0[105];
      v33 = v0[104];
      swift_unknownObjectRetain();
      XPCDictionary.init(_:)();
      RequestPayload.revive(withXpcData:)();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v31, v33);
      (*(v29 + 8))(v195, v30);
    }

    else
    {
      (*(v0[112] + 8))(v0[114], v0[111]);
      swift_unknownObjectRelease();
    }
  }

  v34 = v0[111];
  v35 = v0[109];
  v36 = v0[108];
  (*(v0[116] + 32))(v0[121], v0[120], v0[115]);
  ClientData.xpcData.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v35, v36, &_s3XPC16XPCCodableObjectVSgMd);
  v37 = 1;
  if (v25(v36, 1, v34) != 1)
  {
    v38 = v0[113];
    v39 = v0[112];
    v40 = v0[111];
    (*(v39 + 32))(v38, v0[108], v40);
    XPCCodableObject.copyUnderlyingXPCObject()();
    XPCDictionary.init(_:)();
    (*(v39 + 8))(v38, v40);
    v37 = 0;
  }

  v41 = v0[105];
  v42 = v0[104];
  v43 = v0[103];
  outlined destroy of [Int](v0[109], &_s3XPC16XPCCodableObjectVSgMd);
  (*(v41 + 56))(v43, v37, 1, v42);
  v44 = *(v41 + 48);
  if (v44(v43, 1, v42) == 1)
  {
    v45 = v0[104];
    v46 = v0[103];
    XPCDictionary.init()();
    if (v44(v46, 1, v45) != 1)
    {
      outlined destroy of [Int](v0[103], &_s3XPC13XPCDictionaryVSgMd);
    }
  }

  else
  {
    (*(v0[105] + 32))(v0[106], v0[103], v0[104]);
  }

  v47 = v0[119];
  v48 = v0[116];
  v49 = v0[115];
  v50 = *(v48 + 16);
  v50(v47, v0[121], v49);
  v51 = (*(v48 + 88))(v47, v49);
  if (v51 == *MEMORY[0x277D71B98])
  {
    v52 = v0[119];
    v54 = v0[47];
    v53 = v0[48];
    v55 = v0[46];
    (*(v0[116] + 96))(v52, v0[115]);
    (*(v54 + 32))(v53, v52, v55);
    v56 = swift_task_alloc();
    v0[144] = v56;
    *v56 = v0;
    v56[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ14_;
    v57 = v0[81];
    v58 = v0[48];
    v59 = v0[45];
    v60 = v0[6];

    return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKF(v59, v58, v60, v57);
  }

  if (v51 == *MEMORY[0x277D71B78])
  {
    v61 = v0[129];
    v62 = v0[127];
    v63 = v0[122];
    v64 = v0[119];
    v65 = v0[102];
    v66 = v0[101];
    v67 = v0[100];
    (*(v0[116] + 96))(v64, v0[115]);
    (*(v66 + 32))(v65, v64, v67);
    v199(v62, v61, v63);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[127];
    v72 = v0[122];
    if (v70)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v204 = v74;
      *v73 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v203(v71, v72);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v204);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_220940000, v68, v69, "Handling request %{public}s as count tokens request", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x223D90A10](v74, -1, -1);
      MEMORY[0x223D90A10](v73, -1, -1);
    }

    else
    {

      v203(v71, v72);
    }

    CountTokensRequest.prompt.getter();
    CountTokensRequest.metadata.getter();
    v97 = swift_task_alloc();
    v0[131] = v97;
    *v97 = v0;
    v97[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ1_;
    v98 = v0[129];
    v99 = v0[99];
    v100 = v0[93];
    v101 = v0[87];
    v102 = v0[6];
    v103 = v0[4];

    return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKF(v103, v98, v99, v102, v100, v101);
  }

  if (v51 == *MEMORY[0x277D71BB8])
  {
    v79 = v0[129];
    v80 = v0[126];
    v81 = v0[122];
    v82 = v0[119];
    v83 = v0[75];
    v84 = v0[74];
    v85 = v0[73];
    (*(v0[116] + 96))(v82, v0[115]);
    (*(v84 + 32))(v83, v82, v85);
    v199(v80, v79, v81);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v0[126];
    v90 = v0[122];
    if (v88)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v204 = v92;
      *v91 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v203(v89, v90);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v204);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_220940000, v86, v87, "Handling request %{public}s as count tokens template request", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x223D90A10](v92, -1, -1);
      MEMORY[0x223D90A10](v91, -1, -1);
    }

    else
    {

      v203(v89, v90);
    }

    __swift_project_boxed_opaque_existential_1((v0[7] + 136), *(v0[7] + 160));
    v125 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    v127 = v126;
    v0[132] = v126;
    v128 = swift_task_alloc();
    v0[133] = v128;
    *v128 = v0;
    v128[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ3_;
    v129 = v0[85];
    v130 = v0[72];
    goto LABEL_51;
  }

  if (v51 == *MEMORY[0x277D71B90] || v51 == *MEMORY[0x277D71BA8])
  {
    v113 = v0[119];
    v114 = v0[116];
    v115 = v0[115];
    v116 = v0[64];
    v117 = v0[6];
    v118 = v0[5];
    v119 = *(v114 + 8);
    v0[138] = v119;
    v0[139] = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v119(v113, v115);
    TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(v118, v117, 1, v116);
    v120 = swift_task_alloc();
    v0[140] = v120;
    v121 = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type DataStream<PromptCompletionEvent> and conformance DataStream<A>, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
    *v120 = v0;
    v120[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ10_;
    v123 = v0[63];
    v122 = v0[64];
    v124 = v0[61];

    return MEMORY[0x2821D99A0](v124, v122, v123, v121);
  }

  else if (v51 == *MEMORY[0x277D71BB0])
  {
    v104 = v0[119];
    v106 = v0[53];
    v105 = v0[54];
    v107 = v0[52];
    (*(v0[116] + 96))(v104, v0[115]);
    (*(v106 + 32))(v105, v104, v107);
    v108 = swift_task_alloc();
    v0[142] = v108;
    *v108 = v0;
    v108[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ12_;
    v109 = v0[82];
    v110 = v0[54];
    v111 = v0[51];
    v112 = v0[6];

    return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKF(v111, v110, v112, v109);
  }

  else if (v51 == *MEMORY[0x277D71B80])
  {
    v131 = v0[119];
    v133 = v0[41];
    v132 = v0[42];
    v134 = v0[40];
    (*(v0[116] + 96))(v131, v0[115]);
    (*(v133 + 32))(v132, v131, v134);
    ClassifyPromptRequest.tgPrompt.getter();
    ClassifyPromptRequest.parameters.getter();
    ClassifyPromptRequest.metadata.getter();
    v135 = swift_task_alloc();
    v0[146] = v135;
    *v135 = v0;
    v135[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ16_;
    v136 = v0[97];
    v137 = v0[91];
    v138 = v0[38];
    v139 = v0[32];
    v140 = v0[6];

    return TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:)(v138, v136, v139, v137, v140);
  }

  else
  {
    if (v51 == *MEMORY[0x277D71BA0])
    {
      v141 = v0[119];
      v143 = v0[23];
      v142 = v0[24];
      v144 = v0[22];
      v145 = v0[7];
      (*(v0[116] + 96))(v141, v0[115]);
      (*(v143 + 32))(v142, v141, v144);
      __swift_project_boxed_opaque_existential_1((v145 + 136), *(v145 + 160));
      v125 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
      v127 = v146;
      v0[148] = v146;
      v147 = swift_task_alloc();
      v0[149] = v147;
      *v147 = v0;
      v147[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ18_;
      v129 = v0[79];
      v130 = v0[71];
LABEL_51:

      return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKF(v130, v125, v127, v129);
    }

    if (v51 == *MEMORY[0x277D71B88])
    {
      v148 = v0[119];
      v150 = v0[20];
      v149 = v0[21];
      v151 = v0[19];
      (*(v0[116] + 96))(v148, v0[115]);
      (*(v150 + 32))(v149, v148, v151);
      v152 = swift_task_alloc();
      v0[155] = v152;
      *v152 = v0;
      v152[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ25_;
      v153 = v0[21];
      v154 = v0[17];
      v155 = v0[6];

      return TG_OnDeviceInferenceProvider.compileAdapter(request:configuration:)(v154, v153, v155);
    }

    else
    {
      v156 = v0[121];
      v157 = v0[118];
      v158 = v0[115];
      v199(v0[125], v0[129], v0[122]);
      v50(v157, v156, v158);
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.error.getter();
      v161 = os_log_type_enabled(v159, v160);
      v162 = v0[125];
      v163 = v0[122];
      v164 = v0[118];
      if (v161)
      {
        v196 = v160;
        v165 = v0[116];
        v198 = v0[117];
        v200 = v0[115];
        v166 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v204 = v193;
        *v166 = 136315395;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v191 = v159;
        v167 = dispatch thunk of CustomStringConvertible.description.getter();
        v168 = v164;
        v170 = v169;
        v203(v162, v163);
        v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v170, &v204);

        *(v166 + 4) = v171;
        *(v166 + 12) = 2085;
        v50(v198, v168, v200);
        v172 = v200;
        v173 = String.init<A>(describing:)();
        v175 = v174;
        v201 = *(v165 + 8);
        v201(v168, v172);
        v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v175, &v204);

        *(v166 + 14) = v176;
        _os_log_impl(&dword_220940000, v191, v196, "Failing request%s unhandled request type %{sensitive}s", v166, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v193, -1, -1);
        MEMORY[0x223D90A10](v166, -1, -1);
      }

      else
      {
        v177 = v0[116];
        v178 = v0[115];

        v201 = *(v177 + 8);
        v201(v164, v178);
        v203(v162, v163);
      }

      v192 = v0[122];
      v194 = v0[129];
      v197 = v0[119];
      v179 = v0[115];
      v190 = v0[106];
      v180 = v0[105];
      v188 = v0[121];
      v189 = v0[104];
      v181 = v0[77];
      v182 = v0[76];
      v183 = v0[13];
      v184 = v0[14];
      v187 = v0[12];
      v185 = v0[8];
      v204 = 0;
      v205 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v186 = v205;
      v0[2] = v204;
      v0[3] = v186;
      MEMORY[0x223D8E780](0xD000000000000012, 0x8000000220AFD9F0);
      _print_unlocked<A, B>(_:_:)();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v183 + 16))(v185, v184, v187);
      (*(v181 + 104))(v185, *MEMORY[0x277D29DD0], v182);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v183 + 8))(v184, v187);
      (*(v180 + 8))(v190, v189);
      v201(v188, v179);
      v203(v194, v192);
      v201(v197, v179);

      v26 = v0[1];

      return v26();
    }
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ1_()
{
  v2 = *v1;

  v3 = v2[99];
  v4 = v2[95];
  v5 = v2[94];
  (*(v2[89] + 8))(v2[93], v2[88]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY27_;
  }

  else
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY2_()
{
  v1 = v0[116];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  (*(v0[101] + 8))(v0[102], v0[100]);
  (*(v3 + 8))(v2, v4);
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[122];
  (*(v1 + 8))(v0[121], v0[115]);
  v5(v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[86];
    v4 = v2[85];
    v5 = v2[77];
    v6 = v2[76];

    v7 = *(v5 + 32);
    v2[135] = v7;
    v2[136] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v7(v3, v4, v6);
    v8 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY6_;
  }

  else
  {

    v8 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY4_()
{
  CountTokensPromptTemplateRequest.promptTemplateInfo.getter();
  CountTokensPromptTemplateRequest.prompt.getter();
  v1 = swift_task_alloc();
  v0[134] = v1;
  *v1 = v0;
  v1[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ5_;
  v2 = v0[98];
  v3 = v0[84];
  v4 = v0[72];
  v5 = v0[70];
  v6 = v0[66];

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKF(v2, v5, v4, v6, v3);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ5_()
{
  v2 = *v1;

  v3 = v2[70];
  v4 = v2[68];
  v5 = v2[67];
  outlined destroy of [Int](v2[66], &_s15TokenGeneration6PromptVSgMd);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY28_;
  }

  else
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY7_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY6_()
{
  v15 = v0[135];
  v13 = v0[129];
  v14 = v0[130];
  v12 = v0[122];
  v1 = v0[121];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[86];
  v8 = v0[76];
  v9 = v0[8];
  (*(v0[74] + 8))(v0[75], v0[73]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v14(v13, v12);
  v15(v9, v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY7_()
{
  CountTokensPromptTemplateRequest.metadata.getter();
  v1 = swift_task_alloc();
  v0[137] = v1;
  *v1 = v0;
  v1[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ8_;
  v2 = v0[129];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[83];
  v6 = v0[6];
  v7 = v0[4];

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKF(v7, v2, v3, v6, v4, v5);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ8_()
{
  v2 = *v1;

  (*(v2[89] + 8))(v2[92], v2[88]);
  if (v0)
  {
    v3 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY29_;
  }

  else
  {
    v3 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY9_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY9_()
{
  v1 = v0[116];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  (*(v0[95] + 8))(v0[98], v0[94]);
  outlined destroy of [Int](v8, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = v0[130];
  v10 = v0[129];
  v11 = v0[122];
  (*(v1 + 8))(v0[121], v0[115]);
  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ10_()
{
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY36_;
  }

  else
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY11_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY11_()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 496);
  v4 = *(v0 + 472);
  v3 = *(v0 + 480);
  v5 = *(v0 + 464);
  (*(v4 + 32))(v2, *(v0 + 488), v5);
  (*(v4 + 16))(v3, v2, v5);
  CompletePromptResponse.init(completion:)();
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, MEMORY[0x277D71CC8]);
  v6 = static Serialization.encode<A>(_:)();
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {
    v21 = *(v0 + 848);
    v8 = *(v0 + 840);
    v9 = *(v0 + 832);
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 464);
    v13 = *(v0 + 472);
    v14 = *(v0 + 448);
    v15 = *(v0 + 456);
    v16 = *(v0 + 440);
    MEMORY[0x223D8D930](v6);
    (*(v14 + 8))(v15, v16);
    (*(v13 + 8))(v11, v12);
    outlined destroy of [Int](v10, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
    (*(v8 + 8))(v21, v9);
    v17 = *(v0 + 1040);
    v18 = *(v0 + 1032);
    v19 = *(v0 + 976);
    (*(v0 + 1104))(*(v0 + 968), *(v0 + 920));
    v17(v18, v19);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ12_()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY30_;
  }

  else
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY13_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY13_()
{
  v1 = v0[143];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse, MEMORY[0x277D71D48]);
  v2 = static Serialization.encode<A>(_:)();
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {
    v17 = v0[116];
    v4 = v0[106];
    v5 = v0[105];
    v6 = v0[104];
    v8 = v0[53];
    v7 = v0[54];
    v10 = v0[51];
    v9 = v0[52];
    v11 = v0[49];
    v12 = v0[50];
    MEMORY[0x223D8D930](v2);
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v13 = v0[130];
    v14 = v0[129];
    v15 = v0[122];
    (*(v17 + 8))(v0[121], v0[115]);
    v13(v14, v15);

    v16 = v0[1];

    return v16();
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ14_()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY31_;
  }

  else
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY15_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY15_()
{
  v1 = v0[145];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse, MEMORY[0x277D71D20]);
  v2 = static Serialization.encode<A>(_:)();
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {
    v17 = v0[116];
    v4 = v0[106];
    v5 = v0[105];
    v6 = v0[104];
    v8 = v0[47];
    v7 = v0[48];
    v10 = v0[45];
    v9 = v0[46];
    v11 = v0[43];
    v12 = v0[44];
    MEMORY[0x223D8D930](v2);
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v13 = v0[130];
    v14 = v0[129];
    v15 = v0[122];
    (*(v17 + 8))(v0[121], v0[115]);
    v13(v14, v15);

    v16 = v0[1];

    return v16();
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ16_()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  v3 = v2[97];
  v4 = v2[95];
  v5 = v2[94];
  v6 = v2[32];
  v7 = v2[30];
  v8 = v2[29];
  (*(v2[89] + 8))(v2[91], v2[88]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY32_;
  }

  else
  {
    v9 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY17_;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY17_()
{
  v1 = v0[147];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[33];
  v5 = v0[34];
  (*(v5 + 32))(v2, v0[38], v4);
  (*(v5 + 16))(v3, v2, v4);
  ClassifyPromptResponse.init(response:)();
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, MEMORY[0x277D71C70]);
  v6 = static Serialization.encode<A>(_:)();
  if (v1)
  {
    (*(v0[26] + 8))(v0[28], v0[25]);

    return swift_unexpectedError();
  }

  else
  {
    v23 = v0[106];
    v24 = v0[116];
    v9 = v0[105];
    v10 = v0[41];
    v21 = v0[42];
    v22 = v0[104];
    v12 = v0[39];
    v11 = v0[40];
    v14 = v0[33];
    v13 = v0[34];
    v15 = v6;
    v16 = v7;
    (*(v0[26] + 8))(v0[28], v0[25]);
    MEMORY[0x223D8D930](v15, v16);
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v21, v11);
    (*(v9 + 8))(v23, v22);
    v17 = v0[130];
    v18 = v0[129];
    v19 = v0[122];
    (*(v24 + 8))(v0[121], v0[115]);
    v17(v18, v19);

    v20 = v0[1];

    return v20();
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ18_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[80];
    v4 = v2[79];
    v5 = v2[77];
    v6 = v2[76];

    v7 = *(v5 + 32);
    v2[151] = v7;
    v2[152] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v7(v3, v4, v6);
    v8 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY21_;
  }

  else
  {

    v8 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY19_;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY19_()
{
  ClassifyPromptTemplateRequest.promptTemplateInfo.getter();
  ClassifyPromptTemplateRequest.prompt.getter();
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ20_;
  v2 = v0[96];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[69];
  v6 = v0[65];

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKF(v2, v5, v4, v6, v3);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ20_()
{
  v2 = *v1;

  v3 = v2[69];
  v4 = v2[68];
  v5 = v2[67];
  outlined destroy of [Int](v2[65], &_s15TokenGeneration6PromptVSgMd);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY33_;
  }

  else
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY22_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY21_()
{
  v15 = v0[151];
  v13 = v0[129];
  v14 = v0[130];
  v12 = v0[122];
  v1 = v0[121];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[80];
  v8 = v0[76];
  v9 = v0[8];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v14(v13, v12);
  v15(v9, v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY22_()
{
  ClassifyPromptTemplateRequest.parameters.getter();
  ClassifyPromptTemplateRequest.metadata.getter();
  v1 = swift_task_alloc();
  v0[153] = v1;
  *v1 = v0;
  v1[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ23_;
  v2 = v0[96];
  v3 = v0[90];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[6];

  return TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:)(v4, v2, v5, v3, v6);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ23_()
{
  v2 = *v1;
  *(*v1 + 1232) = v0;

  v3 = v2[31];
  v4 = v2[30];
  v5 = v2[29];
  (*(v2[89] + 8))(v2[90], v2[88]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY34_;
  }

  else
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY24_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY24_()
{
  v1 = v0[154];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[33];
  (*(v4 + 32))(v2, v0[35], v5);
  (*(v4 + 16))(v3, v2, v5);
  ClassifyPromptResponse.init(response:)();
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, MEMORY[0x277D71C70]);
  v6 = static Serialization.encode<A>(_:)();
  if (v1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    return swift_unexpectedError();
  }

  else
  {
    v27 = v0[106];
    v28 = v0[116];
    v9 = v0[105];
    v26 = v0[104];
    v10 = v0[96];
    v11 = v0[95];
    v12 = v0[94];
    v24 = v0[36];
    v13 = v0[34];
    v21 = v0[71];
    v22 = v0[33];
    v25 = v0[24];
    v14 = v0[23];
    v23 = v0[22];
    v15 = v6;
    v16 = v7;
    (*(v0[26] + 8))(v0[27], v0[25]);
    MEMORY[0x223D8D930](v15, v16);
    (*(v11 + 8))(v10, v12);
    outlined destroy of [Int](v21, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
    (*(v13 + 8))(v24, v22);
    (*(v14 + 8))(v25, v23);
    (*(v9 + 8))(v27, v26);
    v17 = v0[130];
    v18 = v0[129];
    v19 = v0[122];
    (*(v28 + 8))(v0[121], v0[115]);
    v17(v18, v19);

    v20 = v0[1];

    return v20();
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTQ25_()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY35_;
  }

  else
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY26_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY26_()
{
  v1 = v0[156];
  (*(v0[16] + 32))(v0[18], v0[17], v0[15]);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse, MEMORY[0x277D71CB8]);
  v2 = static Serialization.encode<A>(_:)();
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {
    v17 = v0[116];
    v4 = v0[106];
    v5 = v0[105];
    v6 = v0[104];
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    MEMORY[0x223D8D930](v2);
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v13 = v0[130];
    v14 = v0[129];
    v15 = v0[122];
    (*(v17 + 8))(v0[121], v0[115]);
    v13(v14, v15);

    v16 = v0[1];

    return v16();
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY27_()
{
  v14 = v0[129];
  v15 = v0[130];
  v13 = v0[122];
  v1 = v0[121];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v12 = v0[87];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[8];
  (*(v0[101] + 8))(v0[102], v0[100]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v15(v14, v13);
  (*(v7 + 32))(v9, v12, v8);

  v10 = v0[1];

  return v10();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY28_()
{
  v17 = v0[129];
  v18 = v0[130];
  v13 = v0[121];
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v15 = v0[84];
  v16 = v0[122];
  v6 = v0[77];
  v14 = v0[76];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  v12 = v0[8];
  outlined destroy of [Int](v0[72], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v13, v2);
  v18(v17, v16);
  (*(v6 + 32))(v12, v15, v14);

  v10 = v0[1];

  return v10();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY29_()
{
  v18 = v0[129];
  v19 = v0[130];
  v17 = v0[122];
  v1 = v0[116];
  v13 = v0[115];
  v14 = v0[121];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[77];
  v15 = v0[76];
  v16 = v0[83];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v12 = v0[8];
  (*(v0[95] + 8))(v0[98], v0[94]);
  outlined destroy of [Int](v9, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v14, v13);
  v19(v18, v17);
  (*(v5 + 32))(v12, v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY30_()
{
  v14 = v0[129];
  v15 = v0[130];
  v1 = v0[121];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v12 = v0[82];
  v13 = v0[122];
  v7 = v0[77];
  v11 = v0[76];
  v8 = v0[8];
  (*(v0[53] + 8))(v0[54], v0[52]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v15(v14, v13);
  (*(v7 + 32))(v8, v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY31_()
{
  v14 = v0[129];
  v15 = v0[130];
  v1 = v0[121];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v12 = v0[81];
  v13 = v0[122];
  v7 = v0[77];
  v11 = v0[76];
  v8 = v0[8];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v15(v14, v13);
  (*(v7 + 32))(v8, v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY32_()
{
  v1 = v0[147];
  v14 = v0[129];
  v15 = v0[130];
  v13 = v0[122];
  v2 = v0[116];
  v11 = v0[115];
  v12 = v0[121];
  v10 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  convertToInferenceError(_:)(v1, v0[8]);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  v15(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY33_()
{
  v17 = v0[129];
  v18 = v0[130];
  v13 = v0[121];
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v15 = v0[78];
  v16 = v0[122];
  v6 = v0[77];
  v14 = v0[76];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];
  v12 = v0[8];
  outlined destroy of [Int](v0[71], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v13, v2);
  v18(v17, v16);
  (*(v6 + 32))(v12, v15, v14);

  v10 = v0[1];

  return v10();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY34_()
{
  v1 = v0[154];
  v18 = v0[129];
  v19 = v0[130];
  v17 = v0[122];
  v2 = v0[116];
  v15 = v0[115];
  v16 = v0[121];
  v3 = v0[105];
  v13 = v0[104];
  v14 = v0[106];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[23];
  v12 = v0[24];
  v10 = v0[71];
  v11 = v0[22];
  convertToInferenceError(_:)(v1, v0[8]);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v5 + 8))(v4, v6);
  outlined destroy of [Int](v10, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  (*(v7 + 8))(v12, v11);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  v19(v18, v17);

  v8 = v0[1];

  return v8();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY35_()
{
  v1 = v0[156];
  v14 = v0[129];
  v15 = v0[130];
  v13 = v0[122];
  v2 = v0[116];
  v11 = v0[115];
  v12 = v0[121];
  v10 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  convertToInferenceError(_:)(v1, v0[8]);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  v15(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKFTY36_()
{
  v1 = v0[141];
  v13 = v0[130];
  v12 = v0[129];
  v10 = v0[138];
  v11 = v0[122];
  v2 = v0[121];
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[64];
  convertToInferenceError(_:)(v1, v0[8]);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  outlined destroy of [Int](v7, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  (*(v5 + 8))(v4, v6);
  v10(v2, v3);
  v13(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t OnDeviceInferenceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for InferenceProvider.init() in conformance OnDeviceInferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for OnDeviceInferenceProviderDataSource();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000023;
  *(v4 + 24) = 0x8000000220AFD920;
  v13[3] = v3;
  v13[4] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v13[0] = v4;
  type metadata accessor for TG_OnDeviceInferenceProvider();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v13, v3);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = specialized TG_OnDeviceInferenceProvider.init(dataSource:shouldDoVersionCheck:)(*v8, 0, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  *(v2 + 16) = v10;
  *a1 = v2;
  return result;
}

void protocol witness for InferenceProvider.loadIn(inferenceAssetIdentifier:) in conformance OnDeviceInferenceProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  JUMPOUT(0x223D8D9C0);
}

void protocol witness for InferenceProvider.loadOut(inferenceAssetIdentifier:) in conformance OnDeviceInferenceProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  JUMPOUT(0x223D8D9D0);
}

uint64_t protocol witness for InferenceProvider.transitionAsset(withIdentifier:to:) in conformance OnDeviceInferenceProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return OnDeviceInferenceProvider.transitionAsset(withIdentifier:to:)(a1, a2, a3);
}

uint64_t protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider;

  return OnDeviceInferenceProvider.requestOneShot(clientData:configuration:)(a1, a2, a3);
}

uint64_t protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return MEMORY[0x282188C50](a1, a2, a3, a4, a5);
}

void protocol witness for InferenceProvider.cancelRequest(uuid:) in conformance OnDeviceInferenceProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  JUMPOUT(0x223D8D990);
}

uint64_t TG_OnDeviceInferenceProvider.__allocating_init()()
{
  v0 = type metadata accessor for OnDeviceInferenceProviderDataSource();
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000023;
  *(v1 + 24) = 0x8000000220AFD920;
  v10[3] = v0;
  v10[4] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v10[0] = v1;
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = specialized TG_OnDeviceInferenceProvider.init(dataSource:shouldDoVersionCheck:)(*v5, 1, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t TG_OnDeviceInferenceProvider.prewarmHint(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.prewarmHint(_:), 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY1_()
{
  v1 = v0[58];
  if (v1)
  {
    v2 = v0[59];
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (v1)
  {
    v3 = v0[58];
  }

  else
  {
    v3 = 0x8000000220AFD7B0;
  }

  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC19loadTokenizerAtPath4pathySS_t20ModelManagerServices0C5ErrorOYKF(v2, v3, v0[38]);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY2_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
  *(v0 + 16) = xmmword_220AED900;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 73) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTQ3_;
  v3 = *(v0 + 448);
  v4 = *(v0 + 296);

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKF(v3, (v0 + 16), v4);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[39];
    v4 = v2[37];
    v5 = v2[31];
    v6 = *(v2[32] + 32);
    v2[62] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY6_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY5_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY4_()
{
  v39 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 368);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 224);
  (*(v0 + 488))(v7, *(v0 + 312), v1);
  v3(v4, v8, v5);
  v9 = *(v2 + 16);
  v9(v6, v7, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 256);
  v36 = *(v0 + 264);
  v17 = *(v0 + 248);
  if (v12)
  {
    log = v10;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136446466;
    v31 = v9;
    v19 = InferenceProviderAssetDescriptor.identifier.getter();
    v32 = v11;
    v21 = v20;
    (*(v13 + 8))(v14, v15);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23 = v36;
    v9 = v31;
    v31(v24, v36, v17);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    v37 = *(v16 + 8);
    v37(v23, v17);
    *(v18 + 14) = v25;
    *v33 = v25;
    _os_log_impl(&dword_220940000, log, v32, "Failed to load asset with identifier %{public}s: %{public}@", v18, 0x16u);
    outlined destroy of [Int](v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223D90A10](v35, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  else
  {

    v26 = v36;
    v37 = *(v16 + 8);
    v37(v26, v17);
    (*(v13 + 8))(v14, v15);
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 248);
  v9(*(v0 + 240), v27, v28);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v37(v27, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY5_()
{
  v1 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((*(v0 + 232) + 16), *(*(v0 + 232) + 40));
  v2 = off_2834512C0();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD000000000000022;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x8000000220AFD7D0;
  }

  v6 = [v1 defaultManager];
  v7 = MEMORY[0x223D8E6B0](v4, v5);
  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v34 = *(v0 + 408);
    v11 = objc_allocWithZone(TGIE5ModelConfigurationObjC);
    v12 = MEMORY[0x223D8E6B0](v4, v5);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v14 = Set._bridgeToObjectiveC()().super.isa;
    v35 = [v11 initWithModelType:v34 modelBundlePath:v12 e5Functions:isa adapterConfigurations:v14];
    *(v0 + 504) = v35;
    v15 = *(v0 + 232);

    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v32 = off_2834512C8[0]();
    v33 = v16;
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v30 = off_2834512D0[0]();
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v17 = off_2834512D8[0]();
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17;
    }

    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v29 = off_2834512E0[0]();
    v21 = v20;
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v22 = off_2834512F0[0]();
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v23 = off_283451308[0]();
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    v24 = off_283451318[0]();
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    result = off_2834512E8[0]();
    if (v19 < 1)
    {
      __break(1u);
    }

    else
    {
      v31 = v30 & 1;
      if (v33)
      {
        v25 = 2;
      }

      else
      {
        v25 = v32;
      }

      v26 = result & 1;
      __swift_project_boxed_opaque_existential_1((*(v0 + 232) + 136), *(*(v0 + 232) + 160));
      *(v0 + 96) = v25;
      *(v0 + 104) = v31;
      *(v0 + 112) = v19;
      *(v0 + 120) = v29;
      *(v0 + 128) = v21 & 1;
      *(v0 + 132) = v22;
      *(v0 + 136) = BYTE4(v22) & 1;
      *(v0 + 137) = 0;
      *(v0 + 138) = v23 & 1;
      *(v0 + 140) = v24;
      *(v0 + 144) = BYTE4(v24) & 1;
      *(v0 + 145) = 0;
      *(v0 + 152) = xmmword_220AE5250;
      *(v0 + 168) = v26;
      v27 = swift_task_alloc();
      *(v0 + 512) = v27;
      *v27 = v0;
      v27[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTQ7_;
      v28 = *(v0 + 288);

      return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKF(v35, (v0 + 96), v28);
    }
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY6_()
{
  v39 = v0;

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 368);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 224);
  (*(v0 + 496))(v7, *(v0 + 312), v1);
  v3(v4, v8, v5);
  v9 = *(v2 + 16);
  v9(v6, v7, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 256);
  v36 = *(v0 + 264);
  v17 = *(v0 + 248);
  if (v12)
  {
    log = v10;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136446466;
    v31 = v9;
    v19 = InferenceProviderAssetDescriptor.identifier.getter();
    v32 = v11;
    v21 = v20;
    (*(v13 + 8))(v14, v15);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23 = v36;
    v9 = v31;
    v31(v24, v36, v17);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    v37 = *(v16 + 8);
    v37(v23, v17);
    *(v18 + 14) = v25;
    *v33 = v25;
    _os_log_impl(&dword_220940000, log, v32, "Failed to load asset with identifier %{public}s: %{public}@", v18, 0x16u);
    outlined destroy of [Int](v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223D90A10](v35, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  else
  {

    v26 = v36;
    v37 = *(v16 + 8);
    v37(v26, v17);
    (*(v13 + 8))(v14, v15);
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 248);
  v9(*(v0 + 240), v27, v28);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v37(v27, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTQ7_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[39];
    v4 = v2[36];
    v5 = v2[31];
    v6 = *(v2[32] + 32);
    v2[65] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY9_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY8_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY8_()
{
  v1 = *(v0 + 504);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY9_()
{
  v40 = v0;
  v1 = *(v0 + 448);

  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 224);
  (*(v0 + 520))(v8, *(v0 + 312), v2);
  v4(v5, v9, v6);
  v10 = *(v3 + 16);
  v10(v7, v8, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 328);
  v15 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = *(v0 + 256);
  v37 = *(v0 + 264);
  v18 = *(v0 + 248);
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v19 = 136446466;
    v32 = v10;
    v20 = InferenceProviderAssetDescriptor.identifier.getter();
    v33 = v12;
    v22 = v21;
    (*(v14 + 8))(v15, v16);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v39);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v24 = v37;
    v10 = v32;
    v32(v25, v37, v18);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v17 + 8);
    v38(v24, v18);
    *(v19 + 14) = v26;
    *v34 = v26;
    _os_log_impl(&dword_220940000, log, v33, "Failed to load asset with identifier %{public}s: %{public}@", v19, 0x16u);
    outlined destroy of [Int](v34, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x223D90A10](v36, -1, -1);
    MEMORY[0x223D90A10](v19, -1, -1);
  }

  else
  {

    v27 = v37;
    v38 = *(v17 + 8);
    v38(v27, v18);
    (*(v14 + 8))(v15, v16);
  }

  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v10(*(v0 + 240), v28, v29);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v38(v28, v29);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY12_()
{
  v39 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 368);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 224);
  (*(v0 + 536))(v7, *(v0 + 312), v1);
  v3(v4, v8, v5);
  v9 = *(v2 + 16);
  v9(v6, v7, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 256);
  v36 = *(v0 + 264);
  v17 = *(v0 + 248);
  if (v12)
  {
    log = v10;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136446466;
    v31 = v9;
    v19 = InferenceProviderAssetDescriptor.identifier.getter();
    v32 = v11;
    v21 = v20;
    (*(v13 + 8))(v14, v15);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23 = v36;
    v9 = v31;
    v31(v24, v36, v17);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    v37 = *(v16 + 8);
    v37(v23, v17);
    *(v18 + 14) = v25;
    *v33 = v25;
    _os_log_impl(&dword_220940000, log, v32, "Failed to load asset with identifier %{public}s: %{public}@", v18, 0x16u);
    outlined destroy of [Int](v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223D90A10](v35, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  else
  {

    v26 = v36;
    v37 = *(v16 + 8);
    v37(v26, v17);
    (*(v13 + 8))(v14, v15);
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 248);
  v9(*(v0 + 240), v27, v28);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v37(v27, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[28];
    v3 = v2[29];
    v5 = v2[21];
    v6 = *(v2[22] + 32);
    v2[34] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY3_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY2_()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v1 = v0[19];
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 136, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = off_283451290();
  v0[35] = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x8000000220AFD790;
  }

  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ4_;
  v7 = v0[27];

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(v4, v5, v7);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY3_()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  (*(v0 + 272))(v3, *(v0 + 232), v1);
  v23 = *(v2 + 16);
  v23(v4, v3, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 168);
  if (v7)
  {
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v13 = 136446466;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v24);
    *(v13 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23(v14, v8, v10);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v9 + 8);
    v22(v8, v10);
    *(v13 + 14) = v15;
    *v20 = v15;
    _os_log_impl(&dword_220940000, v5, v6, "Failed to unload asset with identifier %{public}s: %{public}@", v13, 0x16u);
    outlined destroy of [Int](v20, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  else
  {

    v22 = *(v9 + 8);
    v22(v8, v10);
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v23(*(v0 + 160), v16, v17);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v22(v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ4_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[27];
    v5 = v2[21];
    v6 = *(v2[22] + 32);
    v2[39] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY7_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY5_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY5_()
{
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 136, (v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = off_2834512A8();
  v0[37] = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x8000000220AFD7B0;
  }

  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ6_;
  v7 = v0[26];

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(v4, v5, v7);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ6_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[26];
    v5 = v2[21];
    v6 = *(v2[22] + 32);
    v2[40] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY9_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY8_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY7_()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  (*(v0 + 312))(v3, *(v0 + 232), v1);
  v23 = *(v2 + 16);
  v23(v4, v3, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 168);
  if (v7)
  {
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v13 = 136446466;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v24);
    *(v13 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23(v14, v8, v10);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v9 + 8);
    v22(v8, v10);
    *(v13 + 14) = v15;
    *v20 = v15;
    _os_log_impl(&dword_220940000, v5, v6, "Failed to unload asset with identifier %{public}s: %{public}@", v13, 0x16u);
    outlined destroy of [Int](v20, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  else
  {

    v22 = *(v9 + 8);
    v22(v8, v10);
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v23(*(v0 + 160), v16, v17);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v22(v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY8_()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY9_()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  (*(v0 + 320))(v3, *(v0 + 232), v1);
  v23 = *(v2 + 16);
  v23(v4, v3, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 168);
  if (v7)
  {
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v13 = 136446466;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v24);
    *(v13 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23(v14, v8, v10);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v9 + 8);
    v22(v8, v10);
    *(v13 + 14) = v15;
    *v20 = v15;
    _os_log_impl(&dword_220940000, v5, v6, "Failed to unload asset with identifier %{public}s: %{public}@", v13, 0x16u);
    outlined destroy of [Int](v20, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  else
  {

    v22 = *(v9 + 8);
    v22(v8, v10);
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v23(*(v0 + 160), v16, v17);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v22(v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ10_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[25];
    v5 = v2[21];
    v6 = *(v2[22] + 32);
    v2[42] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY12_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY11_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY11_()
{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&dword_220940000, v1, v2, "Successfully unloaded asset with identifer %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223D90A10](v6, -1, -1);
    MEMORY[0x223D90A10](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY12_()
{
  v25 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  (*(v0 + 336))(v3, *(v0 + 232), v1);
  v23 = *(v2 + 16);
  v23(v4, v3, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 168);
  if (v7)
  {
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v13 = 136446466;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v24);
    *(v13 + 12) = 2114;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v23(v14, v8, v10);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v9 + 8);
    v22(v8, v10);
    *(v13 + 14) = v15;
    *v20 = v15;
    _os_log_impl(&dword_220940000, v5, v6, "Failed to unload asset with identifier %{public}s: %{public}@", v13, 0x16u);
    outlined destroy of [Int](v20, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  else
  {

    v22 = *(v9 + 8);
    v22(v8, v10);
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v23(*(v0 + 160), v16, v17);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v22(v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v32 = &v30 - v14;
  TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(a1, a2, 0, &v30 - v14);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.device);
  (*(v7 + 16))(v10, v12, v6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = a3;
    v20 = v19;
    v33 = v19;
    *v18 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = *(v7 + 8);
    v24(v10);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_220940000, v16, v17, "Received streaming request %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v26 = v20;
    a3 = v31;
    MEMORY[0x223D90A10](v26, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);

    (v24)(v12, v6);
  }

  else
  {

    v27 = *(v7 + 8);
    v27(v10, v6);
    v27(v12, v6);
  }

  a3[3] = type metadata accessor for OnDeviceInferenceProviderStream();
  a3[4] = _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type OnDeviceInferenceProviderStream and conformance OnDeviceInferenceProviderStream, type metadata accessor for OnDeviceInferenceProviderStream);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return outlined init with take of Asset?(v32, boxed_opaque_existential_1, &_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[52] = v6;
  v7[53] = a6;
  v7[50] = a4;
  v7[51] = a5;
  v7[48] = a2;
  v7[49] = a3;
  v7[47] = a1;
  v8 = type metadata accessor for TokenGenerationError.Context();
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd);
  v7[62] = swift_task_alloc();
  v10 = type metadata accessor for CountTokensResponse();
  v7[63] = v10;
  v7[64] = *(v10 - 8);
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v11 = type metadata accessor for Prompt.RenderedPromptFragment();
  v7[67] = v11;
  v7[68] = *(v11 - 8);
  v7[69] = swift_task_alloc();
  v12 = type metadata accessor for TokenizationResult();
  v7[70] = v12;
  v7[71] = *(v12 - 8);
  v7[72] = swift_task_alloc();
  v13 = type metadata accessor for Prompt.Rendering.Source();
  v7[73] = v13;
  v7[74] = *(v13 - 8);
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v14 = type metadata accessor for TokenizedPromptModule();
  v7[77] = v14;
  v7[78] = *(v14 - 8);
  v7[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtSgMd);
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v15 = type metadata accessor for Prompt.Rendering();
  v7[82] = v15;
  v7[83] = *(v15 - 8);
  v7[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v7[90] = swift_task_alloc();
  v16 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v7[91] = v16;
  v7[92] = *(v16 - 8);
  v7[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
  v7[94] = swift_task_alloc();
  v17 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  v7[95] = v17;
  v7[96] = *(v17 - 8);
  v7[97] = swift_task_alloc();
  v7[98] = swift_task_alloc();
  v18 = type metadata accessor for InferenceError();
  v7[99] = v18;
  v7[100] = *(v18 - 8);
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  v7[106] = swift_task_alloc();
  v7[107] = swift_task_alloc();
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY0_()
{
  v23 = v0;
  v1 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v1 + 16), 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v22, v4 + 4, v3, v2);
    outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[111] = v4;
  v6 = v0[52];
  v0[42] = 0xD000000000000017;
  v0[43] = 0x8000000220AFD6C0;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 42;
  v8 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, v4);

  if (v8)
  {
    v9 = v0[52];
    outlined init with copy of DeterministicLanguageModelProtocol(v6 + 136, (v0 + 37));
    __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v0[112] = v10;
    *(v10 + 16) = xmmword_220AE8A30;
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    v11 = off_2834512A8;
    type metadata accessor for OnDeviceInferenceOverrides();
    v12 = v11();
    v14 = 0x8000000220AFD7B0;
    v15 = 0xD00000000000001ALL;
    if (v13)
    {
      v15 = v12;
      v14 = v13;
    }

    *(v10 + 32) = v15;
    *(v10 + 40) = v14;
    v16 = swift_task_alloc();
    v0[113] = v16;
    *v16 = v0;
    v16[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTQ1_;
    v17 = v0[109];
    v18 = v0[50];
    v19 = v10;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v6 + 136), *(v0[52] + 160));
    v20 = swift_task_alloc();
    v0[118] = v20;
    *v20 = v0;
    v20[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTQ4_;
    v17 = v0[107];
    v18 = v0[50];
    v19 = v4;
  }

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(v19, v18, v17);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTQ1_(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 912) = v1;

  if (v1)
  {
    v5 = v4[110];
    v6 = v4[109];
    v7 = v4[100];
    v8 = v4[99];

    v9 = *(v7 + 32);
    v4[116] = v9;
    v4[117] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v5, v6, v8);
    v10 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY3_;
  }

  else
  {

    v4[115] = a1;
    v10 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY2_()
{
  v74 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  *(v0 + 992) = v1;
  *(v0 + 984) = v2;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(v5, v0 + 56);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 96);
      *(v0 + 1000) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v4;
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = *(v0 + 760);
    v61 = *(v0 + 752);

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v58, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
    v62 = swift_dynamicCast();
    (*(v59 + 56))(v61, v62 ^ 1u, 1, v60);
    if ((*(v59 + 48))(v61, 1, v60) == 1)
    {
      goto LABEL_7;
    }

    v63 = *(v0 + 416);
    outlined init with take of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 752), *(v0 + 784), type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    *(v0 + 1008) = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    *(v0 + 1016) = v64;
    v65 = __swift_project_boxed_opaque_existential_1((v63 + 136), *(v63 + 160));
    *(v0 + 1024) = v65;
    v56 = *v65;
    v57 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY7_;
  }

  else
  {
LABEL_6:
    v6 = *(v0 + 768);
    v7 = *(v0 + 760);
    v8 = *(v0 + 752);

    (*(v6 + 56))(v8, 1, 1, v7);
LABEL_7:
    outlined destroy of [Int](*(v0 + 752), &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    if (one-time initialization token for device != -1)
    {
LABEL_23:
      swift_once();
    }

    v9 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);
    v12 = *(v0 + 384);
    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Log.device);
    (*(v11 + 16))(v9, v12, v10);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 888);
    v17 = *(v0 + 480);
    v19 = *(v0 + 456);
    v18 = *(v0 + 464);
    if (v15)
    {
      v20 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72 = v68;
      *v20 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v14;
      v23 = v22;
      (*(v18 + 8))(v17, v19);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v72);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = MEMORY[0x223D8E8D0](v16, MEMORY[0x277D837D0]);
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v72);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_220940000, v13, v67, "Failed to handle request %{public}s, unable to get tokenizer with asset identifiers %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v68, -1, -1);
      MEMORY[0x223D90A10](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v29 = *(v0 + 440);
    v30 = *(v0 + 448);
    v31 = *(v0 + 432);
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v72 = 0xD00000000000001CLL;
    v73 = 0x8000000220AFD6E0;
    v32 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    MEMORY[0x223D8E780](v32);

    MEMORY[0x223D8E780](0x616F6C20746F6E20, 0xEB00000000646564);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v33 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v34 = swift_allocError();
    v36 = v35;
    (*(v29 + 16))(v35, v30, v31);
    (*(*(v33 - 8) + 104))(v36, *MEMORY[0x277D71AF0], v33);
    swift_willThrow();
    (*(v29 + 8))(v30, v31);
    *(v0 + 1256) = v1;
    *(v0 + 1248) = v34;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 464);
    v37 = *(v0 + 472);
    v39 = *(v0 + 456);
    v40 = *(v0 + 384);
    __swift_project_value_buffer(v70, static Log.device);
    (*(v38 + 16))(v37, v40, v39);
    v41 = v34;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 464);
    v45 = *(v0 + 472);
    v47 = *(v0 + 456);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = v71;
      *v48 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v46 + 8))(v45, v47);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v72);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2114;
      v53 = v34;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 14) = v54;
      *v69 = v54;
      _os_log_impl(&dword_220940000, v42, v43, "Failed to handle count token request %{public}s : %{public}@", v48, 0x16u);
      outlined destroy of [Int](v69, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x223D90A10](v71, -1, -1);
      MEMORY[0x223D90A10](v48, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }

    v55 = __swift_project_boxed_opaque_existential_1((*(v0 + 416) + 136), *(*(v0 + 416) + 160));
    *(v0 + 1264) = v55;
    v56 = *v55;
    v57 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_;
  }

  return MEMORY[0x2822009F8](v57, v56, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY3_()
{
  v31 = v0;
  v1 = v0[116];
  v2 = v0[110];
  v3 = v0[99];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v4 = swift_allocError();
  v1(v5, v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  v0[157] = MEMORY[0x277D84F90];
  v0[156] = v4;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[57];
  v9 = v0[48];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.device);
  (*(v7 + 16))(v6, v9, v8);
  v11 = v4;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[58];
  v15 = v0[59];
  v17 = v0[57];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2114;
    v23 = v4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v28 = v24;
    _os_log_impl(&dword_220940000, v12, v13, "Failed to handle count token request %{public}s : %{public}@", v18, 0x16u);
    outlined destroy of [Int](v28, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223D90A10](v29, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v25 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[158] = v25;
  v26 = *v25;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_, v26, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTQ4_(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 952) = v1;

  if (v1)
  {
    v5 = v4[108];
    v6 = v4[107];
    v7 = v4[100];
    v8 = v4[99];

    v9 = *(v7 + 32);
    v4[121] = v9;
    v4[122] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v5, v6, v8);
    v10 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY6_;
  }

  else
  {
    v4[120] = a1;
    v10 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY5_;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY5_()
{
  v74 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  *(v0 + 992) = v1;
  *(v0 + 984) = v2;

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(v5, v0 + 56);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 96);
      *(v0 + 1000) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v4;
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = *(v0 + 760);
    v61 = *(v0 + 752);

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v58, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
    v62 = swift_dynamicCast();
    (*(v59 + 56))(v61, v62 ^ 1u, 1, v60);
    if ((*(v59 + 48))(v61, 1, v60) == 1)
    {
      goto LABEL_7;
    }

    v63 = *(v0 + 416);
    outlined init with take of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 752), *(v0 + 784), type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    *(v0 + 1008) = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    *(v0 + 1016) = v64;
    v65 = __swift_project_boxed_opaque_existential_1((v63 + 136), *(v63 + 160));
    *(v0 + 1024) = v65;
    v56 = *v65;
    v57 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY7_;
  }

  else
  {
LABEL_6:
    v6 = *(v0 + 768);
    v7 = *(v0 + 760);
    v8 = *(v0 + 752);

    (*(v6 + 56))(v8, 1, 1, v7);
LABEL_7:
    outlined destroy of [Int](*(v0 + 752), &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    if (one-time initialization token for device != -1)
    {
LABEL_23:
      swift_once();
    }

    v9 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);
    v12 = *(v0 + 384);
    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Log.device);
    (*(v11 + 16))(v9, v12, v10);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 888);
    v17 = *(v0 + 480);
    v19 = *(v0 + 456);
    v18 = *(v0 + 464);
    if (v15)
    {
      v20 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72 = v68;
      *v20 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v14;
      v23 = v22;
      (*(v18 + 8))(v17, v19);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v72);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = MEMORY[0x223D8E8D0](v16, MEMORY[0x277D837D0]);
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v72);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_220940000, v13, v67, "Failed to handle request %{public}s, unable to get tokenizer with asset identifiers %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v68, -1, -1);
      MEMORY[0x223D90A10](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v29 = *(v0 + 440);
    v30 = *(v0 + 448);
    v31 = *(v0 + 432);
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v72 = 0xD00000000000001CLL;
    v73 = 0x8000000220AFD6E0;
    v32 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    MEMORY[0x223D8E780](v32);

    MEMORY[0x223D8E780](0x616F6C20746F6E20, 0xEB00000000646564);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v33 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v34 = swift_allocError();
    v36 = v35;
    (*(v29 + 16))(v35, v30, v31);
    (*(*(v33 - 8) + 104))(v36, *MEMORY[0x277D71AF0], v33);
    swift_willThrow();
    (*(v29 + 8))(v30, v31);
    *(v0 + 1256) = v1;
    *(v0 + 1248) = v34;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 464);
    v37 = *(v0 + 472);
    v39 = *(v0 + 456);
    v40 = *(v0 + 384);
    __swift_project_value_buffer(v70, static Log.device);
    (*(v38 + 16))(v37, v40, v39);
    v41 = v34;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 464);
    v45 = *(v0 + 472);
    v47 = *(v0 + 456);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = v71;
      *v48 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v46 + 8))(v45, v47);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v72);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2114;
      v53 = v34;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 14) = v54;
      *v69 = v54;
      _os_log_impl(&dword_220940000, v42, v43, "Failed to handle count token request %{public}s : %{public}@", v48, 0x16u);
      outlined destroy of [Int](v69, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x223D90A10](v71, -1, -1);
      MEMORY[0x223D90A10](v48, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }

    v55 = __swift_project_boxed_opaque_existential_1((*(v0 + 416) + 136), *(*(v0 + 416) + 160));
    *(v0 + 1264) = v55;
    v56 = *v55;
    v57 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_;
  }

  return MEMORY[0x2822009F8](v57, v56, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY6_()
{
  v31 = v0;
  v1 = v0[121];
  v2 = v0[108];
  v3 = v0[99];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v4 = swift_allocError();
  v1(v5, v2, v3);
  v0[157] = MEMORY[0x277D84F90];
  v0[156] = v4;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[57];
  v9 = v0[48];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.device);
  (*(v7 + 16))(v6, v9, v8);
  v11 = v4;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[58];
  v15 = v0[59];
  v17 = v0[57];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2114;
    v23 = v4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v28 = v24;
    _os_log_impl(&dword_220940000, v12, v13, "Failed to handle count token request %{public}s : %{public}@", v18, 0x16u);
    outlined destroy of [Int](v28, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223D90A10](v29, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v25 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[158] = v25;
  v26 = *v25;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_, v26, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY7_()
{
  v1 = v0[123];
  v0[129] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC024fetchSpecialTokensMapForF6Bundle10identifierSDySSAA08MetadataiA0OGSgSS_t20ModelManagerServices0C5ErrorOYKF(v0[126], v0[127], v0[105]);
  v0[130] = v1;
  if (v1)
  {
    v2 = v0[106];
    v3 = v0[105];
    v4 = v0[100];
    v5 = v0[99];

    v6 = *(v4 + 32);
    v0[133] = v6;
    v0[134] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v6(v2, v3, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY10_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY8_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY8_()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 416) + 136), *(*(v0 + 416) + 160));
  *(v0 + 1048) = v1;
  v2 = *v1;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY9_, v2, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY9_()
{
  v1 = v0[130];
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC042fetchPromptPreprocessingTemplateVersionForF6Bundle10identifier0aB4Core0ijkL0OSgSS_t20ModelManagerServices0C5ErrorOYKF(v0[126], v0[127], v0[103], v0[90]);
  v0[132] = v1;
  if (v1)
  {
    v2 = v0[104];
    v3 = v0[103];
    v4 = v0[100];
    v5 = v0[99];

    v6 = *(v4 + 32);
    v0[135] = v6;
    v0[136] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v6(v2, v3, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY12_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY11_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY10_()
{
  v32 = v0;
  v1 = v0[133];
  v2 = v0[106];
  v3 = v0[99];
  v4 = v0[98];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v5 = swift_allocError();
  v1(v6, v2, v3);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v4, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v0[157] = v0[124];
  v0[156] = v5;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[57];
  v10 = v0[48];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);
  (*(v8 + 16))(v7, v10, v9);
  v12 = v5;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[58];
  v16 = v0[59];
  v18 = v0[57];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v19 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v31);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2114;
    v24 = v5;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v29 = v25;
    _os_log_impl(&dword_220940000, v13, v14, "Failed to handle count token request %{public}s : %{public}@", v19, 0x16u);
    outlined destroy of [Int](v29, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x223D90A10](v30, -1, -1);
    MEMORY[0x223D90A10](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v26 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[158] = v26;
  v27 = *v26;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_, v27, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY11_()
{
  v20 = v0;
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    static PromptPreprocessingTemplateVersion.default.getter();
    if (v4(v3, 1, v2) != 1)
    {
      outlined destroy of [Int](v0[90], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    }
  }

  else
  {
    (*(v1 + 32))(v0[93], v3, v2);
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[137] = __swift_project_value_buffer(v5, static Log.device);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[129];
    v9 = v0[127];
    v10 = v0[126];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446466;
    v0[46] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGSgMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v19);
    _os_log_impl(&dword_220940000, v6, v7, "Fetched special tokens map %{public}s for asset bundle identifier %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v12, -1, -1);
    MEMORY[0x223D90A10](v11, -1, -1);
  }

  v16 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[138] = v16;
  v17 = *v16;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY13_, v17, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY12_()
{
  v32 = v0;
  v1 = v0[135];
  v2 = v0[104];
  v3 = v0[99];
  v4 = v0[98];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v5 = swift_allocError();
  v1(v6, v2, v3);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v4, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v0[157] = v0[124];
  v0[156] = v5;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[57];
  v10 = v0[48];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);
  (*(v8 + 16))(v7, v10, v9);
  v12 = v5;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[58];
  v16 = v0[59];
  v18 = v0[57];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v19 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v31);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2114;
    v24 = v5;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v29 = v25;
    _os_log_impl(&dword_220940000, v13, v14, "Failed to handle count token request %{public}s : %{public}@", v19, 0x16u);
    outlined destroy of [Int](v29, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x223D90A10](v30, -1, -1);
    MEMORY[0x223D90A10](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v26 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[158] = v26;
  v27 = *v26;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_, v27, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY13_()
{
  v1 = v0[132];
  v0[139] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC028fetchLocalizationMetadataForF6Bundle10identifierSDySSSDySSAA0j7SpecialA0OGGSgSS_t20ModelManagerServices0C5ErrorOYKF(v0[126], v0[127], v0[101]);
  v0[140] = v1;
  if (v1)
  {
    v2 = v0[102];
    v3 = v0[101];
    v4 = v0[100];
    v5 = v0[99];

    v6 = *(v4 + 32);
    v0[141] = v6;
    v0[142] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v6(v2, v3, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY15_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY14_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY14_()
{
  v104 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[129];
    v4 = v0[127];
    v5 = v0[126];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v103[0] = v7;
    *v6 = 136315394;
    v0[45] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGSgMd);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v103);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v103);
    _os_log_impl(&dword_220940000, v1, v2, "Fetched localization metadata %s for asset bundle identifier %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  v11 = *(v0[124] + 16);

  v15 = 0;
  if (v11)
  {
    v16 = 32;
    while (1)
    {
      v17 = v0[88];
      outlined init with copy of DeterministicLanguageModelProtocol(v0[124] + v16, (v0 + 17));
      v18 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v19 = swift_dynamicCast();
      v20 = *(v18 - 8);
      (*(v20 + 56))(v17, v19 ^ 1u, 1, v18);
      LODWORD(v20) = (*(v20 + 48))(v17, 1, v18);
      v12 = outlined destroy of [Int](v0[88], &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
      if (v20 != 1)
      {
        break;
      }

      ++v15;
      v16 += 40;
      if (v11 == v15)
      {
        v15 = v11;
        break;
      }
    }
  }

  v21 = v0[124];
  v22 = *(v21 + 16);
  if (v15 == v22)
  {
    v23 = v0[89];
    v24 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    goto LABEL_13;
  }

  if (v15 >= v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = v0[87];
  v26 = v0[86];
  outlined init with copy of DeterministicLanguageModelProtocol(v21 + 40 * v15 + 32, (v0 + 22));
  v24 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v27 = swift_dynamicCast();
  v28 = *(v24 - 8);
  v29 = *(v28 + 56);
  v29(v25, v27 ^ 1u, 1, v24);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v25, v26, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  v12 = (*(v28 + 48))(v26, 1, v24);
  if (v12 == 1)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v30 = v0[89];
  v31 = v0[87];
  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v0[86], v30, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  outlined destroy of [Int](v31, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  v29(v30, 0, 1, v24);
LABEL_13:
  v32 = v0[98];
  v33 = v0[95];
  v34 = v0[89];
  v35 = v0[85];

  v99 = *(v32 + *(v33 + 28));
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v34, v35, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v36 = (*(*(v24 - 8) + 48))(v35, 1, v24);
  v37 = v0[85];
  if (v36 == 1)
  {
    v38 = v99;

    outlined destroy of [Int](v37, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    v39 = 0;
  }

  else
  {
    v40 = *(v24 + 32);
    v41 = (v37 + *(v24 + 28));
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[3];
    v92 = v41[2];
    v45 = v41[4];
    v46 = v41[5];
    v94 = v45;
    v95 = *v41;
    v93 = v46;
    v47 = v41[6];
    v96 = *(v37 + v40);
    v48 = type metadata accessor for OnDeviceImagePreprocessor();
    v49 = swift_allocObject();
    type metadata accessor for ImageTokenizer();
    v97 = *(v37 + 16);
    v49[2] = v42;
    v49[3] = v43;
    v49[4] = v92;
    v49[5] = v44;
    v49[6] = v45;
    v49[7] = v46;
    v49[8] = v47;
    v0[35] = v48;
    v0[36] = &protocol witness table for OnDeviceImagePreprocessor;
    v0[32] = v49;
    v39 = swift_allocObject();
    v50 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v48);
    v51 = *(v48 - 8);
    v52 = swift_task_alloc();
    (*(v51 + 16))(v52, v50, v48);
    v53 = *v52;
    *(v39 + 40) = v48;
    *(v39 + 16) = v53;
    *(v39 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v39 + 56) = v95;
    *(v39 + 64) = v43;
    *(v39 + 72) = v92;
    *(v39 + 80) = v44;
    *(v39 + 88) = v94;
    *(v39 + 96) = v93;
    *(v39 + 104) = v47;
    *(v39 + 112) = v97;
    *(v39 + 128) = v96;
    v38 = v99;

    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v37, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  }

  v100 = v0[140];
  v54 = v0[139];
  v55 = v0[129];
  v56 = v0[98];
  v57 = v0[95];
  v58 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v38, 0, v39);
  v0[143] = v58;
  v0[144] = *(v56 + *(v57 + 24));
  v59 = TG_OnDeviceInferenceProvider.promptTokenTable(from:)(v55);
  v0[145] = v59;
  v0[146] = specialized TG_OnDeviceInferenceProvider.localizationOverrideMap(from:)(v54);

  TokenizerRunner.substitutionTextForInputTokenText.getter();
  v60 = v100;
  v61 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)();
  v0[147] = v61;
  if (v100)
  {

    v62 = v0[98];
    v63 = v0[93];
    v64 = v0[92];
    v65 = v0[91];
    v66 = v0[89];

    outlined destroy of [Int](v66, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    (*(v64 + 8))(v63, v65);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v62, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    v0[157] = v0[124];
    v0[156] = v100;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v68 = v0[58];
    v67 = v0[59];
    v69 = v0[57];
    v70 = v0[48];
    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Log.device);
    (*(v68 + 16))(v67, v70, v69);
    v72 = v100;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    v75 = os_log_type_enabled(v73, v74);
    v77 = v0[58];
    v76 = v0[59];
    v78 = v0[57];
    if (v75)
    {
      v79 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v103[0] = v101;
      *v79 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v77 + 8))(v76, v78);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v103);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2114;
      v84 = v60;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 14) = v85;
      *v98 = v85;
      _os_log_impl(&dword_220940000, v73, v74, "Failed to handle count token request %{public}s : %{public}@", v79, 0x16u);
      outlined destroy of [Int](v98, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v98, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x223D90A10](v101, -1, -1);
      MEMORY[0x223D90A10](v79, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v76, v78);
    }

    v91 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
    v0[158] = v91;
    v13 = *v91;
    v12 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_;
    v14 = 0;

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v86 = v61;

  v0[30] = type metadata accessor for OnDeviceAttachmentTokenizer();
  v87 = _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type OnDeviceAttachmentTokenizer and conformance OnDeviceAttachmentTokenizer, type metadata accessor for OnDeviceAttachmentTokenizer);
  v0[27] = v58;
  v0[31] = v87;
  v102 = (*MEMORY[0x277D71E58] + MEMORY[0x277D71E58]);

  v88 = swift_task_alloc();
  v0[148] = v88;
  *v88 = v0;
  v88[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTQ16_;
  v89 = v0[93];

  return v102(v86, v59, v0 + 27, v89);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY15_()
{
  v35 = v0;
  v1 = v0[141];
  v2 = v0[102];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v8 = swift_allocError();
  v1(v9, v2, v3);
  (*(v6 + 8))(v5, v7);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v4, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v0[157] = v0[124];
  v0[156] = v8;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v11 = v0[58];
  v10 = v0[59];
  v12 = v0[57];
  v13 = v0[48];
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);
  (*(v11 + 16))(v10, v13, v12);
  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[58];
  v19 = v0[59];
  v21 = v0[57];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v22 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v34);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2114;
    v27 = v8;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v28;
    *v32 = v28;
    _os_log_impl(&dword_220940000, v16, v17, "Failed to handle count token request %{public}s : %{public}@", v22, 0x16u);
    outlined destroy of [Int](v32, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x223D90A10](v33, -1, -1);
    MEMORY[0x223D90A10](v22, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  v29 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[158] = v29;
  v30 = *v29;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_, v30, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTQ16_(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1192) = a1;
  *(v3 + 1200) = v1;

  if (v1)
  {

    v4 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY18_;
  }

  else
  {
    outlined destroy of [Int](v3 + 216, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd);
    v4 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY17_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY17_()
{
  v133 = v0;
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[68];
  v4 = MEMORY[0x277D84F90];
  v131[0] = v0[149];
  v131[1] = 0;
  v131[2] = 0;
  v113 = (v1 + 32);
  v110 = v3;
  v123 = (v3 + 8);
  v120 = v2;
  v117 = (v2 + 96);
  v111 = (v1 + 8);
  v112 = v131[0];
  v118 = *MEMORY[0x277D71EC0];

  v126 = v0;
  while (1)
  {
    v5 = v0[81];
    v6 = v0[80];
    specialized EnumeratedSequence.Iterator.next()(v6);
    outlined init with take of Asset?(v6, v5, &_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtSgMd);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtMd);
    if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
    {

      v126[44] = type metadata accessor for OnDeviceInferenceProvider();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC8ProviderCmMd);
      String.init<A>(describing:)();
      v43 = [objc_opt_self() processInfo];
      v44 = [v43 operatingSystemVersionString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Prompt.Rendering.Source.init(identifier:version:)();
      v45 = RequestMetadata.userInfo.getter();
      ShouldDetokenizeRendered = static RequestMetadata.userInfoKeyShouldDetokenizeRenderedPrompt.getter();
      if (*(v45 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(ShouldDetokenizeRendered, v47);
        v49 = v48;

        v31 = v126[150];
        v4 = v126;
        if (v49)
        {
          dispatch thunk of TokenizerRunner.detokenize(_:)();
          if (v31)
          {
            v50 = v126[76];
            v51 = v126[74];
            v52 = v126[73];

            (*(v51 + 8))(v50, v52);

            v53 = v126[98];
            v54 = v126[93];
            v55 = v126[92];
            v56 = v126[91];
            v57 = v126[89];

            outlined destroy of [Int](v57, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
            (*(v55 + 8))(v54, v56);
            outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v53, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
            v126[157] = v126[124];
            v126[156] = v31;
            if (one-time initialization token for device != -1)
            {
LABEL_69:
              swift_once();
            }

            v59 = v4[58];
            v58 = v4[59];
            v60 = v4[57];
            v61 = v4[48];
            v62 = type metadata accessor for Logger();
            __swift_project_value_buffer(v62, static Log.device);
            (*(v59 + 16))(v58, v61, v60);
            v63 = v31;
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.error.getter();

            v66 = os_log_type_enabled(v64, v65);
            v68 = v4[58];
            v67 = v4[59];
            v69 = v4[57];
            if (v66)
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v131[0] = v128;
              *v70 = 136446466;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v72 = dispatch thunk of CustomStringConvertible.description.getter();
              v74 = v73;
              (*(v68 + 8))(v67, v69);
              v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v131);

              *(v70 + 4) = v75;
              *(v70 + 12) = 2114;
              v76 = v31;
              v77 = _swift_stdlib_bridgeErrorToNSError();
              *(v70 + 14) = v77;
              *v71 = v77;
              _os_log_impl(&dword_220940000, v64, v65, "Failed to handle count token request %{public}s : %{public}@", v70, 0x16u);
              outlined destroy of [Int](v71, &_sSo8NSObjectCSgMd);
              MEMORY[0x223D90A10](v71, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v128);
              MEMORY[0x223D90A10](v128, -1, -1);
              MEMORY[0x223D90A10](v70, -1, -1);
            }

            else
            {

              (*(v68 + 8))(v67, v69);
            }

            v109 = __swift_project_boxed_opaque_existential_1((v126[52] + 136), *(v126[52] + 160));
            v126[158] = v109;
            v107 = *v109;
            v108 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_;
LABEL_64:

            return MEMORY[0x2822009F8](v108, v107, 0);
          }

LABEL_53:
          v129 = 0;
        }

        else
        {
          v129 = v126[150];
        }
      }

      else
      {

        v129 = v126[150];
        v4 = v126;
      }

      v78 = v4[84];
      v79 = v4[83];
      v116 = v4[76];
      v80 = v4[74];
      v114 = v4[73];
      v121 = v4[82];
      v119 = v4[62];
      (*(v80 + 16))(v4[75]);
      Prompt.description.getter();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();

      (*(v80 + 8))(v116, v114);

      Prompt.Rendering.tokenIDs.getter();

      (*(v79 + 16))(v119, v78, v121);
      (*(v79 + 56))(v119, 0, 1, v121);
      CountTokensResponse.init(count:renderedPrompt:)();
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse, MEMORY[0x277D71C60]);
      v81 = static Serialization.encode<A>(_:)();
      if (v129)
      {

        return swift_unexpectedError();
      }

      v125 = v82;
      v130 = v81;
      v83 = v126[66];
      v84 = v126[65];
      v86 = v126[63];
      v85 = v126[64];
      (*(v126[58] + 16))(v126[61], v126[48], v126[57]);
      (*(v85 + 16))(v84, v83, v86);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.info.getter();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v126[65];
      v91 = v126[64];
      v92 = v126[61];
      v94 = v126[57];
      v93 = v126[58];
      if (v89)
      {
        v122 = v126[63];
        v95 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v131[0] = v124;
        *v95 = 136446466;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        (*(v93 + 8))(v92, v94);
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, v131);

        *(v95 + 4) = v99;
        *(v95 + 12) = 2048;
        v100 = CountTokensResponse.count.getter();
        v103 = *(v91 + 8);
        v101 = v91 + 8;
        v102 = v103;
        v103(v90, v122);
        *(v95 + 14) = v100;
        _os_log_impl(&dword_220940000, v87, v88, "Successfully handled count token request %{public}s, token count %ld", v95, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v124);
        MEMORY[0x223D90A10](v124, -1, -1);
        MEMORY[0x223D90A10](v95, -1, -1);
      }

      else
      {
        v104 = *(v91 + 8);
        v101 = v91 + 8;
        v102 = v104;
        v104(v90, v126[63]);

        (*(v93 + 8))(v92, v94);
      }

      v126[152] = v102;
      v126[151] = v101;
      v105 = v126[52];
      v126[153] = v125;
      v126[154] = v130;
      v106 = __swift_project_boxed_opaque_existential_1((v105 + 136), *(v105 + 160));
      v126[155] = v106;
      v107 = *v106;
      v108 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY19_;
      goto LABEL_64;
    }

    v8 = v0[81];
    v115 = *v8;
    (*v113)(v0[79], &v8[*(v7 + 48)], v0[77]);
    v9 = TokenizedPromptModule.promptFragments.getter();
    v10 = *(v9 + 16);
    if (v10)
    {
      v132 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v132;
      v12 = v9 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
      v127 = *(v110 + 72);
      v13 = *(v110 + 16);
      do
      {
        v14 = v0[69];
        v15 = v0[67];
        v13(v14, v12, v15);
        v16 = Prompt.RenderedPromptFragment.renderedText()();
        (*v123)(v14, v15);
        v132 = v11;
        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v11 = v132;
        }

        *(v11 + 16) = v18 + 1;
        *(v11 + 16 * v18 + 32) = v16;
        v0 = v126;
        v12 += v127;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    specialized Array.append<A>(contentsOf:)(v11);
    v19 = TokenizedPromptModule.renderedString.getter();
    MEMORY[0x223D8E780](v19);

    v20 = TokenizedPromptModule.tokenizationResults.getter();
    v21 = *(v20 + 16);
    if (v21)
    {
      break;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_30:

    specialized Array.append<A>(contentsOf:)(v38);
    if (v115 == *(v112 + 16) - 1)
    {
      (*v111)(v0[79], v0[77]);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v40 = v4[2];
      v39 = v4[3];
      if (v40 >= v39 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v4);
      }

      (*v111)(v0[79], v0[77]);
      v4[2] = v40 + 1;
      v4[v40 + 4] = v23;
    }
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v24 = v0[72];
    v25 = v0[70];
    (*(v120 + 16))(v24, v20 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v22, v25);
    v26 = (*(v120 + 88))(v24, v25);
    if (v26 != v118)
    {
      break;
    }

    v27 = v0[72];
    (*v117)(v27, v0[70]);
    v28 = *v27;
    v29 = *(*v27 + 16);
    v30 = *(v23 + 2);
    v31 = (v30 + v29);
    if (__OFADD__(v30, v29))
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v31 <= *(v23 + 3) >> 1)
    {
      if (!*(v28 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v23);
      if (!*(v28 + 16))
      {
LABEL_12:

        if (v29)
        {
          goto LABEL_52;
        }

        goto LABEL_13;
      }
    }

    v34 = *(v23 + 2);
    if ((*(v23 + 3) >> 1) - v34 < v29)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    memcpy(&v23[8 * v34 + 32], (v28 + 32), 8 * v29);

    if (v29)
    {
      v35 = *(v23 + 2);
      v36 = __OFADD__(v35, v29);
      v37 = v35 + v29;
      if (v36)
      {
        goto LABEL_68;
      }

      *(v23 + 2) = v37;
    }

LABEL_13:
    if (v21 == ++v22)
    {
      goto LABEL_30;
    }
  }

  if (v26 == *MEMORY[0x277D71EB8])
  {
    (*(v0[71] + 8))(v0[72], v0[70]);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v42 = v0[70];

    return MEMORY[0x2821FDEB8](v42, v42);
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY18_()
{
  v32 = v0;

  outlined destroy of [Int]((v0 + 27), &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd);
  v1 = v0[150];
  v2 = v0[98];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[89];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  (*(v4 + 8))(v3, v5);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v2, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v0[157] = v0[124];
  v0[156] = v1;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[57];
  v10 = v0[48];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);
  (*(v8 + 16))(v7, v10, v9);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[58];
  v16 = v0[59];
  v18 = v0[57];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v19 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v31);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2114;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v29 = v25;
    _os_log_impl(&dword_220940000, v13, v14, "Failed to handle count token request %{public}s : %{public}@", v19, 0x16u);
    outlined destroy of [Int](v29, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x223D90A10](v30, -1, -1);
    MEMORY[0x223D90A10](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v26 = __swift_project_boxed_opaque_existential_1((v0[52] + 136), *(v0[52] + 160));
  v0[158] = v26;
  v27 = *v26;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_, v27, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY19_()
{
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[124]);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY20_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY20_()
{
  v10 = v0[152];
  v12 = v0[93];
  v13 = v0[98];
  v1 = v0[92];
  v11 = v0[91];
  v2 = v0[89];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[66];
  v7 = v0[63];
  MEMORY[0x223D8D930](v0[154], v0[153]);

  v10(v6, v7);
  (*(v4 + 8))(v3, v5);
  outlined destroy of [Int](v2, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  (*(v1 + 8))(v12, v11);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v13, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);

  v8 = v0[1];

  return v8();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY21_()
{
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[157]);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY22_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11countTokens33_F67B098F505663682541EE68977BD2AALL11requestUUID6prompt13configuration0P8Metadata20ModelManagerServices10ClientDataV10Foundation0Q0V_0aB06PromptVAJ0cG20RequestConfigurationVAP07RequestT0VtYaAJ0C5ErrorOYKFTY22_()
{
  v1 = v0[156];
  convertToInferenceError(_:)(v1, v0[53]);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  v2 = v0[1];

  return v2();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for InferenceError.Context();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for Prompt();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for TokenGenerationError.Context();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for PromptTemplateConfiguration(0);
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplateInfo();
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v63 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v5, static Log.device);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62 = v13;
    *v12 = 136446210;
    v14 = PromptTemplateInfo.templateID.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v62);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_220940000, v6, v7, "Rendering prompt template %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[20];
  v19 = v0[21];
  v20 = v0[19];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[4], v20, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v21 = *(v19 + 48);
  v0[27] = v21;
  v0[28] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v20, 1, v18) == 1)
  {
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    outlined destroy of [Int](v0[19], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v25 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v26 = swift_allocError();
    v28 = v27;
    (*(v23 + 16))(v27, v22, v24);
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D71AF0], v25);
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
    v29 = v0[27];
    v30 = v0[20];
    v31 = v0[18];
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[4], v31, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
    if (v29(v31, 1, v30) == 1)
    {
      outlined destroy of [Int](v0[18], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
    }

    else
    {
      v35 = v0[18];
      v36 = *(v35 + *(v0[20] + 20));
      outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v35, type metadata accessor for PromptTemplateConfiguration);
      if (v36)
      {
LABEL_15:
        v39 = v0[12];
        v40 = v0[13];
        v41 = v0[11];
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[5], v41, &_s15TokenGeneration6PromptVSgMd);
        if ((*(v40 + 48))(v41, 1, v39) != 1)
        {
          v52 = *(v0[13] + 32);
          v52(v0[14], v0[11], v0[12]);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_220940000, v53, v54, "Unable to render prompt template, using fallback prompt", v55, 2u);
            MEMORY[0x223D90A10](v55, -1, -1);
          }

          v56 = v0[14];
          v57 = v0[12];
          v58 = v0[2];

          v52(v58, v56, v57);

          v51 = v0[1];
          goto LABEL_21;
        }

        outlined destroy of [Int](v0[11], &_s15TokenGeneration6PromptVSgMd);
LABEL_17:
        v42 = _convertErrorToNSError(_:)();
        v43 = [v42 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = v26;
        v44 = [v42 domain];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        [v42 code];
        v45 = v0[10];
        v46 = v0[8];
        v47 = v0[9];
        v48 = v0[7];
        v60 = v42;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
        (*(v47 + 16))(v48, v45, v46);
        v49 = *MEMORY[0x277D29DA8];
        v50 = type metadata accessor for InferenceError();
        (*(*(v50 - 8) + 104))(v48, v49, v50);
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
        swift_willThrowTypedImpl();

        (*(v47 + 8))(v45, v46);

        v51 = v0[1];
LABEL_21:

        return v51();
      }
    }

    __swift_project_boxed_opaque_existential_1((v0[6] + 16), *(v0[6] + 40));
    v37 = off_283451320[0];
    type metadata accessor for OnDeviceInferenceOverrides();
    v38 = v37();
    if (v38 == 2 || (v38 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v0[19], v0[22], type metadata accessor for PromptTemplateConfiguration);
  v32 = swift_task_alloc();
  v0[29] = v32;
  *v32 = v0;
  v32[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTQ1_;
  v33 = v0[2];
  v34 = v0[3];

  return MEMORY[0x2821DA490](v33, v34);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTQ1_()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTY3_;
  }

  else
  {
    v2 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTY2_()
{
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 176), type metadata accessor for PromptTemplateConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKFTY3_()
{
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[22], type metadata accessor for PromptTemplateConfiguration);
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[20];
  v4 = v0[18];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[4], v4, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  if (v2(v4, 1, v3) == 1)
  {
    outlined destroy of [Int](v0[18], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  }

  else
  {
    v5 = v0[18];
    v6 = *(v5 + *(v0[20] + 20));
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v5, type metadata accessor for PromptTemplateConfiguration);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  __swift_project_boxed_opaque_existential_1((v0[6] + 16), *(v0[6] + 40));
  v7 = off_283451320[0];
  type metadata accessor for OnDeviceInferenceOverrides();
  v8 = v7();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[5], v11, &_s15TokenGeneration6PromptVSgMd);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    outlined destroy of [Int](v0[11], &_s15TokenGeneration6PromptVSgMd);
LABEL_8:
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v1;
    v14 = [v12 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v12 code];
    v15 = v0[10];
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[7];
    v30 = v12;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v17 + 16))(v18, v15, v16);
    v19 = *MEMORY[0x277D29DA8];
    v20 = type metadata accessor for InferenceError();
    (*(*(v20 - 8) + 104))(v18, v19, v20);
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();

    (*(v17 + 8))(v15, v16);

    v21 = v0[1];
    goto LABEL_12;
  }

  v22 = *(v0[13] + 32);
  v22(v0[14], v0[11], v0[12]);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_220940000, v23, v24, "Unable to render prompt template, using fallback prompt", v25, 2u);
    MEMORY[0x223D90A10](v25, -1, -1);
  }

  v26 = v0[14];
  v27 = v0[12];
  v28 = v0[2];

  v22(v28, v26, v27);

  v21 = v0[1];
LABEL_12:

  return v21();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[15] = a4;
  v5[12] = a1;
  v5[13] = a3;
  v6 = type metadata accessor for ImageTokenizationRecommendations.DimensionRequirements();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32ImageTokenizationRecommendationsVSgMd);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v8 = type metadata accessor for InferenceError();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY0_()
{
  v11 = v0;
  __swift_project_boxed_opaque_existential_1((v0[14] + 136), *(v0[14] + 160));
  v1 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v1 + 16), 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v10, v4 + 4, v3, v2);
    outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[30] = v4;
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTQ1_;
  v7 = v0[29];
  v8 = v0[13];

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(v4, v8, v7);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTQ1_(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;

  if (v1)
  {
    (*(v3[28] + 32))(v3[15], v3[29], v3[27]);

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY2_, 0, 0);
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 256);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v0 + 200);
      v7 = *(v0 + 168);
      outlined init with copy of DeterministicLanguageModelProtocol(v4, v0 + 16);
      outlined init with take of RandomNumberGenerator((v0 + 16), v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v8 = swift_dynamicCast();
      (*(v3 + 56))(v6, v8 ^ 1u, 1, v7);
      v9 = (*(v3 + 48))(v6, 1, v7);
      v10 = *(v0 + 200);
      if (v9 == 1)
      {
        outlined destroy of [Int](v10, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
      }

      else
      {
        outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v10, *(v0 + 184), type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1, v5);
        }

        v13 = *(v0 + 184);
        v5[2] = v12 + 1;
        outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v13, v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5[2])
  {
    v14 = *(*(v0 + 176) + 80);
    outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v5 + ((v14 + 32) & ~v14), *(v0 + 208), type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 192);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);

  (*(v19 + 56))(v16, v15, 1, v18);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v16, v17, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v23 = *(v0 + 192);
  if (v20 == 1)
  {
    outlined destroy of [Int](*(v0 + 192), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    v24 = 1;
  }

  else
  {
    v25 = *(v23 + *(*(v0 + 168) + 28) + 8);
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v25, v21, v22);
    }

    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 128);
    ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.init(pixelWidth:pixelHeight:)();
    (*(v27 + 104))(v26, *MEMORY[0x277D71D58], v28);
    ImageTokenizationRecommendations.init(dimensions:pixelFormat:)();
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v23, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
    v24 = 0;
  }

  v29 = *(v0 + 160);
  v30 = *(v0 + 112);
  v31 = type metadata accessor for ImageTokenizationRecommendations();
  (*(*(v31 - 8) + 56))(v29, v24, 1, v31);
  v32 = __swift_project_boxed_opaque_existential_1((v30 + 136), *(v30 + 160));
  *(v0 + 264) = v32;
  v21 = *v32;
  v25 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY3_;
  v22 = 0;

  return MEMORY[0x2822009F8](v25, v21, v22);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY3_()
{
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[32]);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY4_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC22fetchTokenizerMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_20ModelManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY4_()
{
  v1 = v0[26];
  v2 = v0[20];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v2, v0[19], &_s15TokenGeneration32ImageTokenizationRecommendationsVSgMd);
  FetchTokenizerMetadataResponse.init(imageTokenizationRecommendations:)();
  outlined destroy of [Int](v2, &_s15TokenGeneration32ImageTokenizationRecommendationsVSgMd);
  outlined destroy of [Int](v1, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);

  v3 = v0[1];

  return v3();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[15] = a4;
  v5[12] = a1;
  v5[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v5[16] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY0_()
{
  v11 = v0;
  __swift_project_boxed_opaque_existential_1((v0[14] + 136), *(v0[14] + 160));
  v1 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v1 + 16), 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v10, v4 + 4, v3, v2);
    outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[20] = v4;
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTQ1_;
  v7 = v0[19];
  v8 = v0[13];

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(v4, v8, v7);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTQ1_(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;

  if (v1)
  {
    (*(v3[18] + 32))(v3[15], v3[19], v3[17]);

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY2_, 0, 0);
  }
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v3, v0 + 16);
      outlined init with take of RandomNumberGenerator((v0 + 16), v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v5 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
      v6 = swift_dynamicCast();
      v7 = *(*(v5 - 8) + 56);
      v8 = *(v0 + 128);
      if (v6)
      {
        v7(*(v0 + 128), 0, 1, v5);
        v18 = *(v8 + *(v5 + 28));
        swift_unknownObjectRetain();
        outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v8, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v10 = v4[2];
        v9 = v4[3];
        if (v10 >= v9 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
        }

        v4[2] = v10 + 1;
        *&v4[2 * v10 + 4] = v18;
      }

      else
      {
        v7(*(v0 + 128), 1, 1, v5);
        outlined destroy of [Int](v8, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v11 = v4[2];
  *(v0 + 184) = v11;
  if (v11)
  {
    v12 = v4[5];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 80))(ObjectType, v12);
    swift_unknownObjectRelease();
  }

  else
  {

    v14 = 0;
  }

  *(v0 + 192) = v14;
  v15 = __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 136), *(*(v0 + 112) + 160));
  *(v0 + 200) = v15;
  v16 = *v15;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY3_, v16, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY3_()
{
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[22]);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY4_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC18fetchModelMetadata33_F67B098F505663682541EE68977BD2AALL_13configuration0aB005FetchiJ8ResponseVAG0riJ7RequestV_0I15ManagerServices0cgT13ConfigurationVtYaAL0C5ErrorOYKFTY4_()
{
  if (v0[23])
  {
    FetchModelMetadataResponse.init(contextSize:)();
  }

  else
  {
    (*(v0[18] + 104))(v0[15], *MEMORY[0x277D29DC8], v0[17]);
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
  }

  v1 = v0[1];

  return v1();
}

uint64_t TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[45] = a5;
  v6[46] = v5;
  v6[43] = a3;
  v6[44] = a4;
  v6[41] = a1;
  v6[42] = a2;
  v7 = type metadata accessor for TokenGenerationError();
  v6[47] = v7;
  v6[48] = *(v7 - 8);
  v6[49] = swift_task_alloc();
  v8 = type metadata accessor for GenerationError();
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError();
  v6[55] = v9;
  v6[56] = *(v9 - 8);
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v10 = type metadata accessor for InferenceError.Context();
  v6[59] = v10;
  v6[60] = *(v10 - 8);
  v6[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd);
  v6[62] = swift_task_alloc();
  v11 = type metadata accessor for ModelInformation();
  v6[63] = v11;
  v6[64] = *(v11 - 8);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v12 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  v6[67] = v12;
  v6[68] = *(v12 - 8);
  v6[69] = swift_task_alloc();
  v13 = type metadata accessor for TokenGenerationError.Context();
  v6[70] = v13;
  v6[71] = *(v13 - 8);
  v6[72] = swift_task_alloc();
  v14 = type metadata accessor for Prompt.Rendering();
  v6[73] = v14;
  v6[74] = *(v14 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15DataStreamStateVSgMd);
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v15 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v6[79] = v15;
  v6[80] = *(v15 - 8);
  v6[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v6[82] = swift_task_alloc();
  v16 = type metadata accessor for DataStreamState(0);
  v6[83] = v16;
  v6[84] = *(v16 - 8);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd);
  v6[87] = swift_task_alloc();
  v6[88] = type metadata accessor for InferenceRequest();
  v6[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices10AuditTokenVSgMd);
  v6[90] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v6[91] = v17;
  v6[92] = *(v17 - 8);
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

uint64_t TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:)()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v6 = *(v3 + 16);
  *(v0 + 824) = v6;
  *(v0 + 832) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  *(v0 + 840) = UUID.uuidString.getter();
  *(v0 + 848) = v7;
  InferenceProviderRequestConfiguration.auditToken.getter();
  v8 = type metadata accessor for AuditToken();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  *(v0 + 1216) = v10;
  v11 = *(v0 + 720);
  if (v10 == 1)
  {
    outlined destroy of [Int](*(v0 + 720), &_s20ModelManagerServices10AuditTokenVSgMd);
    v12 = 0;
  }

  else
  {
    v12 = AuditToken.realUserIdentifier.getter();
    (*(v9 + 8))(v11, v8);
  }

  *(v0 + 1220) = v12;
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 336);
  v19 = type metadata accessor for SamplingStrategy();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  v20 = v14[7];
  v21 = type metadata accessor for Constraints();
  (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
  v22 = v14[8];
  *(v0 + 1224) = v22;
  v23 = type metadata accessor for RequestMetadata();
  (*(*(v23 - 8) + 16))(v13 + v22, v17, v23);
  v24 = type metadata accessor for Prompt();
  (*(*(v24 - 8) + 16))(v13, v18, v24);
  *(v13 + v14[6]) = MEMORY[0x277D84F90];
  v25 = *(v16 + 176);
  *(v0 + 856) = v25;

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), v25, 0);
}

{
  v1 = *(v0 + 1216);
  type metadata accessor for EventReporter();
  if (v1 == 1)
  {
    swift_allocObject();
    v2 = EventReporter.init()();
  }

  else
  {
    v2 = EventReporter.__allocating_init(onBehalfOfUserIdentifier:)();
  }

  v3 = v2;
  v40 = *(v0 + 1220);
  v32 = *(v0 + 840);
  v33 = *(v0 + 848);
  v38 = *(v0 + 824);
  v36 = *(v0 + 728);
  v37 = *(v0 + 808);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 640);
  v34 = *(v0 + 800);
  v35 = *(v0 + 624);
  v10 = *(v0 + 592);
  v39 = *(v0 + 1216) == 1;
  v30 = *(v0 + 584);
  v31 = *(v0 + 632);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:), v12);

  v13 = v6[13];
  *(v0 + 1228) = v13;
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  *(v0 + 864) = v14;
  v15 = *(v14 - 8);
  *(v0 + 872) = v15;
  v16 = *(v15 + 56);
  *(v0 + 880) = v16;
  *(v0 + 888) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v4 + v13, 1, 1, v14);
  v17 = v6[16];
  v18 = type metadata accessor for FinishReason();
  *(v0 + 896) = v18;
  v19 = *(v18 - 8);
  *(v0 + 904) = v19;
  v20 = *(v19 + 56);
  *(v0 + 912) = v20;
  *(v0 + 920) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v4 + v17, 1, 1, v18);
  v21 = v6[20];
  *(v0 + 1232) = v21;
  v22 = *(v10 + 56);
  *(v0 + 928) = v22;
  *(v0 + 936) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v4 + v21, 1, 1, v30);
  StopSequenceMonitor.init(stopSequences:)();
  (*(v9 + 104))(v8, *MEMORY[0x277D71ED0], v31);
  ToolCallParser.init(version:)();
  v23 = MEMORY[0x277D84F90];
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = v23;
  *(v4 + 24) = 0;
  *(v4 + 32) = v23;
  *(v4 + 40) = v23;
  *(v4 + v6[12]) = 1;
  v24 = (v4 + v6[14]);
  *v24 = v32;
  v24[1] = v33;
  v25 = v4 + v6[15];
  *(v25 + 96) = 0;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 104) = 2;
  v26 = v4 + v6[17];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v4 + v6[18];
  *v27 = 0;
  *(v27 + 8) = 1;
  *(v4 + v6[19]) = v3;
  v38(v34, v37, v36);
  outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v4, v35, type metadata accessor for DataStreamState);
  v28 = *(v5 + 56);
  *(v0 + 944) = v28;
  *(v0 + 952) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v28(v35, 0, 1, v6);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v35, v34);
  swift_endAccess();
  DataStreamStateManager.startCompletePromptInstrumenter(uuid:onBehalfOfUserIdentifier:)(v37, v40 | (v39 << 32));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  __swift_project_boxed_opaque_existential_1((v0[46] + 56), *(v0[46] + 80));
  v1 = swift_task_alloc();
  v0[120] = v1;
  *v1 = v0;
  v1[1] = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  v2 = v0[89];
  v3 = v0[45];

  return OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v2, v3, 1);
}

{
  v39 = v0;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 968) + 56, v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
  if (*(v0 + 136))
  {
    v1 = *(v0 + 968);
    v2 = *(v0 + 856);
    v3 = *(v0 + 688);
    v4 = *(v0 + 208);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 96) = v4;
    *(v0 + 112) = *(v0 + 224);
    v5 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v5;
    v6 = *(v0 + 176);
    *(v0 + 48) = *(v0 + 160);
    *(v0 + 64) = v6;
    *v3 = *(v1 + 296);

    return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), v2, 0);
  }

  else
  {
    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 824);
    v8 = *(v0 + 816);
    v9 = *(v0 + 768);
    v10 = *(v0 + 728);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.device);
    v7(v9, v8, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 768);
    v16 = *(v0 + 736);
    v17 = *(v0 + 728);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38[0] = v37;
      *v18 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v36 = *(v16 + 8);
      v36(v15, v17);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v38);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_220940000, v12, v13, "Error: Inference context for request %{public}s is missing classifierMetadata", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223D90A10](v37, -1, -1);
      MEMORY[0x223D90A10](v18, -1, -1);
    }

    else
    {

      v36 = *(v16 + 8);
      v36(v15, v17);
    }

    v34 = *(v0 + 808);
    v35 = *(v0 + 816);
    v23 = *(v0 + 728);
    v33 = *(v0 + 712);
    v24 = *(v0 + 576);
    v25 = *(v0 + 568);
    v26 = *(v0 + 560);
    v28 = *(v0 + 376);
    v27 = *(v0 + 384);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    swift_allocError();
    v30 = v29;
    (*(v25 + 16))(v29, v24, v26);
    (*(v27 + 104))(v30, *MEMORY[0x277D71AF0], v28);
    swift_willThrow();

    (*(v25 + 8))(v24, v26);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v33, type metadata accessor for InferenceRequest);
    v36(v34, v23);
    v36(v35, v23);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 688), type metadata accessor for DataStreamState);

    v31 = *(v0 + 8);

    return v31();
  }
}

{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[92];
  v4 = v0[91];
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[89], type metadata accessor for InferenceRequest);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[86], type metadata accessor for DataStreamState);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 712);
  DataStreamStateManager.startPromptProcessingInstrumenter(uuid:onBehalfOfUserIdentifier:)(*(v0 + 808), *(v0 + 1220) | ((*(v0 + 1216) == 1) << 32));
  v3 = swift_task_alloc();
  *(v0 + 984) = v3;
  *v3 = v0;
  v3[1] = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  v4 = *(v0 + 968);
  v5 = *(v0 + 712);
  v6 = *(v0 + 600);

  return TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:)(v0 + 296, v6, v5, v4, v2 + v1);
}

{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  }

  else
  {
    v2 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v103 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 312);
  v8 = *(v3 + 16);
  *(v0 + 1000) = v8;
  *(v0 + 1008) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v2, v4);
  if (*(v6 + 16))
  {
    v93 = v5;
    v96 = v7;
    v9 = *(v0 + 928);
    v10 = *(v0 + 1232);
    v11 = *(v0 + 688);
    v12 = *(v0 + 608);
    v13 = *(v0 + 584);
    outlined destroy of [Int](v11 + v10, &_s15TokenGeneration6PromptV9RenderingVSgMd);
    v8(v11 + v10, v12, v13);
    v9(v11 + v10, 0, 1, v13);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    *(v0 + 1016) = __swift_project_value_buffer(v14, static Log.device);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v99 = v90;
      v100 = v6;
      *v17 = 136642819;
      v101 = v93;
      v102 = v96;

      v88 = v16;
      v18 = SamplingDecoderPrompt.description.getter();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v99);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_220940000, v15, v88, "Tokenized prompt is %{sensitive}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x223D90A10](v90, -1, -1);
      MEMORY[0x223D90A10](v17, -1, -1);
    }

    v22 = *(v0 + 688);
    v89 = *(v0 + 600);
    v91 = *(v0 + 856);
    v86 = *(v0 + 592);
    v87 = *(v0 + 584);
    v85 = *(v0 + 552);
    v23 = *(v0 + 544);
    v84 = *(v0 + 536);
    v24 = *(v0 + 64);
    v25 = *(v0 + 72);
    __swift_project_boxed_opaque_existential_1((v0 + 40), v24);
    v26 = *(v0 + 120);
    v100 = v6;
    v101 = v93;
    v102 = v96;
    *(v0 + 120) = (*(v25 + 64))(v26, &v100, v24, v25);
    v100 = v6;
    v101 = v93;
    v102 = v96;
    SamplingDecoderPrompt.flattened.getter();
    v28 = v27;

    v29 = *(v28 + 16);

    *(v22 + 16) = v29;
    *(v0 + 1024) = type metadata accessor for TransparencyReport();
    swift_allocObject();
    TransparencyReport.init()();
    Prompt.Rendering.renderedString.getter();
    InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    *(v0 + 1236) = *MEMORY[0x277D20988];
    v30 = *(v23 + 104);
    *(v0 + 1032) = v30;
    *(v0 + 1040) = (v23 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v30(v85);
    TransparencyReport.logEvent(configuration:prompt:response:model:modelVersion:executionEnvironment:)();

    v31 = *(v23 + 8);
    *(v0 + 1048) = v31;
    *(v0 + 1056) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v85, v84);
    v32 = *(v86 + 8);
    *(v0 + 1064) = v32;
    *(v0 + 1072) = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v89, v87);

    return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), v91, 0);
  }

  else
  {

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Log.device);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_220940000, v33, v34, "Empty Prompt Provided for inference", v35, 2u);
      MEMORY[0x223D90A10](v35, -1, -1);
    }

    v94 = *(v0 + 600);
    v36 = *(v0 + 592);
    v37 = *(v0 + 584);
    v38 = *(v0 + 576);
    v39 = *(v0 + 568);
    v40 = *(v0 + 560);
    v42 = *(v0 + 376);
    v41 = *(v0 + 384);

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v43 = swift_allocError();
    v45 = v44;
    (*(v39 + 16))(v44, v38, v40);
    (*(v41 + 104))(v45, *MEMORY[0x277D71AE0], v42);
    swift_willThrow();
    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v94, v37);
    *(v0 + 1128) = v43;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 824);
    v47 = *(v0 + 816);
    v48 = *(v0 + 760);
    v49 = *(v0 + 728);
    __swift_project_value_buffer(v97, static Log.device);
    v46(v48, v47, v49);
    v50 = v43;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 760);
    v55 = *(v0 + 736);
    v56 = *(v0 + 728);
    if (v53)
    {
      v95 = v52;
      v57 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v100 = v98;
      *v57 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v55 + 8);
      v61(v54, v56);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v100);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2114;
      v63 = v43;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v64;
      *v92 = v64;
      _os_log_impl(&dword_220940000, v51, v95, "Failed to handle request %{public}s, error tokenizing prompt: %{public}@", v57, 0x16u);
      outlined destroy of [Int](v92, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v92, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x223D90A10](v98, -1, -1);
      MEMORY[0x223D90A10](v57, -1, -1);
    }

    else
    {

      v61 = *(v55 + 8);
      v61(v54, v56);
    }

    *(v0 + 1136) = v61;
    v65 = *(v0 + 880);
    v66 = *(v0 + 872);
    v67 = *(v0 + 864);
    v68 = *(v0 + 1228);
    v69 = *(v0 + 688);
    outlined destroy of [Int](v69 + v68, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
    (*(v66 + 104))(v69 + v68, *MEMORY[0x277D20BC8], v67);
    v65(v69 + v68, 0, 1, v67);
    v70 = _convertErrorToNSError(_:)();
    *(v0 + 1144) = v70;
    v71 = v43;
    v72 = [v70 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v70 code];
    v73 = *(v0 + 480);
    v74 = *(v0 + 488);
    v76 = *(v0 + 464);
    v75 = *(v0 + 472);
    v78 = *(v0 + 440);
    v77 = *(v0 + 448);
    v79 = v71;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v73 + 16))(v76, v74, v75);
    (*(v77 + 104))(v76, *MEMORY[0x277D29DA8], v78);
    v80 = swift_task_alloc();
    *(v0 + 1152) = v80;
    *v80 = v0;
    v80[1] = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
    v81 = *(v0 + 808);
    v82 = *(v0 + 688);

    return DataStreamStateManager.removeState(uuid:state:)(v81, v82);
  }
}

{
  v1 = v0[107];
  DataStreamStateManager.endPromptProcessingInstrumenter(uuid:state:)(v0[101], v0[86]);

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), v1, 0);
}

{
  v1 = v0[107];
  DataStreamStateManager.updateState(uuid:state:)(v0[101], v0[86]);

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), v1, 0);
}

{
  v1 = *(*(v0 + 856) + 112);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 808);

    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v4)
    {
      outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(*(v1 + 56) + *(*(v0 + 672) + 72) * v3, *(v0 + 616), type metadata accessor for DataStreamState);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  (*(v0 + 944))(*(v0 + 616), v5, 1, *(v0 + 664));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v53 = v0;
  v1 = v0[77];
  if ((*(v0[84] + 48))(v1, 1, v0[83]) == 1)
  {
    v2 = v0[103];
    v3 = v0[102];
    v4 = v0[101];
    v5 = v0[98];
    v6 = v0[97];
    v7 = v0[91];
    outlined destroy of [Int](v1, &_s24TokenGenerationInference15DataStreamStateVSgMd);
    v2(v5, v3, v7);
    v2(v6, v4, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[98];
    v12 = v0[97];
    v13 = v0[92];
    v14 = v0[91];
    if (v10)
    {
      v47 = v9;
      v15 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v15 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v46 = v8;
      v19 = *(v13 + 8);
      v19(v11, v14);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v51);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v50 = v19;
      v19(v12, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v51);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_220940000, v46, v47, "Failed to handle request %{public}s, data stream %{public}s does not exist", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v49, -1, -1);
      MEMORY[0x223D90A10](v15, -1, -1);
    }

    else
    {

      v29 = *(v13 + 8);
      v29(v12, v14);
      v50 = v29;
      v29(v11, v14);
    }

    v44 = v0[133];
    v30 = v0[102];
    v48 = v0[101];
    v31 = v0[91];
    v45 = v0[89];
    v42 = v0[73];
    v43 = v0[76];
    v33 = v0[60];
    v32 = v0[61];
    v34 = v0[59];
    v35 = v0[55];
    v36 = v0[56];
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v51 = 0xD000000000000023;
    v52 = 0x8000000220AFDBB0;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v37);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    swift_allocError();
    v39 = v38;
    (*(v33 + 16))(v38, v32, v34);
    (*(v36 + 104))(v39, *MEMORY[0x277D29DA0], v35);
    swift_willThrow();

    (*(v33 + 8))(v32, v34);
    v44(v43, v42);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v45, type metadata accessor for InferenceRequest);
    v50(v48, v31);
    v50(v30, v31);
    outlined destroy of ClassifyingDecoder((v0 + 2));
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[86], type metadata accessor for DataStreamState);

    v40 = v0[1];

    return v40();
  }

  else
  {
    outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v1, v0[85], type metadata accessor for DataStreamState);
    OnDeviceInferenceContext.assets.getter();
    v25 = [objc_opt_self() processInfo];
    v26 = [v25 operatingSystemVersionString];
    v27 = v0[107];
    v28 = v26;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    ModelInformation.init(assets:systemVersion:)();

    return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), v27, 0);
  }
}

{
  DataStreamStateManager.startFirstTokenInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(*(v0 + 808), *(v0 + 1220) | ((*(v0 + 1216) == 1) << 32));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v1 = v0[121];
  v2 = __swift_project_boxed_opaque_existential_1((v0[46] + 56), *(v0[46] + 80));
  v3 = v1[44];
  v4 = v1[45];
  v5 = v1[46];
  v6 = v1[47];
  __swift_project_boxed_opaque_existential_1((*v2 + 56), *(*v2 + 80));
  v7 = off_2834512B0[0];
  outlined copy of StopToken?(v3, v4, v5, v6);
  type metadata accessor for OnDeviceInferenceOverrides();

  v8 = v7();
  v10 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v8, v9, v3, v4, v5, v6);

  outlined consume of StopToken?(v3, v4, v5, v6);
  v11 = swift_task_alloc();
  v0[135] = v11;
  *v11 = v0;
  v11[1] = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  v12 = v0[43];

  return ClassifyingDecoder.classify(stopTokenID:parameters:)(v10, v12);
}

{
  DataStreamStateManager.endFirstTokenInferenceInstrumenter(uuid:)(*(v0 + 808));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  DataStreamStateManager.updateState(uuid:state:)(*(v0 + 808), *(v0 + 680));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v23 = v0;
  (*(v0 + 824))(*(v0 + 792), *(v0 + 816), *(v0 + 728));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 792);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v7 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v13 = *(v5 + 8);
    v12 = v5 + 8;
    v11 = v13;
    v13(v4, v6);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_220940000, v1, v2, "Successfully handled classification request %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v7, -1, -1);
  }

  else
  {

    v15 = *(v5 + 8);
    v12 = v5 + 8;
    v11 = v15;
    v15(v4, v6);
  }

  *(v0 + 1104) = v11;
  *(v0 + 1096) = v12;
  v16 = *(v0 + 248);
  *(v0 + 1240) = *(v0 + 256);
  *(v0 + 1112) = v16;
  v17 = swift_task_alloc();
  *(v0 + 1120) = v17;
  *v17 = v0;
  v17[1] = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  v18 = *(v0 + 808);
  v19 = *(v0 + 680);

  return DataStreamStateManager.removeState(uuid:state:)(v18, v19);
}

{

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v24 = *(v0 + 1104);
  v20 = *(v0 + 1064);
  v14 = *(v0 + 1048);
  v8 = *(v0 + 1032);
  v6 = *(v0 + 1236);
  v15 = *(v0 + 1000);
  v1 = *(v0 + 968);
  v16 = *(v0 + 928);
  v22 = *(v0 + 816);
  v19 = *(v0 + 808);
  v18 = *(v0 + 728);
  v17 = *(v0 + 712);
  v23 = *(v0 + 688);
  v21 = *(v0 + 680);
  v13 = *(v0 + 608);
  v12 = *(v0 + 584);
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);
  v10 = *(v0 + 528);
  v25 = *(v0 + 520);
  v7 = *(v0 + 512);
  v9 = *(v0 + 504);
  v11 = *(v0 + 496);
  swift_allocObject();
  TransparencyReport.init()();
  __swift_project_boxed_opaque_existential_1((v1 + 256), *(v1 + 280));
  dispatch thunk of TokenIDToTextConverterProtocol.text.getter();
  InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
  OnDeviceInferenceContext.modelVersion.getter();
  v8(v2, v6, v3);
  TransparencyReport.logEvent(configuration:prompt:response:model:modelVersion:executionEnvironment:)();

  v14(v2, v3);
  (*(v7 + 16))(v25, v10, v9);
  v15(v11, v13, v12);
  v16(v11, 0, 1, v12);
  ClassificationResponse.init(labels:modelInformation:didFallbackToDefaultThresholds:renderedPrompt:)();

  (*(v7 + 8))(v10, v9);
  v20(v13, v12);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v17, type metadata accessor for InferenceRequest);
  v24(v19, v18);
  v24(v22, v18);
  outlined destroy of ClassifyingDecoder(v0 + 16);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v21, type metadata accessor for DataStreamState);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v23, type metadata accessor for DataStreamState);

  v4 = *(v0 + 8);

  return v4();
}

{

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v1 = v0[143];
  v2 = v0[142];
  v11 = v0[141];
  v16 = v0[102];
  v17 = v0[124];
  v15 = v0[101];
  v3 = v0[91];
  v4 = v0[60];
  v13 = v0[61];
  v14 = v0[89];
  v5 = v0[58];
  v12 = v0[59];
  v6 = v0[55];
  v7 = v0[56];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v7 + 16))(v8, v5, v6);

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v13, v12);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v14, type metadata accessor for InferenceRequest);
  v2(v15, v3);
  v2(v16, v3);
  outlined destroy of ClassifyingDecoder((v0 + 2));
  if (!v17)
  {
    (*(v0[74] + 8))(v0[76], v0[73]);
  }

  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[86], type metadata accessor for DataStreamState);

  v9 = v0[1];

  return v9();
}

{
  v45 = v0;
  v1 = *(v0 + 992);
  *(v0 + 1128) = v1;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 760);
  v5 = *(v0 + 728);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.device);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 760);
  v12 = *(v0 + 736);
  v13 = *(v0 + 728);
  if (v10)
  {
    v42 = v9;
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v14 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v44);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v41 = v21;
    _os_log_impl(&dword_220940000, v8, v42, "Failed to handle request %{public}s, error tokenizing prompt: %{public}@", v14, 0x16u);
    outlined destroy of [Int](v41, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x223D90A10](v43, -1, -1);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  *(v0 + 1136) = v18;
  v22 = *(v0 + 880);
  v23 = *(v0 + 872);
  v24 = *(v0 + 864);
  v25 = *(v0 + 1228);
  v26 = *(v0 + 688);
  outlined destroy of [Int](v26 + v25, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  (*(v23 + 104))(v26 + v25, *MEMORY[0x277D20BC8], v24);
  v22(v26 + v25, 0, 1, v24);
  v27 = _convertErrorToNSError(_:)();
  *(v0 + 1144) = v27;
  v28 = v1;
  v29 = [v27 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v27 code];
  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v33 = *(v0 + 464);
  v32 = *(v0 + 472);
  v35 = *(v0 + 440);
  v34 = *(v0 + 448);
  v36 = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v30 + 16))(v33, v31, v32);
  (*(v34 + 104))(v33, *MEMORY[0x277D29DA8], v35);
  v37 = swift_task_alloc();
  *(v0 + 1152) = v37;
  *v37 = v0;
  v37[1] = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  v38 = *(v0 + 808);
  v39 = *(v0 + 688);

  return DataStreamStateManager.removeState(uuid:state:)(v38, v39);
}

{
  v121 = v0;
  v1 = *(v0 + 1088);
  *(v0 + 320) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 408) + 88))(*(v0 + 432), *(v0 + 400));
    if (v3 == *MEMORY[0x277D71E20])
    {
      v4 = v3;
      log = *(v0 + 824);
      v5 = *(v0 + 816);
      v6 = *(v0 + 752);
      v7 = *(v0 + 728);
      v8 = *(v0 + 416);
      v9 = *(v0 + 424);
      v10 = *(v0 + 400);
      v11 = *(v0 + 408);

      (*(v11 + 104))(v9, v4, v10);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28]);
      v12 = swift_allocError();
      v13 = *(v11 + 16);
      v13(v14, v9, v10);
      v115 = _convertErrorToNSError(_:)();
      *(v0 + 1160) = v115;

      (log)(v6, v5, v7);
      v13(v8, v9, v10);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 752);
      v19 = *(v0 + 736);
      v20 = *(v0 + 728);
      v21 = *(v0 + 408);
      v113 = *(v0 + 416);
      v22 = *(v0 + 400);
      v118 = v13;
      if (v17)
      {
        loga = v15;
        v107 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v120 = v112;
        *v107 = 136446466;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v108 = v16;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = v22;
        v27 = *(v19 + 8);
        v27(v18, v20);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v120);

        *(v107 + 4) = v28;
        *(v107 + 12) = 2114;
        swift_allocError();
        v118(v29, v113, v26);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = *(v21 + 8);
        v31(v113, v26);
        *(v107 + 14) = v30;
        *v109 = v30;
        _os_log_impl(&dword_220940000, loga, v108, "Failed to handle request %{public}s, detokenization failed: %{public}@", v107, 0x16u);
        outlined destroy of [Int](v109, &_sSo8NSObjectCSgMd);
        MEMORY[0x223D90A10](v109, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v112);
        MEMORY[0x223D90A10](v112, -1, -1);
        v32 = v27;
        MEMORY[0x223D90A10](v107, -1, -1);
      }

      else
      {

        v31 = *(v21 + 8);
        v31(v113, v22);
        v32 = *(v19 + 8);
        v32(v18, v20);
      }

      *(v0 + 1176) = v31;
      *(v0 + 1168) = v32;
      v90 = *(v0 + 880);
      v91 = *(v0 + 872);
      v92 = *(v0 + 864);
      v93 = *(v0 + 680);
      v94 = *(*(v0 + 664) + 52);
      outlined destroy of [Int](v93 + v94, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
      (*(v91 + 104))(v93 + v94, *MEMORY[0x277D20BD0], v92);
      v90(v93 + v94, 0, 1, v92);
      v95 = [v115 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = [v115 domain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v115 code];
      v98 = *(v0 + 480);
      v97 = *(v0 + 488);
      v100 = *(v0 + 464);
      v99 = *(v0 + 472);
      v101 = *(v0 + 448);
      v117 = *(v0 + 440);
      v102 = *(v0 + 424);
      v103 = *(v0 + 400);
      swift_allocError();
      v118(v104, v102, v103);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
      (*(v98 + 16))(v100, v97, v99);
      (*(v101 + 104))(v100, *MEMORY[0x277D29DA8], v117);
      v88 = swift_task_alloc();
      *(v0 + 1184) = v88;
      *v88 = v0;
      v89 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
      goto LABEL_20;
    }

    (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));
  }

  v33 = *(v0 + 1088);
  v34 = *(v0 + 824);
  v35 = *(v0 + 816);
  v36 = *(v0 + 744);
  v37 = *(v0 + 728);

  v34(v36, v35, v37);
  v38 = v33;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v116 = *(v0 + 1088);
    v41 = *(v0 + 744);
    v42 = *(v0 + 736);
    v43 = *(v0 + 728);
    v44 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v120 = v119;
    *v44 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = *(v42 + 8);
    v48(v41, v43);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v120);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2114;
    v50 = v116;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v51;
    *v114 = v51;
    _os_log_impl(&dword_220940000, v39, v40, "Failed to handle request %{public}s, error decoding next token. error: %{public}@.", v44, 0x16u);
    outlined destroy of [Int](v114, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v114, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x223D90A10](v119, -1, -1);
    MEMORY[0x223D90A10](v44, -1, -1);
  }

  else
  {
    v52 = *(v0 + 744);
    v53 = *(v0 + 736);
    v54 = *(v0 + 728);

    v48 = *(v53 + 8);
    v48(v52, v54);
  }

  *(v0 + 1192) = v48;
  v55 = *(v0 + 880);
  v56 = *(v0 + 872);
  v57 = *(v0 + 864);
  v58 = *(v0 + 680);
  v59 = *(v0 + 664);
  v60 = _convertErrorToNSError(_:)();
  *(v0 + 1200) = v60;
  v61 = *(v59 + 52);
  outlined destroy of [Int](v58 + v61, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  (*(v56 + 104))(v58 + v61, *MEMORY[0x277D20BC0], v57);
  v55(v58 + v61, 0, 1, v57);
  if ([v60 code] == 2)
  {
    v62 = [v60 domain];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
    {

LABEL_14:
      v68 = [v60 localizedDescription];
      v69 = *(v0 + 680);
      v70 = v68;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      result = TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v73 = *(v69 + 8);
      v72 = *(v69 + 16);
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        __break(1u);
        return result;
      }

      v75 = *(v0 + 576);
      v76 = *(v0 + 568);
      v77 = *(v0 + 560);
      v79 = *(v0 + 384);
      v78 = *(v0 + 392);
      v80 = *(v0 + 376);
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMd) + 64);
      *v78 = v74;
      *(v78 + 1) = OnDeviceInferenceContext.maximumContextLength.getter();
      (*(v76 + 16))(&v78[v81], v75, v77);
      (*(v79 + 104))(v78, *MEMORY[0x277D71AC8], v80);
      TokenGenerationError.toInferenceError()();
      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v75, v77);
      goto LABEL_17;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_14;
    }
  }

  v82 = [v60 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = [v60 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v60 code];
  v85 = *(v0 + 448);
  v84 = *(v0 + 456);
  v86 = *(v0 + 440);
  v87 = *(v0 + 1088);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v85 + 104))(v84, *MEMORY[0x277D29DA8], v86);
LABEL_17:
  v88 = swift_task_alloc();
  *(v0 + 1208) = v88;
  *v88 = v0;
  v89 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
LABEL_20:
  v88[1] = v89;
  v105 = *(v0 + 808);
  v106 = *(v0 + 680);

  return DataStreamStateManager.removeState(uuid:state:)(v105, v106);
}

{

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v18 = *(v0 + 1176);
  v24 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  v20 = *(v0 + 1064);
  v22 = *(v0 + 808);
  v23 = *(v0 + 816);
  v21 = *(v0 + 728);
  v19 = *(v0 + 712);
  v25 = *(v0 + 680);
  v16 = *(v0 + 584);
  v17 = *(v0 + 608);
  v1 = *(v0 + 512);
  v14 = *(v0 + 504);
  v15 = *(v0 + 528);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v6 = *(v0 + 440);
  v5 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 488);
  v7 = *(v0 + 400);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v5 + 32))(v8, v4, v6);

  (*(v2 + 8))(v12, v3);
  v18(v11, v7);
  (*(v1 + 8))(v15, v14);
  v20(v17, v16);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v19, type metadata accessor for InferenceRequest);
  v24(v22, v21);
  v24(v23, v21);
  outlined destroy of ClassifyingDecoder(v0 + 16);

  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v25, type metadata accessor for DataStreamState);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 688), type metadata accessor for DataStreamState);

  v9 = *(v0 + 8);

  return v9();
}

{

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:), 0, 0);
}

{
  v1 = v0[150];
  v2 = v0[149];
  v12 = v0[136];
  v17 = v0[133];
  v18 = v0[101];
  v19 = v0[102];
  v3 = v0[91];
  v16 = v0[89];
  v20 = v0[85];
  v14 = v0[73];
  v15 = v0[76];
  v13 = v0[66];
  v4 = v0[64];
  v11 = v0[63];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[55];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v6 + 16))(v8, v5, v7);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v13, v11);
  v17(v15, v14);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v16, type metadata accessor for InferenceRequest);
  v2(v18, v3);
  v2(v19, v3);
  outlined destroy of ClassifyingDecoder((v0 + 2));
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v20, type metadata accessor for DataStreamState);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[86], type metadata accessor for DataStreamState);

  v9 = v0[1];

  return v9();
}