uint64_t sub_2660B9A0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2660B9AA0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2660B9B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2660B9BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2660B9D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C2B70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2660B9EB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2660B9ED0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2660B9F20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660B9F5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660B9F94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2660B9FE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA060()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2660BA098()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t get_enum_tag_for_layout_string_20SiriAppLaunchIntents31ExecutionDeviceResolutionResultO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2660BA0F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2660BA12C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA1A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2660BA1DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  v2 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 130, 7);
}

uint64_t sub_2660BA22C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  v2 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2660BA27C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660BA2C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA2F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2660BA33C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA374()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

BOOL sub_2660BA3B8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2660BA404()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA43C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2660BA4C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660BA520()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA558()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA5C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA5FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2660BA654()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660BA6A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA6D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  OUTLINED_FUNCTION_16(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2660BA764()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA79C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2660BA7F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660BA83C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660BA898()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA8D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26618C4D0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2660BA8FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26618C4C0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2660BA950(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26618CCD0();
    if (v3)
    {
      v4 = v3;
      v1 = sub_266140AE8(v3, 0);
      sub_266142170();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_2660BAA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26618BDB0();
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

uint64_t sub_2660BAB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26618BDB0();
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

uint64_t sub_2660BAD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C0E0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2660BADC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C0E0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2660BAFCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660BB004()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2660BB09C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26618A620();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2660BB124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26618A620();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2660BB1A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2660BB1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2660BB230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2660BB310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26617158C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2660BB36C()
{
  OUTLINED_FUNCTION_58_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_136();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
    v8 = OUTLINED_FUNCTION_39_3(v7);
    if (*(v9 + 84) == v0)
    {
      v6 = v8;
      v10 = *(v2 + 24);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
      v10 = *(v2 + 28);
    }

    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_2660BB45C()
{
  OUTLINED_FUNCTION_26_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_39_3(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
      v7 = *(v0 + 28);
    }
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_2660BB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v7 = OUTLINED_FUNCTION_39_3(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
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

uint64_t sub_2660BB698()
{
  OUTLINED_FUNCTION_26_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  result = OUTLINED_FUNCTION_39_3(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_109();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_2660BB77C()
{
  OUTLINED_FUNCTION_58_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  OUTLINED_FUNCTION_39_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_136();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    v8 = OUTLINED_FUNCTION_39_3(v7);
    if (*(v9 + 84) == v0)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
      v10 = *(v2 + 24);
    }

    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_2660BB86C()
{
  OUTLINED_FUNCTION_26_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  OUTLINED_FUNCTION_39_3(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_39_3(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
      v7 = *(v0 + 24);
    }
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_2660BBBA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BBC08()
{
  v1 = sub_26618A5B0();
  OUTLINED_FUNCTION_26_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2660BBC84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2660BBCBC()
{
  v1 = sub_26618A5B0();
  OUTLINED_FUNCTION_26_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2660BBD4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2660BBD8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = LaunchAppIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t sub_2660BBDE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CloseAppIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t sub_2660BBE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeepLaunchPageNameUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2660BBEA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DeepLaunchIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t sub_2660BC018()
{
  sub_2660BC49C();
  result = sub_26618CBC0();
  qword_28005D0E0 = result;
  return result;
}

uint64_t sub_2660BC0D8(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_26618C6B0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_26618C6C0();
}

uint64_t sub_2660BC164()
{
  v0 = sub_26618C6B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26618C630();
  __swift_allocate_value_buffer(v5, qword_28005D100);
  __swift_project_value_buffer(v5, qword_28005D100);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_2814B4A80);
  (*(v1 + 16))(v4, v6, v0);
  return sub_26618C610();
}

uint64_t variable initialization expression of AppLaunchDataModels.AppResultWrapperModel._seeMoreSash()
{
  type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  v0 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t variable initialization expression of AppLaunchDataModels.AppOffloadedModel._confirmReinstallAction()
{
  sub_26618AB50();
  v0 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2660BC358@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2660BC390@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0();
  *a1 = result;
  return result;
}

uint64_t sub_2660BC3B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2661046B0(*a1, *v2);
  *a2 = result;
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2660BC49C()
{
  result = qword_2814B2BF0;
  if (!qword_2814B2BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2BF0);
  }

  return result;
}

uint64_t type metadata accessor for CloseAppCATPatternsExecutor()
{
  result = qword_28005BCC0;
  if (!qword_28005BCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2660BC58C(__int16 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  result = swift_allocObject();
  *(result + 16) = xmmword_26618E180;
  v3 = MEMORY[0x277D839B0];
  *(result + 32) = 0xD000000000000017;
  *(result + 40) = 0x8000000266197B70;
  *(result + 48) = a1 & 1;
  *(result + 72) = v3;
  strcpy((result + 80), "hasHomeButton");
  *(result + 94) = -4864;
  *(result + 120) = v3;
  *(result + 96) = HIBYTE(a1) & 1;
  return result;
}

uint64_t sub_2660BC638(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BC650()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_26618E190;
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000266197B70;
  *(v2 + 72) = MEMORY[0x277D839B0];
  *(v2 + 48) = v1;
  v3 = OUTLINED_FUNCTION_5(MEMORY[0x277D55BE8]);
  *(v0 + 32) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_3(v3);

  return v5(0xD000000000000015);
}

uint64_t sub_2660BC760()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660BC8A0, 0, 0);
  }

  else
  {
    v8 = *(v2 + 24);

    v9 = OUTLINED_FUNCTION_4();

    return v10(v9);
  }
}

uint64_t sub_2660BC8A0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2660BC904(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BC920()
{
  OUTLINED_FUNCTION_1_0();
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 24) = sub_2660BC58C(v1 | *(v0 + 48));
  v2 = OUTLINED_FUNCTION_5(MEMORY[0x277D55BE8]);
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_3(v2);

  return v4(0xD00000000000001CLL);
}

uint64_t sub_2660BC9EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2660BCA40(a1, a2);
}

uint64_t sub_2660BCA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_2660BCC2C(a1, &v13 - v10);
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_26618C2C0();
  (*(v5 + 8))(a2, v4);
  sub_2660BCC9C(a1);
  return v11;
}

uint64_t sub_2660BCBAC()
{
  v0 = sub_26618C2E0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
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

uint64_t sub_2660BCC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660BCC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_2660BCDD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_2_0(v10, xmmword_26618E250);
  sub_2660BDD94(v11, v9, &qword_28005BCF0, &unk_26618E2F0);
  v12 = sub_26618C300();
  OUTLINED_FUNCTION_10(v9);
  if (v13)
  {
    sub_2660BDDF8(v9, &qword_28005BCF0, &unk_26618E2F0);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v12;
    __swift_allocate_boxed_opaque_existential_0((v10 + 48));
    OUTLINED_FUNCTION_4_0(v12);
    (*(v14 + 32))();
  }

  OUTLINED_FUNCTION_9();
  *(v10 + 80) = v16;
  *(v10 + 88) = v15;
  v17 = type metadata accessor for DeepLaunchLaunchingQuickActionParameters(0);
  v18 = MEMORY[0x277D839B0];
  *(v10 + 96) = *(v0 + *(v17 + 20));
  *(v10 + 120) = v18;
  *(v10 + 128) = 0x7463416B63697571;
  *(v10 + 136) = 0xEF656D614E6E6F69;
  sub_2660BDD94(v0 + *(v17 + 24), v7, &qword_28005BCF0, &unk_26618E2F0);
  OUTLINED_FUNCTION_10(v7);
  if (v13)
  {
    sub_2660BDDF8(v7, &qword_28005BCF0, &unk_26618E2F0);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v12;
    __swift_allocate_boxed_opaque_existential_0((v10 + 144));
    OUTLINED_FUNCTION_4_0(v12);
    (*(v19 + 32))();
  }

  return v10;
}

uint64_t sub_2660BD00C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_2_0(v7, xmmword_26618E180);
  sub_2660BDD94(v8, v6, &qword_28005BCF0, &unk_26618E2F0);
  v9 = sub_26618C300();
  OUTLINED_FUNCTION_10(v6);
  if (v10)
  {
    sub_2660BDDF8(v6, &qword_28005BCF0, &unk_26618E2F0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    OUTLINED_FUNCTION_4_0(v9);
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_9();
  *(v7 + 80) = v13;
  *(v7 + 88) = v12;
  v14 = *(v0 + *(type metadata accessor for DeepLaunchUnableToLaunchQuickActionParameters(0) + 20));
  *(v7 + 120) = MEMORY[0x277D839B0];
  *(v7 + 96) = v14;
  return v7;
}

uint64_t sub_2660BD174(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 104) = a1;
  v7 = type metadata accessor for DeepLaunchLaunchingQuickActionParameters(0);
  *(v6 + 56) = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2660BD20C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 104);
  v8 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 24), 1, 1, v8);
  *(v1 + *(v2 + 20)) = v7;
  sub_26610B258(v1);
  *(v0 + 72) = sub_2660BCDD4();
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_3(v10);

  return v12(0xD00000000000001FLL);
}

uint64_t sub_2660BD350(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v4 + 88) = v1;

  if (!v1)
  {
    *(v4 + 96) = a1;
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660BD490()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_2660BD510()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_2660BD58C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 96) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v8 = type metadata accessor for DeepLaunchUnableToLaunchQuickActionParameters(0);
  *(v4 + 48) = v8;
  OUTLINED_FUNCTION_3_0(v8);
  v10 = *(v9 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660BD654()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 96);
  v7 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  *(v1 + *(v2 + 20)) = v6;
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  sub_2660BDBE8(v3, v1);
  *(v0 + 64) = sub_2660BD00C();
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_3(v9);

  return v11(0xD000000000000024);
}

uint64_t sub_2660BD7A8(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v4 + 80) = v1;

  if (!v1)
  {
    *(v4 + 88) = a1;
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660BD8E8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_2660BD968()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_2660BD9E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2660BDA38(a1, a2);
}

uint64_t sub_2660BDA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  sub_2660BDD94(a1, &v16 - v13, &qword_28005BCD0, &qword_26618E238);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_26618C2C0();
  (*(v5 + 8))(a2, v4);
  sub_2660BDDF8(a1, &qword_28005BCD0, &qword_26618E238);
  return v14;
}

uint64_t sub_2660BDBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2660BDD00(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2660BDD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2660BDD94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2660BDDF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_2660BDE7C()
{
  sub_2660BDEF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2660BDEF8()
{
  if (!qword_28005BD08)
  {
    sub_26618C300();
    v0 = sub_26618CBD0();
    if (!v1)
    {
      atomic_store(v0, &qword_28005BD08);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_2660BE0F4()
{
  sub_2660BDEF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[8];

  return sub_2660BDD38(v4, type metadata accessor for DeepLaunchLaunchingQuickActionParameters);
}

uint64_t OUTLINED_FUNCTION_1_1()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];

  return sub_2660BDD38(v4, type metadata accessor for DeepLaunchUnableToLaunchQuickActionParameters);
}

uint64_t OUTLINED_FUNCTION_2_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return v2;
}

uint64_t sub_2660BE2A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26618E180;
  *(v7 + 32) = 0x656D614E707061;
  *(v7 + 40) = 0xE700000000000000;
  sub_2660BF73C(v0, v6, &qword_28005BCF0, &unk_26618E2F0);
  v8 = sub_26618C300();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    sub_2660BF79C(v6, &qword_28005BCF0, &unk_26618E2F0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, v6, v8);
  }

  OUTLINED_FUNCTION_13();
  *(v7 + 80) = 0xD000000000000017;
  *(v7 + 88) = v10;
  v11 = *(v0 + *(type metadata accessor for LaunchAppLaunchFailedParameters(0) + 20));
  *(v7 + 120) = MEMORY[0x277D839B0];
  *(v7 + 96) = v11;
  return v7;
}

uint64_t sub_2660BE444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26618E250;
  OUTLINED_FUNCTION_13();
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = v9;
  *(v8 + 48) = *v0;
  OUTLINED_FUNCTION_13();
  *(v10 + 72) = v12;
  *(v10 + 80) = v11;
  *(v10 + 88) = v13;
  *(v10 + 96) = v0[1];
  *(v10 + 120) = v12;
  *(v10 + 128) = 0x656D614E6D6F6F72;
  *(v10 + 136) = 0xE800000000000000;
  found = type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters(0);
  sub_2660BF73C(&v0[*(found + 24)], v6, &qword_28005BCF0, &unk_26618E2F0);
  v15 = sub_26618C300();
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
  {
    sub_2660BF79C(v6, &qword_28005BCF0, &unk_26618E2F0);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 144));
    (*(*(v15 - 8) + 32))(boxed_opaque_existential_0, v6, v15);
  }

  return v7;
}

uint64_t sub_2660BE600(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BE618()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v2 = OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_7(v2, "executeSashGroupOnWatch");
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55BE8];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_5_0(v4);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v7[1] = sub_2660BE704;
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_10_0();

  return v10();
}

uint64_t sub_2660BE704()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_2_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_4();

    return v14(v13);
  }
}

uint64_t sub_2660BE82C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2660BE88C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BE8A4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v2 = OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_7(v2, "executeSashGroupOnWatch");
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55BE8];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_5_0(v4);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v7[1] = sub_2660BE990;
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_10_0();

  return v10();
}

uint64_t sub_2660BE990()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_2_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_4();

    return v14(v13);
  }
}

uint64_t sub_2660BEAB8()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 16) = v3;
  *(v0 + 96) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64) + 15;
  *(v0 + 40) = swift_task_alloc();
  v8 = type metadata accessor for LaunchAppLaunchFailedParameters(0);
  *(v0 + 48) = v8;
  OUTLINED_FUNCTION_3_0(v8);
  v10 = *(v9 + 64) + 15;
  *(v0 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660BEB80, 0, 0);
}

uint64_t sub_2660BEB80()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 96);
  v7 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  *(v1 + *(v2 + 20)) = v6;
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  sub_2660BDBE8(v3, v1);
  *(v0 + 64) = sub_2660BE2A8();
  OUTLINED_FUNCTION_5_0(MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_3(v8);
  v9 = OUTLINED_FUNCTION_15(22);

  return v10(v9);
}

uint64_t sub_2660BECC4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_2_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660BEDEC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_2660BEE6C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_2660BEEE8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BEF00()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v2 = OUTLINED_FUNCTION_21();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_26618E190;
  OUTLINED_FUNCTION_13();
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = v4;
  *(v3 + 72) = MEMORY[0x277D839B0];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_5_0(MEMORY[0x277D55BE8]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_3(v5);
  v6 = OUTLINED_FUNCTION_15(22);

  return v7(v6);
}

uint64_t sub_2660BF004()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 90) = v3;
  *(v0 + 16) = v4;
  *(v0 + 89) = v5;
  *(v0 + 88) = v6;
  found = type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters(0);
  *(v0 + 40) = found;
  OUTLINED_FUNCTION_3_0(found);
  v9 = *(v8 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660BF0A0, 0, 0);
}

uint64_t sub_2660BF0A0()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 90);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = *(*(v0 + 40) + 24);
  v8 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(&v1[v7], 1, 1, v8);
  *v1 = v6;
  v1[1] = v5;
  sub_26617BDF0(v1, v4, v3, v2);
  *(v0 + 56) = sub_2660BE444();
  OUTLINED_FUNCTION_5_0(MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_3(v9);
  v10 = OUTLINED_FUNCTION_15(31);

  return v11(v10);
}

uint64_t sub_2660BF1B8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_2_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660BF2E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_2660BF350()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_2660BF3BC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BF3D4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v2 = OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_7(v2, "executeSashGroupOnWatch");
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55BE8];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_5_0(v4);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v7[1] = sub_2660BE990;
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_10_0();

  return v10();
}

uint64_t sub_2660BF4C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2660BF514(a1, a2);
}

uint64_t sub_2660BF514(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_2660BF73C(a1, &v16 - v13, &qword_28005BCD0, &qword_26618E238);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_26618C2C0();
  (*(v5 + 8))(a2, v4);
  sub_2660BF79C(a1, &qword_28005BCD0, &qword_26618E238);
  return v14;
}

uint64_t sub_2660BF6E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2660BF73C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2660BF79C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_2660BF81C()
{
  sub_2660BDEF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000017;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);

  return sub_2660BF6E4(v3, type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters);
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];

  return sub_2660BF6E4(v4, type metadata accessor for LaunchAppLaunchFailedParameters);
}

uint64_t OUTLINED_FUNCTION_20(__n128 a1)
{
  *(v2 + 24) = v1;
  v1[1] = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_allocObject();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2660BFA3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660BFA7C(uint64_t result, int a2, int a3)
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

uint64_t sub_2660BFAD0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BFAE8()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_12(*(v1 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v5[2].n128_u64[0] = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  v5[2].n128_u64[1] = 0xE700000000000000;
  v5[4].n128_u64[1] = MEMORY[0x277D837D0];
  v5[3].n128_u64[0] = v3;
  v5[3].n128_u64[1] = v2;

  OUTLINED_FUNCTION_45();
  *(v1 + 120) = sub_26618C850();
  v7 = *v0;
  v8 = swift_task_alloc();
  *(v1 + 128) = v8;
  *v8 = v1;
  OUTLINED_FUNCTION_51(v8);
  OUTLINED_FUNCTION_21_0(22);

  return sub_2660C7BDC();
}

uint64_t sub_2660BFC14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_2660BFD20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F68636E75507369 && a2 == 0xEA00000000007475;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7070416C6C417369 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2660BFE54(char a1)
{
  if (!a1)
  {
    return 0x656D614E707061;
  }

  if (a1 == 1)
  {
    return 0x4F68636E75507369;
  }

  return 0x7070416C6C417369;
}

uint64_t sub_2660BFEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660BFD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660BFF04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660BFE40();
  *a1 = result;
  return result;
}

uint64_t sub_2660BFF2C(uint64_t a1)
{
  v2 = sub_2660C60E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660BFF68(uint64_t a1)
{
  v2 = sub_2660C60E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2660BFFA4()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE00, &qword_26618EA78);
  OUTLINED_FUNCTION_2_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28();
  v10 = v3[4];
  OUTLINED_FUNCTION_35(v3, v3[3]);
  sub_2660C60E8();
  OUTLINED_FUNCTION_64();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF60();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_39();
}

void sub_2660C00F4()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE28, &qword_26618EA90);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C60E8();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6();
  sub_26618CEF0();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_6();
  sub_26618CF10();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6();
  sub_26618CF10();
  v5 = OUTLINED_FUNCTION_5_1();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

void sub_2660C0278(uint64_t a1@<X8>)
{
  sub_2660C00F4();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 17) = HIBYTE(v5) & 1;
  }
}

void sub_2660C02B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  *(v0 + 17);
  sub_2660BFFA4();
}

uint64_t sub_2660C02E8()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  *(v1 + 88) = v0;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C037C, 0, 0);
}

uint64_t sub_2660C037C()
{
  OUTLINED_FUNCTION_68();
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12(*(v1 + 88));
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C57BC();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v2 = sub_26618A520();
  *(v1 + 72) = 0;
  v3 = OUTLINED_FUNCTION_44(v2, sel_JSONObjectWithData_options_error_);

  v4 = *(v1 + 72);
  if (v3)
  {
    v5 = v4;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v6 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v6, v7);
      v3 = *(v1 + 80);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = v4;
    OUTLINED_FUNCTION_25();
    v9 = sub_26618A4C0();

    v3 = v9;
    swift_willThrow();
  }

  sub_26618C850();
  v10 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v10, v11);
LABEL_8:
  *(v1 + 96) = v3;
  v12 = *v0;
  v13 = swift_task_alloc();
  *(v1 + 104) = v13;
  *v13 = v1;
  OUTLINED_FUNCTION_42(v13);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(22);

  return sub_2660C7BDC();
}

uint64_t sub_2660C05D0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 104);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_73();
  v6 = *(v5 + 96);

  OUTLINED_FUNCTION_72();
  v9 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_31();
  }

  return v8(v7);
}

uint64_t sub_2660C072C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C0740()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_12(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v3[2].n128_u64[0] = v4 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v3[2].n128_u64[1] = 0xE800000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD98, &qword_26618E560);
  OUTLINED_FUNCTION_62(v5);
  OUTLINED_FUNCTION_45();
  v6 = sub_26618C850();
  OUTLINED_FUNCTION_52(v6);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_21_0(26);

  return sub_2660C7BDC();
}

uint64_t sub_2660C085C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 120);
  v5 = *(v3 + 112);
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_2660C0968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C7074656B72616DLL && a2 == 0xEF656D614E656361;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000266197FA0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2660C0AE0(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x614E656369766564;
      break;
    case 2:
      result = 0x6C7074656B72616DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660C0B78()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDA8, &qword_26618EA48);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_35(v9, v10);
  sub_2660C5EF0();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_30();
  sub_26618D0F0();
  v11 = *v2;
  v12 = v2[1];
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF60();
  if (!v1)
  {
    v13 = v2[2];
    v14 = v2[3];
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    v15 = v2[4];
    v16 = v2[5];
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    v17 = *(v2 + 48);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
  }

  v18 = OUTLINED_FUNCTION_49();
  return v19(v18);
}

void sub_2660C0CC0()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE58, &qword_26618EAC0);
  OUTLINED_FUNCTION_2_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  v8 = v0[4];
  OUTLINED_FUNCTION_35(v0, v0[3]);
  sub_2660C5EF0();
  sub_26618D0E0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_40();
    v9 = sub_26618CEF0();
    v21 = v10;
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_40();
    v11 = sub_26618CEF0();
    v20 = v12;
    v18 = v11;
    OUTLINED_FUNCTION_33();
    v17 = sub_26618CEF0();
    v19 = v13;
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_40();
    v14 = sub_26618CF10();
    v15 = OUTLINED_FUNCTION_17_0();
    v16(v15);

    __swift_destroy_boxed_opaque_existential_1(v0);

    *v3 = v9;
    *(v3 + 8) = v21;
    *(v3 + 16) = v18;
    *(v3 + 24) = v20;
    *(v3 + 32) = v17;
    *(v3 + 40) = v19;
    *(v3 + 48) = v14 & 1;
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C0F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C0968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C0F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660C0AD8();
  *a1 = result;
  return result;
}

uint64_t sub_2660C0F88(uint64_t a1)
{
  v2 = sub_2660C5EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C0FC4(uint64_t a1)
{
  v2 = sub_2660C5EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2660C1000@<D0>(uint64_t a1@<X8>)
{
  sub_2660C0CC0();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_2660C1068()
{
  OUTLINED_FUNCTION_18();
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C10F4, 0, 0);
}

uint64_t sub_2660C10F4()
{
  OUTLINED_FUNCTION_68();
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 120);
  OUTLINED_FUNCTION_12(*(v1 + 128));
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  *(v1 + 64) = *(v2 + 48);
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  *(v1 + 16) = v5;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C556C();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v6 = sub_26618A520();
  *(v1 + 104) = 0;
  v7 = OUTLINED_FUNCTION_44(v6, sel_JSONObjectWithData_options_error_);

  v8 = *(v1 + 104);
  if (v7)
  {
    v9 = v8;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v10 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v10, v11);
      v7 = *(v1 + 112);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v8;
    OUTLINED_FUNCTION_25();
    v13 = sub_26618A4C0();

    v7 = v13;
    swift_willThrow();
  }

  sub_26618C850();
  v14 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v14, v15);
LABEL_8:
  *(v1 + 136) = v7;
  v16 = *v0;
  v17 = swift_task_alloc();
  *(v1 + 144) = v17;
  *v17 = v1;
  OUTLINED_FUNCTION_42(v17);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(21);

  return sub_2660C7BDC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2660C13A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7074656B72616DLL && a2 == 0xEF656D614E656361;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000266197FC0 == a2;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4373746C75736572 && a2 == 0xEC000000746E756FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2660C1510(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x6C7074656B72616DLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x4373746C75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660C15AC()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDB0, &qword_26618EA50);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_35(v9, v10);
  sub_2660C5F44();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_30();
  sub_26618D0F0();
  v11 = *v2;
  v12 = v2[1];
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF70();
  if (!v1)
  {
    v13 = v2[2];
    v14 = v2[3];
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    v15 = *(v2 + 32);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
    v16 = v2[5];
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_11();
    sub_26618CF90();
  }

  v17 = OUTLINED_FUNCTION_49();
  return v18(v17);
}

void sub_2660C16F4()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE50, &qword_26618EAB8);
  OUTLINED_FUNCTION_2_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_46();
  v9 = v2[4];
  OUTLINED_FUNCTION_35(v2, v2[3]);
  sub_2660C5F44();
  sub_26618D0E0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_48();
    v10 = sub_26618CF00();
    v18 = v11;
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_48();
    v16 = sub_26618CEF0();
    v17 = v12;
    OUTLINED_FUNCTION_33();
    v19 = sub_26618CF10();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_48();
    v13 = sub_26618CF20();
    v14 = OUTLINED_FUNCTION_29();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v4 = v10;
    *(v4 + 8) = v18;
    *(v4 + 16) = v16;
    *(v4 + 24) = v17;
    *(v4 + 32) = v19 & 1;
    *(v4 + 40) = v13;
  }

  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C1900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C13A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C1928(uint64_t a1)
{
  v2 = sub_2660C5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C1964(uint64_t a1)
{
  v2 = sub_2660C5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2660C19A0@<D0>(_OWORD *a1@<X8>)
{
  sub_2660C16F4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2660C19FC()
{
  OUTLINED_FUNCTION_18();
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C1A88, 0, 0);
}

uint64_t sub_2660C1A88()
{
  OUTLINED_FUNCTION_68();
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 112);
  OUTLINED_FUNCTION_12(*(v1 + 120));
  v4 = v2[1];
  v3 = v2[2];
  *(v1 + 16) = *v2;
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C5618();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v5 = sub_26618A520();
  *(v1 + 96) = 0;
  v6 = OUTLINED_FUNCTION_44(v5, sel_JSONObjectWithData_options_error_);

  v7 = *(v1 + 96);
  if (v6)
  {
    v8 = v7;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v9 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v9, v10);
      v6 = *(v1 + 104);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v7;
    OUTLINED_FUNCTION_25();
    v12 = sub_26618A4C0();

    v6 = v12;
    swift_willThrow();
  }

  sub_26618C850();
  v13 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v13, v14);
LABEL_8:
  *(v1 + 128) = v6;
  v15 = *v0;
  v16 = swift_task_alloc();
  *(v1 + 136) = v16;
  *v16 = v1;
  OUTLINED_FUNCTION_42(v16);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(40);

  return sub_2660C7BDC();
}

uint64_t sub_2660C1CEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2660C1DC4(char a1)
{
  sub_26618D090();
  MEMORY[0x26677C460](a1 & 1);
  return sub_26618D0C0();
}

uint64_t sub_2660C1E0C(char a1)
{
  if (a1)
  {
    return 0x614E656369766564;
  }

  else
  {
    return 0x656D614E707061;
  }
}

void sub_2660C1E48()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDD0, &qword_26618EA60);
  OUTLINED_FUNCTION_2_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v10 = v3[4];
  OUTLINED_FUNCTION_35(v3, v3[3]);
  sub_2660C5FEC();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  sub_26618CF60();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_0();
    sub_26618CF60();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_39();
}

void sub_2660C1F88()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE40, &qword_26618EAA8);
  OUTLINED_FUNCTION_2_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C5FEC();
  OUTLINED_FUNCTION_26();
  if (!v1)
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_6();
    sub_26618CEF0();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_6();
    sub_26618CEF0();
    v6 = OUTLINED_FUNCTION_5_1();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C20F0()
{
  v1 = *v0;
  sub_26618D090();
  MEMORY[0x26677C460](v1);
  return sub_26618D0C0();
}

uint64_t sub_2660C213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C1CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C2164@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660C1DBC();
  *a1 = result;
  return result;
}

uint64_t sub_2660C218C(uint64_t a1)
{
  v2 = sub_2660C5FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C21C8(uint64_t a1)
{
  v2 = sub_2660C5FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2660C2204(void *a1@<X8>)
{
  sub_2660C1F88();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_2660C2234()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2660C1E48();
}

uint64_t sub_2660C2254()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C22E8, 0, 0);
}

uint64_t sub_2660C22E8()
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = *(v1 + 96);
  v18 = *(v1 + 112);
  v2 = __swift_project_boxed_opaque_existential_1(*(v1 + 128), *(*(v1 + 128) + 24));
  *(v1 + 16) = v17;
  *(v1 + 32) = v18;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C56C0();
  OUTLINED_FUNCTION_75();
  if (v0)
  {

    v3 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v4 = sub_26618A520();
  *(v1 + 80) = 0;
  v3 = OUTLINED_FUNCTION_43(v4, sel_JSONObjectWithData_options_error_);

  v5 = *(v1 + 80);
  if (v3)
  {
    v6 = v5;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v7 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v7, v8);
      v3 = *(v1 + 88);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = v5;
    v10 = OUTLINED_FUNCTION_76();

    v3 = v10;
    swift_willThrow();
  }

  sub_26618C850();
  v11 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v11, v12);
LABEL_10:
  *(v1 + 136) = v3;
  v13 = *v2;
  v14 = swift_task_alloc();
  *(v1 + 144) = v14;
  *v14 = v1;
  v14[1] = sub_2660C7128;
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(22);

  return sub_2660C7BDC();
}

void sub_2660C257C()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDF0, &qword_26618EA70);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_46();
  v5 = v0[4];
  OUTLINED_FUNCTION_35(v0, v0[3]);
  sub_2660C6094();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_53();
  sub_26618CF70();
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C2658(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE30, &qword_26618EA98);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C6094();
  OUTLINED_FUNCTION_30();
  sub_26618D0E0();
  if (!v1)
  {
    sub_26618CF00();
    v7 = OUTLINED_FUNCTION_41();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_56();
}

uint64_t sub_2660C2794@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2660C27C0(uint64_t a1)
{
  v2 = sub_2660C6094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C27FC(uint64_t a1)
{
  v2 = sub_2660C6094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2660C2838@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2660C2658(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_2660C2864()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2660C257C();
}

uint64_t sub_2660C2880()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C2910, 0, 0);
}

uint64_t sub_2660C2910()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_12(*(v1 + 96));
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C5768();
  OUTLINED_FUNCTION_75();
  if (v3)
  {

    v4 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v5 = sub_26618A520();
  *(v1 + 64) = 0;
  v4 = OUTLINED_FUNCTION_43(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 64);
  if (v4)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_61())
    {
      v8 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v8, v9);
      v4 = *(v1 + 72);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_76();

    v4 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v12, v13);
LABEL_10:
  *(v1 + 104) = v4;
  v14 = *v0;
  v15 = swift_task_alloc();
  *(v1 + 112) = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_42(v15);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(41);

  return sub_2660C7BDC();
}

uint64_t sub_2660C2B70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26618D000();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2660C2BE8()
{
  sub_26618D090();
  MEMORY[0x26677C460](0);
  return sub_26618D0C0();
}

void sub_2660C2C2C()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDE0, &qword_26618EA68);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_46();
  v5 = v0[4];
  OUTLINED_FUNCTION_35(v0, v0[3]);
  sub_2660C6040();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_53();
  sub_26618CF60();
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C2D08(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE38, &qword_26618EAA0);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C6040();
  OUTLINED_FUNCTION_30();
  sub_26618D0E0();
  if (!v1)
  {
    sub_26618CEF0();
    v7 = OUTLINED_FUNCTION_41();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_56();
}

uint64_t sub_2660C2E20()
{
  sub_26618D090();
  MEMORY[0x26677C460](0);
  return sub_26618D0C0();
}

uint64_t sub_2660C2E60(uint64_t a1)
{
  v2 = sub_2660C6040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C2E9C(uint64_t a1)
{
  v2 = sub_2660C6040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2660C2ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2660C2D08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_2660C2F04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2660C2C2C();
}

uint64_t sub_2660C2F20()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C2FB0, 0, 0);
}

uint64_t sub_2660C2FB0()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_12(*(v1 + 96));
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C5714();
  OUTLINED_FUNCTION_75();
  if (v3)
  {

    v4 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v5 = sub_26618A520();
  *(v1 + 64) = 0;
  v4 = OUTLINED_FUNCTION_43(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 64);
  if (v4)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_61())
    {
      v8 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v8, v9);
      v4 = *(v1 + 72);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_76();

    v4 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v12, v13);
LABEL_10:
  *(v1 + 104) = v4;
  v14 = *v0;
  v15 = swift_task_alloc();
  *(v1 + 112) = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_42(v15);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(34);

  return sub_2660C7BDC();
}

uint64_t sub_2660C3210()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 112);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_73();
  v6 = *(v5 + 104);

  OUTLINED_FUNCTION_72();
  v9 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_31();
  }

  return v8(v7);
}

uint64_t sub_2660C336C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C3384()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[18];
  v2 = v0[17];
  sub_2660C5864(v0[19], (v0 + 12));
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_71(inited, xmmword_26618E190);
  v5[2].n128_u64[0] = v6 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
  v5[2].n128_u64[1] = 0xEA0000000000656DLL;
  v5[4].n128_u64[1] = MEMORY[0x277D837D0];
  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v1)
  {
    v8 = v1;
  }

  v5[3].n128_u64[0] = v7;
  v5[3].n128_u64[1] = v8;

  OUTLINED_FUNCTION_45();
  v0[20] = sub_26618C850();
  v9 = *v3;
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_51(v10);
  OUTLINED_FUNCTION_21_0(32);

  return sub_2660C7BDC();
}

uint64_t sub_2660C34D8()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v4 + 176) = v0;

  if (v0)
  {
    v9 = sub_2660C3678;
  }

  else
  {
    *(v4 + 184) = v3;
    v9 = sub_2660C3618;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660C3618()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_54();
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_2660C3678()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[1];
  v2 = v0[22];

  return v1();
}

uint64_t sub_2660C36D8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C36EC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_12(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_71(inited, xmmword_26618E190);
  v3[2].n128_u64[0] = v4 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v3[2].n128_u64[1] = 0xE700000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  OUTLINED_FUNCTION_62(v5);
  OUTLINED_FUNCTION_45();
  v6 = sub_26618C850();
  OUTLINED_FUNCTION_52(v6);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_21_0(30);

  return sub_2660C7BDC();
}

uint64_t sub_2660C3808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D61536E497369 && a2 == 0xEC0000006D6F6F52;
        if (v8 || (sub_26618D000() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6563697665447369 && a2 == 0xEE007065656C7341)
        {

          return 4;
        }

        else
        {
          v10 = sub_26618D000();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2660C39C4(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x614E656369766564;
      break;
    case 2:
      v3 = 0x614E6D6F6F72;
      goto LABEL_6;
    case 3:
      v3 = 0x61536E497369;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 4:
      result = 0x6563697665447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660C3A74()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDC0, &qword_26618EA58);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_35(v9, v10);
  sub_2660C5F98();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_30();
  sub_26618D0F0();
  v11 = *v2;
  v12 = v2[1];
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF70();
  if (!v1)
  {
    v13 = v2[2];
    v14 = v2[3];
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    v15 = v2[4];
    v16 = v2[5];
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    v17 = *(v2 + 48);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
    v18 = *(v2 + 49);
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
  }

  v19 = OUTLINED_FUNCTION_49();
  return v20(v19);
}

void sub_2660C3BDC()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE48, &qword_26618EAB0);
  OUTLINED_FUNCTION_2_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_0();
  sub_2660C5F98();
  OUTLINED_FUNCTION_26();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    LOBYTE(v26[0]) = 0;
    OUTLINED_FUNCTION_40();
    v8 = sub_26618CF00();
    v21 = v9;
    OUTLINED_FUNCTION_27(1);
    v10 = sub_26618CEF0();
    v20 = v11;
    v18 = v10;
    OUTLINED_FUNCTION_27(2);
    v17 = sub_26618CEF0();
    v19 = v12;
    OUTLINED_FUNCTION_27(3);
    v29 = sub_26618CF10();
    OUTLINED_FUNCTION_40();
    v13 = sub_26618CF10();
    v14 = OUTLINED_FUNCTION_16_0();
    v15(v14);
    *&v22 = v8;
    *(&v22 + 1) = v21;
    *&v23 = v18;
    *(&v23 + 1) = v20;
    *&v24 = v17;
    *(&v24 + 1) = v19;
    LOBYTE(v25) = v29 & 1;
    HIBYTE(v25) = v13 & 1;
    sub_2660C6190(&v22, v26);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v26[0] = v8;
    v26[1] = v21;
    v26[2] = v18;
    v26[3] = v20;
    v26[4] = v17;
    v26[5] = v19;
    v27 = v29 & 1;
    v28 = v13 & 1;
    sub_2660C61C8(v26);
    v16 = v23;
    *v3 = v22;
    *(v3 + 16) = v16;
    *(v3 + 32) = v24;
    *(v3 + 48) = v25;
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C3E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C3808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C3EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660C39BC();
  *a1 = result;
  return result;
}

uint64_t sub_2660C3EC8(uint64_t a1)
{
  v2 = sub_2660C5F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C3F04(uint64_t a1)
{
  v2 = sub_2660C5F98();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2660C3F40@<D0>(uint64_t a1@<X8>)
{
  sub_2660C3BDC();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_2660C3FA8()
{
  OUTLINED_FUNCTION_18();
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C4034, 0, 0);
}

uint64_t sub_2660C4034()
{
  OUTLINED_FUNCTION_68();
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 120);
  OUTLINED_FUNCTION_12(*(v1 + 128));
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  *(v1 + 64) = *(v2 + 24);
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  *(v1 + 16) = v5;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C566C();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v6 = sub_26618A520();
  *(v1 + 104) = 0;
  v7 = OUTLINED_FUNCTION_44(v6, sel_JSONObjectWithData_options_error_);

  v8 = *(v1 + 104);
  if (v7)
  {
    v9 = v8;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v10 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v10, v11);
      v7 = *(v1 + 112);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v8;
    OUTLINED_FUNCTION_25();
    v13 = sub_26618A4C0();

    v7 = v13;
    swift_willThrow();
  }

  sub_26618C850();
  v14 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v14, v15);
LABEL_8:
  *(v1 + 136) = v7;
  v16 = *v0;
  v17 = swift_task_alloc();
  *(v1 + 144) = v17;
  *v17 = v1;
  OUTLINED_FUNCTION_42(v17);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(21);

  return sub_2660C7BDC();
}

uint64_t sub_2660C42A0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_73();
  v6 = *(v5 + 136);

  OUTLINED_FUNCTION_72();
  v9 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_31();
  }

  return v8(v7);
}

uint64_t sub_2660C43FC(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C4410()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_12(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v3[2].n128_u64[0] = v4 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v3[2].n128_u64[1] = 0xE800000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  OUTLINED_FUNCTION_62(v5);
  OUTLINED_FUNCTION_45();
  v6 = sub_26618C850();
  OUTLINED_FUNCTION_52(v6);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_21_0(27);

  return sub_2660C7BDC();
}

uint64_t sub_2660C4540()
{
  OUTLINED_FUNCTION_1_0();
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 24) = sub_26618C850();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_2660C4630;

  return sub_2660C7BDC();
}

uint64_t sub_2660C4630()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_2660C473C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4373746C75736572 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7074656B72616DLL && a2 == 0xEF656D614E656361;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x8000000266197FC0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2660C4860(unsigned __int8 a1)
{
  sub_26618D090();
  MEMORY[0x26677C460](a1);
  return sub_26618D0C0();
}

uint64_t sub_2660C48A8(char a1)
{
  if (!a1)
  {
    return 0x4373746C75736572;
  }

  if (a1 == 1)
  {
    return 0x6C7074656B72616DLL;
  }

  return 0xD000000000000015;
}

void sub_2660C4918()
{
  OUTLINED_FUNCTION_38();
  v14[0] = v1;
  v14[1] = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE10, &qword_26618EA80);
  OUTLINED_FUNCTION_2_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  v13 = v4[4];
  OUTLINED_FUNCTION_35(v4, v4[3]);
  sub_2660C613C();
  sub_26618D0F0();
  sub_26618CF90();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_0();
    sub_26618CF60();
    OUTLINED_FUNCTION_33();
    sub_26618CF80();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_39();
}

void sub_2660C4A84()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE20, &qword_26618EA88);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C613C();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6();
  sub_26618CF20();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_6();
  sub_26618CEF0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6();
  sub_26618CF10();
  v5 = OUTLINED_FUNCTION_5_1();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C4BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C473C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C4C20(uint64_t a1)
{
  v2 = sub_2660C613C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C4C5C(uint64_t a1)
{
  v2 = sub_2660C613C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2660C4C98(uint64_t a1@<X8>)
{
  sub_2660C4A84();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

void sub_2660C4CD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_2660C4918();
}

uint64_t sub_2660C4CF4()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 73) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2660C4D88, 0, 0);
}

uint64_t sub_2660C4D88()
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 73);
  v3 = *(v1 + 112);
  v18 = *(v1 + 96);
  OUTLINED_FUNCTION_12(*(v1 + 120));
  *(v1 + 48) = v18;
  *(v1 + 64) = v3;
  *(v1 + 72) = v2;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  sub_2660C5810();
  OUTLINED_FUNCTION_75();
  if (v3)
  {

    v4 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v5 = sub_26618A520();
  *(v1 + 80) = 0;
  v4 = OUTLINED_FUNCTION_43(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 80);
  if (v4)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_61())
    {
      v8 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v8, v9);
      v4 = *(v1 + 88);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_76();

    v4 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v12, v13);
LABEL_10:
  *(v1 + 128) = v4;
  v14 = *v0;
  v15 = swift_task_alloc();
  *(v1 + 136) = v15;
  *v15 = v1;
  v15[1] = sub_2660C5000;
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(21);

  return sub_2660C7BDC();
}

uint64_t sub_2660C5000()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 136);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_73();
  v6 = *(v5 + 128);

  OUTLINED_FUNCTION_72();
  v9 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_31();
  }

  return v8(v7);
}

uint64_t sub_2660C515C(char a1, char a2, char a3)
{
  *(v4 + 192) = v3;
  *(v4 + 218) = a3;
  *(v4 + 217) = a2;
  *(v4 + 216) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C517C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 218);
  v2 = *(v0 + 217);
  v3 = *(v0 + 216);
  v4 = __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  strcpy((inited + 32), "isAppInstalled");
  *(inited + 47) = -18;
  v6 = MEMORY[0x277D839B0];
  *(inited + 16) = xmmword_26618E250;
  *(inited + 48) = v3;
  *(inited + 72) = v6;
  *(inited + 80) = 0x616F6C66664F7369;
  *(inited + 88) = 0xE900000000000064;
  *(inited + 96) = v2;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000266197F10;
  *(inited + 168) = v6;
  *(inited + 144) = v1;
  *(v0 + 200) = sub_26618C850();
  v7 = *v4;
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_2660C531C;

  return sub_2660C7BDC();
}

uint64_t sub_2660C531C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 208);
  v5 = *(v3 + 200);
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_2660C5428(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C5440()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_12(*(v1 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v5[2].n128_u64[0] = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  v5[2].n128_u64[1] = 0xE700000000000000;
  v5[4].n128_u64[1] = MEMORY[0x277D837D0];
  v5[3].n128_u64[0] = v3;
  v5[3].n128_u64[1] = v2;

  OUTLINED_FUNCTION_45();
  *(v1 + 120) = sub_26618C850();
  v7 = *v0;
  v8 = swift_task_alloc();
  *(v1 + 128) = v8;
  *v8 = v1;
  OUTLINED_FUNCTION_51(v8);
  OUTLINED_FUNCTION_21_0(30);

  return sub_2660C7BDC();
}

unint64_t sub_2660C556C()
{
  result = qword_2814B3F18;
  if (!qword_2814B3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F18);
  }

  return result;
}

uint64_t sub_2660C55C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2660C5618()
{
  result = qword_28005BD58;
  if (!qword_28005BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD58);
  }

  return result;
}

unint64_t sub_2660C566C()
{
  result = qword_28005BD60;
  if (!qword_28005BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD60);
  }

  return result;
}

unint64_t sub_2660C56C0()
{
  result = qword_28005BD68;
  if (!qword_28005BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD68);
  }

  return result;
}

unint64_t sub_2660C5714()
{
  result = qword_28005BD70;
  if (!qword_28005BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD70);
  }

  return result;
}

unint64_t sub_2660C5768()
{
  result = qword_28005BD88;
  if (!qword_28005BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD88);
  }

  return result;
}

unint64_t sub_2660C57BC()
{
  result = qword_28005BD90;
  if (!qword_28005BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD90);
  }

  return result;
}

unint64_t sub_2660C5810()
{
  result = qword_28005BDA0;
  if (!qword_28005BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDA0);
  }

  return result;
}

uint64_t sub_2660C5864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2660C5928(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C597C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2660C59F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2660C5AB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2660C5B3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2660C5BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2660C5CC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5D08(uint64_t result, int a2, int a3)
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
      *(result + 50) = 1;
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

    *(result + 50) = 0;
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

uint64_t sub_2660C5D78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5DB8(uint64_t result, int a2, int a3)
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

uint64_t sub_2660C5E2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660C5E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2660C5EF0()
{
  result = qword_2814B3F30[0];
  if (!qword_2814B3F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B3F30);
  }

  return result;
}

unint64_t sub_2660C5F44()
{
  result = qword_28005BDB8;
  if (!qword_28005BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDB8);
  }

  return result;
}

unint64_t sub_2660C5F98()
{
  result = qword_28005BDC8;
  if (!qword_28005BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDC8);
  }

  return result;
}

unint64_t sub_2660C5FEC()
{
  result = qword_28005BDD8;
  if (!qword_28005BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDD8);
  }

  return result;
}

unint64_t sub_2660C6040()
{
  result = qword_28005BDE8;
  if (!qword_28005BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDE8);
  }

  return result;
}

unint64_t sub_2660C6094()
{
  result = qword_28005BDF8;
  if (!qword_28005BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDF8);
  }

  return result;
}

unint64_t sub_2660C60E8()
{
  result = qword_28005BE08;
  if (!qword_28005BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE08);
  }

  return result;
}

unint64_t sub_2660C613C()
{
  result = qword_28005BE18;
  if (!qword_28005BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE18);
  }

  return result;
}

uint64_t _s22ConfirmationStateValueOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2660C62A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s15InAppSearchVerbOwet(unsigned int *a1, int a2)
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

_BYTE *sub_2660C63EC(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppLaunchDialogProvider.AppOffloadedParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppLaunchDialogProvider.AppOffloadedParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchDialogProvider.LaunchedAppParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppLaunchDialogProvider.LaunchedAppParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchIntent.AppNoun(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2660C67F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2660C68D8()
{
  result = qword_28005BE60;
  if (!qword_28005BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE60);
  }

  return result;
}

unint64_t sub_2660C6930()
{
  result = qword_28005BE68;
  if (!qword_28005BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE68);
  }

  return result;
}

unint64_t sub_2660C6988()
{
  result = qword_28005BE70;
  if (!qword_28005BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE70);
  }

  return result;
}

unint64_t sub_2660C69E0()
{
  result = qword_28005BE78;
  if (!qword_28005BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE78);
  }

  return result;
}

unint64_t sub_2660C6A38()
{
  result = qword_28005BE80;
  if (!qword_28005BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE80);
  }

  return result;
}

unint64_t sub_2660C6A90()
{
  result = qword_28005BE88;
  if (!qword_28005BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE88);
  }

  return result;
}

unint64_t sub_2660C6AE8()
{
  result = qword_28005BE90;
  if (!qword_28005BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE90);
  }

  return result;
}

unint64_t sub_2660C6B40()
{
  result = qword_28005BE98;
  if (!qword_28005BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE98);
  }

  return result;
}

unint64_t sub_2660C6B98()
{
  result = qword_28005BEA0;
  if (!qword_28005BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEA0);
  }

  return result;
}

unint64_t sub_2660C6BF0()
{
  result = qword_28005BEA8;
  if (!qword_28005BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEA8);
  }

  return result;
}

unint64_t sub_2660C6C48()
{
  result = qword_28005BEB0;
  if (!qword_28005BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEB0);
  }

  return result;
}

unint64_t sub_2660C6CA0()
{
  result = qword_28005BEB8;
  if (!qword_28005BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEB8);
  }

  return result;
}

unint64_t sub_2660C6CF8()
{
  result = qword_28005BEC0;
  if (!qword_28005BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEC0);
  }

  return result;
}

unint64_t sub_2660C6D50()
{
  result = qword_28005BEC8;
  if (!qword_28005BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEC8);
  }

  return result;
}

unint64_t sub_2660C6DA8()
{
  result = qword_28005BED0;
  if (!qword_28005BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BED0);
  }

  return result;
}

unint64_t sub_2660C6E00()
{
  result = qword_28005BED8;
  if (!qword_28005BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BED8);
  }

  return result;
}

unint64_t sub_2660C6E58()
{
  result = qword_28005BEE0;
  if (!qword_28005BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEE0);
  }

  return result;
}

unint64_t sub_2660C6EB0()
{
  result = qword_28005BEE8;
  if (!qword_28005BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEE8);
  }

  return result;
}

unint64_t sub_2660C6F08()
{
  result = qword_28005BEF0;
  if (!qword_28005BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEF0);
  }

  return result;
}

unint64_t sub_2660C6F60()
{
  result = qword_28005BEF8;
  if (!qword_28005BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEF8);
  }

  return result;
}

unint64_t sub_2660C6FB8()
{
  result = qword_28005BF00;
  if (!qword_28005BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BF00);
  }

  return result;
}

unint64_t sub_2660C7010()
{
  result = qword_28005BF08;
  if (!qword_28005BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BF08);
  }

  return result;
}

unint64_t sub_2660C7068()
{
  result = qword_2814B3F20;
  if (!qword_2814B3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F20);
  }

  return result;
}

unint64_t sub_2660C70C0()
{
  result = qword_2814B3F28;
  if (!qword_2814B3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F28);
  }

  return result;
}

uint64_t sub_2660C7128()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
  v1 = *MEMORY[0x277D85DE8];

  return sub_2660C42A0();
}

uint64_t sub_2660C7194()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
  v1 = *MEMORY[0x277D85DE8];

  return sub_2660C3210();
}

uint64_t sub_2660C7200()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
  v1 = *MEMORY[0x277D85DE8];

  return sub_2660C5000();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return sub_26618D0E0();
}

id OUTLINED_FUNCTION_43(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_44(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_52(uint64_t result)
{
  *(v2 + 112) = result;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_74()
{

  return sub_26618D0F0();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_26618A3C0();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_26618A4C0();
}

id sub_2660C7794()
{
  type metadata accessor for BaseDialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2814B3120 = result;
  return result;
}

uint64_t sub_2660C77E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C77FC()
{
  OUTLINED_FUNCTION_18();
  sub_2660C5864(*(v0 + 64), v0 + 16);
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_3_2(v2);

  return MEMORY[0x2821BB3C8](v3);
}

uint64_t sub_2660C7894()
{
  OUTLINED_FUNCTION_18();
  v2 = *(*v1 + 72);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  *(v3 + 80) = v0;

  sub_2660C8040(v3 + 16, &qword_28005BF18, &qword_26618F390);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660C80A0, 0, 0);
  }

  else
  {
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_2660C79D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C79E8()
{
  OUTLINED_FUNCTION_18();
  sub_2660C5864(*(v0 + 64), v0 + 16);
  v1 = *(MEMORY[0x277D5BCE0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_3_2(v2);

  return MEMORY[0x2821BAEE8](v3);
}

uint64_t sub_2660C7A84()
{
  OUTLINED_FUNCTION_18();
  v2 = *(*v1 + 72);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  *(v3 + 80) = v0;

  sub_2660C8040(v3 + 16, &qword_28005BF18, &qword_26618F390);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660C7BC4, 0, 0);
  }

  else
  {
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_2660C7BDC()
{
  OUTLINED_FUNCTION_18();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_26618C340();
  v0[10] = v4;
  v5 = *(v4 - 8);
  v0[11] = v5;
  v6 = *(v5 + 64) + 15;
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660C7C9C, 0, 0);
}

uint64_t sub_2660C7C9C()
{
  sub_26618C320();
  if (qword_2814B3118 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = qword_2814B3120;
  sub_26618C2B0();
  v3 = sub_26618C2A0();
  *(v0 + 104) = v3;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_26618C330();
  v4 = *(MEMORY[0x277D55CE0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_2660C7DD4;
  v6 = *(v0 + 96);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x2821B8050](v2, v9, v7, v8, v3, v0 + 16, v6);
}

uint64_t sub_2660C7DD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = v4[14];
  v8 = v4[13];
  v9 = *v2;
  *v6 = *v2;
  v5[15] = v1;

  (*(v4[11] + 8))(v4[12], v4[10]);
  sub_2660C8040((v5 + 2), &qword_28005BF10, &qword_26618F380);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2660C7FAC, 0, 0);
  }

  else
  {

    v10 = v9[1];

    return v10(a1);
  }
}

uint64_t sub_2660C7FAC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_2660C8040(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2660C80B8(uint64_t a1, uint64_t a2)
{
  if (sub_26618B160() & 1) != 0 || (sub_26618B140())
  {
    return 1;
  }

  return MEMORY[0x2821BABA8](a1, a2);
}

uint64_t sub_2660C8128(uint64_t a1, uint64_t a2)
{
  if (sub_2660C80B8(a1, a2))
  {
    v2 = sub_26618B0F0() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_2660C8178()
{
  v0 = sub_26618B8E0();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  sub_26618B820();
  sub_266144AE8();
  v7 = OUTLINED_FUNCTION_4_3();
  v8(v7);
  return v6;
}

void sub_2660C822C()
{
  OUTLINED_FUNCTION_6_0();
  v0 = sub_26618C3C0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  v44[1] = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v45 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v44 - v8;
  v44[0] = sub_26618AAD0();
  v10 = OUTLINED_FUNCTION_2_2(v44[0]);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = sub_26618A6A0();
  v19 = OUTLINED_FUNCTION_2_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v24 = sub_26618A6C0();
  v25 = OUTLINED_FUNCTION_2_2(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  v32 = v31 - v30;
  sub_26618B7A0();
  sub_26618A6B0();
  (*(v27 + 8))(v32, v24);
  sub_26618A680();
  v33 = *(v21 + 8);
  v34 = OUTLINED_FUNCTION_3_3();
  v35(v34);
  sub_26618AAC0();
  (*(v12 + 8))(v17, v44[0]);
  v36 = sub_26618B980();
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v37 = OUTLINED_FUNCTION_3_3();
  sub_2660C924C(v37, v38);
  sub_26618C3B0();
  sub_2660C92A4();
  OUTLINED_FUNCTION_3_3();
  sub_26618C3D0();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v36);
  v39 = v45;
  sub_2660C92FC(v9, v45);
  if (__swift_getEnumTagSinglePayload(v39, 1, v36) == 1)
  {
    sub_2660C8040(v9, &qword_28005BF28, &qword_26618F960);
    v40 = OUTLINED_FUNCTION_3_3();
    sub_2660C55C0(v40, v41);
    sub_2660C8040(v39, &qword_28005BF28, &qword_26618F960);
  }

  else
  {
    sub_266144F30();
    v42 = OUTLINED_FUNCTION_3_3();
    sub_2660C55C0(v42, v43);
    sub_2660C8040(v9, &qword_28005BF28, &qword_26618F960);
    (*(*(v36 - 8) + 8))(v39, v36);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C8600()
{
  v0 = sub_26618C420();
  v1 = sub_2661046B8(v0);
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26677C150](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_26618C3A0();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void *sub_2660C86DC()
{
  v0 = sub_26618B980();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v6 = (v5 - v4);
  sub_2660C8600();
  v8 = v7;
  if (v7)
  {
    sub_26618C400();

    v8 = v6;
    sub_266144F30();
    v9 = OUTLINED_FUNCTION_4_3();
    v10(v9);
  }

  return v8;
}

void sub_2660C87C0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618B7B0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = (v11 - v10);
  v13 = sub_26618B840();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v42 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v20 = (v19 - v18);
  v21 = sub_26618B800();
  v22 = OUTLINED_FUNCTION_2_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v29 = (v28 - v27);
  (*(v24 + 16))(v28 - v27, v1, v21);
  v30 = (*(v24 + 88))(v29, v21);
  if (v30 == *MEMORY[0x277D5C140])
  {
    v31 = OUTLINED_FUNCTION_2_3();
    v32(v31);
    v33 = *(v7 + 32);
    v33(v12, v29, v4);
    *(v3 + 24) = v4;
    *(v3 + 32) = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
    v33(boxed_opaque_existential_0, v12, v4);
  }

  else if (v30 == *MEMORY[0x277D5C148])
  {
    v35 = OUTLINED_FUNCTION_2_3();
    v36(v35);
    v37 = *v29;
    *(v3 + 24) = sub_26618C430();
    *(v3 + 32) = &off_2877CAAD8;
    *v3 = v37;
  }

  else if (v30 == *MEMORY[0x277D5C160])
  {
    v38 = OUTLINED_FUNCTION_2_3();
    v39(v38);
    v40 = *(v42 + 32);
    v40(v20, v29, v13);
    *(v3 + 24) = v13;
    *(v3 + 32) = &off_2877CAAB8;
    v41 = __swift_allocate_boxed_opaque_existential_0(v3);
    v40(v41, v20, v13);
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    (*(v24 + 8))(v29, v21);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C8AA8()
{
  OUTLINED_FUNCTION_6_0();
  v96 = v0;
  v1 = sub_26618AAB0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v88 = v3;
  v89 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v87 = v7 - v6;
  v8 = sub_26618AAF0();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v85 = v10;
  v86 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v84 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF20, &qword_26618F3D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v83 - v17;
  v18 = sub_26618A6A0();
  v19 = OUTLINED_FUNCTION_2_2(v18);
  v91 = v20;
  v92 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v90 = sub_26618A6C0();
  v26 = OUTLINED_FUNCTION_2_2(v90);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  v34 = sub_26618AB10();
  v35 = OUTLINED_FUNCTION_2_2(v34);
  v94 = v36;
  v95 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_4();
  v41 = v40 - v39;
  v42 = sub_26618B7B0();
  v43 = OUTLINED_FUNCTION_2_2(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_4();
  v50 = v49 - v48;
  v51 = sub_26618B800();
  v52 = OUTLINED_FUNCTION_2_2(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_4();
  v59 = (v58 - v57);
  (*(v54 + 16))(v58 - v57, v96, v51);
  v60 = *(v54 + 88);
  v61 = OUTLINED_FUNCTION_5_2();
  v63 = v62(v61);
  if (v63 == *MEMORY[0x277D5C140])
  {
    v64 = *(v54 + 96);
    v65 = OUTLINED_FUNCTION_5_2();
    v66(v65);
    (*(v45 + 32))(v50, v59, v42);
    sub_26618B7A0();
    sub_26618A6B0();
    (*(v28 + 8))(v33, v90);
    sub_26618A690();
    (*(v91 + 8))(v25, v92);
    v67 = sub_26618AB00();
    v68 = v93;
    sub_266139C70(v67, v93);

    v69 = sub_26618AA40();
    v70 = v45;
    if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
    {
      sub_2660C8040(v68, &qword_28005BF20, &qword_26618F3D0);
    }

    else
    {
      v78 = v84;
      sub_26618AA30();
      (*(*(v69 - 8) + 8))(v68, v69);
      v79 = v87;
      sub_26618AAE0();
      (*(v85 + 8))(v78, v86);
      sub_26618AAA0();
      (*(v88 + 8))(v79, v89);
    }

    (*(v94 + 8))(v41, v95);
    (*(v70 + 8))(v50, v42);
  }

  else if (v63 == *MEMORY[0x277D5C148])
  {
    v71 = *(v54 + 96);
    v72 = OUTLINED_FUNCTION_5_2();
    v73(v72);
    v74 = *v59;
    sub_2660C8600();
    if (v75)
    {
      v76 = v75;
      v77 = v87;
      sub_26618C390();

      sub_26618AAA0();
      (*(v88 + 8))(v77, v89);
    }
  }

  else
  {
    v80 = *(v54 + 8);
    v81 = OUTLINED_FUNCTION_5_2();
    v82(v81);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C9080()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v3 = sub_26618B7B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = *(v2 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = *(v12 + 16);
  v18(v20 - v19, v0, v2);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v11, v3);
  }

  else
  {
    v18(v17, v0, v2);
    sub_26618C430();
    if (swift_dynamicCast())
    {
    }
  }

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660C924C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2660C92A4()
{
  result = qword_28005BF30;
  if (!qword_28005BF30)
  {
    sub_26618B980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BF30);
  }

  return result;
}

uint64_t sub_2660C92FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660C93E8()
{
  v0 = sub_26618C170();
  result = sub_2660C9540(6, v0);
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_20;
  }

  if (v6)
  {
    v7 = v2;
    v8 = v3;
    v18 = MEMORY[0x277D84F90];
    result = sub_26612A3B8(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v18;
    while (v8 < v5)
    {
      v10 = *(v7 + 2 * v8);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_26612A3B8((v11 > 1), v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      *(v18 + 8 * v12 + 32) = v10;
      if (v5 == ++v8)
      {
        result = swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  result = swift_unknownObjectRelease();
  v9 = MEMORY[0x277D84F90];
LABEL_11:
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v9 + 32);
    while (1)
    {
      v16 = *v15++;
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

uint64_t sub_2660C9540(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2660C9768(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_2660C96FC(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2660C95D4()
{
  v0 = sub_26618C170();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26612A3B8(0, v1, 0);
    v2 = v13;
    v3 = *(v13 + 16);
    v4 = 32;
    do
    {
      v5 = *(v0 + v4);
      v6 = *(v13 + 24);
      if (v3 >= v6 >> 1)
      {
        sub_26612A3B8((v6 > 1), v3 + 1, 1);
      }

      *(v13 + 16) = v3 + 1;
      *(v13 + 8 * v3 + 32) = v5;
      v4 += 2;
      ++v3;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v2 + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
LABEL_14:

    return v9;
  }

  return result;
}

unint64_t sub_2660C96FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2660C9768(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2660C97B4()
{
  if (qword_2814B3DC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent();
  sub_2660C98B4();
  sub_26618BDA0();
  v0 = 1;
  v1 = 0;
  switch(v3)
  {
    case 2:
      goto LABEL_5;
    case 3:
      return v1 & 1;
    default:
      v0 = sub_26618D000();
LABEL_5:

      v1 = v0;
      break;
  }

  return v1 & 1;
}

unint64_t sub_2660C98B4()
{
  result = qword_2814B3D28;
  if (!qword_2814B3D28)
  {
    type metadata accessor for AppLaunchIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3D28);
  }

  return result;
}

id sub_2660C990C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_2660C9CB4(v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (qword_2814B4A70 != -1)
    {
      swift_once();
    }

    v8 = v3;
    v9 = InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(v6, v7, v3, 0);

    if ((v9 & 1) == 0)
    {
      v11 = objc_allocWithZone(v2);
      v12 = sub_26618C8A0();
      v13 = [v11 initWithIdentifier:0 displayString:v12];

      v10 = v13;
      sub_26614E5FC(v6, v7, v10);
      v14 = [v8 localizedName];

      v15 = sub_26618C8B0();
      v17 = v16;

      sub_26614E608(v15, v17, v10);
      v18 = [v8 applicationState];
      [v18 isDowngraded];

      v19 = sub_26618CA00();
      [v10 setIsOffloaded_];

      return v10;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t Application.description.getter()
{
  sub_26618CD80();
  MEMORY[0x26677BCF0](0xD000000000000015, 0x8000000266198010);
  v1 = sub_2660C9D48(v0, &selRef_name);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x3E6C696E3CLL;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v1, v3);

  MEMORY[0x26677BCF0](0x6C646E7562202C22, 0xED0000203A644965);
  v4 = sub_2660C9D48(v0, &selRef_appId);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v4, v6);

  MEMORY[0x26677BCF0](0x49656E656373202CLL, 0xEB00000000203A64);
  v7 = sub_2660C9D48(v0, &selRef_sceneId);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0x3E6C696E3CLL;
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v7, v9);

  MEMORY[0x26677BCF0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2660C9CB4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_2660C9D48(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26618C8B0();

  return v4;
}

uint64_t sub_2660C9DCC()
{
  v0 = sub_26618A700();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v2 = sub_26618A970();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v4 = sub_26618A8A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 104))(v7 - v6, *MEMORY[0x277D38FC8]);
  sub_26618A780();
  sub_2660CB7FC(&qword_28005BF38, MEMORY[0x277D39028]);
  sub_26618C3F0();
  sub_26618A7B0();
  sub_2660CB7FC(&qword_28005BF40, MEMORY[0x277D38E68]);
  sub_26618C3F0();
  return sub_26618A7C0();
}

uint64_t sub_2660CA064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v30 = a6;
  v28 = a5;
  v36 = a1;
  v32 = sub_26618A770();
  v35 = *(v32 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26618A990();
  v34 = *(v48 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26618A890();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26618AA90();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v29 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  v47 = a3;
  sub_2660CB7FC(&qword_28005BF68, MEMORY[0x277D38F90]);
  sub_26618C3F0();
  v23 = a4;
  v44 = a4;
  v24 = v28;
  v45 = v28;
  sub_2660CB7FC(&qword_28005BF70, MEMORY[0x277D39038]);
  sub_26618C3F0();
  v40 = v30;
  v41 = v31;
  v42 = v23;
  v43 = v24;
  sub_2660CB7FC(&qword_28005BF78, MEMORY[0x277D38EA0]);
  v25 = v32;
  sub_26618C3F0();
  v37 = v19;
  v38 = v15;
  v39 = v12;
  sub_2660CB7FC(&qword_28005BF80, MEMORY[0x277D398E0]);
  sub_26618C3F0();
  (*(v35 + 8))(v12, v25);
  (*(v34 + 8))(v15, v48);
  (*(v33 + 8))(v19, v16);
  return sub_26618A960();
}

uint64_t sub_2660CA524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BFC0, &qword_26618F400);
  v0 = *(sub_26618A820() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BFC8, MEMORY[0x277D38F10]);
  sub_26618C3F0();
  return sub_26618A810();
}

uint64_t sub_2660CA680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BFD0, &qword_26618F408);
  v0 = *(sub_26618A8C0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BFD8, MEMORY[0x277D38FD8]);
  sub_26618C3F0();
  return sub_26618A810();
}

uint64_t sub_2660CA82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF90, &qword_26618F3F0);
  v0 = *(sub_26618A8E0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BF98, MEMORY[0x277D38FE8]);
  sub_26618C3F0();
  return sub_26618A980();
}

uint64_t sub_2660CA988()
{
  v0 = sub_26618A870();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2660CB7FC(&qword_28005BFA0, MEMORY[0x277D38F80]);
  sub_26618C3F0();
  return sub_26618A8D0();
}

uint64_t sub_2660CAA94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BFA8, &qword_26618F3F8);
  v0 = *(sub_26618A800() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BFB0, MEMORY[0x277D38F00]);
  sub_26618C3F0();
  return sub_26618A860();
}

uint64_t sub_2660CABF0()
{
  v0 = sub_26618A850();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2660CB7FC(&qword_28005BFB8, MEMORY[0x277D38F70]);
  sub_26618C3F0();
  return sub_26618A7F0();
}

uint64_t sub_2660CACFC()
{
  v0 = sub_26618A7E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26618A840();
  (*(v1 + 104))(v4, *MEMORY[0x277D38ED0], v0);
  return sub_26618A830();
}

uint64_t sub_2660CAE00()
{
  v0 = sub_26618A930();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2660CB7FC(&qword_28005BF88, MEMORY[0x277D39008]);
  sub_26618C3F0();
  return sub_26618A730();
}

uint64_t sub_2660CAF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26618A8F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26618A900();
  if (a3)
  {
    v9 = MEMORY[0x277D38FF0];
  }

  else
  {
    v9 = MEMORY[0x277D38FF8];
  }

  (*(v5 + 104))(v8, *v9, v4);
  sub_26618A910();
  return sub_26618A920();
}

uint64_t sub_2660CB060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v5 = sub_26618A770();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26618A990();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26618A890();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_26618AA50();
  (*(v11 + 16))(v14, v20, v10);
  sub_26618AA80();
  (*(v6 + 16))(v9, v21, v5);
  return sub_26618AA70();
}

uint64_t sub_2660CB288()
{
  v0 = sub_26618AA20();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2660CB7FC(&qword_28005BF48, MEMORY[0x277D392E0]);
  sub_26618C3F0();
  return sub_26618A6F0();
}

uint64_t sub_2660CB394()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CB288();
}

uint64_t sub_2660CB3B0()
{
  v0 = sub_26618A720();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2660CB7FC(&qword_28005BF50, MEMORY[0x277D38E78]);
  sub_26618C3F0();
  return sub_26618AA10();
}

uint64_t sub_2660CB4BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CB3B0();
}

uint64_t sub_2660CB4D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF58, &qword_26618F3E8);
  v0 = *(sub_26618A6E0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BF60, MEMORY[0x277D38E30]);
  sub_26618C3F0();
  return sub_26618A710();
}

uint64_t sub_2660CB634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CB4D8();
}

uint64_t sub_2660CB6A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CB650();
}

uint64_t sub_2660CB6BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CA524();
}

uint64_t sub_2660CB6D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CA82C();
}

uint64_t sub_2660CB6F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_2660CAE00();
}

uint64_t sub_2660CB734(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_2660CAF20(a1, v1[2], v1[3]);
}

uint64_t sub_2660CB754()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CA988();
}

uint64_t sub_2660CB770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CAA94();
}

uint64_t sub_2660CB78C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CABF0();
}

uint64_t sub_2660CB7A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CACFC();
}

uint64_t sub_2660CB7C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CA680();
}

uint64_t sub_2660CB7E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2660CA7DC();
}

uint64_t sub_2660CB7FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2660CB854()
{
  v0 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D669D0]);
  v3 = v1;
  v4 = [v2 init];
  v11 = sub_2660CD344(0, &qword_28005BFE0, 0x277D0AD78);
  v12 = &off_2877CAC28;
  *&v10 = v3;
  v8 = sub_2660CD344(0, &qword_28005BFE8, 0x277D669D0);
  v9 = &off_2877CAC38;
  *&v7 = v4;
  type metadata accessor for AppShortcutItemRunner();
  v5 = swift_allocObject();
  sub_2660B9EB8(&v10, v5 + 16);
  sub_2660B9EB8(&v7, v5 + 56);

  return v5;
}

uint64_t sub_2660CB960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_26618CA40();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;

  sub_2660CC534(0, 0, v11, &unk_26618F518, v13);
}

uint64_t sub_2660CBA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_26618C6B0();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660CBB40, 0, 0);
}

uint64_t sub_2660CBB40()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  sub_2660CD344(0, &qword_28005C018, 0x277D0AD60);
  v5 = sub_2660CC1E4(v1);
  v6 = sub_2660CC4A8(v5);
  v0[11] = v6;
  v7 = *(v4 + 8);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2660CBCB8;
  v11 = v0[4];
  v10 = v0[5];

  return v13(v11, v10, v6, v3, v4);
}

uint64_t sub_2660CBCB8(void *a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *(v4 + 96);
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 104) = v1;

  if (v1)
  {
    v9 = sub_2660CBF8C;
  }

  else
  {
    v10 = *(v5 + 88);

    v9 = sub_2660CBDD8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660CBDD8()
{
  v21 = v0;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v2, qword_2814B4A98);
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_26618C690();
  v7 = sub_26618CAA0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  if (v8)
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_266103A98(v13, v12, &v20);
    _os_log_impl(&dword_2660B7000, v6, v7, "open application %s succeeded", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (*(v11 + 8))(v9, v10);
  v17 = v0[9];
  v16 = v0[10];

  OUTLINED_FUNCTION_5_3();

  return v18();
}

uint64_t sub_2660CBF8C()
{
  v28 = v0;

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = __swift_project_value_buffer(v4, qword_2814B4A98);
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_26618C690();
  v9 = sub_26618CAB0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);
  if (v10)
  {
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v26 = *(v0 + 72);
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_266103A98(v16, v15, &v27);
    *(v17 + 12) = 2080;
    *(v0 + 16) = v11;
    v18 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v19 = sub_26618C8D0();
    v21 = sub_266103A98(v19, v20, &v27);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_2660B7000, v8, v9, "open application %s failed: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v12 + 8))(v26, v14);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
  }

  v23 = *(v0 + 72);
  v22 = *(v0 + 80);

  OUTLINED_FUNCTION_5_3();

  return v24();
}

uint64_t sub_2660CC1E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C028, &qword_26618F540);
    v2 = sub_26618CEB0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2660CD384(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2660CD3E0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2660CD3E0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2660CD3E0(v32, v33);
    v15 = *(v2 + 40);
    result = sub_26618CD00();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_2660CD3E0(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_2660CC4A8(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_26618C830();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_2660CC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2660CCFC4(a3, v26 - v11);
  v13 = sub_26618CA40();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2660C8040(v12, &qword_28005C010, &qword_2661922A0);
  }

  else
  {
    sub_26618CA30();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26618CA10();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26618C8F0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2660CC808(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  (*(v7 + 32))(v36, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F420;
  v9 = *MEMORY[0x277D0ABF0];
  *(inited + 32) = sub_26618C8B0();
  *(inited + 40) = v10;
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v12 = *(v11 + 24);
  v13 = OUTLINED_FUNCTION_4_4();
  v15 = v14(v13);
  v16 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v15 == 1;
  v17 = *MEMORY[0x277D0ABD0];
  *(inited + 80) = sub_26618C8B0();
  *(inited + 88) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C000, &qword_26618F4F8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26618E190;
  sub_2660C5864(v36, v19 + 32);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C008, &unk_26618F500);
  *(inited + 96) = v19;
  v20 = *MEMORY[0x277D0AC58];
  *(inited + 128) = sub_26618C8B0();
  *(inited + 136) = v21;
  *(inited + 168) = v16;
  *(inited + 144) = 1;
  v22 = *MEMORY[0x277D0AC70];
  *(inited + 176) = sub_26618C8B0();
  *(inited + 184) = v23;
  *(inited + 216) = v16;
  *(inited + 192) = 1;
  v24 = *MEMORY[0x277D0AC28];
  v25 = sub_26618C8B0();
  v26 = MEMORY[0x277D837D0];
  *(inited + 224) = v25;
  *(inited + 232) = v27;
  *(inited + 264) = v26;
  *(inited + 240) = 1769105747;
  *(inited + 248) = 0xE400000000000000;
  v28 = sub_26618C850();
  v29 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v30 = *(v29 + 16);
  v31 = OUTLINED_FUNCTION_4_4();
  v33 = v32(v31);
  if (v34)
  {
    a1 = v33;
    a2 = v34;
  }

  else
  {
  }

  sub_2660CB960(a1, a2, v28);

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_2660CCA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2660CCB54(a1, a2, &v10);
  if (v11)
  {
    sub_2660B9EB8(&v10, v12);
    sub_2660CC808(a1, a2, v12);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2660C8040(&v10, &qword_28005BFF0, &qword_266191790);
    sub_2660CCDC0();
    swift_allocError();
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
    swift_willThrow();
  }
}

uint64_t sub_2660CCB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[10];
  v8 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
  v9 = (*(v8 + 8))(0x1000000, a1, a2, v7, v8);
  sub_2660CCC00(v9, a3);
}

uint64_t sub_2660CCC00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  v4 = result + 32;
  if (v3)
  {
    while (1)
    {
      sub_2660C5864(v4, &v11);
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v12);
      v6 = *(v5 + 8);
      v7 = OUTLINED_FUNCTION_4_4();
      result = v8(v7);
      if (!v9)
      {
        break;
      }

      sub_2660CCD6C();
      v10 = sub_26618CC30();

      if (v10)
      {
        return sub_2660B9EB8(&v11, a2);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v11);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2660CCD08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_2660CCD6C()
{
  result = qword_2814B2C30;
  if (!qword_2814B2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C30);
  }

  return result;
}

unint64_t sub_2660CCDC0()
{
  result = qword_28005BFF8;
  if (!qword_28005BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BFF8);
  }

  return result;
}

uint64_t sub_2660CCE14(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_4(v9);
  *v10 = v11;
  v10[1] = sub_2660CCEE0;

  return sub_2660CBA70(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2660CCEE0()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660CCFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660CD034(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660CD12C;

  return v7(a1);
}

uint64_t sub_2660CD12C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660CD214()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_4(v4);

  return v7(v6);
}

uint64_t sub_2660CD2AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_4(v4);

  return v7(v6);
}

uint64_t sub_2660CD344(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2660CD384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2660CD3E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2660CD3F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660CD430(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x26677CC30);
}

uint64_t sub_2660CD518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_2660CD53C, 0, 0);
}

uint64_t sub_2660CD53C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = sub_26618C8A0();
  v0[23] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2660CD678;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C040, &unk_26618F6B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2660CD864;
  v0[13] = &block_descriptor;
  v0[14] = v6;
  [v2 openApplication:v5 withOptions:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2660CD678()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_2660CD7F4;
  }

  else
  {
    v3 = sub_2660CD788;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2660CD788()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2660CD7F4()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t *sub_2660CD864(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2660E9944(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2660E99B4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2660CD8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2660CD9A4;

  return sub_2660CD518(a1, a2, a3);
}

uint64_t sub_2660CD9A4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void *sub_2660CDAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 applicationShortcutItemsOfTypes:a1 forBundleIdentifier:v5];

  v7 = sub_2660CDEBC(v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_2660CDB40(v8);

  return v9;
}

void *sub_2660CDB40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26618CCD0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_26612A3D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26677C150](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = sub_2660CD344(0, &qword_28005C038, 0x277D669C8);
      v19 = v8;
      v20 = &off_2877CAC48;
      v18[0] = v7;
      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_26612A3D8((v9 > 1), v10 + 1, 1);
        v11 = v19;
        v12 = v20;
      }

      else
      {
        v11 = v8;
        v12 = &off_2877CAC48;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v11);
      v14 = *(*(v11 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_2660CDF34(v10, v16, &v21, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_2660CDD64@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D75580]) initWithSBSShortcutItem_];
  if (result)
  {
    v4 = result;
    result = sub_2660CD344(0, &qword_28005C030, 0x277D75580);
    a1[3] = result;
    a1[4] = &off_2877CAC70;
    *a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2660CDEBC(void *a1)
{
  v2 = [a1 composedApplicationShortcutItems];

  if (!v2)
  {
    return 0;
  }

  sub_2660CD344(0, &qword_28005C038, 0x277D669C8);
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_2660CDF34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2660B9EB8(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2660CE048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21[-v2];
  sub_26618B810();
  sub_26618B600();
  v4 = sub_26618C460();
  v5 = sub_26618C450();
  v24[3] = v4;
  v24[4] = &off_2877CC660;
  v24[0] = v5;
  v6 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v23[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v23[4] = &off_2877CD5D8;
  v22[3] = &type metadata for ReferenceResolver;
  v22[4] = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v22[0] = swift_allocObject();
  sub_2660CFC00(v24, v22[0] + 16);
  v7 = type metadata accessor for DeepLaunchWrapperFlow();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for AppLaunchFlowFactoryImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v22, &type metadata for ReferenceResolver);
  OUTLINED_FUNCTION_3_5();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);
  *(v10 + 120) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v10 + 128) = &off_2877CD5D8;
  *(v10 + 160) = &type metadata for ReferenceResolver;
  *(v10 + 168) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v17 = swift_allocObject();
  *(v10 + 136) = v17;
  v18 = *(v15 + 1);
  *(v17 + 16) = *v15;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v15 + 4);
  __swift_storeEnumTagSinglePayload(v10 + OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input, 1, 1, v6);
  sub_2660B9EB8(&v26, v10 + 16);
  sub_2660B9EB8(&v25, v10 + 56);
  *(v10 + 176) = 0;
  v19 = OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v3, v10 + v19);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_2660CFC5C(v24);
  return v10;
}

uint64_t sub_2660CE2D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26618B790();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660CE3D8()
{
  type metadata accessor for DeepLaunchWrapperFlow();
  sub_2660CFB38();
  return sub_26618AFB0();
}

uint64_t sub_2660CE438(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_26618B800();
  v2[18] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[19] = v4;
  v6 = *(v5 + 64);
  v2[20] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B500();
  v2[21] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v2[22] = v8;
  v10 = *(v9 + 64);
  v2[23] = OUTLINED_FUNCTION_8_2();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64);
  v2[24] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B790();
  v2[25] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v2[26] = v13;
  v15 = *(v14 + 64);
  v2[27] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618C6B0();
  v2[28] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v2[29] = v17;
  v19 = *(v18 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660CE634, 0, 0);
}

void sub_2660CE634()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[29];
  v0[35] = __swift_project_value_buffer(v0[28], qword_2814B4A98);
  v0[36] = *(v2 + 16);
  v0[37] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3 = OUTLINED_FUNCTION_11_0();
  v86 = v4;
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v7);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v8, v9, "DeepLaunchWrapperFlow.execute() called");
    OUTLINED_FUNCTION_7_3();
  }

  v10 = v0[34];
  v11 = v0[28];
  v12 = v0[29];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[17];

  v16 = *(v12 + 8);
  v16(v10, v11);
  v17 = v16;
  v18 = OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v15 + v18, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    v19 = v0[31];
    v20 = v0[28];
    sub_2660CFA98(v0[24]);
    v21 = OUTLINED_FUNCTION_11_0();
    v86(v21);
    v22 = sub_26618C690();
    v23 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v23))
    {
      v24 = OUTLINED_FUNCTION_6_2();
      *v24 = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v25, v26, "DeepLaunchWrapperFlow.execute() Input is nil. Error executing request");
      MEMORY[0x26677CC30](v24, -1, -1);
    }

    v27 = v0[31];
    v30 = v0 + 28;
    v29 = v0[28];
    v28 = v30[1];

    v17(v27, v29);
    sub_26618CE80();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    v32 = v0[22];
    v31 = v0[23];
    v33 = v0[21];
    v34 = v0[17];
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v35 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34 + 2, v34[5]);
    sub_26618B4F0();
    LOBYTE(v34) = sub_26618B110();
    v36 = *(v32 + 8);
    v36(v31, v33);
    if ((v34 & 1) == 0)
    {
      v85 = v17;
      v60 = v0[33];
      v61 = v0[28];
      v62 = OUTLINED_FUNCTION_11_0();
      v86(v62);
      v63 = sub_26618C690();
      v64 = sub_26618CAA0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_6_2();
        *v65 = 0;
        _os_log_impl(&dword_2660B7000, v63, v64, "DeepLaunchWrapperFlow.execute() pushing unlock flow", v65, 2u);
        MEMORY[0x26677CC30](v65, -1, -1);
      }

      v66 = v0[33];
      v68 = v0[28];
      v67 = v0[29];
      v69 = v0[26];
      v88 = v0[27];
      v70 = v0[23];
      v71 = v0[21];
      v72 = v0[17];
      v82 = v0[16];
      v83 = v0[25];

      v85(v66, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
      v73 = sub_26618AE80();
      OUTLINED_FUNCTION_0_4(v73);
      v75 = *(v74 + 72);
      v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      *(swift_allocObject() + 16) = xmmword_26618E190;
      sub_26618B4F0();
      sub_26618AE70();
      v36(v70, v71);
      v78 = sub_26618AC10();

      v0[15] = v78;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_2660CFB00;
      *(v79 + 24) = v72;
      sub_26618AE60();

      sub_26618B320();

      (*(v69 + 8))(v88, v83);
      OUTLINED_FUNCTION_1_5();

      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_12_0();

      __asm { BRAA            X1, X16 }
    }

    v84 = v0[20];
    v87 = v0[27];
    sub_2660C5864(v0[17] + 136, (v0 + 2));
    v37 = v0[5];
    v38 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v37);
    OUTLINED_FUNCTION_3_5();
    v40 = v39;
    v42 = *(v41 + 64);
    v43 = OUTLINED_FUNCTION_8_2();
    (*(v40 + 16))(v43, v38, v37);
    v0[10] = &type metadata for ReferenceResolver;
    v0[11] = &off_2877CC6F0;
    OUTLINED_FUNCTION_4_5();
    v44 = swift_allocObject();
    v0[7] = v44;
    v45 = *(v43 + 32);
    v46 = *(v43 + 16);
    *(v44 + 16) = *v43;
    *(v44 + 32) = v46;
    *(v44 + 48) = v45;
    type metadata accessor for DeepLaunchFlowStrategy();
    OUTLINED_FUNCTION_4_5();
    v47 = swift_allocObject();
    v0[38] = v47;
    v48 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), &type metadata for ReferenceResolver);
    OUTLINED_FUNCTION_3_5();
    v50 = v49;
    v52 = *(v51 + 64);
    v53 = OUTLINED_FUNCTION_8_2();
    (*(v50 + 16))(v53, v48, &type metadata for ReferenceResolver);
    v47[5] = &type metadata for ReferenceResolver;
    v47[6] = &off_2877CC6F0;
    OUTLINED_FUNCTION_4_5();
    v54 = swift_allocObject();
    v47[2] = v54;
    v55 = *(v53 + 32);
    v56 = *(v53 + 16);
    *(v54 + 16) = *v53;
    *(v54 + 32) = v56;
    *(v54 + 48) = v55;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    sub_26618B770();
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = sub_2660CED9C;
    v58 = v0[20];
    OUTLINED_FUNCTION_12_0();

    sub_266109670();
  }
}

uint64_t sub_2660CED9C()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v9 + 320) = v8;
  *(v9 + 328) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_2660CF0BC;
  }

  else
  {
    v10 = sub_2660CEF08;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2660CEF08()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  __swift_project_boxed_opaque_existential_1((v0[17] + 96), *(v0[17] + 120));
  sub_26617E2A8(v2, v8, v1);
  v5(v6, v4, v7);
  v9 = sub_26618C690();
  v10 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v10))
  {
    v11 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v11);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v12, v13, "DeepLaunchWrapperFlow.execute() pushing rch flow");
    OUTLINED_FUNCTION_7_3();
  }

  v14 = v0[40];
  v15 = v0[38];
  v16 = v0[32];
  v18 = v0[28];
  v17 = v0[29];
  v19 = v0[26];
  v24 = v0[27];
  v20 = v0[25];
  v21 = v0[16];

  (*(v17 + 8))(v16, v18);
  sub_26618B350();

  (*(v19 + 8))(v24, v20);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_5_3();

  return v22();
}

uint64_t sub_2660CF0BC()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[30];
  v6 = v0[28];

  v4(v5, v3, v6);
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v8))
  {
    v9 = OUTLINED_FUNCTION_6_2();
    *v9 = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v10, v11, "DeepLaunchWrapperFlow.execute() Error while pushing RCH flow");
    MEMORY[0x26677CC30](v9, -1, -1);
  }

  v12 = v0[41];
  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[16];

  (*(v14 + 8))(v13, v15);
  sub_26618B360();

  (*(v18 + 8))(v16, v17);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_5_3();

  return v20();
}

uint64_t sub_2660CF258(char a1)
{
  v3 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (a1)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v14 = __swift_project_value_buffer(v3, qword_2814B4A80);
    (*(v5 + 16))(v13, v14, v3);
    v15 = sub_26618C690();
    v16 = sub_26618CAB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v17);
      _os_log_impl(&dword_2660B7000, v15, v16, "Unable to unlock device", v1, 2u);
LABEL_10:
      OUTLINED_FUNCTION_7_3();
    }
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v18 = __swift_project_value_buffer(v3, qword_2814B4A80);
    (*(v5 + 16))(v11, v18, v3);
    v15 = sub_26618C690();
    v19 = sub_26618CAB0();
    if (os_log_type_enabled(v15, v19))
    {
      v20 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v20);
      _os_log_impl(&dword_2660B7000, v15, v19, "Device unlocked", v1, 2u);
      goto LABEL_10;
    }
  }

  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_11_0();
  return v23(v22);
}

uint64_t *sub_2660CF47C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input);
  return v0;
}

uint64_t sub_2660CF4C4()
{
  sub_2660CF47C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DeepLaunchWrapperFlow()
{
  result = qword_28005C050;
  if (!qword_28005C050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660CF570()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2660CF61C()
{
  if (!qword_2814B4820)
  {
    sub_26618B790();
    v0 = sub_26618CBD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B4820);
    }
  }
}

uint64_t sub_2660CF674(uint64_t a1)
{
  v2 = *v1;
  sub_2660CE2D4(a1);
  return 1;
}

uint64_t sub_2660CF69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2660CF74C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660CF74C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_2660CF864(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660CF900;

  return sub_2660CE438(a1);
}

uint64_t sub_2660CF900()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_2660CF9E8()
{
  type metadata accessor for DeepLaunchWrapperFlow();

  return sub_26618AFE0();
}