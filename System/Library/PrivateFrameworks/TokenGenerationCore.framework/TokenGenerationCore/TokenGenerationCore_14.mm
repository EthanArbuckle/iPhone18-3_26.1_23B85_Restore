Swift::Int PromptTemplate.PromptTemplateRenderError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  return Hasher._finalize()();
}

uint64_t CatalogClient.resolveModelBundleID(resourceURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for AssetBackedLLMBundle();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v49 - v21;
  v23 = type metadata accessor for LLMBundle();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[0] = v2;
  type metadata accessor for CatalogClient();
  v28 = v65;
  result = CatalogClientProtocol.queryResourceBundle(with:)();
  if (!v28)
  {
    v50 = v18;
    v51 = 0;
    v52 = v15;
    v53 = v14;
    v65 = a1;
    v30 = v60;
    v31 = v61;
    outlined init with copy of (String, Any)(v64, v62, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    if (v63)
    {
      v32 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
      v33 = swift_dynamicCast();
      (*(v24 + 56))(v22, v33 ^ 1u, 1, v23);
      v34 = (*(v24 + 48))(v22, 1, v23);
      v35 = v31;
      if (v34 != 1)
      {
        (*(v32 + 32))(v27, v22, v23);
        LLMBundle.id.getter();
        (*(v32 + 8))(v27, v23);
LABEL_9:
        outlined destroy of [Regex2BNF.CharacterPredicate](v64, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
        type metadata accessor for PromptTemplate.ResolvedModelBundleID(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v62, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      (*(v24 + 56))(v22, 1, 1, v23);
      v35 = v31;
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v22, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
    outlined init with copy of (String, Any)(v64, v62, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v36 = v55;
    v37 = (v55 + 56);
    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
      v39 = v52;
      v38 = v53;
      v40 = swift_dynamicCast();
      (*(v36 + 56))(v38, v40 ^ 1u, 1, v39);
      v41 = (*(v36 + 48))(v38, 1, v39);
      v42 = v30;
      v44 = v58;
      v43 = v59;
      v45 = v56;
      v46 = v57;
      if (v41 != 1)
      {
        v47 = v50;
        (*(v36 + 32))(v50, v38, v39);
        AssetBackedLLMBundle.id.getter();
        (*(v36 + 8))(v47, v39);
        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v62, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      v38 = v53;
      (*v37)(v53, 1, 1, v52);
      v42 = v30;
      v44 = v58;
      v43 = v59;
      v45 = v56;
      v46 = v57;
    }

    v48 = v42;
    outlined destroy of [Regex2BNF.CharacterPredicate](v38, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
    URL.absoluteString.getter();
    GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnknownModelBundleIdentifierErrorInfo.init(modelBundleIdentifier:)();
    (*(v46 + 104))(v35, *MEMORY[0x1E69A0A18], v45);
    static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
    (*(v46 + 8))(v35, v45);
    type metadata accessor for GenerativeError();
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
    swift_allocError();
    static GenerativeError.runtimeError(type:)();
    (*(v43 + 8))(v44, v48);
    swift_willThrow();
    return outlined destroy of [Regex2BNF.CharacterPredicate](v64, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  return result;
}

char *CatalogClient.loadRawPromptTemplateFromModelCatalog(resourceURI:templateID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v53 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PromptTemplate.ResolvedModelBundleID(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v25 = v54;
  CatalogClient.resolveModelBundleID(resourceURI:)(v53, &v46 - v23);
  if (!v25)
  {
    v53 = v3;
    v47 = v7;
    v27 = v51;
    v26 = v52;
    v54 = 0;
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v24, v21, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v27;
      (*(v27 + 32))(v10, v21, v26);
      v29 = v47;
      (*(v27 + 16))(v47, v10, v26);
      type metadata accessor for _LoadedModelConfiguration();
      v30 = v54;
      v31 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v29, v53);
      v14 = v30;
      v32 = *(v28 + 8);
      v32(v29, v26);
      v32(v10, v26);
      if (!v30)
      {
        v33 = v48;
        v34 = v49;
        if (!v31)
        {
          goto LABEL_16;
        }

LABEL_11:
        v39 = *(v31 + 16);
        if (!v39 || !*(v39 + 16))
        {
          goto LABEL_16;
        }

        v40 = *(v31 + 16);

        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        if (v42)
        {
          v43 = *(v39 + 56) + 16 * v41;
          v44 = v24;
          v14 = *v43;
          v45 = *(v43 + 8);

          outlined destroy of ModelBundle(v44, type metadata accessor for PromptTemplate.ResolvedModelBundleID);

          return v14;
        }

LABEL_16:
        outlined destroy of ModelBundle(v24, type metadata accessor for PromptTemplate.ResolvedModelBundleID);

        return 0;
      }
    }

    else
    {
      v52 = v24;
      v35 = v50;
      (*(v50 + 32))(v17, v21, v11);
      (*(v35 + 16))(v14, v17, v11);
      type metadata accessor for _LoadedModelConfiguration();
      v36 = v54;
      v31 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v14, v53);
      v37 = *(v35 + 8);
      v37(v14, v11);
      v37(v17, v11);
      if (!v36)
      {
        v24 = v52;
        v33 = v48;
        v34 = v49;
        if (!v31)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v14 = v36;
      v24 = v52;
    }

    outlined destroy of ModelBundle(v24, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
  }

  return v14;
}

char *CatalogClient.loadPromptTemplate(resourceURI:templateID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CatalogClient.loadRawPromptTemplateFromModelCatalog(resourceURI:templateID:)(a1, a2, a3);
  if (v3)
  {
    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.prompt);
    v6 = v3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v3;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1A8E85000, v7, v8, "loadRawPromptTemplateFromModelCatalog failed with %@", v9, 0xCu);
      outlined destroy of [Regex2BNF.CharacterPredicate](v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC57DBF0](v10, -1, -1);
      MEMORY[0x1AC57DBF0](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t PromptTemplate.loadPromptTemplate(catalogClient:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v69 = a2;
  v3 = type metadata accessor for ResourceBundleQuery();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v20 = type metadata accessor for PromptTemplate.ModelBundleID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ModelBundle();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v72 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v73 = &v62 - v30;
  v76 = v2;
  PromptTemplate.modelBundleID.getter();
  v31 = (*(v21 + 88))(v24, v20);
  if (v31 == *MEMORY[0x1E69A14D0])
  {
    (*(v21 + 96))(v24, v20);
    v32 = v70;
    v33 = v24;
    v34 = v71;
    (*(v70 + 32))(v9, v33, v71);
    v35 = MEMORY[0x1AC57AE60](v34);
    v37 = v36;
    v38 = static InternalVariantArguments.arguments()();

    ModelBundle.init(identifier:internalArguments:)(v35, v37, v38, v13);
    if (!(*(v26 + 48))(v13, 1, v25))
    {

      (*(v32 + 8))(v9, v34);
      v39 = v13;
LABEL_7:
      v48 = v72;
      outlined init with take of ModelBundle(v39, v72, type metadata accessor for ModelBundle);
      goto LABEL_10;
    }

    v61 = v13;
LABEL_19:
    outlined destroy of [Regex2BNF.CharacterPredicate](v61, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    goto LABEL_20;
  }

  if (v31 == *MEMORY[0x1E69A14E0])
  {
    (*(v21 + 96))(v24, v20);
    v40 = v63;
    v41 = v24;
    v42 = v64;
    (*(v63 + 32))(v19, v41, v64);
    v43 = MEMORY[0x1AC57AE60](v42);
    v45 = v44;
    v46 = static InternalVariantArguments.arguments()();

    v47 = v65;
    ModelBundle.init(identifier:internalArguments:)(v43, v45, v46, v65);
    if (!(*(v26 + 48))(v47, 1, v25))
    {

      (*(v40 + 8))(v19, v42);
      v39 = v47;
      goto LABEL_7;
    }

    v61 = v47;
    goto LABEL_19;
  }

  if (v31 != *MEMORY[0x1E69A14D8])
  {
LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v21 + 96))(v24, v20);
  v50 = v66;
  v49 = v67;
  v51 = v68;
  (*(v67 + 32))(v66, v24, v68);
  v48 = v72;
  getModelBundle #2 (fromResourceBundleQuery:) in PromptTemplate.loadPromptTemplate(catalogClient:)(v50, v72);
  (*(v49 + 8))(v50, v51);
LABEL_10:
  v52 = v73;
  outlined init with take of ModelBundle(v48, v73, type metadata accessor for ModelBundle);
  v53 = v74[3];
  v54 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v53);
  v55 = PromptTemplate.templateID.getter();
  v56 = v75;
  (*(v54 + 8))(v52, v55, v57, v53, v54);
  if (v56)
  {
    outlined destroy of ModelBundle(v52, type metadata accessor for ModelBundle);
  }

  else
  {
    v60 = v58;

    if (v60 || PromptTemplate.loadRawPromptTemplateFromFallbackPromptTemplateCatalog()().value._object)
    {
      Prompt.init(template:)();
    }

    else
    {
      lazy protocol witness table accessor for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError();
      swift_allocError();
      swift_willThrow();
    }

    return outlined destroy of ModelBundle(v52, type metadata accessor for ModelBundle);
  }
}

uint64_t getModelBundle #2 (fromResourceBundleQuery:) in PromptTemplate.loadPromptTemplate(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResourceBundleQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v20 = *(v5 + 16);
  v20(v11, a1, v4, v17);
  v21 = static InternalVariantArguments.arguments()();
  (v20)(v8, v11, v4);
  ModelBundle.init(resourceBundleQuery:internalArguments:)(v8, v21, v15);
  (*(v5 + 8))(v11, v4);
  v22 = type metadata accessor for ModelBundle();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = (v23 + 56);
  if (v24(v15, 1, v22))
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    v26 = 1;
  }

  else
  {
    outlined init with take of ModelBundle(v15, v19, type metadata accessor for ModelBundle);
    v26 = 0;
  }

  (*v25)(v19, v26, 1, v22);
  if (v24(v19, 1, v22) != 1)
  {
    return outlined init with take of ModelBundle(v19, a2, type metadata accessor for ModelBundle);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static System.defaultInstructionPrompt.getter()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = type metadata accessor for SpecialToken();
  v12[4] = MEMORY[0x1E69C63B8];
  __swift_allocate_boxed_opaque_existential_1(v12);
  SpecialToken.init(identifier:overestimatedTokenCount:)();
  v6 = MEMORY[0x1E69C6388];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9400;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x1AC57B890](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t Prompt.transformToPrepareForTokenGenerationPromptConsideringPromptTemplate(catalogClient:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A8FC9400;
  *(v2 + 56) = &type metadata for Prompt.PromptTemplateTransformer;
  *(v2 + 64) = lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  outlined init with copy of GuidedGenerationTokenizer(a1, v3 + 16);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 56) = &type metadata for Prompt.SelfAttentionTransformer;
  *(inited + 64) = lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer();
  specialized Array.append<A>(contentsOf:)(inited);
  Prompt.transform(includeAttachments:customDataTransformers:)();
}

Swift::Int Prompt.ParseAsChatMessagesPromptParseError.Problem.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

uint64_t Prompt.parseAsChatMessagesPrompt()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CatalogClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v6[3] = v2;
  v6[4] = &protocol witness table for CatalogClient;
  v6[0] = CatalogClient.init()();
  Prompt.parseAsChatMessagesPrompt(catalogClient:)(v6, a1);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t appendToLastChatMessage #1 (_:) in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a3;
  v5 = type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.Component();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = a2[2];
  v15 = v14[2];
  if (!v15)
  {
    v24 = *(v5 + 20);
    (*(v10 + 16))(&v8[v24], v27, v9);
    (*(v10 + 56))(&v8[v24], 0, 1, v9);
    *v8 = 4;
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
    swift_willThrowTypedImpl();
    swift_allocError();
    return outlined init with take of ModelBundle(v8, v25, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
  }

  (*(v10 + 16))(v13, a1, v9);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[2] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    a2[2] = v14;
  }

  if (v15 > v14[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = *(type metadata accessor for ChatMessagePrompt() - 8);
  v18 = v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v15 - 1);
  v8 = ChatMessagePrompt.prompt.modify();
  v5 = Prompt.components.modify();
  v15 = v19;
  a2 = *v19;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *v15 = a2;
  if ((v20 & 1) == 0)
  {
LABEL_11:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
    *v15 = a2;
  }

  v22 = a2[2];
  v21 = a2[3];
  if (v22 >= v21 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, a2);
    *v15 = a2;
  }

  a2[2] = v22 + 1;
  (*(v10 + 32))(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v13, v9);
  (v5)(v28, 0);
  (v8)(v29, 0);
  return swift_endAccess();
}

uint64_t _s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF016onTurnEndSpecialC0L_7isStartySb_tAcDE05ParseghiaT5ErrorVYKF(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v98 = a5;
  v116 = a3;
  v97 = a1;
  v6 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChatMessageRole();
  v114 = *(v12 - 8);
  v115 = v12;
  v13 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChatMessagePrompt();
  v110 = *(v15 - 8);
  v111 = v15;
  v16 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v96 - v23;
  v24 = type metadata accessor for Prompt.Component.Value();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v103 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v96 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v96 - v34;
  v36 = type metadata accessor for SpecialToken();
  v121 = *(v36 - 8);
  v37 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v96 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v101 = &v96 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v105 = &v96 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v96 - v44;
  v112 = swift_projectBox();
  if (one-time initialization token for instructions != -1)
  {
    swift_once();
  }

  v119 = type metadata accessor for Prompt.SpecialToken(0);
  v46 = __swift_project_value_buffer(v119, static Prompt.SpecialToken.Chat.instructions);
  v120 = a2;
  Prompt.Component.value.getter();
  v118 = *(v25 + 88);
  v47 = v118(v35, v24);
  v117 = *MEMORY[0x1E69C62D8];
  v106 = v25;
  if (v47 == v117)
  {
    (*(v25 + 96))(v35, v24);
    v48 = v35;
    v49 = v36;
    (*(v121 + 32))(v45, v48, v36);
    if (SpecialToken.identifier.getter() == *v46 && v50 == v46[1])
    {

      (*(v121 + 8))(v45, v36);
LABEL_23:
      v62 = *MEMORY[0x1E69C63F8];
      v63 = v115;
      v64 = *(v114 + 104);
      v64(v108, v62, v115);
      Prompt.init(components:)();
      ChatMessagePrompt.init(role:prompt:)();
      v65 = v116;
      swift_beginAccess();
      v66 = *(v65 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v65 + 16) = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
        *(v65 + 16) = v66;
      }

      v69 = v66[2];
      v68 = v66[3];
      if (v69 >= v68 >> 1)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v66);
      }

      v66[2] = v69 + 1;
      (*(v110 + 32))(v66 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v69, v107, v111);
LABEL_57:
      *(v65 + 16) = v66;
      swift_endAccess();
      v93 = v113;
      v64(v113, v62, v63);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
      (*(*(v94 - 8) + 56))(v93, 0, 3, v94);
      v95 = v112;
      swift_beginAccess();
      return outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v93, v95);
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v51 = v121;
    (*(v121 + 8))(v45, v49);
    if (v61)
    {
      goto LABEL_23;
    }
  }

  else
  {
    (*(v25 + 8))(v35, v24);
    v49 = v36;
    v51 = v121;
  }

  if (one-time initialization token for user != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v119, static Prompt.SpecialToken.Chat.user);
  Prompt.Component.value.getter();
  v53 = v118(v32, v24);
  v54 = v106;
  if (v53 != v117)
  {
    (*(v106 + 8))(v32, v24);
    goto LABEL_15;
  }

  (*(v106 + 96))(v32, v24);
  (*(v51 + 32))(v105, v32, v49);
  if (SpecialToken.identifier.getter() == *v52 && v55 == v52[1])
  {

    (*(v51 + 8))(v105, v49);
LABEL_35:
    v62 = *MEMORY[0x1E69C63E0];
    v63 = v115;
    v64 = *(v114 + 104);
    v64(v108, v62, v115);
    Prompt.init(components:)();
    ChatMessagePrompt.init(role:prompt:)();
    v65 = v116;
    swift_beginAccess();
    v66 = *(v65 + 16);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + 16) = v66;
    if ((v76 & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
      *(v65 + 16) = v66;
    }

    v78 = v66[2];
    v77 = v66[3];
    if (v78 >= v77 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v66);
    }

    v66[2] = v78 + 1;
    (*(v110 + 32))(v66 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v78, v104, v111);
    goto LABEL_57;
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v51 + 8))(v105, v49);
  if (v75)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (one-time initialization token for response != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v119, static Prompt.SpecialToken.Chat.response);
  v57 = v102;
  Prompt.Component.value.getter();
  v58 = v118(v57, v24);
  v59 = v103;
  if (v58 != v117)
  {
    (*(v54 + 8))(v57, v24);
    goto LABEL_28;
  }

  (*(v54 + 96))(v57, v24);
  (*(v51 + 32))(v101, v57, v49);
  if (SpecialToken.identifier.getter() == *v56 && v60 == v56[1])
  {

    (*(v51 + 8))(v101, v49);
LABEL_46:
    v62 = *MEMORY[0x1E69C6400];
    v63 = v115;
    v64 = *(v114 + 104);
    v64(v108, v62, v115);
    Prompt.init(components:)();
    ChatMessagePrompt.init(role:prompt:)();
    v65 = v116;
    swift_beginAccess();
    v66 = *(v65 + 16);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + 16) = v66;
    if ((v86 & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
      *(v65 + 16) = v66;
    }

    v88 = v66[2];
    v87 = v66[3];
    if (v88 >= v87 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v66);
    }

    v66[2] = v88 + 1;
    (*(v110 + 32))(v66 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v88, v100, v111);
    goto LABEL_57;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v51 + 8))(v101, v49);
  if (v85)
  {
    goto LABEL_46;
  }

LABEL_28:
  if (one-time initialization token for tool != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v119, static Prompt.SpecialToken.Chat.tool);
  Prompt.Component.value.getter();
  v71 = v118(v59, v24);
  if (v71 == v117)
  {
    (*(v54 + 96))(v59, v24);
    v72 = v96;
    (*(v51 + 32))(v96, v59, v49);
    if (SpecialToken.identifier.getter() == *v70 && v73 == v70[1])
    {

      (*(v51 + 8))(v72, v49);
      v65 = v116;
      v74 = v114;
      v63 = v115;
LABEL_52:
      v62 = *MEMORY[0x1E69C63D8];
      v64 = *(v74 + 104);
      v64(v108, v62, v63);
      Prompt.init(components:)();
      ChatMessagePrompt.init(role:prompt:)();
      swift_beginAccess();
      v66 = *(v65 + 16);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *(v65 + 16) = v66;
      if ((v90 & 1) == 0)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
        *(v65 + 16) = v66;
      }

      v92 = v66[2];
      v91 = v66[3];
      if (v92 >= v91 >> 1)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1, v66);
      }

      v66[2] = v92 + 1;
      (*(v110 + 32))(v66 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v92, v99, v111);
      goto LABEL_57;
    }

    v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v51 + 8))(v72, v49);
    v65 = v116;
    v74 = v114;
    v63 = v115;
    if (v89)
    {
      goto LABEL_52;
    }
  }

  else
  {
    (*(v54 + 8))(v59, v24);
  }

  if (v97)
  {
    v79 = 0;
  }

  else
  {
    v79 = 2;
  }

  v80 = *(type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError(0) + 20);
  v81 = type metadata accessor for Prompt.Component();
  v82 = *(v81 - 8);
  v83 = v98;
  (*(v82 + 16))(&v98[v80], v120, v81);
  (*(v82 + 56))(&v83[v80], 0, 1, v81);
  *v83 = v79;
  _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
  return swift_willThrowTypedImpl();
}

unint64_t lazy protocol witness table accessor for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError()
{
  result = lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError;
  if (!lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError;
  if (!lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem()
{
  result = lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem;
  if (!lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem);
  }

  return result;
}

void type metadata completion function for Prompt.ParseAsChatMessagesPromptParseError()
{
  type metadata accessor for Prompt.Component?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Prompt.Component?()
{
  if (!lazy cache variable for type metadata for Prompt.Component?)
  {
    type metadata accessor for Prompt.Component();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Prompt.Component?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.PromptTemplateTransformer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.PromptTemplateTransformer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of ModelBundle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of PromptTemplate.ResolvedModelBundleID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModelBundle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static PromptTemplate.ResolvedModelBundleID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PromptTemplate.ResolvedModelBundleID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMd, &_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(a1, &v30 - v20, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(v33, &v21[v23], type metadata accessor for PromptTemplate.ResolvedModelBundleID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v21, v14, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v30;
      v24 = v31;
      v6 = v32;
      (*(v31 + 32))(v30, &v21[v23], v32);
      type metadata accessor for AssetBackedLLMBundle();
      _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, MEMORY[0x1E69B2460]);
      v26 = static ResourceBundleIdentifier.== infix(_:_:)();
      v27 = *(v24 + 8);
      v27(v25, v6);
      v28 = v14;
LABEL_9:
      v27(v28, v6);
      outlined destroy of ModelBundle(v21, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
      return v26 & 1;
    }

    (*(v31 + 8))(v14, v32);
  }

  else
  {
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v21, v17, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v21[v23], v6);
      type metadata accessor for LLMBundle();
      _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x1E69B2540]);
      v26 = static ResourceBundleIdentifier.== infix(_:_:)();
      v27 = *(v7 + 8);
      v27(v10, v6);
      v28 = v17;
      goto LABEL_9;
    }

    (*(v7 + 8))(v17, v6);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v21, &_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMd, &_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMR);
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static == infix(_:_:) in State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatMessageRole();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMd, &_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(a1, &v25 - v15, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(a2, &v16[v18], type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v16, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v16[v18], 3, v19) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v20(&v16[v18], 3, v19) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMd, &_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMR);
    v22 = 0;
    return v22 & 1;
  }

  if (!v21)
  {
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v16, v12, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
    if (!v20(&v16[v18], 3, v19))
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v22 = static ChatMessageRole.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      outlined destroy of ModelBundle(v16, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v20(&v16[v18], 3, v19) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  outlined destroy of ModelBundle(v16, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
  v22 = 1;
  return v22 & 1;
}

uint64_t outlined init with take of Prompt.Component?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)()
{
  type metadata accessor for (role: ChatMessageRole)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (role: ChatMessageRole)()
{
  if (!lazy cache variable for type metadata for (role: ChatMessageRole))
  {
    v0 = type metadata accessor for ChatMessageRole();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (role: ChatMessageRole));
    }
  }
}

void type metadata completion function for PromptTemplate.ResolvedModelBundleID()
{
  type metadata accessor for ResourceBundleIdentifier<LLMBundle>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ResourceBundleIdentifier<AssetBackedLLMBundle>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for ResourceBundleIdentifier<LLMBundle>()
{
  if (!lazy cache variable for type metadata for ResourceBundleIdentifier<LLMBundle>)
  {
    type metadata accessor for LLMBundle();
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x1E69B2540]);
    v0 = type metadata accessor for ResourceBundleIdentifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ResourceBundleIdentifier<LLMBundle>);
    }
  }
}

void type metadata accessor for ResourceBundleIdentifier<AssetBackedLLMBundle>()
{
  if (!lazy cache variable for type metadata for ResourceBundleIdentifier<AssetBackedLLMBundle>)
  {
    type metadata accessor for AssetBackedLLMBundle();
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, MEMORY[0x1E69B2460]);
    v0 = type metadata accessor for ResourceBundleIdentifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ResourceBundleIdentifier<AssetBackedLLMBundle>);
    }
  }
}

char *functionDefinition(_:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecursiveSchema();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for JSONSchema();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;
  Tool.Function.parameters.getter();
  GenerationSchema.recursiveSchema()();
  (*(v3 + 8))(v6, v2);
  v16 = v11;
  RecursiveSchema.jsonSchema()();
  (*(v8 + 8))(v11, v7);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v17 = v25[1];
  v18 = PythonesqueJSONDumpsEncoder.encodeSchema(_:)(v15, encoder, *algn_1EB372CD8);
  if (!v17)
  {
    v20 = v19;
    v26 = 0;
    v27 = 0xE000000000000000;
    v21 = v18;
    _StringGuts.grow(_:)(87);
    MEMORY[0x1AC57C120](0xD000000000000017, 0x80000001A8FDA920);
    v22 = Tool.Function.name.getter();
    MEMORY[0x1AC57C120](v22);

    MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FDA940);
    v23 = Tool.Function.description.getter();
    MEMORY[0x1AC57C120](v23);

    MEMORY[0x1AC57C120](0xD000000000000011, 0x80000001A8FDA960);
    MEMORY[0x1AC57C120](v21, v20);

    MEMORY[0x1AC57C120](0xD000000000000016, 0x80000001A8FDA980);
    v16 = v26;
  }

  (*(v12 + 8))(v15, v28);
  return v16;
}

uint64_t one-time initialization function for encoder()
{
  result = specialized PythonesqueJSONDumpsEncoder.init()();
  encoder = result;
  *algn_1EB372CD8 = v1;
  return result;
}

void specialized ToolCallingFormatV5.render(tools:)(uint64_t a1)
{
  v78 = a1;
  v70 = type metadata accessor for Tool.Function();
  v92 = *(v70 - 8);
  v1 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tool.Type();
  v91 = *(v4 - 8);
  v5 = *(v91 + 64);
  v6 = (MEMORY[0x1EEE9AC00])(v4);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - v8;
  v10 = type metadata accessor for Tool();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x1EEE9AC00])(v10);
  v64 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v75 = (&v58 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = (MEMORY[0x1EEE9AC00])(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  v27 = 0;
  v79 = (v11 + 16);
  v88 = (v18 + 48);
  v89 = (v18 + 56);
  v29 = v28;
  v84 = (v91 + 88);
  v85 = (v11 + 32);
  v93 = 0x206D65747379730ALL;
  v94 = 0xEF203A736C6F6F74;
  v76 = v11;
  v90 = (v11 + 8);
  v30 = v16;
  v31 = *(v78 + 16);
  v83 = *MEMORY[0x1E69A0DD0];
  v74 = *MEMORY[0x1E69A0DB8];
  v67 = *MEMORY[0x1E69A0DC8];
  v66 = *MEMORY[0x1E69A0DC0];
  v69 = (v91 + 8);
  v68 = "ing a raw prompt template";
  v65 = "{type: image_generator}";
  v72 = (v91 + 96);
  v71 = (v92 + 32);
  v73 = (v92 + 8);
  v80 = v31 - 1;
  v24.n128_u64[0] = 136315138;
  v62 = v24;
  v81 = v31;
  v82 = v3;
  v77 = v17;
  v87 = v28;
  while (1)
  {
    if (v27 == v31)
    {
      v32 = 1;
      v92 = v31;
      goto LABEL_8;
    }

    if (v27 >= v31)
    {
      break;
    }

    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_30;
    }

    v35 = v75;
    v34 = v76;
    v36 = v78 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27;
    v37 = *(v17 + 48);
    *v75 = v27;
    (*(v34 + 16))(&v35[v37], v36, v10);
    v38 = v35;
    v29 = v87;
    outlined init with take of Locale?(v38, v87, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMR);
    v32 = 0;
    v92 = v33;
LABEL_8:
    (*v89)(v29, v32, 1, v17);
    outlined init with take of Locale?(v29, v26, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMR);
    if ((*v88)(v26, 1, v17) == 1)
    {
      return;
    }

    v91 = *v26;
    (*v85)(v30, &v26[*(v17 + 48)], v10);
    Tool.type.getter();
    v39 = (*v84)(v9, v4);
    if (v39 == v83)
    {
      (*v72)(v9, v4);
      v40 = v70;
      (*v71)(v3, v9, v70);
      v41 = v86;
      v42 = functionDefinition(_:)(v3);
      if (v41)
      {
        (*v73)(v3, v40);
        (*v90)(v30, v10);

        return;
      }

      v86 = 0;
      MEMORY[0x1AC57C120](v42);

      (*v73)(v3, v40);
      v17 = v77;
      v29 = v87;
      v43 = v91;
    }

    else
    {
      if (v39 == v74)
      {
        MEMORY[0x1AC57C120](0xD00000000000001BLL, v68 | 0x8000000000000000);
        (*v69)(v9, v4);
        v43 = v91;
        goto LABEL_25;
      }

      if (v39 == v67)
      {
        v44 = 0xD000000000000013;
        v45 = v65 | 0x8000000000000000;
LABEL_18:
        MEMORY[0x1AC57C120](v44, v45);
        v43 = v91;
        goto LABEL_25;
      }

      if (v39 == v66)
      {
        v45 = v68 | 0x8000000000000000;
        v44 = 0xD00000000000001BLL;
        goto LABEL_18;
      }

      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.prompt);
      v47 = v64;
      (*v79)(v64, v30, v10);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v58 = v50;
        v61 = swift_slowAlloc();
        v95 = v61;
        *v50 = v62.n128_u32[0];
        v60 = v49;
        v59 = v48;
        Tool.type.getter();
        v51 = String.init<A>(describing:)();
        v53 = v52;
        (*v90)(v47, v10);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v95);
        v29 = v87;

        v55 = v58;
        *(v58 + 1) = v54;
        v56 = v59;
        _os_log_impl(&dword_1A8E85000, v59, v60, "Unknown tool type: %s\nThis tool was not rendered into the prompt!", v55, 0xCu);
        v57 = v61;
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x1AC57DBF0](v57, -1, -1);
        MEMORY[0x1AC57DBF0](v55, -1, -1);
      }

      else
      {

        (*v90)(v47, v10);
      }

      v43 = v91;
      (*v69)(v9, v4);
      v17 = v77;
    }

LABEL_25:
    if (v43 < v80)
    {
      MEMORY[0x1AC57C120](10, 0xE100000000000000);
    }

    (*v90)(v30, v10);
    v31 = v81;
    v3 = v82;
    v27 = v92;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

unint64_t specialized ToolCallingFormatV4.render(functionCalls:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      _StringGuts.grow(_:)(31);

      MEMORY[0x1AC57C120](v5, v4);

      MEMORY[0x1AC57C120](0xD000000000000010, 0x80000001A8FD90A0);
      MEMORY[0x1AC57C120](v7, v6);

      MEMORY[0x1AC57C120](125, 0xE100000000000000);

      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = 0x3A22656D616E227BLL;
      *(v10 + 40) = 0xEA00000000002220;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  MEMORY[0x1AC57C120](v11, v13);

  MEMORY[0x1AC57C120](93, 0xE100000000000000);

  MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD9080);

  return 0xD000000000000020;
}

uint64_t specialized ToolCallingConvention.render(toolCalls:)(uint64_t a1, uint64_t (*a2)(char *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 72);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[32 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v5;
      *(v11 + 6) = v8;
      *(v11 + 7) = v7;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = a2(v4);

  return v12;
}

unint64_t specialized ToolCallingFormatV4.render(tools:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Tool.Function();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Tool.Type();
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v84 = type metadata accessor for Tool();
  v14 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v53 - v19;
  v68 = 0xD000000000000011;
  v85 = 0xD000000000000011;
  v86 = 0x80000001A8FDA9D0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v63 = v16;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v81 = v22;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v80 = (v8 + 88);
    v24 = (v21 - 8);
    v71 = (v8 + 8);
    v79 = *MEMORY[0x1E69A0DD0];
    v75 = *MEMORY[0x1E69A0DB8];
    v69 = *MEMORY[0x1E69A0DB0];
    v67 = *MEMORY[0x1E69A0DC8];
    v65 = *MEMORY[0x1E69A0DC0];
    v70 = "ing a raw prompt template";
    v64 = "{type: image_generator}";
    v66 = "\nAvailable tools:";
    v72 = (v5 + 32);
    v73 = (v8 + 96);
    v74 = (v5 + 8);
    v82 = v21;
    v78 = *(v21 + 56);
    v18.n128_u64[0] = 136315138;
    v61 = v18;
    v25 = v77;
    v22(v77, v23, v84);
    while (1)
    {
      MEMORY[0x1AC57C120](10, 0xE100000000000000);
      Tool.type.getter();
      v28 = (*v80)(v13, v83);
      if (v28 != v79)
      {
        break;
      }

      (*v73)(v13, v83);
      v29 = v76;
      (*v72)(v76, v13, v4);
      v30 = functionDefinition(_:)(v29);
      if (v2)
      {
        (*v74)(v29, v4);
        (*v24)(v25, v84);

        return v68;
      }

      MEMORY[0x1AC57C120](v30);

      v31 = v29;
      v32 = v84;
      v25 = v77;
      (*v74)(v31, v4);
      (*v24)(v25, v32);
      v2 = 0;
LABEL_5:
      v23 += v78;
      if (!--v20)
      {
        return v85;
      }

      v81(v25, v23, v84);
    }

    if (v28 == v75)
    {
      v33 = 0xD00000000000001BLL;
      v34 = v70;
    }

    else
    {
      if (v28 != v69)
      {
        if (v28 == v67)
        {
          v26 = 0xD000000000000013;
          v27 = v64;
LABEL_4:
          MEMORY[0x1AC57C120](v26, v27 | 0x8000000000000000);
          (*v24)(v25, v84);
          goto LABEL_5;
        }

        if (v28 == v65)
        {
          v26 = 0xD00000000000001BLL;
          v27 = v70;
          goto LABEL_4;
        }

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Log.prompt);
        v36 = v63;
        v81(v63, v25, v84);
        v37 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v60))
        {
          v38 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v87 = v56;
          *v38 = v61.n128_u32[0];
          v59 = v23;
          v58 = v20;
          v55 = v37;
          v39 = v63;
          Tool.type.getter();
          v40 = String.init<A>(describing:)();
          v41 = v4;
          v42 = v2;
          v44 = v43;
          v57 = *v24;
          v57(v39, v84);
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v44, &v87);
          v2 = v42;
          v4 = v41;
          v20 = v58;
          v23 = v59;

          v46 = v38;
          v54 = v38;
          *(v38 + 4) = v45;
          v47 = v55;
          _os_log_impl(&dword_1A8E85000, v55, v60, "Unknown tool type: %s\nThis tool was not rendered into the prompt!", v46, 0xCu);
          v48 = v56;
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x1AC57DBF0](v48, -1, -1);
          MEMORY[0x1AC57DBF0](v54, -1, -1);

          v57(v25, v84);
        }

        else
        {

          v49 = *v24;
          v50 = v36;
          v51 = v84;
          (*v24)(v50, v84);
          v49(v25, v51);
        }

        goto LABEL_15;
      }

      v33 = 0xD00000000000001ALL;
      v34 = v66;
    }

    MEMORY[0x1AC57C120](v33, v34 | 0x8000000000000000);
    (*v24)(v25, v84);
LABEL_15:
    (*v71)(v13, v83);
    goto LABEL_5;
  }

  return v68;
}

uint64_t ToolCallParser.FunctionDelta.toolCallID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToolCallParser.FunctionDelta.toolCallID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ToolCallParser.FunctionDelta.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToolCallParser.FunctionDelta.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolCallParser.FunctionDelta.arguments.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ToolCallParser.FunctionDelta.arguments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static ToolCallParser.FunctionDelta.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ToolCallParser.FunctionDelta(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

char *ToolCallParserV4.consume(string:)(uint64_t countAndFlagsBits, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (*v3 & 1) == 0 && (specialized Sequence<>.starts<A>(with:)() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = specialized Sequence<>.starts<A>(with:)();
  v120 = v10;
  v121 = v6;
  if (v12)
  {
    v13 = *(v3 + 32);

    *(v3 + 24) = 0xD000000000000012;
    *(v3 + 32) = 0x80000001A8FDAA90;
    *v3 = 1;
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v15 = v7;
    v17 = v16;
    v126 = v15;
    (*(v15 + 8))(v10, v6);
    v18 = *(v3 + 16);

    *(v3 + 8) = v14;
    *(v3 + 16) = v17;

    v19 = String.count.getter();
    v20 = specialized Collection.dropFirst(_:)(v19, countAndFlagsBits, a2);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    countAndFlagsBits = MEMORY[0x1AC57C040](v20, v22, v24, v26);
    a2 = v27;

    if (one-time initialization token for tools != -1)
    {
      goto LABEL_161;
    }

    goto LABEL_8;
  }

  while (2)
  {
    v33._countAndFlagsBits = 0xD000000000000010;
    v33._object = 0x80000001A8FDAAB0;
    v122 = String.hasSuffix(_:)(v33);
    v145 = 0;
    v146 = 0xE000000000000000;
    v34 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v34 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v144[0] = countAndFlagsBits;
    v144[1] = a2;
    v144[2] = 0;
    v144[3] = v34;
    v36 = String.Iterator.next()();
    if (v36.value._object)
    {
      countAndFlagsBits = v36.value._countAndFlagsBits;
      object = v36.value._object;
      v119 = (v7 + 8);
      v123 = MEMORY[0x1E69E7CC0];
      v35.value._countAndFlagsBits = 136315138;
      v118 = v35;
      v124 = xmmword_1A8FD1F70;
      while (1)
      {
        v38 = *(v3 + 192);
        if (*(v3 + 48))
        {
          v39 = 1;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }

        if (*(v3 + 64))
        {
          goto LABEL_25;
        }

        if (countAndFlagsBits == 123 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

LABEL_53:
        v39 = 0;
        if (!*(v3 + 64))
        {
          goto LABEL_117;
        }

LABEL_54:
        if (*(v3 + 136) != 1)
        {
          if (*(v3 + 96))
          {
            if (*(v3 + 137) == 1)
            {
              if (*(v3 + 138))
              {
                MEMORY[0x1AC57C110](countAndFlagsBits, object);
                *(v3 + 138) = 0;
              }

              else if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                *(v3 + 136) = 1;
              }

              else
              {
                MEMORY[0x1AC57C110](countAndFlagsBits, object);
                if (countAndFlagsBits == 92 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  *(v3 + 138) = 1;
                }
              }
            }

            else if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              *(v3 + 137) = 1;
            }
          }

          else
          {
            LODWORD(v125) = v39;
            LODWORD(v126) = v38;
            v45 = *(v3 + 112);
            v132._countAndFlagsBits = *(v3 + 104);
            v132._object = v45;

            MEMORY[0x1AC57C120](countAndFlagsBits, object);
            v47 = v132._object;
            v46 = v132._countAndFlagsBits;
            v48 = *(v3 + 80);
            v49 = *(v3 + 88);
            v50 = String.hasPrefix(_:)(v132);

            if (!v50)
            {

              v46 = 0;
              v47 = 0xE000000000000000;
            }

            *(v3 + 104) = v46;
            *(v3 + 112) = v47;
            if (v46 == v48 && v47 == v49)
            {
              v51 = 1;
            }

            else
            {
              v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            LOBYTE(v38) = v126;
            v39 = v125;
            *(v3 + 96) = v51 & 1;
          }

          goto LABEL_117;
        }

        if ((v38 & 1) == 0)
        {
          if ((*(v3 + 160) & 1) == 0)
          {
            LODWORD(v125) = v39;
            LODWORD(v126) = v38;
            v52 = *(v3 + 176);
            v132._countAndFlagsBits = *(v3 + 168);
            v132._object = v52;

            MEMORY[0x1AC57C120](countAndFlagsBits, object);
            v54 = v132._object;
            v53 = v132._countAndFlagsBits;
            v55 = *(v3 + 144);
            v56 = *(v3 + 152);
            v57 = String.hasPrefix(_:)(v132);

            if (!v57)
            {

              v53 = 0;
              v54 = 0xE000000000000000;
            }

            *(v3 + 168) = v53;
            *(v3 + 176) = v54;
            if (v53 == v55 && v54 == v56)
            {
              v58 = 1;
            }

            else
            {
              v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            LOBYTE(v38) = v126;
            v39 = v125;
            *(v3 + 160) = v58 & 1;
            goto LABEL_117;
          }

          if (!*(v3 + 208))
          {
            if ((countAndFlagsBits != 123 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_117;
            }

            *(v3 + 200) = v124;
          }

          MEMORY[0x1AC57C110](countAndFlagsBits, object);
          if (*(v3 + 216) == 1)
          {
            if (*(v3 + 217))
            {
              *(v3 + 217) = 0;
            }

            else
            {
              if (countAndFlagsBits == 92 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                *(v3 + 217) = 1;
              }

              if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                *(v3 + 216) = 0;
              }
            }
          }

          else
          {
            if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              *(v3 + 216) = 1;
            }

            if (countAndFlagsBits == 123 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v59 = *(v3 + 184);
              v41 = __OFADD__(v59, 1);
              v60 = v59 + 1;
              if (v41)
              {
                goto LABEL_159;
              }

              *(v3 + 184) = v60;
            }

            if (countAndFlagsBits == 125 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v61 = *(v3 + 184);
              v41 = __OFSUB__(v61, 1);
              v62 = v61 - 1;
              if (v41)
              {
                goto LABEL_160;
              }

              *(v3 + 184) = v62;
              *(v3 + 192) = v62 == 0;
            }
          }
        }

LABEL_117:
        MEMORY[0x1AC57C110](countAndFlagsBits, object);
        a2 = *(v3 + 16);
        if (!a2 || (*(v3 + 96) & 1) == 0 || *(v3 + 160) != 1 || !*(v3 + 208))
        {
          goto LABEL_121;
        }

        v126 = *(v3 + 8);
        v64 = v38;
        v66 = *(v3 + 120);
        v65 = *(v3 + 128);

        if ((v64 & 1) == 0)
        {
          MEMORY[0x1AC57C110](countAndFlagsBits, object);
        }

        if (v39)
        {
          v67 = v146;
          v125 = v145;
          swift_bridgeObjectRetain_n();

          v68 = v123;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
          }

          v69 = v66;
          v71 = *(v68 + 2);
          v70 = *(v68 + 3);
          v72 = v126;
          if (v71 >= v70 >> 1)
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v68);
          }

          *(v68 + 2) = v71 + 1;
          v123 = v68;
          v73 = &v68[48 * v71];
          *(v73 + 4) = v72;
          *(v73 + 5) = a2;
          *(v73 + 6) = v69;
          *(v73 + 7) = v65;
          *(v73 + 8) = v125;
          *(v73 + 9) = v67;
          if (one-time initialization token for tools != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for Logger();
          __swift_project_value_buffer(v74, static Log.tools);

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v117 = v75;
            v78 = v77;
            v79 = swift_slowAlloc();
            v127 = v79;
            *v78 = v118.value._countAndFlagsBits;
            v132._countAndFlagsBits = v72;
            v132._object = a2;
            *&v133 = v69;
            *(&v133 + 1) = v65;
            *&v134 = v125;
            *(&v134 + 1) = v67;
            v80 = String.init<A>(describing:)();
            v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v127);

            *(v78 + 4) = v82;
            v83 = v117;
            _os_log_impl(&dword_1A8E85000, v117, v76, "Parsed function delta: %s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v79);
            MEMORY[0x1AC57DBF0](v79, -1, -1);
            MEMORY[0x1AC57DBF0](v78, -1, -1);
          }

          else
          {
          }

          v84 = v120;
          v145 = 0;
          v146 = 0xE000000000000000;
          UUID.init()();
          v85 = UUID.uuidString.getter();
          v87 = v86;
          (*v119)(v84, v121);

          *(v3 + 8) = v85;
          *(v3 + 16) = v87;
          v88 = *(v3 + 168);
          v89 = *(v3 + 200);
          v141 = *(v3 + 184);
          v142 = v89;
          v143 = *(v3 + 216);
          v90 = *(v3 + 120);
          v136 = *(v3 + 104);
          v137 = v90;
          v138 = *(v3 + 136);
          v139 = *(v3 + 152);
          v140 = v88;
          v91 = *(v3 + 56);
          v132 = *(v3 + 40);
          v133 = v91;
          v92 = *(v3 + 88);
          v134 = *(v3 + 72);
          v135 = v92;
          outlined destroy of ToolCallParserV4.CallParser(&v132);
          *(v3 + 40) = 0;
          *(v3 + 48) = 0;
          *(v3 + 49) = v127;
          *(v3 + 52) = *(&v127 + 3);
          *(v3 + 56) = 0;
          *(v3 + 64) = 0;
          *(v3 + 72) = 0;
          *(v3 + 74) = v130;
          *(v3 + 78) = v131;
          *(v3 + 80) = 0x203A22656D616E22;
          *(v3 + 88) = 0xE800000000000000;
          *(v3 + 96) = 0;
          *(v3 + 104) = 0;
          *(v3 + 112) = 0xE000000000000000;
          *(v3 + 120) = 0;
          *(v3 + 128) = 0xE000000000000000;
          *(v3 + 136) = 0;
          *(v3 + 138) = 0;
          *(v3 + 139) = v128;
          *(v3 + 143) = v129;
          strcpy((v3 + 144), "arguments: ");
          *(v3 + 158) = -4864;
          *(v3 + 160) = 0;
          *(v3 + 168) = 0;
          *(v3 + 176) = 0xE000000000000000;
          *(v3 + 184) = 0;
          *(v3 + 192) = 0;
          *(v3 + 200) = 0;
          *(v3 + 208) = 0;
          *(v3 + 216) = 0;
        }

        else
        {
LABEL_121:
        }

        v63 = String.Iterator.next()();
        countAndFlagsBits = v63.value._countAndFlagsBits;
        object = v63.value._object;
        if (!v63.value._object)
        {
          goto LABEL_139;
        }
      }

      *(v3 + 56) = v124;
LABEL_25:
      MEMORY[0x1AC57C110](countAndFlagsBits, object);
      if (*(v3 + 72) == 1)
      {
        if (*(v3 + 73))
        {
          v39 = 0;
          *(v3 + 73) = 0;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }

        if (countAndFlagsBits == 92 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          *(v3 + 73) = 1;
        }

        if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v39 = 0;
          *(v3 + 72) = 0;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          *(v3 + 72) = 1;
        }

        if (countAndFlagsBits == 123 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v40 = *(v3 + 40);
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            swift_once();
LABEL_8:
            v28 = type metadata accessor for Logger();
            __swift_project_value_buffer(v28, static Log.tools);
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&dword_1A8E85000, v29, v30, "Started tool calling", v31, 2u);
              MEMORY[0x1AC57DBF0](v31, -1, -1);
            }

            v7 = v126;
            continue;
          }

          *(v3 + 40) = v42;
        }

        if (countAndFlagsBits == 125 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v43 = *(v3 + 40);
          v41 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v41)
          {
            goto LABEL_158;
          }

          *(v3 + 40) = v44;
          v39 = v44 == 0;
          *(v3 + 48) = v39;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }
      }

      goto LABEL_53;
    }

    break;
  }

  v123 = MEMORY[0x1E69E7CC0];
LABEL_139:

  v93 = *(v3 + 16);
  if (v93)
  {
    v32 = v123;
    if ((*(v3 + 96) & 1) == 0)
    {
      goto LABEL_154;
    }

    v95 = v145;
    v94 = v146;
    v96 = HIBYTE(v146) & 0xF;
    if ((v146 & 0x2000000000000000) == 0)
    {
      v96 = v145 & 0xFFFFFFFFFFFFLL;
    }

    if (v96)
    {
      v126 = *(v3 + 8);
      v97 = *(v3 + 120);
      v98 = *(v3 + 128);
      v99 = one-time initialization token for tools;

      if (v99 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Log.tools);

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();

      LODWORD(v121) = v102;
      v103 = os_log_type_enabled(v101, v102);
      v125 = v97;
      if (v103)
      {
        v104 = swift_slowAlloc();
        *&v124 = v95;
        v105 = v104;
        v106 = swift_slowAlloc();
        v144[0] = v106;
        *v105 = 136315138;
        v132._countAndFlagsBits = v126;
        v132._object = v93;
        *&v133 = v97;
        *(&v133 + 1) = v98;
        *&v134 = v124;
        *(&v134 + 1) = v94;

        v107 = String.init<A>(describing:)();
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v144);

        *(v105 + 4) = v109;
        _os_log_impl(&dword_1A8E85000, v101, v121, "Parsed function delta: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        v32 = v123;
        MEMORY[0x1AC57DBF0](v106, -1, -1);
        v110 = v105;
        v95 = v124;
        MEMORY[0x1AC57DBF0](v110, -1, -1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v112 = *(v32 + 2);
      v111 = *(v32 + 3);
      if (v112 >= v111 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v32);
      }

      *(v32 + 2) = v112 + 1;
      v113 = &v32[48 * v112];
      v114 = v125;
      *(v113 + 4) = v126;
      *(v113 + 5) = v93;
      *(v113 + 6) = v114;
      *(v113 + 7) = v98;
      *(v113 + 8) = v95;
      *(v113 + 9) = v94;
    }

    else
    {
LABEL_154:
    }
  }

  else
  {

    v32 = v123;
  }

  $defer #1 () in ToolCallParserV4.consume(string:)(v122, v3);
  return v32;
}

__n128 __swift_memcpy218_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void $defer #1 () in ToolCallParserV4.consume(string:)(char a1, uint64_t a2)
{
  if (a1)
  {
    *a2 = 0;
    v2 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;

    if (one-time initialization token for tools != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.tools);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A8E85000, oslog, v4, "Finished tool calling", v5, 2u);
      MEMORY[0x1AC57DBF0](v5, -1, -1);
    }
  }
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.CallParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.CallParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.ArgumentsParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.ArgumentsParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.NameParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.NameParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.ObjectParser(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.ObjectParser(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.QuotedStringParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.QuotedStringParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1CABAD0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1AC57D170](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

void sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sentencepiece::util::Status::Status(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A8F801DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::util::StatusBuilder::~StatusBuilder(std::locale *this)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  this[1].__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v3 - 24) + 8) = v2[3];
  this[2].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[12].__locale_) < 0)
  {
    operator delete(this[10].__locale_);
  }

  this[2].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 3);
  std::ostream::~ostream();
  MEMORY[0x1AC57D130](&this[15]);
}

void sentencepiece::ModelInterface::model_proto(sentencepiece::ModelInterface *this)
{
  v1 = *(this + 1);
  {
    v8 = 1;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_interface.cc", 18);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x1AC57D010](v4, 103);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    sentencepiece::error::Die::~Die(&v8);
    __break(1u);
  }
}

void sentencepiece::ModelInterface::~ModelInterface(sentencepiece::ModelInterface *this)
{
  *this = &unk_1F1CAB9B0;
  sentencepiece::util::Status::~Status((this + 96));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_1F1CABAD0;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x1AC57D170](v2, 0x1000C8052888210);
    *(this + 10) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_1F1CABAD0;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x1AC57D170](v3, 0x1000C8052888210);
    *(this + 6) = 0;
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](this + 16, v4);
  }
}

const char *sentencepiece::ModelInterface::unk_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 32))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 32))(*(this + 1));
  }

  else
  {
    return "<unk>";
  }
}

const char *sentencepiece::ModelInterface::bos_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 40))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 40))(*(this + 1));
  }

  else
  {
    return "<s>";
  }
}

const char *sentencepiece::ModelInterface::eos_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 48))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 48))(*(this + 1));
  }

  else
  {
    return "</s>";
  }
}

const char *sentencepiece::ModelInterface::pad_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 56))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 56))(*(this + 1));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sentencepiece::ModelInterface::PieceToId(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sentencepiece::ModelInterface::LookupPredictive(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sentencepiece::util::Status::~Status(&__p);
  if (v12)
  {
    sentencepiece::util::Status::Status(a6, (a1 + 96));
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(a5, v20);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(a5, v20);
          v19 = v18 + 1;
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sentencepiece::util::Status::Status(a6, (a1 + 96));
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_1A8F80A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::anonymous namespace::LookupPredictiveInternal(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](a6, a5);
  v12 = Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(a6, v12);
}

void sub_1A8F80AF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupPredictive(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sentencepiece::util::Status::~Status(&__p);
  if (v12)
  {
    sentencepiece::util::Status::Status(a6, (a1 + 96));
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sentencepiece::util::Status::Status(a6, (a1 + 96));
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_1A8F80D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupCommonPrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sentencepiece::util::Status::~Status(&v23);
  if (v10)
  {
    sentencepiece::util::Status::Status(a5, (a1 + 96));
  }

  else
  {
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 16))
        {
          v16 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(a4, __p);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(a4, __p);
          v16 = v15 + 1;
        }

        *(a4 + 8) = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        absl::StrFormat<unsigned char>("<0x%02X>", &v25, __p);
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16))
        {
          v20 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            std::string::__init_copy_ctor_external(*(a4 + 8), __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = (v18 + 24);
          *(a4 + 8) = v18 + 24;
        }

        *(a4 + 8) = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sentencepiece::util::Status::Status(a5, (a1 + 96));
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_1A8F80FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::anonymous namespace::LookupCommonPrefixInternal(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(a4, v13);
}

void sub_1A8F81170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupCommonPrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sentencepiece::util::Status::~Status(&v41);
  if (v10)
  {
    sentencepiece::util::Status::Status(a5, (a1 + 96));
  }

  else
  {
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        absl::StrFormat<unsigned char>("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sentencepiece::util::Status::Status(a5, (a1 + 96));
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_1A8F81534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::InitializePieces(sentencepiece::ModelInterface *this)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = &v52;
  v48 = &v49;
  v49 = 0;
  *(this + 22) = -1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  LOBYTE(v54) = 0;
  std::vector<BOOL>::vector(&__p, 256);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(this + 22) == -1)
    {
      sentencepiece::util::Status::Status(&v54, 13, "unk is not defined.", 19);
      sentencepiece::util::Status::operator=(this + 12, &v54);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      if (v24[248] != 1 || (*&v54 = __p, DWORD2(v54) = 0, std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(&v54, v45, &v42), v42.__r_.__value_.__l.__data_ == __p + 8 * (v45 >> 6)) && LODWORD(v42.__r_.__value_.__r.__words[1]) == (v45 & 0x3F))
      {
        if (!v53 || (sentencepiece::BuildTrie(this + 24, &v51, &v54), sentencepiece::util::Status::operator=(this + 12, &v54), sentencepiece::util::Status::~Status(&v54), (*(*this + 16))(&v54, this), v25 = v54, sentencepiece::util::Status::~Status(&v54), !v25))
        {
          if (!v50 || (sentencepiece::BuildTrie(this + 56, &v48, &v54), sentencepiece::util::Status::operator=(this + 12, &v54), sentencepiece::util::Status::~Status(&v54), (*(*this + 16))(&v54, this), v26 = v54, sentencepiece::util::Status::~Status(&v54), !v26))
          {
            absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::set<std::string_view> &>();
          }
        }

        goto LABEL_69;
      }

      sentencepiece::util::Status::operator=(this + 12, &v54);
    }

LABEL_68:
    sentencepiece::util::Status::~Status(&v54);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sentencepiece::util::Status::Status(&v54, 13, "piece must not be empty.", 24);
        sentencepiece::util::Status::operator=(this + 12, &v54);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = &v51;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v54 = v7;
    *(&v54 + 1) = v8;
    LODWORD(v55) = v4;
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,int> const&>(v13, &v54);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v54 = v17;
      *(&v54 + 1) = v18;
      std::__tree<std::string_view>::__emplace_unique_key_args<std::string_view,std::string_view>(&v46, &v54);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      if ((v19[248] & 1) == 0)
      {
        v34 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v36 = *&v35->__r_.__value_.__l.__data_;
        v55 = v35->__r_.__value_.__r.__words[2];
        v54 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

LABEL_75:
        v41 = strlen(v37);
        sentencepiece::util::Status::Status(&v43, 13, v37, v41);
        sentencepiece::util::Status::operator=(this + 12, &v43);
        sentencepiece::util::Status::~Status(&v43);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v42.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sentencepiece::PieceToByte(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        v38 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v39 = std::string::append(&v42, " is invalid.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v55 = v39->__r_.__value_.__r.__words[2];
        v54 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(this + 22) & 0x80000000) == 0)
      {
        sentencepiece::util::Status::Status(&v54, 13, "unk is already defined.", 23);
        sentencepiece::util::Status::operator=(this + 12, &v54);
        goto LABEL_68;
      }

      *(this + 22) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v54;
  std::string::basic_string[abi:ne200100](&v54, v28 + 20);
  if (v55 < 0)
  {
    v29 = v54;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v55 >= 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54;
  }

  v32 = strlen(v31);
  sentencepiece::util::Status::Status(&v42, 13, v31, v32);
  sentencepiece::util::Status::operator=(this + 12, &v42);
  sentencepiece::util::Status::~Status(&v42);
  if (SHIBYTE(v55) < 0)
  {
    v33 = v54;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v46, v47[0]);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v48, v49);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v51, v52);
}

void sub_1A8F81BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sentencepiece::util::Status::~Status(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a22, a23);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::PieceToByte(void *__src, size_t __len)
{
  {
    sentencepiece::PieceToByte(std::string_view)::$_0::operator()();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = sentencepiece::PieceToByte(std::string_view)::kMap;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::find<std::string>(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sentencepiece::BuildTrie@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        Darts::DoubleArrayImpl<void,void,int,void>::build(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sentencepiece::util::Status::Status(a3, 13, "no pieces are loaded.", 21);
}

void sub_1A8F82294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::MemoryMappableString(sentencepiece::ModelInterface *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(this + 22);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(this + 23);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sentencepiece::normalizer::PrefixMatcher::MemoryMappableString(*(this + 2), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sentencepiece::mmap_util::Padding(a2);
  v19 = *(this + 4);
  v18 = *(this + 5);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sentencepiece::mmap_util::Padding(a2);
  v26 = this + 64;
  v24 = *(this + 8);
  v25 = *(v26 + 1);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1A8F82624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SplitIntoWords(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_1A8FDAE6D[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a5, 1uLL);
  }
}

void sub_1A8F82AC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::StrFormat<unsigned char>@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_1A8F82B88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8F82C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Darts::DoubleArrayImpl<void,void,int,void>::build(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  Darts::Details::DoubleArrayBuilder::build<int>(&v6, v12);
}

void sentencepiece::ModelInterface::NBestEncode(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v10 = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x1AC57D010](v4, 96);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sentencepiece::ModelInterface::SampleEncode(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v10 = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x1AC57D010](v4, 102);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sentencepiece::ModelInterface::SampleEncodeAndScore(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    LOBYTE(__p) = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x1AC57D010](v4, 117);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&__p);
  }

  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a2, &__p, &v15, 1uLL);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A8F83098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sentencepiece::ModelInterface::CalculateEntropy(sentencepiece::logging *a1)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v9 = 0;
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "(", 1);
    v3 = MEMORY[0x1AC57D010](v2, 125);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") ", 2);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "LOG(", 4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ERROR", 5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v9);
  }

  return 0.0;
}

uint64_t sentencepiece::ModelInterface::ByteFallbackEnabled(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1A8F83458(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC57D130](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC57D0E0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1A8F83514(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sentencepiece::error::Die::~Die(sentencepiece::error::Die *this)
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  v3 = std::ostream::flush();
  if (*this == 1)
  {
    sentencepiece::error::Abort(v3);
  }
}

unint64_t Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](v43);
  return v24;
}

void sub_1A8F83A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__append(a1, a2 - v2);
  }
}

__n128 std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(a1, &v10);
}

void sub_1A8F83C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_front<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *> &>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *> &>::emplace_front<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1A8F84468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned char>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8F84F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8F8511C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1CABAD0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1AC57D170](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x1AC57D1A0);
}

void std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x1AC57D1A0);
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1AC57CFB0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1AC57CFC0](v13);
  return a1;
}

void sub_1A8F854F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1AC57CFC0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1A8F854D8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1A8F8572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A8F857A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v7 = 24 * v2;
  v16.__first_ = 0;
  v16.__begin_ = v7;
  v16.__end_ = v7;
  v16.__end_cap_.__value_ = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v16.__end_ + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = v16.__begin_ - v11;
  memcpy(v16.__begin_ - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v16.__end_cap_.__value_;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,int> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string_view>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::less<std::string_view>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::__tree<std::string_view>::__emplace_unique_key_args<std::string_view,std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (64 - v3);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (64 - v3);
  }

  if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4) != 0)
  {
    v7 = __rbit64((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4);
LABEL_17:
    *a3 = v4;
    *(a3 + 8) = __clz(v7);
    return result;
  }

  if (v5 < a2)
  {
    a2 -= v6;
    *result = ++v4;
LABEL_9:
    if (a2 < 0x40)
    {
LABEL_12:
      if (!a2 || (v8 = (0xFFFFFFFFFFFFFFFFLL >> -a2) & ~*v4) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = a2;
        return result;
      }
    }

    else
    {
      while (*v4 == -1)
      {
        *result = ++v4;
        a2 -= 64;
        if (a2 <= 0x3F)
        {
          goto LABEL_12;
        }
      }

      v8 = ~*v4;
    }

    v7 = __rbit64(v8);
    goto LABEL_17;
  }

  *a3 = &v4[(v3 + a2) >> 6];
  *(a3 + 8) = (v3 + a2) & 0x3F;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Darts::Details::DoubleArrayBuilder::build<int>(void (**a1)(unint64_t, uint64_t), unint64_t *a2)
{
  if (a2[3])
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    Darts::Details::DoubleArrayBuilder::build_dawg<int>(a1, a2, v2);
  }

  Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(a1, a2);
}

uint64_t *Darts::Details::AutoPool<unsigned char>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned char>::clear(a1);
  if (*a1)
  {
    MEMORY[0x1AC57D170](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<unsigned char>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned char>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1AC57D170](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t Darts::Details::AutoPool<unsigned char>::resize(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    Darts::Details::AutoPool<unsigned char>::resize_buf(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void Darts::Details::AutoPool<unsigned char>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void Darts::Details::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1AC57D1A0);
}

const char *Darts::Details::Exception::what(Darts::Details::Exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "";
  }
}

uint64_t *Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::clear(a1);
  if (*a1)
  {
    MEMORY[0x1AC57D170](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1AC57D170](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void Darts::Details::DoubleArrayBuilder::build_dawg<int>(void (**a1)(unint64_t, uint64_t), unint64_t *a2, Darts::Details::DawgBuilder *this)
{
  Darts::Details::DawgBuilder::init(this);
  if (*a2)
  {
    v6 = 0;
    do
    {
      v7 = a2[2];
      v8 = *(a2[1] + 8 * v6);
      if (v7)
      {
        v9 = *(v7 + 8 * v6);
      }

      else
      {
          ;
        }

        v9 = v7 - 1;
      }

      v11 = a2[3];
      if (v11)
      {
        v12 = *(v11 + 4 * v6);
      }

      else
      {
        v12 = v6;
      }

      Darts::Details::DawgBuilder::insert(this, v8, v9, v12);
      ++v6;
      if (*a1)
      {
        (*a1)(v6, *a2 + 1);
      }
    }

    while (v6 < *a2);
  }

  Darts::Details::DawgBuilder::flush(this, 0);
  v13 = *this;
  v14 = *(*this + 8);
  v15 = **this;
  if (v14)
  {
    if (*(v13 + 9))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (4 * v15);
  }

  else
  {
    v17 = 2 * v15;
  }

  **(this + 3) = v17 | *(v13 + 10);
  **(this + 6) = v14;
  Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(this);
  Darts::Details::AutoPool<unsigned int>::clear(this + 15);
  Darts::Details::AutoPool<unsigned int>::clear(this + 18);
  Darts::Details::AutoPool<unsigned int>::clear(this + 21);

  Darts::Details::BitVector::build((this + 72));
}

void Darts::Details::DoubleArrayBuilder::build_from_dawg(Darts::Details::DoubleArrayBuilder *this, const Darts::Details::DawgBuilder *a2)
{
  v3 = *(a2 + 4);
  v4 = 1;
  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < v3);
  if (*(this + 3) < v5)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(this + 8, v5);
  }

  v6 = 4 * *(a2 + 13);
  operator new[]();
}

void Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(a1 + 8, v4);
  }

  operator new[]();
}

uint64_t *Darts::Details::AutoStack<unsigned int>::~AutoStack(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned int>::clear(a1);

  return Darts::Details::AutoPool<unsigned int>::~AutoPool(a1);
}

uint64_t Darts::Details::AutoPool<unsigned int>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned int>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1AC57D170](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t Darts::Details::AutoPool<unsigned int>::resize(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    Darts::Details::AutoPool<unsigned int>::resize_buf(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void Darts::Details::AutoPool<unsigned int>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *Darts::Details::AutoPool<unsigned int>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned int>::clear(a1);
  if (*a1)
  {
    MEMORY[0x1AC57D170](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

void Darts::Details::BitVector::~BitVector(Darts::Details::BitVector *this)
{
  Darts::Details::BitVector::clear(this);
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x1AC57D170](v2, 0x1000C8052888210);
    *(this + 3) = 0;
  }

  Darts::Details::AutoPool<unsigned int>::~AutoPool(this);
}

uint64_t Darts::Details::BitVector::clear(Darts::Details::BitVector *this)
{
  Darts::Details::AutoPool<unsigned int>::clear(this);
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x1AC57D170](result, 0x1000C8052888210);
    *(this + 3) = 0;
  }

  return result;
}

uint64_t *Darts::Details::AutoPool<Darts::Details::DawgUnit>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::clear(a1);
  if (*a1)
  {
    MEMORY[0x1AC57D170](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<Darts::Details::DawgUnit>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1AC57D170](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize_buf(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *Darts::Details::AutoPool<Darts::Details::DawgNode>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(a1);
  if (*a1)
  {
    MEMORY[0x1AC57D170](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgNode>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1AC57D170](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void *Darts::Details::AutoPool<Darts::Details::DawgNode>::resize(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    Darts::Details::AutoPool<Darts::Details::DawgNode>::resize_buf(result, a2);
  }

  for (; v2 < a2; v2 = result[1])
  {
    result[1] = v2 + 1;
    v3 = *result + 12 * v2;
    *(v3 + 7) = 0;
    *v3 = 0;
  }

  return result;
}

void Darts::Details::AutoPool<Darts::Details::DawgNode>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void *Darts::Details::DawgBuilder::init(Darts::Details::DawgBuilder *this)
{
  v7 = 0;
  Darts::Details::AutoPool<unsigned int>::resize(this + 15, 0x400uLL, &v7);
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *this + 12 * *(*(this + 21) + 4 * v2 - 4);
    *(v3 + 7) = 0;
    *v3 = 0;
    --*(this + 22);
  }

  else
  {
    Darts::Details::AutoPool<Darts::Details::DawgNode>::append(this);
  }

  Darts::Details::BitVector::append(this + 9);
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::append(this + 3);
  v4 = *(this + 7);
  if (v4 == *(this + 8))
  {
    Darts::Details::AutoPool<unsigned char>::resize_buf(this + 48, v4 + 1);
  }

  *(this + 7) = v4 + 1;
  *(this + 24) = 1;
  *(*this + 8) = -1;
  v6 = 0;
  return Darts::Details::AutoPool<unsigned int>::append(this + 18, &v6);
}

void *Darts::Details::DawgBuilder::insert(void *this, const char *a2, unint64_t a3, int a4)
{
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1106: exception: failed to insert key: negative value";
    goto LABEL_25;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1108: exception: failed to insert key: zero-length key";
LABEL_25:
    *exception = &unk_1F1CABB18;
    exception[1] = v24;
  }

  v7 = this;
  v8 = 0;
  v9 = 0;
  v10 = *this;
  while (1)
  {
    v11 = *(v10 + 12 * v8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = a2[v9];
    if (v9 < a3 && !a2[v9])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1122: exception: failed to insert key: invalid null character";
      goto LABEL_25;
    }

    v13 = v10 + 12 * v11;
    v14 = *(v13 + 8);
    if (v12 < v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1127: exception: failed to insert key: wrong key order";
      goto LABEL_25;
    }

    if (v12 > v14)
    {
      break;
    }

    ++v9;
    v8 = *(v10 + 12 * v8);
    if (v9 > a3)
    {
      return this;
    }
  }

  *(v13 + 10) = 1;
  this = Darts::Details::DawgBuilder::flush(this, v11);
LABEL_12:
  while (v9 <= a3)
  {
    if (v9 >= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2[v9];
    }

    v16 = v7[22];
    if (v16)
    {
      v17 = *(v7[21] + 4 * v16 - 4);
      v18 = *v7 + 12 * v17;
      *(v18 + 7) = 0;
      *v18 = 0;
      --v7[22];
    }

    else
    {
      v17 = *(v7 + 2);
      Darts::Details::AutoPool<Darts::Details::DawgNode>::append(v7);
    }

    v25 = v17;
    v19 = *v7;
    v20 = (*v7 + 12 * v8);
    v21 = *v20;
    if (!*v20)
    {
      *(v19 + 12 * v17 + 9) = 1;
    }

    *(v19 + 12 * v17 + 4) = v21;
    v22 = v25;
    *(v19 + 12 * v25 + 8) = v15;
    *v20 = v22;
    this = Darts::Details::AutoPool<unsigned int>::append(v7 + 18, &v25);
    v8 = v25;
    ++v9;
  }

  *(*v7 + 12 * v8) = a4;
  return this;
}

void *Darts::Details::AutoPool<unsigned int>::resize(void *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 > a2)
  {
    result[1] = a2;
    v3 = a2;
  }

  if (result[2] < a2)
  {
    Darts::Details::AutoPool<unsigned int>::resize_buf(result, a2);
  }

  v4 = a2 - v3;
  if (a2 > v3)
  {
    v5 = 0;
    v6 = *a3;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 4 * v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_1A8FC9770)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = v6;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = v6;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_1A8FC9760)))).i32[1])
      {
        *v8 = v6;
        v8[1] = v6;
      }

      v5 += 4;
      v8 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    result[1] = a2;
  }

  return result;
}

void *Darts::Details::AutoPool<Darts::Details::DawgNode>::append(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    Darts::Details::AutoPool<Darts::Details::DawgNode>::resize_buf(result, v1 + 1);
  }

  result[1] = v1 + 1;
  v2 = *result + 12 * v1;
  *(v2 + 7) = 0;
  *v2 = 0;
  return result;
}

void *Darts::Details::BitVector::append(void *this)
{
  v1 = this;
  v2 = this[5];
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    this = Darts::Details::AutoPool<unsigned int>::append(this, &v3);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
  return this;
}

void *Darts::Details::AutoPool<Darts::Details::DawgUnit>::append(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize_buf(result, v1 + 1);
  }

  result[1] = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

void *Darts::Details::AutoPool<unsigned int>::append(void *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    Darts::Details::AutoPool<unsigned int>::resize_buf(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t Darts::Details::DawgBuilder::flush(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 152);
  v4 = *(*(this + 144) + 4 * v3 - 4);
  if (v4 != a2)
  {
    while (1)
    {
      *(v2 + 152) = v3 - 1;
      v6 = *(v2 + 128);
      if (*(v2 + 192) >= v6 - (v6 >> 2))
      {
        v7 = 2 * v6;
        Darts::Details::AutoPool<unsigned int>::clear((v2 + 120));
        v34 = 0;
        Darts::Details::AutoPool<unsigned int>::resize((v2 + 120), v7, &v34);
        v8 = *(v2 + 32);
        if (v8 >= 2)
        {
          v9 = *(v2 + 48);
          for (i = 1; i != v8; ++i)
          {
            if (!*(v9 + i) || (*(*(v2 + 24) + 4 * i) & 2) != 0)
            {
              v11 = 0;
              if (i)
              {
                v12 = i;
                do
                {
                  v13 = *(*(v2 + 24) + 4 * v12);
                  v14 = (v13 ^ ~(*(v9 + v12) << 24)) + (v13 << 15);
                  v15 = 2057 * ((5 * (v14 ^ (v14 >> 12))) ^ ((5 * (v14 ^ (v14 >> 12))) >> 4));
                  v11 ^= HIWORD(v15) ^ v15;
                  v16 = __CFADD__(v12++, 1);
                }

                while (!v16 && (v13 & 1) != 0);
              }

              v17 = *(v2 + 120);
              do
              {
                v18 = v11 % *(v2 + 128);
                v11 = v18 + 1;
              }

              while (*(v17 + 4 * v18));
              *(v17 + 4 * v18) = i;
            }
          }
        }
      }

      v19 = 0;
      if (v4)
      {
        v20 = v4;
        do
        {
          ++v19;
          v20 = *(*v2 + 12 * v20 + 4);
        }

        while (v20);
      }

      v33 = 0;
      this = Darts::Details::DawgBuilder::find_node(v2, v4, &v33);
      if (this)
      {
        v21 = this;
        *(*(v2 + 72) + 4 * (this >> 5)) |= 1 << this;
        if (v4)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!v19)
      {
        break;
      }

      do
      {
        Darts::Details::BitVector::append((v2 + 72));
        this = Darts::Details::AutoPool<Darts::Details::DawgUnit>::append((v2 + 24));
        v24 = *(v2 + 56);
        if (v24 == *(v2 + 64))
        {
          Darts::Details::AutoPool<unsigned char>::resize_buf(v2 + 48, v24 + 1);
        }

        *(v2 + 56) = v24 + 1;
        --v19;
      }

      while (v19);
      v25 = *(v2 + 112) - 1;
      if (v4)
      {
        goto LABEL_31;
      }

LABEL_39:
      v21 = v25 + 1;
      *(*(v2 + 120) + 4 * v33) = v25 + 1;
      ++*(v2 + 192);
      if (v4)
      {
        do
        {
LABEL_21:
          v22 = *(*v2 + 12 * v4 + 4);
          v35 = v4;
          this = Darts::Details::AutoPool<unsigned int>::append((v2 + 168), &v35);
          v4 = v22;
        }

        while (v22);
      }

LABEL_22:
      v3 = *(v2 + 152);
      v23 = *(v2 + 144) + 4 * v3;
      *(*v2 + 12 * *(v23 - 4)) = v21;
      v4 = *(v23 - 4);
      if (v4 == a2)
      {
        goto LABEL_2;
      }
    }

    v25 = 0;
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_31:
    v26 = *v2;
    v27 = v4;
    do
    {
      v28 = (v26 + 12 * v27);
      v29 = *(v28 + 8);
      v30 = *v28;
      if (v29)
      {
        if (*(v28 + 9))
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 | (4 * v30);
      }

      else
      {
        v32 = 2 * v30;
      }

      *(*(v2 + 24) + 4 * v25) = v32 | *(v28 + 10);
      *(*(v2 + 48) + v25--) = v29;
      v26 = *v2;
      v27 = *(*v2 + 12 * v27 + 4);
    }

    while (v27);
    goto LABEL_39;
  }

LABEL_2:
  *(v2 + 152) = v3 - 1;
  return this;
}

uint64_t Darts::Details::DawgBuilder::find_node(Darts::Details::DawgBuilder *this, unsigned int a2, unsigned int *a3)
{
  v3 = a2;
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = a2;
    do
    {
      v6 = *this + 12 * v5;
      v7 = *v6;
      if (*(v6 + 8))
      {
        if (*(v6 + 9))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8 | (4 * v7);
      }

      else
      {
        v9 = 2 * v7;
      }

      v10 = ((v9 | *(v6 + 10)) ^ ~(*(v6 + 8) << 24)) + ((v9 | *(v6 + 10)) << 15);
      v11 = 2057 * ((5 * (v10 ^ (v10 >> 12))) ^ ((5 * (v10 ^ (v10 >> 12))) >> 4));
      v4 = v4 ^ HIWORD(v11) ^ v11;
      v5 = *(v6 + 4);
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  v13 = *(this + 15);
  v12 = *(this + 16);
  v14 = v4 % v12;
  *a3 = v4 % v12;
  v15 = *(v13 + 4 * (v4 % v12));
  if (v15)
  {
    v16 = *this;
    v17 = *this + 12 * a2;
    v18 = *(this + 3);
    do
    {
      v19 = *(v17 + 4);
      v20 = v15;
      if (v19)
      {
        v20 = v15;
        while ((*(v18 + 4 * v20) & 1) != 0)
        {
          ++v20;
          LODWORD(v19) = *(v16 + 12 * v19 + 4);
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if ((*(v18 + 4 * v20) & 1) == 0)
        {
          if (!v3)
          {
            return v15;
          }

          v21 = v3;
          while (1)
          {
            v22 = (v16 + 12 * v21);
            v23 = *v22;
            if (*(v22 + 8))
            {
              v24 = *(v22 + 9) ? 2 : 0;
              v25 = v24 | (4 * v23);
            }

            else
            {
              v25 = 2 * v23;
            }

            if ((v25 | *(v22 + 10)) != *(v18 + 4 * v20) || *(v22 + 8) != *(*(this + 6) + v20))
            {
              break;
            }

            v21 = v22[1];
            --v20;
            if (!v21)
            {
              return v15;
            }
          }
        }
      }

      v14 = (v14 + 1) % v12;
      *a3 = v14;
      v15 = *(v13 + 4 * v14);
    }

    while (v15);
  }

  return v15;
}

unsigned int *Darts::Details::DoubleArrayBuilderUnit::set_offset(unsigned int *this, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F1CABB18;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1339: exception: failed to modify unit: too large offset";
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *this = *this & 0x800001FF | v2;
  return this;
}

unsigned int *Darts::Details::DoubleArrayBuilder::build_from_dawg(Darts::Details::DoubleArrayBuilder *this, const Darts::Details::DawgBuilder *a2, unsigned int a3, unsigned int a4)
{
  v8 = (a2 + 72);
  v9 = *(*(a2 + 3) + 4 * a3);
  v10 = v9 >> 2;
  v11 = v9 >> 7;
  v12 = 1 << (v9 >> 2);
  if ((v12 & *(*(a2 + 9) + 4 * (v9 >> 7))) != 0 && (v13 = *(*(this + 8) + 4 * (Darts::Details::BitVector::rank((a2 + 72), v10) - 1))) != 0 && ((v14 = v13 ^ a4, ((v13 ^ a4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ a4) == 0) : (v15 = 1), v15))
  {
    if (*(*(a2 + 6) + v10))
    {
      v16 = *(this + 1);
      v17 = a4;
    }

    else
    {
      v17 = a4;
      v16 = *(this + 1);
      *(v16 + 4 * a4) |= 0x100u;
    }

    return Darts::Details::DoubleArrayBuilderUnit::set_offset((v16 + 4 * v17), v14);
  }

  else
  {
    result = Darts::Details::DoubleArrayBuilder::arrange_from_dawg(this, a2, a3, a4);
    v19 = result;
    if ((*(*(a2 + 9) + 4 * v11) & v12) != 0)
    {
      result = Darts::Details::BitVector::rank(v8, v10);
      *(*(this + 8) + 4 * (result - 1)) = v19;
    }

    do
    {
      if (*(*(a2 + 6) + v10))
      {
        result = Darts::Details::DoubleArrayBuilder::build_from_dawg(this, a2, v10, v19 ^ *(*(a2 + 6) + v10));
      }

      if (v10 == -1)
      {
        break;
      }

      v20 = *(*(a2 + 3) + 4 * v10);
      LODWORD(v10) = v10 + 1;
    }

    while ((v20 & 1) != 0);
  }

  return result;
}

void Darts::Details::DoubleArrayBuilder::expand_units(Darts::Details::DoubleArrayBuilder *this)
{
  v2 = *(this + 2);
  v3 = (v2 + 256);
  v4 = (v2 >> 8) - 16;
  if (v4 >= 0xFFFFFFEF)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(this + 1, (v2 + 256));
  }

  else
  {
    v5 = 0;
    v6 = v4 << 8;
    v7 = *(this + 4);
    v8 = (3072 * ((v2 >> 8) & 0xF)) | 9;
    while (*(v7 + v8) == 1)
    {
      --v5;
      v8 += 12;
      if (v5 == -256)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = v6 - v5;
LABEL_8:
    v10 = 3072 * ((v2 >> 8) & 0xF);
    v11 = 256;
    do
    {
      if ((*(v7 + v10 + 8) & 1) == 0)
      {
        if (*(this + 2) <= v6)
        {
          Darts::Details::DoubleArrayBuilder::expand_units(this);
          v7 = *(this + 4);
        }

        v12 = (v7 + v10);
        v13 = *(v7 + v10 + 4);
        if (v6 == *(this + 18))
        {
          *(this + 18) = v13;
          if (v6 == v13)
          {
            *(this + 18) = *(this + 2);
          }
        }

        v14 = *v12;
        *(v7 + 12 * (*v12 & 0xFFF) + 4) = v13;
        *(v7 + 12 * (v12[1] & 0xFFF)) = v14;
        *(v12 + 8) = 1;
        *(*(this + 1) + 4 * v6) = v9 ^ v6;
      }

      ++v6;
      v10 += 12;
      --v11;
    }

    while (v11);
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(this + 1, (v2 + 256));
    v15 = v2;
    if (v2 < v3)
    {
      v16 = *(this + 4);
      do
      {
        *(v16 + 12 * (v15++ & 0xFFF) + 8) = 0;
      }

      while (v3 != v15);
    }
  }

  v17 = *(this + 4);
  if (v2 + 1 < v3)
  {
    v18 = 255;
    v19 = v2;
    do
    {
      *(v17 + 12 * (v19 & 0xFFF) + 4) = v19 + 1;
      *(v17 + 12 * ((v19 + 1) & 0xFFF)) = v19;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v20 = 12 * (v2 & 0xFFF);
  *(v17 + v20) = v2 + 255;
  v21 = *(this + 18);
  v22 = 12 * (v21 & 0xFFF);
  v23 = *(v17 + v22);
  *(v17 + v20) = v23;
  *(v17 + 12 * ((v2 + 255) & 0xFFF) + 4) = v21;
  *(v17 + 12 * (v23 & 0xFFF) + 4) = v2;
  *(v17 + v22) = v2 + 255;
}

uint64_t Darts::Details::DoubleArrayBuilder::arrange_from_dawg(Darts::Details::DoubleArrayBuilder *this, const Darts::Details::DawgBuilder *a2, unsigned int a3, unsigned int a4)
{
  Darts::Details::AutoPool<unsigned char>::resize(this + 40, 0);
  v8 = *(*(a2 + 3) + 4 * a3);
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v38 = *(*(a2 + 6) + v9);
      Darts::Details::AutoPool<unsigned char>::append(this + 5, &v38);
      v10 = *(*(a2 + 3) + 4 * v9);
      v12 = __CFADD__(v9++, 1);
    }

    while ((v10 & 1) != 0 && !v12);
  }

  v13 = *(this + 18);
  v14 = *(this + 2);
  if (v14 > v13)
  {
    v16 = *(this + 4);
    v15 = *(this + 5);
    v19 = *v15;
    v17 = v15 + 1;
    v18 = v19;
    v20 = *(this + 18);
    do
    {
      v21 = v20 ^ v18;
      if ((*(v16 + 12 * ((v20 ^ v18) & 0xFFF) + 9) & 1) == 0 && (!((v20 ^ v18) ^ a4) || ((v21 ^ a4) & 0x1FE00000) == 0))
      {
        v22 = *(this + 6);
        if (v22 < 2)
        {
          goto LABEL_21;
        }

        v23 = v22 - 1;
        v24 = v17;
        while (1)
        {
          v25 = *v24++;
          if (*(v16 + 12 * ((v20 ^ v18) & 0xFFF ^ v25) + 8) == 1)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      v20 = *(v16 + 12 * (v20 & 0xFFF) + 4);
    }

    while (v20 != v13);
  }

  v21 = a4 | v14;
LABEL_21:
  Darts::Details::DoubleArrayBuilderUnit::set_offset((*(this + 1) + 4 * a4), v21 ^ a4);
  if (*(this + 6))
  {
    v26 = 0;
    v27 = *(*(a2 + 3) + 4 * a3) >> 2;
    do
    {
      v28 = v21 ^ *(*(this + 5) + v26);
      if (*(this + 2) <= v28)
      {
        Darts::Details::DoubleArrayBuilder::expand_units(this);
      }

      if (*(this + 18) == v28)
      {
        v29 = v28 & 0xFFF;
        v30 = *(this + 4);
        v31 = *(v30 + 12 * (v28 & 0xFFF) + 4);
        *(this + 18) = v31;
        if (v31 == v28)
        {
          *(this + 18) = *(this + 2);
        }
      }

      else
      {
        v30 = *(this + 4);
        v29 = v28 & 0xFFF;
      }

      v32 = v30 + 12 * v29;
      v33 = *(v32 + 4);
      v34 = v30 + 12 * (*v32 & 0xFFF);
      *(v30 + 12 * (v33 & 0xFFF)) = *v32;
      *(v34 + 4) = v33;
      *(v32 + 8) = 1;
      v35 = *(this + 1);
      if (*(*(a2 + 6) + v27))
      {
        *(v35 + 4 * v28) = *(*(this + 5) + v26);
        v36 = *(*(a2 + 3) + 4 * v27);
      }

      else
      {
        *(v35 + 4 * a4) |= 0x100u;
        v36 = *(*(a2 + 3) + 4 * v27);
        *(v35 + 4 * v28) = (v36 >> 1) | 0x80000000;
      }

      v27 = ((v36 << 31) >> 31) & (v27 + 1);
      ++v26;
    }

    while (v26 < *(this + 6));
  }

  else
  {
    v30 = *(this + 4);
  }

  *(v30 + 12 * (v21 & 0xFFF) + 9) = 1;
  return v21;
}

uint64_t Darts::Details::BitVector::rank(Darts::Details::BitVector *this, unint64_t a2)
{
  v2 = (a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v3 = *(*(this + 3) + v2);
  LODWORD(v2) = *(*this + v2) & (0xFFFFFFFF >> ~a2);
  LODWORD(v2) = ((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333) + (((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v2 + BYTE1(v2) + ((v2 + (v2 >> 8)) >> 16)) & 0x3Fu) + v3;
}

void *Darts::Details::AutoPool<unsigned char>::append(void *result, _BYTE *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    Darts::Details::AutoPool<unsigned char>::resize_buf(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

void Darts::Details::DawgBuilder::~DawgBuilder(Darts::Details::DawgBuilder *this)
{
  Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(this);
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::clear(this + 3);
  Darts::Details::AutoPool<unsigned char>::clear(this + 6);
  Darts::Details::BitVector::clear((this + 72));
  Darts::Details::AutoPool<unsigned int>::clear(this + 15);
  Darts::Details::AutoPool<unsigned int>::clear(this + 18);
  Darts::Details::AutoPool<unsigned int>::clear(this + 21);
  *(this + 24) = 0;
  Darts::Details::AutoStack<unsigned int>::~AutoStack(this + 21);
  Darts::Details::AutoStack<unsigned int>::~AutoStack(this + 18);
  Darts::Details::AutoPool<unsigned int>::~AutoPool(this + 15);
  Darts::Details::BitVector::~BitVector((this + 72));
  Darts::Details::AutoPool<unsigned char>::~AutoPool(this + 6);
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::~AutoPool(this + 3);

  Darts::Details::AutoPool<Darts::Details::DawgNode>::~AutoPool(this);
}

uint64_t Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    result = Darts::Details::DoubleArrayBuilder::arrange_from_keyset<int>(a1, a2, a3, a4, a5, a6);
    v12 = result;
    if (a3 < a4)
    {
      v13 = a2[2];
      while (v13 && *(v13 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return result;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v14 = a2[2];
    if (v14 && *(v14 + 8 * a3) <= a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(a2[1] + 8 * a3) + a5);
    }

    v16 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v14 && *(v14 + 8 * v16) <= a5)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(a2[1] + 8 * v16) + a5);
        }

        if (v17 != v15)
        {
          Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(a1, a2, a3, v16, a5 + 1, v12 ^ v15);
          v14 = a2[2];
          if (v14 && *(v14 + 8 * v16) <= a5)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(a2[1] + 8 * v16) + a5);
          }

          a3 = v16;
        }

        ++v16;
      }

      while (a4 != v16);
    }

    a6 = v12 ^ v15;
    ++a5;
  }

  return result;
}

uint64_t Darts::Details::DoubleArrayBuilder::arrange_from_keyset<int>(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  Darts::Details::AutoPool<unsigned char>::resize(a1 + 40, 0);
  if (a3 < a4)
  {
    v12 = -1;
    while (1)
    {
      v13 = a2[2];
      if (v13)
      {
        if (*(v13 + 8 * a3) > a5)
        {
          v44 = *(*(a2[1] + 8 * a3) + a5);
          if (!v44)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1675: exception: failed to build double-array: invalid null character";
            goto LABEL_57;
          }

          goto LABEL_20;
        }

        v44 = 0;
      }

      else
      {
        v44 = *(*(a2[1] + 8 * a3) + a5);
        if (v44)
        {
          goto LABEL_20;
        }
      }

      v14 = a2[3];
      if (v14)
      {
        if ((*(v14 + 4 * a3) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else if ((a3 & 0x80000000) != 0)
      {
LABEL_56:
        exception = __cxa_allocate_exception(0x10uLL);
        v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1677: exception: failed to build double-array: negative value";
LABEL_57:
        *exception = &unk_1F1CABB18;
        exception[1] = v43;
      }

      if (v12 == -1)
      {
        if (v14)
        {
          v12 = *(v14 + 4 * a3);
        }

        else
        {
          v12 = a3;
        }
      }

      if (*a1)
      {
        (*a1)(a3 + 1, *a2 + 1);
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 40) + v15 - 1);
      if (v44 != v16)
      {
        if (v44 < v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1692: exception: failed to build double-array: wrong key order";
          goto LABEL_57;
        }

LABEL_24:
        Darts::Details::AutoPool<unsigned char>::append((a1 + 40), &v44);
      }

      if (a4 == ++a3)
      {
        v17 = v12 | 0x80000000;
        goto LABEL_28;
      }
    }
  }

  v17 = -1;
LABEL_28:
  v18 = *(a1 + 72);
  v19 = *(a1 + 16);
  if (v19 > v18)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = *v20;
    v22 = v20 + 1;
    v23 = v24;
    v25 = *(a1 + 72);
    do
    {
      v26 = v25 ^ v23;
      if ((*(v21 + 12 * ((v25 ^ v23) & 0xFFF) + 9) & 1) == 0 && (!((v25 ^ v23) ^ a6) || ((v26 ^ a6) & 0x1FE00000) == 0))
      {
        v27 = *(a1 + 48);
        if (v27 < 2)
        {
          goto LABEL_41;
        }

        v28 = v27 - 1;
        v29 = v22;
        while (1)
        {
          v30 = *v29++;
          if (*(v21 + 12 * ((v25 ^ v23) & 0xFFF ^ v30) + 8) == 1)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *(v21 + 12 * (v25 & 0xFFF) + 4);
    }

    while (v25 != v18);
  }

  v26 = a6 | v19;
LABEL_41:
  Darts::Details::DoubleArrayBuilderUnit::set_offset((*(a1 + 8) + 4 * a6), v26 ^ a6);
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = *(a1 + 40);
    do
    {
      v33 = v26 ^ *(v32 + v31);
      if (*(a1 + 16) <= v33)
      {
        Darts::Details::DoubleArrayBuilder::expand_units(a1);
      }

      if (*(a1 + 72) == v33)
      {
        v34 = v33 & 0xFFF;
        v35 = *(a1 + 32);
        v36 = *(v35 + 12 * (v33 & 0xFFF) + 4);
        *(a1 + 72) = v36;
        if (v36 == v33)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v35 = *(a1 + 32);
        v34 = v33 & 0xFFF;
      }

      v37 = v35 + 12 * v34;
      v38 = *(v37 + 4);
      v39 = v35 + 12 * (*v37 & 0xFFF);
      *(v35 + 12 * (v38 & 0xFFF)) = *v37;
      *(v39 + 4) = v38;
      *(v37 + 8) = 1;
      v32 = *(a1 + 40);
      v40 = *(a1 + 8);
      if (*(v32 + v31))
      {
        *(v40 + 4 * v33) = *(v32 + v31);
      }

      else
      {
        *(v40 + 4 * a6) |= 0x100u;
        *(v40 + 4 * v33) = v17;
      }

      ++v31;
    }

    while (v31 < *(a1 + 48));
  }

  else
  {
    v35 = *(a1 + 32);
  }

  *(v35 + 12 * (v26 & 0xFFF) + 9) = 1;
  return v26;
}

void Darts::Details::DoubleArrayBuilder::~DoubleArrayBuilder(Darts::Details::DoubleArrayBuilder *this)
{
  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::clear(this + 1);
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x1AC57D170](v2, 0x1000C80CBA68D63);
    *(this + 4) = 0;
  }

  Darts::Details::AutoPool<unsigned char>::clear(this + 5);
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x1AC57D170](v3, 0x1000C8052888210);
    *(this + 8) = 0;
  }

  *(this + 18) = 0;
  Darts::Details::AutoPool<unsigned char>::~AutoPool(this + 5);
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x1AC57D170](v4, 0x1000C80CBA68D63);
    *(this + 4) = 0;
  }

  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::~AutoPool(this + 1);
}

sentencepiece::normalizer::Normalizer *sentencepiece::normalizer::Normalizer::Normalizer(sentencepiece::normalizer::Normalizer *this, const sentencepiece::NormalizerSpec *a2, const sentencepiece::TrainerSpec *a3)
{
  *this = &unk_1F1CABB40;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2 + 16;
  *(this + 5) = 0;
  *(this + 48) = *(a3 + 245);
  sentencepiece::util::Status::Status(this + 7);
  v5 = *(a2 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sentencepiece::normalizer::Normalizer::Init(this, v6, v7);
  return this;
}

void sub_1A8F89270(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

sentencepiece::normalizer::Normalizer *sentencepiece::normalizer::Normalizer::Normalizer(sentencepiece::normalizer::Normalizer *this, const sentencepiece::NormalizerSpec *a2)
{
  *this = &unk_1F1CABB40;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2 + 16;
  *(this + 5) = 0;
  *(this + 48) = 0;
  sentencepiece::util::Status::Status(this + 7);
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sentencepiece::normalizer::Normalizer::Init(this, v5, v6);
  return this;
}

void sub_1A8F89348(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::normalizer::Normalizer::~Normalizer(sentencepiece::normalizer::Normalizer *this)
{
  *this = &unk_1F1CABB40;
  sentencepiece::util::Status::~Status((this + 56));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  sentencepiece::normalizer::Normalizer::~Normalizer(this);

  JUMPOUT(0x1AC57D1A0);
}

void *sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sentencepiece::util::Status::Status(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sentencepiece::util::Status::Status(a5, 13, v10, v11);
}

void *sentencepiece::normalizer::Normalizer::Normalize@<X0>(uint64_t a1@<X0>, sentencepiece::string_util *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sentencepiece::util::Status::Status(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sentencepiece::util::Status::~Status(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v14 = 0;
    while (1)
    {
      sentencepiece::normalizer::Normalizer::NormalizePrefix(a2, a1, v8, v13, &v41);
      if (v42 != 1 || *v41 != 32)
      {
        break;
      }

      a2 = (a2 + v43);
      v14 += v43;
      v8 -= v43;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v39 = a6;
  }

  else
  {
    v39 = a6;
    v14 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  std::vector<unsigned long>::reserve(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v15 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v41 = v14;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
        --v15;
      }

      while (v15);
    }

    else
    {
      std::string::append(a4, " ");
      v41 = v14;
      std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
    }
  }

  v17 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sentencepiece::normalizer::Normalizer::NormalizePrefix(a2, a1, v8, v16, &v41);
    v19 = v41;
    v18 = v42;
    if (v17)
    {
      if (!v42)
      {
        goto LABEL_40;
      }

      while (*v19 == 32)
      {
        ++v19;
        if (!--v18)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v42)
    {
      v17 = 0;
      goto LABEL_40;
    }

    v20 = 0;
    v40 = v14;
    v21 = v14;
    do
    {
      v22 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v23 = v19[v20];
      if (v22 && v23 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v24 = 3;
        do
        {
          v47[0] = v21;
          std::vector<unsigned long>::push_back[abi:ne200100](a5, v47);
          --v24;
        }

        while (v24);
      }

      else
      {
        std::string::push_back(a4, v23);
        v47[0] = v21;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, v47);
      }

      ++v20;
    }

    while (v20 != v18);
    v17 = v19[v18 - 1] == 32;
    v14 = v40;
LABEL_40:
    v14 += v43;
    a2 = (a2 + v43);
    v8 -= v43;
    v17 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v25 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    LODWORD(v27) = v14;
    if (v25)
    {
      v28 = "▁";
    }

    else
    {
      v28 = " ";
    }

    while (1)
    {
      v29 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v29 & 0x8000000000000000) != 0)
      {
        v30 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v30 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v32 = size >= v26;
      v33 = size - v26;
      if (!v32 || memcmp(v30 + v33, v28, v26))
      {
        break;
      }

      if ((v29 & 0x80000000) != 0)
      {
        v29 = a4->__r_.__value_.__l.__size_;
      }

      if (v29 - v26 < 0)
      {
        LODWORD(v41) = 13;
        v36 = std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(", 1);
        MEMORY[0x1AC57D010](&v42, 186);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(length) >= (0)", 15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v41, v39);
        goto LABEL_72;
      }

      v34 = (v29 - v26) & 0x7FFFFFFF;
      v27 = *(*a5 + v34);
      std::string::resize(a4, v34, 0);
      std::vector<unsigned long>::resize(a5, v34);
    }
  }

  else
  {
    LODWORD(v27) = v14;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v35 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v41 = v27;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
        --v35;
      }

      while (v35);
    }

    else
    {
      std::string::append(a4, " ");
      v41 = v27;
      std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
    }
  }

  v41 = v27;
  std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
  v37 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v37 & 0x8000000000000000) != 0)
  {
    v37 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v37 + 1)
  {
    return sentencepiece::util::Status::Status(v39);
  }

  LODWORD(v41) = 13;
  v38 = std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(", 1);
  MEMORY[0x1AC57D010](&v42, 198);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "] ", 2);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v41, v39);
LABEL_72:
  v42 = *MEMORY[0x1E69E54E8];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v43 = MEMORY[0x1E69E5548] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  return MEMORY[0x1AC57D130](&v46);
}

void sub_1A8F89C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::normalizer::Normalizer::NormalizePrefix@<X0>(sentencepiece::string_util *this@<X1>, uint64_t result@<X0>, unint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v30[63] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = this;
    v8 = result;
    v9 = *(result + 40);
    if (v9 && (v29[0] = 0, result = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(v9, this, a3, v29), v29[0] == 1))
    {
      v10 = result;
      if (a3 < result)
      {
        v10 = a3;
      }

      *a5 = v7;
      *(a5 + 8) = v10;
      *(a5 + 16) = result;
    }

    else
    {
      v11 = *(v8 + 8);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = 0;
      v14 = *(v11 + 16);
      v15 = (*v14 >> 10 << ((*v14 >> 6) & 8));
      do
      {
        v16 = v7[v12];
        v17 = v15 ^ v16;
        v18 = v14[v17];
        if ((v18 & 0x800000FF) != v16)
        {
          break;
        }

        v15 = v17 ^ (v18 >> 10 << ((v18 >> 6) & 8));
        if ((v18 & 0x100) != 0)
        {
          if (v13 <= 0x1F)
          {
            v19 = &v29[16 * v13];
            *v19 = v14[v15] & 0x7FFFFFFF;
            *(v19 + 1) = v12 + 1;
          }

          ++v13;
        }

        ++v12;
      }

      while (a3 != v12);
      if (!v13)
      {
        goto LABEL_24;
      }

      v20 = 0;
      v21 = 0;
      v22 = v30;
      v23 = v30;
      do
      {
        v25 = *v23;
        v23 += 2;
        v24 = v25;
        if (!v20 || v24 > v20)
        {
          v21 = *(v22 - 2);
          v20 = v24;
        }

        v22 = v23;
        --v13;
      }

      while (v13);
      if (v20)
      {
        v7 = (*(v8 + 16) + v21);
        result = strlen(v7);
      }

      else
      {
LABEL_24:
        *v29 = 0;
        v26 = sentencepiece::string_util::DecodeUTF8(v7, &v7[a3], v29, a4);
        v27 = v26 != 65533;
        if (v26 == 65533)
        {
          result = 3;
        }

        else
        {
          result = *v29;
        }

        if (*v29 == 3)
        {
          v27 = 1;
        }

        if (v27)
        {
          LODWORD(v20) = *v29;
        }

        else
        {
          LODWORD(v20) = 1;
        }

        if (!v27)
        {
          v7 = &sentencepiece::normalizer::Normalizer::NormalizePrefix(std::string_view)const::kReplacementChar;
        }
      }

      *a5 = v7;
      *(a5 + 8) = result;
      *(a5 + 16) = v20;
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
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