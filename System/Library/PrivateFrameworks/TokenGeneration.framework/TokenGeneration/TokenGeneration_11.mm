uint64_t storeEnumTagSinglePayload for PromptCompletion.TextContent(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata completion function for PromptCompletion.Annotation.Type()
{
  result = type metadata accessor for PromptCompletion.URLCitation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromptCompletion.DocumentCitation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.ImageContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PromptCompletion.ImageContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.FileContent()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.Moderation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptCompletion.Moderation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for PromptCompletion.Aggregator()
{
  type metadata accessor for PromptCompletion.Moderation?(319, &lazy cache variable for type metadata for PromptCompletion.Moderation?, &type metadata for PromptCompletion.Moderation, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : PromptCompletion.Aggregator.CandidateAggregator](319, &lazy cache variable for type metadata for [String : PromptCompletion.Aggregator.CandidateAggregator]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Prompt.Rendering?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String : PromptCompletion.Aggregator.CandidateAggregator](319, &lazy cache variable for type metadata for [String : Any]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ModelInformation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelInformation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for ModelInformation.Asset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ModelInformation.Asset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FinishReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15TokenGeneration12FinishReasonOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.Aggregator.CandidateAggregator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptCompletion.Aggregator.CandidateAggregator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined copy of FinishReason?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined copy of FinishReason(a1, a2);
  }

  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t InferenceResponse.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = &v68 - v17;
  v18 = type metadata accessor for InferenceResponse.Candidate();
  v19 = *(v18 - 8);
  v81 = v18;
  v82 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for InferenceResponse.Usage();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v68 - v28;
  v30 = type metadata accessor for InferenceResponse.ModelInformation();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[1];
  v35 = a1[2];
  v84 = *a1;
  v85 = v34;
  v86 = v35;

  v75 = v33;
  InferenceResponse.ModelInformation.init(_:)(&v84, v33);
  v36 = a1[3];
  v77 = v5;
  if (v36)
  {
    v37 = v14;
    v38 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_0F3Kit17InferenceResponseVAIVAKV_AsMOts5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j9O0C3Kit17lm42VADVAFVAmHOIgnnrr_AG3key_AI5valuetAN_AOts5N96OIegnrzr_TR03_s9c5Kit17ij3V10e3V15ab9EyAeF0A10d10VADVcfcAE8f6V_AE11g7OtAiJV_Z8LOtXEfU_Tf3nnnpf_nTf1cn_n(v36);
    if (*(v38 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
      v39 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC8];
    }

    v84 = v39;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v38, 1, &v84);
    InferenceResponse.Moderation.init(ratings:)();
    v40 = 0;
    v14 = v37;
    v5 = v77;
  }

  else
  {
    v40 = 1;
  }

  v41 = type metadata accessor for InferenceResponse.Moderation();
  v42 = *(*(v41 - 8) + 56);
  v76 = v29;
  v42(v29, v40, 1, v41);
  v43 = a1[4];
  v44 = *(v43 + 16);
  if (v44)
  {
    v69 = v14;
    v70 = v9;
    v71 = v4;
    v72 = a2;
    v73 = a1;
    v83 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
    v45 = v83;
    v80 = v82 + 32;
    v46 = (v43 + 80);
    do
    {
      v47 = *(v46 - 5);
      v48 = *(v46 - 4);
      v49 = *(v46 - 3);
      v51 = *(v46 - 2);
      v50 = *(v46 - 1);
      v52 = *v46;
      v84 = *(v46 - 6);
      v85 = v47;
      v86 = v48;
      v87 = v49;
      v88 = v51;
      v89 = v50;
      v90 = v52;

      outlined copy of FinishReason(v49, v51);
      outlined copy of Data._Representation(v50, v52);
      InferenceResponse.Candidate.init(_:)(&v84, v22);
      v83 = v45;
      v54 = v45[2];
      v53 = v45[3];
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1);
        v45 = v83;
      }

      v46 += 7;
      v45[2] = v54 + 1;
      (*(v82 + 32))(v45 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v54, v22, v81);
      --v44;
    }

    while (v44);
    a1 = v73;
    v4 = v71;
    v5 = v77;
    v9 = v70;
    v14 = v69;
  }

  MEMORY[0x1AC5A55E0](a1[5], a1[6]);
  v55 = objc_opt_self();
  v56 = a1[7];
  v57 = a1[8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v83 = 0;
  v59 = [v55 JSONObjectWithData:isa options:0 error:&v83];

  v60 = v83;
  if (v59)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    v61 = type metadata accessor for PromptCompletion(0);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v61 + 36), v14, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v62 = 1;
    if ((*(v5 + 48))(v14, 1, v4) != 1)
    {
      v63 = v74;
      (*(v5 + 32))(v74, v14, v4);
      (*(v5 + 16))(v9, v63, v4);
      InferenceResponse.PromptRendering.init(_:)(v9, v78);
      (*(v5 + 8))(v63, v4);
      v62 = 0;
    }

    v64 = type metadata accessor for InferenceResponse.PromptRendering();
    (*(*(v64 - 8) + 56))(v78, v62, 1, v64);
    InferenceResponse.init(modelInformation:promptModeration:candidates:usage:metadata:renderedPrompt:)();
    result = outlined destroy of PromptCompletion.DocumentCitation(a1, type metadata accessor for PromptCompletion);
    v66 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v67 = v60;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_0F3Kit17InferenceResponseVAIVAKV_AsMOts5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j9O0C3Kit17lm42VADVAFVAmHOIgnnrr_AG3key_AI5valuetAN_AOts5N96OIegnrzr_TR03_s9c5Kit17ij3V10e3V15ab9EyAeF0A10d10VADVcfcAE8f6V_AE11g7OtAiJV_Z8LOtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v49 = type metadata accessor for InferenceResponse.Moderation.Category();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v37 = v1;
  v53 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v53;
  v12 = a1 + 64;
  v13 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v15 = result;
  v16 = 0;
  v52 = *(a1 + 36);
  v39 = *MEMORY[0x1E69C6468];
  v42 = *MEMORY[0x1E69C6470];
  v38 = *MEMORY[0x1E69C6460];
  v41 = *MEMORY[0x1E69C6458];
  v45 = (v3 + 32);
  v46 = a1;
  v40 = a1 + 72;
  v43 = v10;
  v44 = a1 + 64;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v18 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_27;
    }

    if (v52 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v50 = v11;
    v19 = v9;
    v20 = (*(a1 + 48) + 16 * v15);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(a1 + 56) + v15);
    v24 = *(v48 + 48);
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5A5350](v21, v22);
    v25 = type metadata accessor for InferenceResponse.Moderation.Probability();
    if (v23 > 1)
    {
      v26 = v42;
      if (v23 != 2)
      {
        v26 = v39;
      }
    }

    else
    {
      v26 = v41;
      if (v23)
      {
        v26 = v38;
      }
    }

    v27 = &v19[v24];
    v9 = v19;
    (*(*(v25 - 8) + 104))(v27, v26, v25);
    (*v45)(v19, v51, v49);

    v11 = v50;
    v53 = v50;
    v29 = *(v50 + 16);
    v28 = *(v50 + 24);
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
      v11 = v53;
    }

    *(v11 + 16) = v29 + 1;
    result = outlined init with take of (InferenceResponse.Moderation.Category, InferenceResponse.Moderation.Probability)(v9, v11 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v29);
    a1 = v46;
    v17 = 1 << *(v46 + 32);
    if (v15 >= v17)
    {
      goto LABEL_29;
    }

    v12 = v44;
    v30 = *(v44 + 8 * v18);
    if ((v30 & (1 << v15)) == 0)
    {
      goto LABEL_30;
    }

    if (v52 != *(v46 + 36))
    {
      goto LABEL_31;
    }

    v31 = v30 & (-2 << (v15 & 0x3F));
    if (v31)
    {
      v17 = __clz(__rbit64(v31)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v18 << 6;
      v33 = v18 + 1;
      v34 = (v40 + 8 * v18);
      while (v33 < (v17 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v15, v52, 0);
          v17 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v15, v52, 0);
    }

LABEL_4:
    ++v16;
    v15 = v17;
    if (v16 == v43)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t ModelInformation.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for InferenceResponse.ModelInformation.Asset();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1AC5A5590](v7);
  v10 = *(v9 + 16);
  if (v10)
  {
    v38 = a1;
    v39 = a2;
    v51 = MEMORY[0x1E69E7CC0];
    v11 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v49 = v51;
    v47 = objc_opt_self();
    v12 = v11;
    v13 = 0;
    v46 = &v11[(*(v5 + 80) + 32) & ~*(v5 + 80)];
    v44 = v5;
    v45 = v5 + 16;
    v41 = (v5 + 8);
    v42 = v10;
    v14 = v40;
    v43 = v11;
    do
    {
      if (v13 >= *(v12 + 2))
      {
        __break(1u);
LABEL_12:
        v37 = v12;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        __break(1u);
      }

      (*(v5 + 16))(v14, &v46[*(v5 + 72) * v13], v4);
      v15 = InferenceResponse.ModelInformation.Asset.identifier.getter();
      v17 = v16;
      v18 = InferenceResponse.ModelInformation.Asset.version.getter();
      v20 = v19;
      InferenceResponse.ModelInformation.Asset.metadata.getter();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v50 = 0;
      v22 = [v47 dataWithJSONObject:isa options:0 error:&v50];

      v12 = v50;
      if (!v22)
      {
        goto LABEL_12;
      }

      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v4;
      (*v41)(v14, v4);
      v26 = v49;
      v51 = v49;
      v28 = *(v49 + 16);
      v27 = *(v49 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v14 = v40;
        v26 = v51;
      }

      ++v13;
      *(v26 + 16) = v28 + 1;
      v49 = v26;
      v29 = (v26 + 48 * v28);
      v29[4] = v15;
      v29[5] = v17;
      v29[6] = v18;
      v29[7] = v20;
      v29[8] = v48;
      v29[9] = v24;
      v12 = v43;
      v4 = v25;
      v5 = v44;
    }

    while (v42 != v13);

    a1 = v38;
    a2 = v39;
    v30 = v49;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v31 = InferenceResponse.ModelInformation.systemVersion.getter();
  v33 = v32;
  v34 = type metadata accessor for InferenceResponse.ModelInformation();
  result = (*(*(v34 - 8) + 8))(a1, v34);
  *a2 = v30;
  a2[1] = v31;
  a2[2] = v33;
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t InferenceResponse.ModelInformation.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = type metadata accessor for InferenceResponse.ModelInformation.Asset();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(v8 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v30 = v9;
    v31 = v10;
    v33 = a2;
    v41 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v41;
    v13 = objc_opt_self();
    v34 = v4 + 32;
    v35 = v13;
    v32 = v8;
    v14 = (v8 + 72);
    v36 = v4;
    while (1)
    {
      v38 = v12;
      v39 = v11;
      v15 = v7;
      v17 = *(v14 - 5);
      v16 = *(v14 - 4);
      v19 = *(v14 - 3);
      v18 = *(v14 - 2);
      v20 = *(v14 - 1);
      v21 = *v14;

      swift_bridgeObjectRetain_n();
      outlined copy of Data._Representation(v20, v21);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v40 = 0;
      v23 = [v35 JSONObjectWithData:isa options:0 error:&v40];

      v24 = v40;
      if (!v23)
      {
        break;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();
      v7 = v15;
      InferenceResponse.ModelInformation.Asset.init(identifier:version:metadata:)();

      outlined consume of Data._Representation(v20, v21);
      v12 = v38;
      v41 = v38;
      v26 = *(v38 + 16);
      v25 = *(v38 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v12 = v41;
      }

      v14 += 6;
      *(v12 + 16) = v26 + 1;
      (*(v36 + 32))(v12 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26, v7, v37);
      v11 = v39 - 1;
      if (v39 == 1)
      {
        v9 = v30;
        v10 = v31;
        goto LABEL_8;
      }
    }

    v29 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_8:

    MEMORY[0x1AC5A5580](v12, v9, v10);

    v28 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t PromptCompletion.Moderation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v71 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v3 = *(v71 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMR);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v77 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v52 - v10;
  v53 = a1;
  v11 = MEMORY[0x1AC5A5340](v9);
  v12 = *(v11 + 16);
  if (v12)
  {
    v78 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v78;
    v14 = v11 + 64;
    v15 = -1 << *(v11 + 32);
    v16 = _HashTable.startBucket.getter();
    v17 = 0;
    v18 = *(v11 + 36);
    v64 = v3 + 32;
    v65 = v3 + 16;
    v67 = v3;
    v63 = v3 + 88;
    v62 = *MEMORY[0x1E69C6458];
    v58 = *MEMORY[0x1E69C6460];
    v56 = *MEMORY[0x1E69C6470];
    v55 = *MEMORY[0x1E69C6468];
    v57 = v11 + 72;
    v66 = v11;
    v59 = v12;
    v60 = v18;
    v61 = v11 + 64;
    do
    {
      if (v16 < 0 || v16 >= 1 << *(v11 + 32))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_34;
      }

      if (v18 != *(v11 + 36))
      {
        goto LABEL_35;
      }

      v73 = 1 << v16;
      v74 = v16 >> 6;
      v72 = v17;
      v76 = v13;
      v19 = v69;
      v20 = *(v69 + 48);
      v21 = *(v11 + 48);
      v22 = type metadata accessor for InferenceResponse.Moderation.Category();
      v23 = *(v22 - 8);
      v24 = v68;
      (*(v23 + 16))(v68, v21 + *(v23 + 72) * v16, v22);
      v25 = *(v11 + 56);
      v26 = v67;
      v27 = *(v67 + 72);
      v75 = v16;
      v28 = *(v67 + 16);
      v29 = v71;
      v28(&v24[v20], v25 + v27 * v16, v71);
      v30 = v77;
      (*(v23 + 32))(v77, v24, v22);
      v31 = *(v19 + 48);
      (*(v26 + 32))(v30 + v31, &v24[v20], v29);
      v32 = InferenceResponse.Moderation.Category.identifier.getter();
      v34 = v33;
      v35 = v70;
      v28(v70, v30 + v31, v29);
      v36 = (*(v26 + 88))(v35, v29);
      if (v36 == v62)
      {
        v37 = 0;
        v38 = v75;
        v13 = v76;
        v11 = v66;
      }

      else
      {
        v38 = v75;
        v13 = v76;
        v11 = v66;
        if (v36 == v58)
        {
          v37 = 1;
        }

        else if (v36 == v56)
        {
          v37 = 2;
        }

        else
        {
          if (v36 != v55)
          {
            goto LABEL_39;
          }

          v37 = 3;
        }
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMR);
      v78 = v13;
      v40 = *(v13 + 16);
      v39 = *(v13 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v13 = v78;
      }

      *(v13 + 16) = v40 + 1;
      v41 = v13 + 24 * v40;
      *(v41 + 32) = v32;
      *(v41 + 40) = v34;
      *(v41 + 48) = v37;
      v16 = 1 << *(v11 + 32);
      if (v38 >= v16)
      {
        goto LABEL_36;
      }

      v14 = v61;
      v42 = *(v61 + 8 * v74);
      if ((v42 & v73) == 0)
      {
        goto LABEL_37;
      }

      LODWORD(v18) = v60;
      if (v60 != *(v11 + 36))
      {
        goto LABEL_38;
      }

      v43 = v42 & (-2 << (v38 & 0x3F));
      if (v43)
      {
        v16 = __clz(__rbit64(v43)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v74 << 6;
        v45 = v74 + 1;
        v46 = (v57 + 8 * v74);
        while (v45 < (v16 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v38, v60, 0);
            v16 = __clz(__rbit64(v47)) + v44;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v38, v60, 0);
      }

LABEL_4:
      v17 = v72 + 1;
    }

    while (v72 + 1 != v59);

    if (!*(v13 + 16))
    {
      goto LABEL_31;
    }
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_31:
      v49 = MEMORY[0x1E69E7CC8];
      goto LABEL_32;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v49 = static _DictionaryStorage.allocate(capacity:)();
LABEL_32:
  v78 = v49;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, 1, &v78);
  v50 = type metadata accessor for InferenceResponse.Moderation();
  result = (*(*(v50 - 8) + 8))(v53, v50);
  *v54 = v78;
  return result;
}

uint64_t PromptCompletion.TextContent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = type metadata accessor for InferenceResponse.DocumentCitation();
  v4 = *(v77 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for InferenceResponse.URLCitation();
  v85 = *(v75 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InferenceResponse.Annotation.Type();
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v13 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v15 = (v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for InferenceResponse.Annotation();
  v16 = *(v78 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v91 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = v64 - v20;
  v21 = type metadata accessor for PromptCompletion.Annotation(0);
  v87 = *(v21 - 8);
  v88 = v21;
  v22 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v89 = (v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = InferenceResponse.TextContent.value.getter();
  v26 = v25;
  v27 = InferenceResponse.TextContent.annotations.getter();
  v28 = *(v27 + 16);
  if (v28)
  {
    v65 = v26;
    v66 = v24;
    v67 = a1;
    v68 = a2;
    v93 = MEMORY[0x1E69E7CC0];
    v29 = v27;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v92 = v93;
    v31 = *(v16 + 16);
    v30 = v16 + 16;
    v84 = v31;
    v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v64[1] = v29;
    v33 = v29 + v32;
    v34 = *(v30 + 56);
    v82 = (v80 + 88);
    v83 = v34;
    v81 = *MEMORY[0x1E69C6440];
    v80 += 96;
    v73 = (v4 + 32);
    v72 = *MEMORY[0x1E69C6448];
    v71 = (v4 + 8);
    v70 = (v85 + 32);
    v69 = (v85 + 8);
    v79 = (v30 - 8);
    v35 = v78;
    v85 = v30;
    while (1)
    {
      v36 = v90;
      v37 = v84;
      v84(v90, v33, v35);
      v37(v91, v36, v35);
      InferenceResponse.Annotation.type.getter();
      v38 = (*v82)(v12, v9);
      if (v38 == v81)
      {
        (*v80)(v12, v9);
        v39 = v74;
        v40 = v12;
        v41 = v12;
        v42 = v9;
        v43 = v75;
        (*v70)(v74, v40, v75);
        v44 = InferenceResponse.URLCitation.title.getter();
        v46 = v45;
        v47 = v15 + *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
        InferenceResponse.URLCitation.url.getter();
        v48 = v43;
        v9 = v42;
        v12 = v41;
        v35 = v78;
        (*v69)(v39, v48);
        *v15 = v44;
        v15[1] = v46;
      }

      else
      {
        if (v38 != v72)
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*v80)(v12, v9);
        v49 = v76;
        v50 = v77;
        (*v73)(v76, v12, v77);
        InferenceResponse.DocumentCitation.documentIdentifier.getter();
        (*v71)(v49, v50);
      }

      swift_storeEnumTagMultiPayload();
      v51 = v91;
      v52 = InferenceResponse.Annotation.index.getter();
      v53 = *v79;
      (*v79)(v51, v35);
      v54 = v89;
      *v89 = v52;
      v55 = v54;
      outlined init with take of PromptCompletion.Segment(v15, v54 + *(v88 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
      v53(v90, v35);
      v56 = v92;
      v93 = v92;
      v58 = *(v92 + 16);
      v57 = *(v92 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
        v55 = v89;
        v56 = v93;
      }

      *(v56 + 16) = v58 + 1;
      v59 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v92 = v56;
      outlined init with take of PromptCompletion.Segment(v55, v56 + v59 + *(v87 + 72) * v58, type metadata accessor for PromptCompletion.Annotation);
      v33 += v83;
      if (!--v28)
      {
        v60 = type metadata accessor for InferenceResponse.TextContent();
        (*(*(v60 - 8) + 8))(v67, v60);

        a2 = v68;
        v24 = v66;
        v26 = v65;
        v62 = v92;
        goto LABEL_12;
      }
    }
  }

  v63 = type metadata accessor for InferenceResponse.TextContent();
  result = (*(*(v63 - 8) + 8))(a1, v63);
  v62 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v62;
  *(a2 + 24) = xmmword_1ABA1D8C0;
  return result;
}

uint64_t InferenceResponse.TextContent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = type metadata accessor for DocumentResourceIdentifier();
  v78 = *(v74 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for URL();
  v79 = *(v71 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PromptCompletion.URLCitation(0);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InferenceResponse.Annotation.Type();
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v83 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - v19;
  v21 = type metadata accessor for PromptCompletion.Annotation(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v56 - v26;
  v85 = type metadata accessor for InferenceResponse.Annotation();
  v27 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v30 = a1[1];
  v61 = *a1;
  v31 = a1[2];
  v32 = a1[3];
  v33 = a1[4];
  v34 = *(v31 + 16);
  v62 = v31;
  if (v34)
  {
    v81 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v33;
    v58 = v32;
    v60 = a2;
    v88 = MEMORY[0x1E69E7CC0];
    v59 = v30;
    v35 = v29;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    v36 = v88;
    v37 = v31 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v80 = *(v22 + 72);
    v66 = (v79 + 16);
    v65 = *MEMORY[0x1E69C6440];
    v38 = v77;
    v79 = v77 + 104;
    v64 = (v78 + 16);
    v63 = *MEMORY[0x1E69C6448];
    v77 += 8;
    v78 = v38 + 16;
    v76 = v35 + 32;
    v39 = v75;
    v67 = v21;
    v82 = v35;
    do
    {
      v40 = v87;
      outlined init with copy of PromptCompletion.Annotation(v37, v87, type metadata accessor for PromptCompletion.Annotation);
      outlined init with copy of PromptCompletion.Annotation(v40, v39, type metadata accessor for PromptCompletion.Annotation);
      outlined init with copy of PromptCompletion.Annotation(v39 + *(v21 + 20), v86, type metadata accessor for PromptCompletion.Annotation.Type);
      v41 = v34;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v72;
        outlined init with take of PromptCompletion.Segment(v86, v72, type metadata accessor for PromptCompletion.DocumentCitation);
        (*v64)(v73, v42, v74);
        InferenceResponse.DocumentCitation.init(documentIdentifier:)();
        outlined destroy of PromptCompletion.DocumentCitation(v42, type metadata accessor for PromptCompletion.DocumentCitation);
        v43 = &v89 + 4;
      }

      else
      {
        v44 = v20;
        v45 = v68;
        outlined init with take of PromptCompletion.Segment(v86, v68, type metadata accessor for PromptCompletion.URLCitation);
        v47 = *v45;
        v46 = *(v45 + 1);
        (*v66)(v70, &v45[*(v69 + 20)], v71);

        v39 = v75;
        InferenceResponse.URLCitation.init(title:url:)();
        v48 = v45;
        v20 = v44;
        v21 = v67;
        outlined destroy of PromptCompletion.DocumentCitation(v48, type metadata accessor for PromptCompletion.URLCitation);
        v43 = &v90 + 4;
      }

      (*v79)(v20, *(v43 - 64), v15);
      v49 = *v39;
      (*v78)(v83, v20, v15);
      v50 = v81;
      InferenceResponse.Annotation.init(index:type:)();
      (*v77)(v20, v15);
      outlined destroy of PromptCompletion.DocumentCitation(v39, type metadata accessor for PromptCompletion.Annotation);
      outlined destroy of PromptCompletion.DocumentCitation(v87, type metadata accessor for PromptCompletion.Annotation);
      v51 = v36;
      v88 = v36;
      v53 = *(v36 + 16);
      v52 = *(v36 + 24);
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1);
        v39 = v75;
        v51 = v88;
      }

      *(v51 + 16) = v53 + 1;
      v36 = v51;
      (*(v82 + 32))(v51 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v53, v50, v85);
      v37 += v80;
      v34 = v41 - 1;
    }

    while (v41 != 1);
    v30 = v59;
    v32 = v58;
    v33 = v57;
    v54 = v36;
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1AC5A5410](v61, v30, v54);

  return outlined consume of Data?(v32, v33);
}

uint64_t PromptCompletion.Content.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for InferenceResponse.AudioContent();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v70 - v7;
  v75 = type metadata accessor for InferenceResponse.FileContent();
  v72 = *(v75 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v70 - v11;
  v12 = type metadata accessor for InferenceResponse.ImageContent();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = type metadata accessor for InferenceResponse.TextContent();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  v27 = type metadata accessor for InferenceResponse.Content();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32, a1, v27, v30);
  v33 = (*(v28 + 88))(v32, v27);
  if (v33 == *MEMORY[0x1E69C64C0])
  {
    (*(v28 + 96))(v32, v27);
    (*(v20 + 32))(v26, v32, v19);
    (*(v20 + 16))(v23, v26, v19);
    PromptCompletion.TextContent.init(_:)(v23, &v81);
    (*(v28 + 8))(a1, v27);
    (*(v20 + 8))(v26, v19);
    v34 = v80;
    *v80 = v81;
    v35 = v83;
    *(v34 + 1) = v82;
    *(v34 + 3) = v35;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  v36 = a1;
  v37 = v80;
  if (v33 == *MEMORY[0x1E69C64D0])
  {
    (*(v28 + 96))(v32, v27);
    v38 = v78;
    v39 = v32;
    v40 = v79;
    (*(v78 + 32))(v18, v39, v79);
    (*(v38 + 16))(v15, v18, v40);
    v41 = InferenceResponse.AudioContent.data.getter();
    v43 = v42;
    (*(v28 + 8))(v36, v27);
    v44 = *(v38 + 8);
    v44(v15, v40);
    v44(v18, v40);
    *v37 = v41;
    v37[1] = v43;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v33 == *MEMORY[0x1E69C64B8])
  {
    (*(v28 + 96))(v32, v27);
    v45 = v72;
    v46 = v70;
    v47 = v75;
    (*(v72 + 32))(v70, v32, v75);
    v48 = v71;
    (*(v45 + 16))(v71, v46, v47);
    v49 = v37;
    InferenceResponse.FileContent.url.getter();
    v50 = InferenceResponse.FileContent.name.getter();
    v78 = v51;
    v79 = v50;
    v77 = InferenceResponse.FileContent.mimeType.getter();
    v53 = v52;
    v54 = InferenceResponse.FileContent.size.getter();
    (*(v28 + 8))(v36, v27);
    v55 = *(v45 + 8);
    v55(v48, v47);
    v55(v46, v47);
    v56 = type metadata accessor for PromptCompletion.FileContent(0);
    v57 = (v49 + v56[5]);
    v58 = v78;
    *v57 = v79;
    v57[1] = v58;
    v59 = (v49 + v56[6]);
    *v59 = v77;
    v59[1] = v53;
    *(v49 + v56[7]) = v54;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v33 == *MEMORY[0x1E69C64C8])
  {
    v60 = v80;
    (*(v28 + 96))(v32, v27);
    v62 = v76;
    v61 = v77;
    v63 = v73;
    (*(v76 + 32))(v73, v32, v77);
    v64 = v74;
    (*(v62 + 16))(v74, v63, v61);
    v65 = InferenceResponse.AudioContent.data.getter();
    v67 = v66;
    (*(v28 + 8))(v36, v27);
    v68 = *(v62 + 8);
    v68(v64, v61);
    v68(v63, v61);
    *v60 = v65;
    v60[1] = v67;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t PromptCompletion.Candidate.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v124 = a2;
  v160[1] = *MEMORY[0x1E69E9840];
  v132 = type metadata accessor for InferenceResponse.FinishReason();
  v131 = *(v132 - 8);
  v3 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v130 = &v118 - v6;
  v128 = type metadata accessor for InferenceResponse.Moderation();
  v127 = *(v128 - 8);
  v7 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v120 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v118 - v10;
  v150 = type metadata accessor for Prompt.ToolCall.Function();
  v11 = *(v150 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for Prompt.ToolCall.Content();
  v14 = *(v148 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v158 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for Prompt.ToolCall.Kind();
  v17 = *(v147 - 8);
  v18 = v17[8];
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v118 - v21;
  v22 = type metadata accessor for Prompt.ToolCall();
  v157 = *(v22 - 8);
  v23 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v118 - v26;
  v144 = type metadata accessor for Prompt.ToolCall();
  v156 = *(v144 - 8);
  v27 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v159 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v125 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v126 = &v118 - v33;
  v34 = type metadata accessor for InferenceResponse.Content();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v155 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for InferenceResponse.Segment();
  v37 = *(v151 - 1);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v152 = &v118 - v41;
  v42 = type metadata accessor for PromptCompletion.Segment(0);
  v153 = *(v42 - 8);
  v43 = *(v153 + 8);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v46 = (&v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x1AC5A56C0](v44);
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  v133 = a1;
  if (v48)
  {
    v137 = v17;
    v138 = v14;
    v139 = v11;
    v140 = v22;
    v160[0] = MEMORY[0x1E69E7CC0];
    v50 = v47;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v51 = v160[0];
    v53 = *(v37 + 16);
    v52 = v37 + 16;
    v143 = v53;
    v54 = (*(v52 + 64) + 32) & ~*(v52 + 64);
    v136 = v50;
    v55 = v50 + v54;
    v142 = *(v52 + 56);
    v56 = (v52 - 8);
    v141 = v52;
    v57 = v151;
    do
    {
      v58 = v152;
      v59 = v143;
      v143(v152, v55, v57);
      v60 = v154;
      v59(v154, v58, v57);
      v61 = v155;
      InferenceResponse.Segment.content.getter();
      PromptCompletion.Content.init(_:)(v61, v46);
      v62 = *v56;
      (*v56)(v60, v57);
      v62(v58, v57);
      v160[0] = v51;
      v64 = v51[2];
      v63 = v51[3];
      if (v64 >= v63 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1);
        v51 = v160[0];
      }

      v51[2] = v64 + 1;
      outlined init with take of PromptCompletion.Segment(v46, v51 + ((v153[80] + 32) & ~v153[80]) + *(v153 + 9) * v64, type metadata accessor for PromptCompletion.Segment);
      v55 = v142 + v55;
      --v48;
    }

    while (v48);
    v123 = v51;

    a1 = v133;
    v22 = v140;
    v11 = v139;
    v14 = v138;
    v17 = v137;
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v123 = MEMORY[0x1E69E7CC0];
  }

  v65 = InferenceResponse.Candidate.toolCalls.getter();
  v66 = *(v65 + 16);
  v67 = v158;
  if (v66)
  {
    v160[0] = v49;
    v68 = v65;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
    v69 = v68;
    v70 = 0;
    v71 = v160[0];
    v153 = &v69[(*(v157 + 80) + 32) & ~*(v157 + 80)];
    v151 = (v14 + 88);
    v152 = (v157 + 16);
    LODWORD(v143) = *MEMORY[0x1E69C62B8];
    v142 = (v14 + 96);
    v141 = (v11 + 4);
    v140 = (v11 + 1);
    v139 = (v17 + 13);
    LODWORD(v138) = *MEMORY[0x1E69DA808];
    v137 = v17 + 2;
    v136 = (v17 + 1);
    v135 = (v157 + 8);
    v134 = v156 + 32;
    v72 = v122;
    v73 = v121;
    v154 = v66;
    v155 = v69;
    while (v70 < *(v69 + 2))
    {
      v74 = *(v157 + 16);
      v74(v73, &v153[*(v157 + 72) * v70], v22);
      v74(v72, v73, v22);
      Prompt.ToolCall.content.getter();
      v75 = v148;
      v76 = (*v151)(v67, v148);
      if (v76 != v143)
      {
        goto LABEL_32;
      }

      v77 = v22;
      (*v142)(v67, v75);
      v78 = v149;
      v79 = v150;
      (*v141)(v149, v67, v150);
      Prompt.ToolCall.Function.name.getter();
      Prompt.ToolCall.Function.arguments.getter();
      v80 = v145;
      Prompt.ToolCall.Function.init(name:arguments:)();
      (*v140)(v78, v79);
      v81 = v147;
      v82 = (*v139)(v80, v138, v147);
      v83 = MEMORY[0x1AC5A5000](v82);
      v85 = v84;
      v86 = v146;
      (*v137)(v146, v80, v81);
      MEMORY[0x1AC5A36E0](v83, v85, v86);
      (*v136)(v80, v81);
      v87 = *v135;
      (*v135)(v72, v77);
      v87(v73, v77);
      v160[0] = v71;
      v89 = v71[2];
      v88 = v71[3];
      v22 = v77;
      if (v89 >= v88 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1);
        v73 = v121;
        v72 = v122;
        v71 = v160[0];
      }

      ++v70;
      v71[2] = v89 + 1;
      (*(v156 + 32))(v71 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v89, v159, v144);
      v69 = v155;
      v67 = v158;
      if (v154 == v70)
      {
        v159 = v71;

        a1 = v133;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    v117 = v69;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v159 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v90 = v126;
  InferenceResponse.Candidate.moderation.getter();
  v91 = v125;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v90, v125, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v92 = v127;
  v93 = v128;
  v94 = (*(v127 + 48))(v91, 1, v128);
  v95 = v132;
  v96 = v131;
  v97 = v130;
  v98 = v129;
  if (v94 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v90, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
    v99 = 0;
  }

  else
  {
    v100 = v119;
    (*(v92 + 32))(v119, v91, v93);
    v101 = v90;
    v102 = v120;
    (*(v92 + 16))(v120, v100, v93);
    PromptCompletion.Moderation.init(_:)(v102, v160);
    (*(v92 + 8))(v100, v93);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v101, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
    v99 = v160[0];
  }

  InferenceResponse.Candidate.finishReason.getter();
  (*(v96 + 16))(v98, v97, v95);
  v103 = (*(v96 + 88))(v98, v95);
  if (v103 == *MEMORY[0x1E69C64A0])
  {
    (*(v96 + 8))(v97, v95);
    (*(v96 + 96))(v98, v95);
    v104 = *v98;
    v105 = v98[1];
  }

  else if (v103 == *MEMORY[0x1E69C6498])
  {
    (*(v96 + 8))(v97, v95);
    v104 = 0;
    v105 = 0;
  }

  else if (v103 == *MEMORY[0x1E69C64A8])
  {
    (*(v96 + 8))(v97, v95);
    v104 = 0;
    v105 = 1;
  }

  else
  {
    if (v103 != *MEMORY[0x1E69C6490])
    {
LABEL_32:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v96 + 8))(v97, v95);
    v104 = 0;
    v105 = 2;
  }

  InferenceResponse.Candidate.metadata.getter();
  v106 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v160[0] = 0;
  v108 = [v106 dataWithJSONObject:isa options:0 error:v160];

  v69 = v160[0];
  if (!v108)
  {
    goto LABEL_31;
  }

  v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  v112 = type metadata accessor for InferenceResponse.Candidate();
  (*(*(v112 - 8) + 8))(a1, v112);

  v114 = v124;
  v115 = v159;
  *v124 = v123;
  v114[1] = v115;
  v114[2] = v99;
  v114[3] = v104;
  v114[4] = v105;
  v114[5] = v109;
  v114[6] = v111;
  v116 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t InferenceResponse.Candidate.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v182 = *MEMORY[0x1E69E9840];
  v138 = type metadata accessor for InferenceResponse.FinishReason();
  v135 = *(v138 - 8);
  v3 = *(v135 + 64);
  v4 = MEMORY[0x1EEE9AC00](v138);
  v134 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v136 = &v122 - v6;
  v167 = type metadata accessor for Prompt.ToolCall.Function();
  v139 = *(v167 - 8);
  v7 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Prompt.ToolCall.Kind();
  v9 = *(v165 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v174 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Prompt.ToolCall.Content();
  v123 = *(v164 - 8);
  v12 = *(v123 + 64);
  v13 = MEMORY[0x1EEE9AC00](v164);
  v163 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v162 = &v122 - v15;
  v126 = type metadata accessor for Prompt.ToolCall();
  v173 = *(v126 - 8);
  v16 = *(v173 + 64);
  v17 = MEMORY[0x1EEE9AC00](v126);
  v125 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v122 - v19;
  v161 = type metadata accessor for Prompt.ToolCall();
  v172 = *(v161 - 8);
  v20 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v133 = &v122 - v24;
  v149 = type metadata accessor for URL();
  v159 = *(v149 - 8);
  v25 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for PromptCompletion.FileContent(0);
  v27 = *(*(v147 - 1) + 64);
  v28 = MEMORY[0x1EEE9AC00](v147);
  v146 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v154 = (&v122 - v30);
  v171 = type metadata accessor for PromptCompletion.Content(0);
  v31 = *(*(v171 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v171);
  v34 = (&v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v152 = &v122 - v35;
  v170 = type metadata accessor for InferenceResponse.Content();
  v36 = *(v170 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v170);
  v169 = (&v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v151 = &v122 - v40;
  v41 = type metadata accessor for PromptCompletion.Segment(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41 - 8);
  v177 = &v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v176 = &v122 - v46;
  v168 = type metadata accessor for InferenceResponse.Segment();
  v47 = *(v168 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v150 = &v122 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  v51 = a1[1];
  v52 = a1[3];
  v128 = a1[2];
  v130 = v52;
  v53 = a1[5];
  v129 = a1[4];
  v132 = v53;
  v131 = a1[6];
  v54 = *(v50 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  v175 = v51;
  v127 = v50;
  if (v54)
  {
    v122 = v9;
    v178 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
    v55 = v178;
    v56 = v50 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v158 = *(v42 + 72);
    v144 = *MEMORY[0x1E69C64C8];
    v157 = (v36 + 104);
    v143 = (v159 + 16);
    v142 = *MEMORY[0x1E69C64B8];
    v141 = *MEMORY[0x1E69C64D0];
    v140 = *MEMORY[0x1E69C64C0];
    v156 = (v36 + 32);
    v155 = v47 + 32;
    v57 = v152;
    v58 = v151;
    v159 = v47;
    v59 = v150;
    v145 = v34;
    do
    {
      v60 = v176;
      outlined init with copy of PromptCompletion.Annotation(v56, v176, type metadata accessor for PromptCompletion.Segment);
      v61 = v60;
      v62 = v177;
      outlined init with copy of PromptCompletion.Annotation(v61, v177, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of PromptCompletion.Annotation(v62, v57, type metadata accessor for PromptCompletion.Content);
      outlined init with copy of PromptCompletion.Annotation(v57, v34, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v67 = v154;
          outlined init with take of PromptCompletion.Segment(v34, v154, type metadata accessor for PromptCompletion.FileContent);
          v68 = v67;
          v69 = v146;
          outlined init with copy of PromptCompletion.Annotation(v68, v146, type metadata accessor for PromptCompletion.FileContent);
          (*v143)(v148, v69, v149);
          v70 = v147[6];
          v71 = v69 + v147[5];
          v72 = *(v71 + 8);
          v153 = *v71;
          v73 = v55;
          v74 = *(v69 + v70);
          v75 = *(v69 + v70 + 8);
          v76 = *(v69 + v147[7]);

          v77 = v169;
          v34 = v145;
          v59 = v150;
          v55 = v73;
          v57 = v152;
          InferenceResponse.FileContent.init(url:name:mimeType:size:)();
          outlined destroy of PromptCompletion.DocumentCitation(v57, type metadata accessor for PromptCompletion.Content);
          outlined destroy of PromptCompletion.DocumentCitation(v69, type metadata accessor for PromptCompletion.FileContent);
          v64 = v77;
          v58 = v151;
          outlined destroy of PromptCompletion.DocumentCitation(v154, type metadata accessor for PromptCompletion.FileContent);
          v66 = (&v174 + 4);
        }

        else
        {
          v64 = v169;
          MEMORY[0x1AC5A5490](*v34, v34[1]);
          outlined destroy of PromptCompletion.DocumentCitation(v57, type metadata accessor for PromptCompletion.Content);
          v66 = (&v176 + 4);
        }
      }

      else
      {
        v64 = v169;
        if (EnumCaseMultiPayload)
        {
          MEMORY[0x1AC5A54D0](*v34, v34[1]);
          outlined destroy of PromptCompletion.DocumentCitation(v57, type metadata accessor for PromptCompletion.Content);
          v66 = &v174;
        }

        else
        {
          v179 = *v34;
          v65 = *(v34 + 3);
          v180 = *(v34 + 1);
          v181 = v65;
          InferenceResponse.TextContent.init(_:)(&v179, v169);
          outlined destroy of PromptCompletion.DocumentCitation(v57, type metadata accessor for PromptCompletion.Content);
          v66 = (&v173 + 4);
        }
      }

      v78 = v170;
      (*v157)(v64, *(v66 - 64), v170);
      (*v156)(v58, v64, v78);
      InferenceResponse.Segment.init(content:)();
      outlined destroy of PromptCompletion.DocumentCitation(v177, type metadata accessor for PromptCompletion.Segment);
      outlined destroy of PromptCompletion.DocumentCitation(v176, type metadata accessor for PromptCompletion.Segment);
      v178 = v55;
      v80 = v55[2];
      v79 = v55[3];
      if (v80 >= v79 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79 > 1, v80 + 1, 1);
        v55 = v178;
      }

      v55[2] = v80 + 1;
      (*(v159 + 32))(v55 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v80, v59, v168);
      v56 += v158;
      --v54;
    }

    while (v54);
    v51 = v175;
    v81 = v139;
    v9 = v122;
  }

  else
  {
    v81 = v139;
  }

  v150 = v55;
  v82 = *(v51 + 16);
  v83 = v174;
  if (v82)
  {
    v179 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
    v84 = 0;
    v85 = v179;
    v171 = v51 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
    v169 = (v9 + 88);
    v170 = v173 + 16;
    LODWORD(v168) = *MEMORY[0x1E69DA808];
    v159 = v9 + 96;
    v158 = (v81 + 32);
    v157 = (v81 + 8);
    v156 = (v123 + 104);
    LODWORD(v155) = *MEMORY[0x1E69C62B8];
    v154 = (v123 + 16);
    v153 = (v123 + 8);
    v152 = (v173 + 8);
    v151 = (v172 + 32);
    v86 = v126;
    v87 = v125;
    v88 = v124;
    v176 = v82;
    v89 = v162;
    while (1)
    {
      if (v84 >= *(v175 + 16))
      {
        __break(1u);
      }

      v177 = v85;
      v90 = *(v173 + 16);
      v90(v88, v171 + *(v173 + 72) * v84, v86);
      v90(v87, v88, v86);
      Prompt.ToolCall.kind.getter();
      v91 = v165;
      v92 = (*v169)(v83, v165);
      if (v92 != v168)
      {
        break;
      }

      (*v159)(v83, v91);
      v93 = v166;
      v94 = v167;
      (*v158)(v166, v83, v167);
      Prompt.ToolCall.Function.name.getter();
      Prompt.ToolCall.Function.arguments.getter();
      Prompt.ToolCall.Function.init(name:arguments:)();
      (*v157)(v93, v94);
      v95 = v164;
      (*v156)(v89, v155, v164);
      Prompt.ToolCall.id.getter();
      (*v154)(v163, v89, v95);
      v96 = v160;
      Prompt.ToolCall.init(id:content:)();
      (*v153)(v89, v95);
      v97 = *v152;
      (*v152)(v87, v86);
      v97(v88, v86);
      v85 = v177;
      v179 = v177;
      v99 = *(v177 + 16);
      v98 = *(v177 + 24);
      if (v99 >= v98 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v98 > 1, v99 + 1, 1);
        v85 = v179;
      }

      ++v84;
      *(v85 + 16) = v99 + 1;
      (*(v172 + 32))(v85 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v99, v96, v161);
      v83 = v174;
      if (v176 == v84)
      {
        goto LABEL_22;
      }
    }

    v118 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
LABEL_22:
    v100 = v133;
    v101 = v131;
    v102 = v130;
    v103 = v129;
    v104 = v128;
    if (v128)
    {
      swift_bridgeObjectRetain_n();
      v105 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_0F3Kit17InferenceResponseVAIVAKV_AsMOts5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j9O0C3Kit17lm42VADVAFVAmHOIgnnrr_AG3key_AI5valuetAN_AOts5N96OIegnrzr_TR03_s9c5Kit17ij3V10e3V15ab9EyAeF0A10d10VADVcfcAE8f6V_AE11g7OtAiJV_Z8LOtXEfU_Tf3nnnpf_nTf1cn_n(v104);

      if (*(v105 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
        v106 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v106 = MEMORY[0x1E69E7CC8];
      }

      v179 = v106;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v105, 1, &v179);
      InferenceResponse.Moderation.init(ratings:)();

      v107 = 0;
    }

    else
    {
      v107 = 1;
    }

    v108 = v136;
    v109 = v134;
    v110 = type metadata accessor for InferenceResponse.Moderation();
    (*(*(v110 - 8) + 56))(v100, v107, 1, v110);
    if (v103 >= 3)
    {
      *v109 = v102;
      v109[1] = v103;
      v111 = MEMORY[0x1E69C64A0];
    }

    else
    {
      v111 = qword_1E795FC28[v103];
    }

    v112 = v138;
    v113 = v135;
    (*(v135 + 104))(v109, *v111, v138);
    (*(v113 + 32))(v108, v109, v112);
    v114 = objc_opt_self();
    outlined copy of FinishReason(v102, v103);
    v115 = v132;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v178 = 0;
    v117 = [v114 JSONObjectWithData:isa options:0 error:&v178];

    v118 = v178;
    if (v117)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();

      outlined consume of FinishReason(v102, v103);
      outlined consume of Data._Representation(v115, v101);
      result = InferenceResponse.Candidate.init(segments:toolCalls:moderation:finishReason:metadata:)();
      v120 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  v121 = v118;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Prompt.Rendering.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = type metadata accessor for InferenceResponse.PromptRendering.Source();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Prompt.Rendering.Source();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  InferenceResponse.PromptRendering.source.getter();
  InferenceResponse.PromptRendering.Source.identifier.getter();
  v13 = *(v4 + 8);
  v13(v10, v3);
  InferenceResponse.PromptRendering.source.getter();
  InferenceResponse.PromptRendering.Source.version.getter();
  v13(v7, v3);
  v14 = Prompt.Rendering.Source.init(identifier:version:)();
  MEMORY[0x1AC5A5290](v14);
  InferenceResponse.PromptRendering.renderedString.getter();
  InferenceResponse.PromptRendering.originalPrompt.getter();
  InferenceResponse.PromptRendering.tokenIDs.getter();
  InferenceResponse.PromptRendering.userInfo.getter();
  InferenceResponse.PromptRendering.detokenizedString.getter();
  Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
  v15 = type metadata accessor for InferenceResponse.PromptRendering();
  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t InferenceResponse.PromptRendering.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = type metadata accessor for Prompt.Rendering.Source();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = type metadata accessor for InferenceResponse.PromptRendering.Source();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  Prompt.Rendering.source.getter();
  Prompt.string.getter();
  v13 = *(v4 + 8);
  v13(v10, v3);
  Prompt.Rendering.source.getter();
  Prompt.Rendering.Source.version.getter();
  v13(v8, v3);
  InferenceResponse.PromptRendering.Source.init(identifier:version:)();
  Prompt.Rendering.segments.getter();
  Prompt.Rendering.renderedString.getter();
  Prompt.Rendering.originalPrompt.getter();
  Prompt.Rendering.tokenIDs.getter();
  Prompt.Rendering.userInfo.getter();
  Prompt.Rendering.detokenizedString.getter();
  InferenceResponse.PromptRendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
  v14 = type metadata accessor for Prompt.Rendering();
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t PromptCompletion.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v101 = a2;
  v119[3] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for InferenceResponse.PromptRendering();
  v109 = *(v3 - 8);
  v4 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v90 - v7;
  v99 = type metadata accessor for InferenceResponse.Candidate();
  v111 = *(v99 - 8);
  v8 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v113 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v90 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v110 = &v90 - v19;
  v20 = type metadata accessor for InferenceResponse.Usage();
  v103 = *(v20 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for InferenceResponse.Moderation();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v90 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v90 - v35;
  v37 = type metadata accessor for InferenceResponse.ModelInformation();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  InferenceResponse.modelInformation.getter();
  ModelInformation.init(_:)(v40, v119);
  v107 = v119[0];
  v100 = v119[1];
  v108 = v119[2];
  InferenceResponse.promptModeration.getter();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v33, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v41 = 0;
  if ((*(v24 + 48))(v33, 1, v23) != 1)
  {
    (*(v24 + 32))(v29, v33, v23);
    v42 = v104;
    (*(v24 + 16))(v104, v29, v23);
    PromptCompletion.Moderation.init(_:)(v42, &v115);
    v41 = v115;
    (*(v24 + 8))(v29, v23);
  }

  v104 = v41;
  v43 = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v44 = MEMORY[0x1AC5A5390](v43);
  v45 = *(v44 + 16);
  if (v45)
  {
    v94 = v20;
    v95 = v3;
    v96 = a1;
    v114 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
    v46 = v114;
    v47 = v111 + 16;
    v48 = *(v111 + 16);
    v49 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v93 = v44;
    v50 = v44 + v49;
    v111 = *(v111 + 72);
    v51 = (v47 - 8);
    v52 = v99;
    do
    {
      v53 = v112;
      v48(v112, v50, v52);
      v54 = v113;
      v48(v113, v53, v52);
      PromptCompletion.Candidate.init(_:)(v54, &v115);
      (*v51)(v53, v52);
      v55 = v115;
      v56 = v116;
      v57 = v117;
      v58 = v118;
      v114 = v46;
      v60 = *(v46 + 16);
      v59 = *(v46 + 24);
      if (v60 >= v59 >> 1)
      {
        v92 = v115;
        v91 = v116;
        v90 = v117;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
        v57 = v90;
        v56 = v91;
        v55 = v92;
        v52 = v99;
        v46 = v114;
      }

      *(v46 + 16) = v60 + 1;
      v61 = v46 + 56 * v60;
      *(v61 + 32) = v55;
      *(v61 + 48) = v56;
      *(v61 + 64) = v57;
      *(v61 + 80) = v58;
      v50 += v111;
      --v45;
    }

    while (v45);

    a1 = v96;
    v3 = v95;
    v20 = v94;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v62 = v102;
  InferenceResponse.usage.getter();
  v113 = InferenceResponse.Usage.promptTokenCount.getter();
  v112 = InferenceResponse.Usage.completionTokenCount.getter();
  (*(v103 + 8))(v62, v20);
  InferenceResponse.metadata.getter();
  v63 = v106;
  v64 = a1;
  InferenceResponse.renderedPrompt.getter();
  v65 = v105;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v105, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  v66 = v109;
  v67 = 1;
  v68 = (*(v109 + 48))(v65, 1, v3);
  v69 = v110;
  if (v68 != 1)
  {
    v70 = v97;
    (*(v66 + 32))(v97, v65, v3);
    v71 = v98;
    (*(v66 + 16))(v98, v70, v3);
    Prompt.Rendering.init(_:)(v71, v69);
    (*(v66 + 8))(v70, v3);
    v67 = 0;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  v72 = type metadata accessor for Prompt.Rendering();
  v73 = *(*(v72 - 8) + 56);
  v73(v69, v67, 1, v72);
  v74 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v115 = 0;
  v76 = [v74 dataWithJSONObject:isa options:0 error:&v115];

  if (!v76)
  {
    v89 = v115;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v77 = v115;

  v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81 = type metadata accessor for InferenceResponse();
  (*(*(v81 - 8) + 8))(v64, v81);
  v82 = v101;
  v101[3] = 0;
  v83 = *(type metadata accessor for PromptCompletion(0) + 36);
  v73(v82 + v83, 1, 1, v72);
  v84 = v100;
  *v82 = v107;
  v82[1] = v84;
  v82[2] = v108;
  v85 = v82[3];

  v82[3] = v104;
  v82[4] = v46;
  v86 = v112;
  v82[5] = v113;
  v82[6] = v86;
  v82[7] = v78;
  v82[8] = v80;
  result = outlined assign with take of Prompt.Rendering?(v69, v82 + v83);
  v88 = *MEMORY[0x1E69E9840];
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t *a3)
{
  v74 = a3;
  v6 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for InferenceResponse.Moderation.Category();
  v70 = *(v73 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v62 - v15;
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_24;
  }

  v62[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v14 + 48);
  v18 = *(v69 + 80);
  v67 = a1;
  v19 = a1 + ((v18 + 32) & ~v18);
  v20 = (v70 + 32);
  v21 = (v71 + 32);
  v64 = v19;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v16, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  v63 = *v20;
  v63(v11, v16, v73);
  v22 = *v21;
  v65 = v17;
  v68 = v6;
  v23 = v6;
  v24 = v22;
  v22(v72, &v16[v17], v23);
  v25 = *v74;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  v28 = *(v25 + 16);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v26;
  if (*(v25 + 24) >= v30)
  {
    if (a2)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v32 = v74;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, a2 & 1);
  v33 = *v32;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  if ((v31 & 1) == (v35 & 1))
  {
    v27 = v34;
    if ((v31 & 1) == 0)
    {
LABEL_14:
      v37 = v73;
      v38 = *v74;
      *(*v74 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v63((v38[6] + *(v70 + 72) * v27), v11, v37);
      v39 = v68;
      v24((v38[7] + *(v71 + 72) * v27), v72, v68);
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v38[2] = v42;
      if (v66 != 1)
      {
        v43 = 1;
        while (v43 < *(v67 + 16))
        {
          outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v64 + *(v69 + 72) * v43, v16, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
          v44 = *v20;
          (*v20)(v11, v16, v73);
          v45 = *v21;
          (*v21)(v72, &v16[v65], v39);
          v46 = *v74;
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
          v49 = *(v46 + 16);
          v50 = (v48 & 1) == 0;
          v41 = __OFADD__(v49, v50);
          v51 = v49 + v50;
          if (v41)
          {
            goto LABEL_26;
          }

          v52 = v48;
          if (*(v46 + 24) < v51)
          {
            v53 = v74;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, 1);
            v54 = *v53;
            v47 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
            if ((v52 & 1) != (v55 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v52)
          {
            goto LABEL_11;
          }

          v56 = v73;
          v57 = *v74;
          *(*v74 + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v58 = v47;
          v44((v57[6] + *(v70 + 72) * v47), v11, v56);
          v59 = v57[7] + *(v71 + 72) * v58;
          v39 = v68;
          v45(v59, v72, v68);
          v60 = v57[2];
          v41 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v41)
          {
            goto LABEL_27;
          }

          ++v43;
          v57[2] = v61;
          if (v66 == v43)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v36 = swift_allocError();
    swift_willThrow();

    v77 = v36;
    MEMORY[0x1AC5A6AE0](v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v71 + 8))(v72, v68);
      (*(v70 + 8))(v11, v73);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined init with take of (InferenceResponse.Moderation.Category, InferenceResponse.Moderation.Probability)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PromptCompletion.DocumentCitation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PromptCompletionStream.collect()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v9(a1);
}

double PromptCompletionEventCandidateTextDelta.init(responseIdentifier:candidateIdentifier:segmentIndex:textDelta:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = 0.0;
  *(a8 + 56) = xmmword_1ABA1D8C0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

id PromptCompletionEventResponseMetadata.metadata.getter()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    result = v10[0];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id PromptCompletionEventCandidateFinished.metadata.getter()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    result = v10[0];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t PromptCompletionStream.init<A>(streamResponse:bufferResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v16, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  (*(v12 + 32))(v18 + v17, v15, a4);
  v19 = swift_allocObject();
  (*(v12 + 8))(a1, a4);
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 2) = v19;
  *(v20 + 3) = partial apply for closure #1 in PromptCompletionStream.init<A>(streamResponse:bufferResponse:);
  *(v20 + 4) = v18;
  v21 = swift_allocObject();
  *(v21 + 2) = v19;
  *(v21 + 3) = a2;
  *(v21 + 4) = a3;
  *a6 = partial apply for closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a6[1] = v20;
  a6[2] = &async function pointer to partial apply for closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a6[3] = v21;
}

uint64_t closure #1 in PromptCompletionStream.init<A>(streamResponse:bufferResponse:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSci_p15TokenGeneration21PromptCompletionEvent_p7ElementSciRts_s5Error_p7FailureSciRtsXPMd, &_sSci_p15TokenGeneration21PromptCompletionEvent_p7ElementSciRts_s5Error_p7FailureSciRtsXPMR);
  return swift_dynamicCast();
}

uint64_t PromptCompletionStream.init(streamResponse:bufferResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  *a5 = closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[1] = v11;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = a4;
  a5[2] = &closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[3] = v12;
}

void *protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance PromptCompletionStream.TriggeredState@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result > 2uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = 0;
  atomic_compare_exchange_strong((a1 + 16), &v2, 1uLL);
  if (v2 > 2)
  {
    __break(1u);
  }

  else if (!v2)
  {
    return a2();
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x1AC5A5BC0](0xD000000000000032, 0x80000001ABA416E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:), 0, 0);
}

void closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)()
{
  v1 = 0;
  atomic_compare_exchange_strong((*(v0 + 40) + 16), &v1, 2uLL);
  if (v1 > 2)
  {
    __break(1u);
  }

  else if (v1)
  {
    _StringGuts.grow(_:)(52);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x1AC5A5BC0](0xD000000000000032, 0x80000001ABA416A0);
    *(v0 + 72) = v1;
    _print_unlocked<A, B>(_:_:)();
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v8 = (*(v0 + 48) + **(v0 + 48));
    v2 = *(*(v0 + 48) + 4);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);

    v8(v5);
  }
}

uint64_t closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PromptCompletionStream.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v3(v13);
  v5 = v14;
  v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  (*(v10 + 16))(&v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t PromptCompletionStream.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PromptCompletionStream.AsyncIterator.next(), 0, 0);
}

uint64_t PromptCompletionStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = PromptCompletionStream.AsyncIterator.next();
  v6 = v0[2];

  return MEMORY[0x1EEE6D8C8](v6, v2, v3);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator()
{
  static Task<>.checkCancellation()();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator;
  v6 = v0[2];

  return MEMORY[0x1EEE6D8C8](v6, v2, v3);
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, 0, 0);
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  static Task<>.checkCancellation()();
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v6 = v0[3];

  return MEMORY[0x1EEE6D8C8](v6, v2, v3);
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v2[9] = v0;
    if (v2[4])
    {
      v5 = v2[5];
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_, v6, v8);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance PromptCompletionStream@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  (*v1)(v13);
  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  (*(v9 + 16))(&v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v10 = *(v1 + 24);
}

uint64_t PromptCompletionEventModelInformation.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventModelInformation.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventModelInformation.modelInformation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 PromptCompletionEventModelInformation.modelInformation.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);

  result = v6;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  return result;
}

void __swiftcall PromptCompletionEventModelInformation.init(responseIdentifier:modelInformation:)(TokenGeneration::PromptCompletionEventModelInformation *__return_ptr retstr, Swift::String responseIdentifier, TokenGeneration::ModelInformation modelInformation)
{
  v3 = *modelInformation.assets._rawValue;
  retstr->responseIdentifier = responseIdentifier;
  retstr->modelInformation.assets._rawValue = v3;
  retstr->modelInformation.systemVersion = *(modelInformation.assets._rawValue + 8);
}

void PromptCompletionEventModelInformation.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v6);
  if (v7)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int PromptCompletionEventModelInformation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventModelInformation()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventModelInformation(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v6);
  if (v7)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventModelInformation()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t PromptCompletionEventPromptModeration.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventPromptModeration.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventPromptModeration.moderation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

TokenGeneration::PromptCompletionEventPromptModeration __swiftcall PromptCompletionEventPromptModeration.init(responseIdentifier:moderation:)(Swift::String responseIdentifier, TokenGeneration::PromptCompletion::Moderation moderation)
{
  v3 = *moderation.ratings._rawValue;
  *v2 = responseIdentifier;
  v2[1]._countAndFlagsBits = v3;
  result.responseIdentifier = responseIdentifier;
  result.moderation = moderation;
  return result;
}

uint64_t PromptCompletionEventPromptModeration.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  String.hash(into:)();

  return specialized Dictionary<>.hash(into:)(a1, v5);
}

Swift::Int PromptCompletionEventPromptModeration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventPromptModeration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventPromptModeration(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  String.hash(into:)();

  return specialized Dictionary<>.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventPromptModeration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateModeration.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromptCompletionEventCandidateModeration.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateModeration.moderation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

void __swiftcall PromptCompletionEventCandidateModeration.init(responseIdentifier:candidateIdentifier:moderation:)(TokenGeneration::PromptCompletionEventCandidateModeration *__return_ptr retstr, Swift::String responseIdentifier, Swift::String candidateIdentifier, TokenGeneration::PromptCompletion::Moderation moderation)
{
  v4 = *moderation.ratings._rawValue;
  retstr->responseIdentifier = responseIdentifier;
  retstr->candidateIdentifier = candidateIdentifier;
  retstr->moderation.ratings._rawValue = v4;
}

uint64_t PromptCompletionEventCandidateModeration.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  String.hash(into:)();

  return specialized Dictionary<>.hash(into:)(a1, v7);
}

Swift::Int PromptCompletionEventCandidateModeration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v7, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventCandidateModeration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v7, v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateModeration(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  String.hash(into:)();

  return specialized Dictionary<>.hash(into:)(a1, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateModeration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v7, v5);
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateTextDelta.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateTextDelta.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateTextDelta.textDelta.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta.textDelta.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateTextDelta._userInfo.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void PromptCompletionEventCandidateTextDelta.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);
  String.hash(into:)();
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int PromptCompletionEventCandidateTextDelta.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);
  String.hash(into:)();
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateTextDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);
  String.hash(into:)();
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateTextDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);
  String.hash(into:)();
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateAnnotation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v0[4]);
  v5 = (v0 + *(type metadata accessor for PromptCompletionEventCandidateAnnotation(0) + 28));
  MEMORY[0x1AC5A6570](*v5);
  v6 = v5 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  return PromptCompletion.Annotation.Type.hash(into:)();
}

Swift::Int PromptCompletionEventCandidateAnnotation.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v0[4]);
  v5 = (v0 + *(type metadata accessor for PromptCompletionEventCandidateAnnotation(0) + 28));
  MEMORY[0x1AC5A6570](*v5);
  v6 = v5 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  PromptCompletion.Annotation.Type.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventCandidateAnnotation(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = v1[2];
  v6 = v1[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v1[4]);
  v7 = (v1 + *(a1 + 28));
  MEMORY[0x1AC5A6570](*v7);
  v8 = v7 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  PromptCompletion.Annotation.Type.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateAnnotation(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2[4]);
  v8 = (v2 + *(a2 + 28));
  MEMORY[0x1AC5A6570](*v8);
  v9 = v8 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  return PromptCompletion.Annotation.Type.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateAnnotation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2[4]);
  v8 = (v2 + *(a2 + 28));
  MEMORY[0x1AC5A6570](*v8);
  v9 = v8 + *(type metadata accessor for PromptCompletion.Annotation(0) + 20);
  PromptCompletion.Annotation.Type.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateToolCallDelta.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.toolCallIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.toolCallIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.functionName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.functionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.argumentsDelta.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.argumentsDelta.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta._userInfo.getter()
{
  v1 = *(v0 + 80);
  outlined copy of Data?(v1, *(v0 + 88));
  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double PromptCompletionEventCandidateToolCallDelta.init(responseIdentifier:candidateIdentifier:toolCallIdentifier:functionName:argumentsDelta:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  result = 0.0;
  *(a9 + 80) = xmmword_1ABA1D8C0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

void PromptCompletionEventCandidateToolCallDelta.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v12 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int PromptCompletionEventCandidateToolCallDelta.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v12 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateToolCallDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v12 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateToolCallDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v12 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateFileGeneration.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromptCompletionEventCandidateFileGeneration.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateAnnotation.init(responseIdentifier:candidateIdentifier:segmentIndex:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(void)@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v12 = a7(0);
  return outlined init with take of PromptCompletion.Annotation(a6, a9 + *(v12 + 28), a8);
}

uint64_t PromptCompletionEventCandidateFileGeneration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v0[4]);
  v5 = v0 + *(type metadata accessor for PromptCompletionEventCandidateFileGeneration(0) + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v6 = type metadata accessor for PromptCompletion.FileContent(0);
  v7 = &v5[v6[5]];
  v8 = *v7;
  v9 = *(v7 + 1);
  String.hash(into:)();
  v10 = &v5[v6[6]];
  v11 = *v10;
  v12 = *(v10 + 1);
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*&v5[v6[7]]);
}

Swift::Int PromptCompletionEventCandidateFileGeneration.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v0[4]);
  v5 = v0 + *(type metadata accessor for PromptCompletionEventCandidateFileGeneration(0) + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v6 = type metadata accessor for PromptCompletion.FileContent(0);
  v7 = &v5[v6[5]];
  v8 = *v7;
  v9 = *(v7 + 1);
  String.hash(into:)();
  v10 = &v5[v6[6]];
  v11 = *v10;
  v12 = *(v10 + 1);
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*&v5[v6[7]]);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateFileGeneration(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2[4]);
  v8 = v2 + *(a2 + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for PromptCompletion.FileContent(0);
  v10 = &v8[v9[5]];
  v11 = *v10;
  v12 = *(v10 + 1);
  String.hash(into:)();
  v13 = &v8[v9[6]];
  v14 = *v13;
  v15 = *(v13 + 1);
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*&v8[v9[7]]);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateFileGeneration(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2[4]);
  v8 = v2 + *(a2 + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for PromptCompletion.FileContent(0);
  v10 = &v8[v9[5]];
  v11 = *v10;
  v12 = *(v10 + 1);
  String.hash(into:)();
  v13 = &v8[v9[6]];
  v14 = *v13;
  v15 = *(v13 + 1);
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*&v8[v9[7]]);
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateAudioGeneration.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.audio.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of Data._Representation(v2, v3);
}

uint64_t PromptCompletionEventCandidateImageGeneration.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of Data._Representation(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 PromptCompletionEventCandidateAudioGeneration.init(responseIdentifier:candidateIdentifier:segmentIndex:audio:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  result = *a6;
  *(a7 + 40) = *a6;
  return result;
}

uint64_t PromptCompletionEventCandidateImageGeneration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);

  return Data.hash(into:)();
}

Swift::Int PromptCompletionEventCandidateImageGeneration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateImageGeneration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateFinished.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventCandidateFinished.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateFinished.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromptCompletionEventCandidateFinished.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateFinished.finishReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of FinishReason(v2, v3);
}

uint64_t PromptCompletionEventCandidateFinished.finishReason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of FinishReason(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

void PromptCompletionEventCandidateFinished.init(responseIdentifier:candidateIdentifier:finishReason:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v12 = *a5;
  v11 = a5[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:0 error:v22];

  v16 = v22[0];
  if (!v15)
  {
    v21 = v16;
    outlined consume of FinishReason(v12, v11);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = v12;
  a6[5] = v11;
  a6[6] = v17;
  a6[7] = v19;
  v20 = *MEMORY[0x1E69E9840];
}

void PromptCompletionEventCandidateFinished.init(responseIdentifier:candidateIdentifier:finishReason:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v11 = *a5;
  v12 = a5[1];
  v13 = objc_opt_self();
  outlined copy of FinishReason(v11, v12);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:0 error:v21];

  v16 = v21[0];
  outlined consume of FinishReason(v11, v12);
  if (!v15)
  {

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = v11;
  a6[5] = v12;
  a6[6] = v17;
  a6[7] = v19;
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t PromptCompletionEventCandidateFinished.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  String.hash(into:)();
  switch(v6)
  {
    case 0:
      v9 = 0;
      goto LABEL_7;
    case 1:
      v9 = 2;
      goto LABEL_7;
    case 2:
      v9 = 3;
LABEL_7:
      MEMORY[0x1AC5A6570](v9);
      goto LABEL_9;
  }

  MEMORY[0x1AC5A6570](1);
  String.hash(into:)();
LABEL_9:

  return Data.hash(into:)();
}

Swift::Int PromptCompletionEventCandidateFinished.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = 2;
    }

    else
    {
      if (v6 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        goto LABEL_9;
      }

      v9 = 3;
    }
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1AC5A6570](v9);
LABEL_9:
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateFinished()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  String.hash(into:)();
  switch(v6)
  {
    case 0:
      v9 = 0;
      goto LABEL_7;
    case 1:
      v9 = 2;
      goto LABEL_7;
    case 2:
      v9 = 3;
LABEL_7:
      MEMORY[0x1AC5A6570](v9);
      goto LABEL_9;
  }

  MEMORY[0x1AC5A6570](1);
  String.hash(into:)();
LABEL_9:

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateFinished()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = 2;
    }

    else
    {
      if (v6 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        goto LABEL_9;
      }

      v9 = 3;
    }
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1AC5A6570](v9);
LABEL_9:
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventUsage.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventUsage.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 PromptCompletionEventUsage.usage.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 PromptCompletionEventUsage.usage.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

TokenGeneration::PromptCompletionEventUsage __swiftcall PromptCompletionEventUsage.init(responseIdentifier:usage:)(Swift::String responseIdentifier, TokenGeneration::Usage usage)
{
  *v2 = responseIdentifier;
  *(v2 + 16) = *usage.promptTokenCount;
  result.usage = usage;
  result.responseIdentifier = responseIdentifier;
  return result;
}

BOOL static PromptCompletionEventUsage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t PromptCompletionEventUsage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v3);
  return MEMORY[0x1AC5A6570](v4);
}

Swift::Int PromptCompletionEventUsage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v3);
  MEMORY[0x1AC5A6570](v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventUsage()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v3);
  MEMORY[0x1AC5A6570](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventUsage()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v3);
  return MEMORY[0x1AC5A6570](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventUsage()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v3);
  MEMORY[0x1AC5A6570](v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletionEventUsage(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t PromptCompletionEventRenderedPrompt.responseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptCompletionEventRenderedPrompt.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventRenderedPrompt.renderedPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PromptCompletionEventRenderedPrompt.renderedPrompt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PromptCompletionEventRenderedPrompt.init(responseIdentifier:renderedPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  v7 = type metadata accessor for Prompt.Rendering();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static PromptCompletionEventRenderedPrompt.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v3 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);

    JUMPOUT(0x1AC5A3840);
  }

  return 0;
}

uint64_t PromptCompletionEventRenderedPrompt.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PromptCompletionEventRenderedPrompt.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventRenderedPrompt(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = *(a1 + 20);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventRenderedPrompt(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventRenderedPrompt(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletionEventRenderedPrompt(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(a3 + 20);

    JUMPOUT(0x1AC5A3840);
  }

  return 0;
}

void PromptCompletionEventResponseMetadata.init(responseIdentifier:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15[0] = 0;
  v8 = [v6 dataWithJSONObject:isa options:0 error:v15];

  v9 = v15[0];
  if (!v8)
  {
    v14 = v9;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v10;
  a3[3] = v12;
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t static PromptCompletionEventResponseMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t PromptCompletionEventResponseMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int PromptCompletionEventResponseMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventResponseMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventResponseMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventResponseMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletionEventResponseMetadata(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t specialized static PromptCompletionEventPromptModeration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v2, v3);

  return v5 & 1;
}

uint64_t specialized static PromptCompletionEventCandidateFileGeneration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  v6 = *(type metadata accessor for PromptCompletionEventCandidateFileGeneration(0) + 28);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for PromptCompletion.FileContent(0);
  v10 = v9[5];
  v11 = *&v7[v10];
  v12 = *&v7[v10 + 8];
  v13 = &v8[v10];
  v14 = v11 == *v13 && v12 == *(v13 + 1);
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v15 = v9[6], v16 = *&v7[v15], v17 = *&v7[v15 + 8], v18 = &v8[v15], v16 == *v18) ? (v19 = v17 == *(v18 + 1)) : (v19 = 0), (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *&v7[v9[7]] == *&v8[v9[7]]))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static PromptCompletionEventCandidateAudioGeneration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v4 != v10)
  {
    return 0;
  }

  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data._Representation(v9, v11);
  v12 = specialized static Data.== infix(_:_:)(v5, v6, v9, v11);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v5, v6);
  return v12 & 1;
}

BOOL specialized static PromptCompletionEventModelInformation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(v2, v5))
    {
      if (!v3)
      {

        if (!v7)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v7)
      {
        if (v4 == v6 && v3 == v7)
        {

LABEL_17:

          return 1;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return (v11 & 1) != 0;
      }
    }

LABEL_13:

    return 0;
  }

  return result;
}

uint64_t specialized static PromptCompletionEventCandidateFinished.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v14 = a1[7];
  v15 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = v3;
  v19 = v5;
  v16 = v8;
  v17 = v9;
  outlined copy of FinishReason(v3, v5);
  outlined copy of FinishReason(v8, v9);
  v12 = specialized static FinishReason.== infix(_:_:)(&v18, &v16);
  outlined consume of FinishReason(v16, v17);
  outlined consume of FinishReason(v18, v19);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v15, v14, v10, v11);
}

BOOL specialized static PromptCompletionEventCandidateTextDelta.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v18 = a1[7];
  v19 = a1[8];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v16 = a2[7];
  v17 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v4 == v8)
  {
    if (v3 != v9)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v12 & 1) != 0 && v3 == v9)
  {
LABEL_10:
    if (v5 == v10 && v6 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v19 >> 60 == 15)
      {
        v14 = v17;
        if (v17 >> 60 == 15)
        {
          outlined copy of Data?(v18, v19);
          outlined copy of Data?(v16, v17);
          outlined consume of Data?(v18, v19);
          return 1;
        }
      }

      else
      {
        v14 = v17;
        if (v17 >> 60 != 15)
        {
          outlined copy of Data?(v18, v19);
          outlined copy of Data?(v16, v17);
          v15 = specialized static Data.== infix(_:_:)(v18, v19, v16, v17);
          outlined consume of Data?(v16, v17);
          outlined consume of Data?(v18, v19);
          return (v15 & 1) != 0;
        }
      }

      outlined copy of Data?(v18, v19);
      outlined copy of Data?(v16, v14);
      outlined consume of Data?(v18, v19);
      outlined consume of Data?(v16, v14);
    }

    return 0;
  }

  return result;
}

BOOL specialized static PromptCompletionEventCandidateAnnotation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a1[4] == a2[4])
    {
      v6 = *(type metadata accessor for PromptCompletionEventCandidateAnnotation(0) + 28);
      v7 = (a1 + v6);
      v8 = (a2 + v6);
      if (*v7 == *v8)
      {
        v9 = type metadata accessor for PromptCompletion.Annotation(0);
        if (specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(v7 + *(v9 + 20), v8 + *(v9 + 20)))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t specialized static PromptCompletionEventCandidateModeration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v3, v7);

  return v10 & 1;
}

BOOL specialized static PromptCompletionEventCandidateToolCallDelta.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v23 = a1[7];
  v24 = a1[6];
  v21 = a1[9];
  v22 = a1[8];
  v17 = a1[10];
  v18 = a1[11];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v19 = a2[9];
  v20 = a2[8];
  v15 = a2[10];
  v16 = a2[11];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v5 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v24 != v10 || v23 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v22 != v20 || v21 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v18 >> 60 == 15)
  {
    v12 = v16;
    if (v16 >> 60 == 15)
    {
      outlined copy of Data?(v17, v18);
      outlined copy of Data?(v15, v16);
      outlined consume of Data?(v17, v18);
      return 1;
    }

    goto LABEL_20;
  }

  v12 = v16;
  if (v16 >> 60 == 15)
  {
LABEL_20:
    outlined copy of Data?(v17, v18);
    outlined copy of Data?(v15, v12);
    outlined consume of Data?(v17, v18);
    outlined consume of Data?(v15, v12);
    return 0;
  }

  outlined copy of Data?(v17, v18);
  outlined copy of Data?(v15, v16);
  v14 = specialized static Data.== infix(_:_:)(v17, v18, v15, v16);
  outlined consume of Data?(v15, v16);
  outlined consume of Data?(v17, v18);
  return (v14 & 1) != 0;
}

uint64_t _s15TokenGeneration16PromptCompletionV10AnnotationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator;
  if (!lazy protocol witness table cache variable for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionStream(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptCompletionStream(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventPromptModeration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEventPromptModeration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionEventCandidateAnnotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateImageGeneration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateImageGeneration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateFinished(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateFinished(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionEventRenderedPrompt()
{
  result = type metadata accessor for Prompt.Rendering();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEventUsage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState;
  if (!lazy protocol witness table cache variable for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74706D6F72705FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x7461646174656D5FLL;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001ABA3F3F0;
    }

    else
    {
      v5 = 0xE900000000000061;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x5674706D6F72705FLL;
    }

    else
    {
      v4 = 0x74706D6F72705FLL;
    }

    if (v3)
    {
      v5 = 0xEE00746E61697261;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000013;
  v8 = 0x80000001ABA3F3F0;
  if (a2 != 2)
  {
    v7 = 0x7461646174656D5FLL;
    v8 = 0xE900000000000061;
  }

  if (a2)
  {
    v2 = 0x5674706D6F72705FLL;
    v6 = 0xEE00746E61697261;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xD000000000000013;
    v13 = 0x80000001ABA3F3F0;
    if (a1 != 2)
    {
      v12 = 0x74656D617261705FLL;
      v13 = 0xEB00000000737265;
    }

    v14 = 0x5674706D6F72705FLL;
    if (a1)
    {
      v11 = 0xEE00746E61697261;
    }

    else
    {
      v14 = 0x74706D6F72705FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x746E656D75636F64;
    v4 = 0xE900000000000073;
    v5 = 0x69617274736E6F63;
    v6 = 0xEB0000000073746ELL;
    if (a1 != 7)
    {
      v5 = 0x7461646174656D5FLL;
      v6 = 0xE900000000000061;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x736C6F6F745FLL;
    if (a1 != 4)
    {
      v8 = 0x6F68436C6F6F745FLL;
      v7 = 0xEB00000000656369;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xEE00746E61697261;
        if (v9 != 0x5674706D6F72705FLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x74706D6F72705FLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v15 = 0x80000001ABA3F3F0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x74656D617261705FLL;
    v17 = 7565925;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE900000000000073;
        if (v9 != 0x746E656D75636F64)
        {
          goto LABEL_52;
        }
      }

      else if (a2 == 7)
      {
        v15 = 0xEB0000000073746ELL;
        if (v9 != 0x69617274736E6F63)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE900000000000061;
        if (v9 != 0x7461646174656D5FLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x736C6F6F745FLL)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x6F68436C6F6F745FLL;
    v17 = 6644585;
  }

  v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v9 != v16)
  {
LABEL_52:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000737265;
  v5 = 0x7461646174656D5FLL;
  if (a1 == 2)
  {
    v5 = 0x74656D617261705FLL;
  }

  else
  {
    v4 = 0xE900000000000061;
  }

  v6 = 0xD000000000000013;
  if (a1)
  {
    v3 = 0x80000001ABA3F3F0;
  }

  else
  {
    v6 = 0x74706D6F72705FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x74656D617261705FLL;
    }

    else
    {
      v11 = 0x7461646174656D5FLL;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000737265;
    }

    else
    {
      v10 = 0xE900000000000061;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x74706D6F72705FLL;
    }

    if (a2)
    {
      v10 = 0x80000001ABA3F3F0;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x7461646174656D5FLL;
    if (a1 == 6)
    {
      v10 = 0xE900000000000061;
    }

    else
    {
      v9 = 0x5674706D6F72705FLL;
      v10 = 0xEE00746E61697261;
    }

    v11 = 0x746E656D75636F64;
    v12 = 0xE900000000000073;
    if (a1 != 4)
    {
      v11 = 0x69617274736E6F63;
      v12 = 0xEB0000000073746ELL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x736C6F6F745FLL;
    if (a1 != 2)
    {
      v5 = 0x6F68436C6F6F745FLL;
      v4 = 0xEB00000000656369;
    }

    v6 = 0x74656D617261705FLL;
    if (a1)
    {
      v3 = 0xEB00000000737265;
    }

    else
    {
      v6 = 0x74706D6F72705FLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x736C6F6F745FLL)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v14 = 0x6F68436C6F6F745FLL;
      v15 = 6644585;
    }

    else
    {
      if (!a2)
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x74706D6F72705FLL)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v14 = 0x74656D617261705FLL;
      v15 = 7565925;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v7 != v14)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v13 = 0xE900000000000061;
      if (v7 != 0x7461646174656D5FLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEE00746E61697261;
      if (v7 != 0x5674706D6F72705FLL)
      {
LABEL_48:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_49;
      }
    }
  }

  else if (a2 == 4)
  {
    v13 = 0xE900000000000073;
    if (v7 != 0x746E656D75636F64)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xEB0000000073746ELL;
    if (v7 != 0x69617274736E6F63)
    {
      goto LABEL_48;
    }
  }

LABEL_46:
  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v16 = 1;
LABEL_49:

  return v16 & 1;
}

{
  v2 = 0xE900000000000061;
  v3 = 0x7461646174656D5FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x706D6F725067745FLL;
    }

    else
    {
      v5 = 0x74656D617261705FLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xEB00000000737265;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x74706D6F72705FLL;
    }

    else
    {
      v5 = 0x7461646174656D5FLL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  v7 = 0x706D6F725067745FLL;
  v8 = 0xE900000000000074;
  if (a2 != 2)
  {
    v7 = 0x74656D617261705FLL;
    v8 = 0xEB00000000737265;
  }

  if (a2)
  {
    v3 = 0x74706D6F72705FLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Prompt.TokenGenerationNonStringContent);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69DA800]);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

double SamplingParametersEnvelope.init(sealing:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[10];
  v4 = a1[12];
  *&v41[32] = a1[11];
  *&v41[48] = v4;
  v5 = a1[6];
  v6 = a1[8];
  v7 = a1[9];
  v39 = a1[7];
  v40 = v6;
  *v41 = v7;
  *&v41[16] = v3;
  v8 = a1[3];
  v34 = a1[2];
  v35 = v8;
  v9 = a1[5];
  v36 = a1[4];
  *&v41[64] = *(a1 + 104);
  v37 = v9;
  v38 = v5;
  v10 = a1[1];
  v32 = *a1;
  v33 = v10;
  v11 = BYTE8(v32);
  if (BYTE8(v32) > 1u)
  {
    v24 = 0;
  }

  else
  {
    v24 = v32;
  }

  v31 = BYTE8(v33);
  v22 = v34;
  v23 = v33;
  v30 = BYTE8(v34);
  v29 = BYTE8(v35);
  v20 = v36;
  v21 = v35;
  v28 = BYTE8(v36);
  v12 = v37;
  v27 = v38;
  v13 = *(&v38 + 1);
  v26 = v39;
  v14 = *(&v39 + 1);
  v25 = v40;
  v15 = WORD1(v40);
  v16 = BYTE4(v40);
  v18 = *(&v40 + 1);
  v17 = *v41;

  outlined destroy of SamplingParameters(&v32);
  *a2 = v24;
  *(a2 + 8) = v11;
  *(a2 + 16) = v23;
  *(a2 + 24) = v31;
  *(a2 + 32) = v22;
  *(a2 + 40) = v30;
  *(a2 + 48) = v21;
  *(a2 + 56) = v29;
  *(a2 + 64) = v20;
  *(a2 + 72) = v28;
  *(a2 + 80) = v12;
  *(a2 + 96) = v27;
  *(a2 + 104) = v13;
  *(a2 + 112) = v26;
  *(a2 + 120) = v14;
  *(a2 + 128) = v25;
  *(a2 + 129) = v15;
  *(a2 + 131) = v16;
  *(a2 + 136) = v18;
  *(a2 + 144) = v17;
  *(a2 + 152) = *&v41[8];
  *(a2 + 168) = *&v41[24];
  *(a2 + 184) = *&v41[40];
  result = *&v41[50];
  *(a2 + 194) = *&v41[50];
  return result;
}

__n128 SamplingParametersEnvelope.unseal()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v21 = v1[4];
  v22 = v1[2];
  v20 = v1[6];
  v19 = v1[8];
  v5 = v1[10];
  v18 = v1[11];
  v6 = *(v1 + 13);
  v16 = v1[15];
  v15 = *(v1 + 128);
  v24 = *(v1 + 129);
  v25 = *(v1 + 130);
  v17 = *(v1 + 131);
  v7 = v1[18];
  v23 = v1[17];
  v32 = *(v1 + 19);
  v33 = *(v1 + 21);
  *v34 = *(v1 + 23);
  *&v34[10] = *(v1 + 194);
  if (v4 > 1u)
  {
    v3 = 0;
  }

  v31 = *(v1 + 24);
  v30 = *(v1 + 40);
  v29 = *(v1 + 56);
  v28 = *(v1 + 72);
  v27 = *(v1 + 96);
  v14 = v3;
  if (v1[14])
  {
    v26 = 1;
LABEL_8:

    goto LABEL_14;
  }

  if (v6 > 0.0 && v6 <= 86400.0)
  {
    v26 = 0;
    goto LABEL_8;
  }

  v26 = 1;
  v8 = one-time initialization token for generation;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generation);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v6;
    _os_log_impl(&dword_1AB828000, v10, v11, "Passed in timeout: %f is outside of reasonable bounds (0, 86400]. Ignoring passed in timeout", v12, 0xCu);
    MEMORY[0x1AC5A6CD0](v12, -1, -1);
  }

  v6 = 0.0;
LABEL_14:

  *(a1 + 104) = v6;
  *(a1 + 152) = v32;
  *a1 = v14;
  *(a1 + 8) = v4;
  *(a1 + 16) = v22;
  *(a1 + 24) = v31;
  *(a1 + 32) = v21;
  *(a1 + 40) = v30;
  *(a1 + 48) = v20;
  *(a1 + 56) = v29;
  *(a1 + 64) = v19;
  *(a1 + 72) = v28;
  *(a1 + 80) = v5;
  *(a1 + 88) = v18;
  *(a1 + 96) = v27;
  *(a1 + 112) = v26;
  *(a1 + 120) = v16;
  *(a1 + 128) = v15;
  *(a1 + 129) = 2;
  *(a1 + 130) = v24;
  *(a1 + 132) = v17;
  *(a1 + 131) = v25;
  *(a1 + 136) = v23;
  *(a1 + 144) = v7;
  *(a1 + 168) = v33;
  *(a1 + 184) = *v34;
  result = *&v34[10];
  *(a1 + 194) = *&v34[10];
  return result;
}

void __swiftcall RequestMetadata.init(invocationIdentifier:functionIdentifier:clientRequestIdentifier:userInfo:)(TokenGeneration::RequestMetadata *__return_ptr retstr, Swift::String invocationIdentifier, Swift::String functionIdentifier, Swift::String_optional clientRequestIdentifier, Swift::OpaquePointer userInfo)
{
  retstr->invocationIdentifier = invocationIdentifier;
  retstr->functionIdentifier = functionIdentifier;
  retstr->clientRequestIdentifier = clientRequestIdentifier;
  retstr->userInfo = userInfo;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV10AttachmentVG_AF0F8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0gH0Vs5NeverOTg504_s15d12Generation14f11Envelope33_ijklmnopq57LLV7sealing7xpcDataAdA0C0V_3XPC13XPCDictionaryVztcfcAD010G14D0VAH0S0VXEfU_3XPC13XPCDictionaryVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = type metadata accessor for Prompt.AttachmentContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Prompt.Attachment();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v29[1] = v2;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v38;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v31 = (v17 - 8);
    v32 = v18;
    v30 = *(v17 + 56);
    do
    {
      v20 = v35;
      v21 = v17;
      v32(v10, v19, v35);
      v22 = v36;
      Prompt.Attachment.content.getter();
      PromptEnvelope.AttachmentContentEnvelope.init(sealing:xpcData:)(v22, v37, v14);
      v23 = Prompt.Attachment.position.getter();
      v24 = v34;
      *(v14 + *(v34 + 20)) = v23;
      v25 = Prompt.Attachment.priority.getter();
      (*v31)(v10, v20);
      *(v14 + *(v24 + 24)) = v25;
      v38 = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
        v16 = v38;
      }

      *(v16 + 16) = v27 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v14, v16 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
      v19 += v30;
      --v15;
      v17 = v21;
    }

    while (v15);
  }

  return v16;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v26 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v24 = *(*(a1 + 56) + v7);
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = v27 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = v24;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v26, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v26 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v24 = *(*(a1 + 56) + v7);
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = v27 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = v24;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v26, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PromptKit011ChatMessageD0VG_AHs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = type metadata accessor for ChatMessagePrompt();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VG_AF0F0V0Q0Vs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v22 = a5;
  a5(0, v15, 0);
  v16 = v28;
  v17 = *(a6(0) - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = v11 + 32;
  v23 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v25);
    v18 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClassifyPromptResponse.response.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v15 - v5;
  v7 = (v1 + *(type metadata accessor for ClassifyPromptResponse(0) + 20));
  v8 = v7[7];
  v15[6] = v7[6];
  v15[7] = v8;
  v15[8] = v7[8];
  v9 = v7[3];
  v15[2] = v7[2];
  v15[3] = v9;
  v10 = v7[5];
  v15[4] = v7[4];
  v15[5] = v10;
  v11 = v7[1];
  v15[0] = *v7;
  v15[1] = v11;
  v12 = type metadata accessor for XPCDictionary();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, v1, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  ClassificationResponseEnvelope.unseal(_:)(a1);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t StreamingRequest.revive(withXpcData:)(uint64_t a1)
{
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CompletePromptRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StreamingRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v1, v14, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of DocumentResourceEnvelope(v1, type metadata accessor for StreamingRequest);
      outlined init with take of DocumentRegistrationEnvelope(v14, v6, type metadata accessor for CompletePromptTemplateRequest);
      v16 = type metadata accessor for XPCDictionary();
      (*(*(v16 - 8) + 24))(v6, a1, v16);
      outlined init with take of DocumentRegistrationEnvelope(v6, v1, type metadata accessor for CompletePromptTemplateRequest);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return outlined destroy of DocumentResourceEnvelope(v14, type metadata accessor for StreamingRequest);
    }
  }

  else
  {
    outlined destroy of DocumentResourceEnvelope(v1, type metadata accessor for StreamingRequest);
    outlined init with take of DocumentRegistrationEnvelope(v14, v10, type metadata accessor for CompletePromptRequest);
    v18 = type metadata accessor for XPCDictionary();
    (*(*(v18 - 8) + 24))(v10, a1, v18);
    outlined init with take of DocumentRegistrationEnvelope(v10, v1, type metadata accessor for CompletePromptRequest);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t RegisterDocumentRequest.documents.getter()
{
  v28 = type metadata accessor for URL();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DocumentResourceEnvelope(0);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DocumentResource();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = *(*v0 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v29;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    v17 = (v1 + 16);
    v23[1] = v8 + 32;
    v24 = v16;
    do
    {
      outlined init with copy of DocumentResourceEnvelope(v15, v7, type metadata accessor for DocumentResourceEnvelope);
      (*v17)(v27, v7, v28);
      v18 = *&v7[*(v26 + 20)];
      v19 = *&v7[*(v26 + 24)];

      DocumentResource.init(_:_:_:)();
      outlined destroy of DocumentResourceEnvelope(v7, type metadata accessor for DocumentResourceEnvelope);
      v29 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v14 = v29;
      }

      *(v14 + 16) = v21 + 1;
      (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v11, v25);
      v15 += v24;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t RegisterDocumentRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
}

void __swiftcall RegisterDocumentRequest.init(documents:metadata:)(TokenGeneration::RegisterDocumentRequest *__return_ptr retstr, Swift::OpaquePointer documents, TokenGeneration::RequestMetadata *metadata)
{
  v51 = type metadata accessor for DocumentResource();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v51);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v36 - v11;
  v12 = type metadata accessor for DocumentResourceEnvelope(0);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = metadata->invocationIdentifier._countAndFlagsBits;
  object = metadata->invocationIdentifier._object;
  v17 = metadata->functionIdentifier._countAndFlagsBits;
  v43 = metadata->functionIdentifier._object;
  clientRequestIdentifier = metadata->clientRequestIdentifier;
  rawValue = metadata->userInfo._rawValue;
  v19 = *(documents._rawValue + 2);
  if (v19)
  {
    v37 = rawValue;
    v38 = v17;
    v39 = object;
    v40 = countAndFlagsBits;
    v42 = retstr;
    v53 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v20 = v53;
    v22 = *(v6 + 16);
    v21 = v6 + 16;
    v23 = *(v21 + 64);
    v41 = documents._rawValue;
    v24 = documents._rawValue + ((v23 + 32) & ~v23);
    v45 = *(v21 + 56);
    v46 = v22;
    v25 = (v21 - 8);
    v47 = v21;
    v26 = v50;
    do
    {
      v27 = v51;
      v28 = v46;
      v46(v26, v24, v51);
      v28(v10, v26, v27);
      DocumentResource.url.getter();
      v29 = DocumentResource.fileDescriptor.getter();
      v30 = v49;
      *&v52[*(v49 + 20)] = v29;
      v31 = DocumentResource.metadata.getter();
      v32 = *v25;
      (*v25)(v10, v27);
      v32(v26, v27);
      v33 = v52;
      *&v52[*(v30 + 24)] = v31;
      v53 = v20;
      v35 = v20[2];
      v34 = v20[3];
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1);
        v33 = v52;
        v20 = v53;
      }

      v20[2] = v35 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v33, v20 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, type metadata accessor for DocumentResourceEnvelope);
      v24 += v45;
      --v19;
    }

    while (v19);

    retstr = v42;
    object = v39;
    countAndFlagsBits = v40;
    rawValue = v37;
    v17 = v38;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  retstr->_documents._rawValue = v20;
  retstr->_metadata.invocationIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->_metadata.invocationIdentifier._object = object;
  retstr->_metadata.functionIdentifier._countAndFlagsBits = v17;
  retstr->_metadata.functionIdentifier._object = v43;
  retstr->_metadata.clientRequestIdentifier = clientRequestIdentifier;
  retstr->_metadata.userInfo._rawValue = rawValue;
}

uint64_t CompletePromptResponseElement.init(token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.inference);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1AB828000, v12, v13, "Metadata like candidateIdentifier will be bogus because a deprecated initializer is being used. Use init(element:) instead.", v14, 2u);
    MEMORY[0x1AC5A6CD0](v14, -1, -1);
  }

  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v10, v3);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  v18(v8, v3);
  v22 = Token.text.getter();
  v24 = v23;
  v31[3] = &type metadata for PromptCompletionEventCandidateTextDelta;
  v31[4] = &protocol witness table for PromptCompletionEventCandidateTextDelta;
  v25 = swift_allocObject();
  v31[0] = v25;
  *(v25 + 16) = v15;
  *(v25 + 24) = v17;
  *(v25 + 32) = v19;
  *(v25 + 40) = v21;
  *(v25 + 48) = 0;
  *(v25 + 56) = v22;
  *(v25 + 64) = v24;
  *(v25 + 72) = xmmword_1ABA1D8C0;
  outlined init with copy of PromptCompletionEvent(v31, v30);
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v30, v29);
  v26 = type metadata accessor for Token();
  (*(*(v26 - 8) + 8))(a1, v26);
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t CompletePromptResponseElement.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PromptCompletionEvent(a1, v6);
  outlined init with copy of PromptCompletionEvent(v6, v5);
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v5, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t CompletePromptResponse.completion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v14[8] = v1[8];
  v14[9] = v3;
  v14[10] = v1[10];
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  outlined init with copy of PromptCompletionEnvelope(v14, v15);
  PromptCompletionEnvelope.unseal()(a1);
  v8 = v1[9];
  v15[8] = v1[8];
  v15[9] = v8;
  v15[10] = v1[10];
  v9 = v1[5];
  v15[4] = v1[4];
  v15[5] = v9;
  v10 = v1[7];
  v15[6] = v1[6];
  v15[7] = v10;
  v11 = v1[1];
  v15[0] = *v1;
  v15[1] = v11;
  v12 = v1[3];
  v15[2] = v1[2];
  v15[3] = v12;
  return outlined destroy of PromptCompletionEnvelope(v15);
}

uint64_t CompletePromptTemplateRequest.prompt.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - v8;
  v10 = (v2 + *(a1(0, v7) + 20));
  v11 = v10[1];
  if (v11)
  {
    v13 = v10[2];
    v12 = v10[3];
    v14 = *v10;
    v15 = type metadata accessor for XPCDictionary();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v9, v2, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    PromptEnvelope.unseal(_:)(v9, v14, v11, v13, v12, a2);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v17 = type metadata accessor for Prompt();
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for Prompt();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

uint64_t CountTokensRequest.prompt.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18 - v8;
  v10 = (v2 + *(a1(0, v7) + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = type metadata accessor for XPCDictionary();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, v2, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  PromptEnvelope.unseal(_:)(v9, v11, v12, v13, v14, a2);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t StreamingRequest.xpcData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CompletePromptTemplateRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CompletePromptRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreamingRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v15, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of DocumentRegistrationEnvelope(v15, v7, type metadata accessor for CompletePromptTemplateRequest);
      v17 = type metadata accessor for XPCDictionary();
      (*(*(v17 - 8) + 16))(a1, v7, v17);
      return outlined destroy of DocumentResourceEnvelope(v7, type metadata accessor for CompletePromptTemplateRequest);
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for StreamingRequest);
      return XPCDictionary.init()();
    }
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v15, v11, type metadata accessor for CompletePromptRequest);
    v19 = type metadata accessor for XPCDictionary();
    (*(*(v19 - 8) + 16))(a1, v11, v19);
    return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for CompletePromptRequest);
  }
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t StreamingRequest.encode(to:)(void *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v46 = *(v47 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v37 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v43 = *(v44 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v37 - v5;
  v40 = type metadata accessor for CompletePromptTemplateRequest(0);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v38 = *(v39 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v37 - v9;
  v11 = type metadata accessor for CompletePromptRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StreamingRequest(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v48, v18, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v41;
      outlined init with take of DocumentRegistrationEnvelope(v18, v41, type metadata accessor for CompletePromptTemplateRequest);
      LOBYTE(v55) = 1;
      lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();
      v26 = v42;
      v27 = v50;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
      v28 = v44;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v26, v28);
      outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for CompletePromptTemplateRequest);
      return (*(v49 + 8))(v22, v27);
    }

    else
    {
      v32 = v18[1];
      v55 = *v18;
      v56 = v32;
      v33 = v18[3];
      v57 = v18[2];
      v58 = v33;
      LOBYTE(v51) = 2;
      lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();
      v34 = v45;
      v35 = v50;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v55;
      v52 = v56;
      v53 = v57;
      v54 = v58;
      lazy protocol witness table accessor for type RegisterDocumentRequest and conformance RegisterDocumentRequest();
      v36 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v46 + 8))(v34, v36);
      (*(v49 + 8))(v22, v35);
      return outlined destroy of RegisterDocumentRequest(&v55);
    }
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v18, v14, type metadata accessor for CompletePromptRequest);
    LOBYTE(v55) = 0;
    lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();
    v30 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
    v31 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v10, v31);
    outlined destroy of DocumentResourceEnvelope(v14, type metadata accessor for CompletePromptRequest);
    return (*(v49 + 8))(v22, v30);
  }
}

uint64_t StreamingRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v64 = *(v61 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v67 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v57 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v62 = *(v63 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v57 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v71 = *(v69 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v57 - v11;
  v13 = type metadata accessor for StreamingRequest(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();
  v28 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v28)
  {
    v59 = v22;
    v60 = v19;
    v58 = v16;
    v29 = v68;
    v30 = v69;
    v31 = v70;
    v73 = v25;
    v32 = v13;
    v33 = v72;
    v34 = KeyedDecodingContainer.allKeys.getter();
    v35 = (2 * *(v34 + 16)) | 1;
    v78 = v34;
    v79 = v34 + 32;
    v80 = 0;
    v81 = v35;
    v36 = specialized Collection<>.popFirst()();
    if (v36 != 3 && v80 == v81 >> 1)
    {
      if (v36)
      {
        if (v36 == 1)
        {
          LOBYTE(v74) = 1;
          lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v68 = v13;
          type metadata accessor for CompletePromptTemplateRequest(0);
          lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
          v37 = v60;
          v38 = v66;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v39 = v71;
          (*(v65 + 8))(v31, v38);
          (*(v39 + 8))(v12, v30);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v73;
          outlined init with take of DocumentRegistrationEnvelope(v37, v73, type metadata accessor for StreamingRequest);
          v33 = v72;
LABEL_12:
          outlined init with take of DocumentRegistrationEnvelope(v53, v33, type metadata accessor for StreamingRequest);
          return __swift_destroy_boxed_opaque_existential_0(v82);
        }

        LOBYTE(v74) = 2;
        lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();
        v49 = v67;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type RegisterDocumentRequest and conformance RegisterDocumentRequest();
        v50 = v49;
        v51 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v52 = (v71 + 8);
        (*(v64 + 8))(v50, v51);
        (*v52)(v12, v30);
        swift_unknownObjectRelease();
        v54 = v75;
        v55 = v58;
        *v58 = v74;
        v55[1] = v54;
        v56 = v77;
        v55[2] = v76;
        v55[3] = v56;
        swift_storeEnumTagMultiPayload();
        v48 = v55;
      }

      else
      {
        LOBYTE(v74) = 0;
        lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();
        v45 = v29;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for CompletePromptRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
        v46 = v59;
        v47 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v62 + 8))(v45, v47);
        (*(v71 + 8))(v12, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v46;
      }

      v53 = v73;
      outlined init with take of DocumentRegistrationEnvelope(v48, v73, type metadata accessor for StreamingRequest);
      goto LABEL_12;
    }

    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v42 = v32;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v71 + 8))(v12, v30);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v82);
}

uint64_t OneShotRequest.encode(to:)(void *a1)
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v100 = *(v123 - 8);
  v2 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v94 - v3;
  v120 = type metadata accessor for CompileAdapterRequest(0);
  v4 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v99 = *(v119 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v94 - v7;
  v116 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v8 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v98 = *(v115 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v94 - v11;
  v112 = type metadata accessor for ClassifyPromptRequest(0);
  v12 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v97 = *(v111 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v94 - v15;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v96 = *(v109 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v94 - v17;
  v106 = type metadata accessor for CompletePromptTemplateRequest(0);
  v18 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v94 = *(v131 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v94 - v21;
  v104 = type metadata accessor for CompletePromptRequest(0);
  v22 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v95 = *(v128 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v94 - v25;
  v102 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v26 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v126 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v105 = *(v125 - 8);
  v28 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v94 - v29;
  v103 = type metadata accessor for CountTokensRequest(0);
  v30 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v101 = *(v33 - 8);
  v34 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - v35;
  v37 = type metadata accessor for OneShotRequest(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v132 = *(v142 - 8);
  v41 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v43 = &v94 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();
  v134 = v43;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v133, v40, type metadata accessor for OneShotRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v52 = v32;
    v54 = v124;
    v53 = v125;
    v55 = v127;
    v56 = v128;
    v57 = v130;
    v58 = v131;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v59 = *v40;
        v60 = v40[1];
        v61 = v40[3];
        v130 = v40[2];
        v131 = v59;
        v62 = v40[4];
        v133 = v40[5];
        v63 = v133;
        v128 = v40[6];
        v129 = v62;
        LOBYTE(v135) = 0;
        lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();
        v64 = v142;
        v65 = v134;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v135 = v131;
        v136 = v60;
        v137 = v130;
        v138 = v61;
        v139 = v129;
        v140 = v63;
        v141 = v128;
        lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v101 + 8))(v36, v33);
        (*(v132 + 8))(v65, v64);
      }

      v80 = v52;
      outlined init with take of DocumentRegistrationEnvelope(v40, v52, type metadata accessor for CountTokensRequest);
      LOBYTE(v135) = 1;
      lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();
      v46 = v142;
      v47 = v134;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v105 + 8))(v54, v53);
      v81 = type metadata accessor for CountTokensRequest;
      v82 = v80;
      goto LABEL_18;
    }

    v46 = v142;
    if (EnumCaseMultiPayload == 2)
    {
      v67 = v126;
      outlined init with take of DocumentRegistrationEnvelope(v40, v126, type metadata accessor for CountTokensPromptTemplateRequest);
      LOBYTE(v135) = 2;
      lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();
      v68 = v134;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v95 + 8))(v55, v56);
      outlined destroy of DocumentResourceEnvelope(v67, type metadata accessor for CountTokensPromptTemplateRequest);
      v69 = *(v132 + 8);
      v70 = v68;
      return v69(v70, v46);
    }

    v48 = v129;
    outlined init with take of DocumentRegistrationEnvelope(v40, v129, type metadata accessor for CompletePromptRequest);
    LOBYTE(v135) = 3;
    lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();
    v47 = v134;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v94 + 8))(v57, v58);
    v51 = type metadata accessor for CompletePromptRequest;
LABEL_17:
    v81 = v51;
    v82 = v48;
LABEL_18:
    outlined destroy of DocumentResourceEnvelope(v82, v81);
    v69 = *(v132 + 8);
    v70 = v47;
    return v69(v70, v46);
  }

  if (EnumCaseMultiPayload > 5)
  {
    v46 = v142;
    v47 = v134;
    if (EnumCaseMultiPayload == 6)
    {
      v48 = v113;
      outlined init with take of DocumentRegistrationEnvelope(v40, v113, type metadata accessor for ClassifyPromptRequest);
      LOBYTE(v135) = 6;
      lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();
      v78 = v114;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest);
      v79 = v115;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v98 + 8))(v78, v79);
      v51 = type metadata accessor for ClassifyPromptRequest;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v48 = v117;
      outlined init with take of DocumentRegistrationEnvelope(v40, v117, type metadata accessor for ClassifyPromptTemplateRequest);
      LOBYTE(v135) = 7;
      lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();
      v49 = v118;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest);
      v50 = v119;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v99 + 8))(v49, v50);
      v51 = type metadata accessor for ClassifyPromptTemplateRequest;
    }

    else
    {
      v48 = v121;
      outlined init with take of DocumentRegistrationEnvelope(v40, v121, type metadata accessor for CompileAdapterRequest);
      LOBYTE(v135) = 8;
      lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();
      v83 = v122;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest);
      v84 = v123;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v100 + 8))(v83, v84);
      v51 = type metadata accessor for CompileAdapterRequest;
    }

    goto LABEL_17;
  }

  v71 = v142;
  if (EnumCaseMultiPayload == 4)
  {
    v72 = v40;
    v73 = v107;
    outlined init with take of DocumentRegistrationEnvelope(v72, v107, type metadata accessor for CompletePromptTemplateRequest);
    LOBYTE(v135) = 4;
    lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();
    v74 = v108;
    v75 = v71;
    v76 = v134;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
    v77 = v109;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v96 + 8))(v74, v77);
    outlined destroy of DocumentResourceEnvelope(v73, type metadata accessor for CompletePromptTemplateRequest);
    return (*(v132 + 8))(v76, v75);
  }

  else
  {
    v85 = v40[1];
    v133 = *v40;
    v87 = v40[2];
    v86 = v40[3];
    v89 = v40[4];
    v88 = v40[5];
    v90 = v40[6];
    LOBYTE(v135) = 5;
    lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();
    v91 = v110;
    v92 = v134;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v135 = v133;
    v136 = v85;
    v133 = v85;
    v137 = v87;
    v138 = v86;
    v139 = v89;
    v140 = v88;
    v141 = v90;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v93 = v111;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v97 + 8))(v91, v93);
    (*(v132 + 8))(v92, v142);
  }
}

uint64_t OneShotRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v137 = *(v136 - 8);
  v3 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v142 = &v111 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v134 = *(v135 - 8);
  v5 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v143 = &v111 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v132 = *(v133 - 8);
  v7 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v149 = &v111 - v8;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v130 = *(v131 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v141 = &v111 - v10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v140 = &v111 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v126 = *(v127 - 8);
  v13 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v148 = &v111 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v125 = *(v124 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v147 = &v111 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v122 = *(v123 - 8);
  v17 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v139 = &v111 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v120 = *(v121 - 8);
  v19 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v138 = &v111 - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v145 = *(v151 - 8);
  v21 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v23 = &v111 - v22;
  v144 = type metadata accessor for OneShotRequest(0);
  v24 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v119 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v115 = (&v111 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v116 = &v111 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v111 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v111 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v111 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v111 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v111 - v47;
  v49 = a1[3];
  v50 = a1[4];
  v152 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();
  v146 = v23;
  v51 = v162;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_0(v152);
  }

  v111 = v45;
  v112 = v42;
  v113 = v39;
  v114 = v36;
  v53 = v147;
  v52 = v148;
  v162 = v48;
  v55 = v149;
  v54 = v150;
  v56 = v151;
  v57 = v146;
  v58 = KeyedDecodingContainer.allKeys.getter();
  v59 = (2 * *(v58 + 16)) | 1;
  v158 = v58;
  v159 = v58 + 32;
  v160 = 0;
  v161 = v59;
  v60 = specialized Collection<>.popFirst()();
  if (v60 == 9 || v160 != v161 >> 1)
  {
    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v67;
    v69 = v57;
    v70 = v56;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v68 = v144;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
    swift_willThrow();
    (*(v145 + 8))(v69, v70);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v152);
  }

  if (v60 > 3u)
  {
    if (v60 > 5u)
    {
      if (v60 == 6)
      {
        LOBYTE(v153) = 6;
        lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();
        v87 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v88 = v145;
        v89 = v57;
        type metadata accessor for ClassifyPromptRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest);
        v64 = v117;
        v90 = v133;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v132 + 8))(v87, v90);
        (*(v88 + 8))(v89, v151);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v61 = v145;
      if (v60 == 7)
      {
        LOBYTE(v153) = 7;
        lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();
        v62 = v143;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v57;
        type metadata accessor for ClassifyPromptTemplateRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest);
        v64 = v118;
        v65 = v135;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v134 + 8))(v62, v65);
        (*(v61 + 8))(v63, v151);
        swift_unknownObjectRelease();
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v105 = v64;
        goto LABEL_25;
      }

      LOBYTE(v153) = 8;
      lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();
      v95 = v142;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for CompileAdapterRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest);
      v101 = v119;
      v102 = v136;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v137 + 8))(v95, v102);
      (*(v61 + 8))(v57, v151);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v101;
      goto LABEL_25;
    }

    if (v60 == 4)
    {
      LOBYTE(v153) = 4;
      lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();
      v83 = v140;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v84 = v145;
      type metadata accessor for CompletePromptTemplateRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
      v85 = v116;
      v86 = v129;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v128 + 8))(v83, v86);
      (*(v84 + 8))(v57, v151);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v85;
      goto LABEL_25;
    }

    LOBYTE(v153) = 5;
    lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();
    v96 = v141;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v97 = v56;
    v98 = v145;
    v103 = v97;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v104 = v131;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v130 + 8))(v96, v104);
    (*(v98 + 8))(v57, v103);
    swift_unknownObjectRelease();
    v106 = v154;
    v107 = v155;
    v108 = v157;
    v80 = v115;
    *v115 = v153;
    *(v80 + 2) = v106;
    *(v80 + 3) = v107;
    v80[2] = v156;
    *(v80 + 6) = v108;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    v105 = v80;
    goto LABEL_25;
  }

  if (v60 <= 1u)
  {
    if (v60)
    {
      LOBYTE(v153) = 1;
      lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();
      v91 = v139;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = v145;
      v99 = v57;
      type metadata accessor for CountTokensRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest);
      v64 = v112;
      v100 = v123;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v122 + 8))(v91, v100);
      (*(v92 + 8))(v99, v151);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    LOBYTE(v153) = 0;
    lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();
    v73 = v138;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v74 = v56;
    v75 = v145;
    lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
    v76 = v121;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v120 + 8))(v73, v76);
    (*(v75 + 8))(v57, v74);
    swift_unknownObjectRelease();
    v77 = v154;
    v78 = v155;
    v79 = v157;
    v80 = v111;
    *v111 = v153;
    *(v80 + 2) = v77;
    *(v80 + 3) = v78;
    v80[2] = v156;
    *(v80 + 6) = v79;
    goto LABEL_24;
  }

  if (v60 == 2)
  {
    LOBYTE(v153) = 2;
    lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v81 = v57;
    type metadata accessor for CountTokensPromptTemplateRequest(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest);
    v64 = v113;
    v82 = v124;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v125 + 8))(v53, v82);
    (*(v145 + 8))(v81, v151);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  LOBYTE(v153) = 3;
  lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for CompletePromptRequest(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
  v93 = v114;
  v94 = v127;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v126 + 8))(v52, v94);
  (*(v145 + 8))(v57, v56);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v105 = v93;
LABEL_25:
  v109 = v162;
  outlined init with take of DocumentRegistrationEnvelope(v105, v162, type metadata accessor for OneShotRequest);
  v110 = v152;
  outlined init with take of DocumentRegistrationEnvelope(v109, v54, type metadata accessor for OneShotRequest);
  return __swift_destroy_boxed_opaque_existential_0(v110);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StreamingRequest.CodingKeys()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StreamingRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized StreamingRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.RegisterDocumentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.RegisterDocumentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadataCodingKeys);
}

uint64_t one-time initialization function for currentInterfaceVersion()
{
  v0 = type metadata accessor for Version();
  __swift_allocate_value_buffer(v0, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
  __swift_project_value_buffer(v0, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
  return Version.init(major:minor:patch:)();
}

uint64_t CompletePromptRequest.revive(withXpcData:)(uint64_t a1)
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(*(v3 - 8) + 24);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RegisterDocumentRequest.CodingKeys()
{
  if (*v0)
  {
    result = 0x7461646174656D5FLL;
  }

  else
  {
    result = 0x6E656D75636F645FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegisterDocumentRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D75636F645FLL && a2 == 0xEA00000000007374;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461646174656D5FLL && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegisterDocumentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegisterDocumentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RegisterDocumentRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[2];
  v11 = v1[3];
  v19 = v1[1];
  v20 = v10;
  v12 = v1[4];
  v17 = v1[5];
  v18 = v11;
  v14 = v1[6];
  v13 = v1[7];
  v21 = v12;
  v22 = v14;
  v23 = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v9;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  lazy protocol witness table accessor for type [DocumentResourceEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v21;
    v28 = v17;
    v29 = v22;
    v30 = v23;
    v31 = 1;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RegisterDocumentRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  LOBYTE(v21[0]) = 0;
  lazy protocol witness table accessor for type [DocumentResourceEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v22[0];
  v31 = 1;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v19 = *(&v30 + 1);
  v20 = v30;
  *&v21[0] = v11;
  *(&v21[0] + 1) = v27;
  v21[1] = v28;
  v21[2] = v29;
  v21[3] = v30;
  v15 = v21[0];
  v16 = v28;
  v17 = v30;
  a2[2] = v29;
  a2[3] = v17;
  *a2 = v15;
  a2[1] = v16;
  outlined init with copy of RegisterDocumentRequest(v21, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v22[0] = v11;
  v22[1] = v12;
  v23 = v13;
  v24 = v14;
  v25 = v20;
  v26 = v19;
  return outlined destroy of RegisterDocumentRequest(v22);
}

uint64_t RegisterDocumentResponseElement.registration.getter()
{
  v1 = type metadata accessor for DocumentResourceIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DocumentRegistration.Progress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v0, v14, type metadata accessor for DocumentRegistrationStatusEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v5, v14, v1);
      v16 = v0 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
      static DocumentRegistration.finished(identifier:url:)();
      return (*(v2 + 8))(v5, v1);
    }

    else
    {
      v22 = *v14;
      v23 = v14[1];
      v24 = v0 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
      static DocumentRegistration.error(description:url:)();
    }
  }

  else
  {
    v18 = *v14;
    v19 = v14[1];
    v20 = v14[2];
    DocumentRegistration.Progress.init(progress:bytes:totalBytes:)();
    v21 = v0 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
    static DocumentRegistration.registering(progress:url:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t DocumentRegistrationEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentRegistration.InternalStatus();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DocumentRegistration.internalStatus.getter();
  DocumentRegistrationStatusEnvelope.init(sealing:)(v7, a2);
  v8 = a2 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
  DocumentRegistration.url.getter();
  v9 = type metadata accessor for DocumentRegistration();
  return (*(*(v9 - 8) + 8))(a1, v9);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegisterDocumentResponseElement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727473696765725FLL && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegisterDocumentResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegisterDocumentResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RegisterDocumentResponseElement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for DocumentRegistrationEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationEnvelope and conformance DocumentRegistrationEnvelope, type metadata accessor for DocumentRegistrationEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t RegisterDocumentResponseElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for DocumentRegistrationEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RegisterDocumentResponseElement(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationEnvelope and conformance DocumentRegistrationEnvelope, type metadata accessor for DocumentRegistrationEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for DocumentRegistrationEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for RegisterDocumentResponseElement);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RegisterDocumentResponseElement(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for DocumentRegistrationEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationEnvelope and conformance DocumentRegistrationEnvelope, type metadata accessor for DocumentRegistrationEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CompileAdapterRequest.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E7552797264;
  v5 = 0x80000001ABA3F3C0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001ABA3F3C0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7461646174656D5FLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE900000000000061;
  }

  v8 = 0x6E7552797264;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461646174656D5FLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000061;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompileAdapterRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CompileAdapterRequest.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompileAdapterRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CompileAdapterRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CompileAdapterRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CompileAdapterRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000061;
  v4 = 0xE600000000000000;
  v5 = 0x6E7552797264;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001ABA3F3C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461646174656D5FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CompileAdapterRequest.CodingKeys()
{
  v1 = 0x6E7552797264;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461646174656D5FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompileAdapterRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CompileAdapterRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompileAdapterRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CompileAdapterRequest(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;
}

uint64_t CompileAdapterRequest.secureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CompileAdapterRequest(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CompileAdapterRequest.info.getter()
{
  v0 = type metadata accessor for XPCCodableObject();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (!XPCDictionary.subscript.getter())
  {
    return 0;
  }

  swift_unknownObjectRetain();
  XPCCodableObject.init(copying:)();
  v2 = type metadata accessor for FoundationModelsExtensionInfo();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = FoundationModelsExtensionInfo.init(xpcObject:)();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t CompileAdapterRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for CompileAdapterRequest(0);
  v12 = v11[5];
  v26 = v3;
  v13 = (v3 + v12);
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[3];
  v17 = v13[4];
  v18 = v13[5];
  v19 = v13[6];
  v27 = *v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = 0;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v20 = v26;
    v21 = *(v26 + v11[7]);
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = (v20 + v11[6]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CompileAdapterRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v27 - v6;
  v8 = type metadata accessor for CompileAdapterRequest(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v20 = type metadata accessor for XPCDictionary();
    return (*(*(v20 - 8) + 8))(v11, v20);
  }

  else
  {
    v13 = v4;
    v14 = v28;
    v35 = 0;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    v15 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v31;
    v17 = v32;
    v18 = v34;
    v19 = &v11[v8[5]];
    *v19 = v30;
    *(v19 + 2) = v16;
    *(v19 + 3) = v17;
    *(v19 + 2) = v33;
    *(v19 + 6) = v18;
    LOBYTE(v30) = 1;
    v11[v8[7]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v30) = 2;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v7;
    v24 = v23;
    (*(v13 + 8))(v22, v15);
    v25 = &v11[v8[6]];
    *v25 = v21;
    v25[1] = v24;
    outlined init with copy of DocumentResourceEnvelope(v11, v14, type metadata accessor for CompileAdapterRequest);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for CompileAdapterRequest);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4D74666172446F6ELL;
  v3 = 0xD000000000000014;
  v4 = 0x69706D6F43746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x64656C69706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4379646165726C61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CompileAdapterResponse.DraftModelCompileResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompileAdapterResponse.DraftModelCompileResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();
      v38 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();
      v38 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();
      v29 = v40;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();
      v29 = v43;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();
      v29 = v46;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}