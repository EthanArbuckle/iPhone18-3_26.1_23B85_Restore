void sub_22095128C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEm(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEm_cold_1();
  }

  return *a1 + 2 * a2;
}

uint64_t type metadata completion function for Asset()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OnDeviceInferenceProviderDataSource.catalogResource(for:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  dispatch thunk of CatalogClient.resource(for:)();

  if (!v1)
  {
    if (v6)
    {
      return outlined init with take of RandomNumberGenerator(&v5, a1);
    }

    else
    {
      outlined destroy of [Int](&v5, &_s12ModelCatalog0B8Resource_pSgMd);
      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v4 = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t OnDeviceInferenceProviderDataSource.asset(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AssetVersion();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = OnDeviceInferenceProviderDataSource.catalogResource(for:)(v39);
  if (!v3)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v39, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedResource_pMd);
    if (swift_dynamicCast())
    {
      v32 = a3;
      outlined init with take of RandomNumberGenerator(v33, v38);
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v37 = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
      dispatch thunk of AssetBackedResource.fetchAsset()();
      v40 = 0;
      __swift_project_boxed_opaque_existential_1(v35, AssociatedTypeWitness);
      v19 = swift_getAssociatedTypeWitness();
      v30 = &v27;
      v28 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v29 = AssociatedConformanceWitness;
      v21 = &v27 - v20;
      dispatch thunk of CatalogAssetProtocol.contents.getter();
      swift_getAssociatedConformanceWitness();
      v22 = v32;
      dispatch thunk of AssetContents.baseURL.getter();
      (*(v28 + 8))(v21, v19);
      dispatch thunk of CatalogAssetProtocol.version.getter();
      v23 = AssetVersion.number.getter();
      v25 = v24;
      (*(v8 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v26 = (v22 + *(type metadata accessor for Asset() + 20));
      *v26 = v23;
      v26[1] = v25;
      __swift_destroy_boxed_opaque_existential_1(v35);
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      outlined destroy of [Int](v33, &_s12ModelCatalog19AssetBackedResource_pSgMd);
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.device);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v38[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v38);
        _os_log_impl(&dword_220940000, v14, v15, "Catalog resource with identifier %s is not asset backed resource", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x223D90A10](v17, -1, -1);
        MEMORY[0x223D90A10](v16, -1, -1);
      }

      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceAssetObjectTokenizer()
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TokenizerRunner();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImageTokenIDGenerator();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [Int]?, &_sSaySiGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Asset?(319, &lazy cache variable for type metadata for GuidedGenerationVocabularyManager?, MEMORY[0x277D71DE8]);
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

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC15handleTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL17tokenizerResource5assety12ModelCatalog0f6BackedI0_p_AA0F0Vt0V15ManagerServices0C5ErrorOYKF(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v52 = a2;
  v44 = type metadata accessor for InferenceError.Context();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v41 - v7;
  v43 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  MEMORY[0x28223BE20](v43);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = dispatch thunk of CatalogResource.id.getter();
  v14 = v13;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.device);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v51 = v14;
  if (v18)
  {
    v19 = v14;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v19, v53);
    _os_log_impl(&dword_220940000, v16, v17, "Creating tokenizer for asset %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v20, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v54 + 192), *(v54 + 216));
  v22 = off_283451590;
  type metadata accessor for OnDeviceInferenceProviderDataSource();
  v23 = (v22)(a1);
  if (v3)
  {

    v25 = 0;
    v26 = 1;
  }

  else
  {
    v26 = v23;
    v25 = v24;
  }

  URL.appendingPathComponent(_:)();
  URL.path.getter();
  if (v26 >= 2)
  {
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of OnDeviceInferenceProviderDataSource.createTokenizer(tokenizerPath:metadata:));
    outlined destroy of [Int](&unk_28344E240, &_sSS_SStMd);
  }

  type metadata accessor for TokenizerRunner();
  swift_allocObject();

  v27 = TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)();
  (*(v49 + 8))(v12, v50);

  v28 = v42;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v52, v42, type metadata accessor for Asset);
  v29 = type metadata accessor for Asset();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);

  v30 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  type metadata accessor for ImageTokenIDGenerator();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  if (v26 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = v25;
  }

  v52 = v32;
  if (v26 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v26;
  }

  v34 = v43;
  v35 = *(v43 + 44);
  v36 = type metadata accessor for GuidedGenerationVocabularyManager();
  (*(*(v36 - 8) + 56))(&v9[v35], 1, 1, v36);
  v37 = v48;
  v38 = v51;
  *v9 = v48;
  *(v9 + 1) = v38;
  outlined init with take of Asset?(v28, &v9[v34[5]], &_s24TokenGenerationInference5AssetVSgMd);
  *&v9[v34[6]] = v27;
  *&v9[v34[7]] = v31;
  *&v9[v34[8]] = v33;
  *&v9[v34[9]] = v52;
  *&v9[v34[10]] = 0;
  v53[3] = v34;
  v53[4] = &protocol witness table for OnDeviceInferenceAssetObjectTokenizer;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v9, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v53, v37, v38);
  swift_endAccess();

  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v9, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
}

void type metadata accessor for Asset?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for OnDeviceInferenceProviderDataSourceProtocol.tokenizerMetadataFromResource(_:) in conformance OnDeviceInferenceProviderDataSource(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TokenizerAssetMetadata();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  if (!v1)
  {
    v11 = v15;
    CatalogAsset.metadata.getter();
    v12 = (*(v8 + 8))(v10, v7);
    v2 = MEMORY[0x223D8C4B0](v12);
    MEMORY[0x223D8C4C0]();
    (*(v11 + 8))(v6, v4);
  }

  return v2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = a3;
  v4[77] = v3;
  v4[76] = a2;
  v4[75] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v4[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[84] = swift_task_alloc();
  v5 = type metadata accessor for ModelConfiguration();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v4[92] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError.Context();
  v4[93] = v6;
  v4[94] = *(v6 - 8);
  v4[95] = swift_task_alloc();
  v7 = type metadata accessor for CostProfile();
  v4[96] = v7;
  v4[97] = *(v7 - 8);
  v4[98] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[99] = v8;
  v4[100] = *(v8 - 8);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError();
  v4[103] = v9;
  v4[104] = *(v9 - 8);
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

void type metadata completion function for OnDeviceInferenceAssetObjectE5Runner()
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BaseModel(319, &lazy cache variable for type metadata for LanguageModelRunner);
    if (v1 <= 0x3F)
    {
      type metadata accessor for E5TransformerLanguageModel();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for DraftingBehavior?, &type metadata for DraftingBehavior, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : MetadataSpecialToken]?, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : [String : MetadataSpecialToken]]?, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Asset?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Asset?(319, &lazy cache variable for type metadata for PromptTemplateConfiguration?, type metadata accessor for PromptTemplateConfiguration);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for [String](319, &lazy cache variable for type metadata for ClassifierMetadata?, &type metadata for ClassifierMetadata, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for [String](319, &lazy cache variable for type metadata for StopToken?, &type metadata for StopToken, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for Asset?(319, &lazy cache variable for type metadata for PromptPreprocessingTemplateVersion?, MEMORY[0x277D71ED8]);
                      if (v10 <= 0x3F)
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

uint64_t type metadata completion function for E5TransformerLanguageModel()
{
  result = type metadata accessor for ContinuousClock();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220952FB4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVySiGMd);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t outlined init with take of Asset?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference08OnDeviceE11AssetObject_pGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        outlined init with take of RandomNumberGenerator(v24, v34);
      }

      else
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of RandomNumberGenerator(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        outlined init with take of RandomNumberGenerator(v21, v31);
      }

      else
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v21, v31);
      }

      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of RandomNumberGenerator(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttGMd);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v37 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GAC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GGMd);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x223D8F420](*(v20 + 48));
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        outlined copy of MetadataSpecialToken(v25, v26, v27);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v35 = v25[1];
      v36 = *v25;
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5Int32VGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = v3;
  v4[20] = a3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for InferenceError();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v32 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v31);
    _os_log_impl(&dword_220940000, v2, v3, "Handling load out for asset with identifier %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  if (v0[17] == 0xD000000000000017 && 0x8000000220AFD6C0 == v0[18] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = [objc_opt_self() defaultManager];
    v9 = v0[19];
    v10 = v8;
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    v11 = off_2834512C0;
    v0[31] = type metadata accessor for OnDeviceInferenceOverrides();
    v12 = v11();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v12 = 0xD000000000000022;
      v14 = 0x8000000220AFD7D0;
    }

    v15 = MEMORY[0x223D8E6B0](v12, v14);

    v16 = [v10 fileExistsAtPath_];

    if (v16)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v0[19] + 136, (v0 + 12));
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
      v17 = v11();
      v0[32] = v18;
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xD000000000000022;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0x8000000220AFD7D0;
      }

      v21 = swift_task_alloc();
      v0[33] = v21;
      *v21 = v0;
      v21[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_;
      v22 = v0[28];
    }

    else
    {
      v23 = v0[19];
      outlined init with copy of DeterministicLanguageModelProtocol(v23 + 136, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
      v24 = off_283451290();
      v0[35] = v25;
      if (v25)
      {
        v19 = v24;
      }

      else
      {
        v19 = 0xD00000000000001DLL;
      }

      if (v25)
      {
        v20 = v25;
      }

      else
      {
        v20 = 0x8000000220AFD790;
      }

      v26 = swift_task_alloc();
      v0[36] = v26;
      *v26 = v0;
      v26[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ4_;
      v22 = v0[27];
    }

    v27 = v19;
    v28 = v20;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[19] + 136), *(v0[19] + 160));
    v29 = swift_task_alloc();
    v0[41] = v29;
    *v29 = v0;
    v29[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ10_;
    v22 = v0[25];
    v28 = v0[18];
    v27 = v0[17];
  }

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(v27, v28, v22);
}

void sub_22095399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TGIE5ANESessionObjC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::~ANEAJAXE5MLModel(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this)
{
  *this = &unk_28344D488;
  *(this + 6) = &unk_28344D510;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v4 = (this + 248);
  std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 30);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = (this + 208);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 184);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 160);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(this);
}

{
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::~ANEAJAXE5MLModel(this);

  JUMPOUT(0x223D8FE50);
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[51] = v3;
  v4[52] = a3;
  v4[49] = a1;
  v4[50] = a2;
  v5 = type metadata accessor for InferenceError.Context();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v93 = v0;
  if (one-time initialization token for device != -1)
  {
LABEL_47:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 448) = __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 392);
    v4 = *(v0 + 400);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v90 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v90);
    _os_log_impl(&dword_220940000, v2, v3, "Unloading asset %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  v10 = *(v0 + 392);
  swift_beginAccess();
  v11 = *(v9 + 184);

  LOBYTE(v8) = specialized Set.contains(_:)(v10, v8, v11);

  if ((v8 & 1) == 0)
  {
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    v21 = *(v0 + 392);
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v90, v21, v19);
    swift_endAccess();

    swift_beginAccess();
    v22 = *(v20 + 128);
    if (*(v22 + 16))
    {
      v24 = *(v0 + 392);
      v23 = *(v0 + 400);

      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
      if (v26)
      {
        v27 = *(v0 + 400);
        v28 = *(v0 + 392);
        outlined init with copy of DeterministicLanguageModelProtocol(*(v22 + 56) + 40 * v25, v0 + 72);

        outlined destroy of [Int](v0 + 72, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        swift_beginAccess();

        specialized Dictionary.subscript.setter(&v90, v28, v27);
        swift_endAccess();
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        swift_beginAccess();

        specialized Dictionary.subscript.setter(&v90, v28, v27);
        goto LABEL_14;
      }
    }

    v29 = *(v0 + 408);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    outlined destroy of [Int](v0 + 72, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
    swift_beginAccess();
    v30 = *(v29 + 152);
    if (*(v30 + 16))
    {
      v32 = *(v0 + 392);
      v31 = *(v0 + 400);

      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v31);
      if (v34)
      {
        v36 = *(v0 + 392);
        v35 = *(v0 + 400);
        outlined init with copy of DeterministicLanguageModelProtocol(*(v30 + 56) + 40 * v33, v0 + 112);

        outlined destroy of [Int](v0 + 112, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        swift_beginAccess();

        specialized Dictionary.subscript.setter(&v90, v36, v35);
LABEL_14:
        swift_endAccess();
        v37 = *(v0 + 408);
        swift_beginAccess();
        v38 = *(v37 + 144);
        v39 = -1;
        v40 = -1 << *(v38 + 32);
        if (-v40 < 64)
        {
          v39 = ~(-1 << -v40);
        }

        v41 = v39 & *(v38 + 64);
        v42 = (63 - v40) >> 6;
        swift_bridgeObjectRetain_n();
        v43 = 0;
        while (v41)
        {
LABEL_22:
          v46 = *(v0 + 392);
          v45 = *(v0 + 400);
          v47 = __clz(__rbit64(v41)) | (v43 << 6);
          v48 = (*(v38 + 48) + 16 * v47);
          v50 = *v48;
          v49 = v48[1];
          outlined init with copy of DeterministicLanguageModelProtocol(*(v38 + 56) + 40 * v47, v0 + 32);
          *(v0 + 16) = v50;
          *(v0 + 24) = v49;
          if (v50 == v46 && v49 == v45)
          {

            outlined destroy of [Int](v0 + 16, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd);
LABEL_41:

            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v81 = *(v0 + 392);
              v80 = *(v0 + 400);
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              *&v90 = v83;
              *v82 = 136446210;
              *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, &v90);
              _os_log_impl(&dword_220940000, v78, v79, "Suspending unload for the asset %{public}s since its currently in use", v82, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v83);
              MEMORY[0x223D90A10](v83, -1, -1);
              MEMORY[0x223D90A10](v82, -1, -1);
            }

            v85 = *(v0 + 400);
            v84 = *(v0 + 408);
            v86 = *(v0 + 392);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type OnDeviceInferenceAssetRepository and conformance OnDeviceInferenceAssetRepository, v87, type metadata accessor for OnDeviceInferenceAssetRepository);
            v88 = swift_task_alloc();
            *(v0 + 456) = v88;
            v88[2] = v84;
            v88[3] = v86;
            v88[4] = v85;
            v89 = swift_task_alloc();
            *(v0 + 464) = v89;
            *v89 = v0;
            v89[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_;

            return MEMORY[0x2822007B8]();
          }

          v41 &= v41 - 1;
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of [Int](v0 + 16, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd);
          if (v52)
          {
            goto LABEL_41;
          }
        }

        while (1)
        {
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v44 >= v42)
          {
            break;
          }

          v41 = *(v38 + 64 + 8 * v44);
          ++v43;
          if (v41)
          {
            v43 = v44;
            goto LABEL_22;
          }
        }

        v53 = *(v0 + 400);
        v54 = *(v0 + 392);
        OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v54, v53);
        swift_endAccess();

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_37;
        }

        v56 = *(v0 + 392);
        v55 = *(v0 + 400);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v90 = v17;
        *v16 = 136446210;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, &v90);
        v18 = "Finished unloading asset %{public}s";
        goto LABEL_30;
      }
    }

    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0;
    outlined destroy of [Int](v0 + 112, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = *(v0 + 392);
      v59 = *(v0 + 400);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v90 = v62;
      *v61 = 136446210;
      *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, &v90);
      _os_log_impl(&dword_220940000, v57, v58, "Asset is not loaded %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x223D90A10](v62, -1, -1);
      MEMORY[0x223D90A10](v61, -1, -1);
    }

    v63 = *(v0 + 432);
    v64 = *(v0 + 440);
    v66 = *(v0 + 416);
    v65 = *(v0 + 424);
    v68 = *(v0 + 392);
    v67 = *(v0 + 400);
    *&v90 = 0x207465737341;
    *(&v90 + 1) = 0xE600000000000000;
    MEMORY[0x223D8E780](v68, v67);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v63 + 16))(v66, v64, v65);
    v69 = *MEMORY[0x277D29DD8];
    v70 = type metadata accessor for InferenceError();
    (*(*(v70 - 8) + 104))(v66, v69, v70);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v63 + 8))(v64, v65);
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v68, v67);
    swift_endAccess();

    v12 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v71))
    {
      v73 = *(v0 + 392);
      v72 = *(v0 + 400);
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v90 = v75;
      *v74 = 136446210;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, &v90);
      _os_log_impl(&dword_220940000, v12, v71, "Finished unloading asset %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x223D90A10](v75, -1, -1);
      MEMORY[0x223D90A10](v74, -1, -1);
    }

    goto LABEL_37;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v90 = v17;
    *v16 = 136446210;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v90);
    v18 = "Asset %{public}s is already being unloaded, ignoring duplicate unload request";
LABEL_30:
    _os_log_impl(&dword_220940000, v12, v13, v18, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223D90A10](v17, -1, -1);
    MEMORY[0x223D90A10](v16, -1, -1);
  }

LABEL_37:

  v76 = *(v0 + 8);

  return v76();
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStream  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_220954918(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::moveToDynamicState(cgm::token_generation_inference::ajax::utils ***this)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 0;
    _os_log_impl(&dword_220940000, v2, OS_LOG_TYPE_DEFAULT, "ANE model moving to dynamic state. Unwiring and deallocating IO buffers", v16, 2u);
  }

  result = ((*this)[1])(this, 0);
  v4 = this[23];
  v5 = this[24];
  while (v4 != v5)
  {
    E5RT::ExecutionStream::ResetStream(v4[2]);
    v6 = *v4;
    v4 += 4;
    result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(v6, v7);
  }

  v8 = this[20];
  v9 = this[21];
  while (v8 != v9)
  {
    E5RT::ExecutionStream::ResetStream(v8[2]);
    v10 = *v8;
    v8 += 4;
    result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(v10, v11);
  }

  v12 = this[26];
  v13 = this[27];
  while (v12 != v13)
  {
    E5RT::ExecutionStream::ResetStream(v12[2]);
    v14 = *v12;
    v12 += 4;
    result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(v14, v15);
  }

  *(this + 296) = 1;
  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

uint64_t E5TransformerLanguageModel.__deallocating_deinit()
{
  E5TransformerLanguageModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t E5TransformerLanguageModel.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_clock;
  v2 = type metadata accessor for ContinuousClock();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::reset(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = (this + 248);
  if (a2 > (*(this + 32) - *(this + 31)) >> 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v16 = *(this + 10);
    std::string::basic_string[abi:ne200100]<0>(&v17, "reset");
    cgm::token_generation_inference::ajax::AJAXE5Error::createContextExceededError(v16, &v17, exception);
  }

  v5 = *(this + 34);
  v6 = 0;
  v7 = *(this + 35) - v5;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 3;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    while (1)
    {
      v11 = v6 ? v5[v6] + ~v5[v6 - 1] : *v5;
      if (a2 - v8 <= v11)
      {
        break;
      }

      v8 += v11;
      if (v10 == ++v6)
      {
        v6 = v10;
        break;
      }
    }

    if (v6 > v9)
    {
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::reset();
    }
  }

  std::vector<unsigned long>::resize(this + 34, v6);
  std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::resize(v3, v6 + a2);
  v13 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = (*(this + 32) - *(this + 31)) >> 5;
    v17 = 134218496;
    v18 = a2;
    v19 = 2048;
    v20 = v14;
    v21 = 2048;
    v22 = v6;
    _os_log_debug_impl(&dword_220940000, v13, OS_LOG_TYPE_DEBUG, "Reset called with startIndex=%zu, end of function call mContextTokensSize=%zu and numHoles=%zu", &v17, 0x20u);
  }
}

void sub_220954FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 24);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 32;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__append(a1, v5);
  }
}

uint64_t cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(cgm::token_generation_inference::ajax::utils *this, E5RT::ExecutionStreamOperation *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v14, InputPorts);
  for (i = v15; i; i = *i)
  {
    v16 = 0;
    v17 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v14);
  v5 = E5RT::ExecutionStreamOperation::GetInOutPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v12, v5);
  for (j = v13; j; j = *j)
  {
    v16 = 0;
    v17 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v12);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v10, OutputPorts);
  for (k = v11; k; k = *k)
  {
    v16 = 0;
    v17 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v10);
}

void sub_2209551B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 - 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t KVLRUCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[17];
    v5 = v2[12];
    v6 = *(v2[13] + 32);
    v2[24] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY5_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t type metadata accessor for E5TransformerLanguageModel()
{
  result = type metadata singleton initialization cache for E5TransformerLanguageModel;
  if (!type metadata singleton initialization cache for E5TransformerLanguageModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(a6 + 80))(a5, a6);
  type metadata accessor for KVLRUCache();
  v12 = swift_allocObject();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v12 + 16) = v13;
  [v13 setTotalCostLimit_];
  v14 = swift_allocObject();

  return specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:)(a1, v12, a2, a3, v14, a5, a6);
}

uint64_t specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26E5TransformerLanguageModelC9NodeStateVGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220AE8A30;
  v14 = MEMORY[0x277D84F90];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 56) = v15;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(a5 + 56) = v13;
  *(a5 + 64) = 0;
  *(a5 + 72) = static Duration.zero.getter();
  *(a5 + 80) = v16;
  ContinuousClock.init()();
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) = &outlined read-only object #0 of specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:);
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes) = v14;
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_allPromptModuleNodes) = v14;
  v17 = a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(a5 + 40) = a1;
  *(a5 + 48) = a7;
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_lruKVCache) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return a5;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed E5RunnerLogitsProtocol?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void closure #3 in closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(void *a1, void *a2, void **a3, uint64_t *a4, void *a5, char **a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for ContinuousClock();
  MEMORY[0x28223BE20](v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = *a4 + 1;
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v39[0] = v17;
    *a4 = v20;
    swift_unknownObjectRetain();
    v21 = [a5 getNumTokensProcessed];
    v22 = v21 - a6;
    if (v21 > a6)
    {
      if (!__OFSUB__(v21, a6))
      {
        a6 = &selRef__encodedImageByteCount;
        v23 = [a1 numTokens];
        if (v23 >= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v25 = [a1 numTokens];
        v26 = (v25 - v24);
        if (!__OFSUB__(v25, v24))
        {
          v27 = ContinuousClock.init()();
          MEMORY[0x28223BE20](v27);
          v39[-6] = a7;
          v39[-5] = a1;
          v39[-4] = v26;
          v39[-3] = v24;
          v39[-2] = a8;
          lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
          Clock.measure(_:)();
          (*(v39[0] + 8))(v19, v16);
          if (one-time initialization token for device == -1)
          {
            goto LABEL_10;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_10:
        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Log.device);
        swift_unknownObjectRetain();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 134218240;
          v32 = Duration.components.getter();
          Duration.components.getter();
          *(v31 + 4) = (v33 * 1.0e-18 + v32) * 1000000.0;
          *(v31 + 12) = 2048;
          *(v31 + 14) = [a1 a6[42]];
          swift_unknownObjectRelease();
          _os_log_impl(&dword_220940000, v29, v30, "Took %f µsec to presample %ld token(s)", v31, 0x16u);
          MEMORY[0x223D90A10](v31, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v34 = *a3;
      *a3 = a2;
      v35 = a2;
      v36 = v34;
    }

    else
    {
      v37 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:0 userInfo:0];
      v38 = *a3;
      *a3 = v37;
      v36 = v38;
    }
  }
}

void cgm::token_generation_inference::ajax::ane::findBestStreamOpForQuery<cgm::token_generation_inference::ajax::utils::StreamOpPair>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, E5RT::ExecutionStreamOperation **a5@<X8>)
{
  v45 = 0u;
  v46 = 0u;
  v5 = *a1;
  v42 = a1[1];
  if (*a1 == v42)
  {
    goto LABEL_65;
  }

  v34 = 0;
  v35 = 0;
  v41 = a3 - a4;
  v38 = a5[1];
  v39 = *a5;
  v40 = -1;
  v36 = a5[2];
  v37 = a5[3];
  while (1)
  {
    v9 = *v5;
    v8 = *(v5 + 8);
    *v44 = *v5;
    *&v44[8] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    *&v44[16] = v10;
    *&v44[24] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v9);
    QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
    ContextLength = cgm::token_generation_inference::ajax::ane::getContextLength(v9, v14);
    OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(v9);
    std::string::basic_string[abi:ne200100]<0>(v47, "out_logits");
    v17 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, v47);
    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    v18 = a2 % QueryLength;
    if (QueryLength >= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = QueryLength;
    }

    v20 = v18 + v19;
    v21 = v20 > QueryLength;
    if (v20 <= QueryLength)
    {
      v22 = a2 % QueryLength;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = QueryLength;
    }

    else
    {
      v23 = 0;
    }

    if (QueryLength + a2 - v18 + v23 <= ContextLength)
    {
      v26 = QueryLength - v22;
      if (QueryLength < a3 || v26 <= v41)
      {
        if (v17 || v26 <= v41)
        {
          v27 = QueryLength == v35;
          v28 = ContextLength < v40 && QueryLength == v35;
          if (ContextLength != v40)
          {
            v27 = 0;
          }

          v29 = v26 <= v41 && v27;
          if (v17)
          {
            v29 = 0;
          }

          if (QueryLength > v35 || v28 || v29)
          {
            if (v8)
            {
              atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *&v45 = v9;
            *(&v45 + 1) = v8;
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              v11 = *&v44[24];
              v10 = *&v44[16];
            }

            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = *(&v46 + 1);
            *&v46 = v10;
            *(&v46 + 1) = v11;
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            v24 = 0;
            v34 = v8;
            v35 = QueryLength;
            v40 = ContextLength;
          }

          else
          {
            v24 = 0;
          }

LABEL_51:
          v25 = a5;
          if (!v11)
          {
            goto LABEL_53;
          }

LABEL_52:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          goto LABEL_53;
        }
      }

      else if (v17)
      {
        v24 = 1;
        memset(v44, 0, sizeof(v44));
        v38 = v8;
        v39 = v9;
        v36 = v10;
        v37 = v11;
        v25 = a5;
        goto LABEL_53;
      }

      v24 = 3;
      goto LABEL_51;
    }

    v24 = 0;
    v25 = a5;
    if (v11)
    {
      goto LABEL_52;
    }

LABEL_53:
    if (*&v44[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
    }

    if (v24 != 3 && v24)
    {
      break;
    }

    v5 += 32;
    if (v5 == v42)
    {
      v25[2] = v36;
      v25[3] = v37;
      *v25 = v39;
      v25[1] = v38;
      if (v40 != -1)
      {
        v31 = v45;
        v32 = v46;
        v45 = 0uLL;
        *v25 = v31;
        *(v25 + 1) = v32;
        goto LABEL_62;
      }

LABEL_65:
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(v44, "Could not find op to run next query");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, v44);
    }
  }

  v25[2] = v36;
  v25[3] = v37;
  *v25 = v39;
  v25[1] = v38;
  if (*(&v46 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
  }

LABEL_62:
  if (*(&v45 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v45 + 1));
  }
}

void sub_220955F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, unint64_t a2, char a3)
{
  if (*(this + 34) != *(this + 35))
  {
    v23 = this;
    v4 = (this + 248);
    if ((a3 & 1) != 0 || *(this + 10) - ((*(this + 32) - *(this + 31)) >> 5) < a2)
    {
      v5 = *(*(this + 23) + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "state_keys_LHC");
      v6 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
      if (v22 < 0)
      {
        operator delete(__p);
      }

      PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(v6);
      E5RT::IOPort::GetMemoryObject(&__p, v6);
      v8 = E5RT::MemoryObject::Buffer(__p);
      DataSpan = E5RT::BufferObject::GetDataSpan(v8);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(unsigned long,BOOL)::$_1::operator()(&v23, PortDescriptorRef, DataSpan, v10);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "state_values_LHC");
      v11 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v12 = E5RT::IOPort::GetPortDescriptorRef(v11);
      E5RT::IOPort::GetMemoryObject(&__p, v11);
      v13 = E5RT::MemoryObject::Buffer(__p);
      v14 = E5RT::BufferObject::GetDataSpan(v13);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(unsigned long,BOOL)::$_1::operator()(&v23, v12, v14, v15);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      *(this + 35) = *(this + 34);
      v16 = *(this + 31);
      v17 = *(this + 32);
      while (1)
      {
        if (v16 == v17)
        {
          v16 = *(this + 32);
          goto LABEL_19;
        }

        if (*v16 == -1)
        {
          break;
        }

        v16 += 8;
      }

      if (v16 != v17)
      {
        v18 = v16 + 8;
        if (v16 + 8 != v17)
        {
          do
          {
            if (*v18 != -1)
            {
              *v16 = *v18;
              v19 = v16 + 8;
              std::vector<signed char>::__move_assign((v16 + 2), (v18 + 2));
              v16 = v19;
            }

            v18 += 8;
          }

          while (v18 != v17);
          v17 = *(this + 32);
        }
      }

LABEL_19:
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::erase(v4, v16, v17);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_220956200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::ane::getContextLength(cgm::token_generation_inference::ajax::ane *this, const E5RT::ExecutionStreamOperation *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_relative_positions_CT");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_);
  v4 = v3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "in_causal_mask");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_relative_positions_CT or in_causal_mask on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

LABEL_8:
  E5RT::IOPort::GetPortDescriptor(&__p, v4[5]);
  v5 = E5RT::OperandDescriptor::TensorDescriptor(__p.__r_.__value_.__l.__data_);
  v6 = *(*E5RT::TensorDescriptor::GetTensorShape(v5) + 8);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  return v6;
}

void sub_22095638C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::alignContextForQueryLength(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, unint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(this + 31);
  v5 = *(this + 32);
  v6 = (this + 248);
  v7 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  v8 = (v5 - v4) >> 5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v28 = (*(this + 32) - *(this + 31)) >> 5;
    v29 = (*(this + 35) - *(this + 34)) >> 3;
    *buf = 134219008;
    *v36 = a2;
    *&v36[8] = 2048;
    *&v36[10] = a3;
    *&v36[18] = 2048;
    v37 = v8;
    v38 = 2048;
    v39 = v28;
    v40 = 2048;
    v41 = v29;
    _os_log_debug_impl(&dword_220940000, v7, OS_LOG_TYPE_DEBUG, "alignContextForQueryLength called with queryLength=%zu and numTokens=%zu, start of function numTokensProcessed=%zu and mContextTokensSize=%zu and numHoles=%zu", buf, 0x34u);
  }

  v9 = a2 - v8 % a2;
  if (v8 % a2)
  {
    v10 = v9 >= a3;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 0;
    do
    {
      v12 = (*(this + 32) - *(this + 31)) >> 5;
      v14 = *(this + 35);
      v13 = *(this + 36);
      if (v14 >= v13)
      {
        v16 = *(this + 34);
        v17 = v14 - v16;
        v18 = (v14 - v16) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
        }

        v20 = v13 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v10 = v20 >= 0x7FFFFFFFFFFFFFF8;
        v21 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v10)
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 272, v21);
        }

        v22 = (v14 - v16) >> 3;
        v23 = (8 * v18);
        v24 = (8 * v18 - 8 * v22);
        *v23 = v12;
        v15 = v23 + 1;
        memcpy(v24, v16, v17);
        v25 = *(this + 34);
        *(this + 34) = v24;
        *(this + 35) = v15;
        *(this + 36) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v14 = v12;
        v15 = v14 + 1;
      }

      *(this + 35) = v15;
      *buf = -1;
      v34 = 0;
      *&v36[12] = 0;
      v37 = 0;
      *&v36[4] = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v36[4], &v34, buf, 1);
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::push_back[abi:ne200100](v6, buf);
      v26 = *&v36[4];
      if (*&v36[4])
      {
        *&v36[12] = *&v36[4];
        operator delete(*&v36[4]);
      }

      ++v11;
    }

    while (v9 > v11);
    v27 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = (*(this + 32) - *(this + 31)) >> 5;
      v31 = (*(this + 35) - *(this + 34)) >> 3;
      *buf = 134219008;
      *v36 = a2;
      *&v36[8] = 2048;
      *&v36[10] = a3;
      *&v36[18] = 2048;
      v37 = v30;
      v38 = 2048;
      v39 = v30;
      v40 = 2048;
      v41 = v31;
      _os_log_debug_impl(&dword_220940000, v27, OS_LOG_TYPE_DEBUG, "alignContextForQueryLength called with queryLength=%zu and numTokens=%zu, end of function numTokensProcessed=%zu and mContextTokensSize=%zu and numHoles=%zu", buf, 0x34u);
    }
  }
}

void sub_2209566E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::utils::inputSpan<int>()
{
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(InputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (v4 < 4)
  {
    return 0;
  }

  return result;
}

uint64_t cgm::token_generation_inference::ajax::ane::findInTokenIDSpan(E5RT::ExecutionStreamOperation *a1, void *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
    goto LABEL_9;
  }

  v7 = E5RT::ExecutionStreamOperation::GetInputPorts(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "transformer_input");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v7, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v8)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_token_id or transformer_input on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

  if (a2[1] == *a2)
  {
    cgm::token_generation_inference::ajax::ane::findInTokenIDSpan();
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  v9 = cgm::token_generation_inference::ajax::utils::inputSpan<int>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_2209568B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *std::vector<std::vector<signed char>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(result, a2);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<signed char>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<signed char>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<signed char>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::vector<signed char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_220956B20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_220956BEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<signed char>>::__construct_one_at_end[abi:ne200100]<std::vector<signed char> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<signed char>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<signed char>>::__emplace_back_slow_path<std::vector<signed char> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<signed char>>::__construct_one_at_end[abi:ne200100]<std::vector<signed char> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__emplace_back_slow_path<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

char *cgm::token_generation_inference::ajax::utils::addHolesToMask@<X0>(char **a1@<X0>, size_t **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<signed char>::reserve(a3, a1[1] - *a1 + a2[1] - *a2);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v8 = *a2;
    do
    {
      if (v8 == a2[1])
      {
        break;
      }

      v9 = *v8;
      v11 = *a3;
      v10 = *(a3 + 8);
      v12 = &v10[-*a3];
      v13 = *(a3 + 16);
      if (*v8 == v12)
      {
        if (v10 >= v13)
        {
          v16 = (v9 + 1);
          if ((v9 + 1) < 0)
          {
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
          }

          v17 = v13 - v11;
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            operator new();
          }

          v22 = *v8;
          v23 = &v9[v11 - v10];
          *v9 = 0;
          v14 = v9 + 1;
          memcpy(v23, v11, v22);
          *a3 = v23;
          *(a3 + 8) = v9 + 1;
          *(a3 + 16) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v10 = 0;
          v14 = v10 + 1;
        }

        *(a3 + 8) = v14;
        ++v8;
      }

      else
      {
        if (v10 >= v13)
        {
          v19 = (v12 + 1);
          if ((v12 + 1) < 0)
          {
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
          }

          v20 = v13 - v11;
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            operator new();
          }

          v24 = &v10[-*a3];
          *v12 = *v7;
          v15 = v12 + 1;
          memcpy(0, v11, v24);
          *a3 = 0;
          *(a3 + 8) = v12 + 1;
          *(a3 + 16) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v10 = *v7;
          v15 = v10 + 1;
        }

        *(a3 + 8) = v15;
        ++v7;
      }

      v6 = a1[1];
    }

    while (v7 != v6);
  }

  return std::vector<signed char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(a3, *(a3 + 8), v7, v6, v6 - v7);
}

void sub_220956F2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<signed char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

char *std::vector<signed char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

uint64_t std::vector<std::vector<signed char>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<signed char>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void *cgm::token_generation_inference::ajax::ane::findGatherOpWithQueryLength@<X0>(void *__val@<X1>, void *result@<X0>, void *a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  if (*result != v6)
  {
    v7 = result;
    while (1)
    {
      InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*v5);
      result = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
      if (result == __val)
      {
        break;
      }

      v5 += 32;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = v7[1];
  }

  if (v5 == v6)
  {
    std::to_string(&__p, __val);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not find gather op with queryLength: ", &__p, &v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v13);
  }

  v9 = *(v5 + 8);
  *a3 = *v5;
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(v5 + 24);
  a3[2] = *(v5 + 16);
  a3[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_22095749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImageEmbeddingsProvider::getEmbeddings(ImageEmbeddingsProvider *this, int a2)
{
  v3 = *(this + 6);
  if (!v3 || ![v3 imageCount])
  {
    return 0;
  }

  v5 = *(this + 6);
  for (i = 0; ; ++i)
  {
    if (i >= [v5 imageCount])
    {

      return 0;
    }

    v7 = [v5 tokenRangeAt:i];
    v9 = (a2 - v7);
    if (a2 >= v7 && v7 + v8 - 1 >= a2)
    {
      break;
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v12 = *(this + 6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke;
  v15[3] = &unk_27844FB50;
  v15[6] = this;
  v15[7] = i + (v9 << 32);
  v16 = 1;
  v15[4] = &v21;
  v15[5] = &v17;
  [v12 getEncodedImageAt:i withHandler:v15];
  if ((v18[3] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Embeddings were not compatible with decoder.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, &v14);
  }

  v10 = v22[3];
  if (!v10)
  {
    __assert_rtn("getEmbeddings", "ImageEmbeddingsProvider.mm", 249, "embeddingData != nullptr");
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

void sub_2209576C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      _Block_object_dispose(&a24, 8);
      _Block_object_dispose((v26 - 80), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::checkTokenInVocab(uint64_t this, unsigned int a2)
{
  v2 = this;
  v17 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 96) <= a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v10[0] = a2;
    v10[1] = 0;
    v5 = *(v2 + 96);
    v10[3] = 0;
    v10[4] = 227;
    v10[2] = v5;
    v11 = v15;
    v12 = xmmword_220AE5410;
    v13 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v14 = 0;
    __p = v15;
    v7 = 2;
    v8 = v10;
    v9 = 227;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v11, "Input token {} is not in bounds [0, {})", 39, &v7);
    v7 = __p;
    v8 = *(&v12 + 1);
    std::string::basic_string<std::string_view,0>(&v6, &v7);
    if (__p != v15)
    {
      operator delete(__p);
    }

    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 4, &v6);
  }

  return this;
}

void sub_2209578F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

uint64_t specialized closure #1 in static UnsafeBufferPointer<A>.makeArgmaxBNNSGraphContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for BNNSGraph.Builder.Intent();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D831D8], v4);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  (*(v5 + 8))(v7, v4);
  BNNSGraph.Builder.Tensor.argMax(axis:keepDimension:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220AE8A30;
  *(v12 + 56) = v0;
  *(v12 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Int32> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  (*(v1 + 32))(boxed_opaque_existential_1, v3, v0);
  (*(v9 + 8))(v11, v8);
  return v12;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock()
{
  result = lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock;
  if (!lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock)
  {
    type metadata accessor for ContinuousClock();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock);
  }

  return result;
}

uint64_t outlined init with copy of LogitPresampler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitPresampler_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id closure #1 in closure #3 in closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  outlined init with copy of LogitPresampler?(a1, &v14);
  if (v15)
  {
    outlined init with take of RandomNumberGenerator(&v14, v16);
  }

  else
  {
    v17 = type metadata accessor for BasicLogitPresampler();
    v18 = &protocol witness table for BasicLogitPresampler;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    v7 = type metadata accessor for LogitIndexSet();
    (*(*(v7 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v7);
    if (v15)
    {
      outlined destroy of LogitPresampler?(&v14);
    }
  }

  v8 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v9 = [a2 logitData];
  v10 = [a2 numLogitsPerToken];
  v11 = [a2 stridePerToken];
  result = [a2 stridePerLogit];
  if (__OFADD__(v19, a3))
  {
    __break(1u);
  }

  else if (v19 + a3 >= a3)
  {
    v13 = (v8[1])(v9, v10, v11, result, a3);
    specialized Array.append<A>(contentsOf:)(v13);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __break(1u);
  return result;
}

uint64_t ArgmaxPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a3;
  v112 = a2;
  v110 = a1;
  v9 = type metadata accessor for BasicLogitPresampler();
  MEMORY[0x28223BE20](v9 - 8);
  *&v109 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v93 - v15;
  v17 = type metadata accessor for LogitIndexSet();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v101 = (v93 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v102 = (v93 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v111 = a4;
  v96 = a6;
  v104 = v26;
  if (a4 != 1)
  {
    outlined init with copy of LogitIndexSet?(v108, v14);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      outlined destroy of LogitIndexSet?(v14);
    }

    else
    {
      outlined init with take of LogitIndexSet(v14, v21);
      if (v112 < 0)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v71 = v102;
      v72 = v112;
      *v102 = 0;
      v71[1] = v72;
      v73 = v104;
      swift_storeEnumTagMultiPayload();
      v74 = specialized static LogitIndexSet.== infix(_:_:)(v21, v71);
      outlined destroy of LogitIndexSet(v71, type metadata accessor for LogitIndexSet);
      if ((v74 & 1) == 0)
      {
        v88 = v109;
        outlined init with copy of LogitIndexSet(v21, v109);
        v89 = (*(v18 + 56))(v88, 0, 1, v73);
        MEMORY[0x28223BE20](v89);
        v90 = v112;
        v93[-6] = v88;
        v93[-5] = v90;
        v91 = v107;
        v93[-4] = v110;
        v93[-3] = v91;
        v93[-2] = v111;
        v29 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_24TokenGenerationInference15LogitCollection_ps5NeverOTg5(partial apply for closure #1 in BasicLogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:), &v93[-8], a5, v96);
        outlined destroy of LogitIndexSet(v21, type metadata accessor for LogitIndexSet);
        outlined destroy of LogitIndexSet(v88, type metadata accessor for BasicLogitPresampler);
        return v29;
      }

      outlined destroy of LogitIndexSet(v21, type metadata accessor for LogitIndexSet);
    }

    v75 = v96 - a5;
    if (__OFSUB__(v96, a5))
    {
      goto LABEL_69;
    }

    if ((v75 & 0x8000000000000000) != 0)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v76 = MEMORY[0x277D84F90];
    if (v75)
    {
      v77 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v77 + 16) = v75;
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
    }

    if (v112 > 0x7FFFFFFF)
    {
      goto LABEL_71;
    }

    if (v111 > 0x7FFFFFFF)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (a5 > 0x7FFFFFFF)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v112 < 0xFFFFFFFF80000000 || v111 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000)
    {
      goto LABEL_74;
    }

    if (v75 >> 31)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    PresampleArgmax(v110, v112, v111, a5, v75, (v77 + 32));
    *(v77 + 16) = v75;
    if (!v75)
    {

      return MEMORY[0x277D84F90];
    }

    *&v117 = v76;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
    v78 = 0;
    v29 = v117;
    v112 = *(v77 + 16);
    v79 = v111;
    while (1)
    {
      if (v112 == v78)
      {
        goto LABEL_60;
      }

      if (v78 >= *(v77 + 16))
      {
        break;
      }

      v80 = *(v77 + 4 * v78 + 32);
      v81 = v80 * v79;
      if ((*(v77 + 4 * v78 + 32) * v79) >> 64 != (v80 * v79) >> 63)
      {
        goto LABEL_62;
      }

      _VF = __OFADD__(v81, v78);
      v82 = v81 + v78;
      if (_VF)
      {
        goto LABEL_63;
      }

      _VF = __OFADD__(v82, a5);
      v83 = v82 + a5;
      if (_VF)
      {
        goto LABEL_64;
      }

      _H8 = *(v110 + 2 * v83);
      *&v117 = v29;
      v86 = v29[2];
      v85 = v29[3];
      if (v86 >= v85 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
        v79 = v111;
        v29 = v117;
      }

      __asm { FCVT            S0, H8 }

      ++v78;
      *(&v128 + 1) = &type metadata for WeightedSingleLogitCollection;
      *&v129 = &protocol witness table for WeightedSingleLogitCollection;
      *&v127 = v80;
      DWORD2(v127) = _S0;
      v29[2] = v86 + 1;
      outlined init with take of LogitCollection(&v127, &v29[5 * v86 + 4]);
      if (v75 == v78)
      {

        return v29;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v103 = 0;
  if (__OFSUB__(a6, a5))
  {
    goto LABEL_68;
  }

  v28 = a6;
  v97 = v93 - v27;
  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (a6 - a5) & ~((a6 - a5) >> 63), 0, MEMORY[0x277D84F90]);
  if (a5 == a6)
  {
    return v29;
  }

  if (a6 >= a5)
  {
    if (a5 < a6)
    {
      v106 = (v18 + 48);
      v93[1] = 2 * v112;
      v93[2] = 4 * v112;
      v95 = xmmword_220AE8A20;
      v94 = (v112 - 0x2000000000000000) >> 62;
      v109 = xmmword_220AE8A30;
      v30 = v104;
      v31 = v108;
      v105 = v16;
      while (1)
      {
        if ((v107 * a5) >> 64 != (v107 * a5) >> 63)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v111 = v110 + 2 * v107 * a5;
        outlined init with copy of LogitIndexSet?(v31, v16);
        if ((*v106)(v16, 1, v30) == 1)
        {
          outlined destroy of LogitIndexSet?(v16);
          if (!v112)
          {
            goto LABEL_20;
          }

          if (one-time initialization token for argmaxGraphContext != -1)
          {
            swift_once();
          }

          v40 = static UnsafeBufferPointer<A>.argmaxGraphContext;
          swift_beginAccess();
          os_unfair_lock_lock(v40 + 4);
          swift_endAccess();
          if (v112 < 1)
          {
            v42 = MEMORY[0x277D84F90];
          }

          else
          {
            v41 = v112;
            v42 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v42 + 16) = v41;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd);
          v51 = swift_allocObject();
          *(v51 + 16) = v95;
          if (v94 < 3)
          {
            goto LABEL_66;
          }

          v52 = v51;
          v99 = v40;
          v100 = a5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v53 = swift_allocObject();
          v54 = v112;
          *(v53 + 16) = v109;
          *(v53 + 32) = v54;
          v55 = swift_allocObject();
          v98 = v42;
          *(v55 + 16) = v109;
          *(v55 + 32) = v54;
          static Int32.bnnsDataType.getter();
          BNNSTensor.init(data:shape:stride:dataType:)();
          v56 = v124;
          v52[8] = v123;
          v52[9] = v56;
          v57 = v126;
          v52[10] = v125;
          v52[11] = v57;
          v58 = v120;
          v52[4] = v119;
          v52[5] = v58;
          v59 = v122;
          v52[6] = v121;
          v52[7] = v59;
          v60 = v118;
          v52[2] = v117;
          v52[3] = v60;
          v61 = swift_allocObject();
          *(v61 + 16) = v109;
          *(v61 + 32) = v54;
          v62 = swift_allocObject();
          *(v62 + 16) = v109;
          *(v62 + 32) = v54;
          static Float16.bnnsDataType.getter();
          BNNSTensor.init(data:shape:stride:dataType:)();
          v63 = v134;
          v52[18] = v133;
          v52[19] = v63;
          v64 = v136;
          v52[20] = v135;
          v52[21] = v64;
          v65 = v130;
          v52[14] = v129;
          v52[15] = v65;
          v66 = v132;
          v52[16] = v131;
          v52[17] = v66;
          v67 = v128;
          v52[12] = v127;
          v52[13] = v67;
          v113._rawValue = v52;
          BNNSGraph.Context.executeFunction(_:arguments:)(0, &v113);
          v103 = v68;
          if (v68)
          {
            goto LABEL_79;
          }

          v70 = v98;
          v69 = v99;
          *(v98 + 16) = v112;
          swift_beginAccess();
          os_unfair_lock_unlock(v69 + 4);
          swift_endAccess();
          a5 = v100;
          v28 = v96;
          if (!*(v70 + 16))
          {
            goto LABEL_67;
          }

          v47 = *(v70 + 32);
        }

        else
        {
          v43 = v97;
          outlined init with take of LogitIndexSet(v16, v97);
          if (v112 < 0)
          {
            goto LABEL_65;
          }

          v44 = v101;
          v45 = v112;
          *v101 = 0;
          *(v44 + 8) = v45;
          swift_storeEnumTagMultiPayload();
          v46 = v102;
          outlined init with copy of LogitIndexSet(v43, v102);
          LogitIndexSet.formIntersection(_:)(v44);
          outlined destroy of LogitIndexSet(v44, type metadata accessor for LogitIndexSet);
          v47 = UnsafeBufferPointer<A>.argmax(mask:)(v46, v111, v45);
          LOBYTE(v44) = v48;
          outlined destroy of LogitIndexSet(v46, type metadata accessor for LogitIndexSet);
          outlined destroy of LogitIndexSet(v43, type metadata accessor for LogitIndexSet);
          if (v44)
          {
LABEL_20:
            v50 = v29[2];
            v49 = v29[3];
            if (v50 >= v49 >> 1)
            {
              v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v29);
            }

            v115 = &type metadata for EmptyLogitCollection;
            v116 = &protocol witness table for EmptyLogitCollection;
            v29[2] = v50 + 1;
            outlined init with take of LogitCollection(&v113, &v29[5 * v50 + 4]);
            goto LABEL_10;
          }
        }

        _H8 = *(v111 + 2 * v47);
        v34 = v29[2];
        v33 = v29[3];
        if (v34 >= v33 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v29);
        }

        __asm { FCVT            S0, H8 }

        v115 = &type metadata for WeightedSingleLogitCollection;
        v116 = &protocol witness table for WeightedSingleLogitCollection;
        v113._rawValue = v47;
        v114 = _S0;
        v29[2] = v34 + 1;
        outlined init with take of LogitCollection(&v113, &v29[5 * v34 + 4]);
        v30 = v104;
LABEL_10:
        v31 = v108;
        v16 = v105;
        if (v28 == ++a5)
        {
          return v29;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitCollection_pMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay24TokenGenerationInference0D8TreeNodeCGGMd, &_ss23_ContiguousArrayStorageCySay24TokenGenerationInference0D8TreeNodeCGGMR, &_sSay24TokenGenerationInference0A8TreeNodeCGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay24TokenGenerationInference17BeamSearchDecoderC0G4Node33_A7FE2FA43B970D1C0025663E659989E9LLVGGMd, &_ss23_ContiguousArrayStorageCySay24TokenGenerationInference17BeamSearchDecoderC0G4Node33_A7FE2FA43B970D1C0025663E659989E9LLVGGMR, &_sSay24TokenGenerationInference17BeamSearchDecoderC0D4Node33_A7FE2FA43B970D1C0025663E659989E9LLVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF11AssetObject_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF11AssetObject_pGMR, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC()
{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:);
  }

  else
  {

    v2 = protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v2;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCounttMd);
  *v7 = v0;
  v7[1] = protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x8000000220AFEBE0, closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)partial apply, v6, v8);
}

uint64_t closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v5 = closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:);
  }

  else
  {

    v5 = closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY2_()
{
  **(v0 + 48) = *(v0 + 32);

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](_ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY3_, v1, v2);
}

uint64_t type metadata completion function for PromptTemplateConfiguration()
{
  result = type metadata accessor for ModelConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceAssetObjectBaseModel()
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BaseModel(319, &lazy cache variable for type metadata for BaseModel);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for ModelMetadata()
{
  result = type metadata singleton initialization cache for ModelMetadata;
  if (!type metadata singleton initialization cache for ModelMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ModelMetadata()
{
  type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : E5Function]?, &_sSDySS24TokenGenerationInference10E5FunctionVGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : MetadataSpecialToken]?, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for DefaultParameters?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : [String : MetadataSpecialToken]]?, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for Bool?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for ClassifierMetadata?);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for StopToken?);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for PromptPreprocessingTemplateVersion?();
                    if (v9 <= 0x3F)
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

void type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for PromptPreprocessingTemplateVersion?()
{
  if (!lazy cache variable for type metadata for PromptPreprocessingTemplateVersion?)
  {
    type metadata accessor for PromptPreprocessingTemplateVersion();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PromptPreprocessingTemplateVersion?);
    }
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY0_()
{
  v82 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 600);
  (*(v3 + 56))(v1, 1, 1, v4);
  v6 = v5[3];
  v7 = v5[4];
  v79 = v5;
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 320) = v6;
  *(v0 + 328) = *(v7 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v1, v2, &_s10Foundation3URLVSgMd);
  v10 = *(v3 + 48);
  if (v10(v2, 1, v4) == 1)
  {
    v11 = *(v0 + 872);
    v12 = *(v0 + 864);
    v13 = *(v0 + 792);
    outlined destroy of [Int](*(v0 + 880), &_s10Foundation3URLVSgMd);
    static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v11);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v11, v12, &_s10Foundation3URLVSgMd);
    if (v10(v12, 1, v13) == 1)
    {
      v76 = *(v0 + 872);
      v80 = *(v0 + 888);
      v14 = *(v0 + 856);
      v15 = *(v0 + 832);
      v16 = *(v0 + 824);
      v17 = *(v0 + 760);
      v18 = *(v0 + 752);
      v19 = *(v0 + 744);
      outlined destroy of [Int](*(v0 + 864), &_s10Foundation3URLVSgMd);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v18 + 16))(v14, v17, v19);
      (*(v15 + 104))(v14, *MEMORY[0x277D29D78], v16);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v18 + 8))(v17, v19);
      outlined destroy of [Int](v76, &_s10Foundation3URLVSgMd);
      outlined destroy of [Int](v80, &_s10Foundation3URLVSgMd);
      (*(v15 + 32))(*(v0 + 624), *(v0 + 856), *(v0 + 824));
      __swift_destroy_boxed_opaque_existential_1(v0 + 296);

      v26 = *(v0 + 8);

      return v26();
    }

    v23 = *(v0 + 952);
    v24 = *(v0 + 840);
    (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 864), *(v0 + 792));
    v25 = URL.path(percentEncoded:)(1);
    v28 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v23, v25._countAndFlagsBits, v25._object, v0 + 296, 0, 0, 0, 0, v24);
    v32 = *(v0 + 872);
    v33 = *(v0 + 808);
    v34 = *(v0 + 800);
    v35 = *(v0 + 792);

    (*(v34 + 8))(v33, v35);
    outlined destroy of [Int](v32, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v20 = *(v0 + 952);
    v21 = *(v0 + 848);
    (*(*(v0 + 800) + 32))(*(v0 + 816), *(v0 + 880), *(v0 + 792));
    v22 = URL.path(percentEncoded:)(1);
    v28 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v20, v22._countAndFlagsBits, v22._object, v0 + 296, 0, 0, 0, 0, v21);
    v29 = *(v0 + 816);
    v30 = *(v0 + 800);
    v31 = *(v0 + 792);

    (*(v30 + 8))(v29, v31);
  }

  *(v0 + 960) = v28;
  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v77 = *(v0 + 768);
  v38 = *(v0 + 600);
  outlined destroy of [Int](*(v0 + 888), &_s10Foundation3URLVSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  __swift_project_boxed_opaque_existential_1(v38, v79[3]);
  v39 = dispatch thunk of CatalogResource.id.getter();
  v41 = v40;
  *(v0 + 968) = v39;
  *(v0 + 976) = v40;
  __swift_project_boxed_opaque_existential_1(v38, v79[3]);
  dispatch thunk of ManagedResource.cost.getter();
  v42 = CostProfile.energyEfficientMode.getter();
  v44 = *(v37 + 8);
  v43 = (v37 + 8);
  v44(v36, v77);
  [v28 setUseEnergyEfficientMode_];
  v45 = MEMORY[0x223D8E6B0](v39, v41);
  [v28 setAssetIdentifier_];

  v74 = v39;
  v75 = v28;
  v46 = [v28 e5Functions];
  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
  lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
  v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v47 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v47 = *(v0 + 256);
    v48 = *(v0 + 264);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);
    v51 = *(v0 + 288);
  }

  else
  {
    v52 = -1 << *(v47 + 32);
    v48 = v47 + 56;
    v49 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v51 = v54 & *(v47 + 56);

    v50 = 0;
  }

  v78 = (v0 + 584);
  v55 = (v49 + 64) >> 6;
  do
  {
    if (v47 < 0)
    {
      v59 = __CocoaSet.Iterator.next()();
      if (!v59 || (*(v0 + 592) = v59, swift_dynamicCast(), (v58 = *v78) == 0))
      {
LABEL_34:
        outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();

        v55 = v75;
        v43 = v41;
        v47 = v74;
LABEL_35:
        if (one-time initialization token for device == -1)
        {
LABEL_36:
          v68 = type metadata accessor for Logger();
          *(v0 + 1000) = __swift_project_value_buffer(v68, static Log.device);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v81 = v72;
            *v71 = 136446210;
            *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v43, &v81);
            _os_log_impl(&dword_220940000, v69, v70, "Creating e5Runner model for asset %{public}s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x223D90A10](v72, -1, -1);
            MEMORY[0x223D90A10](v71, -1, -1);
          }

          *(v0 + 368) = 0;
          *(v0 + 336) = 0u;
          *(v0 + 352) = 0u;
          v73 = swift_task_alloc();
          *(v0 + 1008) = v73;
          *v73 = v0;
          v73[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ4_;

          return (specialized static LanguageModelLoader.load(from:baseModel:))(v55, v0 + 336);
        }

LABEL_42:
        swift_once();
        goto LABEL_36;
      }
    }

    else
    {
      v56 = v50;
      v57 = v51;
      if (!v51)
      {
        while (1)
        {
          v50 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          if (v50 >= v55)
          {
            goto LABEL_34;
          }

          v57 = *(v48 + 8 * v50);
          ++v56;
          if (v57)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

LABEL_21:
      v51 = (v57 - 1) & v57;
      v58 = *(*(v47 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v57)))));
      if (!v58)
      {
        goto LABEL_34;
      }
    }

    v43 = [v58 adapterType];
  }

  while (!v43);

  outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();

  v55 = v75;
  v43 = v41;
  v47 = v74;
  if ([v75 modelType] != 1)
  {
    goto LABEL_35;
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Log.device);
  v61 = v75;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138543362;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&dword_220940000, v62, v63, "Creating asset object for ane base model with configuration %{public}@", v64, 0xCu);
    outlined destroy of [Int](v65, &_sSo8NSObjectCSgMd);
    MEMORY[0x223D90A10](v65, -1, -1);
    MEMORY[0x223D90A10](v64, -1, -1);
  }

  v67 = swift_task_alloc();
  *(v0 + 984) = v67;
  *v67 = v0;
  v67[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ1_;

  return static BaseModelLoader.load(from:)(v0 + 456, v61);
}

uint64_t outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v29 = v26 - v7;
  MEMORY[0x28223BE20](v6);
  v8 = *(v2 + 16);
  v30 = v26 - v9;
  v8();
  v10 = (v2 + 32);
  v11 = (v2 + 8);
  v12 = aNdle;
  v13 = 5;
  v26[1] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = v2;
  while (1)
  {
    v14 = v29;
    URL.appendingPathComponent(_:)();
    v15 = *v10;
    v16 = v14;
    v17 = v1;
    (*v10)(v5, v16, v1);
    v18 = URL.path(percentEncoded:)(1);
    v19 = [objc_opt_self() defaultManager];
    v20 = MEMORY[0x223D8E6B0](v18._countAndFlagsBits, v18._object);

    v21 = [v19 fileExistsAtPath_];

    if (v21)
    {
      break;
    }

    v22 = *v11;
    v1 = v17;
    (*v11)(v5, v17);
    v12 += 16;
    if (!--v13)
    {
      (*(v27 + 56))(v28, 1, 1, v17);
      return v22(v30, v1);
    }
  }

  v23 = v28;
  v1 = v17;
  v15(v28, v5, v17);
  v24 = v27 + 56;
  (*(v27 + 56))(v23, 0, 1, v17);
  v22 = *(v24 - 48);
  return v22(v30, v1);
}

unint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v159 = a3;
  v151 = a7;
  v152 = a8;
  v156 = a6;
  v157 = a1;
  v154 = a5;
  v158 = a2;
  v11 = type metadata accessor for InferenceError.Context();
  v155 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v136 - v15;
  v17 = type metadata accessor for ModelMetadata();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v9 + 192), *(v9 + 216));
  v21 = v160;
  OnDeviceInferenceProviderDataSource.modelMetadataFromResource(_:)(a4, v16);
  if (v21)
  {

    (*(v18 + 56))(v16, 1, 1, v17);
    v160 = 0;
    goto LABEL_4;
  }

  v150 = v20;
  v22 = v155;
  v160 = 0;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_4:
    outlined destroy of [Int](v16, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    if (one-time initialization token for device == -1)
    {
LABEL_5:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.device);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_220940000, v24, v25, "Falling back to default configuration, metadata json not encoded correctly", v26, 2u);
        MEMORY[0x223D90A10](v26, -1, -1);
      }

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
        }

        if (__CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TGIE5AdapterConfigurationObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
        }
      }

      v27 = objc_allocWithZone(TGIMutableE5ModelConfigurationObjC);
      v28 = MEMORY[0x223D8E6B0](v158, v159);
      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
      lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
      isa = Set._bridgeToObjectiveC()().super.isa;

      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
      lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
      v30 = Set._bridgeToObjectiveC()().super.isa;

      v31 = [v27 initWithModelType:0 modelBundlePath:v28 e5Functions:isa adapterConfigurations:v30];

      (*(v18 + 56))(v157, 1, 1, v17);
      return v31;
    }

LABEL_71:
    swift_once();
    goto LABEL_5;
  }

  v142 = v18;
  v143 = v17;
  v138 = a9;
  v33 = v150;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v16, v150, type metadata accessor for ModelMetadata);
  v34 = *v33;
  v35 = v33[1];
  v36 = *v33 == 7696487 && v35 == 0xE300000000000000;
  v137 = v13;
  if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v37 = 2;
    goto LABEL_16;
  }

  v97 = v34 == 6647393 && v35 == 0xE300000000000000;
  if (v97 || (v98 = v13, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v37 = 1;
LABEL_16:
    v141 = v37;
    v38 = MEMORY[0x277D84FA0];
    v164 = MEMORY[0x277D84FA0];
    v39 = v33[3];
    v136 = v11;
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference10E5FunctionVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v161 = v38;
    v41 = v40 + 64;
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v18 = v43 & *(v40 + 64);
    v146 = (v42 + 63) >> 6;

    v17 = 0;
    *&v44 = 136446466;
    v140 = v44;
    v145 = v40;
    v147 = v9;
    while (v18)
    {
LABEL_27:
      v46 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v47 = v46 | (v17 << 6);
      v48 = (*(v40 + 48) + 16 * v47);
      v49 = *v48;
      v50 = v48[1];
      v51 = (*(v40 + 56) + 48 * v47);
      v53 = v51[3];
      v52 = v51[4];
      v153 = v51[5];
      if (v53)
      {
        v148 = v52;
        v54 = v51[2];
        if (v156)
        {
          v55 = v54 == v154 && v53 == v156;
          if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v56 = v150[2];
            if (!v56)
            {

              if (one-time initialization token for device != -1)
              {
                swift_once();
              }

              v108 = type metadata accessor for Logger();
              __swift_project_value_buffer(v108, static Log.device);
              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.error.getter();
              v111 = os_log_type_enabled(v109, v110);
              v112 = v150;
              v113 = v136;
              v114 = v155;
              if (v111)
              {
                v115 = swift_slowAlloc();
                *v115 = 0;
                _os_log_impl(&dword_220940000, v109, v110, "Metadata json is missing adapter type to symbol mapping", v115, 2u);
                MEMORY[0x223D90A10](v115, -1, -1);
              }

              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v116 = v137;
              InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
              v117 = v138;
              (*(v114 + 16))(v138, v116, v113);
              v31 = *MEMORY[0x277D29D78];
              v118 = type metadata accessor for InferenceError();
              (*(*(v118 - 8) + 104))(v117, v31, v118);
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
              swift_willThrowTypedImpl();

              (*(v114 + 8))(v116, v113);
              v107 = v112;
              goto LABEL_69;
            }

            if (!*(v56 + 16))
            {

LABEL_64:
              v119 = v54;

              v120 = v155;
              if (one-time initialization token for device != -1)
              {
                swift_once();
              }

              v121 = type metadata accessor for Logger();
              __swift_project_value_buffer(v121, static Log.device);

              v122 = Logger.logObject.getter();
              v123 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v139 = v53;
                v125 = v124;
                v126 = swift_slowAlloc();
                v162 = v126;
                *v125 = v140;
                *(v125 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v139, &v162);
                *(v125 + 12) = 2082;
                v127 = Dictionary.description.getter();
                v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, &v162);

                *(v125 + 14) = v129;
                _os_log_impl(&dword_220940000, v122, v123, "Failed to get symbol for adapter type %{public}s from %{public}s", v125, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x223D90A10](v126, -1, -1);
                v53 = v139;
                MEMORY[0x223D90A10](v125, -1, -1);
              }

              v130 = v150;
              v131 = v136;
              v162 = 0;
              v163 = 0xE000000000000000;
              _StringGuts.grow(_:)(29);

              v162 = 0xD000000000000015;
              v163 = 0x8000000220AFD200;
              MEMORY[0x223D8E780](v119, v53);

              MEMORY[0x223D8E780](544106784, 0xE400000000000000);
              v132 = Dictionary.description.getter();
              MEMORY[0x223D8E780](v132);

              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v133 = v137;
              InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
              v134 = v138;
              (*(v120 + 16))(v138, v133, v131);
              v31 = *MEMORY[0x277D29D78];
              v135 = type metadata accessor for InferenceError();
              (*(*(v135 - 8) + 104))(v134, v31, v135);
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
              swift_willThrowTypedImpl();

              (*(v120 + 8))(v133, v131);
              v107 = v130;
              goto LABEL_69;
            }

            v149 = v54;
            v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v53);
            if ((v58 & 1) == 0)
            {

              v54 = v149;
              goto LABEL_64;
            }

            v59 = *(v56 + 56) + 16 * v57;
            v60 = *(v59 + 8);
            v144 = *v59;
            v61 = v53;
            v62 = objc_allocWithZone(TGIE5FunctionObjC);

            v63 = MEMORY[0x223D8E6B0](v49, v50);

            v64 = MEMORY[0x223D8E6B0](v149, v61);
            v65 = [v62 initWithName:v63 queryLength:v148 contextSize:v153 adapterType:v64];

            v66 = v65;
            specialized Set._Variant.insert(_:)(&v162, v66);

            v67 = objc_allocWithZone(TGIE5AdapterConfigurationObjC);
            v68 = MEMORY[0x223D8E6B0](v149, v61);

            v69 = MEMORY[0x223D8E6B0](v144, v60);

            v70 = MEMORY[0x223D8E6B0](v151, v152);
            v71 = [v67 initWithAdapterType:v68 symbolName:v69 mutableWeightsFilePath:v70];

            specialized Set._Variant.insert(_:)(&v162, v71);
            v40 = v145;
          }
        }

        else
        {
          v75 = v40;
          v149 = v51[2];
          v76 = one-time initialization token for device;

          if (v76 != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          __swift_project_value_buffer(v77, static Log.device);

          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();

          v144 = v78;
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v139 = v53;
            v82 = v81;
            v162 = v81;
            *v80 = v140;
            *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v162);
            *(v80 + 12) = 2082;
            v83 = v149;
            *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v139, &v162);
            v84 = v79;
            v85 = v144;
            _os_log_impl(&dword_220940000, v144, v84, "E5 function %{public}s specifies adapter type %{public}s but resource information was not provided", v80, 0x16u);
            swift_arrayDestroy();
            v86 = v82;
            v53 = v139;
            MEMORY[0x223D90A10](v86, -1, -1);
            v87 = v80;
            v75 = v145;
            MEMORY[0x223D90A10](v87, -1, -1);
          }

          else
          {

            v83 = v149;
          }

          v88 = objc_allocWithZone(TGIE5FunctionObjC);
          v89 = MEMORY[0x223D8E6B0](v49, v50);

          v90 = MEMORY[0x223D8E6B0](v83, v53);

          v91 = [v88 initWithName:v89 queryLength:v148 contextSize:v153 adapterType:v90];

          specialized Set._Variant.insert(_:)(&v162, v91);
          v40 = v75;
        }
      }

      else
      {
        v72 = objc_allocWithZone(TGIE5FunctionObjC);

        v73 = MEMORY[0x223D8E6B0](v49, v50);

        v74 = [v72 initWithName:v73 queryLength:v52 contextSize:v153 adapterType:0];

        specialized Set._Variant.insert(_:)(&v162, v74);
      }
    }

    while (1)
    {
      v45 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v45 >= v146)
      {

        v92 = objc_allocWithZone(TGIMutableE5ModelConfigurationObjC);
        v93 = MEMORY[0x223D8E6B0](v158, v159);
        type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
        lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
        v94 = Set._bridgeToObjectiveC()().super.isa;

        type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
        lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
        v95 = Set._bridgeToObjectiveC()().super.isa;

        v31 = [v92 initWithModelType:v141 modelBundlePath:v93 e5Functions:v94 adapterConfigurations:v95];

        v96 = v157;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v150, v157, type metadata accessor for ModelMetadata);
        (*(v142 + 56))(v96, 0, 1, v143);
        return v31;
      }

      v18 = *(v41 + 8 * v45);
      ++v17;
      if (v18)
      {
        v17 = v45;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  __swift_project_value_buffer(v99, static Log.device);

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v162 = v103;
    *v102 = 136446210;
    *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v162);
    _os_log_impl(&dword_220940000, v100, v101, "Failed to handle model of type %{public}s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);
    v104 = v103;
    v98 = v137;
    MEMORY[0x223D90A10](v104, -1, -1);
    MEMORY[0x223D90A10](v102, -1, -1);
  }

  v162 = 0;
  v163 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v162 = 0xD000000000000015;
  v163 = 0x8000000220AFD1A0;
  MEMORY[0x223D8E780](v34, v35);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v105 = v138;
  (*(v22 + 16))(v138, v98, v11);
  v31 = *MEMORY[0x277D29D78];
  v106 = type metadata accessor for InferenceError();
  (*(*(v106 - 8) + 104))(v105, v31, v106);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  (*(v22 + 8))(v98, v11);
  v107 = v150;
LABEL_69:
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v107, type metadata accessor for ModelMetadata);
  return v31;
}

uint64_t OnDeviceInferenceProviderDataSource.modelMetadataFromResource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = type metadata accessor for LLMDraftModelAssetContents();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LLMDraftModelAssetMetadata();
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v46 - v8;
  v9 = type metadata accessor for URL();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v46 - v12;
  v13 = type metadata accessor for LLMModelAssetContents();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LLMModelAssetMetadata();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMd);
  v59 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  v27 = type metadata accessor for ModelMetadata();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v61 = a2;
  v53 = v29;
  v52 = v28 + 56;
  v29(a2, 1, 1, v27);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedResource_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedLLMModel_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of RandomNumberGenerator(&v62, v66);
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v30 = v68;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    if (!v30)
    {
      CatalogAsset.metadata.getter();
      v68 = 0;
      CatalogAsset.contents.getter();
      v36 = v55;
      AssetContents.metadataURL.getter();
      (*(v54 + 8))(v15, v13);
      v37 = v68;
      ModelMetadata.init(from:metadataUrl:)(v18, v36, v23);
      (*(v59 + 8))(v26, v24);
      v38 = v61;
      outlined destroy of [Int](v61, &_s24TokenGenerationInference13ModelMetadataVSgMd);
      if (v37)
      {
        return __swift_destroy_boxed_opaque_existential_1(v66);
      }

      v53(v23, 0, 1, v27);
      v44 = v23;
      v45 = v38;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v31 = v68;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  outlined destroy of [Int](&v62, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog019AssetBackedLLMDraftA0_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of RandomNumberGenerator(&v62, v66);
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v32 = v60;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    if (!v31)
    {
      v34 = v56;
      v35 = v58;
      CatalogAsset.metadata.getter();
      v39 = v49;
      CatalogAsset.contents.getter();
      v40 = v48;
      v41 = v51;
      AssetContents.metadataURL.getter();
      (*(v50 + 8))(v39, v41);
      v42 = v47;
      ModelMetadata.init(from:metadataUrl:)(v34, v40, v47);
      (*(v57 + 8))(v32, v35);
      v43 = v61;
      outlined destroy of [Int](v61, &_s24TokenGenerationInference13ModelMetadataVSgMd);
      v53(v42, 0, 1, v27);
      v44 = v42;
      v45 = v43;
LABEL_12:
      outlined init with take of ModelMetadata?(v44, v45);
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

LABEL_6:
    outlined destroy of [Int](v61, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  return outlined destroy of [Int](&v62, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd);
}

uint64_t sub_22095C108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v20 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = &v20;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v22) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    LOBYTE(v22) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v19, &v21);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  return v17 + 1;
}

void *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v27 = *a1;
        v28 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v60, "a character");
        *v27 = v28;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v30 = *a1;
        v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v30 = v31;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v17 = *a1;
        v18 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v17 = v18;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v37 = *a1;
        v38 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v37 = v38;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v33 = *a1;
        v34 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v33 = v34;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v43 = *a1;
        v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v43 = v44;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v24 = *a1;
        v25 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v24 = v25;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = *(a1 + 8);
        v54 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = *(a1 + 8);
        v58 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = *(a1 + 8);
      v56 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v49 = *a1;
        *v49 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      v13 = *v6;
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a1 + 8);

      return v52(v50, v53, v51);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

  return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, v6, v7, v9, v8);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x4000) == 0)
  {
    return *(a1 + 4);
  }

  v4 = *(a1 + 4);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    return *(a1 + 8);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

void ImageEmbeddingsProvider::ImageEmbeddingsProvider(ImageEmbeddingsProvider *this, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__canonical(&v39, a2, 0);
  std::__fs::filesystem::path::extension[abi:ne200100](&v39, &pn);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, ".bundle");
  v46.__data_ = &__p;
  v6 = std::__fs::filesystem::operator==[abi:ne200100](&pn, v46);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__pn_.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = a2->__pn_;
    }

    E5RT::ProgramLibrary::OpenLibrary();
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(buf[0]);
    std::string::basic_string[abi:ne200100]<0>(&pn, "image_feature_projection");
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, &pn.__r_.__value_.__l.__data_);
    v11 = v10;
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    else if (v10)
    {
LABEL_18:
      v12 = E5RT::ProgramLibrary::GetExportedFunctions(buf[0]);
      std::string::basic_string[abi:ne200100]<0>(&pn, "image_feature_projection");
      v13 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v12, &pn.__r_.__value_.__l.__data_);
      if (!v13)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v14 = v13[6];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT::PrecompiledComputeOpCreateOptions::Create();
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
      cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(v33, v15);
      v16 = pn.__r_.__value_.__r.__words[0];
      pn.__r_.__value_.__r.__words[0] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

LABEL_66:
      v23 = buf[0];
      buf[0] = 0;
      if (v23)
      {
        v23 = (*(*v23 + 8))(v23);
      }

      *this = v33;
      if (v33)
      {
        operator new();
      }

      goto LABEL_70;
    }

    v17 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v39.__pn_.__r_.__value_.__r.__words[2] = 12;
      v39.__pn_.__r_.__value_.__r.__words[0] = "image_feature_projection";
      pn.__r_.__value_.__r.__words[0] = v43;
      *&pn.__r_.__value_.__r.__words[1] = xmmword_220AE5410;
      v41 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v42 = 0;
      __src = v43;
      __p.__r_.__value_.__r.__words[0] = 1;
      __p.__r_.__value_.__l.__size_ = &v39;
      __p.__r_.__value_.__r.__words[2] = 12;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&pn, "Model did not have image projection function named {}", 53, &__p);
      v18 = pn.__r_.__value_.__r.__words[2];
      if (pn.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (pn.__r_.__value_.__r.__words[2] >= 0x17)
      {
        operator new();
      }

      v35 = pn.__r_.__value_.__s.__data_[16];
      if (pn.__r_.__value_.__r.__words[2])
      {
        memmove(&__dst, __src, pn.__r_.__value_.__r.__words[2]);
      }

      *(&__dst + v18) = 0;
      if (__src != v43)
      {
        operator delete(__src);
      }

      p_dst = &__dst;
      if (v35 < 0)
      {
        p_dst = __dst;
      }

      LODWORD(v37.__r_.__value_.__l.__data_) = 136315138;
      *(v37.__r_.__value_.__r.__words + 4) = p_dst;
      _os_log_impl(&dword_220940000, v17, OS_LOG_TYPE_INFO, "%s", &v37, 0xCu);
      if (v35 < 0)
      {
        operator delete(__dst);
      }
    }

    v33 = 0;
    goto LABEL_66;
  }

  v8 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v37 = a2->__pn_;
    }

    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v20 = &v37;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v37.__r_.__value_.__r.__words[0];
    }

    v39.__pn_.__r_.__value_.__l.__size_ = size;
    v39.__pn_.__r_.__value_.__r.__words[2] = 13;
    v39.__pn_.__r_.__value_.__r.__words[0] = v20;
    pn.__r_.__value_.__r.__words[0] = v43;
    *&pn.__r_.__value_.__r.__words[1] = xmmword_220AE5410;
    v41 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v42 = 0;
    __src = v43;
    __p.__r_.__value_.__r.__words[0] = 1;
    __p.__r_.__value_.__l.__size_ = &v39;
    __p.__r_.__value_.__r.__words[2] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&pn, "Cannot load projection function from non-precompiled bundle at path {}.", 71, &__p);
    v21 = pn.__r_.__value_.__r.__words[2];
    if (pn.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (pn.__r_.__value_.__r.__words[2] >= 0x17)
    {
      operator new();
    }

    v35 = pn.__r_.__value_.__s.__data_[16];
    if (pn.__r_.__value_.__r.__words[2])
    {
      memmove(&__dst, __src, pn.__r_.__value_.__r.__words[2]);
    }

    *(&__dst + v21) = 0;
    if (__src != v43)
    {
      operator delete(__src);
    }

    v22 = &__dst;
    if (v35 < 0)
    {
      v22 = __dst;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v22;
    _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    if (v35 < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  *this = 0;
LABEL_70:
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, a3->__pn_.__r_.__value_.__l.__data_, a3->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = *&a3->__pn_.__r_.__value_.__l.__data_;
    *(this + 5) = *(&a3->__pn_.__r_.__value_.__l + 2);
    *(this + 24) = v25;
  }

  *(this + 6) = 0;
  *(this + 56) = xmmword_220AE8430;
  v26 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v23);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = a2->__pn_;
    }

    p_pn = &pn;
    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_pn = pn.__r_.__value_.__r.__words[0];
    }

    LODWORD(v39.__pn_.__r_.__value_.__l.__data_) = 136315138;
    *(v39.__pn_.__r_.__value_.__r.__words + 4) = p_pn;
    _os_log_impl(&dword_220940000, v26, OS_LOG_TYPE_INFO, "Setting up ImageEmbeddingsProvider from model at %s", &v39, 0xCu);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 2))
  {
    v29 = *this;
    {
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&pn, "The projection op was invalid due to non-matching input/output embedding count");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &pn);
    }
  }
}

void sub_22095D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p != v67)
  {
    operator delete(__p);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY5_()
{
  v102 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 696);
  v7 = type metadata accessor for E5TransformerLanguageModel();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain_n();

  v98 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v3, v5, v4, v7, ObjectType, v2);
  OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)(v6);
  v9 = *(v0 + 720);
  if (v1)
  {

    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 720), *(v0 + 696), *(v0 + 680));
    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    *(v9 + *(v10 + 20)) = 0;
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  v11 = *(v0 + 712);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 720), v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  type metadata accessor for PromptTemplateConfiguration(0);
  v12 = *(*(v10 - 8) + 48);
  v13 = v12(v11, 1, v10);
  outlined destroy of [Int](v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  if (v13 == 1)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 976);
      v17 = *(v0 + 968);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v101 = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v101);
      _os_log_impl(&dword_220940000, v14, v15, "Did not find prompt template configuration for asset %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D90A10](v19, -1, -1);
      MEMORY[0x223D90A10](v18, -1, -1);
    }
  }

  else if (!v12(*(v0 + 720), 1, v10))
  {
    v20 = *(v0 + 944);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v20, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v21 = type metadata accessor for ModelMetadata();
    v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
    v23 = *(v0 + 944);
    if (v22 == 1)
    {
      outlined destroy of [Int](v23, &_s24TokenGenerationInference13ModelMetadataVSgMd);
      v24 = 0;
    }

    else
    {
      v24 = *(v23 + 192);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v23, type metadata accessor for ModelMetadata);
    }

    *(*(v0 + 720) + *(v10 + 20)) = v24 & 1;
  }

  v25 = *(v0 + 952);
  v26 = *(v0 + 936);
  v27 = *(v0 + 656);
  v28 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1(*(v0 + 600), *(*(v0 + 600) + 24));
  v29 = dispatch thunk of CatalogResource.id.getter();
  v96 = v30;
  v97 = v29;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v28, v27, type metadata accessor for Asset);
  v99 = type metadata accessor for Asset();
  v91 = *(*(v99 - 8) + 56);
  (v91)(v27, 0, 1);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v25, v26, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v31 = type metadata accessor for ModelMetadata();
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v26, 1, v31);
  v34 = *(v0 + 936);
  if (v33 == 1)
  {
    outlined destroy of [Int](*(v0 + 936), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v95 = 0;
  }

  else
  {
    v95 = *(v34 + 32);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v34, type metadata accessor for ModelMetadata);
  }

  v35 = *(v0 + 928);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v35, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v36 = v32(v35, 1, v31);
  v37 = *(v0 + 928);
  if (v36 == 1)
  {
    outlined destroy of [Int](*(v0 + 928), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v94 = 0;
  }

  else
  {
    v38 = *(v37 + 40);
    v39 = *(v37 + 56);
    v40 = *(v37 + 88);
    *(v0 + 48) = *(v37 + 72);
    *(v0 + 64) = v40;
    *(v0 + 16) = v38;
    *(v0 + 32) = v39;
    v41 = *(v37 + 104);
    v42 = *(v37 + 120);
    v43 = *(v37 + 136);
    *(v0 + 128) = *(v37 + 152);
    *(v0 + 96) = v42;
    *(v0 + 112) = v43;
    *(v0 + 80) = v41;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 16, v0 + 136, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v37, type metadata accessor for ModelMetadata);
    if (*(v0 + 104) == 1)
    {
      v94 = 0;
    }

    else
    {
      v44 = *(v0 + 80);
      v45 = *(v0 + 88);
      outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference17DefaultParametersVSgMd);
      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = v44;
      }

      v94 = v46;
    }
  }

  v47 = *(v0 + 920);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v47, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v48 = v32(v47, 1, v31);
  v49 = *(v0 + 920);
  if (v48 == 1)
  {
    outlined destroy of [Int](*(v0 + 920), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v93 = 0;
  }

  else
  {
    v93 = *(v49 + 184);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v49, type metadata accessor for ModelMetadata);
  }

  v50 = *(v0 + 952);
  v51 = *(v0 + 912);
  v52 = *(v0 + 720);
  v53 = *(v0 + 704);
  v54 = *(v0 + 648);
  v55 = *(v0 + 640);
  v56 = type metadata accessor for UUID();
  (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  v91(v54, 1, 1, v99);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v52, v53, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v50, v51, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v57 = v32(v51, 1, v31);
  v58 = *(v0 + 912);
  if (v57 == 1)
  {
    outlined destroy of [Int](*(v0 + 912), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v90 = 0;
    v92 = 0;
    v89 = 0;
  }

  else
  {
    v90 = v58[26];
    v92 = v58[25];
    v89 = v58[27];
    outlined copy of ClassifierMetadata?(v92, v90);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v58, type metadata accessor for ModelMetadata);
  }

  v59 = *(v0 + 904);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v59, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v60 = v32(v59, 1, v31);
  v61 = *(v0 + 904);
  if (v60 == 1)
  {
    outlined destroy of [Int](*(v0 + 904), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v87 = 0;
    v88 = 0;
    v85 = 1;
    v86 = 0;
  }

  else
  {
    v87 = v61[29];
    v88 = v61[28];
    v85 = v61[31];
    v86 = v61[30];
    outlined copy of StopToken?(v88, v87, v86, v85);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v61, type metadata accessor for ModelMetadata);
  }

  v62 = *(v0 + 896);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v62, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v63 = v32(v62, 1, v31);
  v64 = *(v0 + 896);
  v65 = *(v0 + 632);
  if (v63 == 1)
  {
    outlined destroy of [Int](*(v0 + 896), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v66 = type metadata accessor for PromptPreprocessingTemplateVersion();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  }

  else
  {
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v64 + *(v31 + 64), *(v0 + 632), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v64, type metadata accessor for ModelMetadata);
  }

  v67 = *(v0 + 976);
  v81 = *(v0 + 968);
  v82 = *(v0 + 960);
  v83 = *(v0 + 952);
  v84 = *(v0 + 720);
  v68 = *(v0 + 704);
  v69 = *(v0 + 672);
  v70 = *(v0 + 664);
  v71 = *(v0 + 656);
  v72 = *(v0 + 648);
  v73 = *(v0 + 640);
  v80 = *(v0 + 632);
  v100 = *(v0 + 1016);
  *v69 = v81;
  v69[1] = v67;
  v69[2] = v97;
  v69[3] = v96;
  outlined init with take of Asset?(v71, v69 + v70[6], &_s24TokenGenerationInference5AssetVSgMd);
  *(v69 + v70[7]) = v100;
  *(v69 + v70[8]) = v98;
  v74 = (v69 + v70[9]);
  *v74 = xmmword_220AED900;
  v74[1] = 0u;
  v74[2] = 0u;
  v74[3] = 0u;
  *(v74 + 57) = 0u;
  *(v69 + v70[10]) = v95;
  *(v69 + v70[11]) = v94;
  *(v69 + v70[12]) = v93;
  outlined init with take of Asset?(v73, v69 + v70[13], &_s10Foundation4UUIDVSgMd);
  outlined init with take of Asset?(v72, v69 + v70[14], &_s24TokenGenerationInference5AssetVSgMd);
  outlined init with take of Asset?(v68, v69 + v70[15], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v75 = (v69 + v70[16]);
  *v75 = v92;
  v75[1] = v90;
  v75[2] = v89;
  v76 = (v69 + v70[17]);
  *v76 = v88;
  v76[1] = v87;
  v76[2] = v86;
  v76[3] = v85;
  outlined init with take of Asset?(v80, v69 + v70[18], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  *(v0 + 400) = v70;
  *(v0 + 408) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v69, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v0 + 376, v81, v67);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v69, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  outlined destroy of [Int](v83, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  outlined destroy of [Int](v84, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t std::__function::__value_func<void ()(cgm::token_generation_inference::ajax::AJAXE5MLModel::Logits const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY3_()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.duration(to:)();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3008) = v1;

  if (v1)
  {
    outlined destroy of [Int](v4 + 1896, &_s24TokenGenerationInference15LogitPresampler_pSgMd);

    v5 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v4 + 3016) = a1;
    outlined destroy of [Int](v4 + 1896, &_s24TokenGenerationInference15LogitPresampler_pSgMd);

    v5 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 2984) = a1;
  *(v3 + 2992) = v1;

  if (v1)
  {

    v4 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    outlined destroy of [Int](v3 + 2696, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
    v4 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySDyS2i4next_Sf5logittGGMd, &_ss23_ContiguousArrayStorageCySDyS2i4next_Sf5logittGGMR, &_sSDyS2i4next_Sf5logittGMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference22ProcessedImageProtocol_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference22ProcessedImageProtocol_pGMR, &_s24TokenGenerationInference22ProcessedImageProtocol_pMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, __int128 *p_aBlock, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for device != -1)
  {
LABEL_35:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v55 = a6;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&aBlock = v15;
    *v14 = 136642819;
    v16 = MEMORY[0x223D8E8D0](p_aBlock, MEMORY[0x277D83B88]);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_220940000, v12, v13, "Running token(s): %{sensitive}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223D90A10](v15, -1, -1);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  v19 = *(p_aBlock + 2);
  if (!v19)
  {
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v20 = a5;
  *&aBlock = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v21 = (p_aBlock + 2);
  v22 = v19;
  do
  {
    v23 = *v21++;
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v22;
  }

  while (v22);
  a5 = v20;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = *(a3 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v53 = a4;
    v54 = a5;
    *&aBlock = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v26 = type metadata accessor for TGITokenMaskObjC();
    v27 = (a3 + 48);
    do
    {
      v28 = *(v27 - 2);
      v29 = *(v27 - 1);
      v30 = *v27;
      v31 = objc_allocWithZone(v26);
      v32 = &v31[OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask];
      *v32 = v28;
      *(v32 + 1) = v29;
      *(v32 + 2) = v30;
      v57.receiver = v31;
      v57.super_class = v26;

      objc_msgSendSuper2(&v57, sel_init);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 += 3;
      --v24;
    }

    while (v24);
    v25 = aBlock;
    a5 = v54;
  }

LABEL_14:
  result = [a4 getNumTokensProcessed];
  v34 = v19 - a5;
  if (__OFSUB__(v19, a5))
  {
    __break(1u);
    goto LABEL_37;
  }

  v35 = &result[v34];
  if (__OFADD__(result, v34))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v66 = 0;
  v67 = MEMORY[0x277D84F90];
  v65 = 0;
  type metadata accessor for NSNumber();
  v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v25)
  {
    type metadata accessor for TGITokenMaskObjC();
    v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v37.super.isa = 0;
  }

  outlined init with copy of LogitPresampler?(v55, &v59);
  v38 = swift_allocObject();
  *(v38 + 16) = &v66;
  *(v38 + 24) = &v65;
  *(v38 + 32) = a4;
  *(v38 + 40) = v35;
  v39 = v60;
  *(v38 + 48) = v59;
  *(v38 + 64) = v39;
  *(v38 + 80) = v61;
  *(v38 + 88) = &v67;
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for closure #3 in closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  *(v40 + 24) = v38;
  *&v64 = partial apply for thunk for @callee_guaranteed (@guaranteed E5RunnerLogitsProtocol?, @guaranteed Error?) -> ();
  *(&v64 + 1) = v40;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v63 = thunk for @escaping @callee_guaranteed (@guaranteed E5RunnerLogitsProtocol?, @guaranteed Error?) -> ();
  *(&v63 + 1) = &block_descriptor_1;
  v41 = _Block_copy(&aBlock);
  a6 = *(&v64 + 1);
  v42 = a4;

  [v42 runTokens:v36.super.isa tokenMasks:v37.super.isa computeLogitsTokenCount:a5 outputBlock:v41];

  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    goto LABEL_38;
  }

  if (v66)
  {
    *&aBlock = v66;
    v43 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    a5 = v67;
    v44 = *(v67 + 16);
    a3 = v67 + 32;
    p_aBlock = &aBlock;

    for (i = 0; ; i = a4)
    {
      v46 = 0uLL;
      a4 = v44;
      v47 = 0uLL;
      v48 = 0uLL;
      if (i != v44)
      {
        if (i >= *(a5 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        a4 = (i + 1);
        *&v59 = i;
        outlined init with copy of DeterministicLanguageModelProtocol(a3 + 40 * i, &v59 + 8);
        v46 = v59;
        v47 = v60;
        v48 = v61;
      }

      aBlock = v46;
      v63 = v47;
      v64 = v48;
      if (!v48)
      {

        *&aBlock = v67;
        *(&aBlock + 1) = v65;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMd);
        CheckedContinuation.resume(returning:)();
        goto LABEL_33;
      }

      v56 = v46;
      outlined init with take of RandomNumberGenerator((&aBlock + 8), &v59);
      v49 = *(&v60 + 1);
      a6 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      if ((*(a6 + 16))(v49, a6))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v59);
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134218240;
      *(v52 + 4) = v56;
      *(v52 + 12) = 2048;
      swift_beginAccess();
      *(v52 + 14) = *(v67 + 16);
      _os_log_impl(&dword_220940000, v50, v51, "Found NaN logit at %ld of %ld", v52, 0x16u);
      MEMORY[0x223D90A10](v52, -1, -1);
    }

    v58 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:5 userInfo:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

LABEL_33:
}

uint64_t sub_22095F6B0()
{
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)()
{
  v1 = v0[8];
  v2 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_lruKVCache);

    v5 = 32;
    do
    {
      v6 = E5TransformerLanguageModel.leftContextTokens(forNode:)(*(v2 + v5));
      v7 = *(v4 + 16);
      type metadata accessor for KVLRUCache.TokenArrayWrapper();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      v9 = v7;
      v10 = [v9 objectForKey_];

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  v11 = v0[21];
  E5TransformerLanguageModel.cachePromptModuleNodes(promptModulesTokens:)(v0[15]);
  v12 = v0[14];
  if (v11)
  {

    v13 = v0[1];
  }

  else
  {
    v14 = v0[20];
    v15 = v0[8];

    specialized Array.append<A>(contentsOf:)(v12);

    result = specialized Array.append<A>(contentsOf:)(v16);
    v18 = *(v15 + 64);
    v19 = __OFADD__(v18, v14);
    v20 = v18 + v14;
    if (v19)
    {
      __break(1u);
      return result;
    }

    v21 = v0[19];
    v22 = v0[7];
    *(v15 + 64) = v20;
    *v22 = v21;
    v13 = v0[1];
  }

  return v13();
}

{
  v1 = *(v0 + 64);
  if ((*(v1 + 32) & 1) == 0)
  {
    result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes), &outlined read-only object #0 of closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:));
    if ((result & 1) == 0)
    {
      goto LABEL_48;
    }

    v3 = *(*(v0 + 64) + 48);
    ObjectType = swift_getObjectType();
    v0 = v63;
    (*(v3 + 40))(ObjectType, v3);
    *(v1 + 32) = 1;
    v1 = *(v63 + 64);
  }

  v5 = *(v0 + 72);
  v6 = *(v5 + 16);
  v7 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes;
  *(v0 + 104) = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes;
  result = swift_beginAccess();
  if (v6)
  {
    v8 = (v5 + 32);
    v9 = *(v1 + 56);
    v10 = v9 + 32;
    v11 = *(v1 + v7);
    v12 = *(v9 + 16);
    v13 = *(v11 + 16);
    v14 = v11 + 24;
    v15 = (v5 + 32);
    v16 = v6;
    while (1)
    {
      v18 = *v15++;
      v17 = v18;
      if (v18 >= v12)
      {
        break;
      }

      v19 = v10 + 48 * v17;
      v20 = *(v19 + 16);
      if (v13)
      {
        if (*(v19 + 8) != *(v14 + 8 * v13))
        {
          v20 = 1;
        }

        if ((v20 & 1) == 0)
        {
LABEL_13:
          v21 = v6;
          v22 = (v5 + 32);
          while (v21)
          {
            v23 = *v22++;
            --v21;
            if (!v23)
            {
              __break(1u);
              break;
            }
          }

          E5TransformerLanguageModel.lookupLRUCache(promptModuleNodes:)(*(v0 + 80));
          *(v0 + 112) = v24;
          v25 = *(v24 + 16);
          v26 = MEMORY[0x277D84F90];
          if (v25)
          {
            v27 = v1;
            v65 = MEMORY[0x277D84F90];
            v28 = v24;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
            v0 = v63;
            v29 = (v28 + 32);
            v30 = v65;
            do
            {
              v31 = *v29++;
              v32 = E5TransformerLanguageModel.leftContextTokens(forNode:)(v31);
              v66 = v30;
              v34 = *(v30 + 16);
              v33 = *(v30 + 24);
              if (v34 >= v33 >> 1)
              {
                v35 = v32;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
                v32 = v35;
                v30 = v66;
              }

              *(v30 + 16) = v34 + 1;
              *(v30 + 8 * v34 + 32) = v32;
              --v25;
            }

            while (v25);
            v1 = v27;
            v26 = MEMORY[0x277D84F90];
          }

          else
          {
            v30 = MEMORY[0x277D84F90];
          }

          *(v0 + 120) = v30;
          KeyPath = swift_getKeyPath();
          v37 = *(v30 + 16);
          v62 = v30;
          if (v37)
          {
            v60 = v6;
            v61 = v1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
            v38._rawValue = v26;
            v39 = (v30 + 32);
            do
            {
              *(v0 + 48) = *v39;

              v40 = KeyPath;
              swift_getAtKeyPath();

              v41 = *(v0 + 40);
              v43 = v26[2];
              v42 = v26[3];
              if (v43 >= v42 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
              }

              v26[2] = v43 + 1;
              v26[v43 + 4] = v41;
              ++v39;
              --v37;
              v0 = v63;
              KeyPath = v40;
            }

            while (v37);

            v1 = v61;
            v30 = v62;
            v6 = v60;
          }

          else
          {

            v38._rawValue = MEMORY[0x277D84F90];
          }

          v44 = E5TransformerLanguageModel.tokenMasks(queryNodes:promptModulesTokensCounts:)(*(v0 + 72), v38);
          *(v0 + 128) = v44;

          v45 = MEMORY[0x277D84F90];
          while (1)
          {
            v47 = *v8++;
            v46 = v47;
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            v48 = *(v1 + 56);
            if (v46 >= *(v48 + 16))
            {
              goto LABEL_47;
            }

            v49 = v48 + 48 * v46;
            if ((*(v49 + 72) & 1) == 0)
            {
              v50 = *(v49 + 64);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
                v45 = result;
              }

              v52 = *(v45 + 16);
              v51 = *(v45 + 24);
              if (v52 >= v51 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v45);
                v45 = result;
              }

              *(v45 + 16) = v52 + 1;
              *(v45 + 8 * v52 + 32) = v50;
              v30 = v62;
              v0 = v63;
            }

            if (!--v6)
            {
              v53 = *(v0 + 64);
              v54 = *(v45 + 16);

              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0, MEMORY[0x277D84F90]);
              specialized Array.append<A>(contentsOf:)(v30);
              specialized Array.append<A>(contentsOf:)(v45);
              *(v0 + 136) = v67;
              v55 = *(v53 + 48);
              v56 = swift_getObjectType();
              v64 = (*(v55 + 16) + **(v55 + 16));
              v57 = swift_task_alloc();
              *(v0 + 144) = v57;
              *v57 = v0;
              v57[1] = closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:);
              v58 = *(v0 + 88);
              v59 = *(v0 + 96);

              return v64(v67, v58, v44, v59, v56, v55);
            }
          }
        }
      }

      else if (*(v19 + 16))
      {
        goto LABEL_13;
      }

      if (!--v16)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

void E5TransformerLanguageModel.cachePromptModuleNodes(promptModulesTokens:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) + 16) - 1;
  E5TransformerLanguageModel.currentPromptModulesContextSize.getter();
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    v32 = v10;
    v30 = *(v10 + 24);
    v11 = (a1 + 32);
    while (1)
    {
      v33 = v11;
      v34 = v9;
      v12._rawValue = *v11;
      v13 = one-time initialization token for device;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.device);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136642819;
        v19 = MEMORY[0x223D8E8D0](v12._rawValue, MEMORY[0x277D83B88]);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_220940000, v15, v16, "Caching kv cache entry for tokens %{sensitive}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x223D90A10](v18, -1, -1);
        MEMORY[0x223D90A10](v17, -1, -1);
      }

      v22 = *(v12._rawValue + 2);
      v23 = v8 + v22;
      if (__OFADD__(v8, v22))
      {
        break;
      }

      if (v23 < v8)
      {
        goto LABEL_17;
      }

      v24 = v30(v8, v8 + v22, ObjectType, v32);
      if (v3)
      {

        return;
      }

      v26 = v24;
      v27 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      KVLRUCache.insert(kvCacheEntry:tokens:)(isa, v12);
      v3 = v29;
      outlined consume of Data._Representation(v26, v27);

      if (!v29)
      {
        v11 = v33 + 1;
        v8 = v23;
        v9 = v34 - 1;
        if (v34 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

void E5TransformerLanguageModel.currentPromptModulesContextSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v15;
    swift_beginAccess();
    v4 = 32;
    while (1)
    {
      v5 = *(v1 + v4);
      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      v6 = *(v0 + 56);
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 48 * v5 + 32);
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      *(v15 + 8 * v9 + 32) = v7;
      v4 += 8;
      if (!--v2)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_9:
    v10 = *(v3 + 16);
    if (!v10)
    {
LABEL_13:

      return;
    }

    v11 = 0;
    v12 = (v3 + 32);
    while (1)
    {
      v13 = *v12++;
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTQ1_()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY4_;
  }

  else
  {
    v2 = _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v7 = specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v6 + 248) = a2;
    *(v6 + 256) = a1;
    v7 = specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x2822009F8](specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  swift_beginAccess();
  static Duration.+= infix(_:_:)();
  result = swift_endAccess();
  v2 = v0[21];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v0[26];

  if (*(v2 + 16) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = v0[1];

  return v4(v2);
}

{
  v74 = v0;
  v1 = v0[22];
  v2 = E5TransformerLanguageModel.computePromptModuleNodesNeeded()();
  v4 = v3;
  v72 = v0;
  v0[25] = v3;
  v5 = E5TransformerLanguageModel.latestCommonParent(nodes:)(v1);
  v65 = v4;
  v66 = *(v2 + 16);
  if (v66 || *(v4 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
    v58 = v0[22];
    v59 = *(v58 + 16);
    v60 = (v58 + 32);
    while (v59)
    {
      v61 = *v60++;
      --v59;
      if (v61 == v5)
      {
        v62 = v0[24];
        result = swift_beginAccess();
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        v63 = *(v62 + 56);
        if (v6 < *(v63 + 16))
        {
          v64 = v63 + 48 * v6;
          if (*(v64 + 48))
          {
            v6 = 0;
          }

          else
          {
            v6 = *(v64 + 40);
          }

          break;
        }

        goto LABEL_63;
      }
    }
  }

  v7 = v0[22];

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v8);

  v0[20] = v9;
  v11 = *(v7 + 16);
  v0[26] = v11;
  v69 = v11;
  if (v11)
  {
    v67 = v0[24];
    v68 = v0[22] + 32;
    result = swift_beginAccess();
    v12 = 0;
    while (1)
    {
      v13 = *(v68 + 8 * v12);
      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      v14 = *(v67 + 56);
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_53;
      }

      v70 = v12 + 1;
      v15 = *(v14 + 48 * v13 + 32);

      v16 = specialized NodeStorage.nodes(previousAndIncluding:position:)(v13, v15, 0, v14);
      v18 = v17;

      v19 = v72[20];
      do
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v16 >= *(v18 + 16))
        {
          goto LABEL_51;
        }

        if (v16 == v6)
        {
          break;
        }

        v21 = v18 + 32 + 48 * v16;
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        result = MEMORY[0x223D8F400](*(v9 + 40), v16);
        v24 = -1 << *(v9 + 32);
        v25 = result & ~v24;
        if ((*(v9 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (*(*(v9 + 48) + 8 * v25) != v16)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v9 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v19;
          result = specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v25, isUniquelyReferenced_nonNull_native);
          v72[20] = v19;
          v9 = v19;
        }

        v16 = v22;
      }

      while ((v23 & 1) == 0);

      v12 = v70;
      if (v70 == v69)
      {
        goto LABEL_20;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
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
  }

  else
  {
LABEL_20:
    v27 = 0;
    v28 = *(v72[24] + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes);
    v29 = *(v28 + 16);
    while (v29 != v27)
    {
      v30 = v28 + 8 * v27++;
      if (*(v30 + 32) == v6)
      {
        E5TransformerLanguageModel.reset(promptModuleNodes:toNode:)(v2, v6);
LABEL_35:

        v44 = v72[22];
        v45 = v72[20];

        v46 = specialized _NativeSet.subtracting<A>(_:)(v44, v45);
        v47 = v46;
        v48 = *(v46 + 16);
        v49 = v72[24];
        if (v48)
        {
          v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v46 + 16), 0);
          v71 = specialized Sequence._copySequenceContents(initializing:)(&v73, v50 + 4, v48, v47);
          swift_retain_n();

          result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
          if (v71 != v48)
          {
            goto LABEL_56;
          }

          v49 = v72[24];
        }

        else
        {
          swift_retain_n();
          v50 = MEMORY[0x277D84F90];
        }

        v73 = v50;

        specialized MutableCollection<>.sort(by:)(&v73, v49, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
        v52 = v72[23];
        v51 = v72[24];

        specialized Array.append<A>(contentsOf:)(v53);
        v54 = v73;
        v72[27] = v73;
        v55 = swift_task_alloc();
        v72[28] = v55;
        v55[2] = v51;
        v55[3] = v54;
        v55[4] = v65;
        v55[5] = v69;
        v55[6] = v52;
        v72[21] = 0;
        v56 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_clock;
        v57 = swift_task_alloc();
        v72[29] = v57;
        *v57 = v72;
        v57[1] = specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);

        return _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_n(0, 0, v51 + v56, (v72 + 21), &async function pointer to partial apply for closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:), v55);
      }
    }

    if (v66)
    {
      goto LABEL_57;
    }

    if (!v29)
    {
      goto LABEL_58;
    }

    if (v29 > *(v28 + 16))
    {
      goto LABEL_59;
    }

    v31 = v72[24];
    v32 = *(v28 + 8 * v29 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220AE8A20;
    *(inited + 32) = v6;
    *(inited + 40) = v32;
    v34 = E5TransformerLanguageModel.latestCommonParent(nodes:)(inited);
    swift_setDeallocating();
    E5TransformerLanguageModel.reset(promptModuleNodes:toNode:)(MEMORY[0x277D84F90], v34);
    result = swift_beginAccess();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v35 = *(v31 + 56);
      if (v6 >= *(v35 + 16))
      {
        goto LABEL_61;
      }

      v36 = *(v35 + 48 * v6 + 32);

      v37 = specialized NodeStorage.nodes(previousAndIncluding:position:)(v6, v36, 0, v35);
      v39 = v38;

      v40 = v37;
      while ((v40 & 0x8000000000000000) == 0)
      {
        if (v40 >= *(v39 + 16))
        {
          goto LABEL_55;
        }

        if (v40 != v34)
        {
          if (v40)
          {
            v41 = v39 + 32 + 48 * v40;
            v42 = *(v41 + 8);
            v43 = *(v41 + 16);
            result = specialized Set._Variant.insert(_:)(&v73, v40);
            v40 = v42;
            if (!v43)
            {
              continue;
            }
          }
        }

        goto LABEL_35;
      }

      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}