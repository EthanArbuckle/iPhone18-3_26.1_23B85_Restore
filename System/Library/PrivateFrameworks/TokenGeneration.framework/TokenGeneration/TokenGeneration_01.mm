uint64_t sub_1AB839A14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for PromptTemplateInfoEnvelope(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AB839B74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8] + 80);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1AB839D4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 80) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[12];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1AB839F24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PromptVariantEnvelope(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1AB83A0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for XPCDictionary();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for PromptVariantEnvelope(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1AB83A234(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1AB83A398(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for PromptTemplateInfoEnvelope(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AB83A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB83A5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCDictionary();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB83A6CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB83A788(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83A89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AB83A98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AB83AB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AB83AB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AB83AC14(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB83ACC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB83AE88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB83AF44(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB83B000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83B188()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB83B1C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB83B200()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7] >= 3uLL)
  {
  }

  outlined consume of Data._Representation(v0[8], v0[9]);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB83B25C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];
  if (v6 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[12], v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AB83B2CC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB83B314()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB83B400(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB83B4BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83B5D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1AB83B618()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB83B658()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB83B854()
{
  v1 = type metadata accessor for PromptVariant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB83B920()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB83B970(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for GenerationSchema();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB83BA1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationSchema();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83BB08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMd, &_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMR);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB83BB7C()
{
  v1 = type metadata accessor for CompletePromptRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for XPCDictionary();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + v1[5]);
  v8 = v7[1];

  v9 = v7[2];

  v10 = v7[3];

  v11 = v1[6];
  type metadata accessor for PromptVariantEnvelope(0);
  v12 = type metadata accessor for OverridableConfigurationStorage();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v0 + v3 + v1[7];
  v14 = *(v13 + 80);

  v15 = *(v13 + 144);

  v16 = v0 + v3 + v1[8];
  v17 = type metadata accessor for Constraints(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v35 = type metadata accessor for GenerationSchema();
        (*(*(v35 - 8) + 8))(v16, v35);
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_10;
    }

    v19 = *(v16 + 8);
  }

LABEL_10:
  v20 = *(v5 + v1[9]);

  if (*(v5 + v1[10] + 8) >= 4uLL)
  {
  }

  v21 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v5 + v1[11]);

  v26 = (v5 + v1[12]);
  v27 = v26[1];

  v28 = v26[3];

  v29 = v26[5];

  v30 = v26[6];

  v31 = *(v0 + v21);

  v32 = *(v0 + v22 + 8);

  v33 = *(v0 + v23);

  v34 = *(v0 + v24);

  return MEMORY[0x1EEE6BDD0](v0, v24 + 8, v2 | 7);
}

uint64_t sub_1AB83BE4C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB83BE8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB83BECC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB83BF24()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB83BF5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB83BF94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMd, &_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMR);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB83C00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB83C084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

BOOL sub_1AB83C118(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _LoadedUseCaseConfigurations.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t sub_1AB83C160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB83C228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_PromptComponentPrivacy._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_PromptComponentPrivacy._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PUBLIC";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PRIVATE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SENSITIVE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageEmbeddingEncoding._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageEmbeddingEncoding._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UINT8";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FLOAT16";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_PromptRequestV1PromptVariant._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_PromptRequestV1PromptVariant._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chat";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_CompletionPromptV1._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_CompletionPromptV1._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "variableBindings";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ChatPromptV1._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ChatPromptV1._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "messages";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chatMessagesPromptBindings";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "variableBindings";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ChatMessagePromptV1._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ChatMessagePromptV1._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rolePrompt";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "locale";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_PromptComponent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_PromptComponent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "priority";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "privacy";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_PromptComponentValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_PromptComponentValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1ABA1D8A0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "prompt";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "string";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "double";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "date";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "specialToken";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "bindableVariable";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "customData";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "toolResults";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "toolCalls";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "imageData";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "imageSurface";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "imageEmbeddingData";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "prompts";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "preprocessedImageData";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "attachmentPlaceholder";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "selfAttention";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageEmbeddingData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageEmbeddingData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encoding";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tokenCount";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "signature";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_PreprocessedImageData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_PreprocessedImageData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shape";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "format";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageSurface._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageSurface._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1ABA1D8D0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "pixelData";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "width";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "height";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bytesPerRow";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "pixelFormat";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "xpcDataIdentifier";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageFormat._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageFormat._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "png";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "jpg";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_CustomData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_CustomData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_PromptComponentCustomData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_PromptComponentCustomData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_SpecialToken._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_SpecialToken._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "overestimatedTokenCount";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "instance";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ToolResult._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ToolResult._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "output";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ToolCall._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ToolCall._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ToolCallFunction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ToolCallFunction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arguments";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ToolDefinitionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ToolDefinitionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "function";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "browser";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "imageGenerator";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "imageGenerationTool";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "fileGenerationTool";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ToolDefinitionFunction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ToolDefinitionFunction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "parameters";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_GenerationSchema._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_GenerationSchema._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1ABA1D8F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "BOOLean";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "integer";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "number";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "string";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "object";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dictionary";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "oneOf";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "hardcoded";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "recursiveSchema";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_GenerationSchemaString._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_GenerationSchemaString._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "enumerator";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "constraints";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_GenerationSchemaField._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_GenerationSchemaField._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "required";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_GenerationSchemaChoice._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_GenerationSchemaChoice._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "schema";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_RecursiveSchemaKindObject._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_RecursiveSchemaKindObject._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fields";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_RecursiveSchemaKindAnyOf._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_RecursiveSchemaKindAnyOf._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "schemas";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_RecursiveSchemaField._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_RecursiveSchemaField._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isOptional";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "schema";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_StringConstraintStartsWith._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_StringConstraintStartsWith._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "oneOf";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "butNot";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchema._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchema._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1ABA1D900;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "string";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOLean";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "integer";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "constant";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "anyOf";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dictionary";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "array";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "object";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "reference";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "null";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaInteger._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaInteger._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minimum";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "maximum";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaNumber._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaNumber._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minimum";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "maximum";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D910;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "string";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "BOOLean";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "integer";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "number";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "array";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "object";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "null";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaString._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaString._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enum";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pattern";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaObject._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaObject._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABA1D920;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "description";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "properties";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "definitions";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "order";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "requiredProperties";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "additionalProperties";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaProperty._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaProperty._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "schema";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isOptional";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "isNullable";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaArray._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaArray._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "definitions";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "items";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "minItems";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "maxItems";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaDictionary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaDictionary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "definitions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "additionalProperties";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaAnyOf._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaAnyOf._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "definitions";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "anyOf";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaConstant._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaConstant._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "const";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaReference._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_JSONSchemaReference._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationParameters._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationParameters._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shape";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "detail";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "count";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "modelName";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationSize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationSize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inferred";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "small";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "medium";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "large";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "extraLarge";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationShape._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationShape._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inferred";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "square";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tall";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wide";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationDetail._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationDetail._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "low";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "medium";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "high";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inferred";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationCount._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ImageGenerationCount._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "count";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inferred";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_DocumentIdentifier._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_DocumentIdentifier._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ResponseFormatKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ResponseFormatKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "schema";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "grammar";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ResponseFormatSchemaDetails._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ResponseFormatSchemaDetails._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "schema";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ResponseFormatGrammarDetails._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ResponseFormatGrammarDetails._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D880;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "grammar";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ChatMessageRolePrompt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ChatMessageRolePrompt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1ABA1D8E0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "system";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v16 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v16 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "assistant";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v16 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tool";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v16 + v3 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "custom";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Promptkit_Wireformat_ChatMessageRolePromptSystem._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Promptkit_Wireformat_ChatMessageRolePromptSystem._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABA1D8B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "toolDefinitions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "modalities";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "voice";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shouldPrependDefaultSystemInstruction";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Promptkit_Wireformat_PromptComponentPrivacy@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Promptkit_Wireformat_ImageEmbeddingEncoding@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_VersionedPromptRequest._protobuf_nameMap, 1, "version1", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_PromptRequestV1._protobuf_nameMap, 1, "prompt", 6);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_VersionedCompletionPrompt._protobuf_nameMap, 1, "version1", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_VersionedChatPrompt._protobuf_nameMap, 1, "version1", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_VersionedChatMessagePrompt._protobuf_nameMap, 1, "version1", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_Prompt._protobuf_nameMap, 1, "components", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_Prompts._protobuf_nameMap, 1, "prompts", 7);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_BindableVariable._protobuf_nameMap, 1, "name", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_AttachmentPlaceholder._protobuf_nameMap, 1, "placeholderID", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ToolResults._protobuf_nameMap, 1, "toolResults", 11);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ToolResultContent._protobuf_nameMap, 1, "text", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ToolResultText._protobuf_nameMap, 1, "value", 5);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ToolCalls._protobuf_nameMap, 1, "toolCalls", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ToolCallContent._protobuf_nameMap, 1, "function", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ToolDefinition._protobuf_nameMap, 3, "type", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_GenerationSchemaObject._protobuf_nameMap, 1, "fields", 6);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_GenerationSchemaOneOf._protobuf_nameMap, 1, "choices", 7);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_RecursiveSchema._protobuf_nameMap, 1, "jsonSchema", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_StringConstraint._protobuf_nameMap, 1, "startsWith", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_JSONSchemaBoolean._protobuf_nameMap, 1, "description", 11);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_JSONSchemaNull._protobuf_nameMap, 1, "description", 11);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_FileGenerationParameters._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ResponseFormat._protobuf_nameMap, 1, "kind", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_Schema._protobuf_nameMap, 1, "type", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_Modality._protobuf_nameMap, 1, "type", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_Voice._protobuf_nameMap, 1, "name", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ChatMessageRolePromptUser._protobuf_nameMap, 1, "responseFormat", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ChatMessageRolePromptAssistant._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ChatMessageRolePromptTool._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_ChatMessageRolePromptCustom._protobuf_nameMap, 1, "roleName", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Promptkit_Wireformat_SelfAttention._protobuf_nameMap, 1, "text", 4);
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedPromptRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1 and conformance Promptkit_Wireformat_PromptRequestV1, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMd, &_s15TokenGeneration36Promptkit_Wireformat_PromptRequestV1VSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedPromptRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1 and conformance Promptkit_Wireformat_PromptRequestV1, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedPromptRequest and conformance Promptkit_Wireformat_VersionedPromptRequest, type metadata accessor for Promptkit_Wireformat_VersionedPromptRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedPromptRequest and conformance Promptkit_Wireformat_VersionedPromptRequest, type metadata accessor for Promptkit_Wireformat_VersionedPromptRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_VersionedPromptRequest()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedPromptRequest and conformance Promptkit_Wireformat_VersionedPromptRequest, type metadata accessor for Promptkit_Wireformat_VersionedPromptRequest);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_VersionedPromptRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_PromptRequestV1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1PromptVariant and conformance Promptkit_Wireformat_PromptRequestV1PromptVariant, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_PromptRequestV1(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1 and conformance Promptkit_Wireformat_PromptRequestV1, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_PromptRequestV1(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1 and conformance Promptkit_Wireformat_PromptRequestV1, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptRequestV1()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1 and conformance Promptkit_Wireformat_PromptRequestV1, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_PromptRequestV1PromptVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_VariantEnum);
      v33 = v48;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedCompletionPrompt and conformance Promptkit_Wireformat_VersionedCompletionPrompt, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_VersionedCompletionPromptVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_PromptRequestV1PromptVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_VariantEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatPrompt and conformance Promptkit_Wireformat_VersionedChatPrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_VersionedChatPromptVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Promptkit_Wireformat_PromptRequestV1PromptVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v15 - v10, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v12 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Promptkit_Wireformat_PromptRequestV1PromptVariant.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Promptkit_Wireformat_PromptRequestV1PromptVariant.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_PromptRequestV1PromptVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedCompletionPrompt and conformance Promptkit_Wireformat_VersionedCompletionPrompt, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_PromptRequestV1PromptVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatPrompt and conformance Promptkit_Wireformat_VersionedChatPrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_PromptRequestV1PromptVariant(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1PromptVariant and conformance Promptkit_Wireformat_PromptRequestV1PromptVariant, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_PromptRequestV1PromptVariant(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1PromptVariant and conformance Promptkit_Wireformat_PromptRequestV1PromptVariant, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptRequestV1PromptVariant()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptRequestV1PromptVariant and conformance Promptkit_Wireformat_PromptRequestV1PromptVariant, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_VersionedPromptRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedCompletionPrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CompletionPromptV1 and conformance Promptkit_Wireformat_CompletionPromptV1, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMd, &_s15TokenGeneration39Promptkit_Wireformat_CompletionPromptV1VSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedCompletionPrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CompletionPromptV1 and conformance Promptkit_Wireformat_CompletionPromptV1, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_VersionedCompletionPrompt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedCompletionPrompt and conformance Promptkit_Wireformat_VersionedCompletionPrompt, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_VersionedCompletionPrompt(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedCompletionPrompt and conformance Promptkit_Wireformat_VersionedCompletionPrompt, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_VersionedCompletionPrompt()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedCompletionPrompt and conformance Promptkit_Wireformat_VersionedCompletionPrompt, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_CompletionPromptV1.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0) + 20);
  type metadata accessor for Promptkit_Wireformat_Prompt(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Promptkit_Wireformat_CompletionPromptV1.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t Promptkit_Wireformat_CompletionPromptV1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Promptkit_Wireformat_CompletionPromptV1.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_CompletionPromptV1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_Prompt);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_Prompt);
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_CompletionPromptV1@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_CompletionPromptV1(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_CompletionPromptV1(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CompletionPromptV1 and conformance Promptkit_Wireformat_CompletionPromptV1, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_CompletionPromptV1(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CompletionPromptV1 and conformance Promptkit_Wireformat_CompletionPromptV1, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_CompletionPromptV1()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CompletionPromptV1 and conformance Promptkit_Wireformat_CompletionPromptV1, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedChatPrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedChatPrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatPrompt and conformance Promptkit_Wireformat_VersionedChatPrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatPrompt and conformance Promptkit_Wireformat_VersionedChatPrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_VersionedChatPrompt()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatPrompt and conformance Promptkit_Wireformat_VersionedChatPrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ChatPromptV1.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in Promptkit_Wireformat_ChatPromptV1.decodeMessage<A>(decoder:)();
          break;
        case 2:
          closure #2 in Promptkit_Wireformat_ChatPromptV1.decodeMessage<A>(decoder:)();
          break;
        case 1:
          type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatMessagePrompt and conformance Promptkit_Wireformat_VersionedChatMessagePrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ChatPromptV1.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t closure #3 in Promptkit_Wireformat_ChatPromptV1.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t Promptkit_Wireformat_ChatPromptV1.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatMessagePrompt and conformance Promptkit_Wireformat_VersionedChatMessagePrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for ProtobufString();
    type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    v4 = v2;
    result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[2] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
  {
    v5 = v0 + *(type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ChatPromptV1@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt0g5Tf4g_n(v4);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt0g5Tf4g_n(v4);
  a2[2] = result;
  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_ChatPromptV1(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatPromptV1(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatPromptV1(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatPromptV1()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatPromptV1 and conformance Promptkit_Wireformat_ChatPromptV1, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedChatMessagePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessagePromptV1 and conformance Promptkit_Wireformat_ChatMessagePromptV1, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessagePromptV1VSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_VersionedChatMessagePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessagePromptV1 and conformance Promptkit_Wireformat_ChatMessagePromptV1, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_VersionedChatMessagePrompt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatMessagePrompt and conformance Promptkit_Wireformat_VersionedChatMessagePrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_VersionedChatMessagePrompt(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatMessagePrompt and conformance Promptkit_Wireformat_VersionedChatMessagePrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_VersionedChatMessagePrompt()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_VersionedChatMessagePrompt and conformance Promptkit_Wireformat_VersionedChatMessagePrompt, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ChatMessagePromptV1.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0) + 24);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          closure #2 in Promptkit_Wireformat_ChatMessagePromptV1.decodeMessage<A>(decoder:)();
          break;
        case 1:
          type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ChatMessagePromptV1.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0) + 20);
  type metadata accessor for Promptkit_Wireformat_Prompt(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessagePromptV1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
}

uint64_t closure #2 in Promptkit_Wireformat_ChatMessagePromptV1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_Prompt);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_Prompt);
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessagePromptV1.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ChatMessagePromptV1@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessagePromptV1(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessagePromptV1 and conformance Promptkit_Wireformat_ChatMessagePromptV1, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessagePromptV1(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessagePromptV1 and conformance Promptkit_Wireformat_ChatMessagePromptV1, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessagePromptV1()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessagePromptV1 and conformance Promptkit_Wireformat_ChatMessagePromptV1, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_Prompt.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Promptkit_Wireformat_PromptComponent(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponent and conformance Promptkit_Wireformat_PromptComponent, type metadata accessor for Promptkit_Wireformat_PromptComponent), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_Prompt(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Prompt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Prompt(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Prompt()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PromptComponent.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in Promptkit_Wireformat_PromptComponent.decodeMessage<A>(decoder:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Promptkit_Wireformat_PromptComponent(0) + 20);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 1:
          type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_PromptComponent.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_PromptComponent(0) + 24);
  lazy protocol witness table accessor for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ChatMessagePromptV1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    a6(v7, a1, a2, a3);
    v16 = v7 + *(a7(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_PromptComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
}

uint64_t closure #2 in Promptkit_Wireformat_PromptComponent.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_PromptComponent.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  if (*(a1 + *(result + 24)) != 3)
  {
    v3 = *(a1 + *(result + 24));
    lazy protocol witness table accessor for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_PromptComponent@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 3;
  v7 = a2 + a1[7];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_PromptComponent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponent and conformance Promptkit_Wireformat_PromptComponent, type metadata accessor for Promptkit_Wireformat_PromptComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_PromptComponent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponent and conformance Promptkit_Wireformat_PromptComponent, type metadata accessor for Promptkit_Wireformat_PromptComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptComponent()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponent and conformance Promptkit_Wireformat_PromptComponent, type metadata accessor for Promptkit_Wireformat_PromptComponent);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(a1, v5);
        break;
      case 3:
        closure #3 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(a1, v5);
        break;
      case 4:
        closure #4 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(a1, v5);
        break;
      case 5:
        closure #5 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 6:
        closure #6 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 7:
        closure #7 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 8:
        closure #8 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 9:
        closure #9 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 10:
        closure #10 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 11:
        closure #11 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 12:
        closure #12 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 13:
        closure #13 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 14:
        closure #14 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 15:
        closure #15 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 16:
        closure #16 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 17:
        closure #17 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      v35 = v43;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v43, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_Prompt);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v44, type metadata accessor for Promptkit_Wireformat_Prompt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_Prompt);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, v7, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v9 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    if (v11 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v12 = v17;
    *a2 = v14;
    a2[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, _DWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 1;
  result = dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  if (!v2 && (v16 & 1) == 0)
  {
    v14 = 0;
    HIDWORD(v13) = v15;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, v7, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v9 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    if (v11 != 1)
    {
      v12 = v14;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v12)
      {
        return result;
      }

      v14 = 0;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    *a2 = HIDWORD(v13);
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 1;
  result = dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  if (!v2 && (v17 & 1) == 0)
  {
    v15 = 0;
    v9 = v16;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, v7, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v10 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    if (v12 != 1)
    {
      v13 = v15;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v50 = a1;
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v42 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v38 - v26;
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = v4;
  v28(&v38 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v50, v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v39 = v15;
  v40 = (*(v15 + 48))(v13, 1, v14);
  if (v40 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      v29 = *(v44 + 32);
      v30 = v41;
      v31 = v46;
      v29(v41, v19, v46);
      v29(v27, v30, v31);
      v28(v27, 0, 1, v31);
      goto LABEL_7;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v19, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  }

  v31 = v46;
LABEL_7:
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x1E69AA900]);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  v34 = v42;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v42, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v35 = v44;
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  else
  {
    v36 = *(v35 + 32);
    v36(v43, v34, v31);
    if (v40 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    v37 = v50;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v50, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v36(v37, v43, v31);
    swift_storeEnumTagMultiPayload();
    return (*(v39 + 56))(v37, 0, 1, v14);
  }
}

uint64_t closure #6 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_SpecialToken(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_SpecialToken);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_SpecialToken);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SpecialToken and conformance Promptkit_Wireformat_SpecialToken, type metadata accessor for Promptkit_Wireformat_SpecialToken);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_SpecialToken);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMd, &_s15TokenGeneration028Promptkit_Wireformat_SpecialA0VSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_SpecialToken);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #7 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_BindableVariable(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_BindableVariable);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_BindableVariable);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_BindableVariable and conformance Promptkit_Wireformat_BindableVariable, type metadata accessor for Promptkit_Wireformat_BindableVariable);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_BindableVariable);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_BindableVariableVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_BindableVariable);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #8 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_CustomData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_CustomData);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_CustomData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CustomData and conformance Promptkit_Wireformat_CustomData, type metadata accessor for Promptkit_Wireformat_CustomData);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_CustomData);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_CustomDataVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_CustomData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #9 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ToolResults(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ToolResults);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ToolResults);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResults and conformance Promptkit_Wireformat_ToolResults, type metadata accessor for Promptkit_Wireformat_ToolResults);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ToolResults);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ToolResultsVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ToolResults);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #10 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ToolCalls(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ToolCalls);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ToolCalls);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCalls and conformance Promptkit_Wireformat_ToolCalls, type metadata accessor for Promptkit_Wireformat_ToolCalls);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ToolCalls);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ToolCallsVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ToolCalls);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #11 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ImageData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ImageData);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ImageData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageData and conformance Promptkit_Wireformat_ImageData, type metadata accessor for Promptkit_Wireformat_ImageData);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ImageData);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ImageDataVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ImageData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #12 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ImageSurface(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ImageSurface);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ImageSurface);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageSurface and conformance Promptkit_Wireformat_ImageSurface, type metadata accessor for Promptkit_Wireformat_ImageSurface);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ImageSurface);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMd, &_s15TokenGeneration33Promptkit_Wireformat_ImageSurfaceVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ImageSurface);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #13 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingData and conformance Promptkit_Wireformat_ImageEmbeddingData, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ImageEmbeddingDataVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #14 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_Prompts(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_Prompts);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_Prompts);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompts and conformance Promptkit_Wireformat_Prompts, type metadata accessor for Promptkit_Wireformat_Prompts);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_Prompts);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMd, &_s15TokenGeneration28Promptkit_Wireformat_PromptsVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_Prompts);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #15 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PreprocessedImageData and conformance Promptkit_Wireformat_PreprocessedImageData, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_PreprocessedImageDataVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #16 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_AttachmentPlaceholder and conformance Promptkit_Wireformat_AttachmentPlaceholder, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #17 in Promptkit_Wireformat_PromptComponentValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_SelfAttention(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_SelfAttention);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_SelfAttention);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_SelfAttention);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMd, &_s15TokenGeneration34Promptkit_Wireformat_SelfAttentionVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_SelfAttention);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v15 - v10, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v12 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
        result = closure #2 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        result = closure #3 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        result = closure #4 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        closure #5 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        goto LABEL_33;
      case 5u:
        closure #6 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        goto LABEL_33;
      case 6u:
        closure #7 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        goto LABEL_33;
      case 7u:
        closure #8 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        goto LABEL_33;
      case 8u:
        closure #9 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        goto LABEL_33;
      case 9u:
        closure #10 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0xAu:
        closure #11 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0xBu:
        closure #12 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0xCu:
        closure #13 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0xDu:
        closure #14 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0xEu:
        closure #15 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0xFu:
        closure #16 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      case 0x10u:
        closure #17 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (v4)
        {
          return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
        }

LABEL_9:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
        break;
      default:
        closure #1 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(v3, a1, a2, a3);
LABEL_33:
        result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v13 = v3 + *(type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_Prompt);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Prompt);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v10 - v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v10 - v4, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v5;
    v8 = v5[1];
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v9 - v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v9 - v4, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v9 - v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v9 - v4, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v14 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v10 + 32))(v13, v8, v9);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x1E69AA900]);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return (*(v10 + 8))(v13, v9);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #6 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_SpecialToken(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_SpecialToken);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SpecialToken and conformance Promptkit_Wireformat_SpecialToken, type metadata accessor for Promptkit_Wireformat_SpecialToken);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_SpecialToken);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #7 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_BindableVariable(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_BindableVariable);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_BindableVariable and conformance Promptkit_Wireformat_BindableVariable, type metadata accessor for Promptkit_Wireformat_BindableVariable);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_BindableVariable);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #8 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_CustomData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_CustomData);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CustomData and conformance Promptkit_Wireformat_CustomData, type metadata accessor for Promptkit_Wireformat_CustomData);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_CustomData);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #9 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolResults(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ToolResults);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResults and conformance Promptkit_Wireformat_ToolResults, type metadata accessor for Promptkit_Wireformat_ToolResults);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolResults);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #10 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolCalls(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ToolCalls);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCalls and conformance Promptkit_Wireformat_ToolCalls, type metadata accessor for Promptkit_Wireformat_ToolCalls);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolCalls);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #11 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ImageData);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageData and conformance Promptkit_Wireformat_ImageData, type metadata accessor for Promptkit_Wireformat_ImageData);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageData);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #12 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageSurface(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ImageSurface);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageSurface and conformance Promptkit_Wireformat_ImageSurface, type metadata accessor for Promptkit_Wireformat_ImageSurface);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageSurface);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #13 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingData and conformance Promptkit_Wireformat_ImageEmbeddingData, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #14 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Prompts(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_Prompts);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompts and conformance Promptkit_Wireformat_Prompts, type metadata accessor for Promptkit_Wireformat_Prompts);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Prompts);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #15 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PreprocessedImageData and conformance Promptkit_Wireformat_PreprocessedImageData, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #16 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_AttachmentPlaceholder and conformance Promptkit_Wireformat_AttachmentPlaceholder, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t closure #17 in Promptkit_Wireformat_PromptComponentValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_SelfAttention(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_SelfAttention);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_SelfAttention);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_PromptComponentValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_PromptComponentValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptComponentValue()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentValue and conformance Promptkit_Wireformat_PromptComponentValue, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_Prompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_Prompts.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Promptkit_Wireformat_Prompt(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_Prompts(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Prompts(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompts and conformance Promptkit_Wireformat_Prompts, type metadata accessor for Promptkit_Wireformat_Prompts);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Prompts(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompts and conformance Promptkit_Wireformat_Prompts, type metadata accessor for Promptkit_Wireformat_Prompts);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Prompts()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompts and conformance Promptkit_Wireformat_Prompts, type metadata accessor for Promptkit_Wireformat_Prompts);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_Prompt(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_ImageEmbeddingData.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

_BYTE *Promptkit_Wireformat_ImageEmbeddingData.traverse<A>(visitor:)()
{
  result = closure #1 in Promptkit_Wireformat_ImageEmbeddingData.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    closure #2 in Promptkit_Wireformat_ImageEmbeddingData.traverse<A>(visitor:)(v0);
    if ((*(v0 + 28) & 1) == 0)
    {
      v3 = *(v0 + 24);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v0 + 40))
    {
      v4 = *(v0 + 32);
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v5 = v0 + *(type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0) + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

_BYTE *closure #1 in Promptkit_Wireformat_ImageEmbeddingData.traverse<A>(visitor:)(_BYTE *result)
{
  if (*result != 2)
  {
    lazy protocol witness table accessor for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageEmbeddingData.traverse<A>(visitor:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 8);
    outlined copy of Data._Representation(v2, v1);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v2, v1);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageEmbeddingData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = xmmword_1ABA1D8C0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_ImageEmbeddingData(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageEmbeddingData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingData and conformance Promptkit_Wireformat_ImageEmbeddingData, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageEmbeddingData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingData and conformance Promptkit_Wireformat_ImageEmbeddingData, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageEmbeddingData()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingData and conformance Promptkit_Wireformat_ImageEmbeddingData, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_PreprocessedImageData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PreprocessedImageData and conformance Promptkit_Wireformat_PreprocessedImageData, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_PreprocessedImageData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PreprocessedImageData and conformance Promptkit_Wireformat_PreprocessedImageData, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PreprocessedImageData()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PreprocessedImageData and conformance Promptkit_Wireformat_PreprocessedImageData, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageData.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Promptkit_Wireformat_ImageFormat(0);
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormat and conformance Promptkit_Wireformat_ImageFormat, type metadata accessor for Promptkit_Wireformat_ImageFormat);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Promptkit_Wireformat_ImageData(0) + 20);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_ImageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Promptkit_Wireformat_ImageData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Promptkit_Wireformat_ImageData.traverse<A>(visitor:)(v3);
    v6 = v3 + *(type metadata accessor for Promptkit_Wireformat_ImageData(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageFormat(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ImageFormat);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormat and conformance Promptkit_Wireformat_ImageFormat, type metadata accessor for Promptkit_Wireformat_ImageFormat);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ImageFormat);
}

uint64_t closure #2 in Promptkit_Wireformat_ImageData.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_ImageData(0);
  v3 = a1 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageFormat(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_1ABA1D8C0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageData and conformance Promptkit_Wireformat_ImageData, type metadata accessor for Promptkit_Wireformat_ImageData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageData and conformance Promptkit_Wireformat_ImageData, type metadata accessor for Promptkit_Wireformat_ImageData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageData()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageData and conformance Promptkit_Wireformat_ImageData, type metadata accessor for Promptkit_Wireformat_ImageData);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageSurface.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 6)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t *Promptkit_Wireformat_ImageSurface.traverse<A>(visitor:)()
{
  result = closure #1 in Promptkit_Wireformat_ImageSurface.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    if ((*(v0 + 20) & 1) == 0)
    {
      v3 = *(v0 + 16);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if ((*(v0 + 28) & 1) == 0)
    {
      v4 = *(v0 + 24);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if ((*(v0 + 36) & 1) == 0)
    {
      v5 = *(v0 + 32);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if ((*(v0 + 44) & 1) == 0)
    {
      v6 = *(v0 + 40);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v0 + 56))
    {
      v7 = *(v0 + 48);
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v8 = v0 + *(type metadata accessor for Promptkit_Wireformat_ImageSurface(0) + 40);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t *closure #1 in Promptkit_Wireformat_ImageSurface.traverse<A>(visitor:)(uint64_t *result)
{
  v1 = result[1];
  if (v1 >> 60 != 15)
  {
    v2 = *result;
    outlined copy of Data._Representation(*result, v1);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v2, v1);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageSurface@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1ABA1D8C0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  *(a2 + 32) = 0;
  *(a2 + 36) = 1;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v2 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_ImageSurface@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_ImageSurface(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_ImageSurface(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageSurface(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageSurface and conformance Promptkit_Wireformat_ImageSurface, type metadata accessor for Promptkit_Wireformat_ImageSurface);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageSurface(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageSurface and conformance Promptkit_Wireformat_ImageSurface, type metadata accessor for Promptkit_Wireformat_ImageSurface);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageSurface()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageSurface and conformance Promptkit_Wireformat_ImageSurface, type metadata accessor for Promptkit_Wireformat_ImageSurface);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageFormat.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Promptkit_Wireformat_ImageFormat.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      closure #1 in Promptkit_Wireformat_ImageFormat.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageFormat.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for Google_Protobuf_NullValue();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v21 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v16 = (*(v15 + 48))(v11, 1, v14);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v16 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v17 = v21;
  if (*v21 != 2)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v18 = v22;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v17 = v18;
  return result;
}

uint64_t Promptkit_Wireformat_ImageFormat.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 == 2)
  {
    goto LABEL_2;
  }

  if (v2)
  {
    result = closure #2 in Promptkit_Wireformat_ImageFormat.traverse<A>(visitor:)(v0);
    if (!v1)
    {
LABEL_2:
      v3 = &v0[*(type metadata accessor for Promptkit_Wireformat_ImageFormat(0) + 20)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    result = closure #1 in Promptkit_Wireformat_ImageFormat.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageFormat.traverse<A>(visitor:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 == 2 || (v8 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageFormat.traverse<A>(visitor:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 == 2 || (v8 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageFormat@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 2;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageFormat(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormat and conformance Promptkit_Wireformat_ImageFormat, type metadata accessor for Promptkit_Wireformat_ImageFormat);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageFormat(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormat and conformance Promptkit_Wireformat_ImageFormat, type metadata accessor for Promptkit_Wireformat_ImageFormat);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageFormat()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormat and conformance Promptkit_Wireformat_ImageFormat, type metadata accessor for Promptkit_Wireformat_ImageFormat);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageFormat(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 2)
  {
    if (v4 == 2)
    {
LABEL_3:
      v5 = *(a3 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  else
  {
    v7 = (v4 ^ v3) & 1;
    if (v4 != 2 && v7 == 0)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_CustomData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CustomData and conformance Promptkit_Wireformat_CustomData, type metadata accessor for Promptkit_Wireformat_CustomData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_CustomData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CustomData and conformance Promptkit_Wireformat_CustomData, type metadata accessor for Promptkit_Wireformat_CustomData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_CustomData()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_CustomData and conformance Promptkit_Wireformat_CustomData, type metadata accessor for Promptkit_Wireformat_CustomData);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_CustomData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (v4[1])
  {
    v7 = *v4;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v5)
  {
    closure #2 in Promptkit_Wireformat_CustomData.traverse<A>(visitor:)(v4);
    v9 = v4 + *(a4(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_CustomData.traverse<A>(visitor:)(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 16);
    outlined copy of Data._Representation(v2, v1);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v2, v1);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_PromptComponentCustomData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentCustomData and conformance Promptkit_Wireformat_PromptComponentCustomData, type metadata accessor for Promptkit_Wireformat_PromptComponentCustomData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_PromptComponentCustomData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentCustomData and conformance Promptkit_Wireformat_PromptComponentCustomData, type metadata accessor for Promptkit_Wireformat_PromptComponentCustomData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptComponentCustomData()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentCustomData and conformance Promptkit_Wireformat_PromptComponentCustomData, type metadata accessor for Promptkit_Wireformat_PromptComponentCustomData);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_SpecialToken.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
      case 1:
LABEL_8:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }
}

uint64_t Promptkit_Wireformat_SpecialToken.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if ((*(v0 + 20) & 1) == 0)
    {
      v4 = *(v0 + 4);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (v0[4])
    {
      v5 = v0[3];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v6 = v0 + *(type metadata accessor for Promptkit_Wireformat_SpecialToken(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_SpecialToken@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_SpecialToken(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SpecialToken and conformance Promptkit_Wireformat_SpecialToken, type metadata accessor for Promptkit_Wireformat_SpecialToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_SpecialToken(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SpecialToken and conformance Promptkit_Wireformat_SpecialToken, type metadata accessor for Promptkit_Wireformat_SpecialToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_SpecialToken()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SpecialToken and conformance Promptkit_Wireformat_SpecialToken, type metadata accessor for Promptkit_Wireformat_SpecialToken);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_BindableVariable(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_BindableVariable and conformance Promptkit_Wireformat_BindableVariable, type metadata accessor for Promptkit_Wireformat_BindableVariable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_BindableVariable(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_BindableVariable and conformance Promptkit_Wireformat_BindableVariable, type metadata accessor for Promptkit_Wireformat_BindableVariable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_BindableVariable()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_BindableVariable and conformance Promptkit_Wireformat_BindableVariable, type metadata accessor for Promptkit_Wireformat_BindableVariable);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_AttachmentPlaceholder(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_AttachmentPlaceholder and conformance Promptkit_Wireformat_AttachmentPlaceholder, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_AttachmentPlaceholder(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_AttachmentPlaceholder and conformance Promptkit_Wireformat_AttachmentPlaceholder, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_AttachmentPlaceholder()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_AttachmentPlaceholder and conformance Promptkit_Wireformat_AttachmentPlaceholder, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolResults.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Promptkit_Wireformat_ToolResult(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResult and conformance Promptkit_Wireformat_ToolResult, type metadata accessor for Promptkit_Wireformat_ToolResult), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_ToolResults(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolResults(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResults and conformance Promptkit_Wireformat_ToolResults, type metadata accessor for Promptkit_Wireformat_ToolResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolResults(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResults and conformance Promptkit_Wireformat_ToolResults, type metadata accessor for Promptkit_Wireformat_ToolResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolResults()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResults and conformance Promptkit_Wireformat_ToolResults, type metadata accessor for Promptkit_Wireformat_ToolResults);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in Promptkit_Wireformat_ToolResult.decodeMessage<A>(decoder:)();
        break;
      case 2:
        closure #2 in Promptkit_Wireformat_ToolResult.decodeMessage<A>(decoder:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ToolResult.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ToolResult(0) + 20);
  type metadata accessor for Promptkit_Wireformat_ToolResultContent(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultContent and conformance Promptkit_Wireformat_ToolResultContent, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Promptkit_Wireformat_ToolResult.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ToolResult(0) + 24);
  type metadata accessor for Promptkit_Wireformat_Prompt(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ToolResult.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    closure #2 in Promptkit_Wireformat_ToolResult.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #3 in Promptkit_Wireformat_ToolResult.traverse<A>(visitor:)(v3, v7, a2, a3);
    v9 = v3 + *(type metadata accessor for Promptkit_Wireformat_ToolResult(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ToolResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolResultContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ToolResult(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultContent and conformance Promptkit_Wireformat_ToolResultContent, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
}

uint64_t closure #3 in Promptkit_Wireformat_ToolResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ToolResult(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_Prompt);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Prompt and conformance Promptkit_Wireformat_Prompt, type metadata accessor for Promptkit_Wireformat_Prompt);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_Prompt);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ToolResult@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = a1[5];
  v5 = type metadata accessor for Promptkit_Wireformat_ToolResultContent(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[7]];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResult and conformance Promptkit_Wireformat_ToolResult, type metadata accessor for Promptkit_Wireformat_ToolResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResult and conformance Promptkit_Wireformat_ToolResult, type metadata accessor for Promptkit_Wireformat_ToolResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolResult()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResult and conformance Promptkit_Wireformat_ToolResult, type metadata accessor for Promptkit_Wireformat_ToolResult);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ToolResultContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_ToolResultText);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_ToolResultText);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultText and conformance Promptkit_Wireformat_ToolResultText, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ToolResultText);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ToolResultTextVSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_ToolResultText);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_ToolResultContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultText and conformance Promptkit_Wireformat_ToolResultText, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolResultText);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolResultContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultContent and conformance Promptkit_Wireformat_ToolResultContent, type metadata accessor for Promptkit_Wireformat_ToolResultContent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolResultContent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultContent and conformance Promptkit_Wireformat_ToolResultContent, type metadata accessor for Promptkit_Wireformat_ToolResultContent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolResultContent()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultContent and conformance Promptkit_Wireformat_ToolResultContent, type metadata accessor for Promptkit_Wireformat_ToolResultContent);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolResultText(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultText and conformance Promptkit_Wireformat_ToolResultText, type metadata accessor for Promptkit_Wireformat_ToolResultText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolResultText(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultText and conformance Promptkit_Wireformat_ToolResultText, type metadata accessor for Promptkit_Wireformat_ToolResultText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolResultText()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolResultText and conformance Promptkit_Wireformat_ToolResultText, type metadata accessor for Promptkit_Wireformat_ToolResultText);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolCalls.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Promptkit_Wireformat_ToolCall(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCall and conformance Promptkit_Wireformat_ToolCall, type metadata accessor for Promptkit_Wireformat_ToolCall), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_ToolCalls(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolCalls(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCalls and conformance Promptkit_Wireformat_ToolCalls, type metadata accessor for Promptkit_Wireformat_ToolCalls);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolCalls(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCalls and conformance Promptkit_Wireformat_ToolCalls, type metadata accessor for Promptkit_Wireformat_ToolCalls);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolCalls()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCalls and conformance Promptkit_Wireformat_ToolCalls, type metadata accessor for Promptkit_Wireformat_ToolCalls);

  return Message.hash(into:)();
}

uint64_t closure #2 in Promptkit_Wireformat_ToolCall.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ToolCall(0) + 20);
  type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallContent and conformance Promptkit_Wireformat_ToolCallContent, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaChoice.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v11 = result;
  if (v5[1])
  {
    v12 = *v5;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v6)
  {
    a4(v5, v11, a2, a3);
    v13 = v5 + *(a5(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ToolCall.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ToolCall(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallContent and conformance Promptkit_Wireformat_ToolCallContent, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolCall(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCall and conformance Promptkit_Wireformat_ToolCall, type metadata accessor for Promptkit_Wireformat_ToolCall);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolCall(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCall and conformance Promptkit_Wireformat_ToolCall, type metadata accessor for Promptkit_Wireformat_ToolCall);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolCall()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCall and conformance Promptkit_Wireformat_ToolCall, type metadata accessor for Promptkit_Wireformat_ToolCall);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ToolCallContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallFunction and conformance Promptkit_Wireformat_ToolCallFunction, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_ToolCallFunctionVSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_ToolCallContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallFunction and conformance Promptkit_Wireformat_ToolCallFunction, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolCallContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallContent and conformance Promptkit_Wireformat_ToolCallContent, type metadata accessor for Promptkit_Wireformat_ToolCallContent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolCallContent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallContent and conformance Promptkit_Wireformat_ToolCallContent, type metadata accessor for Promptkit_Wireformat_ToolCallContent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolCallContent()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallContent and conformance Promptkit_Wireformat_ToolCallContent, type metadata accessor for Promptkit_Wireformat_ToolCallContent);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolCallFunction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallFunction and conformance Promptkit_Wireformat_ToolCallFunction, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolCallFunction(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallFunction and conformance Promptkit_Wireformat_ToolCallFunction, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolCallFunction()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolCallFunction and conformance Promptkit_Wireformat_ToolCallFunction, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolDefinition.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionType and conformance Promptkit_Wireformat_ToolDefinitionType, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ToolDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionType and conformance Promptkit_Wireformat_ToolDefinitionType, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolDefinition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolDefinition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolDefinition()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        closure #1 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        closure #2 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #2 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 4);
          break;
        case 4:
          closure #4 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      v33 = v48;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
      v35 = v43;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v43, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionFunction and conformance Promptkit_Wireformat_ToolDefinitionFunction, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v44, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionFunctionVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = a5;
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v27 - v17;
  v19 = type metadata accessor for Google_Protobuf_NullValue();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v27[1] = a3;
  v27[2] = a4;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v21 = (*(v20 + 48))(v16, 1, v19);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v21 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, v11, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v22 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v11, 1, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  if (v24 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v26 = v29;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  swift_storeEnumTagMultiPayload();
  return (*(v23 + 56))(v26, 0, 1, v22);
}

uint64_t closure #4 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB10ParametersVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #5 in Promptkit_Wireformat_ToolDefinitionType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMd, &_s15TokenGeneration025Promptkit_Wireformat_FileB10ParametersVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v16 - v10, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v12 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        closure #4 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #1 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          result = closure #2 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = closure #3 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }
        }

        goto LABEL_14;
      }

      closure #5 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_14:
  v15 = v3 + *(type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionFunction and conformance Promptkit_Wireformat_ToolDefinitionFunction, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = type metadata accessor for Google_Protobuf_NullValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v17 - v12;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v17 - v12, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v14 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    if (EnumCaseMultiPayload == 3)
    {
      Google_Protobuf_NullValue.init()();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = type metadata accessor for Google_Protobuf_NullValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v17 - v12;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v17 - v12, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v14 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    if (EnumCaseMultiPayload == 4)
    {
      Google_Protobuf_NullValue.init()();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  __break(1u);
  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_ToolDefinitionType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolDefinitionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionType and conformance Promptkit_Wireformat_ToolDefinitionType, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolDefinitionType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionType and conformance Promptkit_Wireformat_ToolDefinitionType, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolDefinitionType()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionType and conformance Promptkit_Wireformat_ToolDefinitionType, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);

  return Message.hash(into:)();
}

uint64_t closure #3 in Promptkit_Wireformat_ToolDefinitionFunction.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0) + 24);
  type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Promptkit_Wireformat_ToolDefinitionFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ToolDefinitionFunction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionFunction and conformance Promptkit_Wireformat_ToolDefinitionFunction, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ToolDefinitionFunction(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionFunction and conformance Promptkit_Wireformat_ToolDefinitionFunction, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ToolDefinitionFunction()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinitionFunction and conformance Promptkit_Wireformat_ToolDefinitionFunction, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            closure #6 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          }

          else
          {
            closure #7 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              closure #8 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
              break;
            case 9:
              closure #9 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(a1, v5);
              break;
            case 10:
              closure #10 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 0xE000000000000000;
LABEL_5:
          closure #1 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 0xE000000000000008;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 3)
        {
          v15 = 0xE000000000000010;
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          goto LABEL_5;
        }

        if (result == 4)
        {
          closure #4 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }

        else
        {
          closure #5 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

unint64_t closure #1 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v23 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for Google_Protobuf_NullValue();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v22 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v16 = (*(v15 + 48))(v11, 1, v14);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v16 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v17 = v22;
  if ((~*v22 & 0xF000000000000007) != 0)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v18 = v23;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v20 = *v17;
  *v17 = v18;
  return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
}

unint64_t closure #4 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v31 = v20 & 0xF000000000000007;
  if (!(v20 >> 61) && v31 != 0xF000000000000007)
  {
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaString and conformance Promptkit_Wireformat_GenerationSchemaString, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
  }

  else
  {
    v24 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v30, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
    if (v31 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaStringVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
    v27 = *v29;
    *v29 = v25;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
  }
}

unint64_t closure #5 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x2000000000000000)
  {
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaObject and conformance Promptkit_Wireformat_GenerationSchemaObject, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B12SchemaObjectVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
  }
}

unint64_t closure #6 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x4000000000000000)
  {
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v27 = *v29;
    *v29 = v25 | 0x4000000000000000;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
  }
}

unint64_t closure #7 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x6000000000000000)
  {
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v27 = *v29;
    *v29 = v25 | 0x6000000000000000;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
  }
}

unint64_t closure #8 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaOneOf and conformance Promptkit_Wireformat_GenerationSchemaOneOf, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B11SchemaOneOfVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
  }
}

unint64_t closure #9 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(uint64_t a1, unint64_t *a2)
{
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v2)
  {
  }

  if (v8)
  {
    if ((~*a2 & 0xF000000000000007) != 0)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = v8;
    v6 = v5 | 0xA000000000000000;
    v7 = *a2;
    *a2 = v6;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v7);
  }

  return result;
}

unint64_t closure #10 in Promptkit_Wireformat_GenerationSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0xC000000000000000)
  {
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v27 = *v29;
    *v29 = v25 | 0xC000000000000000;
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
  }
}