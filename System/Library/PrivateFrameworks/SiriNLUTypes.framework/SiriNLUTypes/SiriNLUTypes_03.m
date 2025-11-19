uint64_t sub_1C87CA278()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.isStableEmbeddingsVersion.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87CA3AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingResponse.numToken.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CA3F8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingResponse.numLayer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CA444()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingDim.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CA4F8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingTensorOutputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CA59C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingResponse.numSubwordToken.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CA5E8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordEmbeddingTensorOutputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CA614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
    v10 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v11 = *(a1 + *(a3 + 20) + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1C87CA6FC()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return result;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
    v8 = v1 + *(v2 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1C87CA7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C87CA864()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C87CA9EC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CAA84(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1C87CABA4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C87CACE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1C87CADC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C87CAE94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CAF1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CB044@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CB074(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_1C8BD49FC();
    v5 = OUTLINED_FUNCTION_32_1();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_1C87CB0F8(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C8BD49FC();
    v4 = OUTLINED_FUNCTION_32_1();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1C87CB174()
{
  v2 = OUTLINED_FUNCTION_14_12();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
    v6 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1C87CB208(uint64_t a1, uint64_t a2, int a3)
{
  v6 = OUTLINED_FUNCTION_14_12();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
    v10 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, v3, v3, v9);
}

uint64_t sub_1C87CB2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_14_12();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_18_0(v11);
  if (*(v12 + 84) == v3)
  {
    v10 = OUTLINED_FUNCTION_32_1();
    goto LABEL_5;
  }

  v14 = *(v4 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C87CB39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_14_12();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
    result = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = v4;
      return result;
    }

    v12 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1C87CB49C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB4E8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceAlignment.nodeIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB534()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.startIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB580()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB5CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.startUnicodeScalarIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB618()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB664()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.startMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB6B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.endMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB6FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87CB740(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1C87CB998@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.modelType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBA30@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.modelType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBA60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CBAE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CBC58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CBCE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CBDEC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBE1C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBF3C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = v3 + v14;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v19 = OUTLINED_FUNCTION_18_0(v18);
    if (*(v20 + 84) == a2)
    {
      v9 = v19;
      v14 = a3[8];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v14 = a3[9];
    }

    goto LABEL_5;
  }

  v16 = *(v3 + a3[6] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1C87CC0B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
    result = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6] + 8) = a2;
        return result;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v18 = OUTLINED_FUNCTION_18_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
        v16 = a4[9];
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87CC23C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC2D0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.matchingSpans.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CC2FC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.systemDialogActs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CC3A0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.inputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CC3CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_68_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1C87CC570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87CC614@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CC644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C87CC700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87CC7AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.planText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC7D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.generatedTranscriptEventsJson.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC804()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.protoEncoding.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC830()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.runtimeEncoding.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC85C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.eventDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC888(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CC910(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C87CCA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87CCAF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CCB78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CCC68()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_OverrideCollection.creationTimestampMsSinceUnixEpoch.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCCB8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_OverrideCollection.assetID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCCE4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_OverrideCollection.version.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCD10()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCD3C()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_ParseOverride.enabled.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CCD88()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.creationTimestampMsSinceUnixEpoch.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCE48()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.nluRequestRules.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCE74()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.serializedParse.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCEA0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCED4()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_ComponentOverride.enabled.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CCF20()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.creationTimestampMsSinceUnixEpoch.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCFE8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.serializedValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD2D4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.plan.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD300()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD32C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.localeID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD358()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.deviceType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD384()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.userInterfaceIdiom.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD4A0()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.ContextRule.applyToPromptScenarios.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD4F4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.pattern.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD5A0()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.caseInsensitive.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD5EC()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.diacriticInsensitive.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD638()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.widthInsensitive.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD684()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.captureGroupName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD6B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD6DC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetNodeIdx.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CD72C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetUdaIdx.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CD77C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87CD7C0()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v0 = OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C87CD84C()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_21_0(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C87CD8AC()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v2 = v0;
    sub_1C8BD49FC();
    v3 = OUTLINED_FUNCTION_102_0(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C87CD91C()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB60, &qword_1C8C10AA8);
    v6 = *(v1 + 40);
  }

  v7 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C87CD9C4()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB60, &qword_1C8C10AA8);
      v5 = *(v0 + 40);
    }

    v6 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C87CDAC4()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
    v6 = *(v1 + 28);
  }

  v7 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C87CDB70()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C87CDC24()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
    v6 = *(v1 + 24);
  }

  v7 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C87CDCCC()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
      v5 = *(v0 + 24);
    }

    v6 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C87CDD8C@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_External_SemVer.majorVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CDDE0@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_External_SemVer.minorVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CDE34@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_External_SemVer.patchVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CDEB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1C87CDF88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C87CE080()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE0AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE2B8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CE35C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CE424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v10 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v11 = *(a1 + *(a3 + 20) + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1C87CE50C()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return result;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v8 = v1 + *(v2 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1C87CE5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C87CE674()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C87CE70C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_TurnSummary.ExecutionSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CE7D0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE874()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CE8A0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE8CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.trpCandidateID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE9E8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_PommesResponse.metadataDomainName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEB04()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.BOOLValue.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87CEC48()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEC74()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CED18()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEDBC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEDE8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.typeName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEF0C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.BOOLValue.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87CEFD8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF07C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.sourceItemIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF0A8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.entityName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF0D4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF120()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF23C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF268()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF294()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF2C0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF30C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF4C0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_RequestSummary.userQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF4EC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TurnSummary.executedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF518()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TurnSummary.responseText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    OUTLINED_FUNCTION_61_1();
    return (v12 + 1);
  }
}

uint64_t sub_1C87CF65C()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C87CF73C()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
LABEL_14:

    return __swift_getEnumTagSinglePayload(v5, v0, v6);
  }

  if (v0 != 253)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A0, &qword_1C8C13038);
    OUTLINED_FUNCTION_18_0(v9);
    if (*(v10 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A8, &qword_1C8C13040);
      v11 = *(v2 + 28);
    }

    v5 = v1 + v11;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_195_3(*(v2 + 20));
  if (v7)
  {
    OUTLINED_FUNCTION_220_2();
  }

  else
  {
    v8 = -2;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C87CF850()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return result;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A0, &qword_1C8C13038);
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v3)
    {
      OUTLINED_FUNCTION_264_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A8, &qword_1C8C13040);
      v9 = *(v2 + 28);
    }
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1C87CF960(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == a2)
  {
    v5 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }

  else
  {
    OUTLINED_FUNCTION_386();
    v9 = *(v8 + 8) >> 60;
    v10 = ((4 * v9) & 0xC) == 0;
    v11 = ((4 * v9) & 0xC | (v9 >> 2)) ^ 0xF;
    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_1C87CFA08()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    v11 = (v1 + *(v2 + 20));
    *v11 = 0;
    v11[1] = ((~v0 >> 2) & 3 | (4 * ~v0)) << 60;
  }

  return result;
}

uint64_t sub_1C87CFAA0()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B0, &qword_1C8C13048);
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) != v0)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 24));
    }

    v5 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_1C87CFB74()
{
  v4 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B0, &qword_1C8C13048);
    result = OUTLINED_FUNCTION_18_0(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = v0;
      return result;
    }

    OUTLINED_FUNCTION_32_1();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1C87CFC74()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
LABEL_11:

    return __swift_getEnumTagSinglePayload(v5, v0, v6);
  }

  if (v0 != 250)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
    OUTLINED_FUNCTION_266();
    v5 = v1 + v11;
    goto LABEL_11;
  }

  v7 = *(v1 + *(v2 + 20));
  if (v7 <= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = *(v1 + *(v2 + 20));
  }

  v9 = v8 - 5;
  if (v7 >= 5)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C87CFD38()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 250)
    {
      *(v1 + *(v2 + 20)) = v0 + 5;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
    OUTLINED_FUNCTION_264_0();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C87CFE10()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
LABEL_7:

    return __swift_getEnumTagSinglePayload(v5, v0, v6);
  }

  if (v0 != 253)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
    OUTLINED_FUNCTION_266();
    v5 = v1 + v9;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_195_3(*(v2 + 20));
  if (v7)
  {
    OUTLINED_FUNCTION_220_2();
  }

  else
  {
    v8 = -2;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C87CFED8()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
    OUTLINED_FUNCTION_264_0();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C87CFF88()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    v4 = *v1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    v7 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      v9 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
      OUTLINED_FUNCTION_266();
    }

    v10 = OUTLINED_FUNCTION_21_0(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1C87D0040()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_219_1();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
      OUTLINED_FUNCTION_264_0();
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1C87D00FC()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 20));
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C0, &qword_1C8C13078);
    v5 = v1 + *(v2 + 40);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C87D01B4()
{
  v3 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v2 == 2147483646)
    {
      OUTLINED_FUNCTION_27_6();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C0, &qword_1C8C13078);
    v5 = v0 + *(v1 + 40);
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87D028C()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C8, &qword_1C8C13080);
    v5 = v1 + *(v2 + 28);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_1C87D031C()
{
  v3 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C8, &qword_1C8C13080);
    v5 = v0 + *(v1 + 28);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87D03D4()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    v3 = *v0;
    OUTLINED_FUNCTION_61_1();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_1C8BD49FC();
    v6 = OUTLINED_FUNCTION_21_0(*(v1 + 48));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C87D0444()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_219_1();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v2 = v0;
    sub_1C8BD49FC();
    v3 = *(v2 + 48);
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87D04FC()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    v3 = *v0;
    OUTLINED_FUNCTION_61_1();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_1C8BD49FC();
    v6 = OUTLINED_FUNCTION_21_0(*(v1 + 32));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C87D056C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_219_1();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v2 = v0;
    sub_1C8BD49FC();
    v3 = *(v2 + 32);
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87D05DC()
{
  v3 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 20));
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
    v5 = v1 + *(v2 + 32);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C87D0694()
{
  v3 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v2 == 2147483646)
    {
      OUTLINED_FUNCTION_27_6();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
    v5 = v0 + *(v1 + 32);
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87D07A8@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSUEncodingResult.requestID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87D07D8@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSUEncodingResult.ssuEncoderVersion.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87D0808@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSUEncodingResult.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87D0838(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87D08C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  sub_1C8786744(v1 + *(v10 + 28), v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65(v2);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v11[5]);
    OUTLINED_FUNCTION_313(a1 + v11[6]);
    *(a1 + v11[7]) = 6;
    result = OUTLINED_FUNCTION_65(v2);
    if (!v12)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_121();
    return sub_1C87E4518();
  }

  return result;
}

uint64_t sub_1C87D0ADC()
{
  v0 = type metadata accessor for Siri_Nlu_External_UUID();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C87E45D0();
  return Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 28);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_1_2();
  sub_1C87E4518();
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(v0 + v1, 0, 1, v2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse()
{
  result = qword_1EC2B3EF8;
  if (!qword_1EC2B3EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 28);
  *(v3 + 10) = v11;
  sub_1C8786744(v1 + v11, v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_184();
    sub_1C87E4518();
  }

  return sub_1C87D0E0C;
}

void sub_1C87D0E0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    v9 = (*a1)[4];
    sub_1C87E45D0();
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_1_2();
    sub_1C87E4518();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_6_1();
    sub_1C87E4624();
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_1_2();
    sub_1C87E4518();
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  sub_1C8786744(v0 + *(v6 + 28), v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE68C0);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 28);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.qrHypotheses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  v4 = *(v1 + *(result + 32));
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C87D10E8@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.rewriteHypotheses.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 24);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 24);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRResponse.unknownFields.modify())()
{
  OUTLINED_FUNCTION_241();
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 24);
  return nullsub_1;
}

SiriNLUTypes::Siri_Nlu_Internal_Queryrewrite_QRResponse::QRRepetitionType_optional __swiftcall Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BOOL sub_1C87D1410()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD47CC();
  sub_1C87E44D0(&qword_1EC2B6108, MEMORY[0x1E69AA8E8]);
  OUTLINED_FUNCTION_271();
  sub_1C8BD51EC();
  OUTLINED_FUNCTION_271();
  sub_1C8BD51EC();
  return v2 == v1;
}

BOOL sub_1C87D14A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1C8BE6EF0[a1];
  }

  if (a4)
  {
    a3 = qword_1C8BE6EF0[a3];
  }

  return a1 == a3;
}

uint64_t sub_1C87D151C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87D1ED4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C87D1584@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = v3[7];
  v6 = type metadata accessor for Siri_Nlu_External_UUID();
  result = __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
  *(a1 + v3[8]) = 4;
  return result;
}

uint64_t sub_1C87D165C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4C80);
  __swift_project_value_buffer(v0, qword_1EC2B4C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qr_hypotheses";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "repetition_type";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rewrite_hypotheses";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1980();
        break;
      case 2:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1A34();
        break;
      case 3:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1AD4();
        break;
      case 4:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1B48();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87D1980()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 28);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87E44D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87D1A34()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C87E44D0(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C87D1AD4()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse() + 32);
  sub_1C87D1ED4();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C87D1B48()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C87E44D0(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_210();
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v16 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  sub_1C8786744(v0 + v16[7], v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_219();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    sub_1C87E4518();
    sub_1C87E44D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_203();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_6_1();
    result = sub_1C87E4624();
    if (v1)
    {
      return result;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0), sub_1C87E44D0(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis), OUTLINED_FUNCTION_203(), result = sub_1C8BD4E0C(), !v1))
  {
    if (*(v0 + v16[8]) == 4 || (sub_1C87D1ED4(), OUTLINED_FUNCTION_203(), result = sub_1C8BD4D4C(), !v1))
    {
      if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0), sub_1C87E44D0(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis), OUTLINED_FUNCTION_203(), result = sub_1C8BD4E0C(), !v1))
      {
        v15 = v0 + v16[6];
        OUTLINED_FUNCTION_234();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

unint64_t sub_1C87D1ED4()
{
  result = qword_1EC2B5EE0;
  if (!qword_1EC2B5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5EE0);
  }

  return result;
}

void static Siri_Nlu_Internal_Queryrewrite_QRResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for Siri_Nlu_External_UUID();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v7 = OUTLINED_FUNCTION_233();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v38 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  v16 = v38[7];
  v17 = v13[14];
  OUTLINED_FUNCTION_273(v1 + v16, v2);
  OUTLINED_FUNCTION_273(v0 + v16, v2 + v17);
  v18 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v18, v19, v3);
  if (!v24)
  {
    v20 = OUTLINED_FUNCTION_299_0();
    sub_1C8786744(v20, v21, v22, v23);
    OUTLINED_FUNCTION_76(v2 + v17, 1, v3);
    if (!v24)
    {
      OUTLINED_FUNCTION_1_2();
      sub_1C87E4518();
      v25 = OUTLINED_FUNCTION_260_0();
      v27 = static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
      sub_1C87E4624();
      OUTLINED_FUNCTION_229();
      sub_1C87E4624();
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_6_1();
    sub_1C87E4624();
LABEL_9:
    sub_1C8778ED8(v2, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_76(v2 + v17, 1, v3);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_11:
  v28 = *v1;
  v29 = *v0;
  sub_1C87D2B40();
  if (v30)
  {
    v31 = v38[8];
    v32 = *(v1 + v31);
    v33 = *(v0 + v31);
    if (v32 == 4)
    {
      if (v33 != 4)
      {
        goto LABEL_18;
      }
    }

    else if (v32 != v33)
    {
      goto LABEL_18;
    }

    v34 = v1[1];
    v35 = v0[1];
    sub_1C87D2B40();
    if (v36)
    {
      v37 = v38[6];
      sub_1C8BD49FC();
      sub_1C87E44D0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      sub_1C8BD517C();
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse();
  sub_1C87E44D0(&qword_1EC2B5EF0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t (*sub_1C87D2340(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C87D2394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87E44D0(&qword_1EC2B5F50, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87D2414(uint64_t a1)
{
  v2 = sub_1C87E44D0(&qword_1EC2B5F28, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87D2484()
{
  sub_1C87E44D0(&qword_1EC2B5F28, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C87D2500()
{
  sub_1C8BD530C();
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87D2558()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4CA0);
  __swift_project_value_buffer(v0, qword_1EC2B4CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_AVAILABLE";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_REPETITION";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARTIAL_REPETITION";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FULL_REPETITION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C87D2814(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C8BD529C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C87D28A0()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(v3);
  v5 = OUTLINED_FUNCTION_7_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  if (v16 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14(v9);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      v10 = *(v4 + 20);
      OUTLINED_FUNCTION_23_1();
      if (v13)
      {
        if (!v11 || ((OUTLINED_FUNCTION_35(v12), v16) ? (v16 = v14 == v15) : (v16 = 0), !v16 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_29:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v11)
      {
        goto LABEL_29;
      }

      v17 = *(v4 + 24);
      OUTLINED_FUNCTION_23_1();
      if (v20)
      {
        if (!v18)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_35(v19);
        v23 = v16 && v21 == v22;
        if (!v23 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v18)
      {
        goto LABEL_29;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v24);
      v25 = OUTLINED_FUNCTION_93_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v25)
      {
        OUTLINED_FUNCTION_22();
        if (!v16)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D2B40()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_28_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(v5 + 16);
  if (v11 == *(v3 + 16) && v11 && v5 != v3)
  {
    OUTLINED_FUNCTION_27_2(v10);
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_258();
      sub_1C87E45D0();
      sub_1C87E45D0();
      v17 = OUTLINED_FUNCTION_97();
      v18 = v1(v17);
      OUTLINED_FUNCTION_121();
      sub_1C87E4624();
      OUTLINED_FUNCTION_118();
      sub_1C87E4624();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      OUTLINED_FUNCTION_112_1();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C87D2D00()
{
  OUTLINED_FUNCTION_124();
  v20 = v2;
  v3 = OUTLINED_FUNCTION_201();
  v21 = v4(v3);
  v5 = OUTLINED_FUNCTION_7_2(v21);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_254();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  v9 = *(v1 + 16);
  OUTLINED_FUNCTION_227_0();
  if (v11 && v9 && v1 != v0)
  {
    OUTLINED_FUNCTION_27_2(v10);
    v13 = v1 + v12;
    v14 = v0 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_234();
      sub_1C87E45D0();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_269();
      if (!v11)
      {

        v17 = OUTLINED_FUNCTION_306();
        v18 = v20(v17);

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v19);
      if ((OUTLINED_FUNCTION_225() & 1) == 0)
      {
        break;
      }

      sub_1C87E4624();
      OUTLINED_FUNCTION_119_0();
      sub_1C87E4624();
      v14 += v16;
      v13 += v16;
      if (!--v9)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_316();
    sub_1C87E4624();
    OUTLINED_FUNCTION_91();
    sub_1C87E4624();
  }

LABEL_12:
  OUTLINED_FUNCTION_125();
}

void sub_1C87D2EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  v636 = OUTLINED_FUNCTION_13_1(v29);
  v637 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v636);
  OUTLINED_FUNCTION_10_0();
  v635 = v33;
  OUTLINED_FUNCTION_83_0();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v553 - v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_123();
  v638 = v38;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v553 - v40);
  v42 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v43 = OUTLINED_FUNCTION_21(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v47 = OUTLINED_FUNCTION_80(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_206_0();
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC0, &unk_1C8BE6C70);
  v51 = OUTLINED_FUNCTION_21(v591);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_96();
  v56 = OUTLINED_FUNCTION_63_0(v55);
  v592 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v56);
  v57 = OUTLINED_FUNCTION_13_1(v592);
  v574 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v62);
  v589 = sub_1C8BD48FC();
  v63 = OUTLINED_FUNCTION_13_1(v589);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v73);
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD0, &unk_1C8BE6C80);
  OUTLINED_FUNCTION_21(v584);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_81();
  v78 = OUTLINED_FUNCTION_63_0(v77);
  v586 = type metadata accessor for Siri_Nlu_External_UsoGraph(v78);
  v79 = OUTLINED_FUNCTION_21(v586);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v87);
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21(v585);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_63_0(v91);
  v588 = type metadata accessor for Siri_Nlu_External_UUID();
  v92 = OUTLINED_FUNCTION_21(v588);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v96);
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v100);
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v587);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_81();
  v105 = OUTLINED_FUNCTION_63_0(v104);
  v615 = type metadata accessor for Siri_Nlu_External_Task(v105);
  v106 = OUTLINED_FUNCTION_13_1(v615);
  v580[2] = v107;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_10_0();
  v624 = v110;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_123();
  v625 = v112;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_123();
  v620 = v114;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_96();
  v117 = OUTLINED_FUNCTION_63_0(v116);
  v608 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v117);
  v118 = OUTLINED_FUNCTION_13_1(v608);
  v575 = v119;
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  v129 = OUTLINED_FUNCTION_80(v128);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v133);
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE8, &qword_1C8BE6CA0);
  v134 = OUTLINED_FUNCTION_21(v576);
  v136 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_96();
  v139 = OUTLINED_FUNCTION_63_0(v138);
  v594 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v139);
  v140 = OUTLINED_FUNCTION_21(v594);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v146 = OUTLINED_FUNCTION_80(v145);
  v148 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v150);
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF8, &qword_1C8BE6CB0);
  v151 = OUTLINED_FUNCTION_21(v583);
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_96();
  v156 = OUTLINED_FUNCTION_63_0(v155);
  v607 = type metadata accessor for Siri_Nlu_External_NLContext(v156);
  v157 = OUTLINED_FUNCTION_21(v607);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v161);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v163 = OUTLINED_FUNCTION_80(v162);
  v165 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v167);
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  v168 = OUTLINED_FUNCTION_21(v604);
  v170 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_96();
  v173 = OUTLINED_FUNCTION_63_0(v172);
  v622 = type metadata accessor for Siri_Nlu_External_TurnContext(v173);
  v174 = OUTLINED_FUNCTION_21(v622);
  v176 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v178);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v180 = OUTLINED_FUNCTION_80(v179);
  v182 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v184);
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0);
  v185 = OUTLINED_FUNCTION_21(v619);
  v187 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v185);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_96();
  v190 = OUTLINED_FUNCTION_63_0(v189);
  v633 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v190);
  v191 = OUTLINED_FUNCTION_13_1(v633);
  v628 = v192;
  v194 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_10_0();
  v626 = v195;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_123();
  v627 = v197;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_123();
  v631 = v199;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v200);
  OUTLINED_FUNCTION_96();
  v632 = v201;
  v202 = OUTLINED_FUNCTION_86();
  v618 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v202);
  v203 = OUTLINED_FUNCTION_21(v618);
  v205 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v206);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
  OUTLINED_FUNCTION_80(v207);
  v209 = *(v208 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v211);
  v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6028, &unk_1C8BE6CE0);
  OUTLINED_FUNCTION_21(v617);
  v213 = *(v212 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v214);
  OUTLINED_FUNCTION_81();
  v621 = v215;
  v216 = OUTLINED_FUNCTION_86();
  v623 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v216);
  v217 = OUTLINED_FUNCTION_7_2(v623);
  v219 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v217);
  OUTLINED_FUNCTION_20_1();
  v630 = v220;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v221);
  v629 = (&v553 - v222);
  v223 = *(v28 + 16);
  OUTLINED_FUNCTION_256();
  if (v243 && v225 && v28 != v26)
  {
    v593 = v37;
    OUTLINED_FUNCTION_27_2(v224);
    v561 = (v65 + 32);
    v562 = (v65 + 8);
    v228 = *(v227 + 72);
    v634 = v41;
    v570 = v42;
    v563 = v20;
    v560 = v21;
    v564 = v22;
    v230 = v629;
    v229 = v630;
    v231 = v621;
    v572 = v232;
    v567 = v28 + v233;
    v568 = v26 + v233;
    v566 = v228;
    while (1)
    {
      v234 = v226;
      v235 = v228 * v226;
      sub_1C87E45D0();
      v571 = v234;
      if (v234 == v572)
      {
        break;
      }

      sub_1C87E45D0();
      v236 = *(v623 + 28);
      OUTLINED_FUNCTION_172(&a18);
      sub_1C8786744(v230 + v236, v231, &qword_1EC2B6020, &qword_1C8BE6CD8);
      OUTLINED_FUNCTION_331(v229 + v236, v231 + v235);
      v237 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_41_2(v237, v238);
      if (v243)
      {
        OUTLINED_FUNCTION_19(v231 + v235);
        if (!v243)
        {
          goto LABEL_236;
        }

        v239 = OUTLINED_FUNCTION_200_0();
        sub_1C8778ED8(v239, v240, &qword_1C8BE6CD8);
      }

      else
      {
        OUTLINED_FUNCTION_110(&v632);
        OUTLINED_FUNCTION_331(v241, v242);
        OUTLINED_FUNCTION_19(v231 + v235);
        if (v243)
        {
          sub_1C87E4624();
LABEL_236:
          sub_1C8778ED8(v231, &qword_1EC2B6028, &unk_1C8BE6CE0);
          goto LABEL_286;
        }

        OUTLINED_FUNCTION_192(&v626);
        sub_1C87E4518();
        OUTLINED_FUNCTION_196_0();
        static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.== infix(_:_:)();
        v245 = v244;
        sub_1C87E4624();
        OUTLINED_FUNCTION_270();
        v41 = v634;
        sub_1C87E4624();
        v246 = OUTLINED_FUNCTION_200_0();
        sub_1C8778ED8(v246, v247, &qword_1C8BE6CD8);
        if ((v245 & 1) == 0)
        {
          goto LABEL_286;
        }
      }

      v248 = *v230;
      v249 = *v229;
      v250 = (*v230)[2];
      if (v250 != *(*v229 + 16))
      {
        goto LABEL_286;
      }

      if (v250 && v248 != v249)
      {
        v251 = 0;
        OUTLINED_FUNCTION_71(v628);
        v569 = v249 + v252;
        v559 = v248;
        v558 = v249;
        v557 = v253;
        v556 = v248 + v252;
        do
        {
          v254 = v614[1];
          if (v251 >= v248[2])
          {
            goto LABEL_291;
          }

          v255 = *(v628 + 72) * v251;
          OUTLINED_FUNCTION_31_1();
          v256 = v632;
          sub_1C87E45D0();
          OUTLINED_FUNCTION_303();
          v257 = v614[0];
          v258 = v622;
          if (v259)
          {
            goto LABEL_292;
          }

          OUTLINED_FUNCTION_31_1();
          v260 = v631;
          sub_1C87E45D0();
          OUTLINED_FUNCTION_297();
          v261 = v256 + v251;
          v262 = &qword_1EC2B6010;
          sub_1C8786744(v261, v254, &qword_1EC2B6010, &unk_1C8BF5040);
          sub_1C8786744(v260 + v251, v254 + v255, &qword_1EC2B6010, &unk_1C8BF5040);
          OUTLINED_FUNCTION_66_0(v254);
          if (v243)
          {
            OUTLINED_FUNCTION_66_0(v254 + v255);
            if (!v243)
            {
              goto LABEL_238;
            }

            v263 = OUTLINED_FUNCTION_260_0();
            sub_1C8778ED8(v263, v264, &unk_1C8BF5040);
          }

          else
          {
            v265 = OUTLINED_FUNCTION_258();
            sub_1C8786744(v265, v266, &qword_1EC2B6010, &unk_1C8BF5040);
            OUTLINED_FUNCTION_66_0(v254 + v255);
            if (v267)
            {
              OUTLINED_FUNCTION_155_1();
              sub_1C87E4624();
LABEL_238:
              v531 = &qword_1EC2B6018;
              v532 = &qword_1C8BE6CD0;
              goto LABEL_258;
            }

            OUTLINED_FUNCTION_166_0();
            OUTLINED_FUNCTION_110(&a17);
            sub_1C87E4518();
            v268 = *(v258 + 5);
            OUTLINED_FUNCTION_172(&v635);
            OUTLINED_FUNCTION_265(&v627);
            sub_1C8786744(v269, v270, &qword_1EC2B6000, &qword_1C8BF5050);
            v271 = v260 + v268;
            v251 = &qword_1EC2B6010;
            OUTLINED_FUNCTION_281(v271, &qword_1EC2B6010 + v255);
            v272 = OUTLINED_FUNCTION_120();
            v273 = v607;
            OUTLINED_FUNCTION_76(v272, v274, v607);
            if (v243)
            {
              OUTLINED_FUNCTION_65(&qword_1EC2B6010 + v255);
              v248 = v564;
              if (!v243)
              {
                goto LABEL_243;
              }

              sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B6000, &qword_1C8BF5050);
            }

            else
            {
              OUTLINED_FUNCTION_265(&a12);
              OUTLINED_FUNCTION_281(v284, v285);
              OUTLINED_FUNCTION_65(&qword_1EC2B6010 + v255);
              if (v286)
              {
                OUTLINED_FUNCTION_131();
                sub_1C87E4624();
LABEL_243:
                v536 = &qword_1EC2B6008;
                v537 = &unk_1C8BE6CC0;
                goto LABEL_264;
              }

              OUTLINED_FUNCTION_162();
              v255 = v273;
              OUTLINED_FUNCTION_110(&a9);
              sub_1C87E4518();
              v287 = *(v273 + 36);
              OUTLINED_FUNCTION_172(&v611);
              OUTLINED_FUNCTION_265(&v610);
              v254 = &qword_1EC2B5FF0;
              sub_1C8786744(v288, v289, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
              OUTLINED_FUNCTION_329(v273 + v287, &qword_1EC2B6010 + v273);
              v290 = OUTLINED_FUNCTION_120();
              v291 = v594;
              OUTLINED_FUNCTION_41_2(v290, v292);
              if (v243)
              {
                OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v273);
                if (!v243)
                {
                  goto LABEL_266;
                }

                v293 = OUTLINED_FUNCTION_268();
                sub_1C8778ED8(v293, v294, &qword_1C8BE6CA8);
              }

              else
              {
                OUTLINED_FUNCTION_231(&v600);
                OUTLINED_FUNCTION_329(v320, v321);
                OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v273);
                if (v322)
                {
                  OUTLINED_FUNCTION_145();
                  sub_1C87E4624();
LABEL_266:
                  v547 = &qword_1EC2B5FF8;
                  v548 = &qword_1C8BE6CB0;
                  v549 = &qword_1EC2B6010;
                  goto LABEL_289;
                }

                OUTLINED_FUNCTION_146();
                OUTLINED_FUNCTION_110(&v599);
                sub_1C87E4518();
                v323 = *(v291 + 24);
                OUTLINED_FUNCTION_172(v601);
                OUTLINED_FUNCTION_265(&v596);
                sub_1C8786744(v324, v325, &qword_1EC2B5FE0, &unk_1C8C102D0);
                OUTLINED_FUNCTION_273(v273 + v323, &qword_1EC2B6010 + v273);
                v326 = OUTLINED_FUNCTION_120();
                v291 = v608;
                OUTLINED_FUNCTION_41_2(v326, v327);
                if (v243)
                {
                  OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v273);
                  if (!v243)
                  {
                    goto LABEL_273;
                  }

                  v328 = OUTLINED_FUNCTION_106();
                  sub_1C8778ED8(v328, v329, &unk_1C8C102D0);
                }

                else
                {
                  OUTLINED_FUNCTION_110(&v592);
                  OUTLINED_FUNCTION_273(v330, v331);
                  OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v273);
                  if (v332)
                  {
                    OUTLINED_FUNCTION_53_0();
                    sub_1C87E4624();
LABEL_273:
                    sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B5FE8, &qword_1C8BE6CA0);
LABEL_288:
                    OUTLINED_FUNCTION_52();
                    sub_1C87E4624();
                    OUTLINED_FUNCTION_118();
                    sub_1C87E4624();
                    v547 = &qword_1EC2B5FF0;
                    v548 = &qword_1C8BE6CA8;
                    v549 = v582;
LABEL_289:
                    sub_1C8778ED8(v549, v547, v548);
                    goto LABEL_256;
                  }

                  OUTLINED_FUNCTION_55_2();
                  OUTLINED_FUNCTION_192(&v595);
                  sub_1C87E4518();
                  v291 = *(v273 + *(v291 + 20));
                  sub_1C8BD49FC();
                  OUTLINED_FUNCTION_0_2();
                  sub_1C87E44D0(&qword_1EC2B2F70, v333);
                  OUTLINED_FUNCTION_311();
                  OUTLINED_FUNCTION_192(&v595);
                  sub_1C8BD517C();
                  OUTLINED_FUNCTION_11_1();
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_270();
                  sub_1C87E4624();
                  sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B5FE0, &unk_1C8C102D0);
                  OUTLINED_FUNCTION_291();
                  if ((v291 & 1) == 0)
                  {
                    goto LABEL_288;
                  }
                }

                v334 = *v257;
                v335 = *v273;
                sub_1C87DF17C();
                if ((v336 & 1) == 0)
                {
                  goto LABEL_288;
                }

                OUTLINED_FUNCTION_255(v594);
                OUTLINED_FUNCTION_0_2();
                sub_1C87E44D0(&qword_1EC2B2F70, v337);
                OUTLINED_FUNCTION_274();
                OUTLINED_FUNCTION_50_0();
                v41 = v338;
                sub_1C87E4624();
                OUTLINED_FUNCTION_239();
                sub_1C87E4624();
                sub_1C8778ED8(v582, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
                if ((v291 & 1) == 0)
                {
                  goto LABEL_256;
                }
              }

              OUTLINED_FUNCTION_296();
              v340 = *v339;
              OUTLINED_FUNCTION_295();
              v343 = *v342;
              v273 = *(v341 + 16);
              if (v273 != *(v343 + 16))
              {
                goto LABEL_256;
              }

              if (v273 && v341 != v343)
              {
                OUTLINED_FUNCTION_37_3();
                v346 = v344 + v345;
                v255 = v347 + v345;
                v554 = *(v348 + 72);
                do
                {
                  OUTLINED_FUNCTION_2_3();
                  OUTLINED_FUNCTION_289();
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_2_3();
                  v555 = v255;
                  v349 = v620;
                  sub_1C87E45D0();
                  v350 = v615[5];
                  OUTLINED_FUNCTION_172(&v615);
                  OUTLINED_FUNCTION_231(&v616);
                  sub_1C8786744(v351, v352, &qword_1EC2B5EC8, &unk_1C8BE68C0);
                  OUTLINED_FUNCTION_278(v349 + v350, v257 + v255);
                  v353 = OUTLINED_FUNCTION_109();
                  v354 = v588;
                  OUTLINED_FUNCTION_41_2(v353, v355);
                  v356 = v589;
                  v254 = v606;
                  if (v243)
                  {
                    OUTLINED_FUNCTION_19(v257 + v255);
                    v357 = v257;
                    if (!v243)
                    {
                      goto LABEL_248;
                    }

                    OUTLINED_FUNCTION_222();
                    sub_1C8778ED8(v358, v359, v360);
                    v257 = &qword_1EC2B61D0;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_257(&v607);
                    OUTLINED_FUNCTION_278(v361, v362);
                    OUTLINED_FUNCTION_19(v257 + v255);
                    if (v363)
                    {
                      OUTLINED_FUNCTION_6_1();
                      sub_1C87E4624();
                      v357 = v257;
LABEL_248:
                      v539 = &qword_1EC2B5EE8;
                      v540 = &unk_1C8BE6F90;
                      goto LABEL_253;
                    }

                    OUTLINED_FUNCTION_1_2();
                    OUTLINED_FUNCTION_192(&v605);
                    sub_1C87E4518();
                    v364 = OUTLINED_FUNCTION_221();
                    static Siri_Nlu_External_UUID.== infix(_:_:)(v364, v365);
                    OUTLINED_FUNCTION_126();
                    v41 = v366;
                    sub_1C87E4624();
                    OUTLINED_FUNCTION_229();
                    OUTLINED_FUNCTION_289();
                    v254 = v606;
                    sub_1C87E4624();
                    OUTLINED_FUNCTION_222();
                    sub_1C8778ED8(v367, v368, v369);
                    v257 = &qword_1EC2B61D0;
                    if ((v354 & 1) == 0)
                    {
                      goto LABEL_254;
                    }
                  }

                  v370 = v615[6];
                  OUTLINED_FUNCTION_172(v614);
                  OUTLINED_FUNCTION_280(v41 + v370, v254);
                  OUTLINED_FUNCTION_280(v620 + v370, v254 + v255);
                  v371 = OUTLINED_FUNCTION_213();
                  v372 = v586;
                  OUTLINED_FUNCTION_41_2(v371, v373);
                  if (v243)
                  {
                    OUTLINED_FUNCTION_19(v254 + v255);
                    if (!v243)
                    {
                      goto LABEL_250;
                    }

                    v374 = OUTLINED_FUNCTION_258();
                    sub_1C8778ED8(v374, v375, &qword_1C8C0C1E0);
                  }

                  else
                  {
                    v553 = v273;
                    OUTLINED_FUNCTION_280(v254, v578);
                    OUTLINED_FUNCTION_19(v254 + v255);
                    if (v376)
                    {
                      sub_1C87E4624();
LABEL_250:
                      v539 = &qword_1EC2B5FD8;
                      v540 = &unk_1C8BE6C90;
                      v357 = v254;
                      goto LABEL_253;
                    }

                    OUTLINED_FUNCTION_192(v603);
                    sub_1C87E4518();
                    OUTLINED_FUNCTION_191();
                    static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
                    OUTLINED_FUNCTION_127();
                    v41 = v377;
                    sub_1C87E4624();
                    OUTLINED_FUNCTION_223_1();
                    OUTLINED_FUNCTION_289();
                    sub_1C87E4624();
                    sub_1C8778ED8(v606, &qword_1EC2B61D0, &qword_1C8C0C1E0);
                    v273 = v553;
                    if ((v372 & 1) == 0)
                    {
                      goto LABEL_254;
                    }
                  }

                  v378 = v615[7];
                  OUTLINED_FUNCTION_172(&v612);
                  OUTLINED_FUNCTION_231(&v613);
                  v254 = &qword_1EC2B5FC8;
                  sub_1C8786744(v379, v380, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
                  sub_1C8786744(v378 + v620, &qword_1EC2B61D0 + v255, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
                  OUTLINED_FUNCTION_72(&qword_1EC2B61D0);
                  if (v243)
                  {
                    OUTLINED_FUNCTION_72(&qword_1EC2B61D0 + v255);
                    if (!v243)
                    {
                      goto LABEL_252;
                    }

                    v381 = OUTLINED_FUNCTION_299_0();
                    sub_1C8778ED8(v381, v382, &unk_1C8BE8DA0);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_238(&v602);
                    sub_1C8786744(v383, v384, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
                    OUTLINED_FUNCTION_72(&qword_1EC2B61D0 + v255);
                    if (v385)
                    {
                      v541 = *v562;
                      v542 = OUTLINED_FUNCTION_307();
                      v543(v542);
LABEL_252:
                      v539 = &qword_1EC2B5FD0;
                      v540 = &unk_1C8BE6C80;
                      v357 = &qword_1EC2B61D0;
LABEL_253:
                      sub_1C8778ED8(v357, v539, v540);
LABEL_254:
                      sub_1C87E4624();
LABEL_255:
                      sub_1C87E4624();
LABEL_256:
                      OUTLINED_FUNCTION_132_0();
                      sub_1C87E4624();
                      OUTLINED_FUNCTION_328_0(&a12);
                      sub_1C8778ED8(v598, &qword_1EC2B6000, &qword_1C8BF5050);
                      OUTLINED_FUNCTION_285();
LABEL_257:
                      OUTLINED_FUNCTION_156();
                      sub_1C87E4624();
                      OUTLINED_FUNCTION_118();
                      sub_1C87E4624();
                      v531 = &qword_1EC2B6010;
                      v532 = &unk_1C8BF5040;
LABEL_258:
                      sub_1C8778ED8(v254, v531, v532);
LABEL_285:
                      OUTLINED_FUNCTION_148();
                      sub_1C87E4624();
                      sub_1C87E4624();
                      goto LABEL_286;
                    }

                    v254 = v577;
                    (*v561)(v577, &qword_1EC2B61D0 + v255, v356);
                    sub_1C87E44D0(&qword_1EC2B6030, MEMORY[0x1E69AA960]);
                    v41 = v378;
                    v386 = sub_1C8BD517C();
                    v387 = *v562;
                    v388 = OUTLINED_FUNCTION_260_0();
                    (v387)(v388);
                    OUTLINED_FUNCTION_289();
                    v387();
                    sub_1C8778ED8(&qword_1EC2B61D0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
                    if ((v386 & 1) == 0)
                    {
                      goto LABEL_254;
                    }
                  }

                  sub_1C8BD49FC();
                  OUTLINED_FUNCTION_0_2();
                  sub_1C87E44D0(&qword_1EC2B2F70, v389);
                  OUTLINED_FUNCTION_240();
                  v291 = sub_1C8BD517C();
                  v262 = v41;
                  v41 = type metadata accessor for Siri_Nlu_External_Task;
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_106();
                  sub_1C87E4624();
                  if ((v291 & 1) == 0)
                  {
                    goto LABEL_256;
                  }

                  v255 = v555 + v554;
                  v346 += v554;
                  --v273;
                }

                while (v273);
              }

              OUTLINED_FUNCTION_296();
              v391 = *(v390 + 8);
              OUTLINED_FUNCTION_295();
              OUTLINED_FUNCTION_99(*(v392 + 8));
              if (!v243)
              {
                goto LABEL_256;
              }

              if (v255 && v394 != v393)
              {
                OUTLINED_FUNCTION_37_3();
                v291 = v395 + v396;
                v398 = v397 + v396;
                v273 = *(v399 + 72);
                do
                {
                  OUTLINED_FUNCTION_2_3();
                  v257 = v625;
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_2_3();
                  v262 = v624;
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_97();
                  static Siri_Nlu_External_Task.== infix(_:_:)();
                  v401 = v400;
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_298();
                  sub_1C87E4624();
                  if ((v401 & 1) == 0)
                  {
                    goto LABEL_256;
                  }

                  v398 += v273;
                  v291 += v273;
                }

                while (--v255);
              }

              OUTLINED_FUNCTION_296();
              v403 = *(v402 + 16);
              OUTLINED_FUNCTION_295();
              OUTLINED_FUNCTION_247(*(v404 + 16));
              if (!v243)
              {
                goto LABEL_256;
              }

              if (v262 && v406 != v405)
              {
                OUTLINED_FUNCTION_37_3();
                OUTLINED_FUNCTION_245();
                while (1)
                {
                  OUTLINED_FUNCTION_137();
                  OUTLINED_FUNCTION_238(&a11);
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_137();
                  OUTLINED_FUNCTION_110(&a10);
                  sub_1C87E45D0();
                  v407 = *(v592 + 20);
                  v408 = *(v291 + v407);
                  OUTLINED_FUNCTION_263(v407);
                  if (!v243)
                  {

                    OUTLINED_FUNCTION_216();
                    sub_1C88CA314();
                    OUTLINED_FUNCTION_283();

                    if ((v273 & 1) == 0)
                    {
                      break;
                    }
                  }

                  sub_1C8BD49FC();
                  OUTLINED_FUNCTION_0_2();
                  sub_1C87E44D0(&qword_1EC2B2F70, v409);
                  v254 = v611;
                  OUTLINED_FUNCTION_217();
                  v291 = sub_1C8BD517C();
                  v273 = type metadata accessor for Siri_Nlu_External_EntityCandidate;
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_100();
                  sub_1C87E4624();
                  if ((v291 & 1) == 0)
                  {
                    goto LABEL_256;
                  }

                  OUTLINED_FUNCTION_244_0();
                  if (v243)
                  {
                    goto LABEL_125;
                  }
                }

                sub_1C87E4624();
                v533 = &a11;
                goto LABEL_246;
              }

LABEL_125:
              OUTLINED_FUNCTION_296();
              v411 = *(v410 + 24);
              OUTLINED_FUNCTION_295();
              OUTLINED_FUNCTION_247(*(v412 + 24));
              if (!v243)
              {
                goto LABEL_256;
              }

              v415 = v608;
              if (v262 && v414 != v413)
              {
                OUTLINED_FUNCTION_37_3();
                OUTLINED_FUNCTION_245();
                while (1)
                {
                  OUTLINED_FUNCTION_29();
                  OUTLINED_FUNCTION_231(&v629);
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_29();
                  OUTLINED_FUNCTION_110(&v628);
                  sub_1C87E45D0();
                  v416 = *(v415 + 20);
                  v417 = *(v257 + v416);
                  OUTLINED_FUNCTION_263(v416);
                  if (!v243)
                  {

                    OUTLINED_FUNCTION_216();
                    sub_1C88BF490();
                    OUTLINED_FUNCTION_283();

                    if ((v273 & 1) == 0)
                    {
                      break;
                    }
                  }

                  sub_1C8BD49FC();
                  OUTLINED_FUNCTION_0_2();
                  sub_1C87E44D0(&qword_1EC2B2F70, v418);
                  v254 = v600;
                  OUTLINED_FUNCTION_231(&v628);
                  sub_1C8BD517C();
                  OUTLINED_FUNCTION_11_1();
                  v273 = v419;
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_100();
                  sub_1C87E4624();
                  if ((v417 & 1) == 0)
                  {
                    goto LABEL_256;
                  }

                  OUTLINED_FUNCTION_244_0();
                  v415 = v608;
                  if (v243)
                  {
                    goto LABEL_135;
                  }
                }

                OUTLINED_FUNCTION_54_0();
                sub_1C87E4624();
                v533 = &v629;
LABEL_246:
                v538 = *(v533 - 32);
                goto LABEL_255;
              }

LABEL_135:
              OUTLINED_FUNCTION_322();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v420);
              sub_1C8BD517C();
              OUTLINED_FUNCTION_115_0();
              sub_1C87E4624();
              OUTLINED_FUNCTION_168_0();
              sub_1C87E4624();
              sub_1C8778ED8(v598, &qword_1EC2B6000, &qword_1C8BF5050);
              v41 = v634;
              OUTLINED_FUNCTION_285();
              v258 = v622;
              v248 = v564;
              if ((v415 & 1) == 0)
              {
                goto LABEL_257;
              }
            }

            v275 = *(v258 + 6);
            OUTLINED_FUNCTION_172(&v620);
            OUTLINED_FUNCTION_110(&v609);
            v258 = &unk_1C8BF3D70;
            sub_1C8786744(v276, v277, &qword_1EC2B5FB8, &unk_1C8BF3D70);
            v278 = v616 + v275;
            v251 = v273;
            OUTLINED_FUNCTION_278(v278, v273 + v255);
            v279 = OUTLINED_FUNCTION_195_0();
            OUTLINED_FUNCTION_76(v279, v280, v570);
            if (v243)
            {
              OUTLINED_FUNCTION_65(v273 + v255);
              if (!v243)
              {
                goto LABEL_263;
              }

              OUTLINED_FUNCTION_222();
              sub_1C8778ED8(v281, v282, v283);
            }

            else
            {
              v295 = OUTLINED_FUNCTION_306();
              OUTLINED_FUNCTION_278(v295, v296);
              OUTLINED_FUNCTION_65(v273 + v255);
              if (v297)
              {
                OUTLINED_FUNCTION_157_0();
                sub_1C87E4624();
LABEL_263:
                v536 = &qword_1EC2B5FC0;
                v537 = &unk_1C8BE6C70;
LABEL_264:
                sub_1C8778ED8(v251, v536, v537);
                goto LABEL_257;
              }

              OUTLINED_FUNCTION_160();
              OUTLINED_FUNCTION_192(&v581);
              sub_1C87E4518();
              OUTLINED_FUNCTION_191();
              static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
              OUTLINED_FUNCTION_113();
              sub_1C87E4624();
              sub_1C87E4624();
              OUTLINED_FUNCTION_222();
              sub_1C8778ED8(v298, v299, v300);
              if ((v273 & 1) == 0)
              {
                goto LABEL_257;
              }
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v301);
            OUTLINED_FUNCTION_192(&a17);
            sub_1C8BD517C();
            OUTLINED_FUNCTION_116();
            sub_1C87E4624();
            OUTLINED_FUNCTION_168_0();
            sub_1C87E4624();
            v302 = OUTLINED_FUNCTION_260_0();
            sub_1C8778ED8(v302, v303, &unk_1C8BF5040);
            if ((v273 & 1) == 0)
            {
              goto LABEL_285;
            }
          }

          OUTLINED_FUNCTION_264(v631);
          if (!v243)
          {
            goto LABEL_285;
          }

          if (&qword_1EC2B6010 && v258 != v248)
          {
            v304 = 0;
            OUTLINED_FUNCTION_71(v637);
            v306 = (v248 + v305);
            while (v304 < v258[2])
            {
              v307 = *(v637 + 72) * v304;
              OUTLINED_FUNCTION_5_1();
              sub_1C87E45D0();
              if (v304 >= v248[2])
              {
                goto LABEL_275;
              }

              OUTLINED_FUNCTION_5_1();
              v308 = v638;
              sub_1C87E45D0();
              v309 = *(v636 + 20);
              v251 = *(v41 + v309);
              OUTLINED_FUNCTION_263(v309);
              if (!v243)
              {

                OUTLINED_FUNCTION_216();
                sub_1C89FBAF0();
                OUTLINED_FUNCTION_283();

                if ((v308 & 1) == 0)
                {
                  OUTLINED_FUNCTION_56();
                  sub_1C87E4624();
                  sub_1C87E4624();
                  goto LABEL_285;
                }
              }

              sub_1C8BD49FC();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v310);
              v41 = v634;
              OUTLINED_FUNCTION_232_0();
              sub_1C8BD517C();
              OUTLINED_FUNCTION_51_2();
              sub_1C87E4624();
              OUTLINED_FUNCTION_261_0();
              sub_1C87E4624();
              if ((v251 & 1) == 0)
              {
                goto LABEL_285;
              }

              if (&qword_1EC2B6010 == ++v304)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            OUTLINED_FUNCTION_53_0();
            sub_1C87E4624();
            v462 = v306;
LABEL_279:
            sub_1C8778ED8(v462, &qword_1EC2B5FE8, &qword_1C8BE6CA0);
            OUTLINED_FUNCTION_212_0();
LABEL_280:
            OUTLINED_FUNCTION_52();
            sub_1C87E4624();
            OUTLINED_FUNCTION_221();
            sub_1C87E4624();
            v550 = &qword_1EC2B5FF0;
            v551 = &qword_1C8BE6CA8;
            v552 = v580[0];
LABEL_281:
            sub_1C8778ED8(v552, v550, v551);
LABEL_282:
            OUTLINED_FUNCTION_132_0();
            sub_1C87E4624();
            OUTLINED_FUNCTION_328_0(&v625);
            sub_1C8778ED8(v590, &qword_1EC2B6000, &qword_1C8BF5050);
            OUTLINED_FUNCTION_314();
LABEL_283:
            OUTLINED_FUNCTION_156();
            sub_1C87E4624();
            OUTLINED_FUNCTION_221();
            sub_1C87E4624();
            v534 = &qword_1EC2B6010;
            v535 = &unk_1C8BF5040;
LABEL_284:
            sub_1C8778ED8(v258, v534, v535);
            goto LABEL_285;
          }

LABEL_56:
          v311 = *(v633 + 28);
          v312 = *(v632 + v311);
          OUTLINED_FUNCTION_214(v311);
          if (v243)
          {
            if (v313 != 2)
            {
              goto LABEL_285;
            }
          }

          else if (v313 == 2 || ((v314 ^ v313) & 1) != 0)
          {
            goto LABEL_285;
          }

          v315 = *(v633 + 32);
          v316 = *(v632 + v315);
          OUTLINED_FUNCTION_214(v315);
          if (v243)
          {
            if (v317 != 2)
            {
              goto LABEL_285;
            }
          }

          else if (v317 == 2 || ((v317 ^ v318) & 1) != 0)
          {
            goto LABEL_285;
          }

          OUTLINED_FUNCTION_255(v633);
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v319);
          OUTLINED_FUNCTION_275();
          OUTLINED_FUNCTION_117_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_168_0();
          sub_1C87E4624();
          v230 = v629;
          v229 = v630;
          v231 = v621;
          v248 = v559;
          if ((v251 & 1) == 0)
          {
LABEL_286:
            sub_1C87E4624();
            OUTLINED_FUNCTION_118();
            sub_1C87E4624();
            goto LABEL_287;
          }

          v251 = v565 + 1;
        }

        while (v565 + 1 != v557);
      }

      v421 = v230[1];
      v422 = v229[1];
      v423 = v421[2];
      if (v423 != *(v422 + 16))
      {
        goto LABEL_286;
      }

      if (v423 && v421 != v422)
      {
        v424 = 0;
        OUTLINED_FUNCTION_71(v628);
        v569 = v422 + v426;
        v559 = v425;
        v558 = v422;
        v557 = v427;
        v556 = v425 + v426;
        do
        {
          v258 = v603[1];
          v428 = v622;
          if (v424 >= v425[2])
          {
            goto LABEL_293;
          }

          v429 = v627;
          v430 = *(v628 + 72) * v424;
          OUTLINED_FUNCTION_31_1();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_303();
          v306 = v603[0];
          if (v259)
          {
            goto LABEL_294;
          }

          OUTLINED_FUNCTION_31_1();
          v431 = v626;
          sub_1C87E45D0();
          OUTLINED_FUNCTION_297();
          sub_1C8786744(v429 + v424, v258, &qword_1EC2B6010, &unk_1C8BF5040);
          OUTLINED_FUNCTION_280(v431 + v424, v258 + v430);
          OUTLINED_FUNCTION_76(v258, 1, v428);
          if (v243)
          {
            OUTLINED_FUNCTION_76(v258 + v430, 1, v428);
            if (!v243)
            {
              goto LABEL_241;
            }

            sub_1C8778ED8(v258, &qword_1EC2B6010, &unk_1C8BF5040);
          }

          else
          {
            OUTLINED_FUNCTION_280(v258, v306);
            OUTLINED_FUNCTION_76(v258 + v430, 1, v428);
            if (v432)
            {
              OUTLINED_FUNCTION_155_1();
              sub_1C87E4624();
LABEL_241:
              v534 = &qword_1EC2B6018;
              v535 = &qword_1C8BE6CD0;
              goto LABEL_284;
            }

            OUTLINED_FUNCTION_166_0();
            OUTLINED_FUNCTION_110(&v636);
            sub_1C87E4518();
            v433 = *(v428 + 5);
            OUTLINED_FUNCTION_172(&v635);
            OUTLINED_FUNCTION_231(&v619);
            v434 = &qword_1C8BF5050;
            sub_1C8786744(v435, v436, &qword_1EC2B6000, &qword_1C8BF5050);
            sub_1C8786744(v431 + v433, &qword_1EC2B6010 + v430, &qword_1EC2B6000, &qword_1C8BF5050);
            v437 = OUTLINED_FUNCTION_109();
            v438 = v607;
            OUTLINED_FUNCTION_76(v437, v439, v607);
            if (v243)
            {
              OUTLINED_FUNCTION_76(&qword_1EC2B6010 + v430, 1, v438);
              v229 = v579;
              if (!v243)
              {
                goto LABEL_261;
              }

              sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B6000, &qword_1C8BF5050);
              v440 = v622;
            }

            else
            {
              OUTLINED_FUNCTION_238(&v625);
              sub_1C8786744(v441, v442, &qword_1EC2B6000, &qword_1C8BF5050);
              OUTLINED_FUNCTION_76(&qword_1EC2B6010 + v430, 1, v438);
              if (v443)
              {
                OUTLINED_FUNCTION_131();
                sub_1C87E4624();
LABEL_261:
                v544 = &qword_1EC2B6008;
                v545 = &unk_1C8BE6CC0;
                v546 = &qword_1EC2B6010;
                goto LABEL_269;
              }

              OUTLINED_FUNCTION_162();
              OUTLINED_FUNCTION_110(&v624);
              sub_1C87E4518();
              v444 = *(v438 + 36);
              v430 = *(v583 + 48);
              OUTLINED_FUNCTION_257(&v606);
              v258 = &qword_1C8BE6CA8;
              sub_1C8786744(v445, v446, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
              v447 = v306;
              OUTLINED_FUNCTION_278(&qword_1EC2B6010 + v444, v306 + v430);
              v448 = OUTLINED_FUNCTION_213();
              v449 = v594;
              OUTLINED_FUNCTION_41_2(v448, v450);
              if (v243)
              {
                OUTLINED_FUNCTION_19(v306 + v430);
                if (!v243)
                {
                  goto LABEL_271;
                }

                OUTLINED_FUNCTION_222();
                sub_1C8778ED8(v451, v452, v453);
              }

              else
              {
                OUTLINED_FUNCTION_257(&v598);
                OUTLINED_FUNCTION_278(v454, v455);
                OUTLINED_FUNCTION_19(v306 + v430);
                if (v456)
                {
                  OUTLINED_FUNCTION_145();
                  sub_1C87E4624();
LABEL_271:
                  v550 = &qword_1EC2B5FF8;
                  v551 = &qword_1C8BE6CB0;
                  v552 = v306;
                  goto LABEL_281;
                }

                OUTLINED_FUNCTION_146();
                OUTLINED_FUNCTION_110(&v597);
                sub_1C87E4518();
                v457 = *(v449 + 24);
                OUTLINED_FUNCTION_172(v601);
                OUTLINED_FUNCTION_257(&v594);
                v434 = &qword_1EC2B5FE0;
                sub_1C8786744(v458, v459, &qword_1EC2B5FE0, &unk_1C8C102D0);
                sub_1C8786744(v306 + v457, v306 + v430, &qword_1EC2B5FE0, &unk_1C8C102D0);
                v460 = OUTLINED_FUNCTION_213();
                v449 = v608;
                OUTLINED_FUNCTION_41_2(v460, v461);
                if (v243)
                {
                  OUTLINED_FUNCTION_19(v306 + v430);
                  v462 = v306;
                  if (!v243)
                  {
                    goto LABEL_279;
                  }

                  sub_1C8778ED8(v306, &qword_1EC2B5FE0, &unk_1C8C102D0);
                  OUTLINED_FUNCTION_212_0();
                }

                else
                {
                  v258 = v573;
                  sub_1C8786744(v306, v573, &qword_1EC2B5FE0, &unk_1C8C102D0);
                  OUTLINED_FUNCTION_19(v306 + v430);
                  if (v463)
                  {
                    goto LABEL_278;
                  }

                  OUTLINED_FUNCTION_55_2();
                  OUTLINED_FUNCTION_192(&v589);
                  sub_1C87E4518();
                  v464 = OUTLINED_FUNCTION_237();
                  static Siri_Nlu_External_SystemDialogAct.== infix(_:_:)(v464, v465);
                  OUTLINED_FUNCTION_11_1();
                  sub_1C87E4624();
                  sub_1C87E4624();
                  v466 = OUTLINED_FUNCTION_260_0();
                  sub_1C8778ED8(v466, v467, &unk_1C8C102D0);
                  OUTLINED_FUNCTION_212_0();
                  v258 = &qword_1C8BE6CA8;
                  if ((v449 & 1) == 0)
                  {
                    goto LABEL_280;
                  }
                }

                v468 = *v306;
                sub_1C87DF17C();
                if ((v469 & 1) == 0)
                {
                  goto LABEL_280;
                }

                OUTLINED_FUNCTION_255(v594);
                OUTLINED_FUNCTION_0_2();
                sub_1C87E44D0(&qword_1EC2B2F70, v470);
                sub_1C8BD517C();
                OUTLINED_FUNCTION_50_0();
                v447 = v471;
                sub_1C87E4624();
                OUTLINED_FUNCTION_100();
                sub_1C87E4624();
                OUTLINED_FUNCTION_222();
                sub_1C8778ED8(v472, v473, v474);
                if ((v449 & 1) == 0)
                {
                  goto LABEL_282;
                }
              }

              OUTLINED_FUNCTION_320();
              v476 = *v475;
              OUTLINED_FUNCTION_319();
              OUTLINED_FUNCTION_99(*v477);
              if (!v243)
              {
                goto LABEL_282;
              }

              if (v430 && v479 != v478)
              {
                OUTLINED_FUNCTION_37_3();
                v449 = v480 + v481;
                v258 = (v482 + v481);
                v434 = *(v483 + 72);
                do
                {
                  OUTLINED_FUNCTION_2_3();
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_2_3();
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_290();
                  static Siri_Nlu_External_Task.== infix(_:_:)();
                  OUTLINED_FUNCTION_122();
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_229();
                  sub_1C87E4624();
                  v41 = v634;
                  if ((v447 & 1) == 0)
                  {
                    goto LABEL_282;
                  }

                  v258 = (v434 + v258);
                  v449 += v434;
                }

                while (--v430);
              }

              OUTLINED_FUNCTION_320();
              v485 = *(v484 + 8);
              OUTLINED_FUNCTION_319();
              OUTLINED_FUNCTION_99(*(v486 + 8));
              if (!v243)
              {
                goto LABEL_282;
              }

              if (v430 && v488 != v487)
              {
                OUTLINED_FUNCTION_37_3();
                v449 = v489 + v490;
                v258 = (v491 + v490);
                v434 = *(v492 + 72);
                do
                {
                  OUTLINED_FUNCTION_2_3();
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_2_3();
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_290();
                  static Siri_Nlu_External_Task.== infix(_:_:)();
                  OUTLINED_FUNCTION_122();
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_229();
                  sub_1C87E4624();
                  v41 = v634;
                  if ((v447 & 1) == 0)
                  {
                    goto LABEL_282;
                  }

                  v258 = (v434 + v258);
                  v449 += v434;
                }

                while (--v430);
              }

              OUTLINED_FUNCTION_320();
              v494 = *(v493 + 16);
              OUTLINED_FUNCTION_319();
              v496 = *(v495 + 16);
              sub_1C87D2D00();
              if ((v497 & 1) == 0)
              {
                goto LABEL_282;
              }

              OUTLINED_FUNCTION_320();
              v499 = *(v498 + 24);
              OUTLINED_FUNCTION_319();
              OUTLINED_FUNCTION_247(*(v500 + 24));
              if (!v243)
              {
                goto LABEL_282;
              }

              if (v434 && v502 != v501)
              {
                OUTLINED_FUNCTION_37_3();
                OUTLINED_FUNCTION_245();
                while (1)
                {
                  OUTLINED_FUNCTION_29();
                  OUTLINED_FUNCTION_238(&v631);
                  sub_1C87E45D0();
                  OUTLINED_FUNCTION_29();
                  OUTLINED_FUNCTION_110(&v630);
                  sub_1C87E45D0();
                  v503 = *(v608 + 20);
                  v449 = *(v449 + v503);
                  OUTLINED_FUNCTION_263(v503);
                  if (!v243)
                  {

                    OUTLINED_FUNCTION_216();
                    sub_1C88BF490();
                    OUTLINED_FUNCTION_283();

                    if ((v447 & 1) == 0)
                    {
                      break;
                    }
                  }

                  sub_1C8BD49FC();
                  OUTLINED_FUNCTION_0_2();
                  sub_1C87E44D0(&qword_1EC2B2F70, v504);
                  OUTLINED_FUNCTION_257(&v630);
                  sub_1C8BD517C();
                  OUTLINED_FUNCTION_11_1();
                  v447 = v505;
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_261_0();
                  sub_1C87E4624();
                  v41 = v634;
                  if ((v449 & 1) == 0)
                  {
                    goto LABEL_282;
                  }

                  OUTLINED_FUNCTION_244_0();
                  if (v243)
                  {
                    goto LABEL_195;
                  }
                }

                OUTLINED_FUNCTION_54_0();
                sub_1C87E4624();
                OUTLINED_FUNCTION_328_0(&v631);
                goto LABEL_282;
              }

LABEL_195:
              OUTLINED_FUNCTION_322();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v506);
              v306 = v596;
              sub_1C8BD517C();
              OUTLINED_FUNCTION_115_0();
              sub_1C87E4624();
              OUTLINED_FUNCTION_100();
              sub_1C87E4624();
              sub_1C8778ED8(v590, &qword_1EC2B6000, &qword_1C8BF5050);
              v229 = v579;
              OUTLINED_FUNCTION_314();
              v440 = v622;
              if ((v449 & 1) == 0)
              {
                goto LABEL_283;
              }
            }

            v424 = *(v440 + 24);
            OUTLINED_FUNCTION_172(&v620);
            v428 = &unk_1C8BF3D70;
            sub_1C8786744(v306 + v424, v229, &qword_1EC2B5FB8, &unk_1C8BF3D70);
            OUTLINED_FUNCTION_281(v605 + v424, v229 + v430);
            OUTLINED_FUNCTION_73(v229);
            if (v243)
            {
              OUTLINED_FUNCTION_73(v229 + v430);
              if (!v243)
              {
                goto LABEL_268;
              }

              sub_1C8778ED8(v229, &qword_1EC2B5FB8, &unk_1C8BF3D70);
            }

            else
            {
              OUTLINED_FUNCTION_238(v580);
              OUTLINED_FUNCTION_281(v507, v508);
              OUTLINED_FUNCTION_73(v229 + v430);
              if (v509)
              {
                OUTLINED_FUNCTION_157_0();
                sub_1C87E4624();
LABEL_268:
                v544 = &qword_1EC2B5FC0;
                v545 = &unk_1C8BE6C70;
                v546 = v229;
LABEL_269:
                sub_1C8778ED8(v546, v544, v545);
                goto LABEL_283;
              }

              OUTLINED_FUNCTION_160();
              OUTLINED_FUNCTION_192(&v581);
              sub_1C87E4518();
              static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
              OUTLINED_FUNCTION_113();
              sub_1C87E4624();
              OUTLINED_FUNCTION_168_0();
              sub_1C87E4624();
              v510 = OUTLINED_FUNCTION_315();
              sub_1C8778ED8(v510, v511, &unk_1C8BF3D70);
              if ((v424 & 1) == 0)
              {
                goto LABEL_283;
              }
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v512);
            OUTLINED_FUNCTION_192(&v636);
            sub_1C8BD517C();
            OUTLINED_FUNCTION_116();
            sub_1C87E4624();
            OUTLINED_FUNCTION_100();
            sub_1C87E4624();
            sub_1C8778ED8(v258, &qword_1EC2B6010, &unk_1C8BF5040);
            if ((v424 & 1) == 0)
            {
              goto LABEL_285;
            }
          }

          OUTLINED_FUNCTION_264(v626);
          if (!v243)
          {
            goto LABEL_285;
          }

          if (v229 && v258 != v428)
          {
            v513 = 0;
            OUTLINED_FUNCTION_71(v637);
            v306 = (v428 + v514);
            while (v513 < v258[2])
            {
              v515 = *(v637 + 72) * v513;
              OUTLINED_FUNCTION_5_1();
              v516 = v593;
              sub_1C87E45D0();
              if (v513 >= v428[2])
              {
                goto LABEL_277;
              }

              OUTLINED_FUNCTION_5_1();
              v517 = v635;
              sub_1C87E45D0();
              v518 = *(v636 + 20);
              v424 = *&v516[v518];
              OUTLINED_FUNCTION_263(v518);
              if (!v243)
              {

                OUTLINED_FUNCTION_216();
                sub_1C89FBAF0();
                OUTLINED_FUNCTION_283();

                if ((v517 & 1) == 0)
                {
                  OUTLINED_FUNCTION_56();
                  sub_1C87E4624();
                  OUTLINED_FUNCTION_328_0(&v622);
                  goto LABEL_285;
                }
              }

              sub_1C8BD49FC();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v519);
              OUTLINED_FUNCTION_217();
              sub_1C8BD517C();
              OUTLINED_FUNCTION_51_2();
              sub_1C87E4624();
              OUTLINED_FUNCTION_107_0();
              sub_1C87E4624();
              v41 = v634;
              if ((v424 & 1) == 0)
              {
                goto LABEL_285;
              }

              if (v229 == ++v513)
              {
                goto LABEL_215;
              }
            }

            goto LABEL_276;
          }

LABEL_215:
          v520 = *(v633 + 28);
          v521 = *(v627 + v520);
          OUTLINED_FUNCTION_214(v520);
          if (v243)
          {
            if (v522 != 2)
            {
              goto LABEL_285;
            }
          }

          else if (v522 == 2 || ((v523 ^ v522) & 1) != 0)
          {
            goto LABEL_285;
          }

          v524 = *(v633 + 32);
          v525 = *(v627 + v524);
          OUTLINED_FUNCTION_214(v524);
          if (v243)
          {
            if (v526 != 2)
            {
              goto LABEL_285;
            }
          }

          else if (v526 == 2 || ((v526 ^ v527) & 1) != 0)
          {
            goto LABEL_285;
          }

          OUTLINED_FUNCTION_255(v633);
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v528);
          OUTLINED_FUNCTION_275();
          OUTLINED_FUNCTION_117_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_168_0();
          sub_1C87E4624();
          v230 = v629;
          v229 = v630;
          v231 = v621;
          v425 = v559;
          if ((v424 & 1) == 0)
          {
            goto LABEL_286;
          }

          v424 = v565 + 1;
        }

        while (v565 + 1 != v557);
      }

      OUTLINED_FUNCTION_282(v623);
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v529);
      v530 = OUTLINED_FUNCTION_275();
      sub_1C87E4624();
      OUTLINED_FUNCTION_168_0();
      sub_1C87E4624();
      if (v530)
      {
        v226 = v571 + 1;
        v228 = v566;
        if (v571 + 1 != v572)
        {
          continue;
        }
      }

      goto LABEL_287;
    }

    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_287:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D5EEC()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_102();
  v37 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(v4);
  v5 = OUTLINED_FUNCTION_21(v37);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_2(v13, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6150, &unk_1C8BE6DF0);
  OUTLINED_FUNCTION_21(v36);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_45();
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(v17);
  v18 = OUTLINED_FUNCTION_7_2(Rewrite);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_253_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_69_0();
  v23 = *(v1 + 16);
  if (v23 != *(v0 + 16) || !v23 || v1 == v0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_27_2(v22);
  OUTLINED_FUNCTION_135_0(v24);
  while (1)
  {
    OUTLINED_FUNCTION_223_1();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_230();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_190_1();
    sub_1C8786744(v3, v2, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_16_1(v2);
    if (!v29)
    {
      break;
    }

    OUTLINED_FUNCTION_16_1(v2 + v0);
    if (!v29)
    {
      goto LABEL_18;
    }

    v25 = OUTLINED_FUNCTION_97();
    sub_1C8778ED8(v25, v26, &qword_1C8BF0240);
LABEL_12:
    v32 = *(Rewrite + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v33);
    v0 = OUTLINED_FUNCTION_325();
    sub_1C87E4624();
    OUTLINED_FUNCTION_292();
    sub_1C87E4624();
    if (v0)
    {
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_112_1();
      if (!v29)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v27 = OUTLINED_FUNCTION_118();
  sub_1C8786744(v27, v28, &qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_16_1(v2 + v0);
  if (!v29)
  {
    OUTLINED_FUNCTION_242_0();
    sub_1C87E4518();
    OUTLINED_FUNCTION_182();
    static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value.== infix(_:_:)();
    v31 = v30;
    sub_1C87E4624();
    OUTLINED_FUNCTION_312();
    sub_1C87E4624();
    sub_1C8778ED8(v2, &qword_1EC2B6148, &qword_1C8BF0240);
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_208();
  sub_1C87E4624();
LABEL_18:
  sub_1C8778ED8(v2, &qword_1EC2B6150, &unk_1C8BE6DF0);
LABEL_19:
  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_20:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D62D8()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v123 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v124 = v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F70, &unk_1C8BE6C20);
  OUTLINED_FUNCTION_21(v125);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v126 = v17;
  v18 = OUTLINED_FUNCTION_86();
  v128 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v18);
  v19 = OUTLINED_FUNCTION_21(v128);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F78, &unk_1C8C13060);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_81();
  v131 = v27;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F80, &qword_1C8BE6C30);
  OUTLINED_FUNCTION_21(v127);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_81();
  v129 = v31;
  v32 = OUTLINED_FUNCTION_86();
  v33 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v32);
  v34 = OUTLINED_FUNCTION_21(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_33();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
  OUTLINED_FUNCTION_80(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_75(v44, v118);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F90, &qword_1C8BE6C40);
  OUTLINED_FUNCTION_21(v132);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_46_0();
  v136 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v48);
  v49 = OUTLINED_FUNCTION_7_2(v136);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_28_1();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v118 - v57;
  v59 = *(v2 + 16);
  if (v59 == *(v0 + 16) && v59 && v2 != v0)
  {
    v119 = v4;
    v120 = v54;
    OUTLINED_FUNCTION_27_2(v56);
    v61 = v2 + v60;
    v62 = v0 + v60;
    v121 = *(v63 + 72);
    v122 = v33;
    v134 = v58;
    while (1)
    {
      OUTLINED_FUNCTION_298();
      sub_1C87E45D0();
      if (!v59)
      {
        break;
      }

      OUTLINED_FUNCTION_237();
      sub_1C87E45D0();
      v64 = *(v136 + 20);
      v65 = v58[v64];
      v66 = *(v54 + v64);
      if (v65 == 5)
      {
        if (v66 != 5)
        {
          goto LABEL_62;
        }
      }

      else if (v66 == 5 || qword_1C8BE6EC8[v65] != qword_1C8BE6EC8[v66])
      {
        goto LABEL_62;
      }

      v133 = v61;
      v67 = v58;
      v68 = *(v136 + 24);
      v69 = *(v132 + 48);
      sub_1C8786744(&v67[v68], v1, &qword_1EC2B5F88, &qword_1C8BE6C38);
      sub_1C8786744(v54 + v68, v1 + v69, &qword_1EC2B5F88, &qword_1C8BE6C38);
      v70 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_76(v70, v71, v33);
      if (v81)
      {
        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_76(v72, v73, v74);
        if (!v81)
        {
          goto LABEL_52;
        }

        v75 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v75, v76, &qword_1C8BE6C38);
        v77 = v133;
      }

      else
      {
        sub_1C8786744(v1, v135, &qword_1EC2B5F88, &qword_1C8BE6C38);
        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_76(v78, v79, v80);
        if (v81)
        {
          sub_1C87E4624();
LABEL_52:
          v114 = &qword_1EC2B5F90;
          v115 = &qword_1C8BE6C40;
LABEL_61:
          sub_1C8778ED8(v1, v114, v115);
LABEL_62:
          sub_1C87E4624();
          sub_1C87E4624();
          goto LABEL_63;
        }

        sub_1C87E4518();
        v82 = *(v33 + 20);
        v83 = *(v127 + 48);
        v84 = v129;
        sub_1C8786744(v135 + v82, v129, &qword_1EC2B5F78, &unk_1C8C13060);
        sub_1C8786744(v39 + v82, v84 + v83, &qword_1EC2B5F78, &unk_1C8C13060);
        v85 = OUTLINED_FUNCTION_213();
        v86 = v128;
        OUTLINED_FUNCTION_76(v85, v87, v128);
        if (v81)
        {
          OUTLINED_FUNCTION_24(v84 + v83);
          v77 = v133;
          if (!v81)
          {
            goto LABEL_54;
          }

          sub_1C8778ED8(v84, &qword_1EC2B5F78, &unk_1C8C13060);
          v54 = v120;
        }

        else
        {
          v88 = v131;
          sub_1C8786744(v84, v131, &qword_1EC2B5F78, &unk_1C8C13060);
          OUTLINED_FUNCTION_24(v84 + v83);
          if (v89)
          {
            sub_1C87E4624();
LABEL_54:
            v116 = &qword_1EC2B5F80;
            v117 = &qword_1C8BE6C30;
LABEL_59:
            sub_1C8778ED8(v84, v116, v117);
LABEL_60:
            sub_1C87E4624();
            sub_1C87E4624();
            v114 = &qword_1EC2B5F88;
            v115 = &qword_1C8BE6C38;
            goto LABEL_61;
          }

          v90 = v130;
          sub_1C87E4518();
          v91 = *(v86 + 20);
          v92 = *(v88 + v91);
          v93 = *(v90 + v91);
          if (v92 == 2)
          {
            if (v93 != 2)
            {
              goto LABEL_58;
            }
          }

          else if (v93 == 2 || ((v92 ^ v93) & 1) != 0)
          {
            goto LABEL_58;
          }

          v94 = *(v86 + 24);
          v95 = v126;
          v96 = *(v125 + 48);
          sub_1C8786744(v131 + v94, v126, &qword_1EC2B5F68, &qword_1C8BE6C18);
          sub_1C8786744(v130 + v94, v95 + v96, &qword_1EC2B5F68, &qword_1C8BE6C18);
          v97 = v119;
          OUTLINED_FUNCTION_76(v95, 1, v119);
          if (v81)
          {
            OUTLINED_FUNCTION_76(v95 + v96, 1, v97);
            if (!v81)
            {
              goto LABEL_57;
            }

            sub_1C8778ED8(v95, &qword_1EC2B5F68, &qword_1C8BE6C18);
          }

          else
          {
            v118 = v39;
            v98 = v124;
            sub_1C8786744(v95, v124, &qword_1EC2B5F68, &qword_1C8BE6C18);
            OUTLINED_FUNCTION_76(v95 + v96, 1, v97);
            if (v99)
            {
              sub_1C87E4624();
              v84 = v129;
LABEL_57:
              sub_1C8778ED8(v95, &qword_1EC2B5F70, &unk_1C8BE6C20);
LABEL_58:
              sub_1C87E4624();
              sub_1C87E4624();
              v116 = &qword_1EC2B5F78;
              v117 = &unk_1C8C13060;
              goto LABEL_59;
            }

            v100 = v123;
            sub_1C87E4518();
            v101 = *(v97 + 20);
            v102 = *(v100 + v101 + 8);
            if (*(v98 + v101 + 8))
            {
              v84 = v129;
              if (!v102 || ((OUTLINED_FUNCTION_35((v98 + v101)), v81) ? (v105 = v103 == v104) : (v105 = 0), !v105 && (sub_1C8BD529C() & 1) == 0))
              {
LABEL_55:
                OUTLINED_FUNCTION_174();
                sub_1C87E4624();
                sub_1C87E4624();
                sub_1C8778ED8(v126, &qword_1EC2B5F68, &qword_1C8BE6C18);
                goto LABEL_58;
              }
            }

            else
            {
              v84 = v129;
              if (v102)
              {
                goto LABEL_55;
              }
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v106);
            v107 = sub_1C8BD517C();
            OUTLINED_FUNCTION_174();
            sub_1C87E4624();
            OUTLINED_FUNCTION_262_0();
            sub_1C87E4624();
            sub_1C8778ED8(v126, &qword_1EC2B5F68, &qword_1C8BE6C18);
            v39 = v118;
            if ((v107 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v108);
          v109 = sub_1C8BD517C();
          sub_1C87E4624();
          sub_1C87E4624();
          sub_1C8778ED8(v84, &qword_1EC2B5F78, &unk_1C8C13060);
          v54 = v120;
          v77 = v133;
          if ((v109 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v110);
        OUTLINED_FUNCTION_217();
        v111 = sub_1C8BD517C();
        sub_1C87E4624();
        OUTLINED_FUNCTION_290();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B5F88, &qword_1C8BE6C38);
        if ((v111 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v112);
      OUTLINED_FUNCTION_191();
      v113 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_290();
      sub_1C87E4624();
      if (v113)
      {
        v33 = v122;
        v62 += v121;
        v61 = v77 + v121;
        v81 = v59-- == 1;
        v58 = v134;
        if (!v81)
        {
          continue;
        }
      }

      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
LABEL_63:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D6DA0()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v4);
  v6 = OUTLINED_FUNCTION_105(v5);
  v65 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_251_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_89();
  v12 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_211();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F60, &qword_1C8BE6C10);
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_252();
  v63 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0);
  v24 = OUTLINED_FUNCTION_7_2(v63);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_28_1();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_78_0();
  v31 = *(v2 + 16);
  OUTLINED_FUNCTION_256();
  if (v42 && v33 && v2 != v0)
  {
    v56 = v3;
    OUTLINED_FUNCTION_27_2(v32);
    v58 = v20;
    v59 = *(v35 + 72);
    v57 = v1;
    v61 = v36;
    v62 = v29;
    while (1)
    {
      v37 = v34;
      sub_1C87E45D0();
      v60 = v37;
      if (v37 == v61)
      {
        break;
      }

      sub_1C87E45D0();
      v38 = *(v63 + 24);
      v39 = *(v20 + 48);
      sub_1C8786744(v64 + v38, v3, &qword_1EC2B5F58, &qword_1C8C13070);
      OUTLINED_FUNCTION_331(v29 + v38, v3 + v39);
      OUTLINED_FUNCTION_73(v3);
      if (v42)
      {
        OUTLINED_FUNCTION_73(v3 + v39);
        if (!v42)
        {
          goto LABEL_27;
        }

        v40 = OUTLINED_FUNCTION_233();
        sub_1C8778ED8(v40, v41, &qword_1C8C13070);
      }

      else
      {
        OUTLINED_FUNCTION_272(v3, v1);
        OUTLINED_FUNCTION_73(v3 + v39);
        if (v42)
        {
          sub_1C87E4624();
LABEL_27:
          sub_1C8778ED8(v3, &qword_1EC2B5F60, &qword_1C8BE6C10);
LABEL_28:
          sub_1C87E4624();
          OUTLINED_FUNCTION_182();
          sub_1C87E4624();
          goto LABEL_29;
        }

        sub_1C87E4518();
        OUTLINED_FUNCTION_221();
        static Siri_Nlu_External_NluRouter_TypedValue.== infix(_:_:)();
        v44 = v43;
        sub_1C87E4624();
        OUTLINED_FUNCTION_230();
        sub_1C87E4624();
        v45 = OUTLINED_FUNCTION_233();
        sub_1C8778ED8(v45, v46, &qword_1C8C13070);
        if ((v44 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v47 = *v64;
      v48 = *v62;
      v49 = *(*v64 + 16);
      if (v49 != *(*v62 + 16))
      {
        goto LABEL_28;
      }

      if (v49 && v47 != v48)
      {
        v50 = 0;
        OUTLINED_FUNCTION_71(v65);
        while (v50 < *(v47 + 16))
        {
          v51 = *(v65 + 72) * v50;
          OUTLINED_FUNCTION_169_0();
          sub_1C87E45D0();
          if (v50 >= *(v48 + 16))
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_169_0();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_184();
          static Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.== infix(_:_:)();
          v53 = v52;
          sub_1C87E4624();
          OUTLINED_FUNCTION_315();
          sub_1C87E4624();
          if ((v53 & 1) == 0)
          {
            goto LABEL_28;
          }

          if (v49 == ++v50)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

LABEL_22:
      OUTLINED_FUNCTION_255(v63);
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v54);
      v29 = v62;
      v55 = sub_1C8BD517C();
      sub_1C87E4624();
      sub_1C87E4624();
      v20 = v58;
      if (v55)
      {
        v34 = v60 + 1;
        v1 = v57;
        v3 = v56;
        if (v60 + 1 != v61)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D7480()
{
  OUTLINED_FUNCTION_124();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v9 = OUTLINED_FUNCTION_13_1(v8);
  v87 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_252();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21(v88);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  v27 = OUTLINED_FUNCTION_7_2(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_49_2();
  v31 = *(v7 + 16);
  OUTLINED_FUNCTION_256();
  if (v48 && v33 && v7 != v5)
  {
    OUTLINED_FUNCTION_27_2(v32);
    v35 = v7 + v34;
    v36 = 0;
    v82 = v25;
    v83 = v5 + v34;
    v38 = *(v37 + 72);
    v78 = v16;
    v79 = v3;
    v89 = v2;
    v85 = v26;
    v86 = v39;
    v80 = v38;
    v81 = v35;
    while (1)
    {
      OUTLINED_FUNCTION_161();
      sub_1C87E45D0();
      if (v36 == v86)
      {
        break;
      }

      v84 = v36;
      OUTLINED_FUNCTION_161();
      v40 = v90;
      sub_1C87E45D0();
      v41 = *(v26 + 24);
      v42 = *(v2 + v41);
      v43 = *(v40 + v41);
      if (v42 == 4)
      {
        if (v43 != 4)
        {
          goto LABEL_37;
        }
      }

      else if (v42 != v43)
      {
        goto LABEL_37;
      }

      v44 = *(v85 + 28);
      v45 = *(v88 + 48);
      v46 = v82;
      sub_1C8786744(v89 + v44, v82, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C8786744(v90 + v44, v46 + v45, &qword_1EC2B6038, &unk_1C8BE8850);
      OUTLINED_FUNCTION_24(v46);
      if (v48)
      {
        OUTLINED_FUNCTION_24(v46 + v45);
        if (!v48)
        {
          goto LABEL_34;
        }

        sub_1C8778ED8(v46, &qword_1EC2B6038, &unk_1C8BE8850);
      }

      else
      {
        v47 = v79;
        sub_1C8786744(v46, v79, &qword_1EC2B6038, &unk_1C8BE8850);
        OUTLINED_FUNCTION_24(v46 + v45);
        if (v48)
        {
          OUTLINED_FUNCTION_152();
          sub_1C87E4624();
LABEL_34:
          v75 = &qword_1EC2B6040;
          v76 = &unk_1C8BE6CF0;
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_154_0();
        v49 = v78;
        sub_1C87E4518();
        v50 = *(v8 + 20);
        v51 = *(v47 + v50);
        if (v51 != *&v49[v50])
        {
          v52 = *(v47 + v50);

          sub_1C88AD618();
          v54 = v53;

          if ((v54 & 1) == 0)
          {
            OUTLINED_FUNCTION_57();
            sub_1C87E4624();
            OUTLINED_FUNCTION_147();
            sub_1C87E4624();
            v75 = &qword_1EC2B6038;
            v76 = &unk_1C8BE8850;
LABEL_36:
            sub_1C8778ED8(v46, v75, v76);
LABEL_37:
            sub_1C87E4624();
            OUTLINED_FUNCTION_182();
            sub_1C87E4624();
            goto LABEL_38;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v55);
        OUTLINED_FUNCTION_240();
        OUTLINED_FUNCTION_232_0();
        sub_1C8BD517C();
        OUTLINED_FUNCTION_114();
        sub_1C87E4624();
        OUTLINED_FUNCTION_261_0();
        sub_1C87E4624();
        sub_1C8778ED8(v46, &qword_1EC2B6038, &unk_1C8BE8850);
        if ((v51 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_236(v90);
      v58 = *(v57 + 16);
      if (v58 != *(v56 + 16))
      {
        goto LABEL_37;
      }

      if (v58 && v57 != v56)
      {
        OUTLINED_FUNCTION_39_0();
        v61 = v59 + v60;
        v63 = v62 + v60;
        v65 = *(v64 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_258();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_151();
          sub_1C87E45D0();
          v66 = *(v8 + 20);
          v67 = *(v1 + v66);
          if (v67 != *(v0 + v66))
          {
            v68 = *(v1 + v66);

            sub_1C88AD618();
            v70 = v69;

            if ((v70 & 1) == 0)
            {
              break;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v71);
          OUTLINED_FUNCTION_97();
          sub_1C8BD517C();
          OUTLINED_FUNCTION_114();
          sub_1C87E4624();
          OUTLINED_FUNCTION_168_0();
          sub_1C87E4624();
          if ((v67 & 1) == 0)
          {
            goto LABEL_37;
          }

          v63 += v65;
          v61 += v65;
          if (!--v58)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_57();
        sub_1C87E4624();
        OUTLINED_FUNCTION_118();
        sub_1C87E4624();
        goto LABEL_37;
      }

LABEL_28:
      v26 = v85;
      v72 = *(v85 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v73);
      v2 = v89;
      v74 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_107_0();
      sub_1C87E4624();
      if (v74)
      {
        v36 = v84 + 1;
        if (v84 + 1 != v86)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D7AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v25;
  a20 = v26;
  v27 = OUTLINED_FUNCTION_102();
  v28 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v27);
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_0();
  v145 = v32;
  v33 = OUTLINED_FUNCTION_86();
  v141 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(v33);
  v34 = OUTLINED_FUNCTION_21(v141);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_33();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6158, &unk_1C8BFA970);
  OUTLINED_FUNCTION_80(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_81();
  v139 = v44;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6160, &qword_1C8BE6E00);
  OUTLINED_FUNCTION_21(v140);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_74();
  v138 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v48);
  v49 = OUTLINED_FUNCTION_21(v138);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v146 = v52;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6168, &qword_1C8BE6E08);
  OUTLINED_FUNCTION_21(v144);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_75(v56, v133);
  v150 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  v57 = OUTLINED_FUNCTION_21(v150);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_250();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_123();
  v143 = v61;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_207_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_80(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v133 - v68;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6178, &qword_1C8BFAAB0);
  OUTLINED_FUNCTION_21(v149);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_81();
  v152 = v73;
  v74 = OUTLINED_FUNCTION_86();
  v147 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v74);
  v75 = OUTLINED_FUNCTION_7_2(v147);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_20_1();
  v154 = v78;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_49_2();
  v80 = *(v21 + 16);
  OUTLINED_FUNCTION_227_0();
  if (!v92 || !v80 || v21 == v20)
  {
    goto LABEL_50;
  }

  v135 = v22;
  v133 = v39;
  v134 = v28;
  OUTLINED_FUNCTION_27_2(v81);
  v83 = v21 + v82;
  v84 = v20 + v82;
  v142 = *(v85 + 72);
  v148 = v24;
  v136 = v23;
  v137 = v69;
  while (1)
  {
    OUTLINED_FUNCTION_315();
    sub_1C87E45D0();
    v151 = v83;
    v86 = v69;
    v87 = v154;
    sub_1C87E45D0();
    v88 = *(v149 + 48);
    v89 = v152;
    sub_1C8786744(v24, v152, &qword_1EC2B6170, &unk_1C8BE6E10);
    v90 = v87;
    v91 = v89;
    sub_1C8786744(v90, v89 + v88, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_76(v89, 1, v150);
    if (!v92)
    {
      break;
    }

    OUTLINED_FUNCTION_24(v89 + v88);
    v69 = v86;
    if (!v92)
    {
      goto LABEL_41;
    }

LABEL_36:
    v124 = OUTLINED_FUNCTION_88();
    sub_1C8778ED8(v124, v125, &unk_1C8BE6E10);
    v126 = *(v147 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v127);
    v128 = sub_1C8BD517C();
    v24 = v148;
    sub_1C87E4624();
    sub_1C87E4624();
    if (v128)
    {
      v84 += v142;
      v83 = v151 + v142;
      if (--v80)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  sub_1C8786744(v89, v86, &qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_24(v89 + v88);
  if (v92)
  {
    OUTLINED_FUNCTION_141();
    sub_1C87E4624();
LABEL_41:
    v129 = &qword_1EC2B6178;
    v130 = &qword_1C8BFAAB0;
    v131 = v91;
    goto LABEL_49;
  }

  sub_1C87E4518();
  v93 = *(v144 + 48);
  sub_1C87E45D0();
  sub_1C87E45D0();
  OUTLINED_FUNCTION_221();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_108();
    v94 = v136;
    sub_1C87E45D0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_43;
    }

    v95 = v145;
    sub_1C87E4518();
    v96 = *v94 == *v95 && v94[1] == v95[1];
    v69 = v137;
    if (!v96 && (sub_1C8BD529C() & 1) == 0 || (v94[2] == v95[2] ? (v97 = v94[3] == v95[3]) : (v97 = 0), !v97 && (sub_1C8BD529C() & 1) == 0 || (v98 = *(v134 + 24), sub_1C8BD49FC(), OUTLINED_FUNCTION_0_2(), sub_1C87E44D0(&qword_1EC2B2F70, v99), (sub_1C8BD517C() & 1) == 0)))
    {
      OUTLINED_FUNCTION_144_0();
      sub_1C87E4624();
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_144_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_259();
    sub_1C87E4624();
LABEL_35:
    OUTLINED_FUNCTION_142();
    sub_1C87E4624();
    sub_1C87E4624();
    OUTLINED_FUNCTION_218();
    sub_1C87E4624();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_108();
  v100 = v143;
  sub_1C87E45D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_43:
    sub_1C87E4624();
    sub_1C8778ED8(v153, &qword_1EC2B6168, &qword_1C8BE6E08);
    goto LABEL_48;
  }

  v101 = v146;
  sub_1C87E4518();
  v102 = *(v140 + 48);
  v103 = v100;
  v104 = v135;
  sub_1C8786744(v103, v135, &qword_1EC2B6158, &unk_1C8BFA970);
  sub_1C8786744(v101, v104 + v102, &qword_1EC2B6158, &unk_1C8BFA970);
  v105 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v105, v106, v141);
  v69 = v137;
  if (v92)
  {
    OUTLINED_FUNCTION_66_0(v104 + v102);
    if (!v92)
    {
      goto LABEL_45;
    }

    v107 = OUTLINED_FUNCTION_268();
    sub_1C8778ED8(v107, v108, &unk_1C8BFA970);
    goto LABEL_33;
  }

  sub_1C8786744(v104, v139, &qword_1EC2B6158, &unk_1C8BFA970);
  OUTLINED_FUNCTION_66_0(v104 + v102);
  if (!v109)
  {
    OUTLINED_FUNCTION_238(&a17);
    sub_1C87E4518();
    v110 = OUTLINED_FUNCTION_119_0();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind.== infix(_:_:)(v110, v111, v112, v113, v114, v115, v116, v117, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
    v119 = v118;
    sub_1C87E4624();
    sub_1C87E4624();
    v120 = OUTLINED_FUNCTION_268();
    sub_1C8778ED8(v120, v121, &unk_1C8BFA970);
    if ((v119 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_33:
    v122 = *(v138 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v123);
    if ((sub_1C8BD517C() & 1) == 0)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_143();
    sub_1C87E4624();
    OUTLINED_FUNCTION_262_0();
    sub_1C87E4624();
    goto LABEL_35;
  }

  sub_1C87E4624();
LABEL_45:
  sub_1C8778ED8(v104, &qword_1EC2B6160, &qword_1C8BE6E00);
LABEL_46:
  OUTLINED_FUNCTION_143();
  sub_1C87E4624();
LABEL_47:
  sub_1C87E4624();
  OUTLINED_FUNCTION_141();
  sub_1C87E4624();
LABEL_48:
  v132 = v152;
  OUTLINED_FUNCTION_142();
  sub_1C87E4624();
  sub_1C87E4624();
  v129 = &qword_1EC2B6170;
  v130 = &unk_1C8BE6E10;
  v131 = v132;
LABEL_49:
  sub_1C8778ED8(v131, v129, v130);
  sub_1C87E4624();
  OUTLINED_FUNCTION_91();
  sub_1C87E4624();
LABEL_50:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87D8544(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_188();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C87D89BC()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_249();
  v4 = sub_1C8BD49BC();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v59 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_0();
  v58 = v9;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_90_0();
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(v11);
  v13 = OUTLINED_FUNCTION_7_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v53 = v16;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_69_0();
  v19 = *(v2 + 16);
  if (v19 == *(v0 + 16) && v19 && v2 != v0)
  {
    v20 = 0;
    OUTLINED_FUNCTION_27_2(v18);
    v46 = v12;
    v47 = v0 + v21;
    v54 = (v59 + 8);
    v55 = v59 + 16;
    v48 = *(v22 + 72);
    v49 = v2 + v21;
    v52 = v1;
    v45 = v19;
    while (1)
    {
      OUTLINED_FUNCTION_130();
      sub_1C87E45D0();
      if (v20 == v19)
      {
        break;
      }

      v50 = v20;
      OUTLINED_FUNCTION_130();
      sub_1C87E45D0();
      v27 = *v53;
      v28 = v53[1];
      v29 = *v1 == *v53 && v1[1] == v28;
      if (!v29 && (sub_1C8BD529C() & 1) == 0 || (v30 = *(v52 + 16), v31 = v53[2], v32 = *(v30 + 16), v32 != *(v31 + 16)))
      {
LABEL_24:
        sub_1C87E4624();
        sub_1C87E4624();
        goto LABEL_25;
      }

      if (v32 && v30 != v31)
      {
        v33 = 0;
        OUTLINED_FUNCTION_71(v59);
        v56 = v31 + v34;
        v57 = v30 + v34;
        while (v33 < *(v30 + 16))
        {
          v35 = *(v59 + 72) * v33;
          v36 = *(v59 + 16);
          v36(v3, v57 + v35, v4);
          if (v33 >= *(v31 + 16))
          {
            goto LABEL_27;
          }

          v36(v58, v56 + v35, v4);
          sub_1C87E44D0(&qword_1EC2B6180, MEMORY[0x1E69AAB10]);
          v37 = sub_1C8BD517C();
          v38 = *v54;
          v39 = OUTLINED_FUNCTION_118();
          v38(v39);
          v40 = OUTLINED_FUNCTION_191();
          v38(v40);
          if ((v37 & 1) == 0)
          {
            goto LABEL_24;
          }

          if (v32 == ++v33)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        break;
      }

LABEL_19:
      sub_1C87D7AE0(*(v52 + 24), v53[3], v27, v28, v23, v24, v25, v26, v45, v46, v47, v48, v49, v50, v52, v53, v54, v55, v56, v57);
      if ((v41 & 1) == 0)
      {
        goto LABEL_24;
      }

      v42 = *(v46 + 28);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v43);
      v1 = v52;
      v44 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_233();
      sub_1C87E4624();
      if (v44)
      {
        v20 = v51 + 1;
        v19 = v45;
        if (v51 + 1 != v45)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D8E4C()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_2(v15, v39);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_21(v43);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_45();
  v41 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(v19);
  v20 = OUTLINED_FUNCTION_7_2(v41);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_69_0();
  v25 = *(v1 + 16);
  if (v25 == *(v0 + 16) && v25 && v1 != v0)
  {
    v42 = v6;
    OUTLINED_FUNCTION_27_2(v24);
    v27 = v1 + v26;
    OUTLINED_FUNCTION_135_0(v28);
    v40 = v29;
    v30 = v41;
    while (1)
    {
      OUTLINED_FUNCTION_223_1();
      sub_1C87E45D0();
      sub_1C87E45D0();
      v31 = *v4 == *v45 && v4[1] == v45[1];
      if (!v31 && (sub_1C8BD529C() & 1) == 0)
      {
        break;
      }

      v32 = *(v30 + 24);
      OUTLINED_FUNCTION_190_1();
      sub_1C8786744(v4 + v32, v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      sub_1C8786744(v45 + v32, v45 + v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      OUTLINED_FUNCTION_76(v2, 1, v42);
      if (v31)
      {
        OUTLINED_FUNCTION_72(v45 + v2);
        if (!v31)
        {
          goto LABEL_22;
        }

        sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      }

      else
      {
        sub_1C8786744(v2, v44, &qword_1EC2B60C8, &qword_1C8BFA9F0);
        OUTLINED_FUNCTION_72(v45 + v2);
        if (v33)
        {
          sub_1C87E4624();
LABEL_22:
          sub_1C8778ED8(v2, &qword_1EC2B60D0, &qword_1C8BE6D80);
          break;
        }

        sub_1C87E4518();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
        v35 = v34;
        v30 = v41;
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      v36 = *(v30 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v37);
      v38 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_292();
      sub_1C87E4624();
      if (v38)
      {
        v3 += v40;
        v27 += v40;
        if (--v25)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_147();
    sub_1C87E4624();
  }

LABEL_24:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D9370()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(v3);
  v5 = OUTLINED_FUNCTION_7_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v40 - v10);
  v12 = *(v2 + 16);
  if (v12 == *(v0 + 16) && v12 && v2 != v0)
  {
    v13 = 0;
    OUTLINED_FUNCTION_27_2(v9);
    v40[1] = v0 + v14;
    v16 = *(v15 + 72);
    while (1)
    {
      sub_1C87E45D0();
      if (v13 == v12)
      {
        break;
      }

      OUTLINED_FUNCTION_330();
      v17 = *v11;
      v18 = *v1;
      v19 = *(*v11 + 16);
      if (v19 != *(*v1 + 16))
      {
        goto LABEL_42;
      }

      if (v19)
      {
        v20 = v17 == v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v17 + 40);
        v22 = (v18 + 40);
        while (v19)
        {
          v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
          if (!v23 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
        break;
      }

LABEL_19:
      v24 = *(v4 + 28);
      OUTLINED_FUNCTION_23_1();
      if (v27)
      {
        if (!v25)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_35(v26);
        v30 = v20 && v28 == v29;
        if (!v30 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v25)
      {
        goto LABEL_42;
      }

      v31 = v11[1];
      v32 = v1[1];
      v33 = *(v31 + 16);
      if (v33 != *(v32 + 16))
      {
        goto LABEL_42;
      }

      if (v33 && v31 != v32)
      {
        v34 = (v31 + 40);
        v35 = (v32 + 40);
        while (1)
        {
          v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
          if (!v36 && (sub_1C8BD529C() & 1) == 0)
          {
            break;
          }

          v34 += 2;
          v35 += 2;
          if (!--v33)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        sub_1C87E4624();
        OUTLINED_FUNCTION_121();
        sub_1C87E4624();
        goto LABEL_43;
      }

LABEL_38:
      v37 = *(v4 + 24);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v38);
      v39 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_268();
      sub_1C87E4624();
      if ((v39 & 1) != 0 && ++v13 != v12)
      {
        continue;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D964C()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(v4);
  v5 = OUTLINED_FUNCTION_21(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_2(v13, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6100, &unk_1C8BE6DB0);
  OUTLINED_FUNCTION_21(v38);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_46_0();
  v37 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(v17);
  v18 = OUTLINED_FUNCTION_7_2(v37);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_0();
  if (v32 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_17_5(v22);
    while (1)
    {
      OUTLINED_FUNCTION_215();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_200_0();
      sub_1C87E45D0();
      v23 = OUTLINED_FUNCTION_40_1();
      sub_1C8786744(v23, v24, v25, &qword_1C8BFAB60);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_16_1(v1);
      if (v32)
      {
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_183();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
LABEL_19:
          sub_1C87E4624();
          sub_1C8778ED8(v1, &qword_1EC2B6100, &unk_1C8BE6DB0);
          break;
        }

        v26 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v26, v27, &qword_1C8BFAB60);
      }

      else
      {
        OUTLINED_FUNCTION_64_1();
        sub_1C8786744(v28, v29, v30, v31);
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (v32)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_119_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_208();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_182();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind.== infix(_:_:)();
        v34 = v33;
        sub_1C87E4624();
        OUTLINED_FUNCTION_224();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B60F8, &qword_1C8BFAB60);
        if ((v34 & 1) == 0)
        {
          OUTLINED_FUNCTION_183();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v35);
      v0 = OUTLINED_FUNCTION_94();
      sub_1C87E4624();
      OUTLINED_FUNCTION_279();
      if (v0)
      {
        OUTLINED_FUNCTION_25_3();
        if (!v32)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87D9D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      if (*v3)
      {
        v6 = *(v3 - 1) != 0;
      }

      else
      {
        v6 = *(v3 - 1);
      }

      if (*v4 == 1)
      {
        if (v5)
        {
          if (v6 != 1)
          {
            return OUTLINED_FUNCTION_189_0();
          }
        }

        else if (v6)
        {
          return OUTLINED_FUNCTION_189_0();
        }
      }

      else if (v6 != v5)
      {
        return OUTLINED_FUNCTION_189_0();
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_188();
}

void sub_1C87D9DD0()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_241();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v88 = v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A8, &qword_1C8BE6D58);
  OUTLINED_FUNCTION_21(v91);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v92 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v15 = OUTLINED_FUNCTION_80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_0();
  v89 = v18;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_96();
  v95 = v20;
  v21 = OUTLINED_FUNCTION_86();
  v98 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v21);
  v22 = OUTLINED_FUNCTION_21(v98);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  v96 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  OUTLINED_FUNCTION_21(v97);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_45();
  v36 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v35);
  v37 = OUTLINED_FUNCTION_7_2(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_28_1();
  v42 = (v40 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v46 = (&v80 - v45);
  v47 = *(v0 + 16);
  if (v47 != *(v3 + 16) || !v47 || v0 == v3)
  {
    goto LABEL_41;
  }

  v83 = v5;
  OUTLINED_FUNCTION_27_2(v44);
  v49 = v0 + v48;
  v50 = v3 + v48;
  v93 = *(v51 + 72);
  v94 = v36;
  v90 = v31;
  v86 = v1;
  v82 = v46;
  v81 = v42;
  while (1)
  {
    sub_1C87E45D0();
    OUTLINED_FUNCTION_271();
    sub_1C87E45D0();
    v52 = *v46;
    v53 = *v42;
    if (*(v46 + 8))
    {
      v52 = *v46 != 0;
    }

    if (*(v42 + 8) == 1)
    {
      if (v53)
      {
        if (v52 != 1)
        {
          goto LABEL_40;
        }
      }

      else if (v52)
      {
        goto LABEL_40;
      }
    }

    else if (v52 != v53)
    {
      goto LABEL_40;
    }

    v54 = *(v36 + 24);
    v55 = *(v97 + 48);
    sub_1C8786744(v46 + v54, v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    sub_1C8786744(v42 + v54, v1 + v55, &qword_1EC2B60D8, &qword_1C8BE6D88);
    v56 = OUTLINED_FUNCTION_109();
    v57 = v98;
    OUTLINED_FUNCTION_76(v56, v58, v98);
    if (!v60)
    {
      break;
    }

    OUTLINED_FUNCTION_66_0(v1 + v55);
    if (!v60)
    {
      OUTLINED_FUNCTION_173_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_191();
LABEL_35:
      sub_1C87E4624();
      sub_1C8778ED8(v1, &qword_1EC2B60E0, &qword_1C8BE6D90);
      goto LABEL_41;
    }

LABEL_30:
    sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    v36 = v94;
    v77 = *(v94 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v78);
    v79 = sub_1C8BD517C();
    sub_1C87E4624();
    OUTLINED_FUNCTION_215();
    sub_1C87E4624();
    if (v79)
    {
      v50 += v93;
      v49 += v93;
      if (--v47)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  v59 = v90;
  sub_1C8786744(v1, v90, &qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_66_0(v1 + v55);
  if (v60)
  {
    OUTLINED_FUNCTION_173_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_191();
    sub_1C87E4624();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_242_0();
  v61 = v96;
  sub_1C87E4518();
  v62 = *(v57 + 20);
  v63 = *(v59 + v62);
  v64 = *(v61 + v62);
  if (v63 == v64)
  {
LABEL_28:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v76);
    OUTLINED_FUNCTION_217();
    if ((sub_1C8BD517C() & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_119_0();
    sub_1C87E4624();
    v1 = v86;
    goto LABEL_30;
  }

  v65 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
  OUTLINED_FUNCTION_277();
  v66 = v95;
  v46 = &qword_1EC2B60B0;
  sub_1C8786744(v63 + v65, v95, &qword_1EC2B60B0, &qword_1C8BE6D60);
  v85 = v63;
  v67 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
  OUTLINED_FUNCTION_277();
  v68 = v92;
  v69 = *(v91 + 48);
  v70 = OUTLINED_FUNCTION_262_0();
  sub_1C8786744(v70, v71, &qword_1EC2B60B0, &qword_1C8BE6D60);
  v84 = v69;
  sub_1C8786744(v64 + v67, v68 + v69, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_76(v68, 1, v83);
  v87 = v64;
  if (v60)
  {

    sub_1C8778ED8(v66, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_66_0(v68 + v84);
    v42 = v81;
    if (!v60)
    {
      goto LABEL_37;
    }

    sub_1C8778ED8(v68, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_308();
LABEL_27:

    goto LABEL_28;
  }

  sub_1C8786744(v68, v89, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_66_0(v68 + v84);
  if (!v72)
  {
    OUTLINED_FUNCTION_176();
    sub_1C87E4518();

    OUTLINED_FUNCTION_106();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)();
    LODWORD(v84) = v73;
    sub_1C87E4624();
    sub_1C8778ED8(v95, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_315();
    sub_1C87E4624();
    v74 = OUTLINED_FUNCTION_306();
    sub_1C8778ED8(v74, v75, &qword_1C8BE6D60);
    v46 = v82;
    v42 = v81;
    if ((v84 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  sub_1C8778ED8(v95, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_175();
  sub_1C87E4624();
LABEL_37:
  sub_1C8778ED8(v68, &qword_1EC2B60A8, &qword_1C8BE6D58);
  OUTLINED_FUNCTION_308();
LABEL_38:

LABEL_39:
  sub_1C87E4624();
  OUTLINED_FUNCTION_91();
  sub_1C87E4624();
  sub_1C8778ED8(v86, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_40:
  sub_1C87E4624();
  OUTLINED_FUNCTION_191();
  sub_1C87E4624();
LABEL_41:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DA628()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_84();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A8, &qword_1C8BE6D58);
  OUTLINED_FUNCTION_21(v61);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v58 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v15 = OUTLINED_FUNCTION_80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_90_0();
  v62 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v19);
  v20 = OUTLINED_FUNCTION_7_2(v62);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_1();
  v63 = v23;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_69_0();
  v26 = *(v1 + 16);
  if (v26 != *(v0 + 16) || !v26 || v1 == v0)
  {
    goto LABEL_21;
  }

  v54 = v2;
  v56 = v3;
  v57 = v6;
  OUTLINED_FUNCTION_27_2(v25);
  v28 = v1 + v27;
  v29 = v0 + v27;
  v59 = v4;
  v60 = *(v30 + 72);
  v31 = v58;
  while (1)
  {
    OUTLINED_FUNCTION_270();
    sub_1C87E45D0();
    sub_1C87E45D0();
    v32 = *(v62 + 20);
    v33 = *(v3 + v32);
    v34 = *(v63 + v32);
    if (v33 == v34)
    {
      goto LABEL_14;
    }

    v35 = v31;
    v36 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
    OUTLINED_FUNCTION_277();
    sub_1C8786744(v33 + v36, v4, &qword_1EC2B60B0, &qword_1C8BE6D60);
    v37 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
    OUTLINED_FUNCTION_277();
    v38 = *(v61 + 48);
    v39 = OUTLINED_FUNCTION_262_0();
    sub_1C8786744(v39, v40, &qword_1EC2B60B0, &qword_1C8BE6D60);
    sub_1C8786744(v34 + v37, v35 + v38, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_76(v35, 1, v57);
    if (v49)
    {

      v41 = OUTLINED_FUNCTION_261_0();
      sub_1C8778ED8(v41, v42, &qword_1C8BE6D60);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_76(v43, v44, v45);
      v3 = v56;
      v31 = v35;
      if (!v49)
      {
        goto LABEL_18;
      }

      sub_1C8778ED8(v35, &qword_1EC2B60B0, &qword_1C8BE6D60);
      goto LABEL_13;
    }

    sub_1C8786744(v35, v54, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v46, v47, v48);
    if (v49)
    {
      break;
    }

    OUTLINED_FUNCTION_176();
    sub_1C87E4518();

    v50 = OUTLINED_FUNCTION_107_0();
    v55 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)(v50);
    sub_1C87E4624();
    sub_1C8778ED8(v59, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_91();
    v31 = v58;
    sub_1C87E4624();
    v51 = OUTLINED_FUNCTION_216();
    sub_1C8778ED8(v51, v52, &qword_1C8BE6D60);
    v3 = v56;
    if ((v55 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:

    v4 = v59;
LABEL_14:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v53);
    OUTLINED_FUNCTION_240();
    if ((sub_1C8BD517C() & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_147();
    sub_1C87E4624();
    v29 += v60;
    v28 += v60;
    if (!--v26)
    {
      goto LABEL_21;
    }
  }

  sub_1C8778ED8(v59, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_175();
  sub_1C87E4624();
  v31 = v35;
LABEL_18:
  sub_1C8778ED8(v31, &qword_1EC2B60A8, &qword_1C8BE6D58);
LABEL_19:

LABEL_20:
  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_21:
  OUTLINED_FUNCTION_125();
}

void sub_1C87DAB18()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(v4);
  v5 = OUTLINED_FUNCTION_21(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_2(v13, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A0, &qword_1C8BE6D50);
  OUTLINED_FUNCTION_21(v38);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_46_0();
  v37 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(v17);
  v18 = OUTLINED_FUNCTION_7_2(v37);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_0();
  if (v32 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_17_5(v22);
    while (1)
    {
      OUTLINED_FUNCTION_215();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_200_0();
      sub_1C87E45D0();
      v23 = OUTLINED_FUNCTION_40_1();
      sub_1C8786744(v23, v24, v25, &qword_1C8BFAAC0);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_16_1(v1);
      if (v32)
      {
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_170_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
LABEL_19:
          sub_1C87E4624();
          sub_1C8778ED8(v1, &qword_1EC2B60A0, &qword_1C8BE6D50);
          break;
        }

        v26 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v26, v27, &qword_1C8BFAAC0);
      }

      else
      {
        OUTLINED_FUNCTION_64_1();
        sub_1C8786744(v28, v29, v30, v31);
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (v32)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_119_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_208();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_182();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind.== infix(_:_:)();
        v34 = v33;
        sub_1C87E4624();
        OUTLINED_FUNCTION_224();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
        if ((v34 & 1) == 0)
        {
          OUTLINED_FUNCTION_170_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v35);
      v0 = OUTLINED_FUNCTION_94();
      sub_1C87E4624();
      OUTLINED_FUNCTION_279();
      if (v0)
      {
        OUTLINED_FUNCTION_25_3();
        if (!v32)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DAE94()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_84();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_1EC2B60B8, &qword_1C8BE6D68);
  OUTLINED_FUNCTION_21(v61);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v15 = OUTLINED_FUNCTION_80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_206_0();
  v63 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v19 = OUTLINED_FUNCTION_7_2(v63);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v65 = v22;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_69_0();
  v25 = *(v1 + 16);
  if (v25 != *(v0 + 16) || !v25 || v1 == v0)
  {
    goto LABEL_21;
  }

  v56 = v2;
  v59 = v4;
  v60 = v6;
  OUTLINED_FUNCTION_27_2(v24);
  v27 = v1 + v26;
  v28 = v0 + v26;
  v62 = *(v29 + 72);
  v58 = v3;
  while (1)
  {
    OUTLINED_FUNCTION_239();
    sub_1C87E45D0();
    sub_1C87E45D0();
    v30 = *(v63 + 20);
    v31 = *(v4 + v30);
    v32 = *(v65 + v30);
    if (v31 == v32)
    {
      goto LABEL_14;
    }

    v33 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typedValueKind;
    OUTLINED_FUNCTION_277();
    sub_1C8786744(v31 + v33, v3, &qword_1EC2B60C0, &unk_1C8BE6D70);
    v34 = v3;
    v35 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typedValueKind;
    OUTLINED_FUNCTION_277();
    v36 = *(v61 + 48);
    sub_1C8786744(v34, v64, &qword_1EC2B60C0, &unk_1C8BE6D70);
    sub_1C8786744(v32 + v35, v64 + v36, &qword_1EC2B60C0, &unk_1C8BE6D70);
    v37 = OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_76(v37, v38, v60);
    if (v45)
    {

      sub_1C8778ED8(v34, &qword_1EC2B60C0, &unk_1C8BE6D70);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_76(v39, v40, v41);
      v4 = v59;
      if (!v45)
      {
        goto LABEL_19;
      }

      sub_1C8778ED8(v64, &qword_1EC2B60C0, &unk_1C8BE6D70);
      v3 = v58;
      goto LABEL_13;
    }

    sub_1C8786744(v64, v56, &qword_1EC2B60C0, &unk_1C8BE6D70);
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v42, v43, v44);
    if (v45)
    {
      break;
    }

    sub_1C87E4518();

    v46 = OUTLINED_FUNCTION_261_0();
    v57 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind.== infix(_:_:)(v46, v47);
    sub_1C87E4624();
    v3 = v58;
    OUTLINED_FUNCTION_232_0();
    sub_1C8778ED8(v48, v49, v50);
    OUTLINED_FUNCTION_147();
    sub_1C87E4624();
    OUTLINED_FUNCTION_232_0();
    sub_1C8778ED8(v51, v52, v53);
    v4 = v59;
    if ((v57 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:

LABEL_14:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v54);
    OUTLINED_FUNCTION_240();
    v55 = sub_1C8BD517C();
    sub_1C87E4624();
    sub_1C87E4624();
    if (v55)
    {
      v28 += v62;
      v27 += v62;
      if (--v25)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_1C8778ED8(v58, &qword_1EC2B60C0, &unk_1C8BE6D70);
  sub_1C87E4624();
LABEL_19:
  sub_1C8778ED8(v64, &byte_1EC2B60B8, &qword_1C8BE6D68);
LABEL_20:

  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_21:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DB73C()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(v4);
  v5 = OUTLINED_FUNCTION_21(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_2(v13, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6060, &unk_1C8BE6D10);
  OUTLINED_FUNCTION_21(v38);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_46_0();
  v37 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(v17);
  v18 = OUTLINED_FUNCTION_7_2(v37);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_0();
  if (v32 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_17_5(v22);
    while (1)
    {
      OUTLINED_FUNCTION_215();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_200_0();
      sub_1C87E45D0();
      v23 = OUTLINED_FUNCTION_40_1();
      sub_1C8786744(v23, v24, v25, &qword_1C8BE6D08);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_16_1(v1);
      if (v32)
      {
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_159_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
LABEL_19:
          sub_1C87E4624();
          sub_1C8778ED8(v1, &qword_1EC2B6060, &unk_1C8BE6D10);
          break;
        }

        v26 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v26, v27, &qword_1C8BE6D08);
      }

      else
      {
        OUTLINED_FUNCTION_64_1();
        sub_1C8786744(v28, v29, v30, v31);
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (v32)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_119_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_208();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_182();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind.== infix(_:_:)();
        v34 = v33;
        sub_1C87E4624();
        OUTLINED_FUNCTION_224();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
        if ((v34 & 1) == 0)
        {
          OUTLINED_FUNCTION_159_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v35);
      v0 = OUTLINED_FUNCTION_94();
      sub_1C87E4624();
      OUTLINED_FUNCTION_279();
      if (v0)
      {
        OUTLINED_FUNCTION_25_3();
        if (!v32)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DBAB8()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_67_0();
  v63 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component(v3);
  v4 = OUTLINED_FUNCTION_7_2(v63);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v11 = *(v1 + 16);
  if (v11 != *(v0 + 16) || !v11 || v1 == v0)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_27_2(v8);
  v13 = v1 + v12;
  OUTLINED_FUNCTION_135_0(v14);
  v62 = v15;
  while (1)
  {
    OUTLINED_FUNCTION_168_0();
    sub_1C87E45D0();
    v16 = v64;
    sub_1C87E45D0();
    v18 = *v10;
    v17 = *(v10 + 1);
    v19 = v10[16];
    v20 = *v16;
    v21 = v16[1];
    v22 = *(v16 + 16);
    if (v19 == 255)
    {
      if (v22 != 255)
      {
LABEL_30:
        v52 = OUTLINED_FUNCTION_47_0();
        sub_1C87E44B0(v52, v53, v54);
        v55 = OUTLINED_FUNCTION_193();
        v57 = v22;
        goto LABEL_33;
      }

      v27 = OUTLINED_FUNCTION_88();
      sub_1C87E4490(v27, v28, 255);
      v29 = OUTLINED_FUNCTION_193();
      sub_1C87E4490(v29, v30, 255);
      goto LABEL_25;
    }

    if (v22 == 255)
    {
      goto LABEL_30;
    }

    if (v19)
    {
      if ((v22 & 1) == 0)
      {
        break;
      }

      if (v18 == v20 && v17 == v21)
      {
LABEL_24:
        v38 = OUTLINED_FUNCTION_48_1();
        sub_1C87E4490(v38, v39, v40);
        v41 = OUTLINED_FUNCTION_88();
        sub_1C87E4490(v41, v42, v22);
        v43 = OUTLINED_FUNCTION_48_1();
        sub_1C87E4490(v43, v44, v45);
        OUTLINED_FUNCTION_88();
        sub_1C87E44C8();
        OUTLINED_FUNCTION_88();
        sub_1C87E44C8();
      }

      else
      {
        OUTLINED_FUNCTION_88();
        HIDWORD(v61) = sub_1C8BD529C();
        v24 = OUTLINED_FUNCTION_47_0();
        sub_1C87E4490(v24, v25, v26);
        OUTLINED_FUNCTION_88();
        sub_1C87E44C8();
        OUTLINED_FUNCTION_193();
        sub_1C87E44C8();
        if ((v61 & 0x100000000) == 0)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      v46 = OUTLINED_FUNCTION_48_1();
      sub_1C87E44B0(v46, v47, v48);
      goto LABEL_26;
    }

    if (v22)
    {
      break;
    }

    if (v18 == v20 && v17 == v21)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_88();
    HIDWORD(v61) = sub_1C8BD529C();
    v32 = OUTLINED_FUNCTION_47_0();
    sub_1C87E4490(v32, v33, v34);
    OUTLINED_FUNCTION_88();
    sub_1C87E44C8();
    OUTLINED_FUNCTION_193();
    sub_1C87E44C8();
    v35 = OUTLINED_FUNCTION_48_1();
    sub_1C87E44B0(v35, v36, v37);
    if ((v61 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_26:
    v49 = *(v63 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v50);
    v51 = sub_1C8BD517C();
    sub_1C87E4624();
    OUTLINED_FUNCTION_271();
    sub_1C87E4624();
    if (v51)
    {
      v2 += v62;
      v13 += v62;
      if (--v11)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  v58 = OUTLINED_FUNCTION_47_0();
  sub_1C87E4490(v58, v59, v60);
  OUTLINED_FUNCTION_88();
  sub_1C87E44C8();
  OUTLINED_FUNCTION_193();
  sub_1C87E44C8();
LABEL_32:
  v55 = OUTLINED_FUNCTION_48_1();
LABEL_33:
  sub_1C87E44B0(v55, v56, v57);
LABEL_34:
  sub_1C87E4624();
  sub_1C87E4624();
LABEL_35:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DBE28()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v78 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79(v14);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6070, &qword_1C8BE6D20);
  OUTLINED_FUNCTION_21(v81);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_75(v18, v74);
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6078, &qword_1C8BE6D28);
  OUTLINED_FUNCTION_80(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_81();
  v87 = v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6080, &unk_1C8BE6D30);
  OUTLINED_FUNCTION_21(v84);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_210();
  v86 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(v32);
  v33 = OUTLINED_FUNCTION_7_2(v86);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_254();
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v74 - v38);
  v40 = *(v1 + 16);
  if (v40 == *(v0 + 16) && v40 && v1 != v0)
  {
    v76 = v3;
    v77 = v5;
    OUTLINED_FUNCTION_27_2(v37);
    v42 = v1 + v41;
    v43 = v0 + v41;
    v79 = *(v44 + 72);
    v83 = v19;
    while (1)
    {
      OUTLINED_FUNCTION_184();
      sub_1C87E45D0();
      sub_1C87E45D0();
      v45 = *v39 == *v2 && v39[1] == v2[1];
      if (!v45 && (sub_1C8BD529C() & 1) == 0)
      {
        break;
      }

      v46 = *(v86 + 24);
      OUTLINED_FUNCTION_294();
      sub_1C8786744(v39 + v46, v3, &qword_1EC2B6078, &qword_1C8BE6D28);
      sub_1C8786744(v2 + v46, v3 + v0, &qword_1EC2B6078, &qword_1C8BE6D28);
      v47 = v83;
      OUTLINED_FUNCTION_76(v3, 1, v83);
      if (v45)
      {
        OUTLINED_FUNCTION_76(v3 + v0, 1, v47);
        if (!v45)
        {
          goto LABEL_29;
        }

        sub_1C8778ED8(v3, &qword_1EC2B6078, &qword_1C8BE6D28);
      }

      else
      {
        sub_1C8786744(v3, v87, &qword_1EC2B6078, &qword_1C8BE6D28);
        OUTLINED_FUNCTION_76(v3 + v0, 1, v47);
        if (v48)
        {
          sub_1C87E4624();
LABEL_29:
          v72 = &qword_1EC2B6080;
          v73 = &unk_1C8BE6D30;
          goto LABEL_33;
        }

        v49 = v82;
        sub_1C87E4518();
        v50 = *(v81 + 48);
        v51 = v85;
        sub_1C8786744(v87, v85, &qword_1EC2B6068, &qword_1C8BFAC00);
        OUTLINED_FUNCTION_272(v49, v51 + v50);
        v52 = OUTLINED_FUNCTION_109();
        v53 = v77;
        OUTLINED_FUNCTION_76(v52, v54, v77);
        if (v45)
        {
          v55 = OUTLINED_FUNCTION_235_0();
          OUTLINED_FUNCTION_76(v55, 1, v53);
          v3 = v76;
          if (!v45)
          {
            goto LABEL_31;
          }

          sub_1C8778ED8(v85, &qword_1EC2B6068, &qword_1C8BFAC00);
        }

        else
        {
          v56 = v85;
          OUTLINED_FUNCTION_272(v85, v80);
          OUTLINED_FUNCTION_76(v56 + v50, 1, v53);
          if (v57)
          {
            OUTLINED_FUNCTION_164_0();
            sub_1C87E4624();
            v3 = v76;
LABEL_31:
            sub_1C8778ED8(v85, &qword_1EC2B6070, &qword_1C8BE6D20);
LABEL_32:
            OUTLINED_FUNCTION_163();
            sub_1C87E4624();
            sub_1C87E4624();
            v72 = &qword_1EC2B6078;
            v73 = &qword_1C8BE6D28;
LABEL_33:
            sub_1C8778ED8(v3, v72, v73);
            break;
          }

          OUTLINED_FUNCTION_165();
          OUTLINED_FUNCTION_235_0();
          v50 = v58;
          v59 = v80;
          v60 = v78;
          sub_1C87E4518();
          static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind.== infix(_:_:)(v59, v60, v61, v62, v63, v64, v65, v66, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
          HIDWORD(v75) = v67;
          sub_1C87E4624();
          OUTLINED_FUNCTION_239();
          sub_1C87E4624();
          sub_1C8778ED8(v50, &qword_1EC2B6068, &qword_1C8BFAC00);
          v3 = v76;
          if ((v75 & 0x100000000) == 0)
          {
            goto LABEL_32;
          }
        }

        v68 = *(v83 + 20);
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v69);
        sub_1C8BD517C();
        OUTLINED_FUNCTION_129_0();
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v3, &qword_1EC2B6078, &qword_1C8BE6D28);
        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      v70 = *(v86 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v71);
      v0 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_270();
      sub_1C87E4624();
      if (v0)
      {
        v43 += v79;
        v42 += v79;
        if (--v40)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_196_0();
    sub_1C87E4624();
  }

LABEL_35:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87DC4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_189_0();
            }
          }

          else if (v5 != 2)
          {
            return OUTLINED_FUNCTION_189_0();
          }
        }

        else if (v5)
        {
          return OUTLINED_FUNCTION_189_0();
        }
      }

      else if (v5 != v7)
      {
        return OUTLINED_FUNCTION_189_0();
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_188();
}

unint64_t sub_1C87DC5A8()
{
  result = qword_1EC2B5EF8;
  if (!qword_1EC2B5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5EF8);
  }

  return result;
}

unint64_t sub_1C87DC600()
{
  result = qword_1EC2B5F00;
  if (!qword_1EC2B5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5F00);
  }

  return result;
}

unint64_t sub_1C87DC658()
{
  result = qword_1EC2B5F08;
  if (!qword_1EC2B5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5F08);
  }

  return result;
}

unint64_t sub_1C87DC6B0()
{
  result = qword_1EC2B5F10;
  if (!qword_1EC2B5F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B5F18, &qword_1C8BE69B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5F10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1C87DC8A4()
{
  sub_1C87DCA00(319, &qword_1EC2B5F38, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C87DCA00(319, &qword_1EC2B5F40, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C87DCA00(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C87DCA64();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C87DCA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C87DCA64()
{
  if (!qword_1EC2B5F48)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B5F48);
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1C87DCC18()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(v3);
  v5 = OUTLINED_FUNCTION_7_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  if (v23 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14(v9);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_44_0(v4[5]);
      if (v11)
      {
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v12)
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_44_0(v4[6]);
      if (v16)
      {
        if (!v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (*v14 != *v15)
        {
          LOBYTE(v13) = 1;
        }

        if (v13)
        {
LABEL_30:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      v17 = v4[7];
      OUTLINED_FUNCTION_23_1();
      if (v20)
      {
        if (!v18)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_35(v19);
        v23 = v23 && v21 == v22;
        if (!v23 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v18)
      {
        goto LABEL_30;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v24);
      v25 = OUTLINED_FUNCTION_93_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v25)
      {
        OUTLINED_FUNCTION_22();
        if (!v23)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87DCE78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_188();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C87DCECC()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(v3);
  v5 = OUTLINED_FUNCTION_7_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  if (v16 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14(v9);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      v10 = *(v4 + 20);
      OUTLINED_FUNCTION_23_1();
      if (v13)
      {
        if (!v11 || ((OUTLINED_FUNCTION_35(v12), v16) ? (v16 = v14 == v15) : (v16 = 0), !v16 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_24:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v11)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_248(*(v4 + 24));
      if (v18)
      {
        if (!v17)
        {
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_36();
        if (v19)
        {
          goto LABEL_24;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v20);
      v21 = OUTLINED_FUNCTION_93_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v21)
      {
        OUTLINED_FUNCTION_22();
        if (!v16)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DD204()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_62();
  v3 = type metadata accessor for Siri_Nlu_Internal_SubwordToken();
  v4 = OUTLINED_FUNCTION_7_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  if (v15 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14(v8);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      v9 = v3[5];
      OUTLINED_FUNCTION_23_1();
      if (v12)
      {
        if (!v10 || ((OUTLINED_FUNCTION_35(v11), v15) ? (v15 = v13 == v14) : (v15 = 0), !v15 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_28:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v10)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_44_0(v3[6]);
      if (v17)
      {
        if (!v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v18)
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_44_0(v3[7]);
      if (v20)
      {
        if (!v19)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v21)
        {
          goto LABEL_28;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v22);
      v23 = OUTLINED_FUNCTION_93_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v23)
      {
        OUTLINED_FUNCTION_22();
        if (!v15)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DD718()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  v5 = OUTLINED_FUNCTION_105(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_251_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_89();
  v10 = type metadata accessor for Siri_Nlu_External_UsoNode(v9);
  v11 = OUTLINED_FUNCTION_105(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_250();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_301_0();
  v15 = type metadata accessor for Siri_Nlu_External_SemVer();
  v16 = OUTLINED_FUNCTION_21(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v21 = (v20 - v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v102 = v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6140, &unk_1C8BE6DE0);
  OUTLINED_FUNCTION_21(v103);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_75(v30, v95);
  v31 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v32 = OUTLINED_FUNCTION_7_2(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_78_0();
  v36 = *(v3 + 16);
  OUTLINED_FUNCTION_256();
  if (v49 && v39 && v3 != v1)
  {
    v100 = v39;
    v101 = v37;
    v96 = v21;
    OUTLINED_FUNCTION_27_2(v38);
    v42 = v105;
    v98 = v15;
    v97 = *(v41 + 72);
    while (1)
    {
      v43 = v40;
      sub_1C87E45D0();
      v99 = v43;
      if (v43 == v100)
      {
        break;
      }

      sub_1C87E45D0();
      v44 = *(v101 + 40);
      v45 = *(v103 + 48);
      sub_1C8786744(v42 + v44, v104, &qword_1EC2B6138, &unk_1C8BE8D80);
      v46 = v106 + v44;
      v47 = &unk_1C8BE8D80;
      v48 = &qword_1EC2B6138;
      sub_1C8786744(v46, v104 + v45, &qword_1EC2B6138, &unk_1C8BE8D80);
      OUTLINED_FUNCTION_76(v104, 1, v15);
      if (v49)
      {
        OUTLINED_FUNCTION_76(v104 + v45, 1, v15);
        if (!v49)
        {
          goto LABEL_49;
        }

        sub_1C8778ED8(v104, &qword_1EC2B6138, &unk_1C8BE8D80);
      }

      else
      {
        sub_1C8786744(v104, v102, &qword_1EC2B6138, &unk_1C8BE8D80);
        OUTLINED_FUNCTION_76(v104 + v45, 1, v15);
        if (v49)
        {
          sub_1C87E4624();
LABEL_49:
          v93 = &qword_1EC2B6140;
          v94 = &unk_1C8BE6DE0;
          goto LABEL_50;
        }

        v47 = v96;
        sub_1C87E4518();
        OUTLINED_FUNCTION_197(v15[5]);
        if (v51)
        {
          if (!v50)
          {
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v52)
          {
            goto LABEL_47;
          }
        }

        OUTLINED_FUNCTION_197(v15[6]);
        if (v54)
        {
          if (!v53)
          {
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v55)
          {
            goto LABEL_47;
          }
        }

        OUTLINED_FUNCTION_197(v15[7]);
        if (v57)
        {
          if (!v56)
          {
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v58)
          {
LABEL_47:
            sub_1C87E4624();
            OUTLINED_FUNCTION_237();
            sub_1C87E4624();
            v93 = &qword_1EC2B6138;
            v94 = &unk_1C8BE8D80;
LABEL_50:
            sub_1C8778ED8(v104, v93, v94);
LABEL_51:
            sub_1C87E4624();
            OUTLINED_FUNCTION_182();
            sub_1C87E4624();
            goto LABEL_52;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v59);
        LOBYTE(v48) = sub_1C8BD517C();
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v104, &qword_1EC2B6138, &unk_1C8BE8D80);
        if ((v48 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      OUTLINED_FUNCTION_236(v106);
      OUTLINED_FUNCTION_246_0(v60);
      if (!v49)
      {
        goto LABEL_51;
      }

      if (v47 && v62 != v61)
      {
        OUTLINED_FUNCTION_39_0();
        LOBYTE(v48) = v63 + v64;
        v66 = v65 + v64;
        v68 = *(v67 + 72);
        do
        {
          OUTLINED_FUNCTION_136_0();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_136_0();
          sub_1C87E45D0();
          static Siri_Nlu_External_UsoNode.== infix(_:_:)();
          v70 = v69;
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          if ((v70 & 1) == 0)
          {
            goto LABEL_51;
          }

          v66 += v68;
          LOBYTE(v48) = v48 + v68;
        }

        while (--v47);
      }

      v71 = v105[1];
      v72 = v106[1];
      sub_1C87DF64C();
      if ((v73 & 1) == 0)
      {
        goto LABEL_51;
      }

      v74 = v105[2];
      OUTLINED_FUNCTION_246_0(v106[2]);
      if (!v49)
      {
        goto LABEL_51;
      }

      if (v47 && v76 != v75)
      {
        OUTLINED_FUNCTION_39_0();
        LOBYTE(v48) = v77 + v78;
        v80 = v79 + v78;
        v82 = *(v81 + 72);
        do
        {
          OUTLINED_FUNCTION_134();
          OUTLINED_FUNCTION_307();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_134();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_184();
          static Siri_Nlu_External_UsoEntityIdentifier.== infix(_:_:)();
          v84 = v83;
          sub_1C87E4624();
          OUTLINED_FUNCTION_106();
          sub_1C87E4624();
          if ((v84 & 1) == 0)
          {
            goto LABEL_51;
          }

          v80 += v82;
          LOBYTE(v48) = v48 + v82;
        }

        while (--v47);
      }

      v85 = v105[3];
      v86 = v106[3];
      sub_1C87DFAD8();
      if ((v87 & 1) == 0)
      {
        goto LABEL_51;
      }

      v88 = v105[4];
      v89 = v106[4];
      sub_1C87DFFBC();
      if ((v90 & 1) == 0)
      {
        goto LABEL_51;
      }

      v91 = *(v101 + 36);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v92);
      v42 = v105;
      sub_1C8BD517C();
      OUTLINED_FUNCTION_127();
      sub_1C87E4624();
      OUTLINED_FUNCTION_237();
      sub_1C87E4624();
      if (v48)
      {
        v15 = v98;
        v40 = v99 + 1;
        if (v99 + 1 != v100)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DDF24()
{
  OUTLINED_FUNCTION_124();
  v6 = OUTLINED_FUNCTION_249();
  v7 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v6);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v53 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_302();
  v14 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v13);
  v15 = OUTLINED_FUNCTION_7_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_2();
  v20 = *(v5 + 16);
  if (v20 == *(v0 + 16) && v20 && v5 != v0)
  {
    OUTLINED_FUNCTION_27_2(v19);
    v21 = 0;
    v50 = v14;
    v52 = v1;
    v49 = v20;
    v48 = *(v22 + 72);
    while (1)
    {
      sub_1C87E45D0();
      if (v21 == v20)
      {
        break;
      }

      OUTLINED_FUNCTION_330();
      v23 = *(v14 + 24);
      v24 = *(v1 + v23 + 8);
      v51 = v21;
      if (*(v4 + v23 + 8))
      {
        if (!v24 || ((OUTLINED_FUNCTION_35((v4 + v23)), v27) ? (v27 = v25 == v26) : (v27 = 0), !v27 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_45:
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          goto LABEL_46;
        }
      }

      else if (v24)
      {
        goto LABEL_45;
      }

      v28 = *v4;
      v29 = *v52;
      v30 = *(*v4 + 16);
      if (v30 != *(*v52 + 16))
      {
        goto LABEL_45;
      }

      if (v30 && v28 != v29)
      {
        v31 = 0;
        OUTLINED_FUNCTION_71(v53);
        while (v31 < *(v28 + 16))
        {
          v32 = *(v53 + 72) * v31;
          OUTLINED_FUNCTION_187();
          sub_1C87E45D0();
          if (v31 >= *(v29 + 16))
          {
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_187();
          OUTLINED_FUNCTION_235_0();
          sub_1C87E45D0();
          v33 = v7[5];
          v34 = *(v2 + v33 + 8);
          if (*(v3 + v33 + 8))
          {
            if (!v34 || ((OUTLINED_FUNCTION_35((v3 + v33)), v27) ? (v37 = v35 == v36) : (v37 = 0), !v37 && (sub_1C8BD529C() & 1) == 0))
            {
LABEL_44:
              OUTLINED_FUNCTION_186();
              sub_1C87E4624();
              OUTLINED_FUNCTION_118();
              sub_1C87E4624();
              goto LABEL_45;
            }
          }

          else if (v34)
          {
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_42(v7[6]);
          if (v39)
          {
            if (!v38)
            {
              goto LABEL_44;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v40)
            {
              goto LABEL_44;
            }
          }

          OUTLINED_FUNCTION_42(v7[7]);
          if (v42)
          {
            if (!v41)
            {
              goto LABEL_44;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v43)
            {
              goto LABEL_44;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v44);
          OUTLINED_FUNCTION_97();
          sub_1C8BD517C();
          OUTLINED_FUNCTION_128();
          sub_1C87E4624();
          OUTLINED_FUNCTION_298();
          sub_1C87E4624();
          if ((v32 & 1) == 0)
          {
            goto LABEL_45;
          }

          if (v30 == ++v31)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

LABEL_40:
      v14 = v50;
      v45 = *(v50 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v46);
      v1 = v52;
      v47 = sub_1C8BD517C();
      sub_1C87E4624();
      sub_1C87E4624();
      if (v47)
      {
        v21 = v51 + 1;
        v20 = v49;
        if (v51 + 1 != v49)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DE35C()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v3);
  v5 = OUTLINED_FUNCTION_7_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  if (v16 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14(v9);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      v10 = v4[5];
      OUTLINED_FUNCTION_23_1();
      if (v13)
      {
        if (!v11 || ((OUTLINED_FUNCTION_35(v12), v16) ? (v16 = v14 == v15) : (v16 = 0), !v16 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_28:
          OUTLINED_FUNCTION_186();
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v11)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_44_0(v4[6]);
      if (v18)
      {
        if (!v17)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v19)
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_44_0(v4[7]);
      if (v21)
      {
        if (!v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v22)
        {
          goto LABEL_28;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v23);
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_128();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v0)
      {
        OUTLINED_FUNCTION_22();
        if (!v16)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}