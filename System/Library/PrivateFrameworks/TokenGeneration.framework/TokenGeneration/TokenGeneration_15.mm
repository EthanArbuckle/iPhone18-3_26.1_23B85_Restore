unint64_t lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestMetadata and conformance RequestMetadata()
{
  result = lazy protocol witness table cache variable for type RequestMetadata and conformance RequestMetadata;
  if (!lazy protocol witness table cache variable for type RequestMetadata and conformance RequestMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadata and conformance RequestMetadata);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegisterDocumentRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for RegisterDocumentRequest(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata completion function for CountTokensRequest()
{
  result = type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromptVariantEnvelope(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for CountTokensResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for CountTokensResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata completion function for CountTokensPromptTemplateRequest()
{
  type metadata accessor for XPCDictionary();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for PromptEnvelope?, &unk_1F2068E38, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for PromptVariantEnvelope?, type metadata accessor for PromptVariantEnvelope, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PromptTemplateInfoEnvelope(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CompletePromptTemplateRequest()
{
  type metadata accessor for XPCDictionary();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for PromptEnvelope?, &unk_1F2068E38, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for PromptVariantEnvelope?, type metadata accessor for PromptVariantEnvelope, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PromptTemplateInfoEnvelope(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [ToolDescriptionEnvelope], type metadata accessor for ToolDescriptionEnvelope, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for ToolChoiceEnvelope?, &type metadata for ToolChoiceEnvelope, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [DocumentResourceIdentifier], MEMORY[0x1E69C6178], MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for Constraints?, type metadata accessor for Constraints, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
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

void type metadata accessor for PromptVariantEnvelope?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for CompletePromptRequest()
{
  type metadata accessor for XPCDictionary();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptVariantEnvelope(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for Constraints?, type metadata accessor for Constraints, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [ToolDescriptionEnvelope], type metadata accessor for ToolDescriptionEnvelope, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for ToolChoiceEnvelope?, &type metadata for ToolChoiceEnvelope, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [DocumentResourceIdentifier], MEMORY[0x1E69C6178], MEMORY[0x1E69E62F8]);
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

uint64_t __swift_get_extra_inhabitant_index_66Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PromptVariantEnvelope(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_67Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCDictionary();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PromptVariantEnvelope(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata completion function for ClassifyPromptRequest()
{
  result = type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromptVariantEnvelope(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for ClassifyPromptTemplateRequest()
{
  type metadata accessor for XPCDictionary();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for PromptEnvelope?, &unk_1F2068E38, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for PromptVariantEnvelope?, type metadata accessor for PromptVariantEnvelope, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PromptTemplateInfoEnvelope(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for ClassifyPromptResponse()
{
  result = type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for RegisterDocumentResponseElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for CompletePromptResponse()
{
  type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for InferenceResponseEnvelope?, MEMORY[0x1E69C6508], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for FetchTokenizerMetadataResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchTokenizerMetadataResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for Constraints()
{
  result = type metadata accessor for GenerationSchema();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEnvelope(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEnvelope(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for DocumentRegistrationEnvelope()
{
  result = type metadata accessor for DocumentRegistrationStatusEnvelope(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy210_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingParametersEnvelope(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 210))
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

uint64_t storeEnumTagSinglePayload for SamplingParametersEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingStrategyEnvelope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SamplingStrategyEnvelope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SamplingStrategyEnvelope(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for SamplingStrategyEnvelope(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingParametersEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingParametersEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionStreamElementEnvelope.Envelope()
{
  result = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_404Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t __swift_store_extra_inhabitant_index_405Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t type metadata completion function for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionEnvelope.SegmentEnvelope()
{
  result = type metadata accessor for FileContentEnvelope(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for StreamingRequestPayload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for AnnotationEnvelope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for CompileAdapterRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassificationResponseEnvelope(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for ClassificationResponseEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompletePromptRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CompletePromptRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t getEnumTagSinglePayload for PromptRenderingEnvelope(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t type metadata completion function for DocumentRegistrationStatusEnvelope()
{
  result = type metadata accessor for DocumentResourceIdentifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressEnvelope(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProgressEnvelope(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void type metadata completion function for DocumentResourceEnvelope()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : PromptCompletion.Aggregator.CandidateAggregator](319, &lazy cache variable for type metadata for [String : String]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for StreamingRequest()
{
  result = type metadata accessor for CompletePromptRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CompletePromptTemplateRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for RequestPayload()
{
  result = type metadata accessor for CountTokensRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CountTokensPromptTemplateRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CompletePromptRequest(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CompletePromptTemplateRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ClassifyPromptRequest(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ClassifyPromptTemplateRequest(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for CompileAdapterRequest(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata completion function for PromptTemplateInfoEnvelope()
{
  type metadata accessor for [String : PromptCompletion.Aggregator.CandidateAggregator](319, &lazy cache variable for type metadata for [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_150Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_151Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
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
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for FunctionDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ToolType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for ImageGenerationParameters();
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for FileGenerationParameters();
    if (v7 <= 0x3F)
    {
      result = a4(319);
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegisterDocumentRequest and conformance RegisterDocumentRequest()
{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest and conformance RegisterDocumentRequest;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest and conformance RegisterDocumentRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest and conformance RegisterDocumentRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest and conformance RegisterDocumentRequest;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest and conformance RegisterDocumentRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest and conformance RegisterDocumentRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys);
  }

  return result;
}

uint64_t specialized Constraints.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616D6D617267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x476C616974726170 && a2 == 0xEE0072616D6D6172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001ABA41830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41850 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized PromptCompletionEnvelope.CandidateEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D676573 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C61436C6F6F74 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65526873696E6966 && a2 == 0xEC0000006E6F7361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000061746144)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized PromptCompletionEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E496C65646F6DLL && a2 == 0xE90000000000006FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized TextContentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
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

void *specialized ImageContentEnvelope.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v13 = v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v10, v7);
    v13 = v15;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v13;
}

uint64_t specialized FileContentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ModelInformationEnvelope.AssetEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t specialized ModelInformationEnvelope.AssetEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v25) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = a2;
  v24 = v11;
  LOBYTE(v25) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v27 = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v25;
  v18 = v26;

  outlined copy of Data._Representation(v17, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);

  result = outlined consume of Data._Representation(v17, v18);
  v20 = v23;
  *v23 = v24;
  v20[1] = v13;
  v20[2] = v22;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  return result;
}

uint64_t specialized ModelInformationEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMd, &_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMR);
    v10[7] = 0;
    lazy protocol witness table accessor for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ModelInformationiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ModelInformationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v18) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v18;
  v15 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f8RenderediJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f8RenderediJ0V10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v11 = v53;
  LOBYTE(v30[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v21 = v12;
  v38 = 1;
  lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v4);
  v50 = v43;
  v51 = v44;
  v52 = v45;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v15 = v21;
  *&v22 = v21;
  *(&v22 + 1) = v14;
  v29 = v45;
  v27 = v43;
  v28 = v44;
  v25 = v41;
  v26 = v42;
  v23 = v39;
  v24 = v40;
  outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(&v22, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v30[0] = v15;
  v30[1] = v14;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  result = outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(v30);
  v17 = v27;
  *(v11 + 64) = v26;
  *(v11 + 80) = v17;
  *(v11 + 96) = v28;
  *(v11 + 112) = v29;
  v18 = v23;
  *v11 = v22;
  *(v11 + 16) = v18;
  v19 = v25;
  *(v11 + 32) = v24;
  *(v11 + 48) = v19;
  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f10ModerationiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f10ModerationiJ0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[15] = 1;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO019CandidateModerationiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO019CandidateModerationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v14;
  v22 = 2;
  lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v20;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C654474786574 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO09TextDeltaiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO09TextDeltaiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v12;
    LOBYTE(v36[0]) = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v14;
    v27 = v13;
    LOBYTE(v36[0]) = 2;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v36[0]) = 3;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v15;
    v37 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v16 = v36[9];
    v17 = v36[10];
    outlined consume of Data?(0, 0xF000000000000000);
    v18 = v30;
    *&v31 = v11;
    *(&v31 + 1) = v30;
    v19 = v29;
    *&v32 = v27;
    *(&v32 + 1) = v29;
    *&v33 = v26;
    *(&v33 + 1) = v25;
    v20 = v28;
    *&v34 = v28;
    *(&v34 + 1) = v16;
    v35 = v17;
    outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v31, v36);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v36[0] = v11;
    v36[1] = v18;
    v36[2] = v27;
    v36[3] = v19;
    v36[4] = v26;
    v36[5] = v25;
    v36[6] = v20;
    v36[7] = v16;
    v36[8] = v17;
    result = outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(v36);
    v22 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v22;
    *(a2 + 64) = v35;
    v23 = v32;
    *a2 = v31;
    *(a2 + 16) = v23;
  }

  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABA41CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xEE0061746C654473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO013ToolCallDeltaiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO013ToolCallDeltaiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    LOBYTE(v42[0]) = 1;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v14;
    LOBYTE(v42[0]) = 2;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v16;
    v29 = v15;
    LOBYTE(v42[0]) = 3;
    v32 = 0;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v17;
    LOBYTE(v42[0]) = 4;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v18;
    v43 = 5;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v19 = v42[12];
    v20 = v42[13];
    outlined consume of Data?(0, 0xF000000000000000);
    *&v36 = v11;
    *(&v36 + 1) = v13;
    *&v37 = v33;
    v21 = v35;
    *(&v37 + 1) = v35;
    *&v38 = v29;
    v22 = v34;
    *(&v38 + 1) = v34;
    *&v39 = v28;
    *(&v39 + 1) = v31;
    *&v40 = v27;
    *(&v40 + 1) = v30;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v36, v42);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v42[0] = v11;
    v42[1] = v13;
    v42[2] = v33;
    v42[3] = v21;
    v42[4] = v29;
    v42[5] = v22;
    v42[6] = v28;
    v42[7] = v31;
    v42[8] = v27;
    v42[9] = v30;
    v42[10] = v19;
    v42[11] = v20;
    result = outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(v42);
    v24 = v39;
    a2[2] = v38;
    a2[3] = v24;
    v25 = v41;
    a2[4] = v40;
    a2[5] = v25;
    v26 = v37;
    *a2 = v36;
    a2[1] = v26;
  }

  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v24) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = v11;
  LOBYTE(v24) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v14;
  LOBYTE(v24) = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 3;
  lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v24;
  v16 = v25;

  v17 = v22;

  outlined copy of Data._Representation(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);

  result = outlined consume of Data._Representation(v15, v16);
  *a2 = v23;
  a2[1] = v13;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v15;
  a2[6] = v16;
  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioeiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v24) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = v11;
  LOBYTE(v24) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v14;
  LOBYTE(v24) = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 3;
  lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v24;
  v16 = v25;

  v17 = v22;

  outlined copy of Data._Representation(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);

  result = outlined consume of Data._Representation(v15, v16);
  *a2 = v23;
  a2[1] = v13;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v15;
  a2[6] = v16;
  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65526873696E6966 && a2 == 0xEC0000006E6F7361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000061746144)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO017CandidateFinishediJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO017CandidateFinishediJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  LOBYTE(v31) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v25 + 1) = v14;
  *&v25 = v13;
  LOBYTE(v27) = 2;
  lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v31;
  v38 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v22 = *(&v37 + 1);
  v23 = v37;
  v16 = *(&v25 + 1);
  v15 = v26;
  *&v27 = v11;
  *(&v27 + 1) = v26;
  v17 = v25;
  v28 = v25;
  v18 = v24;
  v29 = v24;
  v30 = v37;
  outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope(&v27, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v31 = v11;
  *(&v31 + 1) = v15;
  v32 = v17;
  v33 = v16;
  v34 = v18;
  v35 = v23;
  v36 = v22;
  result = outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope(&v31);
  v20 = v28;
  *a2 = v27;
  a2[1] = v20;
  v21 = v30;
  a2[2] = v29;
  a2[3] = v21;
  return result;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05UsageiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05UsageiJ0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[16] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[15] = 1;
    lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ResponseMetadataiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ResponseMetadataiJ0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[15] = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    outlined copy of Data._Representation(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);

    outlined consume of Data._Representation(v10, v11);
  }

  return v8;
}

uint64_t specialized PromptCompletionStreamElementEnvelope.Envelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABA41B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA41C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C654474786574 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C61436C6F6F74 && a2 == 0xED000061746C6544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65476567616D69 && a2 == 0xEF6E6F6974617265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E65476F69647561 && a2 == 0xEF6E6F6974617265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656E6547656C6966 && a2 == 0xEE006E6F69746172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001ABA41C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41C60 == a2)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t specialized ToolChoiceEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized UsageEnvelope.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration13UsageEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration13UsageEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized ModerationEnvelope.ProbabilityEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626967696C67656ELL && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *specialized ModerationEnvelope.ProbabilityEnvelope.init(from:)(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O14HighCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O14HighCodingKeysOGMR);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O16MediumCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O16MediumCodingKeysOGMR);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O13LowCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O13LowCodingKeysOGMR);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O20NegligibleCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O20NegligibleCodingKeysOGMR);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O10CodingKeysOGMR);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = specialized Collection<>.popFirst()();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();
        v36 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();
        v29 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();
      v35 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();
      v37 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = type metadata accessor for DecodingError();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
  *v15 = &unk_1F20686A8;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v51);
  return v15;
}

void *specialized ModerationEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OGMd, &_sSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OGMR);
    lazy protocol witness table accessor for type [String : ModerationEnvelope.ProbabilityEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : ModerationEnvelope.ProbabilityEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t specialized RequestMetadataEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001ABA41A90 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABA41AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001ABA41AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized RequestMetadataEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23RequestMetadataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23RequestMetadataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v28 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v27 = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v26 = 3;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v16 = v25;
  v17 = v21;

  v18 = v23;

  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v17;
  a2[6] = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.DelimiterEnvelope and conformance PromptEnvelope.DelimiterEnvelope, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.DelimiterEnvelope and conformance PromptEnvelope.DelimiterEnvelope, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.AttachmentEnvelope and conformance PromptEnvelope.AttachmentEnvelope, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.AttachmentEnvelope and conformance PromptEnvelope.AttachmentEnvelope, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys);
  }

  return result;
}

uint64_t specialized PromptEnvelope.DelimiterEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEE00796C6E4F6E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized PromptEnvelope.AttachmentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
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

uint64_t specialized PromptEnvelope.AttachmentContentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275536567616D69 && a2 == 0xEC00000065636166 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D456567616D69 && a2 == 0xEE00676E69646465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001ABA41DD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE0074616D726F46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696665446C6F6F74 && a2 == 0xEF736E6F6974696ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C61436C6F6F74 && a2 == 0xE900000000000073)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized PromptEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574696D696C6564 && a2 == 0xEA00000000007372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL)
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

uint64_t specialized PromptEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v12) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMR);
    v11 = 1;
    lazy protocol witness table accessor for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMR);
    v11 = 2;
    lazy protocol witness table accessor for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A]();
    v10 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

uint64_t specialized PromptRenderingEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEE0074706D6F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7344496E656B6F74 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001ABA41AF0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys);
  }

  return result;
}

uint64_t specialized ImageDataEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration17ImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration17ImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    lazy protocol witness table accessor for type ImageFormatEnvelope and conformance ImageFormatEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[8];
    v11 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized PreprocessedImageDataEnvelope.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29PreprocessedImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29PreprocessedImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7Float16VGMd, &_sSays7Float16VGMR);
  HIBYTE(v10) = 0;
  lazy protocol witness table accessor for type [Float16] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  HIBYTE(v10) = 1;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t specialized ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616D6D617267 && a2 == 0xE700000000000000)
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

uint64_t specialized ResponseFormatEnvelope.GrammarDetailsEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV014GrammarDetailsH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV014GrammarDetailsH0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t specialized ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
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

uint64_t specialized ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726573776F7262 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65476567616D69 && a2 == 0xEE00726F74617265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA3FDD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABA3FDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *specialized ToolDefinitionsEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0cE0OGMd, &_sSay15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0cE0OGMR);
    lazy protocol witness table accessor for type [ToolDefinitionsEnvelope.ToolEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t specialized ImageFormatEnvelope.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13JpgCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13JpgCodingKeysOGMR);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13PngCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13PngCodingKeysOGMR);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v24 = &unk_1F206E5C8;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

uint64_t specialized ImageEmbeddingEncodingEnvelope.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration30ImageEmbeddingEncodingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO17Float16CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration30ImageEmbeddingEncodingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO17Float16CodingKeysOGMR);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration30ImageEmbeddingEncodingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15Uint8CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration30ImageEmbeddingEncodingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15Uint8CodingKeysOGMR);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration30ImageEmbeddingEncodingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration30ImageEmbeddingEncodingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v24 = &unk_1F206E538;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

uint64_t specialized ImageEmbeddingEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436E656B6F74 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ImageEmbeddingEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ImageEmbeddingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ImageEmbeddingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope and conformance ImageEmbeddingEncodingEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v26;
  v28 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v26;
  v25 = v27;
  LOBYTE(v26) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v26) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v16 = *(v6 + 8);
  v23 = v13;
  v16(v9, v5);
  v17 = v12;
  v18 = v12;
  v19 = v25;
  outlined copy of Data._Representation(v18, v25);

  __swift_destroy_boxed_opaque_existential_0(a1);
  outlined consume of Data._Representation(v17, v19);

  *a2 = v11;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  v21 = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v21;
  *(a2 + 40) = v15;
  return result;
}

uint64_t specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O04TextI0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O04TextI0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7275536567616D69 && a2 == 0xEC00000065636166 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABA3F8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABA3F8F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMd, &_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMR);
    lazy protocol witness table accessor for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t specialized PromptTemplateInfoEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001ABA41B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized DocumentResourceEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63736544656C6966 && a2 == 0xEE00726F74706972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t specialized DocumentRegistrationStatusEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265747369676572 && a2 == 0xEB00000000676E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t specialized ProgressEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365747962 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365)
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

uint64_t specialized ProgressEnvelope.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16ProgressEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16ProgressEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t specialized SamplingParametersEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7967657461727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x546D756D6978616DLL && a2 == 0xED0000736E656B6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x75716553706F7473 && a2 == 0xED00007365636E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA41890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001ABA418B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA418D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABA418F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABA41910 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t specialized SamplingStrategyEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x78616D677261 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537375656C63756ELL && a2 == 0xEF676E696C706D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
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

uint64_t specialized SamplingStrategyEnvelope.init(from:)(uint64_t *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14TopKCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14TopKCodingKeysOGMR);
  v41 = *(v38 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v43 = &v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO07NucleusF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO07NucleusF10CodingKeysOGMR);
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO16ArgmaxCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO16ArgmaxCodingKeysOGMR);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v45 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();
  v19 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v37 = v7;
    v44 = 0;
    v21 = v42;
    v20 = v43;
    v22 = v12;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v47 = v23;
    v48 = v23 + 32;
    v49 = 0;
    v50 = v24;
    v25 = specialized Collection<>.popFirst()();
    if (v25 == 3 || v49 != v50 >> 1)
    {
      v29 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v31 = &unk_1F2067540;
      v18 = v15;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
    }

    else if (v25)
    {
      if (v25 != 1)
      {
        v46 = 2;
        lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();
        v18 = v15;
        v35 = v44;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v35)
        {
          v36 = v38;
          v18 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v41 + 8))(v20, v36);
          (*(v22 + 8))(v15, v11);
          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        (*(v12 + 8))(v15, v11);
        goto LABEL_10;
      }

      v46 = 1;
      lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();
      v18 = v15;
      v26 = v44;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v26)
      {
        KeyedDecodingContainer.decode(_:forKey:)();
        v28 = v27;
        (*(v40 + 8))(v6, v21);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = v28;
        goto LABEL_11;
      }
    }

    else
    {
      v46 = 0;
      lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();
      v18 = v15;
      v34 = v44;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v34)
      {
        (*(v39 + 8))(v10, v37);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = 0;
        goto LABEL_11;
      }
    }

    (*(v22 + 8))(v15, v11);
LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v45);
  return v18;
}

uint64_t specialized ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72657773776F7262 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65476567616D69 && a2 == 0xEE00726F74617265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001ABA3FDD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABA3FDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xEF616D6568635373)
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

void *specialized ToolCallEnvelope.KindEnvelope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O18FunctionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O18FunctionCodingKeysOGMR);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v24 = a1;
  v13 = v31;
  v14 = v25;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v27 = v15;
  v28 = v15 + 32;
  v29 = 0;
  v30 = v16;
  v17 = v10;
  if (specialized Collection<>.popFirst()() || v29 != v30 >> 1)
  {
    v18 = v7;
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v21 = &unk_1F206E658;
    v12 = v17;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v14 + 8))(v17, v18);
    swift_unknownObjectRelease();
    a1 = v24;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v12;
  }

  lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope and conformance ToolCallEnvelope.FunctionEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v6, v3);
  (*(v14 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v12 = v26;
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v12;
}

uint64_t specialized ToolCallEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
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

uint64_t specialized ToolCallEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v30) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v25 = v11;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope and conformance ToolCallEnvelope.KindEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v30;
    v22 = v31;
    v24 = v32;
    v39 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v14 = v37;
    v15 = v38;
    outlined consume of Data?(0, 0xF000000000000000);
    v17 = v24;
    v16 = v25;
    *&v26 = v25;
    *(&v26 + 1) = v13;
    v18 = *(&v23 + 1);
    v27 = v23;
    *&v28 = v22;
    *(&v28 + 1) = v24;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    outlined init with copy of ToolCallEnvelope(&v26, &v30);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v30 = v16;
    *(&v30 + 1) = v13;
    v31 = v23;
    v32 = v18;
    v33 = v22;
    v34 = v17;
    v35 = v14;
    v36 = v15;
    result = outlined destroy of ToolCallEnvelope(&v30);
    v20 = v27;
    *a2 = v26;
    a2[1] = v20;
    v21 = v29;
    a2[2] = v28;
    a2[3] = v21;
  }

  return result;
}

uint64_t specialized ClassificationResponseEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001ABA41BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ClassificationResponseEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration30ClassificationResponseEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration30ClassificationResponseEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  LOBYTE(v25) = 0;
  lazy protocol witness table accessor for type [String : Bool] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Bool] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v28;
  LOBYTE(v25) = 1;
  lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v23 = v11;
  v12 = *(&v28 + 1);
  *(&v23 + 1) = v28;
  v24 = v29;
  LOBYTE(v28) = 2;
  HIDWORD(v21) = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v12;
  v38 = 3;
  lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  HIDWORD(v21) = BYTE4(v21) & 1;
  (*(v10 + 8))(v8, v47);
  *&v46[23] = v40;
  *&v46[7] = v39;
  *&v46[71] = v43;
  *&v46[55] = v42;
  *&v46[87] = v44;
  *&v46[103] = v45;
  *&v46[39] = v41;
  *(&v27[3] + 1) = *&v46[48];
  *(&v27[4] + 1) = *&v46[64];
  *(&v27[5] + 1) = *&v46[80];
  v27[6] = *&v46[95];
  *(v27 + 1) = *v46;
  *(&v27[1] + 1) = *&v46[16];
  v13 = v23;
  v25 = v23;
  v14 = v22;
  v15 = v24;
  *&v26 = v22;
  *(&v26 + 1) = v24;
  LOBYTE(v27[0]) = BYTE4(v21);
  *(&v27[2] + 1) = *&v46[32];
  outlined init with copy of ClassificationResponseEnvelope(&v25, &v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35 = *&v46[48];
  v36 = *&v46[64];
  v37[0] = *&v46[80];
  *(v37 + 15) = *&v46[95];
  v32 = *v46;
  v33 = *&v46[16];
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = BYTE4(v21);
  v34 = *&v46[32];
  result = outlined destroy of ClassificationResponseEnvelope(&v28);
  v17 = v27[5];
  a2[6] = v27[4];
  a2[7] = v17;
  a2[8] = v27[6];
  v18 = v27[1];
  a2[2] = v27[0];
  a2[3] = v18;
  v19 = v27[3];
  a2[4] = v27[2];
  a2[5] = v19;
  v20 = v26;
  *a2 = v25;
  a2[1] = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMd, &_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMR);
    lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMd, &_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMR);
    lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope()
{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope.AssetEnvelope and conformance ModelInformationEnvelope.AssetEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolCallEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolCallEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type ToolCallEnvelope and conformance ToolCallEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolCallEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ToolCallEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolCallEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type ToolCallEnvelope and conformance ToolCallEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolCallEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolCallEnvelope and conformance ToolCallEnvelope()
{
  result = lazy protocol witness table cache variable for type ToolCallEnvelope and conformance ToolCallEnvelope;
  if (!lazy protocol witness table cache variable for type ToolCallEnvelope and conformance ToolCallEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolCallEnvelope and conformance ToolCallEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolCallEnvelope and conformance ToolCallEnvelope;
  if (!lazy protocol witness table cache variable for type ToolCallEnvelope and conformance ToolCallEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolCallEnvelope and conformance ToolCallEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressEnvelope and conformance ProgressEnvelope()
{
  result = lazy protocol witness table cache variable for type ProgressEnvelope and conformance ProgressEnvelope;
  if (!lazy protocol witness table cache variable for type ProgressEnvelope and conformance ProgressEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressEnvelope and conformance ProgressEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressEnvelope and conformance ProgressEnvelope;
  if (!lazy protocol witness table cache variable for type ProgressEnvelope and conformance ProgressEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressEnvelope and conformance ProgressEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys()
{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys()
{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys()
{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys);
  }

  return result;
}

uint64_t specialized OneShotRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001ABA41310 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F54746E756F63 && a2 == 0xEB00000000736E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001ABA412F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE0074706D6F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA41290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA412D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7966697373616C63 && a2 == 0xEE0074706D6F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA412B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x41656C69706D6F63 && a2 == 0xEE00726574706164)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope()
{
  result = lazy protocol witness table cache variable for type AudioContentEnvelope and conformance AudioContentEnvelope;
  if (!lazy protocol witness table cache variable for type AudioContentEnvelope and conformance AudioContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioContentEnvelope and conformance AudioContentEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioContentEnvelope and conformance AudioContentEnvelope;
  if (!lazy protocol witness table cache variable for type AudioContentEnvelope and conformance AudioContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioContentEnvelope and conformance AudioContentEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope()
{
  result = lazy protocol witness table cache variable for type ImageContentEnvelope and conformance ImageContentEnvelope;
  if (!lazy protocol witness table cache variable for type ImageContentEnvelope and conformance ImageContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageContentEnvelope and conformance ImageContentEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageContentEnvelope and conformance ImageContentEnvelope;
  if (!lazy protocol witness table cache variable for type ImageContentEnvelope and conformance ImageContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageContentEnvelope and conformance ImageContentEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMd, &_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMd, &_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys);
  }

  return result;
}