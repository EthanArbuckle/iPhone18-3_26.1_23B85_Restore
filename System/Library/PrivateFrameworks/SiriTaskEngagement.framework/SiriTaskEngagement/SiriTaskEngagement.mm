uint64_t sub_2691F6664@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_2691F66A0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F66D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t sub_2691F6710(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_2691F6744@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t sub_2691F6780(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_2691F67B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 32)) & 1;
  return result;
}

uint64_t sub_2691F67F0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_2691F6824@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = *(a1 + *(result + 24));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F6864(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_2691F6898@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = *(a1 + *(result + 28));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F68D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_2691F6914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F695C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2691F6998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F69E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2691F6B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2691F6C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2691F6CC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2691F6DF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2691F6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_2691F6FE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_2691F70F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2691F7144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2691F7184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2691F71D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_2691F7238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2691F7284(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2691F72E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 14)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F7328(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F735C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F77FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t sub_2691F7838(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_2691F787C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F78C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2691F79EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *a2 = *(a1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_2691F7A28(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F7AB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F7AF4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F7DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 241)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xE)
    {
      v11 = 14;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 14;
    if (v10 >= 0xE)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2691F7EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 241)
  {
    *(a1 + *(a4 + 20)) = a2 + 14;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UnknownStorage();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_2691F8130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UnknownStorage();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2691F8250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F84C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F89AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2691F8F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2691F9120()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t (*ProtoContactEntitySignal.identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoContactEntitySignal.handleValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoContactEntitySignal.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoContactEntitySignal.givenName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.familyName.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoContactEntitySignal.familyName : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for ProtoContactEntitySignal.familyName : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoContactEntitySignal.familyName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoContactEntitySignal.familyName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

Swift::Void __swiftcall ProtoContactEntitySignal.clearFamilyName()()
{
  v1 = (v0 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

int *ProtoContactEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoContactEntitySignal(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.identifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.identifier : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.identifier : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.identifier.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoLocationEntitySignal.poiIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoLocationEntitySignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.clearIdentifier()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoLocationEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoLocationEntitySignal(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t ProtoDateTimeEntitySignal.datetimeTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateTimeEntitySignal.datetimeTimestampMs : ProtoDateTimeEntitySignal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = (a1 + *(result + 20));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateTimeEntitySignal.datetimeTimestampMs : ProtoDateTimeEntitySignal(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t ProtoDateTimeEntitySignal.datetimeTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoDateTimeEntitySignal.datetimeTimestampMs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoDateTimeEntitySignal.datetimeTimestampMs.modify;
}

uint64_t ProtoDateTimeEntitySignal.datetimeTimestampMs.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall ProtoDateTimeEntitySignal.clearDatetimeTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoDateTimeEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  return result;
}

uint64_t ProtoDateComponentSignal.year.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.year : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 20));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.year : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.year.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.year.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearYear()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.month.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.month : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.month : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 24);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.month.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.month.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearMonth()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.day.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.day : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 28));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.day : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.day.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.day.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.day.modify;
}

uint64_t ProtoDateComponentSignal.day.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearDay()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.hour.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.hour : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.hour : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.hour.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.hour.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearHour()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.minute.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.minute : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.minute : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.minute.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.minute.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearMinute()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.second.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.second : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.second : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.second.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.second.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearSecond()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *ProtoDateComponentSignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t type metadata accessor for ProtoContactEntitySignal(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*ProtoMediaEntitySignal.adamIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoMediaEntitySignal.adamIdentifier.modify;
}

uint64_t ProtoContactEntitySignal.handleValue.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.handleValue : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.handleValue : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.handleValue.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoMediaEntitySignal.artist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.clearHandleValue()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.displayName.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.displayName : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.displayName : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.displayName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoMediaEntitySignal.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.clearDisplayName()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.givenName.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.givenName : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.givenName : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 32));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.givenName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoMediaEntitySignal.album.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

void ProtoContactEntitySignal.identifier.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t ProtoContactEntitySignal.clearGivenName()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProtoContactEntitySignal.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *ProtoMediaEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoMediaEntitySignal(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoContactEntitySignal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoContactEntitySignal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26923AA60;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v16 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "handleValue";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v16 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "displayName";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v16 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "givenName";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v16 + v3 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "familyName";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoDateComponentSignal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoDateComponentSignal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "year";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "month";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "day";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hour";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "minute";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "second";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoMediaEntitySignal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoMediaEntitySignal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "adamIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "artist";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "album";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskInteractionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskInteractionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "includesPrompt";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "includesConfirm";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "includesDisambiguate";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "includesUnsupportedPrompt";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskEvaluationSummary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskEvaluationSummary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestIds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "taskCompletion";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "taskSuccess";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "interactionType";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "startTimestampMs";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "endTimestampMs";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskEngagement._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskEngagement._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26923B540;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "taskId";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "taskName";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "evaluationSummary";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "siriTaskFeatureSet";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "followupTimeWindowInMs";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "followupUserInitatedEngagements";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "nextTaskId";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "previousTaskId";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "engagementType";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "domainType";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskCompletionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskCompletionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SIRI_TASK_COMPLETION_TYPE_UNKNOWN";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_TASK_COMPLETION_TYPE_COMPLETED";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIRI_TASK_COMPLETION_TYPE_FAILED";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SIRI_TASK_COMPLETION_TYPE_CANCELLED";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "SIRI_TASK_COMPLETION_TYPE_ABANDONED";
  *(v15 + 8) = 35;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskSuccessType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskSuccessType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26923AA60;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "SIRI_TASK_SUCCESS_TYPE_UNKNOWN";
  *(v5 + 8) = 30;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SIRI_TASK_SUCCESS_TYPE_NOT_CALCULATED";
  *(v9 + 8) = 37;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SIRI_TASK_SUCCESS_TYPE_NOT_APPLICABLE";
  *(v11 + 1) = 37;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SIRI_TASK_SUCCESS_TYPE_SUCCESSFUL";
  *(v13 + 1) = 33;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "SIRI_TASK_SUCCESS_TYPE_UNSUCCESSFUL";
  *(v14 + 8) = 35;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoTaskEngagementType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoTaskEngagementType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26923BAC0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "TASK_ENGAGEMENT_TYPE_UNKNOWN";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TASK_ENGAGEMENT_TYPE_UNSUPPORTED";
  *(v9 + 8) = 32;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "TASK_ENGAGEMENT_TYPE_START_PHONE_CALL";
  *(v11 + 1) = 37;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TASK_ENGAGEMENT_TYPE_SEND_MESSAGE";
  *(v13 + 1) = 33;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TASK_ENGAGEMENT_TYPE_CREATE_ALARM";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TASK_ENGAGEMENT_TYPE_UPDATE_ALARM";
  *(v17 + 1) = 33;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TASK_ENGAGEMENT_TYPE_DELETE_ALARM";
  *(v19 + 1) = 33;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "TASK_ENGAGEMENT_TYPE_TOGGLE_ALARM";
  *(v21 + 1) = 33;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "TASK_ENGAGEMENT_TYPE_CREATE_REMINDER";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TASK_ENGAGEMENT_TYPE_UPDATE_REMINDER";
  *(v24 + 1) = 36;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TASK_ENGAGEMENT_TYPE_PLAY_MEDIA";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TASK_ENGAGEMENT_TYPE_PAUSE_MEDIA";
  *(v28 + 1) = 32;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TASK_ENGAGEMENT_TYPE_SEARCH_MEDIA";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TASK_ENGAGEMENT_TYPE_LOCATION_SEARCH";
  *(v32 + 1) = 36;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoPlayMediaPlayBackState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoPlayMediaPlayBackState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLAY_MEDIA_PLAY_BACK_STATE_UNKNOWN";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAY_MEDIA_PLAY_BACK_STATE_PLAY";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLAY_MEDIA_PLAY_BACK_STATE_PAUSE";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLAY_MEDIA_PLAY_BACK_STATE_STOPPED";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PLAY_MEDIA_PLAY_BACK_STATE_INTERRUPTED";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PLAY_MEDIA_PLAY_BACK_STATE_SEEKING";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoDomainType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoDomainType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26923BAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "DOMAIN_TYPE_UNKNOWN";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DOMAIN_TYPE_MUSIC";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DOMAIN_TYPE_PHONECALL";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DOMAIN_TYPE_MESSAGES";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DOMAIN_TYPE_ALARM";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DOMAIN_TYPE_HOMEAUTOMATION";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DOMAIN_TYPE_REMINDER";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DOMAIN_TYPE_UNSUPPORTED";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "DOMAIN_TYPE_MAPS";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationVerb._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationVerb._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NAVIGATION_VERB_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NAVIGATION_VERB_PLACE_CARD_TAP";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NAVIGATION_VERB_RESULT_LIST_TAP";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NAVIGATION_VERB_NAVIGATION";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NAVIGATION_VERB_SHOW";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NAVIGATION_VERB_SELECT_CATEGORY";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NAVIGATION_VERB_SEARCH";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NAVIGATION_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NAVIGATION_TYPE_NEW_REQUEST";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NAVIGATION_TYPE_SEARCH_ALONG_THE_ROUTE";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NAVIGATION_TYPE_CONTINUE";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationFollowupType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationFollowupType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NAVIGATION_FOLLOWUP_TYPE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NAVIGATION_FOLLOWUP_TYPE_SIRI_RESULT_FOLLOWUP";
  *(v10 + 1) = 45;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NAVIGATION_FOLLOWUP_TYPE_NEW_USER_INITIATED_FOLLOWUP";
  *(v11 + 8) = 52;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoTaskEngagementFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoTaskEngagementFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "engagementType";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startTimestampMs";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "featureSet";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appBundleId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "startCallFeatureSet";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "sendMessageFeatureSet";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 103;
  *v14 = "alarmFeatureSet";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 104;
  *v16 = "reminderFeatureSet";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 105;
  *v18 = "playMediaFeatureSet";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 106;
  *v20 = "navigationFeatureSet";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoStartCallTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoStartCallTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callDurationInSec";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactEntities";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSendMessageTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSendMessageTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA70;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "contactEntities";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoAlarmTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoAlarmTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alarmIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startTime";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoReminderTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoReminderTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reminderIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isSpatialTriggered";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isTemporalTriggered";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "startTime";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "endTime";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoPlayMediaTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoPlayMediaTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26923AA60;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "playDurationInSec";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mediaContentLengthInSec";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "appBundleId";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionState";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "mediaEntity";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isSiriNavigationContinued";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isUserFollowup";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "followupContext";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationUserFollowupContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationUserFollowupContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "followupType";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "navigationAction";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "navigationActionType";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locationEntity";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "timestampInMs";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationFeatures._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationFeatures._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26923AA80;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "navigationAction";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "navigationType";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "navigationActionType";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "navigationSource";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "timestampInMs";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "poiIdentifier";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ProtoContactEntitySignal.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for ProtoContactEntitySignal(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for ProtoContactEntitySignal(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for ProtoContactEntitySignal(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for ProtoContactEntitySignal(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
  if (!v4)
  {
    closure #2 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
    closure #3 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
    closure #4 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
    closure #5 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoContactEntitySignal(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoContactEntitySignal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoContactEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoContactEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoContactEntitySignal()
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static ProtoLocationEntitySignal._protobuf_nameMap, "poiIdentifier", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ProtoDateTimeEntitySignal._protobuf_nameMap, "datetimeTimestampMs", 19);
}

uint64_t ProtoLocationEntitySignal.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for ProtoLocationEntitySignal(0) + 20);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t ProtoLocationEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoLocationEntitySignal);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoLocationEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoLocationEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoLocationEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoLocationEntitySignal()
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26923AA70;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ProtoDateTimeEntitySignal.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t ProtoDateTimeEntitySignal.traverse<A>(visitor:)()
{
  result = closure #1 in ProtoDateTimeEntitySignal.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoDateTimeEntitySignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoDateTimeEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoDateTimeEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoDateTimeEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoDateTimeEntitySignal()
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);

  return Message.hash(into:)();
}

uint64_t ProtoDateComponentSignal.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for ProtoDateComponentSignal(0) + 32);
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for ProtoDateComponentSignal(0) + 36);
            break;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for ProtoDateComponentSignal(0) + 40);
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v6 = *(type metadata accessor for ProtoDateComponentSignal(0) + 20);
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for ProtoDateComponentSignal(0) + 24);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for ProtoDateComponentSignal(0) + 28);
            break;
          default:
            goto LABEL_17;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_17:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoDateComponentSignal.traverse<A>(visitor:)()
{
  result = closure #1 in ProtoDateComponentSignal.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    closure #2 in ProtoDateComponentSignal.traverse<A>(visitor:)(v0);
    closure #3 in ProtoDateComponentSignal.traverse<A>(visitor:)(v0);
    closure #4 in ProtoDateComponentSignal.traverse<A>(visitor:)(v0);
    closure #5 in ProtoDateComponentSignal.traverse<A>(visitor:)(v0);
    closure #6 in ProtoDateComponentSignal.traverse<A>(visitor:)(v0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoDateComponentSignal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoDateComponentSignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoDateComponentSignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoDateComponentSignal()
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal);

  return Message.hash(into:)();
}

uint64_t static ProtoContactEntitySignal._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ProtoMediaEntitySignal.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 24);
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoMediaEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
  if (!v4)
  {
    closure #2 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
    closure #3 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
    closure #4 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int ProtoContactEntitySignal.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance ProtoMediaEntitySignal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoMediaEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance ProtoContactEntitySignal@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoMediaEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProtoContactEntitySignal()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoMediaEntitySignal()
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProtoContactEntitySignal()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static ProtoLocationEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoLocationEntitySignal(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static ProtoDateTimeEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static ProtoMediaEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoMediaEntitySignal(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static ProtoDateComponentSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static ProtoContactEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoContactEntitySignal(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_42;
    }
  }

  else if (!v41)
  {
LABEL_42:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for ProtoContactEntitySignal()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ProtoLocationEntitySignal(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    type metadata accessor for String?(319, a4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for ProtoDateComponentSignal()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt32?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void type metadata completion function for ProtoMediaEntitySignal()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
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

uint64_t INStartCallIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, unsigned int (**a2)(char *, uint64_t, uint64_t)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v60 - v6;
  v73 = type metadata accessor for ProtoContactEntitySignal(0);
  v71 = *(v73 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v60 - v14);
  v16 = type metadata accessor for ProtoTaskFeatureSet(0);
  v68 = *(v16 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v16);
  v69 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  v26 = [a1 intent];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v66 = v26;
    v67 = v16;
    v29 = [a1 dateInterval];
    if (v29)
    {
      v30 = v29;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = type metadata accessor for DateInterval();
      (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
    }

    else
    {
      v31 = type metadata accessor for DateInterval();
      (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
    }

    outlined init with take of DateInterval?(v23, v25, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    type metadata accessor for DateInterval();
    if ((*(*(v31 - 8) + 48))(v25, 1, v31))
    {
      outlined destroy of DateInterval?(v25, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      v34 = -1.0;
    }

    else
    {
      DateInterval.duration.getter();
      v34 = v35;
      outlined destroy of DateInterval?(v25, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }

    v37 = v66;
    v36 = v67;
    v38 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v39 = *(v38 - 8);
    v40 = *(v39 + 56);
    v41 = v69;
    v63 = v39 + 56;
    v64 = v40;
    v40(v69, 1, 1, v38);
    v42 = v41 + *(v36 + 20);
    UnknownStorage.init()();
    v43 = (v41 + *(v36 + 24));
    *v43 = 0;
    v43[1] = 0;
    *v15 = MEMORY[0x277D84F90];
    v44 = v15 + *(v10 + 20);
    UnknownStorage.init()();
    v45 = (v15 + *(v10 + 24));
    *v45 = v34;
    *(v45 + 8) = 0;
    v46 = [v28 contacts];
    if (v46)
    {
      v47 = v46;
      type metadata accessor for INPerson(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v48 >> 62)
      {
        goto LABEL_35;
      }

      for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D634210](v59))
      {
        v60 = v38;
        v61 = v15;
        v62 = a2;
        if (!i)
        {
          break;
        }

        v50 = 0;
        v38 = v48 & 0xC000000000000001;
        v15 = (v48 & 0xFFFFFFFFFFFFFF8);
        a2 = (v71 + 48);
        v51 = MEMORY[0x277D84F90];
        v70 = i;
        while (1)
        {
          if (v38)
          {
            v52 = MEMORY[0x26D6341F0](v50, v48);
          }

          else
          {
            if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v52 = *(v48 + 8 * v50 + 32);
          }

          v53 = v52;
          v54 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          INPerson.extract()(v7);

          if ((*a2)(v7, 1, v73) == 1)
          {
            outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
          }

          else
          {
            outlined init with take of ProtoStartCallTaskFeatureSet(v7, v72, type metadata accessor for ProtoContactEntitySignal);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            v56 = v51[2];
            v55 = v51[3];
            if (v56 >= v55 >> 1)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v51, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            v51[2] = v56 + 1;
            outlined init with take of ProtoStartCallTaskFeatureSet(v72, v51 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v56, type metadata accessor for ProtoContactEntitySignal);
            i = v70;
          }

          ++v50;
          if (v54 == i)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        if (v48 < 0)
        {
          v59 = v48;
        }

        else
        {
          v59 = v48 & 0xFFFFFFFFFFFFFF8;
        }
      }

      v51 = MEMORY[0x277D84F90];
LABEL_31:

      v15 = v61;
      a2 = v62;
      *v61 = v51;
      v36 = v67;
      v38 = v60;
    }

    else
    {
    }

    v57 = v65;
    outlined init with copy of ProtoStartCallTaskFeatureSet(v15, v65, type metadata accessor for ProtoStartCallTaskFeatureSet);
    v58 = v69;
    outlined destroy of DateInterval?(v69, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v57, v58, type metadata accessor for ProtoStartCallTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    v64(v58, 0, 1, v38);
    outlined init with take of ProtoStartCallTaskFeatureSet(v58, a2, type metadata accessor for ProtoTaskFeatureSet);
    (*(v68 + 56))(a2, 0, 1, v36);
    return outlined destroy of ProtoStartCallTaskFeatureSet(v15, type metadata accessor for ProtoStartCallTaskFeatureSet);
  }

  else
  {

    v32 = *(v68 + 56);

    return v32(a2, 1, 1, v16);
  }
}

uint64_t INSendMessageIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v55 = type metadata accessor for ProtoContactEntitySignal(0);
  v53 = *(v55 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProtoSendMessageTaskFeatureSet(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = type metadata accessor for ProtoTaskFeatureSet(0);
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = [a1 intent];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v48 = v21;
    v24 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 56);
    v49 = v25 + 56;
    v50 = v26;
    v26(v20, 1, 1, v24);
    v27 = v20 + *(v17 + 20);
    UnknownStorage.init()();
    v28 = v20 + *(v17 + 24);
    *v28 = 0;
    *(v28 + 1) = 0;
    *v16 = MEMORY[0x277D84F90];
    v29 = v16 + *(v10 + 20);
    UnknownStorage.init()();
    v30 = [v23 recipients];
    if (v30)
    {
      v31 = v30;
      type metadata accessor for INPerson(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v32 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D634210](v41))
      {
        v42 = v24;
        v43 = v20;
        v44 = v14;
        v45 = v17;
        v46 = v16;
        v47 = a2;
        if (!i)
        {
          break;
        }

        v17 = i;
        v16 = 0;
        v14 = (v32 & 0xC000000000000001);
        v24 = v32 & 0xFFFFFFFFFFFFFF8;
        v20 = (v53 + 48);
        a2 = MEMORY[0x277D84F90];
        v52 = i;
        while (1)
        {
          if (v14)
          {
            v34 = MEMORY[0x26D6341F0](v16, v32);
          }

          else
          {
            if (v16 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v34 = *(v32 + 8 * v16 + 32);
          }

          v35 = v34;
          v36 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          INPerson.extract()(v7);

          if ((*v20)(v7, 1, v55) == 1)
          {
            outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
          }

          else
          {
            outlined init with take of ProtoStartCallTaskFeatureSet(v7, v54, type metadata accessor for ProtoContactEntitySignal);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            v38 = a2[2];
            v37 = a2[3];
            if (v38 >= v37 >> 1)
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, a2, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            a2[2] = v38 + 1;
            outlined init with take of ProtoStartCallTaskFeatureSet(v54, a2 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v38, type metadata accessor for ProtoContactEntitySignal);
            v17 = v52;
          }

          ++v16;
          if (v36 == v17)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        if (v32 < 0)
        {
          v41 = v32;
        }

        else
        {
          v41 = v32 & 0xFFFFFFFFFFFFFF8;
        }
      }

      a2 = MEMORY[0x277D84F90];
LABEL_25:

      v17 = v45;
      v16 = v46;
      *v46 = a2;
      a2 = v47;
      v20 = v43;
      v14 = v44;
      v24 = v42;
    }

    else
    {
    }

    outlined init with copy of ProtoStartCallTaskFeatureSet(v16, v14, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    outlined destroy of DateInterval?(v20, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v14, v20, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    v50(v20, 0, 1, v24);
    outlined init with take of ProtoStartCallTaskFeatureSet(v20, a2, type metadata accessor for ProtoTaskFeatureSet);
    (*(v51 + 56))(a2, 0, 1, v17);
    return outlined destroy of ProtoStartCallTaskFeatureSet(v16, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  }

  else
  {

    v39 = *(v51 + 56);

    return v39(a2, 1, 1, v17);
  }
}

void INAddTasksIntentFeatureExtractor.extract(from:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v127 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v126 = v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v125 = v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v129 = v118 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v128 = (v118 - v17);
  MEMORY[0x28223BE20](v16);
  v130 = v118 - v18;
  v19 = type metadata accessor for Date();
  v131 = *(v19 - 8);
  v132 = v19;
  v20 = *(v131 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v123 = v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v124 = v118 - v23;
  v24 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v25 = *(*(v24 - 1) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v118 - v29;
  v31 = type metadata accessor for ProtoTaskFeatureSet(0);
  v141 = *(v31 - 8);
  v32 = *(v141 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a1;
  v35 = [a1 intent];
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    v138 = v35;
    v139 = v28;
    v137 = a2;
    v38 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v39 = *(v38 - 8);
    v135 = *(v39 + 56);
    v136 = v38;
    v134 = v39 + 56;
    v135(v34, 1, 1);
    v40 = &v34[*(v31 + 20)];
    UnknownStorage.init()();
    v41 = v31;
    v42 = *(v31 + 24);
    v133 = v34;
    v43 = &v34[v42];
    *v43 = 0;
    *(v43 + 1) = 0;
    UnknownStorage.init()();
    v44 = &v30[v24[5]];
    *v44 = 0;
    *(v44 + 1) = 0;
    v121 = v44;
    v45 = v24[6];
    v30[v45] = 2;
    v46 = v24[7];
    v30[v46] = 2;
    v47 = *(v5 + 56);
    v120 = v24[8];
    v47(&v30[v120], 1, 1, v4);
    v119 = v24[9];
    v122 = v4;
    v48 = v4;
    v49 = v5 + 56;
    v47(&v30[v119], 1, 1, v48);
    v50 = [v37 spatialEventTrigger];
    v51 = v50;
    v52 = v30;
    if (v50)
    {
    }

    v30[v45] = v51 != 0;
    v53 = [v37 temporalEventTrigger];
    v54 = v53;
    v55 = v138;
    if (v53)
    {
    }

    v30[v46] = v54 != 0;
    v56 = [v140 intentResponse];
    if (!v56)
    {

      v59 = v41;
      goto LABEL_52;
    }

    v57 = v56;
    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    v59 = v41;
    if (!v58)
    {

      goto LABEL_52;
    }

    v140 = v47;
    v60 = [v58 addedTasks];
    v61 = v139;
    if (!v60)
    {

LABEL_53:
      v115 = v133;
      outlined init with copy of ProtoStartCallTaskFeatureSet(v30, v61, type metadata accessor for ProtoReminderTaskFeatureSet);
      outlined destroy of DateInterval?(v115, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
      outlined init with take of ProtoStartCallTaskFeatureSet(v61, v115, type metadata accessor for ProtoReminderTaskFeatureSet);
      v116 = v136;
      swift_storeEnumTagMultiPayload();
      (v135)(v115, 0, 1, v116);
      outlined destroy of ProtoStartCallTaskFeatureSet(v30, type metadata accessor for ProtoReminderTaskFeatureSet);
      v117 = v137;
      outlined init with take of ProtoStartCallTaskFeatureSet(v115, v137, type metadata accessor for ProtoTaskFeatureSet);
      (*(v141 + 56))(v117, 0, 1, v59);
      return;
    }

    v62 = v60;
    type metadata accessor for INPerson(0, &lazy cache variable for type metadata for INTask, 0x277CD4220);
    v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v118[1] = v49;
    if (v63 >> 62)
    {
      if (v63 < 0)
      {
        v114 = v63;
      }

      else
      {
        v114 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x26D634210](v114))
      {
LABEL_11:
        v64 = v63 & 0xC000000000000001;
        if ((v63 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x26D6341F0](0, v63);
        }

        else
        {
          if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_56;
          }

          v65 = *(v63 + 32);
        }

        v66 = v65;
        v67 = [v65 identifier];

        if (v67)
        {
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v63;
          v71 = v70;

          v72 = v121;
          *v121 = v68;
          v72[1] = v71;
          v63 = v69;
          v52 = v30;
        }

        if (v64)
        {
          v73 = MEMORY[0x26D6341F0](0, v63);
          goto LABEL_26;
        }

        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v73 = *(v63 + 32);
LABEL_26:
          v75 = v73;
          v76 = [v73 temporalEventTrigger];

          v121 = v57;
          if (v76)
          {
            v118[0] = v63;
            v77 = [v76 dateComponentsRange];

            v78 = [v77 startDate];
            if (v78)
            {
              v79 = v128;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v80 = 0;
              v82 = v131;
              v81 = v132;
            }

            else
            {
              v80 = 1;
              v82 = v131;
              v81 = v132;
              v79 = v128;
            }

            v128 = *(v82 + 56);
            v128(v79, v80, 1, v81);
            v83 = v130;
            outlined init with take of DateInterval?(v79, v130, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            if ((*(v82 + 48))(v83, 1, v81) != 1)
            {
              v86 = v124;
              (*(v82 + 32))(v124, v83, v81);
              v130 = v64;
              v87 = v126;
              UnknownStorage.init()();
              v88 = v81;
              v89 = v82;
              v90 = &v87[*(v122 + 20)];
              *v90 = 0;
              v90[8] = 1;
              v91 = specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v86);
              v92 = v88;
              v55 = v138;
              (*(v89 + 8))(v86, v92);
              *v90 = v91;
              v90[8] = 0;
              v93 = v87;
              v94 = v130;
              v95 = v127;
              outlined init with take of ProtoStartCallTaskFeatureSet(v93, v127, type metadata accessor for ProtoDateTimeEntitySignal);
              v96 = v120;
              outlined destroy of DateInterval?(&v52[v120], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
              outlined init with take of ProtoStartCallTaskFeatureSet(v95, &v52[v96], type metadata accessor for ProtoDateTimeEntitySignal);
              v140(&v52[v96], 0, 1, v122);
              v57 = v121;
              v63 = v118[0];
              v84 = v128;
              if (v94)
              {
                goto LABEL_34;
              }

LABEL_36:
              if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v85 = *(v63 + 32);
                goto LABEL_38;
              }

              goto LABEL_57;
            }

            v57 = v121;
            v63 = v118[0];
            v84 = v128;
          }

          else
          {
            v83 = v130;
            v84 = *(v131 + 56);
            v84(v130, 1, 1, v132);
          }

          outlined destroy of DateInterval?(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          if (v64)
          {
LABEL_34:
            v85 = MEMORY[0x26D6341F0](0, v63);
LABEL_38:
            v97 = v85;

            v98 = [v97 temporalEventTrigger];

            if (v98)
            {
              v99 = [v98 dateComponentsRange];

              v100 = [v99 endDate];
              if (v100)
              {
                v101 = v125;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v102 = 0;
                v103 = v129;
                v104 = v132;
              }

              else
              {
                v102 = 1;
                v103 = v129;
                v104 = v132;
                v101 = v125;
              }

              v105 = v131;
              v84(v101, v102, 1, v104);
              outlined init with take of DateInterval?(v101, v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              if ((*(v105 + 48))(v103, 1, v104) != 1)
              {
                v106 = v123;
                (*(v105 + 32))(v123, v103, v104);
                v107 = v126;
                UnknownStorage.init()();
                v108 = v55;
                v109 = v104;
                v110 = v107 + *(v122 + 20);
                *v110 = 0;
                *(v110 + 8) = 1;
                v111 = specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v106);

                (*(v105 + 8))(v106, v109);
                *v110 = v111;
                *(v110 + 8) = 0;
                v112 = v127;
                outlined init with take of ProtoStartCallTaskFeatureSet(v107, v127, type metadata accessor for ProtoDateTimeEntitySignal);
                v113 = v119;
                outlined destroy of DateInterval?(&v30[v119], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
                outlined init with take of ProtoStartCallTaskFeatureSet(v112, &v30[v113], type metadata accessor for ProtoDateTimeEntitySignal);
                v140(&v30[v113], 0, 1, v122);
                goto LABEL_52;
              }
            }

            else
            {

              v103 = v129;
              v84(v129, 1, 1, v132);
            }

            outlined destroy of DateInterval?(v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_52:
            v61 = v139;
            goto LABEL_53;
          }

          goto LABEL_36;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v74 = *(v141 + 56);

  v74(a2, 1, 1, v31);
}

uint64_t INSetTaskAttributeIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v123 = *(v4 - 8);
  v5 = *(v123 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v114 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v101 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v113 = (&v101 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = &v101 - v18;
  v20 = type metadata accessor for Date();
  v121 = *(v20 - 8);
  v122 = v20;
  v21 = *(v121 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v106 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v105 = &v101 - v24;
  v25 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v26 = *(*(v25 - 1) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v117 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v101 - v29;
  v31 = type metadata accessor for ProtoTaskFeatureSet(0);
  v120 = *(v31 - 8);
  v32 = *(v120 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = [a1 intent];
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    v108 = v19;
    v118 = v35;
    v104 = v8;
    v112 = a2;
    v38 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v39 = *(v38 - 8);
    v110 = *(v39 + 56);
    v111 = v38;
    v109 = v39 + 56;
    v110(v34, 1, 1);
    v40 = &v34[*(v31 + 20)];
    UnknownStorage.init()();
    v119 = v31;
    v41 = &v34[*(v31 + 24)];
    *v41 = 0;
    *(v41 + 1) = 0;
    UnknownStorage.init()();
    v42 = &v30[v25[5]];
    *v42 = 0;
    v42[1] = 0;
    v43 = v4;
    v44 = v123;
    v45 = v25[6];
    v30[v45] = 2;
    v46 = v25[7];
    v30[v46] = 2;
    v48 = *(v44 + 56);
    v47 = v44 + 56;
    v101 = v25[8];
    v48(&v30[v101], 1, 1, v43);
    v102 = v25[9];
    v107 = v43;
    v103 = v48;
    v48(&v30[v102], 1, 1, v43);
    v49 = [v37 spatialEventTrigger];
    v50 = v49;
    if (v49)
    {
    }

    v30[v45] = v50 != 0;
    v51 = [v37 temporalEventTrigger];
    v52 = v51;
    if (v51)
    {
    }

    v30[v46] = v52 != 0;
    v53 = [v37 targetTask];
    v123 = v47;
    v54 = v108;
    if (v53)
    {
      v55 = v53;
      v56 = [v53 identifier];

      if (v56)
      {
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        *v42 = v57;
        v42[1] = v59;
      }
    }

    v60 = [v37 temporalEventTrigger];
    v61 = &unk_279C52000;
    v62 = v119;
    if (v60)
    {
      v63 = v60;
      v64 = [v60 dateComponentsRange];

      v65 = [v64 startDate];
      v66 = v121;
      if (v65)
      {
        v67 = v113;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = 0;
      }

      else
      {
        v68 = 1;
        v67 = v113;
      }

      v72 = v122;
      v113 = *(v66 + 56);
      v113(v67, v68, 1, v122);
      outlined init with take of DateInterval?(v67, v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v66 + 48))(v54, 1, v72) != 1)
      {
        v74 = v105;
        (*(v66 + 32))(v105, v54, v72);
        v75 = v115;
        UnknownStorage.init()();
        v76 = v107;
        v77 = v66;
        v78 = v75 + *(v107 + 20);
        *v78 = 0;
        *(v78 + 8) = 1;
        v79 = specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v74);
        (*(v77 + 8))(v74, v72);
        *v78 = v79;
        *(v78 + 8) = 0;
        v80 = v104;
        outlined init with take of ProtoStartCallTaskFeatureSet(v75, v104, type metadata accessor for ProtoDateTimeEntitySignal);
        v81 = v101;
        outlined destroy of DateInterval?(&v30[v101], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
        outlined init with take of ProtoStartCallTaskFeatureSet(v80, &v30[v81], type metadata accessor for ProtoDateTimeEntitySignal);
        v62 = v119;
        v103(&v30[v81], 0, 1, v76);
        v73 = v118;
        v71 = v113;
        v61 = &unk_279C52000;
LABEL_21:
        v82 = [v37 temporalEventTrigger];
        v83 = v116;
        if (v82)
        {
          v84 = v82;
          v85 = [v82 v61[79]];

          v86 = [v85 endDate];
          if (v86)
          {
            v87 = v114;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v88 = 0;
            v89 = v107;
            v90 = v122;
          }

          else
          {
            v88 = 1;
            v89 = v107;
            v90 = v122;
            v87 = v114;
          }

          v92 = v121;
          v71(v87, v88, 1, v90);
          outlined init with take of DateInterval?(v87, v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          if ((*(v92 + 48))(v83, 1, v90) != 1)
          {
            v93 = v106;
            (*(v92 + 32))(v106, v83, v90);
            v94 = v115;
            UnknownStorage.init()();
            v95 = v94 + *(v89 + 20);
            *v95 = 0;
            *(v95 + 8) = 1;
            v96 = specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v93);

            (*(v92 + 8))(v93, v90);
            *v95 = v96;
            *(v95 + 8) = 0;
            v97 = v104;
            outlined init with take of ProtoStartCallTaskFeatureSet(v94, v104, type metadata accessor for ProtoDateTimeEntitySignal);
            v98 = v102;
            outlined destroy of DateInterval?(&v30[v102], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
            outlined init with take of ProtoStartCallTaskFeatureSet(v97, &v30[v98], type metadata accessor for ProtoDateTimeEntitySignal);
            v103(&v30[v98], 0, 1, v89);
            v91 = v112;
            v62 = v119;
            goto LABEL_30;
          }

          v91 = v112;
          v62 = v119;
        }

        else
        {

          v71(v83, 1, 1, v122);
          v91 = v112;
        }

        outlined destroy of DateInterval?(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_30:
        v99 = v117;
        outlined init with copy of ProtoStartCallTaskFeatureSet(v30, v117, type metadata accessor for ProtoReminderTaskFeatureSet);
        outlined destroy of DateInterval?(v34, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
        outlined init with take of ProtoStartCallTaskFeatureSet(v99, v34, type metadata accessor for ProtoReminderTaskFeatureSet);
        v100 = v111;
        swift_storeEnumTagMultiPayload();
        (v110)(v34, 0, 1, v100);
        outlined destroy of ProtoStartCallTaskFeatureSet(v30, type metadata accessor for ProtoReminderTaskFeatureSet);
        outlined init with take of ProtoStartCallTaskFeatureSet(v34, v91, type metadata accessor for ProtoTaskFeatureSet);
        return (*(v120 + 56))(v91, 0, 1, v62);
      }

      v71 = v113;
      v61 = &unk_279C52000;
    }

    else
    {
      v71 = *(v121 + 56);
      v71(v54, 1, 1, v122);
    }

    outlined destroy of DateInterval?(v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v73 = v118;
    goto LABEL_21;
  }

  v69 = *(v120 + 56);

  return v69(a2, 1, 1, v31);
}

Swift::String_optional __swiftcall AlarmIntentFeatureExtractor.deriveAlarmIdentifier(from:)(INInteraction from)
{
  v2 = [(objc_class *)from.super.isa intentResponse];
  v3 = &unk_279C52000;
  if (!v2)
  {
LABEL_14:
    v24 = [(objc_class *)from.super.isa intent];
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.feature);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v64 = v59;
      *v29 = 136315138;
      v30 = v26;
      v31 = v26;
      v32 = v3;
      v33 = [v30 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v3 = v32;
      v26 = v31;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_2691F5000, v27, v28, "Derive alarmIdentifiers from intent %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x26D634770](v59, -1, -1);
      MEMORY[0x26D634770](v29, -1, -1);
    }

    v38 = [v26 _className];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v39 == 0xD000000000000013 && 0x800000026923F4B0 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v42 = MEMORY[0x26D633FA0](0xD000000000000010, 0x800000026923F510);
      v43 = [v26 v3[84]];
    }

    else
    {
      if (v39 == 0xD000000000000013 && 0x800000026923F4D0 == v41)
      {
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {
          v26 = v26;
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v49, v50))
          {

            goto LABEL_37;
          }

          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v64 = v52;
          *v51 = 136315138;
          v53 = [v26 _className];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v64);

          *(v51 + 4) = v57;
          _os_log_impl(&dword_2691F5000, v49, v50, "Skip the alarmID for customized intents %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x26D634770](v52, -1, -1);
          MEMORY[0x26D634770](v51, -1, -1);

          goto LABEL_36;
        }
      }

      v42 = MEMORY[0x26D633FA0](0xD000000000000012, 0x800000026923F4F0);
      v43 = [v26 v3[84]];
    }

    v44 = v43;

    if (v44)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (!*(&v63 + 1))
    {

      outlined destroy of DateInterval?(&v64, &_sypSgMd, &_sypSgMR);
LABEL_37:
      v23 = 0;
      v22 = 0;
      goto LABEL_39;
    }

    if (swift_dynamicCast())
    {
      v45 = specialized static FeatureExtractionUtils.normalizedAlarmIdentifier(from:)(v60, v61);
      v47 = v46;

      v22 = v47;
      v23 = v45;
      goto LABEL_39;
    }

LABEL_36:

    goto LABEL_37;
  }

  v4 = v2;
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.feature);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v64 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v3 = &unk_279C52000;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v64);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2691F5000, v7, v8, "Derive alarmIdentifiers from intentResponse %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D634770](v10, -1, -1);
    MEMORY[0x26D634770](v9, -1, -1);
  }

  v17 = MEMORY[0x26D633FA0](0xD000000000000017, 0x800000026923F530);
  v18 = [v6 v3[84]];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (!*(&v63 + 1))
  {

    outlined destroy of DateInterval?(&v64, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v19 = specialized static FeatureExtractionUtils.normalizedAlarmIdentifier(from:)(v60, v61);
  v21 = v20;

  v22 = v21;
  v23 = v19;
LABEL_39:
  result.value._object = v22;
  result.value._countAndFlagsBits = v23;
  return result;
}

NSDateComponents_optional __swiftcall AlarmIntentFeatureExtractor.deriveAlarmDateComponents(from:)(INIntent from)
{
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.feature);
  v3 = from.super.isa;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v41 = v7;
    *v6 = 136315138;
    v8 = v3;
    v9 = [(objc_class *)v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v41);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_2691F5000, v4, v5, "Derive alarm date components from intent %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D634770](v7, -1, -1);
    MEMORY[0x26D634770](v6, -1, -1);
  }

  v14 = [(objc_class *)v3 _className];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x800000026923F550 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v18 = MEMORY[0x26D633FA0](1701669236, 0xE400000000000000);
    v19 = [(objc_class *)v3 valueForKeyPath:v18];
  }

  else
  {
    if ((v15 != 0xD000000000000013 || 0x800000026923F570 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v15 == 0xD000000000000013 && 0x800000026923F4D0 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 0xD000000000000013 && 0x800000026923F4B0 == v17)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          v27 = v3;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v41 = v31;
            *v30 = 136315138;
            v32 = [(objc_class *)v27 _className];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

            *(v30 + 4) = v36;
            _os_log_impl(&dword_2691F5000, v28, v29, "Skip the alarm date components for customized intents %s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v31);
            MEMORY[0x26D634770](v31, -1, -1);
            MEMORY[0x26D634770](v30, -1, -1);
          }

          goto LABEL_33;
        }
      }

      v23 = MEMORY[0x26D633FA0](0xD000000000000015, 0x800000026923F590);
      v24 = [(objc_class *)v3 valueForKeyPath:v23];

      if (v24)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41 = v39;
      v42 = v40;
      if (*(&v40 + 1))
      {
        if (swift_dynamicCast())
        {
          v25 = specialized static FeatureExtractionUtils.normalizeDisplayDateString(from:)(v37, v38);

          v22 = v25;
          goto LABEL_38;
        }

LABEL_33:
        v22 = 0;
        goto LABEL_38;
      }

LABEL_32:
      outlined destroy of DateInterval?(&v41, &_sypSgMd, &_sypSgMR);
      goto LABEL_33;
    }

    v18 = MEMORY[0x26D633FA0](0x706D6F4365746164, 0xEE0073746E656E6FLL);
    v19 = [(objc_class *)v3 valueForKeyPath:v18];
  }

  v20 = v19;

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    goto LABEL_32;
  }

  type metadata accessor for INPerson(0, &lazy cache variable for type metadata for NSDateComponents, 0x277CBEAB8);
  if (swift_dynamicCast())
  {
    v22 = v37;
  }

  else
  {
    v22 = 0;
  }

LABEL_38:
  result.value.super.isa = v22;
  result.is_nil = v21;
  return result;
}

unint64_t AlarmIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = (&v64 - v8);
  v9 = type metadata accessor for ProtoDateComponentSignal(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v23 = type metadata accessor for ProtoTaskFeatureSet(0);
  v74 = *(v23 - 8);
  v24 = *(v74 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v28 = *(v27 - 8);
  v71 = *(v28 + 56);
  v72 = v27;
  v70 = v28 + 56;
  v71(v26, 1, 1);
  v29 = &v26[*(v23 + 20)];
  UnknownStorage.init()();
  v75 = v23;
  v30 = &v26[*(v23 + 24)];
  *v30 = 0;
  *(v30 + 1) = 0;
  UnknownStorage.init()();
  v31 = &v22[*(v17 + 28)];
  *v31 = 0;
  v31[1] = 0;
  v32 = *(v17 + 32);
  v69 = v10;
  v34 = *(v10 + 56);
  v33 = v10 + 56;
  v77 = v34;
  v34(&v22[v32], 1, 1, v9);
  v35 = (*(*v2 + 80))(a1);
  if (v36)
  {
    *v31 = v35;
    v31[1] = v36;
  }

  v37 = [a1 intent];
  v38 = (*(*v2 + 88))();

  if (!v38)
  {
    goto LABEL_17;
  }

  result = [v38 hour];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v40 = result;
  if (HIDWORD(result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v65 = v38;
  v41 = v68;
  outlined init with copy of ProtoDateComponentSignal?(&v22[v32], v68);
  v42 = *(v69 + 48);
  if ((v42)(v41, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v43 = &v15[v9[5]];
    *v43 = 0;
    v43[4] = 1;
    v44 = &v15[v9[6]];
    *v44 = 0;
    v44[4] = 1;
    v45 = &v15[v9[7]];
    *v45 = 0;
    v45[4] = 1;
    v46 = &v15[v9[8]];
    *v46 = 0;
    v46[4] = 1;
    v47 = &v15[v9[9]];
    *v47 = 0;
    v47[4] = 1;
    v48 = &v15[v9[10]];
    *v48 = 0;
    v48[4] = 1;
    if ((v42)(v41, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v41, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoStartCallTaskFeatureSet(v41, v15, type metadata accessor for ProtoDateComponentSignal);
  }

  v49 = &v15[v9[8]];
  *v49 = v40;
  v49[4] = 0;
  outlined destroy of DateInterval?(&v22[v32], &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  outlined init with take of ProtoStartCallTaskFeatureSet(v15, &v22[v32], type metadata accessor for ProtoDateComponentSignal);
  v77(&v22[v32], 0, 1, v9);
  v50 = v65;
  result = [v65 minute];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v51 = result;
  if (!HIDWORD(result))
  {
    v69 = v33;
    v52 = v66;
    outlined init with copy of ProtoDateComponentSignal?(&v22[v32], v66);
    if ((v42)(v52, 1, v9) == 1)
    {
      v68 = v42;
      v53 = v67;
      UnknownStorage.init()();

      v54 = v53 + v9[5];
      *v54 = 0;
      *(v54 + 4) = 1;
      v55 = v53 + v9[6];
      *v55 = 0;
      *(v55 + 4) = 1;
      v56 = v53 + v9[7];
      *v56 = 0;
      *(v56 + 4) = 1;
      v57 = v53 + v9[8];
      *v57 = 0;
      *(v57 + 4) = 1;
      v58 = v53 + v9[9];
      *v58 = 0;
      *(v58 + 4) = 1;
      v59 = v53 + v9[10];
      *v59 = 0;
      *(v59 + 4) = 1;
      if ((v68)(v52, 1, v9) != 1)
      {
        outlined destroy of DateInterval?(v52, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
      }
    }

    else
    {

      v53 = v67;
      outlined init with take of ProtoStartCallTaskFeatureSet(v52, v67, type metadata accessor for ProtoDateComponentSignal);
    }

    v60 = v53 + v9[9];
    *v60 = v51;
    *(v60 + 4) = 0;
    outlined destroy of DateInterval?(&v22[v32], &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v53, &v22[v32], type metadata accessor for ProtoDateComponentSignal);
    v77(&v22[v32], 0, 1, v9);
LABEL_17:
    v61 = v73;
    outlined init with copy of ProtoStartCallTaskFeatureSet(v22, v73, type metadata accessor for ProtoAlarmTaskFeatureSet);
    outlined destroy of DateInterval?(v26, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v61, v26, type metadata accessor for ProtoAlarmTaskFeatureSet);
    v62 = v72;
    swift_storeEnumTagMultiPayload();
    (v71)(v26, 0, 1, v62);
    outlined destroy of ProtoStartCallTaskFeatureSet(v22, type metadata accessor for ProtoAlarmTaskFeatureSet);
    v63 = v76;
    outlined init with take of ProtoStartCallTaskFeatureSet(v26, v76, type metadata accessor for ProtoTaskFeatureSet);
    return (*(v74 + 56))(v63, 0, 1, v75);
  }

LABEL_21:
  __break(1u);
  return result;
}

void INInteraction.extractFeatures()(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X8>)
{
  v2 = v1;
  v4 = [v1 intent];
  v5 = [v4 _className];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v6 == 0xD000000000000011 && 0x800000026923F550 == v8;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v6 == 0xD000000000000013 ? (v10 = 0x800000026923F4B0 == v8) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v6 == 0xD000000000000013 ? (v11 = 0x800000026923F4D0 == v8) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD000000000000013 && 0x800000026923F570 == v8)))
  {

LABEL_19:
    type metadata accessor for AlarmIntentFeatureExtractor();
    swift_allocObject();
    AlarmIntentFeatureExtractor.extract(from:)(v2, a1);

    return;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.feature);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    v39 = v14;
    v19 = [v14 intent];
    v20 = [v19 _className];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

    *(v17 + 4) = v24;
    v14 = v39;
    _os_log_impl(&dword_2691F5000, v15, v16, "Skip the intent feature extraction for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D634770](v18, -1, -1);
    MEMORY[0x26D634770](v17, -1, -1);
  }

  v25 = [v14 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INStartCallIntentFeatureExtractor();
    swift_initStackObject();
    INStartCallIntentFeatureExtractor.extract(from:)(v14, a1);
LABEL_35:

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INSendMessageIntentFeatureExtractor();
    swift_initStackObject();
    INSendMessageIntentFeatureExtractor.extract(from:)(v14, a1);
    goto LABEL_35;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INSetTaskAttributeIntentFeatureExtractor();
    swift_initStackObject();
    INSetTaskAttributeIntentFeatureExtractor.extract(from:)(v14, a1);
    goto LABEL_35;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INAddTasksIntentFeatureExtractor();
    swift_initStackObject();
    INAddTasksIntentFeatureExtractor.extract(from:)(v14, a1);
    goto LABEL_35;
  }

  v26 = v14;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315138;
    v31 = [v26 intent];
    v32 = [v31 _className];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v40);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_2691F5000, v27, v28, "Skip the feature extraction for intents %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D634770](v30, -1, -1);
    MEMORY[0x26D634770](v29, -1, -1);
  }

  v37 = type metadata accessor for ProtoTaskFeatureSet(0);
  v38 = *(*(v37 - 8) + 56);

  v38(a1, 1, 1, v37);
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    return MEMORY[0x277D84F90];
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
          return MEMORY[0x277D84F90];
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for INPerson(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ProtoDateComponentSignal?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = PSEFeatureStoreManager.getStream(streamId:)(a3, a4);
  if (v10)
  {
    v11 = (*(*v10 + 160))(a1, a2);
    if (v11)
    {
      static SiriTaskEngagementRetriever.convertToProtoSiriTaskEngagement(from:)(v11, a5);

      return swift_unknownObjectRelease();
    }

    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.feature);
    _StringGuts.grow(_:)(50);

    v17 = 0xD000000000000143;
    v18 = 0x800000026923F700;
    MEMORY[0x26D634000](a1, a2);
    Logger.error(_:_:)(0xD000000000000030, 0x800000026923F700, &v17);
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.feature);
    v17 = 325;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x26D634000](0xD000000000000030, 0x800000026923F700);
    MEMORY[0x26D634000](a1, a2);
    MEMORY[0x26D634000](0xD00000000000001BLL, 0x800000026923F740);
    Logger.error(_:_:)(0, 0xE000000000000000, &v17);
  }

  v15 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a5, 1, 1, v15);
}

uint64_t static SiriTaskEngagementRetriever.convertToProtoSiriTaskEngagement(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JSONDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = [a1 json];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for ProtoSiriTaskEngagement(0);
    JSONDecodingOptions.init()();
    lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement();
    Message.init(jsonString:options:)();
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.feature);
    v13 = 322;
    Logger.error(_:_:)(0xD000000000000023, 0x800000026923F7D0, &v13);
    v10 = type metadata accessor for ProtoSiriTaskEngagement(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

void *static SiriTaskEngagementRetriever.retrieveAllSiriTaskEngagement(streamId:)(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0x800000026923B4E0;
  }

  v16 = one-time initialization token for shared;

  if (v16 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v17 = PSEFeatureStoreManager.getStream(streamId:)(v14, v15);

    if (!v17)
    {
      if (one-time initialization token for feature != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.feature);
      LOWORD(v59) = 325;
      Logger.error(_:_:)(0xD00000000000003ELL, 0x800000026923F760, &v59);
      return 0;
    }

    v19 = (*(*v17 + 168))(v18);
    if (!v19)
    {
      if (one-time initialization token for feature != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.feature);
      LOWORD(v59) = 323;
      Logger.error(_:_:)(0xD000000000000023, 0x800000026923F7A0, &v59);

      return 0;
    }

    v21 = v19;
    v22 = v19 & 0xFFFFFFFFFFFFFF8;
    if (!(v19 >> 62))
    {
      v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v17;
      if (!v23)
      {
        break;
      }

      goto LABEL_12;
    }

    if (v19 >= 0)
    {
      v19 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v23 = MEMORY[0x26D634210](v19);
    v45 = v17;
    if (!v23)
    {
      break;
    }

LABEL_12:
    v14 = 0;
    v15 = 0;
    v57 = v21 & 0xC000000000000001;
    v49 = "interaction to Json";
    v53 = (v46 + 56);
    v24 = " siriTaskEngagement";
    v52 = MEMORY[0x277D84F90];
    *&v20 = 136315138;
    v47 = v20;
    v55 = v22;
    v56 = v21;
    v54 = v23;
    v58 = " siriTaskEngagement";
    v48 = v10;
    while (v57)
    {
      v27 = MEMORY[0x26D6341F0](v14, v21);
      v28 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_39;
      }

LABEL_18:
      v29 = [v27 json];
      if (v29)
      {
        v30 = v29;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        JSONDecodingOptions.init()();
        lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement();
        Message.init(jsonString:options:)();
        swift_unknownObjectRelease();
        (*v53)(v10, 0, 1, v11);
        outlined init with take of ProtoSiriTaskEngagement(v10, v50);
        v37 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
        }

        v21 = v56;
        v40 = v37[2];
        v39 = v37[3];
        v52 = v37;
        if (v40 >= v39 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v52);
        }

        v41 = v52;
        v52[2] = v40 + 1;
        outlined init with take of ProtoSiriTaskEngagement(v50, v41 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v40);
        v22 = v55;
      }

      else
      {
        if (one-time initialization token for feature != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.feature);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v59 = v35;
          *v34 = v47;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, v58 | 0x8000000000000000, &v59);
          _os_log_impl(&dword_2691F5000, v32, v33, "%s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x26D634770](v35, -1, -1);
          v36 = v34;
          v24 = v58;
          MEMORY[0x26D634770](v36, -1, -1);
        }

        v21 = v56;
        v25 = specialized static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)(0xD000000000000023, v24 | 0x8000000000000000);
        LOWORD(v59) = 322;
        specialized static CoreAnalyticsService.submitReliabilityAnalytics(category:reason:)(&v59, v25, v26);
        swift_unknownObjectRelease();

        v22 = v55;
        (*v53)(v10, 1, 1, v11);
        outlined destroy of ProtoSiriTaskEngagement?(v10);
      }

      v24 = v58;
      ++v14;
      if (v28 == v54)
      {
        goto LABEL_46;
      }
    }

    if (v14 >= *(v22 + 16))
    {
      goto LABEL_40;
    }

    v27 = *(v21 + 8 * v14 + 32);
    swift_unknownObjectRetain();
    v28 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_18;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v52 = MEMORY[0x277D84F90];
LABEL_46:

  return v52;
}

uint64_t outlined destroy of ProtoSiriTaskEngagement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement()
{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement)
  {
    type metadata accessor for ProtoSiriTaskEngagement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement);
  }

  return result;
}

uint64_t outlined init with take of ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoSiriTaskEngagement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SiriTaskEngagementRetriever(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriTaskEngagementRetriever(_WORD *result, int a2, int a3)
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

uint64_t ProtoSiriTaskInteractionType.includesPrompt.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesPrompt.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskInteractionType.includesPrompt.modify;
}

uint64_t ProtoSiriTaskInteractionType.includesConfirm.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesConfirm.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoSiriTaskInteractionType.includesDisambiguate.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesDisambiguate.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoSiriTaskInteractionType.includesUnsupportedPrompt.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesUnsupportedPrompt.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

int *ProtoSiriTaskInteractionType.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.requestIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskCompletion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskCompletion.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.taskCompletion.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskSuccess.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = *(v1 + *(result + 28));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskSuccess.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.taskSuccess.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return ProtoSiriTaskInteractionType.includesPrompt.modify;
}

uint64_t ProtoSiriTaskEvaluationSummary.interactionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 32), v6, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v8 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v6, a1, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoSiriTaskEvaluationSummary.interactionType : ProtoSiriTaskEvaluationSummary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 32), v7, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v9 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v7, a2, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  UnknownStorage.init()();
  *(a2 + v9[5]) = 2;
  *(a2 + v9[6]) = 2;
  *(a2 + v9[7]) = 2;
  *(a2 + v9[8]) = 2;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoSiriTaskEvaluationSummary.interactionType : ProtoSiriTaskEvaluationSummary(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType(a1, v8, type metadata accessor for ProtoSiriTaskInteractionType);
  v9 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  outlined init with take of ProtoSiriTaskInteractionType(v8, a2 + v9, type metadata accessor for ProtoSiriTaskInteractionType);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoSiriTaskEvaluationSummary.interactionType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  outlined init with take of ProtoSiriTaskInteractionType(a1, v1 + v3, type metadata accessor for ProtoSiriTaskInteractionType);
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoSiriTaskEvaluationSummary.interactionType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskInteractionType(v8, v14, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  return ProtoSiriTaskEvaluationSummary.interactionType.modify;
}

void ProtoSiriTaskEvaluationSummary.interactionType.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoSiriTaskInteractionType((*a1)[5], v4, type metadata accessor for ProtoSiriTaskInteractionType);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    outlined init with take of ProtoSiriTaskInteractionType(v4, v9 + v3, type metadata accessor for ProtoSiriTaskInteractionType);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoSiriTaskInteractionType(v5, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    outlined init with take of ProtoSiriTaskInteractionType(v5, v9 + v3, type metadata accessor for ProtoSiriTaskInteractionType);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoSiriTaskEvaluationSummary.hasInteractionType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v0 + *(v5 + 32), v4, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v6 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of DateInterval?(v4, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  return v7;
}

Swift::Void __swiftcall ProtoSiriTaskEvaluationSummary.clearInteractionType()()
{
  v1 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  outlined destroy of DateInterval?(v0 + v1, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v2 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoSiriTaskEvaluationSummary.startTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ProtoSiriTaskEvaluationSummary.startTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.startTimestampMs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoSiriTaskEvaluationSummary.clearStartTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoSiriTaskEvaluationSummary.endTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ProtoSiriTaskEvaluationSummary.endTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.endTimestampMs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoDateTimeEntitySignal.datetimeTimestampMs.modify;
}

Swift::Void __swiftcall ProtoSiriTaskEvaluationSummary.clearEndTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoSiriTaskEvaluationSummary.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoSiriTaskEvaluationSummary.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoSiriTaskEvaluationSummary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  *(a1 + v2[6]) = 5;
  *(a1 + v2[7]) = 5;
  v4 = v2[8];
  v5 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t ProtoSiriTaskEngagement.taskID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoSiriTaskEngagement.taskID : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for ProtoSiriTaskEngagement.taskID : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = v8[3];
  v8[2] = v4;
  v8[3] = v3;
}

uint64_t ProtoSiriTaskEngagement.taskID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = v9[3];
  v9[2] = a1;
  v9[3] = a2;
}

void (*ProtoSiriTaskEngagement.taskID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.taskID.modify;
}

void ProtoSiriTaskEngagement.taskID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = v10[3];
    v10[2] = v3;
    v10[3] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = v21[3];
    v21[2] = v3;
    v21[3] = v5;
  }

  free(v2);
}

BOOL ProtoSiriTaskEngagement.hasTaskID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall ProtoSiriTaskEngagement.clearTaskID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = v5[3];
  v5[2] = 0;
  v5[3] = 0;
}

uint64_t ProtoSiriTaskEngagement.taskName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoSiriTaskEngagement.taskName : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for ProtoSiriTaskEngagement.taskName : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = v8[5];
  v8[4] = v4;
  v8[5] = v3;
}

uint64_t ProtoSiriTaskEngagement.taskName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = v9[5];
  v9[4] = a1;
  v9[5] = a2;
}

void (*ProtoSiriTaskEngagement.taskName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.taskName.modify;
}

void ProtoSiriTaskEngagement.taskName.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = v10[5];
    v10[4] = v3;
    v10[5] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = v21[5];
    v21[4] = v3;
    v21[5] = v5;
  }

  free(v2);
}

BOOL ProtoSiriTaskEngagement.hasTaskName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall ProtoSiriTaskEngagement.clearTaskName()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = v5[5];
  v5[4] = 0;
  v5[5] = 0;
}

uint64_t ProtoSiriTaskEngagement.evaluationSummary.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v6 + v7, v5, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v8 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v5, a1, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + v8[5];
  UnknownStorage.init()();
  *(a1 + v8[6]) = 5;
  *(a1 + v8[7]) = 5;
  v11 = v8[8];
  v12 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  v14[8] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v5, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.evaluationSummary : ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType(a1, v12, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  v13 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  outlined init with take of ProtoSiriTaskInteractionType(v12, v7, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v7, v16 + v21, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.evaluationSummary.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of ProtoSiriTaskInteractionType(a1, v7, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  v16 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v7, v11 + v17, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  return swift_endAccess();
}

void (*ProtoSiriTaskEngagement.evaluationSummary.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v16 + v17, v8, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    *(v14 + v9[6]) = 5;
    *(v14 + v9[7]) = 5;
    v20 = v9[8];
    v21 = type metadata accessor for ProtoSiriTaskInteractionType(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[8] = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    v23[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskInteractionType(v8, v14, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  }

  return ProtoSiriTaskEngagement.evaluationSummary.modify;
}

uint64_t ProtoSiriTaskEngagement.siriTaskFeatureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v8 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v7 + v8, v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v6, a1, type metadata accessor for ProtoTaskFeatureSet);
  }

  v11 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  v12 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  v13 = (a1 + *(v9 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoSiriTaskEngagement.siriTaskFeatureSet : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v9 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v8 + v9, v7, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v10 = type metadata accessor for ProtoTaskFeatureSet(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v7, a2, type metadata accessor for ProtoTaskFeatureSet);
  }

  v12 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  v13 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  v14 = (a2 + *(v10 + 24));
  *v14 = 0;
  v14[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.siriTaskFeatureSet : ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ProtoTaskFeatureSet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType(a1, v12, type metadata accessor for ProtoTaskFeatureSet);
  v13 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  outlined init with take of ProtoSiriTaskInteractionType(v12, v7, type metadata accessor for ProtoTaskFeatureSet);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v7, v16 + v21, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.siriTaskFeatureSet.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of ProtoSiriTaskInteractionType(a1, v7, type metadata accessor for ProtoTaskFeatureSet);
  v16 = type metadata accessor for ProtoTaskFeatureSet(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v7, v11 + v17, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  return swift_endAccess();
}

void (*ProtoSiriTaskEngagement.siriTaskFeatureSet.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v16 + v17, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    v21 = (v14 + *(v9 + 24));
    *v21 = 0;
    v21[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskInteractionType(v8, v14, type metadata accessor for ProtoTaskFeatureSet);
  }

  return ProtoSiriTaskEngagement.siriTaskFeatureSet.modify;
}

void ProtoSiriTaskEngagement.evaluationSummary.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    outlined init with copy of ProtoSiriTaskInteractionType(*(v8 + 120), *(v8 + 112), a3);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      v16 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v19;
      v13 = v19;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v22 = *(v8 + 96);
    v23 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    outlined init with take of ProtoSiriTaskInteractionType(v21, v25, a3);
    (*(v23 + 56))(v25, 0, 1, v22);
    v26 = *a4;
    swift_beginAccess();
    outlined assign with take of ProtoSiriTaskEvaluationSummary?(v25, v13 + v26, a5, a6);
    swift_endAccess();
    outlined destroy of ProtoSiriTaskInteractionType(v20, a3);
  }

  else
  {
    v27 = *(v8 + 72);
    v28 = *(v27 + v9);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v27 + v9);
    if ((v29 & 1) == 0)
    {
      v31 = *(v8 + 128);
      v32 = *(v8 + 72);
      v33 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v30);

      *(v32 + v31) = v36;
      v30 = v36;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v37 = *(v8 + 96);
    v38 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    outlined init with take of ProtoSiriTaskInteractionType(v20, v25, a3);
    (*(v38 + 56))(v25, 0, 1, v37);
    v39 = *a4;
    swift_beginAccess();
    outlined assign with take of ProtoSiriTaskEvaluationSummary?(v25, v30 + v39, a5, a6);
    swift_endAccess();
  }

  free(v20);
  free(v21);
  free(v24);
  free(v25);

  free(v8);
}

BOOL ProtoSiriTaskEngagement.hasEvaluationSummary.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of DateInterval?(v12, a1, a2);
  return v16;
}

uint64_t ProtoSiriTaskEngagement.clearEvaluationSummary()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.followupTimeWindowInMs.getter()
{
  v1 = (*(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs);
  swift_beginAccess();
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoSiriTaskEngagement.followupTimeWindowInMs : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 8))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.followupTimeWindowInMs : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  result = swift_beginAccess();
  *v12 = v3;
  v12[8] = 0;
  return result;
}

uint64_t ProtoSiriTaskEngagement.followupTimeWindowInMs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  result = swift_beginAccess();
  *v12 = a1;
  v12[8] = 0;
  return result;
}

void (*ProtoSiriTaskEngagement.followupTimeWindowInMs.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return ProtoSiriTaskEngagement.followupTimeWindowInMs.modify;
}

void ProtoSiriTaskEngagement.followupTimeWindowInMs.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = v7 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  *v14 = v2;
  v14[8] = 0;

  free(v1);
}

BOOL ProtoSiriTaskEngagement.hasFollowupTimeWindowInMs.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  return (*(v1 + 8) & 1) == 0;
}

Swift::Void __swiftcall ProtoSiriTaskEngagement.clearFollowupTimeWindowInMs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = v5 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  *v10 = 0;
  v10[8] = 1;
}

uint64_t ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t key path getter for ProtoSiriTaskEngagement.followupUserInitatedEngagements : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for ProtoSiriTaskEngagement.followupUserInitatedEngagements : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = v3;
}

uint64_t ProtoSiriTaskEngagement.followupUserInitatedEngagements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = a1;
}

void (*ProtoSiriTaskEngagement.followupUserInitatedEngagements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return ProtoSiriTaskEngagement.followupUserInitatedEngagements.modify;
}

void ProtoSiriTaskEngagement.followupUserInitatedEngagements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
    swift_beginAccess();
    v18 = *(v10 + v17);
    *(v10 + v17) = v3;

    v19 = *v4;
  }

  else
  {
    v20 = *(v6 + v5);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v5);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 88);
      v24 = *(v2 + 80);
      v25 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v22);

      *(v24 + v23) = v28;
      v22 = v28;
    }

    v29 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
    swift_beginAccess();
    v30 = *(v22 + v29);
    *(v22 + v29) = v3;
  }

  free(v2);
}

void (*ProtoSiriTaskEngagement.nextTaskID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.nextTaskID.modify;
}

uint64_t ProtoSiriTaskEngagement.nextTaskID.getter(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoSiriTaskEngagement.nextTaskID : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t key path setter for ProtoSiriTaskEngagement.nextTaskID : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v12);

    *(a2 + v9) = v16;
    v12 = v16;
  }

  v17 = (v12 + *a5);
  swift_beginAccess();
  v18 = v17[1];
  *v17 = v8;
  v17[1] = v7;
}

uint64_t ProtoSiriTaskEngagement.nextTaskID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v11);

    *(v5 + v8) = v15;
    v11 = v15;
  }

  v16 = (v11 + *a3);
  swift_beginAccess();
  v17 = v16[1];
  *v16 = a1;
  v16[1] = a2;
}

void (*ProtoSiriTaskEngagement.previousTaskID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.previousTaskID.modify;
}

void ProtoSiriTaskEngagement.nextTaskID.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = (v12 + *a3);
    swift_beginAccess();
    v20 = v19[1];
    *v19 = v5;
    v19[1] = v7;

    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = (v24 + *a3);
    swift_beginAccess();
    v32 = v31[1];
    *v31 = v5;
    v31[1] = v7;
  }

  free(v4);
}