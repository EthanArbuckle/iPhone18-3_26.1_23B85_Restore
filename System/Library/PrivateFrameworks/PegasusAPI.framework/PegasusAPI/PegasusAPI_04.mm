uint64_t sub_1B8D42710()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D427B8()
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_259_0();
    }

    v8 = OUTLINED_FUNCTION_699(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1B8D42878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v11 = OUTLINED_FUNCTION_128_1(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v13 = *(a3 + 36);
    }

    v8 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_1B8D42960()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == v3)
    {
      v7 = v9;
      v11 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v11 = *(v2 + 36);
    }

    v6 = v1 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

uint64_t sub_1B8D42A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v11 = OUTLINED_FUNCTION_128_1(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_267_0();
    }

    v8 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_1B8D42B30()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == v3)
    {
      v7 = v9;
      v11 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_259_0();
    }

    v6 = v1 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

uint64_t sub_1B8D42CDC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFImageSizingMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D42D64()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B9570294();
  OUTLINED_FUNCTION_153_7();
  return sub_1B964C420();
}

uint64_t sub_1B8D4315C@<X0>(_BYTE *a1@<X8>)
{
  result = Searchfoundation_RFImageSource.doNotShowLoadingPlaceholder.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B8D433CC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFSymbolImage.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8D435E4@<X0>(_BYTE *a1@<X8>)
{
  result = Searchfoundation_RFSymbolImage.punchesThroughBackground.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B8D436EC()
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

void sub_1B8D43750()
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

uint64_t sub_1B8D437C0()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D43810()
{
  OUTLINED_FUNCTION_468();
  v2 = *(v1 + 20);
  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_155_2();

  return __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
}

uint64_t sub_1B8D43870()
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

void sub_1B8D438D0()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1B8D43950()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_128_1(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = v5[6];
  }

  else
  {
    v10 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v10);
    if (*(v11 + 84) == v6)
    {
      v9 = v5[12];
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E38, &qword_1B96D9DD0);
      OUTLINED_FUNCTION_128_1(v12);
      if (*(v13 + 84) == v6)
      {
        v9 = v5[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
        v9 = v5[14];
      }
    }
  }

  v14 = OUTLINED_FUNCTION_699(v9);

  return __swift_getEnumTagSinglePayload(v14, v15, v16);
}

void sub_1B8D43AA4()
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
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[6];
    }

    else
    {
      v10 = sub_1B964C2B0();
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[12];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E38, &qword_1B96D9DD0);
        OUTLINED_FUNCTION_128_1(v12);
        if (*(v13 + 84) == v6)
        {
          v9 = v5[13];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
          v9 = v5[14];
        }
      }
    }

    v14 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v14, v15, v0, v16);
  }
}

uint64_t sub_1B8D43BFC()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 24);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D43C4C()
{
  OUTLINED_FUNCTION_468();
  v2 = *(v1 + 24);
  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_155_2();

  return __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
}

uint64_t sub_1B8D43CE4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
      v12 = *(a3 + 24);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      v12 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(&a1[v12], a2, v11);
  }
}

_BYTE *sub_1B8D43DBC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(&v5[v10], a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D443A4()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 24);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D443F4()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 24);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8D44448()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_267_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D444A8()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8D4450C()
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_267_0();
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8D44600()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
        OUTLINED_FUNCTION_259_0();
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D446F0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D44798()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      OUTLINED_FUNCTION_259_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D4483C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
      OUTLINED_FUNCTION_266();
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D44924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  OUTLINED_FUNCTION_128_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v12 = sub_1B964C2B0();
    v13 = OUTLINED_FUNCTION_128_1(v12);
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = *(a4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
      OUTLINED_FUNCTION_258_0();
    }

    v10 = v5 + v15;
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v11);
}

uint64_t sub_1B8D44A10()
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
    v7 = v2[5];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_267_0();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11D0, &qword_1B96DBCA0);
        OUTLINED_FUNCTION_128_1(v12);
        if (*(v13 + 84) == v0)
        {
          v7 = v2[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
          v7 = v2[9];
        }
      }
    }
  }

  v14 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v14, v15, v16);
}

void sub_1B8D44B9C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[5];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        OUTLINED_FUNCTION_128_1(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_259_0();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11D0, &qword_1B96DBCA0);
          OUTLINED_FUNCTION_128_1(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
            v5 = v0[9];
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1B8D44D24()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D44D88()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D44DF4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1B8D44E7C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D44EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D44F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D455FC(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    OUTLINED_FUNCTION_1242();
    v6 = (v4 + v5) & 0x7FFFFFFF;
    if (v7)
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
    v9 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == v2)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v12);
      if (*(v13 + 84) == v2)
      {
        OUTLINED_FUNCTION_266();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v11 = *(v3 + 40);
      }
    }

    v14 = OUTLINED_FUNCTION_699(v11);

    return __swift_getEnumTagSinglePayload(v14, v15, v16);
  }
}

void sub_1B8D456FC()
{
  OUTLINED_FUNCTION_468();
  if (v4 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 40);
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D457F4(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    OUTLINED_FUNCTION_1242();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
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
    v8 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v2)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_266();
    }

    v11 = OUTLINED_FUNCTION_699(v10);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

void sub_1B8D458A8()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D45954(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    OUTLINED_FUNCTION_1242();
    v6 = (v4 + v5) & 0x7FFFFFFF;
    if (v7)
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
    v9 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == v2)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v12);
      if (*(v13 + 84) == v2)
      {
        OUTLINED_FUNCTION_266();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v11 = *(v3 + 32);
      }
    }

    v14 = OUTLINED_FUNCTION_699(v11);

    return __swift_getEnumTagSinglePayload(v14, v15, v16);
  }
}

void sub_1B8D45A54()
{
  OUTLINED_FUNCTION_468();
  if (v4 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 32);
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D45B4C(uint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v2)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_266();
    }

    v8 = OUTLINED_FUNCTION_699(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_1B8D45C08()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D46244(unsigned __int8 *a1, int a2, int *a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
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
    v9 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == a2)
    {
      v11 = a3[5];
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v12);
      if (*(v13 + 84) == a2)
      {
        v11 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v11 = a3[8];
      }
    }

    v14 = OUTLINED_FUNCTION_699(v11);

    return __swift_getEnumTagSinglePayload(v14, v15, v16);
  }
}

_BYTE *sub_1B8D46360(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = a4[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == a3)
      {
        v9 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v9 = a4[8];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    return __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }

  return result;
}

uint64_t sub_1B8D46474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B8D46514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1B8D470C4()
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
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    v6 = *(v1 + 28);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D4716C()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      v7 = *(v2 + 28);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D4721C()
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
    v6 = *(v1 + 20);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v6 = *(v1 + 36);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D47310()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 36);
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D47410(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1();
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == a2)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == a2)
    {
      v7 = *(a3 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      v7 = *(a3 + 32);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

uint64_t sub_1B8D474F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28_1();
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a3)
  {
    OUTLINED_FUNCTION_258_0();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == a3)
    {
      v8 = *(a4 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      v8 = *(a4 + 32);
    }
  }

  v11 = OUTLINED_FUNCTION_61_0(v8);

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1B8D48D2C()
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
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = *(v1 + 32);
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

void sub_1B8D48E20()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
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
        v5 = *(v0 + 32);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v5 = *(v0 + 40);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D48F14()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v3 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_266();
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D48FB8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_258_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D4905C()
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
    OUTLINED_FUNCTION_266();
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
      v6 = *(v1 + 48);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D4914C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v5 = *(v0 + 48);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D4923C()
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
    OUTLINED_FUNCTION_266();
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
      v6 = *(v1 + 44);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D4932C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v5 = *(v0 + 44);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D4941C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v11);
    if (*(v12 + 84) == v3)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v13 = *(a3 + 44);
    }

    v10 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D49504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v12);
    if (*(v13 + 84) == a3)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v14 = *(a4 + 44);
    }

    v10 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v11);
}

uint64_t sub_1B8D495F8(unsigned __int8 *a1, int a2)
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
    v8 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v2)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v11);
      if (*(v12 + 84) == v2)
      {
        OUTLINED_FUNCTION_266();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v10 = *(v3 + 40);
      }
    }

    v13 = OUTLINED_FUNCTION_699(v10);

    return __swift_getEnumTagSinglePayload(v13, v14, v15);
  }
}

void sub_1B8D49700()
{
  OUTLINED_FUNCTION_468();
  if (v4 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 40);
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8D497F8()
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
    OUTLINED_FUNCTION_266();
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
      v6 = *(v1 + 36);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D498E8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v5 = *(v0 + 36);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D499D8()
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_267_0();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1850, &qword_1B96DE9F0);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        v7 = *(v2 + 36);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 40);
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1B8D49B18()
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
      OUTLINED_FUNCTION_258_0();
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
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1850, &qword_1B96DE9F0);
        OUTLINED_FUNCTION_128_1(v10);
        if (*(v11 + 84) == v3)
        {
          v7 = *(v2 + 36);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
          v7 = *(v2 + 40);
        }
      }
    }

    v12 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1B8D49C58()
{
  OUTLINED_FUNCTION_468();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_128_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_194_1();
    v6 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1B8D49CF4(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = OUTLINED_FUNCTION_231();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_196_2();
    v8 = v4 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v8, v3, v3, v9);
}

uint64_t sub_1B8D49D94()
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
    OUTLINED_FUNCTION_266();
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
      v6 = *(v1 + 52);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D49E84()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v5 = *(v0 + 52);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D49F84@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFTableHeaderInFlowLayout.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D4A1EC(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v6 = OUTLINED_FUNCTION_24_1();
  v7 = a1 + *(v3 + 36);

  return __swift_getEnumTagSinglePayload(v7, v2, v6);
}

void sub_1B8D4A258()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = *(v4 + 36);
    OUTLINED_FUNCTION_81_0();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8D4A2D0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_70_13();

  return __swift_getEnumTagSinglePayload(v4, v2, v5);
}

void sub_1B8D4A338()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_70_13();
    OUTLINED_FUNCTION_81_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B8D4A3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
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

uint64_t sub_1B8D4A44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_128_1(v7);
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    v9 = v4 + *(a4 + 20);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B8D4A4EC()
{
  OUTLINED_FUNCTION_468();
  v2 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1B8D4A530()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1B8D4A570(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v5 = *(a1 + 28);
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_24_1();
    v10 = a1 + *(v3 + 40);

    return __swift_getEnumTagSinglePayload(v10, v2, v9);
  }
}

void sub_1B8D4A5EC()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *(v1 + 28) = v0 + 1;
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = *(v4 + 40);
    OUTLINED_FUNCTION_81_0();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8D4A660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v11 = *(v4 + *(a3 + 28));
      if (v11 >= 2)
      {
        return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_1B964C2B0();
    v10 = OUTLINED_FUNCTION_70_13();
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D4A73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + *(a4 + 28)) = v4 + 1;
      return result;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_70_13();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1B8D4A800@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFWeight.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D4A968@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFFormattedText.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8D4AC90@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFFormattedText.attributions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D4ACC0@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFFormattedText.highlightedSubstrings.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D4B2C0()
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

void sub_1B8D4B320()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D4B388()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8D4B434()
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
      v7 = *(v2 + 28);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8D4B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4B590()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_81_0();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1B8D4B624()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  v3 = OUTLINED_FUNCTION_128_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_194_1();
    v6 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1B8D4B6C0()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8D4B758()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D4B7B8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8D4B820()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_266();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D4B8C8()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v4 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8D4B978()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D4B9C8()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8D4BA1C()
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
    v7 = v2[8];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        v7 = v2[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
        v7 = v2[12];
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1B8D4BB64()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = v2[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        OUTLINED_FUNCTION_128_1(v10);
        if (*(v11 + 84) == v3)
        {
          v7 = v2[11];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
          v7 = v2[12];
        }
      }
    }

    v12 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1B8D4BCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v11 = *(v4 + *(a3 + 20));
      if (v11 >= 2)
      {
        return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_266();
    v10 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D4BD90()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  result = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    if (v3 == 254)
    {
      *(v1 + *(v2 + 20)) = v0 + 1;
      return result;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B8D4BE4C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 24);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D4BE9C()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8D4BF1C()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1B964C2B0();
  v8 = v0 + *(v5 + 24);

  return __swift_getEnumTagSinglePayload(v8, v6, v7);
}

void sub_1B8D4BF90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    v8 = sub_1B964C2B0();
    v9 = v2 + *(v7 + 24);

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }
}

uint64_t sub_1B8D4C00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E68, &qword_1B96E2810);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = a1;
  }

  else
  {
    sub_1B964C2B0();
    v6 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v6, a2, v5);
}

uint64_t sub_1B8D4C0B0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E68, &qword_1B96E2810);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_1B8D4C15C()
{
  OUTLINED_FUNCTION_691();
  if (v0 == v1)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v3 = v0;
  sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_115_1();

  return __swift_getEnumTagSinglePayload(v4, v3, v5);
}

void sub_1B8D4C1CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v5)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v6 = OUTLINED_FUNCTION_115_1();

    __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }
}

uint64_t sub_1B8D4C308(uint64_t a1, uint64_t a2, int *a3)
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
      v12 = a3[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
        v12 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1B8D4C428(uint64_t result, uint64_t a2, int a3, int *a4)
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
        v12 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D4C5A8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4C5D4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4C600()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4C62C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4C678()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4C6C4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4C710()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4C824()
{
  OUTLINED_FUNCTION_102();
  IsRight = Searchfoundation_RowCardSection.imageIsRightAligned.getter();
  return OUTLINED_FUNCTION_96_0(IsRight);
}

uint64_t sub_1B8D4C9A8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.key.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4C9D4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RowCardSection.keyNoWrap.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4CA20()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.keyWeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4CA70()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4CA9C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RowCardSection.valueNoWrap.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4CAE8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_RowCardSection.valueWeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4CB38()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_RowCardSection.cardPaddingBottom.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4CC54(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4CCFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D4CDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D4CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D4CE64()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = v0;
  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D4CED4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8D4CF4C()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = v0;
  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(v4 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D4CFBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 36));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8D4D048@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_SafariTableOfContentsType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D4D080()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 28));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D4D0F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8D4D16C()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 32));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 32));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D4D1E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 32) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8D4D268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8D4D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8D4D374(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v10 = *(a3 + 68);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
      v10 = *(a3 + 72);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8D4D44C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v10 = *(a4 + 68);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
      v10 = *(a4 + 72);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D4D5F4(uint64_t *a1, uint64_t a2, int *a3)
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
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
        v12 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1B8D4D714(void *result, uint64_t a2, int a3, int *a4)
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
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
        v12 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D4D87C()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  v5 = v2;
  if (*(*(sub_1B964C2B0() - 8) + 84) == v1)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    v6 = *(v5 + 60);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8D4D940(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_1B964C2B0() - 8) + 84) == v4)
    {
      v8 = *(v7 + 56);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v8 = *(v7 + 60);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_1B8D4DA0C()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 24));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D4DA80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8D4DB20()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = v0;
  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D4DB90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8D4DC08()
{
  OUTLINED_FUNCTION_691();
  if (v0 == v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = v1;
  if (*(*(sub_1B964C2B0() - 8) + 84) == v0)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD25B8, &qword_1B96E4BB0);
    v5 = *(v4 + 28);
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D4DCC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_1B964C2B0() - 8) + 84) == v4)
    {
      v8 = *(v7 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD25B8, &qword_1B96E4BB0);
      v8 = *(v7 + 28);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_1B8D4DDE0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4DE0C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4DE38()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4DE64()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SocialMediaPostCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4DEB0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SocialMediaPostCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4DEFC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SocialMediaPostCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4DF48()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4DFF4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4E020()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SocialMediaPostCardSection.nameNoWrap.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4E06C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.nameMaxLines.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4E0BC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4E298()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.timestamp.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4E2C4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SocialMediaPostCardSection.footnote.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4E2F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4E398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D4E4FC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_SplitCardSection.listPrefix.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8D4E52C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_SplitCardSection.listItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D4E55C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_SplitCardSection.listMoreString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8D4E62C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4E6D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D4E854(uint64_t *a1, uint64_t a2, int *a3)
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
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
        v12 = a3[15];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1B8D4E974(void *result, uint64_t a2, int a3, int *a4)
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
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
        v12 = a4[15];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D4EAEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v10 = *(a3 + 64);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a3 + 68);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1B8D4EBC4(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v10 = *(a4 + 64);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v10 = *(a4 + 68);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D4ECDC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SuggestionCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4ED08()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SuggestionCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4ED34()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SuggestionCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4ED60()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SuggestionCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4EDAC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SuggestionCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4EDF8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SuggestionCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4EE44()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SuggestionCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4EFA8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_SuggestionCardSection.isContact.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4EFF4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_SuggestionCardSection.scopedSearchSectionBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4F228(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4F2D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D4F3BC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4F3E8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4F414()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4F440()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableHeaderRowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4F48C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableHeaderRowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4F4D8()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableHeaderRowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4F524()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4F610()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.tableIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4F6A4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.data.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4F6D0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableHeaderRowCardSection.isSubHeader.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4F71C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableHeaderRowCardSection.tabGroupIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4F748()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableHeaderRowCardSection.reducedRowHeight.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4F7EC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableHeaderRowCardSection.alignRowsToHeader.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4F838(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4F8E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D4F9D4()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4FA00()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4FA2C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4FA58()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableRowCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4FAA4()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableRowCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4FAF0()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableRowCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4FB3C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4FC28()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.richData.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4FC54()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.tableIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4FCE8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.data.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D4FD14()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableRowCardSection.isSubHeader.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4FD60()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_TableRowCardSection.tabGroupIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D4FD8C()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableRowCardSection.reducedRowHeight.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4FE30()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_TableRowCardSection.alignRowsToHeader.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D4FE7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D4FF24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D4FFF8(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    if (*(*(sub_1B964C2B0() - 8) + 84) == a2)
    {
      v6 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8E50, &qword_1B964D650);
      v6 = *(a3 + 24);
    }

    v7 = OUTLINED_FUNCTION_699(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_1B8D500CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    if (*(*(sub_1B964C2B0() - 8) + 84) == a3)
    {
      v6 = *(a4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8E50, &qword_1B964D650);
      v6 = *(a4 + 24);
    }

    v7 = OUTLINED_FUNCTION_699(v6);

    return __swift_storeEnumTagSinglePayload(v7, v8, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D5019C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 25);
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
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

uint64_t sub_1B8D50220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 25) = a2 + 1;
  }

  else
  {
    sub_1B964C2B0();
    v6 = OUTLINED_FUNCTION_699(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1B8D502E4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v4 = *(OUTLINED_FUNCTION_24_1() - 8);
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    v5 = *(v1 + 64);
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D50394()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_1B964C2B0() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v8 = *(v5 + 64);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8D50458()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8D504B8()
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

uint64_t sub_1B8D50528()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8D50588()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D50600@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_TextColor.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D50628(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D506B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D5077C(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1B8D50854(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D50ACC(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*a1);
  }

  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = *(a3 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    v8 = *(a3 + 64);
  }

  v9 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D50B90()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v9 = *(v5 + 64);
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_1B8D50C50(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[8];
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
      v8 = a3[10];
    }
  }

  v11 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_1B8D50D60()
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
      v9 = v5[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
        v9 = v5[10];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

uint64_t sub_1B8D50E6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D50EF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D50FAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 24));
  }

  if (*(*(sub_1B964C2B0() - 8) + 84) == a2)
  {
    v5 = *(a3 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
    v5 = *(a3 + 32);
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8D51074()
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
    v7 = *(sub_1B964C2B0() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8D51138(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8D511B0()
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

uint64_t sub_1B8D51244()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.affordanceText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51270()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D5129C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.dismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D512C8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.userReportOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D512FC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.reportOptionsSectionTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51328()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.disclaimerText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D5137C()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_UserReportRequest.attachmentSectionTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D513A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D51454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D51538()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_VerticalLayoutCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D51564()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_VerticalLayoutCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51590()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_VerticalLayoutCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D515BC()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_VerticalLayoutCardSection.canBeHidden.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D51608()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_VerticalLayoutCardSection.hasTopPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D51654()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_VerticalLayoutCardSection.hasBottomPadding_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D516A0()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_VerticalLayoutCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51894()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_VerticalLayoutCardSection.contentsLeading.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D51948()
{
  OUTLINED_FUNCTION_102();
  v0 = Searchfoundation_VerticalLayoutCardSection.useAppIconMetrics.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D51994(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B8D51A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D51B38()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.punchoutOptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D51B64()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.punchoutPickerTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51B90()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.punchoutPickerDismissText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51BBC()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.canBeHidden.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D51C10()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.hasTopPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D51C64()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.hasBottomPadding_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8D51CB8()
{
  OUTLINED_FUNCTION_102();
  result = Searchfoundation_WatchListCardSection.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D51DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8D51E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D51F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v7 = sub_1B964C2B0();
  v8 = a1 + *(a3 + 64);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8D51F7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D52048(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1B8D52120(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B8D522C8(uint64_t *a1, uint64_t a2, int *a3)
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
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
        v12 = a3[15];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1B8D523E8(void *result, uint64_t a2, int a3, int *a4)
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
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
        v12 = a4[15];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8D52508(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B8D52548(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1B8D52574(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B8D52584(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B8D52508(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8D525DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B8D52574(result, a2, a3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NamingUtils(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for NamingUtils(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B8D52704(uint64_t a1, unint64_t a2)
{
  v56 = sub_1B964CAD0();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return a1;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  v8 = sub_1B8D52C4C(a1);
  v10 = v9;
  v53 = v11 >> 14;
  v54 = v8;
  if (v11 >> 14 == v12 >> 14)
  {

    return 0;
  }

  v51[1] = a1;
  v52 = (v4 + 8);
  v57 = 4 * v7;
  v13 = 1;
  while (1)
  {
    v14 = v10;
    v15 = sub_1B964C8B0();
    OUTLINED_FUNCTION_3_0();
    v16 = sub_1B964C8B0();
    OUTLINED_FUNCTION_3_0();
    result = sub_1B964C8F0();
    v19 = (v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : result & 0xFFFFFFFFFFFFLL;
    if (!v19)
    {
      break;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      v20 = sub_1B964C890();
    }

    else
    {
      v20 = sub_1B964C970() << 16;
    }

    if (v20 >> 14 == 4 * v19)
    {
      v21 = OUTLINED_FUNCTION_2();
      result = sub_1B8D52CBC(v21, v22);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_63;
      }

      v23 = v55;
      sub_1B964CAE0();
      sub_1B964CAB0();
      OUTLINED_FUNCTION_0();
      v24(v23, v56);
      if (v23)
      {
        goto LABEL_25;
      }
    }

    OUTLINED_FUNCTION_2();
    if (sub_1B964C810())
    {
      OUTLINED_FUNCTION_2();
      if (sub_1B964C820())
      {
        v25 = OUTLINED_FUNCTION_2();
        result = sub_1B8D52CBC(v25, v26);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_65;
        }

        v27 = v55;
        sub_1B964CAE0();
        sub_1B964CAC0();
        OUTLINED_FUNCTION_0();
        v28(v27, v56);
        if (v27)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_2();
      if ((sub_1B964C810() & 1) == 0)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_2();
      if ((sub_1B964C800() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    OUTLINED_FUNCTION_2();
    if (sub_1B964C840())
    {
LABEL_25:
      if (v13)
      {
        v29 = v58 & 0xFFFFFFFFFFFFLL;
        if ((v59 & 0x2000000000000000) != 0)
        {
          v29 = HIBYTE(v59) & 0xF;
        }

        if (v29)
        {
          MEMORY[0x1BFADC850](95, 0xE100000000000000);
        }
      }

      if (v57 <= v16 >> 14)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_3_0();
      sub_1B964C8F0();
      if (sub_1B964C820())
      {
        v30 = OUTLINED_FUNCTION_1_0();
        result = sub_1B8D52CBC(v30, v31);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_64;
        }

        v32 = v55;
        sub_1B964CAE0();
        v33 = sub_1B964CAB0();
        (*v52)(v32, v56);
        if (v33)
        {
          goto LABEL_41;
        }
      }

      OUTLINED_FUNCTION_1_0();
      if ((sub_1B964C810() & 1) == 0)
      {

LABEL_54:
        v13 = 0;
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_1_0();
      if (sub_1B964C820())
      {
        v34 = OUTLINED_FUNCTION_1_0();
        result = sub_1B8D52CBC(v34, v35);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_67;
        }

        v36 = v55;
        sub_1B964CAE0();
        sub_1B964CAC0();
        OUTLINED_FUNCTION_0();
        v37(v36, v56);
        if (v36)
        {
          goto LABEL_41;
        }
      }

      OUTLINED_FUNCTION_1_0();
      if ((sub_1B964C810() & 1) == 0)
      {
LABEL_41:
      }

      else
      {
        OUTLINED_FUNCTION_1_0();
        v38 = sub_1B964C800();

        if (v38)
        {
          goto LABEL_54;
        }
      }

      OUTLINED_FUNCTION_3_0();
      if (v57 <= sub_1B964C8B0() >> 14)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_3_0();
      sub_1B964C8B0();
      OUTLINED_FUNCTION_3_0();
      sub_1B964C8F0();
      if (sub_1B964C820())
      {
        v39 = OUTLINED_FUNCTION_1_0();
        result = sub_1B8D52CBC(v39, v40);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_66;
        }

        v41 = v55;
        sub_1B964CAE0();
        sub_1B964CAA0();
        OUTLINED_FUNCTION_0();
        v42(v41, v56);
        if (v41)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_1_0();
      if ((sub_1B964C800() & 1) == 0)
      {

LABEL_57:
        v13 = 0;
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_1_0();
      if (sub_1B964C820())
      {
        v43 = OUTLINED_FUNCTION_1_0();
        result = sub_1B8D52CBC(v43, v44);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_68;
        }

        v45 = v55;
        sub_1B964CAE0();
        sub_1B964CAC0();
        OUTLINED_FUNCTION_0();
        v46(v45, v56);
        if (v45)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_1_0();
      if ((sub_1B964C810() & 1) == 0)
      {
LABEL_55:

        v13 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_1_0();
        v47 = sub_1B964C800();

        v13 = v47 ^ 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      v13 = sub_1B964C830();
    }

LABEL_58:
    OUTLINED_FUNCTION_2();
    v48 = sub_1B964C7F0();
    v50 = v49;

    MEMORY[0x1BFADC850](v48, v50);

    v10 = v14;
    if (v53 == v15 >> 14)
    {

      return v58;
    }
  }

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
  return result;
}

unint64_t sub_1B8D52CBC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B8D52E50(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1B964C980();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B964C9A0();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_1B8D52E50(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B8D52EF0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B8D52F60(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B8D52EF0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1B8D5307C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B8D52F60(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1B964C9A0();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B8D5307C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B964C8E0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFADC860](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.MergeError.hashValue.getter()
{
  sub_1B964CA70();
  MEMORY[0x1BFADCA10](0);
  return sub_1B964CA90();
}

uint64_t sub_1B8D531D8()
{
  sub_1B964CA70();
  MEMORY[0x1BFADCA10](0);
  return sub_1B964CA90();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.mergedWith(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v59 = a2;
  v63[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1B964C340();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B964C360();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v55 - v13;
  sub_1B964C350();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v15 = sub_1B8D537E4();
  v16 = v2;
  v17 = v61;
  v18 = sub_1B964C590();
  if (!v17)
  {
    v21 = v19;
    v57 = v16;
    v58 = v15;
    v55[1] = v6;
    v61 = 0;
    v22 = *(v8 + 8);
    v23 = v18;
    v22(v14, v7);
    v24 = v23;
    if (MEMORY[0x1BFADC080](v23, v21) < 3)
    {
      sub_1B8D5383C(v60, v59);
    }

    else
    {
      v56 = v21;
      sub_1B964C350();
      v25 = v61;
      v26 = sub_1B964C590();
      v61 = v25;
      if (v25)
      {
        v22(v12, v7);
        v28 = OUTLINED_FUNCTION_0_0();
LABEL_8:
        result = sub_1B8D538A0(v28, v29);
        goto LABEL_9;
      }

      v31 = v26;
      v32 = v27;
      v22(v12, v7);
      if (MEMORY[0x1BFADC080](v31, v32) >= 3)
      {
        v60 = v31;
        v33 = objc_opt_self();
        v34 = v56;
        v35 = sub_1B964C0B0();
        v63[0] = 0;
        v36 = [v33 JSONObjectWithData:v35 options:0 error:v63];

        if (!v36)
        {
          v48 = v63[0];
          sub_1B964C0A0();

          swift_willThrow();
          sub_1B8D538A0(v24, v34);
          result = sub_1B8D538A0(v60, v32);
          goto LABEL_9;
        }

        v37 = v63[0];
        sub_1B964C940();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C50, &qword_1B964CF28);
        if (swift_dynamicCast())
        {
          v38 = v62;
          v39 = v60;
          v40 = sub_1B964C0B0();
          v63[0] = 0;
          v41 = [v33 JSONObjectWithData:v40 options:0 error:v63];

          if (!v41)
          {
            v49 = v63[0];

            sub_1B964C0A0();

            swift_willThrow();
            v50 = OUTLINED_FUNCTION_0_0();
            sub_1B8D538A0(v50, v51);
            v28 = v39;
LABEL_24:
            v29 = v32;
            goto LABEL_8;
          }

          v42 = v63[0];
          sub_1B964C940();
          swift_unknownObjectRelease();
          if (swift_dynamicCast())
          {
            v43 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v63[0] = v38;
            sub_1B8D53A0C(v43, sub_1B8D539D4, 0, isUniquelyReferenced_nonNull_native, v63);
            v45 = sub_1B964C7A0();

            v63[0] = 0;
            v46 = [v33 dataWithJSONObject:v45 options:0 error:v63];

            v47 = v63[0];
            if (v46)
            {
              sub_1B964C0E0();

              sub_1B964C330();
              sub_1B964C5A0();
            }

            else
            {
              v52 = v47;
              sub_1B964C0A0();

              swift_willThrow();
            }

            v53 = OUTLINED_FUNCTION_0_0();
            sub_1B8D538A0(v53, v54);
            v28 = v60;
            goto LABEL_24;
          }
        }

        sub_1B8D53940();
        swift_allocError();
        swift_willThrow();
        sub_1B8D538A0(v60, v32);
        v28 = OUTLINED_FUNCTION_0_0();
        goto LABEL_8;
      }

      sub_1B8D5383C(v57, v59);
      sub_1B8D538A0(v31, v32);
      v21 = v56;
    }

    v28 = v24;
    v29 = v21;
    goto LABEL_8;
  }

  result = (*(v8 + 8))(v14, v7);
LABEL_9:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B8D537E4()
{
  result = qword_1ED9CF498;
  if (!qword_1ED9CF498)
  {
    type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF498);
  }

  return result;
}

uint64_t sub_1B8D5383C(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  (*(*(Context - 8) + 16))(a2, a1, Context);
  return a2;
}

uint64_t sub_1B8D538A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

unint64_t sub_1B8D53940()
{
  result = qword_1EBAB8C58;
  if (!qword_1EBAB8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8C58);
  }

  return result;
}

uint64_t sub_1B8D53994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8D53D4C(a4, a1);

  return a2;
}

uint64_t sub_1B8D539D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B8D53994((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8D53A0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B8D53DA8(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_1B8D53DE4(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_1B8D53F24();
    }

    v8 = v29;
    sub_1B8D53F2C(v30, v28);
    v9 = *a5;
    v11 = sub_1B964BDF8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C68, &qword_1B964CFF0);
        sub_1B964C9C0();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B8D56C64(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_1B964BDF8(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1B8D53D4C(v28, v27);
        __swift_destroy_boxed_opaque_existential_0(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v20);
        sub_1B8D53F2C(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_1B8D53F2C(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B964CA00();
  __break(1u);
  return result;
}

unint64_t sub_1B8D53C40()
{
  result = qword_1EBAB8C60;
  if (!qword_1EBAB8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8C60);
  }

  return result;
}

_BYTE *_s14descr1F375E859C10MergeErrorOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B8D53D4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B8D53DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1B8D53DE4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1B8D53D4C(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1B8D53F2C(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_1B8D53F88(v19);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1B8D53F2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_1B8D53F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C70, &qword_1B964CFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.init(tcpInfoDictionary:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0) + 20);
  if (qword_1ED9CBF90 != -1)
  {
LABEL_181:
    swift_once();
  }

  *&a2[v4] = qword_1ED9CBF98;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_28();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  OUTLINED_FUNCTION_5();
  v145 = v13;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v142 = v14;
  v143 = v15;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v140 = v16;
  v141 = v17;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v138 = v18;
  v139 = v19;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v136 = v20;
  v137 = v21;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v134 = v22;
  v135 = v23;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v132 = v24;
  v133 = v25;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v130 = v26;
  v131 = v27;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v128 = v28;
  v129 = v29;
  OUTLINED_FUNCTION_5();
  v127 = v30;

  v31 = 0;
  v144 = a1;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v12)
        {
          v10 = 0;
          v148 = 0u;
          v149 = 0u;
          v147 = 0u;
          goto LABEL_10;
        }

        v10 = *(v6 + 8 * v32);
        ++v31;
        if (v10)
        {
          v31 = v32;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_181;
    }

    v32 = v31;
LABEL_9:
    v33 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v34 = v33 | (v32 << 6);
    v35 = (*(a1 + 48) + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    sub_1B8D53D4C(*(a1 + 56) + 32 * v34, v146);
    *&v147 = v37;
    *(&v147 + 1) = v36;
    sub_1B8D53F2C(v146, &v148);

LABEL_10:
    v150 = v147;
    v151[0] = v148;
    v151[1] = v149;
    v38 = *(&v147 + 1);
    if (!*(&v147 + 1))
    {
    }

    v39 = a2;
    a2 = v150;
    sub_1B8D53F2C(v151, &v147);
    sub_1B8D56C00();
    if (swift_dynamicCast())
    {
      v40 = *&v146[0];
      OUTLINED_FUNCTION_11_0();
      v42 = (v41 - 7);
      v43 = a2 == (v41 - 7) && v145 == v38;
      if (v43 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
      {

        [v40 unsignedIntValue];
        if (OUTLINED_FUNCTION_17())
        {

          v38 = *&a2[v4];
        }

        else
        {
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_3_1();

          sub_1B8FA9A40();
          OUTLINED_FUNCTION_3_1();

          *&a2[v4] = v38;
        }

        OUTLINED_FUNCTION_18();
        *(v38 + 16) = v42;
        a1 = v144;
      }

      else
      {
        OUTLINED_FUNCTION_11_0();
        v45 = a2 == v44 && v143 == v38;
        if (v45 || (OUTLINED_FUNCTION_32_0(), OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
        {

          [v40 unsignedLongLongValue];
          if (OUTLINED_FUNCTION_17())
          {

            v38 = *&a2[v4];
          }

          else
          {
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_3_1();

            sub_1B8FA9A40();
            OUTLINED_FUNCTION_3_1();

            *&a2[v4] = v38;
          }

          OUTLINED_FUNCTION_18();
          *(v38 + 24) = v42;
          a1 = v144;
        }

        else
        {
          OUTLINED_FUNCTION_11_0();
          v47 = a2 == v46 && v142 == v38;
          if (v47 || (OUTLINED_FUNCTION_32_0(), OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
          {

            [v40 unsignedLongLongValue];
            if (OUTLINED_FUNCTION_17())
            {

              v38 = *&a2[v4];
            }

            else
            {
              OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_3_1();

              sub_1B8FA9A40();
              OUTLINED_FUNCTION_3_1();

              *&a2[v4] = v38;
            }

            OUTLINED_FUNCTION_18();
            *(v38 + 32) = v42;
            a1 = v144;
          }

          else
          {
            OUTLINED_FUNCTION_11_0();
            v49 = a2 == (v48 + 2) && v141 == v38;
            if (v49 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
            {

              [v40 unsignedIntValue];
              if (OUTLINED_FUNCTION_17())
              {

                v38 = *&a2[v4];
              }

              else
              {
                OUTLINED_FUNCTION_24();
                OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_3_1();

                sub_1B8FA9A40();
                OUTLINED_FUNCTION_3_1();

                *&a2[v4] = v38;
              }

              OUTLINED_FUNCTION_18();
              *(v38 + 40) = v42;
              a1 = v144;
            }

            else
            {
              v126 = v40;
              OUTLINED_FUNCTION_11_0();
              v51 = (v50 + 3);
              v52 = a2 == (v50 + 3) && v140 == v38;
              if (v52 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
              {

                v60 = OUTLINED_FUNCTION_27_0(v53, sel_unsignedIntValue, v54, v55, v56, v57, v58, v59, v124, v125, v126);
                [v60 v61];
                if (OUTLINED_FUNCTION_17())
                {

                  v38 = *&a2[v4];
                }

                else
                {
                  OUTLINED_FUNCTION_16_0();
                  OUTLINED_FUNCTION_20();
                  OUTLINED_FUNCTION_3_1();

                  sub_1B8FA9A40();
                  OUTLINED_FUNCTION_3_1();

                  *&a2[v4] = v38;
                }

                OUTLINED_FUNCTION_18();
                *(v38 + 44) = v42;
                a1 = v144;
              }

              else
              {
                v62 = a2 == v42 && v139 == v38;
                if (v62 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                {

                  v70 = OUTLINED_FUNCTION_27_0(v63, sel_unsignedIntValue, v64, v65, v66, v67, v68, v69, v124, v125, v126);
                  [v70 v71];
                  if (OUTLINED_FUNCTION_17())
                  {

                    v38 = *&a2[v4];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_20();
                    OUTLINED_FUNCTION_3_1();

                    sub_1B8FA9A40();
                    OUTLINED_FUNCTION_3_1();

                    *&a2[v4] = v38;
                  }

                  OUTLINED_FUNCTION_18();
                  *(v38 + 48) = v42;
                  a1 = v144;
                }

                else
                {
                  OUTLINED_FUNCTION_11_0();
                  v73 = a2 == (v72 - 6) && v138 == v38;
                  if (v73 || (OUTLINED_FUNCTION_1_1(), v125 = v74, (sub_1B964C9F0() & 1) != 0))
                  {

                    v82 = OUTLINED_FUNCTION_27_0(v75, sel_unsignedLongLongValue, v76, v77, v78, v79, v80, v81, v124, v125, v126);
                    [v82 v83];
                    if (OUTLINED_FUNCTION_17())
                    {

                      v38 = *&a2[v4];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16_0();
                      OUTLINED_FUNCTION_20();
                      OUTLINED_FUNCTION_3_1();

                      sub_1B8FA9A40();
                      OUTLINED_FUNCTION_3_1();

                      *&a2[v4] = v38;
                    }

                    OUTLINED_FUNCTION_18();
                    *(v38 + 56) = v42;
                    a1 = v144;
                  }

                  else
                  {
                    v84 = a2 == v51 && v137 == v38;
                    if (v84 || (OUTLINED_FUNCTION_11_0(), OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                    {

                      v92 = OUTLINED_FUNCTION_27_0(v85, sel_unsignedLongLongValue, v86, v87, v88, v89, v90, v91, v124, v125, v126);
                      [v92 v93];
                      if (OUTLINED_FUNCTION_17())
                      {

                        v38 = *&a2[v4];
                      }

                      else
                      {
                        OUTLINED_FUNCTION_16_0();
                        OUTLINED_FUNCTION_20();
                        OUTLINED_FUNCTION_3_1();

                        sub_1B8FA9A40();
                        OUTLINED_FUNCTION_3_1();

                        *&a2[v4] = v38;
                      }

                      OUTLINED_FUNCTION_18();
                      *(v38 + 64) = v42;
                      a1 = v144;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_11_0();
                      v95 = a2 == (v94 + 4) && v136 == v38;
                      if (v95 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                      {

                        v103 = OUTLINED_FUNCTION_27_0(v96, sel_unsignedLongLongValue, v97, v98, v99, v100, v101, v102, v124, v125, v126);
                        [v103 v104];
                        if (OUTLINED_FUNCTION_17())
                        {

                          v38 = *&a2[v4];
                        }

                        else
                        {
                          OUTLINED_FUNCTION_16_0();
                          OUTLINED_FUNCTION_20();
                          OUTLINED_FUNCTION_3_1();

                          sub_1B8FA9A40();
                          OUTLINED_FUNCTION_3_1();

                          *&a2[v4] = v38;
                        }

                        OUTLINED_FUNCTION_18();
                        *(v38 + 72) = v42;
                        a1 = v144;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_11_0();
                        v106 = (v105 - 4);
                        v107 = a2 == (v105 - 4) && v135 == v38;
                        if (v107 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                        {

                          [v126 unsignedLongLongValue];
                          if (OUTLINED_FUNCTION_26())
                          {

                            v38 = *&v39[v4];
                          }

                          else
                          {
                            OUTLINED_FUNCTION_25_0();
                            OUTLINED_FUNCTION_20();
                            OUTLINED_FUNCTION_3_1();

                            sub_1B8FA9A40();
                            OUTLINED_FUNCTION_3_1();

                            *&v39[v4] = v38;
                          }

                          OUTLINED_FUNCTION_18();
                          *(v38 + 80) = v125;
                        }

                        else
                        {
                          v108 = a2 == v125 && v134 == v38;
                          if (v108 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                          {

                            [v126 unsignedLongLongValue];
                            if (OUTLINED_FUNCTION_26())
                            {

                              v38 = *&v39[v4];
                            }

                            else
                            {
                              OUTLINED_FUNCTION_25_0();
                              OUTLINED_FUNCTION_20();
                              OUTLINED_FUNCTION_3_1();

                              sub_1B8FA9A40();
                              OUTLINED_FUNCTION_3_1();

                              *&v39[v4] = v38;
                            }

                            OUTLINED_FUNCTION_18();
                            *(v38 + 88) = v125;
                          }

                          else
                          {
                            v109 = a2 == v106 && v133 == v38;
                            if (v109 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                            {

                              [v126 unsignedLongLongValue];
                              if (OUTLINED_FUNCTION_26())
                              {

                                v38 = *&v39[v4];
                              }

                              else
                              {
                                OUTLINED_FUNCTION_25_0();
                                OUTLINED_FUNCTION_20();
                                OUTLINED_FUNCTION_3_1();

                                sub_1B8FA9A40();
                                OUTLINED_FUNCTION_3_1();

                                *&v39[v4] = v38;
                              }

                              OUTLINED_FUNCTION_18();
                              *(v38 + 96) = v125;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_11_0();
                              v111 = a2 == (v110 - 1) && v132 == v38;
                              if (v111 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                              {

                                [v126 unsignedLongLongValue];
                                if (OUTLINED_FUNCTION_26())
                                {

                                  v38 = *&v39[v4];
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_25_0();
                                  OUTLINED_FUNCTION_20();
                                  OUTLINED_FUNCTION_3_1();

                                  sub_1B8FA9A40();
                                  OUTLINED_FUNCTION_3_1();

                                  *&v39[v4] = v38;
                                }

                                OUTLINED_FUNCTION_18();
                                *(v38 + 168) = v125;
                              }

                              else
                              {
                                v112 = a2 == v42 && v131 == v38;
                                if (v112 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                                {

                                  LODWORD(v125) = [v126 unsignedIntValue];
                                  v113 = *&v39[v4];
                                  if (swift_isUniquelyReferenced_nonNull_native())
                                  {

                                    v38 = *&v39[v4];
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_25_0();
                                    OUTLINED_FUNCTION_20();
                                    OUTLINED_FUNCTION_3_1();

                                    sub_1B8FA9A40();
                                    OUTLINED_FUNCTION_3_1();

                                    *&v39[v4] = v38;
                                  }

                                  OUTLINED_FUNCTION_18();
                                  *(v38 + 112) = v125;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_11_0();
                                  v115 = a2 == v114 && v130 == v38;
                                  if (v115 || (OUTLINED_FUNCTION_32_0(), OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                                  {

                                    [v126 unsignedLongLongValue];
                                    if (OUTLINED_FUNCTION_26())
                                    {

                                      v38 = *&v39[v4];
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_25_0();
                                      OUTLINED_FUNCTION_20();
                                      OUTLINED_FUNCTION_3_1();

                                      sub_1B8FA9A40();
                                      OUTLINED_FUNCTION_3_1();

                                      *&v39[v4] = v38;
                                    }

                                    OUTLINED_FUNCTION_18();
                                    *(v38 + 120) = v125;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_11_0();
                                    v117 = a2 == v116 && v129 == v38;
                                    if (v117 || (OUTLINED_FUNCTION_32_0(), OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                                    {

                                      [v126 unsignedLongLongValue];
                                      if (OUTLINED_FUNCTION_26())
                                      {

                                        v38 = *&v39[v4];
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_25_0();
                                        OUTLINED_FUNCTION_20();
                                        OUTLINED_FUNCTION_3_1();

                                        sub_1B8FA9A40();
                                        OUTLINED_FUNCTION_3_1();

                                        *&v39[v4] = v38;
                                      }

                                      OUTLINED_FUNCTION_18();
                                      *(v38 + 128) = v125;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_11_0();
                                      v119 = (v118 + 1);
                                      v120 = a2 == (v118 + 1) && v128 == v38;
                                      if (v120 || (OUTLINED_FUNCTION_1_1(), (sub_1B964C9F0() & 1) != 0))
                                      {

                                        [v126 unsignedLongLongValue];
                                        if (OUTLINED_FUNCTION_26())
                                        {

                                          v38 = *&v39[v4];
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_25_0();
                                          OUTLINED_FUNCTION_20();
                                          OUTLINED_FUNCTION_3_1();

                                          sub_1B8FA9A40();
                                          OUTLINED_FUNCTION_3_1();

                                          *&v39[v4] = v38;
                                        }

                                        OUTLINED_FUNCTION_18();
                                        *(v38 + 136) = v125;
                                      }

                                      else
                                      {
                                        if (a2 == v119 && v127 == v38)
                                        {
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_11_0();
                                          OUTLINED_FUNCTION_1_1();
                                          v122 = sub_1B964C9F0();

                                          if ((v122 & 1) == 0)
                                          {

                                            goto LABEL_104;
                                          }
                                        }

                                        [v126 unsignedLongLongValue];
                                        if (OUTLINED_FUNCTION_26())
                                        {

                                          v38 = *&v39[v4];
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_25_0();
                                          OUTLINED_FUNCTION_20();
                                          OUTLINED_FUNCTION_3_1();

                                          sub_1B8FA9A40();
                                          OUTLINED_FUNCTION_3_1();

                                          *&v39[v4] = v38;
                                        }

                                        OUTLINED_FUNCTION_18();
                                        *(v38 + 144) = v125;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_104:
                        a2 = v39;
                        a1 = v144;
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

    else
    {

      a2 = v39;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.init(timingDataDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v287 = &v258 - v6;
  v286 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v7 = *(*(v286 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v286);
  v285 = &v258 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v284 = &v258 - v10;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0) + 20);
  if (qword_1ED9D14D0 != -1)
  {
    goto LABEL_315;
  }

  while (1)
  {
    v298 = v11;
    *(a2 + v11) = qword_1ED9D14D8;
    v12 = objc_allocWithZone(MEMORY[0x1E696ADA0]);

    v292 = [v12 init];
    v13 = sub_1B8D567EC(a1, v292);
    v11 = sub_1B8D5721C(v13);

    v14 = *(v11 + 16);
    v293 = a1;
    v299 = a2;
    if (!v14)
    {
      break;
    }

    *&v310 = MEMORY[0x1E69E7CC0];
    sub_1B8D57910(0, v14, 0);
    v15 = v310;
    v17 = sub_1B8D57A30(v11);
    a2 = v18;
    v19 = 0;
    v302 = (v11 + 64);
    v297 = v11 + 72;
    v300 = v14;
    if ((v17 & 0x8000000000000000) == 0)
    {
      while (v17 < 1 << *(v11 + 32))
      {
        a1 = v17 >> 6;
        if ((v302[v17 >> 6] & (1 << v17)) == 0)
        {
          goto LABEL_307;
        }

        if (*(v11 + 36) != a2)
        {
          goto LABEL_308;
        }

        LODWORD(v301) = v16;
        [*(*(v11 + 56) + 8 * v17) doubleValue];
        v21 = v20;
        *&v310 = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B8D57910((v22 > 1), v23 + 1, 1);
          v15 = v310;
        }

        *(v15 + 16) = v23 + 1;
        *(v15 + 8 * v23 + 32) = v21;
        v24 = 1 << *(v11 + 32);
        if (v17 >= v24)
        {
          goto LABEL_309;
        }

        v25 = v302[a1];
        if ((v25 & (1 << v17)) == 0)
        {
          goto LABEL_310;
        }

        if (*(v11 + 36) != a2)
        {
          goto LABEL_311;
        }

        v26 = v25 & (-2 << (v17 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v27 = v300;
        }

        else
        {
          v28 = a1 << 6;
          v29 = a1 + 1;
          v30 = (v297 + 8 * a1);
          v27 = v300;
          while (v29 < (v24 + 63) >> 6)
          {
            v31 = *v30++;
            a1 = v31;
            v28 += 64;
            ++v29;
            if (v31)
            {
              sub_1B8D57B44(v17, a2, v301 & 1);
              v24 = __clz(__rbit64(a1)) + v28;
              goto LABEL_19;
            }
          }

          sub_1B8D57B44(v17, a2, v301 & 1);
        }

LABEL_19:
        if (++v19 == v27)
        {

          a1 = v293;
          goto LABEL_24;
        }

        v16 = 0;
        a2 = *(v11 + 36);
        v17 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    swift_once();
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v32 = *(v15 + 16);
  if (v32)
  {
    v33 = *(v15 + 32);
    v11 = v32 - 1;
    if (v32 != 1)
    {
      sub_1B8D56C44(v32 - 1, 1, v15);
      v34 = (v15 + 40);
      do
      {
        v35 = *v34++;
        v36 = v35;
        if (v35 < v33)
        {
          v33 = v36;
        }

        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v33 = 0.0;
  }

  v37 = 0;
  a2 = a1 + 64;
  v38 = *(a1 + 64);
  v39 = *(a1 + 32);
  OUTLINED_FUNCTION_28();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  OUTLINED_FUNCTION_5();
  v300 = v45;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v290 = v46;
  v291 = v47;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v288 = v48;
  v289 = v49;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v282 = v50;
  v283 = v51;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v280 = v52;
  v281 = v53;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v278 = v54;
  v279 = v55;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v276 = v56;
  v277 = v57;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v274 = v58;
  v275 = v59;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v272 = v60;
  v273 = v61;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v270 = v62;
  v271 = v63;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v268 = v64;
  v269 = v65;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5();
  v266 = v66;
  v267 = v67;
  OUTLINED_FUNCTION_5();
  v265 = v68;
  OUTLINED_FUNCTION_5();
  v264 = v69;
  v296 = v44;
  v297 = a1 + 64;
  while (1)
  {
    if (!v42)
    {
      while (1)
      {
        v70 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v70 >= v44)
        {
          v42 = 0;
          v308 = 0u;
          v309 = 0u;
          v307 = 0u;
          goto LABEL_40;
        }

        v42 = *(a2 + 8 * v70);
        ++v37;
        if (v42)
        {
          v37 = v70;
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_306;
    }

    v70 = v37;
LABEL_39:
    v71 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v72 = v71 | (v70 << 6);
    v73 = (*(v293 + 48) + 16 * v72);
    v75 = *v73;
    v74 = v73[1];
    sub_1B8D53D4C(*(v293 + 56) + 32 * v72, &v305);
    *&v307 = v75;
    *(&v307 + 1) = v74;
    sub_1B8D53F2C(&v305, &v308);

LABEL_40:
    v310 = v307;
    v311[0] = v308;
    v311[1] = v309;
    v76 = *(&v307 + 1);
    if (!*(&v307 + 1))
    {
      break;
    }

    a1 = v310;
    sub_1B8D53F2C(v311, &v307);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_15_0();
    if (swift_dynamicCast())
    {
      v77 = v303;
      v78 = v304;
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_34();
    v79 = sub_1B8D56C00();
    OUTLINED_FUNCTION_15_0();
    v80 = swift_dynamicCast();
    v295 = v77;
    if (v80)
    {
      v11 = v303;
    }

    else
    {
      a2 = sub_1B964C860();
      v11 = [v292 numberFromString_];

      if (!v11)
      {
        v11 = sub_1B964C920();
      }
    }

    v302 = v11;
    [v11 doubleValue];
    if (v33 >= v81)
    {
      v294 = 0;
    }

    else
    {
      v82 = (v81 - v33) * 1000.0;
      if (v82 >= 4294967300.0)
      {
        v83 = -1;
      }

      else
      {
        if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_312;
        }

        if (v82 <= -1.0)
        {
          goto LABEL_313;
        }

        if (v82 >= 4294967300.0)
        {
          goto LABEL_314;
        }

        v83 = v82;
      }

      v294 = v83;
    }

    OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C50, &qword_1B964CF28);
    OUTLINED_FUNCTION_15_0();
    if (swift_dynamicCast())
    {
      v84 = v303;
    }

    else
    {
      v84 = sub_1B964C7B0();
    }

    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_15_0();
    v85 = swift_dynamicCast();
    v86 = v303;
    if (!v85)
    {
      v86 = 0;
    }

    v301 = v86;
    if (v85)
    {
      v11 = v304;
    }

    else
    {
      v11 = 0xC000000000000000;
    }

    OUTLINED_FUNCTION_4_0();
    v88 = v87 + 6;
    v89 = a1 == v87 + 6 && v300 == v76;
    if (v89 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
    {

      OUTLINED_FUNCTION_30_0(v90, sel_BOOLValue);
      if (OUTLINED_FUNCTION_13())
      {
        v91 = OUTLINED_FUNCTION_2_0();
        sub_1B8D538A0(v91, v11);

        v79 = *&v79[v84];
      }

      else
      {
        v92 = OUTLINED_FUNCTION_29_0();
        OUTLINED_FUNCTION_19(v92);
        v93 = OUTLINED_FUNCTION_12_1();
        sub_1B8FABCD4(v93);
        v94 = OUTLINED_FUNCTION_6();
        sub_1B8D538A0(v94, v11);

        OUTLINED_FUNCTION_14();
        *(v84 + v88) = v79;
      }

      v44 = v296;
      a2 = v297;
      OUTLINED_FUNCTION_18();
      v79[49] = v78;
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v96 = a1 == v95 + 4 && v291 == v76;
      if (v96 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
      {

        OUTLINED_FUNCTION_30_0(v97, sel_BOOLValue);
        if (OUTLINED_FUNCTION_13())
        {
          v98 = OUTLINED_FUNCTION_2_0();
          sub_1B8D538A0(v98, v11);

          v79 = *&v79[v84];
        }

        else
        {
          v99 = OUTLINED_FUNCTION_29_0();
          OUTLINED_FUNCTION_19(v99);
          v100 = OUTLINED_FUNCTION_12_1();
          sub_1B8FABCD4(v100);
          v101 = OUTLINED_FUNCTION_6();
          sub_1B8D538A0(v101, v11);

          OUTLINED_FUNCTION_14();
          *(v84 + v88) = v79;
        }

        v44 = v296;
        a2 = v297;
        OUTLINED_FUNCTION_18();
        v79[48] = v78;
      }

      else
      {
        OUTLINED_FUNCTION_4_0();
        v103 = a1 == v102 + 11 && v290 == v76;
        if (v103 || (OUTLINED_FUNCTION_0_1(), v263 = v104, (sub_1B964C9F0() & 1) != 0))
        {

          OUTLINED_FUNCTION_30_0(v105, sel_BOOLValue);
          if (OUTLINED_FUNCTION_13())
          {
            v106 = OUTLINED_FUNCTION_2_0();
            sub_1B8D538A0(v106, v11);

            v79 = *&v79[v84];
          }

          else
          {
            v107 = OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_19(v107);
            v108 = OUTLINED_FUNCTION_12_1();
            sub_1B8FABCD4(v108);
            v109 = OUTLINED_FUNCTION_6();
            sub_1B8D538A0(v109, v11);

            OUTLINED_FUNCTION_14();
            *(v84 + v88) = v79;
          }

          v44 = v296;
          a2 = v297;
          a1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
          OUTLINED_FUNCTION_18();
          v79[a1] = v78;
        }

        else
        {
          OUTLINED_FUNCTION_4_0();
          v111 = a1 == v110 + 7 && v289 == v76;
          if (v111 || (OUTLINED_FUNCTION_0_1(), v262 = v112, (sub_1B964C9F0() & 1) != 0))
          {

            OUTLINED_FUNCTION_30_0(v113, sel_unsignedIntValue);
            if (OUTLINED_FUNCTION_13())
            {
              v114 = OUTLINED_FUNCTION_2_0();
              sub_1B8D538A0(v114, v11);

              v79 = *&v79[v84];
            }

            else
            {
              v115 = OUTLINED_FUNCTION_29_0();
              OUTLINED_FUNCTION_19(v115);
              v116 = OUTLINED_FUNCTION_12_1();
              sub_1B8FABCD4(v116);
              v117 = OUTLINED_FUNCTION_6();
              sub_1B8D538A0(v117, v11);

              OUTLINED_FUNCTION_14();
              *(v84 + v88) = v79;
            }

            v44 = v296;
            a2 = v297;
            a1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
            goto LABEL_102;
          }

          OUTLINED_FUNCTION_4_0();
          v119 = a1 == v118 + 8 && v288 == v76;
          if (v119 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
          {

            OUTLINED_FUNCTION_30_0(v120, sel_unsignedIntValue);
            if (OUTLINED_FUNCTION_13())
            {
              v121 = OUTLINED_FUNCTION_2_0();
              sub_1B8D538A0(v121, v11);

              v79 = *&v79[v84];
            }

            else
            {
              v122 = OUTLINED_FUNCTION_29_0();
              OUTLINED_FUNCTION_19(v122);
              v123 = OUTLINED_FUNCTION_12_1();
              sub_1B8FABCD4(v123);
              v124 = OUTLINED_FUNCTION_6();
              sub_1B8D538A0(v124, v11);

              OUTLINED_FUNCTION_14();
              *(v84 + v88) = v79;
            }

            v44 = v296;
            a2 = v297;
            a1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
            goto LABEL_102;
          }

          OUTLINED_FUNCTION_4_0();
          v126 = a1 == v125 + 15 && v283 == v76;
          if (v126 || (OUTLINED_FUNCTION_0_1(), v261 = v127, (sub_1B964C9F0() & 1) != 0))
          {

            OUTLINED_FUNCTION_30_0(v128, sel_unsignedIntValue);
            if (OUTLINED_FUNCTION_13())
            {
              v129 = OUTLINED_FUNCTION_2_0();
              sub_1B8D538A0(v129, v11);

              v79 = *&v79[v84];
            }

            else
            {
              v130 = OUTLINED_FUNCTION_29_0();
              OUTLINED_FUNCTION_19(v130);
              v131 = OUTLINED_FUNCTION_12_1();
              sub_1B8FABCD4(v131);
              v132 = OUTLINED_FUNCTION_6();
              sub_1B8D538A0(v132, v11);

              OUTLINED_FUNCTION_14();
              *(v84 + v88) = v79;
            }

            v44 = v296;
            a2 = v297;
            a1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
            goto LABEL_102;
          }

          OUTLINED_FUNCTION_4_0();
          v134 = a1 == v133 + 14 && v282 == v76;
          if (v134 || (OUTLINED_FUNCTION_0_1(), v260 = v135, (sub_1B964C9F0() & 1) != 0))
          {

            OUTLINED_FUNCTION_30_0(v136, sel_unsignedIntValue);
            if (OUTLINED_FUNCTION_13())
            {
              v137 = OUTLINED_FUNCTION_2_0();
              sub_1B8D538A0(v137, v11);

              v79 = *&v79[v84];
            }

            else
            {
              v138 = OUTLINED_FUNCTION_29_0();
              OUTLINED_FUNCTION_19(v138);
              v139 = OUTLINED_FUNCTION_12_1();
              sub_1B8FABCD4(v139);
              v140 = OUTLINED_FUNCTION_6();
              sub_1B8D538A0(v140, v11);

              OUTLINED_FUNCTION_14();
              *(v84 + v88) = v79;
            }

            v44 = v296;
            a2 = v297;
            a1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
LABEL_102:
            OUTLINED_FUNCTION_18();
            *&v79[a1] = v78;
          }

          else
          {
            OUTLINED_FUNCTION_4_0();
            v142 = a1 == v141 && v281 == v76;
            if (v142 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
            {

              v143 = v298;
              v144 = v299;
              v145 = *&v298[v299];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v146 = OUTLINED_FUNCTION_2_0();
                sub_1B8D538A0(v146, v11);

                v143 = *&v143[v144];
              }

              else
              {
                v147 = v11;
                v148 = *&v143[v144];
                v149 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
                OUTLINED_FUNCTION_19(v149);
                v150 = OUTLINED_FUNCTION_22_1();
                sub_1B8FABCD4(v150);
                v151 = OUTLINED_FUNCTION_6();
                sub_1B8D538A0(v151, v147);

                OUTLINED_FUNCTION_10_0();
                *&v143[v144] = v143;
              }

              v44 = v296;
              a2 = v297;
              a1 = v294;
              v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
              goto LABEL_139;
            }

            v152 = a1 == v262 && v280 == v76;
            if (v152 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
            {

              v143 = v298;
              v153 = v299;
              v154 = *&v298[v299];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v155 = OUTLINED_FUNCTION_2_0();
                sub_1B8D538A0(v155, v11);

                v143 = *&v143[v153];
              }

              else
              {
                v156 = v11;
                v157 = *&v143[v153];
                v158 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
                OUTLINED_FUNCTION_19(v158);
                v159 = OUTLINED_FUNCTION_22_1();
                sub_1B8FABCD4(v159);
                v160 = OUTLINED_FUNCTION_6();
                sub_1B8D538A0(v160, v156);

                OUTLINED_FUNCTION_10_0();
                *&v143[v153] = v143;
              }

              v44 = v296;
              a2 = v297;
              a1 = v294;
              v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
LABEL_139:
              OUTLINED_FUNCTION_18();
              *&v143[v11] = a1;
            }

            else
            {
              v262 = v11;
              OUTLINED_FUNCTION_4_0();
              v162 = a1 == v161 + 5 && v279 == v76;
              if (v162 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                v79 = v298;
                a1 = v299;
                v163 = *&v298[v299];
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v164 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v164, v262);

                  v79 = *&v79[a1];
                }

                else
                {
                  v165 = *&v79[a1];
                  v166 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
                  OUTLINED_FUNCTION_19(v166);
                  v167 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v167);
                  v168 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v168, v262);

                  OUTLINED_FUNCTION_10_0();
                  *&v79[a1] = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
LABEL_158:
                OUTLINED_FUNCTION_18();
                *&v79[v11] = v294;
                goto LABEL_159;
              }

              OUTLINED_FUNCTION_4_0();
              v170 = v169 + 2;
              v171 = a1 == v169 + 2 && v278 == v76;
              if (v171 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v172 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v172, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v173 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v173);
                  v174 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v174);
                  v175 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v175, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                goto LABEL_158;
              }

              v176 = a1 == v263 && v277 == v76;
              if (v176 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v177 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v177, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v178 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v178);
                  v179 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v179);
                  v180 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v180, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                goto LABEL_158;
              }

              OUTLINED_FUNCTION_4_0();
              v182 = a1 == v181 && v276 == v76;
              if (v182 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v183 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v183, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v184 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v184);
                  v185 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v185);
                  v186 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v186, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                goto LABEL_158;
              }

              v187 = a1 == v170 && v275 == v76;
              if (v187 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v188 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v188, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v189 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v189);
                  v190 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v190);
                  v191 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v191, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                goto LABEL_158;
              }

              OUTLINED_FUNCTION_4_0();
              v193 = a1 == v192 && v274 == v76;
              if (v193 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v194 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v194, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v195 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v195);
                  v196 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v196);
                  v197 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v197, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                goto LABEL_158;
              }

              OUTLINED_FUNCTION_4_0();
              v11 = v198 + 3;
              v199 = a1 == v198 + 3 && v273 == v76;
              if (v199 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v200 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v200, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v201 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v201);
                  v202 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v202);
                  v203 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v203, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                goto LABEL_158;
              }

              OUTLINED_FUNCTION_4_0();
              v259 = v204 + 1;
              v205 = a1 == v204 + 1 && v272 == v76;
              if (v205 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v206 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v206, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v207 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v207);
                  v208 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v208);
                  v209 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v209, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                goto LABEL_158;
              }

              v210 = a1 == v11 && v271 == v76;
              if (v210 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v211 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v211, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v212 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v212);
                  v213 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v213);
                  v214 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v214, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                goto LABEL_158;
              }

              v215 = a1 == v259 && v270 == v76;
              if (v215 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v216 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v216, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v217 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v217);
                  v218 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v218);
                  v219 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v219, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                goto LABEL_158;
              }

              OUTLINED_FUNCTION_4_0();
              v221 = a1 == v220 + 19 && v269 == v76;
              if (v221 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v222 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v222, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v223 = OUTLINED_FUNCTION_31();
                  v79 = OUTLINED_FUNCTION_19(v223);

                  sub_1B8FABCD4(v224);
                  v225 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v225, v262);

                  OUTLINED_FUNCTION_14();
                  *(v84 + v88) = v79;
                }

                OUTLINED_FUNCTION_18();
                v226 = *(v79 + 3);
                *(v79 + 2) = v295;
                *(v79 + 3) = v78;
LABEL_259:

                goto LABEL_159;
              }

              OUTLINED_FUNCTION_4_0();
              v228 = a1 == v227 + 9 && v268 == v76;
              if (v228 || (OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  v229 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v229, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v230 = OUTLINED_FUNCTION_31();
                  v79 = OUTLINED_FUNCTION_19(v230);

                  sub_1B8FABCD4(v231);
                  v232 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v232, v262);

                  OUTLINED_FUNCTION_14();
                  *(v84 + v88) = v79;
                }

                v233 = &v79[OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName];
                OUTLINED_FUNCTION_18();
                v234 = *(v233 + 1);
                *v233 = v295;
                *(v233 + 1) = v78;
                goto LABEL_259;
              }

              v235 = a1 == v263 && v267 == v76;
              if (v235 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                if (OUTLINED_FUNCTION_21_0())
                {
                  __swift_destroy_boxed_opaque_existential_0(&v307);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v236 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v236);
                  v237 = OUTLINED_FUNCTION_22_1();
                  v79 = sub_1B8FABCD4(v237);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                OUTLINED_FUNCTION_18();
                v238 = *(v79 + 4);
                v239 = *(v79 + 5);
                v240 = v262;
                *(v79 + 4) = v301;
                *(v79 + 5) = v240;
                sub_1B8D538A0(v238, v239);
                goto LABEL_159;
              }

              v241 = a1 == v261 && v266 == v76;
              if (v241 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                Apple_Parsec_Feedback_V2_TCPInfo.init(tcpInfoDictionary:)(v84, v284);
                if (OUTLINED_FUNCTION_21_0())
                {
                  v242 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v242, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v243 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v243);
                  v244 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v244);
                  v245 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v245, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                a1 = v287;
                sub_1B8D57A70(v284, v287);
                OUTLINED_FUNCTION_33_0();
                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__startTimeCounts;
LABEL_278:
                swift_beginAccess();
                sub_1B8D57AD4(a1, &v79[v11]);
                swift_endAccess();
                goto LABEL_159;
              }

              v246 = a1 == v260 && v265 == v76;
              if (v246 || (OUTLINED_FUNCTION_4_0(), OUTLINED_FUNCTION_0_1(), (sub_1B964C9F0() & 1) != 0))
              {

                Apple_Parsec_Feedback_V2_TCPInfo.init(tcpInfoDictionary:)(v84, v285);
                if (OUTLINED_FUNCTION_21_0())
                {
                  v247 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v247, v262);

                  OUTLINED_FUNCTION_9_0();
                }

                else
                {
                  v248 = OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_19(v248);
                  v249 = OUTLINED_FUNCTION_22_1();
                  sub_1B8FABCD4(v249);
                  v250 = OUTLINED_FUNCTION_6();
                  sub_1B8D538A0(v250, v262);

                  OUTLINED_FUNCTION_10_0();
                  *(a1 + v84) = v79;
                }

                a1 = v287;
                sub_1B8D57A70(v285, v287);
                OUTLINED_FUNCTION_33_0();
                v11 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__stopTimeCounts;
                goto LABEL_278;
              }

              if (a1 == v88 && v264 == v76)
              {
              }

              else
              {
                OUTLINED_FUNCTION_4_0();
                OUTLINED_FUNCTION_0_1();
                v11 = sub_1B964C9F0();

                if ((v11 & 1) == 0)
                {
                  v252 = OUTLINED_FUNCTION_2_0();
                  sub_1B8D538A0(v252, v262);

                  goto LABEL_159;
                }
              }

              sub_1B8D56B9C(0x65636375534F4654, 0xEA00000000007373, v84, &v305);

              if (!v306)
              {
                sub_1B8D57BA0(&v305, &qword_1EBAB8C80, &qword_1B964D020);
LABEL_299:
                v11 = 0;
                goto LABEL_300;
              }

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_299;
              }

              v79 = v303;
              v11 = [v303 BOOLValue];

LABEL_300:
              if (OUTLINED_FUNCTION_21_0())
              {
                v253 = OUTLINED_FUNCTION_2_0();
                sub_1B8D538A0(v253, v262);

                OUTLINED_FUNCTION_9_0();
              }

              else
              {
                v254 = OUTLINED_FUNCTION_31();
                v79 = OUTLINED_FUNCTION_19(v254);

                sub_1B8FABCD4(v255);
                v256 = OUTLINED_FUNCTION_6();
                sub_1B8D538A0(v256, v262);

                OUTLINED_FUNCTION_14();
                *(v84 + v88) = v79;
              }

              a1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
              OUTLINED_FUNCTION_18();
              v79[a1] = v11;
LABEL_159:
              v44 = v296;
              a2 = v297;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B8D567EC(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v41 = result;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v2 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B8D53D4C(*(v2 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_1B8D53D4C(&v36, v32);
    sub_1B8D56C00();

    if (swift_dynamicCast())
    {
      v17 = v33;
      goto LABEL_14;
    }

    sub_1B8D53D4C(&v36, v32);
    if (swift_dynamicCast() && (v18 = sub_1B964C860(), , v17 = [a2 numberFromString_], v18, v17))
    {
LABEL_14:
      v34[0] = v36;
      v34[1] = v37;
      v33 = v35;
      v19 = *(v3 + 16);
      if (*(v3 + 24) <= v19)
      {
        sub_1B8D56F18(v19 + 1, 1);
      }

      v3 = v40;
      v20 = v33;
      v21 = *(v40 + 40);
      sub_1B964CA70();
      sub_1B964C8A0();
      result = sub_1B964CA90();
      v22 = v3 + 64;
      v23 = -1 << *(v3 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v3 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v3 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v3 + 48) + 16 * v26) = v20;
      *(*(v3 + 56) + 8 * v26) = v17;
      ++*(v3 + 16);
      result = __swift_destroy_boxed_opaque_existential_0(v34);
      v2 = v41;
    }

    else
    {
      result = sub_1B8D57BA0(&v35, &qword_1EBAB8C70, &qword_1B964CFF8);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v3;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

Swift::UInt32 __swiftcall Double.normalizedToEpoch(_:)(Swift::Double a1)
{
  if (a1 >= v1)
  {
    return 0;
  }

  v2 = (v1 - a1) * 1000.0;
  if (v2 >= 4294967300.0)
  {
    return -1;
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    if (v2 < 4294967300.0)
    {
      return v2;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

double sub_1B8D56B9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B964BDF8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B8D53D4C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_1B8D56C00()
{
  result = qword_1ED9CF520;
  if (!qword_1ED9CF520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9CF520);
  }

  return result;
}

unint64_t sub_1B8D56C44(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8D56C64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C98, &qword_1B964D038);
  v36 = a2;
  result = sub_1B964C9D0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1B8D571B8(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1B8D53F2C(v23, v37);
    }

    else
    {
      sub_1B8D53D4C(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_1B964CA70();
    sub_1B964C8A0();
    result = sub_1B964CA90();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1B8D53F2C(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B8D56F18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C90, &qword_1B964D030);
  v39 = a2;
  result = sub_1B964C9D0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1B8D571B8(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_1B964CA70();
    sub_1B964C8A0();
    result = sub_1B964CA90();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B8D571B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B964D010;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_1B8D5721C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1B8D5756C(v9, v4, v2);
      MEMORY[0x1BFADCDF0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B8D571B8(0, v4, v5);
  sub_1B8D57380(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B8D57380(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a1;
  v25 = 0;
  v26 = a3;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v27 = v4;
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(v26 + 56) + 8 * v14);
    v28[0] = *v15;
    v28[1] = v16;
    MEMORY[0x1EEE9AC00](a1);
    v22[2] = v28;

    v18 = v17;
    v4 = v27;
    if (sub_1B8D57860(sub_1B8D57B80, v22, &unk_1F37695F0))
    {
      [v18 doubleValue];
      v20 = v19;

      if (v20 != 0.0)
      {
        *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v25++, 1))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      sub_1B8D575E4(v24, v23, v25, v26);
      return;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v27 = v4;
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t *sub_1B8D5756C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B8D57380(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}