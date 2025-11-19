void sub_1B8D1D74C()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D1D7B0()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D1D860()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
      v7 = *(v2 + 32);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D1D910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F58, &qword_1B964D750);
    OUTLINED_FUNCTION_194_1();
    v8 = a1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8D1D9B0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = OUTLINED_FUNCTION_231();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F58, &qword_1B964D750);
    OUTLINED_FUNCTION_196_2();
    v8 = a1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v9);
}

uint64_t sub_1B8D1DB48()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Visualsearch_V2_VisualSearchRequest.includeDomains.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D1DBEC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Visualsearch_V2_VisualSearchRequest.debugTweaks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D1DC18()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyTeamID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1DC44()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyCatalogIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D1DC70()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D1DF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D1DFB0()
{
  OUTLINED_FUNCTION_178_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v1)
  {
    v9 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v9, v3, v3, v10);
  }

  else
  {
    *(v5 + *(v0 + 20)) = (v3 - 1);
  }

  return result;
}

uint64_t sub_1B8D1E04C()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D1E0AC()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D1E10C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D1E1B8()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
      v7 = *(v2 + 28);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D1E26C()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D1E2CC()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D1E32C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D1E390()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D1E3F0()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F30, &qword_1B964D730);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = *(v2 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F10, &unk_1B964D710);
      v7 = *(v2 + 32);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D1E4E8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F30, &qword_1B964D730);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = *(v0 + 28);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F10, &unk_1B964D710);
        v5 = *(v0 + 32);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D1E5E4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D1E648()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D1E6A8()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  OUTLINED_FUNCTION_128_1(v7);
  if (*(v8 + 84) == v6)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    sub_1B964C2B0();
    v9 = *(v5 + 28);
  }

  v10 = OUTLINED_FUNCTION_699(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D1E760()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      sub_1B964C2B0();
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8D1E8C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  if (*(*(sub_1B964C2B0() - 8) + 84) == a2)
  {
    v5 = *(a3 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
    v5 = *(a3 + 44);
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D1E984()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_1B964C2B0() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
      v8 = *(v5 + 44);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8D1EA48(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D1EABC()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D1EB34@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Zkw_V1alpha_TopicType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D1ED90(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = *(a3 + 28);
  }

  else
  {
    sub_1B964C2B0();
    v8 = *(a3 + 32);
  }

  v9 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D1EE50()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 28);
    }

    else
    {
      sub_1B964C2B0();
      v8 = *(v4 + 32);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8D1EF18()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_209();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1B8D1EF64()
{
  OUTLINED_FUNCTION_468();
  v2 = *(v1 + 20);
  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_209();

  return __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
}

uint64_t sub_1B8D1EFB4()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 24);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_209();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1B8D1F000()
{
  OUTLINED_FUNCTION_468();
  v2 = *(v1 + 24);
  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_209();

  return __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
}

uint64_t sub_1B8D1F050(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D1F0C4()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D1F13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE08, &qword_1B96B6C50);
    v7 = *(a3 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_1B8D1F1D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 24);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE08, &qword_1B96B6C50);
    v12 = *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1B8D1F314()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F340()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.labelForLocalMedia.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F36C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ActionItem.isOverlay.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D1F3B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.storeIdentifiers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D1F3E4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ActionItem.requiresLocalMedia.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D1F430()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.localMediaIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F4C4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.applicationBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F4F0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.contactIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F51C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.phoneNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F548()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.email.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F574()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.mapsData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F670()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.provider.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F69C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.offerType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F6C8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F6F4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.labelItunes.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F720()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ActionItem.isItunes.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D1F8B4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.messageIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F958()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.persistentID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1F9DC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.universalLibraryID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1FA08()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ActionItem.interactionContentType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D1FA9C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ActionItem.shouldSearchDirectionsAlongCurrentRoute.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D1FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D1FCB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
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

uint64_t sub_1B8D1FD5C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v7 = sub_1B964C2B0();
  v8 = OUTLINED_FUNCTION_128_1(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[7];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
    v13 = OUTLINED_FUNCTION_128_1(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
      v11 = a3[9];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_1B8D1FE70(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v12 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D1FFD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D200B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D20184(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D2020C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D202D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D203B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D20544(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1B8D20664(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D207CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D208A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D209B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D209E4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D20A10()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D20A3C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.canBeHidden.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D20A90()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.hasTopPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D20AE4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.hasBottomPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D20B38()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D20C8C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.playCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D20CB8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AudioPlaybackCardSection.stopCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D20E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D20F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D2100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D21094(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D212A0(uint64_t *a1, uint64_t a2, int *a3)
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
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[12];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[13];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
        v17 = OUTLINED_FUNCTION_128_1(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[14];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
          v12 = a3[15];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1B8D2140C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[12];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[13];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
        v17 = OUTLINED_FUNCTION_128_1(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[14];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
          v12 = a4[15];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D21614(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B964C2B0();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
      v12 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(&a1[v12], a2, v11);
  }
}

_BYTE *sub_1B8D216EC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(&v5[v10], a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D21BAC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_CardType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D21D98@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_StoreButtonItem.StoreButtonItemIdentifierType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D22150()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B92C8A2C();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8D22BFC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22C80()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.cardSections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D22CAC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.intentMessageData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22CD8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.intentMessageName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22D04()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.intentResponseMessageData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22D30()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.intentResponseMessageName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22D5C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.dismissalCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D22D88()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.cardID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22DB4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.contextReferenceIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22EA0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.entityIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22ECC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.resultIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22EF8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D22F44()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.fbr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D22F70()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_Card.flexibleSectionOrder.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D22FBC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Card.entityProtobufMessages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D234E8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.commands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D23514()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.parameterKeyPaths.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D23540()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2356C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.resultIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D236D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.previewButtonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D236FC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.cardSectionDetail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D23728()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.previewButtonItemsTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D237BC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CardSection.shouldHideInAmbientMode.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D23808()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.leadingSwipeButtonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D23834()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.trailingSwipeButtonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D23860()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2388C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D238B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D238E4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D23930()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2397C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D23A20()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.referencedCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D23A4C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CardSection.forceEnable3Dtouch.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D23A98()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CardSection.shouldShowInSmartDialog.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D23B4C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.emphasisSubjectID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D23C90()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.racFeedbackSubfeatureID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D23CBC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.racFeedbackLoggingContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D23CE8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CardSection.copyableItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D272BC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DetailedRowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D272E8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DetailedRowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D27314()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DetailedRowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D27340()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2738C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D273D8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27424()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DetailedRowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D27578()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.preventThumbnailImageScaling.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D276FC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.isSecondaryTitleDetached.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27748()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DetailedRowCardSection.descriptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D279F4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.shouldUseCompactDisplay.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27A40()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DetailedRowCardSection.buttonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D27AD4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DetailedRowCardSection.buttonItemsAreTrailing.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27D28()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D27D54()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D27D80()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D27DAC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_HeroCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27DF8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_HeroCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27E44()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_HeroCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D27E90()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2804C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroCardSection.buttonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D28138()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroTitleCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D28164()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroTitleCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D28190()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroTitleCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D281BC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_HeroTitleCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D28208()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_HeroTitleCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D28254()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_HeroTitleCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D282A0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroTitleCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2845C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroTitleCardSection.buttonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D28488()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_HeroTitleCardSection.maxVisibleButtonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2853C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CollectionCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D28568()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CollectionCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D28594()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CollectionCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D285C0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CollectionCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2860C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CollectionCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D28658()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CollectionCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D286A4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CollectionCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D28790()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CollectionCardSection.cardSections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D28BB4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CommandRowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D28BE0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CommandRowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D28C0C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CommandRowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D28C38()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CommandRowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D28C84()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CommandRowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D28CD0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CommandRowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D28D1C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CommandRowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D29078()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_LargeTitleDetailedRowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D290A4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_LargeTitleDetailedRowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D290D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_LargeTitleDetailedRowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D290FC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_LargeTitleDetailedRowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D29148()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_LargeTitleDetailedRowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D29194()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_LargeTitleDetailedRowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D291E0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_LargeTitleDetailedRowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2939C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_LargeTitleDetailedRowCardSection.trailingButtonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2AEE0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Command.commandDetail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2AF84()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Command.backendData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2B398()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PerformEntityQueryCommand.searchString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2B3C4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PerformEntityQueryCommand.tokenString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2B4C0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PerformEntityQueryCommand.entityIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2B68C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PerformEntityQueryCommand.filterQueries.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2B6B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PerformEntityQueryCommand.enabledDomains.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2B6E4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PerformEntityQueryCommand.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2BA70()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ShowPhotosOneUpViewCommand.matchedScenes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2BA9C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ShowPhotosOneUpViewCommand.matchedPeople.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2C228()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_PlayMediaCommand.shouldPause.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C344()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ListenToCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2C370()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ListenToCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2C39C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ListenToCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2C3C8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ListenToCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C414()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ListenToCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C460()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ListenToCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C4AC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ListenToCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2C678()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchNowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2C6A4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchNowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2C6D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchNowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2C6FC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_WatchNowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C748()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_WatchNowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C794()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_WatchNowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2C7E0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchNowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2C8CC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchNowCardSection.sectionTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2D5F8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ButtonItem.uniqueID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2D8B4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListButtonItem.uniqueID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2DD20()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_PlayAudioButtonItem.uniqueID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2DD6C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2DD98()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2DDC4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2DDF0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ScoreboardCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2DE3C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ScoreboardCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2DE88()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_ScoreboardCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2DED4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2DFC0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2DFEC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.subtitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2E0E8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.accessibilityDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2E114()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_ScoreboardCardSection.eventStatus.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2E480()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RFFactItemButtonCardSection.text4.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2E5E4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RFFactItemButtonCardSection.buttonItemsAreBottom.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2F058()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RFSummaryItemPairNumberCardSection.text5.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2F564()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2F590()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F5BC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F5E8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2F634()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2F680()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2F6CC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F7B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F7E4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.subtitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F810()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.contentAdvisory.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F8A4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.isCentered.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2F8F0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.descriptionText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2F96C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.ratingText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2FA00()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.reviewText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2FA2C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.reviewNewLine.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2FA78()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.moreGlyphs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2FAA4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.auxiliaryTopText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2FAD0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.auxiliaryMiddleText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2FAFC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.auxiliaryBottomText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2FB80()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.auxiliaryAlignment.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2FBD0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.hideVerticalDivider.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2FC74()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.titleWeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2FCC4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.titleNoWrap.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2FD10()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.thumbnailCropCircle.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2FE84()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.offers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2FEB0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.footnote.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D2FF44()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RichTitleCardSection.subtitleIsEmphasized.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D2FF90()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RichTitleCardSection.buttonItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2FFBC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AttributionFooterCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D2FFE8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AttributionFooterCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D30014()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AttributionFooterCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D30040()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_AttributionFooterCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3008C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_AttributionFooterCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D300D8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_AttributionFooterCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D30124()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_AttributionFooterCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D30488()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8D304E8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D30548()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_622_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D305A8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D30610()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1B8, &qword_1B96B94C0);
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == v5)
  {
    OUTLINED_FUNCTION_706_0();
  }

  else
  {
    sub_1B964C2B0();
    v8 = *(v4 + 48);
  }

  v9 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D306C4()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1B8, &qword_1B96B94C0);
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_682_0();
    }

    else
    {
      sub_1B964C2B0();
      v5 = *(v0 + 48);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8D30798()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    v7 = *(v2 + 64);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D30848()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v5 = *(v0 + 64);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8D30908()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_1364();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = *(v2 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
      v7 = *(v2 + 64);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D30A00()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_1378();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = *(v0 + 60);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
        v5 = *(v0 + 64);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D30AFC()
{
  OUTLINED_FUNCTION_761();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_266();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1B8D30B90()
{
  OUTLINED_FUNCTION_365_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8D30C24()
{
  OUTLINED_FUNCTION_1273();
  if (v0)
  {
    OUTLINED_FUNCTION_1242();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v6 = OUTLINED_FUNCTION_351_0();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1B8D30C8C()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D30CF0()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 24);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D30D40()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8D30D98()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC670, &qword_1B96B99E8);
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v3)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_622_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D30E48()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_633_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D30FD0()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_706_0();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8D3102C()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_682_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D31130()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 32));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_622_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_706_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D311D8()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v4 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_633_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      OUTLINED_FUNCTION_682_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D31364(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_450_0();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D313C4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 12)
  {
    OUTLINED_FUNCTION_536_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();

    __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v5);
  }
}

uint64_t sub_1B8D31480()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_622_0();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC688, &qword_1B96B99F8);
      OUTLINED_FUNCTION_128_1(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_678_0();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
        OUTLINED_FUNCTION_128_1(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = *(v1 + 44);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
          OUTLINED_FUNCTION_1364();
        }
      }
    }
  }

  v13 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_1B8D31600()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_633_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC688, &qword_1B96B99F8);
        OUTLINED_FUNCTION_128_1(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_684_0();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
          OUTLINED_FUNCTION_128_1(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = *(v0 + 44);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
            OUTLINED_FUNCTION_1378();
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1B8D31800()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 48));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8D31860()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 48));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D319F0()
{
  OUTLINED_FUNCTION_1273();
  if (v1)
  {
    v2 = *(v0 + 9);
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v6 = OUTLINED_FUNCTION_351_0();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1B8D31A60()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 254)
  {
    *(v1 + 9) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D31B5C()
{
  OUTLINED_FUNCTION_1273();
  if (v2)
  {
    v3 = *(v1 + 41);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_622_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      OUTLINED_FUNCTION_706_0();
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1B8D31C14()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *(v1 + 41) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v4 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_633_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      OUTLINED_FUNCTION_682_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D31CC8()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v3 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_622_0();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_706_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
      OUTLINED_FUNCTION_678_0();
    }
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D31DB4()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_633_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
      OUTLINED_FUNCTION_128_1(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_682_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
        OUTLINED_FUNCTION_684_0();
      }
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D31EA8()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v3 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
    OUTLINED_FUNCTION_622_0();
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D31F4C()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
      OUTLINED_FUNCTION_633_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D31FF8()
{
  OUTLINED_FUNCTION_761();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6E0, &qword_1B96B9A58);
    OUTLINED_FUNCTION_266();
  }

  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_1B8D32088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_797();
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6E0, &qword_1B96B9A58);
    v9 = *(a4 + 24);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B8D321E4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_706_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_678_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
      v6 = *(v1 + 44);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D322D4()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_682_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_684_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
        v5 = *(v0 + 44);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D323CC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
      OUTLINED_FUNCTION_706_0();
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D324BC()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
        OUTLINED_FUNCTION_682_0();
      }
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D325B0()
{
  OUTLINED_FUNCTION_761();
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_128_1(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_706_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
        OUTLINED_FUNCTION_678_0();
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1B8D326D4()
{
  OUTLINED_FUNCTION_365_0();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_128_1(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_682_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
        OUTLINED_FUNCTION_684_0();
      }
    }
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B8D327F8()
{
  OUTLINED_FUNCTION_761();
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
      OUTLINED_FUNCTION_267_0();
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1B8D328D4()
{
  OUTLINED_FUNCTION_365_0();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
      OUTLINED_FUNCTION_259_0();
    }
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B8D329B0()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_622_0();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_706_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 52);
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1B8D32AEC()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_633_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
        OUTLINED_FUNCTION_128_1(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_682_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
          v5 = *(v0 + 52);
        }
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D32C74()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8D32CD4()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D32D30()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D32DD8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
      OUTLINED_FUNCTION_259_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D33264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D33310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D33488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v3 + v10, a2, v9);
}

uint64_t sub_1B8D33528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1B8D335D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_1();
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
    v8 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8D33670(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_28_1();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a3)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
    v10 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1B8D33750()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CompactRowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3377C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CompactRowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D337A8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CompactRowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D337D4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CompactRowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D33820()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CompactRowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3386C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CompactRowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D338B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_CompactRowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D33A34()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_CompactRowCardSection.isSubtitleDetatched.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D33AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D33BA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D342E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D3437C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_187_2();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8D3441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_187_2();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D344B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_187_2();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1B8D34554()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D345B8()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D34628()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[9];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
      v7 = v2[11];
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D34724()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
        v9 = v5[11];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

uint64_t sub_1B8D34840@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_EmbeddingStatusType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D348A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B964C2B0();
    v11 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_1B8D34930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D349AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D34A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D34A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D34AE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D34BBC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D34BE8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D34C14()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D34C40()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DescriptionCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D34C8C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DescriptionCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D34CD8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DescriptionCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D34D24()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D34E20()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D34E4C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.subtitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D34EF0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.expandText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D34F84()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DescriptionCardSection.titleNoWrap.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D34FD0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.titleWeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D35020()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.descriptionSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D35070()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.descriptionWeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D350C0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_DescriptionCardSection.descriptionExpand.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D351BC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.attributionText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D352C8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_DescriptionCardSection.richDescriptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D352F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D353A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D354FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8D355D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D356D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D35758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D357D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D3582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D358AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8D35954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1B8D35A28()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D35A54()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D35A80()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D35AAC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.canBeHidden.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D35B00()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.hasTopPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D35B54()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.hasBottomPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D35BA8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D35CAC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightCardSection.selectedLegIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D35CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D35DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D35E60@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PegasusFlightState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D3608C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightLeg.departureTerminal.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D360B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightLeg.departureGate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3621C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightLeg.arrivalTerminal.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D36248()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightLeg.arrivalGate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D36344()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightLeg.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D36370()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_FlightLeg.baggageClaim.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D36AA4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 52));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D36B08()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 52));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D36B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D36C10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
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

uint64_t sub_1B8D36CB4()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[13];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      v7 = v2[15];
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D36DB0()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[13];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
        v9 = v5[15];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

uint64_t sub_1B8D36EBC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 32));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D36F20()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D36F90(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
    v7 = *(a3 + 24);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_1B8D37030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1B8D370DC()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D3718C()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
      v9 = *(v5 + 24);
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_1B8D37314(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B964C2B0();
    v11 = OUTLINED_FUNCTION_128_1(v10);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = a3[8];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
      v16 = OUTLINED_FUNCTION_128_1(v15);
      if (*(v17 + 84) == a2)
      {
        v13 = v16;
        v14 = a3[9];
      }

      else
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v14 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v14], a2, v13);
  }
}

_BYTE *sub_1B8D37434(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[8];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v12 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(&v5[v12], a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D375EC()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D3763C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8D37690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_1B8D37734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_1B8D37808(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8E50, &qword_1B964D650);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8D378E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8E50, &qword_1B964D650);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D379B8@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_AppIconType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D37BCC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.imageData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D37BF8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.isTemplate.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D37C4C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.shouldCropToCircle.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D37DE8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.contentType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D37E14()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.keyColor.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D37E40()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D37F1C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_Image.accessibilityLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D38948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D389E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_81_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8D38AC8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D38B2C()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D38B98()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D38BE8()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8D38C68()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D38CCC()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 40));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D38D2C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D38D7C()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8D38DCC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D38E30()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D38F24(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D38FFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D390E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D39138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D39264(uint64_t *a1, uint64_t a2, int *a3)
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
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[13];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[14];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v12 = a3[15];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1B8D39384(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[13];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[14];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
        v12 = a4[15];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D394A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D39518()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D39588(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*a1);
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D39600()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D39680(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D39708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D397B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8D39888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D399B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D39B30()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MailRankingSignals.wasReorderedByRecency.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D39B7C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.numEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39BCC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.numDaysEngagedLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39C1C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.averageEngagementAgeLast7Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39C68()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.averageEngagementAgeLast14Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39CB4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.averageEngagementAgeLast21Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39D00()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.averageEngagementAgeLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39D4C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.daysSinceReceipt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D39E34()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MailRankingSignals.isFlagged.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D39E80()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MailRankingSignals.isRepliedTo.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D39ECC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MailRankingSignals.isSemanticMatch.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D39F18()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MailRankingSignals.isSyntacticMatch.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D39FFC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A048()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A094()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A0E0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A12C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A178()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A1C4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A210()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A25C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A2A8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A2F4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A340()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A38C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A3D8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A424()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A470()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A4BC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A508()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A554()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A5A0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A5EC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A638()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A684()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A6D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A71C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A768()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A7B4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A800()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A84C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A898()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A8E4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A930()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A97C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3A9C8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AA14()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AA60()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AAAC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AAF8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AB44()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AB90()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3ABDC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AC28()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AC74()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3ACC0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AD0C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AD58()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3ADA4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3ADF0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AE3C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AE88()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AED4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AF20()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AF6C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3AFB8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D3B0AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D3B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D3B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D3B27C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3B2A8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3B2D4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3B300()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MapCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3B34C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MapCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3B398()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MapCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3B3E4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3B5A0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.footnoteLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3B5CC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.footnote.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3B5F8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MapCardSection.interactive.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3B76C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MapCardSection.pins.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3B868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D3B900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8D3B9A0()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 36);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D3B9F0()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 36);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8D3BA44(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v7 = sub_1B964C2B0();
  v8 = OUTLINED_FUNCTION_128_1(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[9];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
    v13 = OUTLINED_FUNCTION_128_1(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[10];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v11 = a3[11];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sub_1B8D3BB58()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1B964C2B0();
    v7 = OUTLINED_FUNCTION_128_1(v6);
    if (*(v8 + 84) == v5)
    {
      v9 = v7;
      v10 = v4[9];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      v12 = OUTLINED_FUNCTION_128_1(v11);
      if (*(v13 + 84) == v5)
      {
        v9 = v12;
        v10 = v4[10];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
        v10 = v4[11];
      }
    }

    __swift_storeEnumTagSinglePayload(v1 + v10, v0, v0, v9);
  }
}

uint64_t sub_1B8D3BCBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D3BD94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3BEB4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D3BF8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3C0B0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3C0DC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C108()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C134()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MediaInfoCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3C180()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MediaInfoCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3C1CC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MediaInfoCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3C218()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C38C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.details.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3C430()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.offers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3C45C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.watchListIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C488()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.watchListButtonLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C4B4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.watchListContinuationText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C4E0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaInfoCardSection.watchListConfirmationText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C50C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_MediaInfoCardSection.isMediaContainer.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3C628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D3C6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D3C80C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaItem.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3C9D8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaItem.reviewText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3CA7C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaItem.subtitleCustomLineBreaking.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3CAA8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaItem.buyOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3CAD4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MediaItem.contentAdvisory.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3CB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v7 = sub_1B964C2B0();
  v8 = OUTLINED_FUNCTION_128_1(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 20);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
    v11 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_1B8D3CC30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
      v12 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D3CD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8D3CD98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
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

uint64_t sub_1B8D3CE88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D3CF60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3D080(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D3D158(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3D240@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_MessageStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D3D3A4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3D3D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3D3FC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3D428()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.canBeHidden.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3D47C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.hasTopPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3D4D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.hasBottomPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3D524()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3D620()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MessageCardSection.messageText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3D7DC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1B8D3D908(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D3DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
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

uint64_t sub_1B8D3DAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
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

uint64_t sub_1B8D3DD68(uint64_t *a1, uint64_t a2, int *a3)
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
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[13];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[14];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
        v17 = OUTLINED_FUNCTION_128_1(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[15];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
          v12 = a3[17];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1B8D3DED4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[13];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[14];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
        v17 = OUTLINED_FUNCTION_128_1(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[15];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
          v12 = a4[17];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D3E060()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3E08C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3E0B8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3E0E4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.canBeHidden.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3E138()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.hasTopPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3E18C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.hasBottomPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3E1E0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_MiniCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3E3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D3E47C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D3E524(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D3E5AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D3E668()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_NewsCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D3E694()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_NewsCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3E6C0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_NewsCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3E6EC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_NewsCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3E738()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_NewsCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3E784()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_NewsCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3E7D0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_NewsCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EA84()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_NewsCardSection.overlayTextInImage.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D3EAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D3EB78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D3EC6C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D3ED44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3EE18()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EE44()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3EE98()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EEC4()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EEF0()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EF1C()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FieldOptions.Searchfoundation_objcType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EF48()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EF74()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EFA0()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Searchfoundation_objcFramework.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EFCC()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Searchfoundation_objcPackage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3EFF8()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3F024()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3F078()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3F0A4()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3F0D0()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3F0FC()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D3F150()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3F17C()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D3F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8D3F278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1B8D3F340(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D3F3C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D3F448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D3F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D3F50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B964C2B0();
    v11 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_1B8D3F594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D3F67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D3F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D3F774(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D3F84C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D3F934@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_DistanceUnit.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D3FA40()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
    v7 = *(v2 + 48);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D3FAF0()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
      v9 = *(v5 + 48);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D3FBAC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D3FC10()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D3FC7C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D3FCE0()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D3FD4C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D3FDFC()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
      v9 = *(v5 + 36);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D3FF04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 48);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
      v10 = *(a3 + 52);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8D3FFDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 48);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
      v10 = *(a4 + 52);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D400B8@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_QueryUnderstandingQueryIntentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D40194()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D401E0()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D4022C()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D40278()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D402C4()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D40310()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D4035C()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D403A8()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D403F4()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D40440()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D4048C()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D404D8()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D40524()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D40570()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D405BC()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D40660()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D406AC()
{
  OUTLINED_FUNCTION_102();
  Understanding = Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8D406F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8D407A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8D4091C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 16));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[6];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
      v7 = v2[8];
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D40A18()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
        v9 = v5[8];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

uint64_t sub_1B8D40B24()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D40B88()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D40BF8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D40C5C()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D40DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_1B964C2B0();
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
      v14 = *(a3 + 24);
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D40EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_1B964C2B0();
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
      v16 = *(a4 + 24);
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1B8D40FA4()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D40FF4()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8D410F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v14 = *(a3 + 24);
    }

    v10 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B8D411E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28_1();
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v16 = *(a4 + 24);
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1B8D41440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB0, &qword_1B96D8F40);
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_700(*(v4 + *(a3 + 20)));
    }

    v9 = sub_1B964C2B0();
    v10 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D41508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB0, &qword_1B96D8F40);
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20)) = (v4 - 1);
      return result;
    }

    v12 = sub_1B964C2B0();
    v11 = v5 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
}

uint64_t sub_1B8D415D4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*a1);
  }

  v7 = sub_1B964C2B0();
  v8 = OUTLINED_FUNCTION_128_1(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[7];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v13 = OUTLINED_FUNCTION_128_1(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v11 = a3[10];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sub_1B8D416E8()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1B964C2B0();
    v7 = OUTLINED_FUNCTION_128_1(v6);
    if (*(v8 + 84) == v5)
    {
      v9 = v7;
      v10 = v4[7];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      v12 = OUTLINED_FUNCTION_128_1(v11);
      if (*(v13 + 84) == v5)
      {
        v9 = v12;
        v10 = v4[8];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v10 = v4[10];
      }
    }

    __swift_storeEnumTagSinglePayload(v1 + v10, v0, v0, v9);
  }
}

uint64_t sub_1B8D41800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = sub_1B964C2B0();
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D418A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  OUTLINED_FUNCTION_128_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v11 = sub_1B964C2B0();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v11);
}

uint64_t sub_1B8D42514()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_267_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v6 = *(v1 + 40);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D42608()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 40);
      }
    }

    v10 = OUTLINED_FUNCTION_699(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}