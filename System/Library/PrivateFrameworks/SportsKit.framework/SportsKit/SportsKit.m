uint64_t sub_26B6319B8@<X0>(uint64_t *a1@<X8>)
{
  result = CompetitorShootoutsViewModel.ShootoutState.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B631B98()
{
  v1 = type metadata accessor for CompetitorShootoutsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E50, &qword_26B6EBAC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B6E9734();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = *(v5 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B631CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280408EE8, &qword_26B6EBE88);
  v7 = OUTLINED_FUNCTION_30(v6);
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

uint64_t sub_26B631DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280408EE8, &qword_26B6EBE88);
  result = OUTLINED_FUNCTION_30(v8);
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

char *sub_26B631ECC(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_0(result, a3, a2);
  }

  return result;
}

uint64_t sub_26B631EE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B63208C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B632558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B6E9564();
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

uint64_t sub_26B632604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B6E9564();
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

uint64_t sub_26B632914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65D230(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6329B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    OUTLINED_FUNCTION_65_0();
    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for SportsActivityAttributes.EventInfo(0);
    v10 = OUTLINED_FUNCTION_30(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(a3 + 36);
    }

    else
    {
      v12 = sub_26B6E9564();
      v13 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void sub_26B632A78()
{
  OUTLINED_FUNCTION_64_0();
  if (v4 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    v5 = type metadata accessor for SportsActivityAttributes.EventInfo(0);
    v6 = OUTLINED_FUNCTION_30(v5);
    if (*(v7 + 84) == v3)
    {
      v8 = v6;
      v9 = *(v2 + 36);
    }

    else
    {
      v8 = sub_26B6E9564();
      v9 = *(v2 + 56);
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_26B632B34()
{
  OUTLINED_FUNCTION_64_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v1 = OUTLINED_FUNCTION_124();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26B632B80()
{
  OUTLINED_FUNCTION_64_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v0 = OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26B632BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_64_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096C0, &qword_26B6EDFA0);
  OUTLINED_FUNCTION_30(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_124();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      v10 = *(v4 + *(a3 + 40));
      OUTLINED_FUNCTION_65_0();
      return (v11 + 1);
    }

    v9 = sub_26B6E93B4();
    v8 = v4 + *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_26B632C90()
{
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_64_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096C0, &qword_26B6EDFA0);
  result = OUTLINED_FUNCTION_30(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 40)) = (v0 - 1);
      return result;
    }

    v7 = sub_26B6E93B4();
    v8 = v1 + *(v2 + 56);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_26B632D5C()
{
  OUTLINED_FUNCTION_64_0();
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v1 = OUTLINED_FUNCTION_124();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26B632D9C()
{
  OUTLINED_FUNCTION_64_0();
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v0 = OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26B632DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_106_0();
  v7 = type metadata accessor for RunningClockComponentsFormatter.DataSource(v6);
  v8 = OUTLINED_FUNCTION_30(v7);
  if (*(v9 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    OUTLINED_FUNCTION_65_0();
    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_26B632E80()
{
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_64_0();
  v4 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  result = OUTLINED_FUNCTION_30(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_31_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

uint64_t sub_26B632F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_106_0();
  v7 = type metadata accessor for RunningClockComponentsFormatter.DataSource(v6);
  v8 = OUTLINED_FUNCTION_30(v7);
  if (*(v9 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    OUTLINED_FUNCTION_65_0();
    return (v12 + 1);
  }
}

uint64_t sub_26B632FAC()
{
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_64_0();
  v4 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  result = OUTLINED_FUNCTION_30(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_31_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26B63319C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = static SportsSubscriptionState.activeSubscriptionEventId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_26B6331D4@<X0>(_BYTE *a1@<X8>)
{
  result = static SportsSubscriptionState.playClockEnabled.getter();
  *a1 = result & 1;
  return result;
}

id sub_26B63321C@<X0>(_BYTE *a1@<X8>)
{
  result = static SportsSubscriptionState.leftRightPlayTextAlignmentEnabled.getter();
  *a1 = result & 1;
  return result;
}

id sub_26B633264@<X0>(_BYTE *a1@<X8>)
{
  result = static SportsSubscriptionState.playStampDescriptionEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26B633578()
{
  MEMORY[0x26D67EA20](v0 + 16);
  OUTLINED_FUNCTION_13_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26B6335AC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_7_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B6335E0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_7_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B633614()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_13_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B633648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B633698()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B6336E0()
{
  v1 = type metadata accessor for SportsActivityCreationPolicy();
  OUTLINED_FUNCTION_32_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_26B6E9564();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v8 + 8);

  v12 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v3 | 7);
}

uint64_t sub_26B633804()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B633850@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B66CCE8();
  *a2 = result;
  return result;
}

uint64_t sub_26B633880()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B6338C0()
{
  OUTLINED_FUNCTION_7_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26B6338FC()
{
  OUTLINED_FUNCTION_13_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26B633930()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B63397C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B6339D4()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B633A0C()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B633AA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B633AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26B6E9564();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26B633B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26B6E9564();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B633C64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B633DA8()
{
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_4(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = OUTLINED_FUNCTION_20_3();
  v9(v8);
  v10 = OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_26B633E58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B633E90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B633ED8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B633F10()
{
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_20_3();
  v9(v8);
  v10 = OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_26B633FC8(char a1)
{
  if (a1)
  {
    return 0x6974736974617473;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_26B634010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B68B2CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B634058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B68BBE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6340C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B68C03C();
  *a2 = result;
  return result;
}

uint64_t sub_26B634270()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B6342A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_26B6346E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69895C();
  *v1 = result;
  return result;
}

uint64_t sub_26B63470C(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6989AC();
  *v1 = result;
  return result;
}

void *sub_26B634738(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6989F4();
  *v1 = result;
  return result;
}

void *sub_26B634764(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B698A60();
  *v1 = result;
  return result;
}

void *sub_26B634790(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B698ACC();
  *v1 = result;
  return result;
}

void *sub_26B6347BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B698B38();
  *v1 = result;
  return result;
}

uint64_t sub_26B6347E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B698BA0();
  *v1 = result;
  return result;
}

uint64_t sub_26B634814(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B698BE4();
  *v1 = result;
  return result;
}

void *sub_26B634864(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69B370();
  *v1 = result;
  return result;
}

uint64_t sub_26B634890(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69BA18();
  *v1 = result;
  return result;
}

uint64_t sub_26B6348BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69BA5C();
  *v1 = result;
  return result;
}

uint64_t sub_26B634904(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69C2D0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634960(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69D0C0();
  *v1 = result;
  return result;
}

uint64_t sub_26B6349D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69E06C();
  *v1 = result;
  return result;
}

uint64_t sub_26B6349FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69E0B0();
  *v1 = result;
  return result;
}

uint64_t sub_26B634A28(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69E0F4();
  *v1 = result;
  return result;
}

uint64_t sub_26B634A54(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69E10C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634AA8(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69E170();
  *v1 = result;
  return result;
}

uint64_t sub_26B634AD4(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B69E1B4();
  *v1 = result;
  return result;
}

uint64_t sub_26B634B08(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A03D0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634B5C(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A0408();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634BB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A0440();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634C04(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A0478();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634C58(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A04B0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634CAC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A04E8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634D00(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A054C();
  *v1 = result;
  return result;
}

uint64_t sub_26B634D2C(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A0590();
  *v1 = result;
  return result;
}

uint64_t sub_26B634D58(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A05D4();
  *v1 = result;
  return result;
}

void *sub_26B634D84(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A3700();
  *v1 = result;
  return result;
}

uint64_t sub_26B634DB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A3768();
  *v1 = result;
  return result;
}

void *sub_26B634DDC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A4494();
  *v1 = result;
  return result;
}

uint64_t sub_26B634E08(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A44FC();
  *v1 = result;
  return result;
}

uint64_t sub_26B634E88(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A4DD0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B634F38(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A5C7C();
  *v1 = result;
  return result;
}

uint64_t sub_26B634F64(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A5CA4();
  *v1 = result;
  return result;
}

void *sub_26B634FB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A5CF0();
  *v1 = result;
  return result;
}

void *sub_26B634FDC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A5D5C();
  *v1 = result;
  return result;
}

void *sub_26B635034(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A76E4();
  *v1 = result;
  return result;
}

uint64_t sub_26B635060(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A8CDC();
  *v1 = result;
  return result;
}

uint64_t sub_26B6350AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A8CEC();
  *v1 = result;
  return result;
}

uint64_t sub_26B6350F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A94D8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B635168(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A95B4();
  *v1 = result;
  return result;
}

void *sub_26B635194(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A95FC();
  *v1 = result;
  return result;
}

uint64_t sub_26B6351C0(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A9664();
  *v1 = result;
  return result;
}

uint64_t sub_26B6351EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A96A8();
  *v1 = result;
  return result;
}

uint64_t sub_26B635218(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A96EC();
  *v1 = result;
  return result;
}

uint64_t sub_26B635244(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6A9730();
  *v1 = result;
  return result;
}

uint64_t sub_26B635278(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6AA72C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B635304(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  result = sub_26B6ABB58();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B6355D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B6E9564();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B635618(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26B6E9564();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_26B63569C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B6356D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6B9FB4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26B63572C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6BA780();
  *a2 = result;
  return result;
}

uint64_t sub_26B6358D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B635908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_26B6E9564();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_26B63595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_26B6E9564();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_26B635A3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL sub_26B635A9C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_26B635E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_64_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  v7 = OUTLINED_FUNCTION_30(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
    v12 = OUTLINED_FUNCTION_30(v11);
    if (*(v13 + 84) != v3)
    {
      v15 = *(v4 + *(a3 + 24));
      if (v15 >= 2)
      {
        return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_26B635F6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_64_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  v9 = OUTLINED_FUNCTION_30(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
    result = OUTLINED_FUNCTION_30(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = v4 + 1;
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_26B636068(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_60_3(*(a1 + 40));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  v5 = OUTLINED_FUNCTION_54_3(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_26B6360EC()
{
  OUTLINED_FUNCTION_64_0();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
    v5 = OUTLINED_FUNCTION_54_3(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26B636170(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_60_3(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  v5 = OUTLINED_FUNCTION_54_3(*(a3 + 48));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_26B6361F4()
{
  OUTLINED_FUNCTION_64_0();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
    v5 = OUTLINED_FUNCTION_54_3(*(v4 + 48));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26B636394()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B6363CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  OUTLINED_FUNCTION_16(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26B636458()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B6364B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6DFB7C();
  *a2 = result;
  return result;
}

uint64_t sub_26B6364E4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26B6DFBF0();
}

uint64_t sub_26B636534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B63656C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B6365F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6E6880();
  *a2 = result;
  return result;
}

uint64_t sub_26B6366C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6E80E4();
  *a2 = result;
  return result;
}

char *sub_26B636798(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t sub_26B6367F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B636894@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B636830();
  *a1 = result & 1;
  return result;
}

SportsKit::PenaltyShootoutsViewModel __swiftcall PenaltyShootoutsViewModel.init(contextualShootouts:)(Swift::OpaquePointer contextualShootouts)
{
  v3 = v1;
  if (*(contextualShootouts._rawValue + 2) == 2)
  {
    v4 = *(*(contextualShootouts._rawValue + 4) + 16) > 5uLL || *(*(contextualShootouts._rawValue + 5) + 16) > 5;
    v16 = MEMORY[0x277D84F90];
    sub_26B63B810(0, 2, 0);
    v7 = 0;
    v8 = 0;
    v6 = v16;
    do
    {
      v9 = v7;
      v10 = *(contextualShootouts._rawValue + v8 + 4);

      CompetitorShootoutsViewModel.init(shootoutResults:suddenDeath:)(v11, v4);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_21(v12);
        sub_26B63B810(v14, v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      *(v16 + 8 * v13 + 32) = v15;
      v7 = 1;
      v8 = 1;
    }

    while ((v9 & 1) == 0);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v3 = v6;
  return result;
}

SportsKit::CompetitorShootoutsViewModel __swiftcall CompetitorShootoutsViewModel.init(shootoutResults:suddenDeath:)(Swift::OpaquePointer shootoutResults, Swift::Bool suddenDeath)
{
  v6 = v2;
  rawValue = shootoutResults._rawValue;

  sub_26B63AE4C(&rawValue);
  v7 = *(rawValue + 2);
  if (v7)
  {
    v8 = (rawValue + 40);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v11 = *v8;
      v8 += 16;
      v10 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v11)
      {
        if (v10 == 1)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = v9[2];
            OUTLINED_FUNCTION_0();
            v19 = OUTLINED_FUNCTION_6();
            sub_26B63A9F4(v19, v20, v21, v22, &qword_280408DC8, &qword_26B6EBA60, v23);
            v9 = v24;
          }

          OUTLINED_FUNCTION_15();
          if (v14)
          {
            OUTLINED_FUNCTION_21(v13);
            v15 = 1;
            OUTLINED_FUNCTION_13();
            sub_26B63A9F4(v25, v26, v27, v28, &qword_280408DC8, &qword_26B6EBA60, v29);
            v9 = v30;
          }

          else
          {
            v15 = 1;
          }
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = v9[2];
            OUTLINED_FUNCTION_0();
            v45 = OUTLINED_FUNCTION_6();
            sub_26B63A9F4(v45, v46, v47, v48, &qword_280408DC8, &qword_26B6EBA60, v49);
            v9 = v50;
          }

          OUTLINED_FUNCTION_15();
          if (v14)
          {
            OUTLINED_FUNCTION_21(v17);
            OUTLINED_FUNCTION_13();
            sub_26B63A9F4(v51, v52, v53, v54, &qword_280408DC8, &qword_26B6EBA60, v55);
            v9 = v56;
          }

          v15 = 0;
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = v9[2];
          OUTLINED_FUNCTION_0();
          v32 = OUTLINED_FUNCTION_6();
          sub_26B63A9F4(v32, v33, v34, v35, &qword_280408DC8, &qword_26B6EBA60, v36);
          v9 = v37;
        }

        OUTLINED_FUNCTION_15();
        if (v14)
        {
          OUTLINED_FUNCTION_21(v16);
          OUTLINED_FUNCTION_13();
          sub_26B63A9F4(v38, v39, v40, v41, &qword_280408DC8, &qword_26B6EBA60, v42);
          v9 = v43;
        }

        v15 = 2;
      }

      v9[2] = v3;
      *(v9 + v10 + 32) = v15;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (suddenDeath)
  {
    v57 = *(shootoutResults._rawValue + 2);

    if (v57 <= 5)
    {

      v59 = &unk_287C27DB0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408DC8, &qword_26B6EBA60);
      v58 = swift_allocObject();
      v59 = v58;
      *(v58 + 16) = xmmword_26B6EBA50;
      v60 = v9[2];
      if (v60)
      {
        *(v58 + 32) = *(v9 + v60 + 31);
      }

      else
      {
        *(v58 + 32) = 0;
      }
    }
  }

  else
  {

    if (v9[2] > 4uLL)
    {
      v59 = v9;
    }

    else
    {
      result.shootouts._rawValue = swift_isUniquelyReferenced_nonNull_native();
      if ((result.shootouts._rawValue & 1) == 0)
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_13();
        sub_26B63A9F4(v66, v67, v68, v69, v70, v71, v72);
        v9 = result.shootouts._rawValue;
      }

      v62 = v9[2];
      v59 = v9;
      do
      {
        v63 = v59[3];
        v64 = v62 + 1;
        if (v62 >= v63 >> 1)
        {
          v65 = OUTLINED_FUNCTION_21(v63);
          sub_26B63A9F4(v65, v62 + 1, 1, v59, &qword_280408DC8, &qword_26B6EBA60, sub_26B63F534);
          v59 = result.shootouts._rawValue;
        }

        v59[2] = v64;
        *(v59 + v62++ + 32) = 0;
      }

      while (v64 - 1 < 4);
    }
  }

  *v6 = v59;
  return result;
}

void static PenaltyShootoutsViewModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_26B637028();
}

uint64_t sub_26B636DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v5 = 1936943469;
      }

      else
      {
        v5 = 1818324839;
      }

      if (*v3)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x7974706D65;
      }

      if (*v3)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      if (*v4 == 1)
      {
        v8 = 1936943469;
      }

      else
      {
        v8 = 1818324839;
      }

      if (*v4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7974706D65;
      }

      if (*v4)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      if (v6 == v9 && v7 == v10)
      {
      }

      else
      {
        v12 = sub_26B6EA5D4();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_26B636ED0(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_26B6EA5D4() & 1) == 0)
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

uint64_t sub_26B636F5C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
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

uint64_t sub_26B636FB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_26B637028()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = v1 + 32;
    v6 = 0x7974706D65;
    v22 = v0 + 32;
    v23 = *(v0 + 16);
    v21 = v1 + 32;
    while (v3 != v2)
    {
      v7 = *(v4 + 8 * v3);
      v8 = *(v5 + 8 * v3);
      v9 = *(v7 + 16);
      if (v9 != *(v8 + 16))
      {
        goto LABEL_41;
      }

      if (v9)
      {
        v10 = v7 == v8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {

        v11 = 32;
        while (v9)
        {
          if (*(v7 + v11) == 1)
          {
            v12 = 1936943469;
          }

          else
          {
            v12 = 1818324839;
          }

          if (*(v7 + v11))
          {
            v13 = v12;
          }

          else
          {
            v13 = v6;
          }

          if (*(v7 + v11))
          {
            v14 = 0xE400000000000000;
          }

          else
          {
            v14 = 0xE500000000000000;
          }

          if (*(v8 + v11) == 1)
          {
            v15 = 1936943469;
          }

          else
          {
            v15 = 1818324839;
          }

          v16 = v6;
          if (*(v8 + v11))
          {
            v17 = v15;
          }

          else
          {
            v17 = v6;
          }

          if (*(v8 + v11))
          {
            v18 = 0xE400000000000000;
          }

          else
          {
            v18 = 0xE500000000000000;
          }

          if (v13 == v17 && v14 == v18)
          {
          }

          else
          {
            v20 = sub_26B6EA5D4();

            if ((v20 & 1) == 0)
            {

              goto LABEL_41;
            }
          }

          ++v11;
          --v9;
          v6 = v16;
          if (!v9)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            goto LABEL_40;
          }
        }

        __break(1u);
        break;
      }

LABEL_40:
      if (++v3 == v2)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_41:
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_26B637234(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v4;
      v6 = 0xE600000000000000;
      v7 = 0x737472656C41;
      switch(*v3)
      {
        case 1:
          v6 = 0xE300000000000000;
          v7 = 7105601;
          break;
        case 2:
          v7 = 0x6867696C68676948;
          v6 = 0xE900000000000074;
          break;
        case 3:
          v6 = 0xE700000000000000;
          v7 = 0x79616C5079654BLL;
          break;
        case 4:
          v6 = 0xE700000000000000;
          v7 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v8 = 0xE600000000000000;
      v9 = 0x737472656C41;
      switch(*v4)
      {
        case 1:
          v8 = 0xE300000000000000;
          v9 = 7105601;
          break;
        case 2:
          v9 = 0x6867696C68676948;
          v8 = 0xE900000000000074;
          break;
        case 3:
          v8 = 0xE700000000000000;
          v9 = 0x79616C5079654BLL;
          break;
        case 4:
          v8 = 0xE700000000000000;
          v9 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      if (v7 == v9 && v6 == v8)
      {
      }

      else
      {
        v11 = sub_26B6EA5D4();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_26B637418()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 >> 62;
  if (v0 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26B6EA324())
  {
    if (v4 >> 62)
    {
      v8 = sub_26B6EA324();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != v8 || !i)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = v4 & 0xFFFFFFFFFFFFFF8;
    v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 < 0)
    {
      v11 = v4;
    }

    if (v4 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      OUTLINED_FUNCTION_34();
      return;
    }

    if (i < 0)
    {
      break;
    }

    v2 = v2(0);
    v13 = v4 & 0xC000000000000001;
    v14 = 4;
    v15 = v4;
    while (1)
    {
      v16 = v14 - 4;
      v6 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D67DB30](v14 - 4, v5);
      }

      else
      {
        if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v17 = *(v5 + 8 * v14);
      }

      v18 = v17;
      if (v13)
      {
        v19 = MEMORY[0x26D67DB30](v14 - 4, v4);
      }

      else
      {
        if (v16 >= *(v22 + 16))
        {
          goto LABEL_32;
        }

        v19 = *(v4 + 8 * v14);
      }

      v20 = v19;
      v21 = sub_26B6E9FA4();

      if (v21)
      {
        ++v14;
        v4 = v15;
        if (v6 != i)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
}

uint64_t sub_26B6375C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v5 = 0x74756F6C6C6143;
      }

      else
      {
        v5 = 0x6E776F6E6B6E55;
      }

      if (*v3)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x476564697374754FLL;
      }

      if (*v3)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v7 = 0xEC00000070756F72;
      }

      if (*v4 == 1)
      {
        v8 = 0x74756F6C6C6143;
      }

      else
      {
        v8 = 0x6E776F6E6B6E55;
      }

      if (*v4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x476564697374754FLL;
      }

      if (*v4)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xEC00000070756F72;
      }

      if (v6 == v9 && v7 == v10)
      {
      }

      else
      {
        v12 = sub_26B6EA5D4();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_26B637710(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001DLL && 0x800000026B6FB0D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6377C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B637710(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B637810@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_33();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26B63783C(uint64_t a1)
{
  v2 = sub_26B63B8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B637878(uint64_t a1)
{
  v2 = sub_26B63B8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void PenaltyShootoutsViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408DD0, &qword_26B6EBA68);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[3];
  v35 = v24[4];
  OUTLINED_FUNCTION_39(v24);
  sub_26B63B8BC();

  OUTLINED_FUNCTION_23();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408DE0, &qword_26B6EBA70);
  sub_26B63C814(&unk_280408DE8);
  OUTLINED_FUNCTION_17();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_37();
}

void PenaltyShootoutsViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408DF8, &qword_26B6EBA78);
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v19 = v12[3];
  v20 = v12[4];
  OUTLINED_FUNCTION_39(v12);
  sub_26B63B8BC();
  OUTLINED_FUNCTION_22();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408DE0, &qword_26B6EBA70);
    sub_26B63C814(&unk_280408E00);
    OUTLINED_FUNCTION_14();
    v21 = OUTLINED_FUNCTION_27();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_37();
}

uint64_t CompetitorShootoutsViewModel.ShootoutState.id.getter()
{
  v1 = 1936943469;
  if (*v0 != 1)
  {
    v1 = 1818324839;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974706D65;
  }
}

SportsKit::CompetitorShootoutsViewModel::ShootoutState_optional __swiftcall CompetitorShootoutsViewModel.ShootoutState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6EA394();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B637C98(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_5();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B637D48(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 8:
      OUTLINED_FUNCTION_5();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B637E54(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 7:
      OUTLINED_FUNCTION_28();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B637F48(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_11();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638060()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B6380B0()
{
  OUTLINED_FUNCTION_19();
  switch(v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_11();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B6381C0()
{
  OUTLINED_FUNCTION_18();
  sub_26B6E9AE4();
}

uint64_t sub_26B638270(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_3();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B6382FC()
{
  OUTLINED_FUNCTION_19();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B6383AC()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B638450()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B6384E4()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B63852C()
{
  OUTLINED_FUNCTION_19();
  switch(v0)
  {
    case 9:
      OUTLINED_FUNCTION_5();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638654()
{
  OUTLINED_FUNCTION_19();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_28();
      break;
    case 9:
      OUTLINED_FUNCTION_11();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B63876C()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B638804()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B63887C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_9();
      break;
    case 4:
      OUTLINED_FUNCTION_3();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638934()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B6389C8()
{
  OUTLINED_FUNCTION_18();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638AC8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_9();
      break;
    case 5:
      OUTLINED_FUNCTION_3();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638B80()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B638C1C(uint64_t a1, char a2)
{
  v2 = qword_26B6EC3D0[a2];
  sub_26B6E9AE4();
}

uint64_t sub_26B638C5C()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B638D24()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B638D90()
{
  OUTLINED_FUNCTION_19();
  switch(v0)
  {
    case 6:
      OUTLINED_FUNCTION_9();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638EB4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_31();
      break;
    default:
      break;
  }

  sub_26B6E9AE4();
}

uint64_t sub_26B638FD4()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B639068()
{
  sub_26B6E9AE4();
}

uint64_t sub_26B6390D0(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 200;
  }

  else
  {
    v2 = 56;
  }

  return MEMORY[0x26D67E0E0](v2);
}

uint64_t sub_26B639300(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74756F746F6F6873 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B639380()
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](0);
  return sub_26B6EA744();
}

uint64_t sub_26B6393E0()
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](0);
  return sub_26B6EA744();
}

uint64_t sub_26B639424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B639300(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B639450(uint64_t a1)
{
  v2 = sub_26B63C8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B63948C(uint64_t a1)
{
  v2 = sub_26B63C8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void CompetitorShootoutsViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E10, &qword_26B6EBA80);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[3];
  v35 = v24[4];
  OUTLINED_FUNCTION_39(v24);
  sub_26B63C8CC();

  OUTLINED_FUNCTION_23();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E20, &qword_26B6EBA88);
  sub_26B63C920(&unk_280408E28);
  OUTLINED_FUNCTION_17();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_37();
}

uint64_t CompetitorShootoutsViewModel.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x26D67E0E0](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_26B6E9AE4();

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_26B6396E8(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  sub_26B6EA714();
  a1(v5, v3);
  return sub_26B6EA744();
}

void CompetitorShootoutsViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E38, &qword_26B6EBA90);
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v19 = v12[3];
  v20 = v12[4];
  OUTLINED_FUNCTION_39(v12);
  sub_26B63C8CC();
  OUTLINED_FUNCTION_22();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E20, &qword_26B6EBA88);
    sub_26B63C920(&unk_280408E40);
    OUTLINED_FUNCTION_14();
    v21 = OUTLINED_FUNCTION_27();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6398A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_26B6EA714();
  a4(v8, v6);
  return sub_26B6EA744();
}

uint64_t CompetitorShootoutsView.init(viewModel:layout:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E50, &qword_26B6EBAC8);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CompetitorShootoutsView();
  *(a3 + *(result + 20)) = v5;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t CompetitorShootoutsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CompetitorShootoutsView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *(v1 + *(v5 + 32));
  v9 = sub_26B63A34C();
  *a1 = sub_26B6E9764();
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E58, &qword_26B6EBAD0) + 44);
  v14[1] = *(v2 + *(v5 + 28));
  sub_26B63CA78(v2, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_26B63CADC(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E20, &qword_26B6EBA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E60, &qword_26B6EBAD8);
  sub_26B63D4C8(&unk_280408E68);
  sub_26B63CBC0();
  sub_26B63CE40();
  return sub_26B6E9874();
}

void *sub_26B639B9C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*a1)
  {
    v4 = *(a2 + *(type metadata accessor for CompetitorShootoutsView() + 24));
    swift_beginAccess();
    v5 = *(v4 + 52);
    sub_26B63A2E0();
    sub_26B63A2E0();
    sub_26B6E9884();
    sub_26B6E9724();
    *&v9[34] = v18;
    *&v9[18] = v17;
    *&v9[2] = v16;
    *(&v19[1] + 2) = *v9;
    v19[0] = v5;
    LOWORD(v19[1]) = 256;
    *(&v19[5] + 2) = *&v9[16];
    *(&v19[9] + 2) = *&v9[32];
    HIWORD(v19[13]) = HIWORD(v18);
    LOBYTE(v19[14]) = 0;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E90, &qword_26B6EBAE8);
    sub_26B63CCD0();
    sub_26B6E9794();
    __src[0] = v10;
    __src[1] = v11;
    __src[2] = *v12;
    *(&__src[2] + 9) = *&v12[9];
    sub_26B63D8D8(__src);
    goto LABEL_7;
  }

  if (*a1 != 1)
  {
    v6 = *(a2 + *(type metadata accessor for CompetitorShootoutsView() + 24));
    swift_beginAccess();
    v7 = *(v6 + 48);
    sub_26B63A2E0();
    sub_26B63A2E0();
    sub_26B6E9884();
    sub_26B6E9724();
    *&v13[34] = v18;
    *&v13[18] = v17;
    *&v13[2] = v16;
    *(&v19[1] + 2) = *v13;
    v19[0] = v7;
    LOWORD(v19[1]) = 256;
    *(&v19[5] + 2) = *&v13[16];
    *(&v19[9] + 2) = *&v13[32];
    HIWORD(v19[13]) = HIWORD(v18);
    LOBYTE(v19[14]) = 1;
    goto LABEL_6;
  }

  sub_26B639E34(__src);
  sub_26B63D8CC(__src);
LABEL_7:
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E80, &qword_26B6EBAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408EB0, &qword_26B6EBAF8);
  sub_26B63CC4C();
  sub_26B63CD88();
  sub_26B6E9794();
  return memcpy(a3, v19, 0x79uLL);
}

double sub_26B639E34@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + *(type metadata accessor for CompetitorShootoutsView() + 24)) + 40);
  sub_26B6E9714();
  v4 = sub_26B6E9884();
  v6 = v5;
  sub_26B63A2E0();
  sub_26B63A2E0();
  sub_26B6E9884();
  sub_26B6E9724();
  *a1 = v8 * 0.5;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = 256;
  *(a1 + 56) = v4;
  *(a1 + 64) = v6;
  *(a1 + 72) = v13;
  *(a1 + 88) = v14;
  result = *&v15;
  *(a1 + 104) = v15;
  return result;
}

uint64_t sub_26B639F64@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B639FB8();
  *a2 = result;
  return result;
}

uint64_t sub_26B639FEC(int a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_26B63A080@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B63A0D4();
  *a2 = result;
  return result;
}

uint64_t sub_26B63A108(int a1)
{
  result = swift_beginAccess();
  *(v1 + 52) = a1;
  return result;
}

uint64_t sub_26B63A198()
{
  type metadata accessor for CompetitorShootoutsLayout();
  v0 = swift_allocObject();
  result = CompetitorShootoutsLayout.init(diameter:lineWidth:indicatorSpacing:scoreSpacing:)();
  qword_280408D38 = v0;
  return result;
}

uint64_t CompetitorShootoutsLayout.__allocating_init(diameter:lineWidth:indicatorSpacing:scoreSpacing:)()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_allocObject();
  CompetitorShootoutsLayout.init(diameter:lineWidth:indicatorSpacing:scoreSpacing:)();
  return v0;
}

uint64_t static CompetitorShootoutsLayout.defaultLayout.getter()
{
  if (qword_280408D30 != -1)
  {
    swift_once();
  }
}

uint64_t CompetitorShootoutsLayout.init(diameter:lineWidth:indicatorSpacing:scoreSpacing:)()
{
  OUTLINED_FUNCTION_32();
  *(v0 + 48) = sub_26B6E97A4();
  *(v0 + 52) = sub_26B6E97B4();
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

double sub_26B63A2E0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v1 scaledValueForValue_];
  v3 = v2;

  return v3;
}

double sub_26B63A34C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v1 scaledValueForValue_];
  v3 = v2;

  return v3;
}

double sub_26B63A3B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v1 scaledValueForValue_];
  v3 = v2;

  return v3;
}

uint64_t sub_26B63A460(uint64_t a1)
{
  v2 = sub_26B6E9734();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26B6E9754();
}

uint64_t sub_26B63A520(uint64_t a1, id *a2)
{
  result = sub_26B6E9A04();
  *a2 = 0;
  return result;
}

uint64_t sub_26B63A598(uint64_t a1, id *a2)
{
  v3 = sub_26B6E9A14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26B63A628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B63DA84();
  *a1 = result;
  return result;
}

uint64_t sub_26B63A658()
{
  v0 = sub_26B6E9A24();
  v1 = MEMORY[0x26D67D560](v0);

  return v1;
}

uint64_t sub_26B63A698()
{
  sub_26B6E9A24();
  sub_26B6E9AE4();
}

uint64_t sub_26B63A6F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26B645FF8();
}

uint64_t sub_26B63A700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B6E99F4();

  *a2 = v5;
  return result;
}

uint64_t sub_26B63A748@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B6CB254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26B63A774(uint64_t a1)
{
  v2 = sub_26B63DA10(&unk_2804090D8);
  v3 = sub_26B63DA10(&unk_2804090E0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_26B63A80C()
{
  OUTLINED_FUNCTION_20();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
      v8 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_40(v8);
      OUTLINED_FUNCTION_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7();
        sub_26B636798(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B63A8C8()
{
  OUTLINED_FUNCTION_20();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409030, &unk_26B6EC150);
      v8 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_40(v8);
      OUTLINED_FUNCTION_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7();
        sub_26B63E4F8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_26();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B63A9F4(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12();
  if (!v11)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B63AAFC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_24();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12();
  if (!v11)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B63ABE0()
{
  OUTLINED_FUNCTION_20();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409060, &qword_26B6EC180);
      v8 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_40(v8);
      OUTLINED_FUNCTION_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7();
        sub_26B63E518(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_26();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B63AD50(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_12();
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  v17 = a5(v16, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  OUTLINED_FUNCTION_30(v18);
  if (a1)
  {
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    a8(a4 + v20, v16, v17 + v20);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26B63AE4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B63F4F4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26B63AEB8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_26B63AEB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B6EA554();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26B6E9C94();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26B63B020(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B63AFAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B63AFAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 16);
        if (v9 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v9;
        *(v8 + 8) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26B63B020(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = 16 * v7;
        v12 = (*a3 + 16 * v7);
        v15 = *v12;
        v14 = v12 + 4;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v10 < v13) ^ (*v14 >= *(v14 - 2));
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 16 * v6 - 16;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = v11 != v19 || v23 >= v24 + 16;
                if (v27)
                {
                  *v23 = *v24;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
              }

              ++v21;
              v19 -= 16;
              v11 += 16;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9 - 16;
            v30 = v7 - v9;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = *(v32 + 16);
                if (v33 >= *v32)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_117;
                }

                v34 = *(v32 + 24);
                *(v32 + 16) = *v32;
                *v32 = v33;
                *(v32 + 8) = v34;
                v32 -= 16;
                v27 = __CFADD__(v31++, 1);
              }

              while (!v27);
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B63AAFC(0, v8[2] + 1, 1, v8, &qword_280409010, &unk_26B6EC470, sub_26B63F530);
        v8 = v79;
      }

      v36 = v8[2];
      v35 = v8[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_26B63AAFC(v35 > 1, v36 + 1, 1, v8, &qword_280409010, &unk_26B6EC470, sub_26B63F530);
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_62:
            if (v46)
            {
              goto LABEL_102;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_105;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_110;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v37 < 2)
          {
            goto LABEL_104;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_77:
          if (v61)
          {
            goto LABEL_107;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (v68 < v60)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_26B63B68C((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v75 < v73)
          {
            goto LABEL_97;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_98;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_99;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_91;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_100;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_101;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_103;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_106;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_111;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_26B63B560(&v86, *a1, a3);
LABEL_95:
}

uint64_t sub_26B63B560(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26B63F2BC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_26B63B68C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26B63B68C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26B636798(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_26B636798(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_26B63B810(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B63BA6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26B63B8BC()
{
  result = qword_280408DD8;
  if (!qword_280408DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408DD8);
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

unint64_t sub_26B63B958()
{
  result = qword_280408DF0;
  if (!qword_280408DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408DF0);
  }

  return result;
}

uint64_t sub_26B63B9AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B63BC20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B63B9CC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B63BD30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B63B9EC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B63BFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B63BA0C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B63C0F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26B63BA2C(size_t a1, int64_t a2, char a3)
{
  result = sub_26B63C208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26B63BA4C(size_t a1, int64_t a2, char a3)
{
  result = sub_26B63C3D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B63BA6C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804090B8, &qword_26B6EC1D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B63E4F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B63BB6C()
{
  OUTLINED_FUNCTION_20();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409068, &qword_26B6EC188);
      v8 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_40(v8);
      OUTLINED_FUNCTION_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7();
        sub_26B636798(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_26();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B63BC20(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409018, &qword_26B6EC140);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_26B63E518((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409020, &qword_26B6EC148);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B63BD30(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409098, &qword_26B6F14B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26B63E538((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804090A0, &qword_26B6EC1C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B63BE48()
{
  OUTLINED_FUNCTION_20();
  if (v3)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409088, &qword_26B6FA6F0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_18:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  OUTLINED_FUNCTION_30(v15);
  if (v1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_26B63E55C(v0 + v17, v7, v12 + v17);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26B63BFF8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26B636798((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B63C0F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409070, &qword_26B6EC190);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B63E4F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409078, &qword_26B6EC198);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_26B63C208(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409048, &qword_26B6EC168);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26B63E570(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_26B63C3D4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409040, &qword_26B6EC160);
  v10 = *(sub_26B6E93B4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(sub_26B6E93B4() - 8) + 80);
  if (v5)
  {
    sub_26B63E584();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_26B63C588(uint64_t a1, uint64_t a2)
{
  v3 = sub_26B6B8B04(a2);
  MEMORY[0x26D67E0E0](v3);
  v4 = sub_26B6542CC(a2);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D67DB30](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_26B6E9FB4();
      }
    }
  }
}

uint64_t sub_26B63C62C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D67E0E0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_26B6E9AE4();

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_26B63C6E0()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_35(v2, v3);
  v9 = v0;
  if (v0)
  {
    v4 = 0;
    v8 = v1 + 32;
    do
    {
      v5 = *(v8 + 8 * v4);
      MEMORY[0x26D67E0E0](*(v5 + 16));
      v6 = *(v5 + 16);
      if (v6)
      {

        v7 = 32;
        do
        {
          *(v5 + v7);
          sub_26B6E9AE4();

          ++v7;
          --v6;
        }

        while (v6);
      }

      ++v4;
    }

    while (v4 != v9);
  }

  OUTLINED_FUNCTION_34();
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

unint64_t sub_26B63C814(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280408DE0, &qword_26B6EBA70);
    v4();
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26B63C878()
{
  result = qword_280408E08;
  if (!qword_280408E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E08);
  }

  return result;
}

unint64_t sub_26B63C8CC()
{
  result = qword_280408E18;
  if (!qword_280408E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E18);
  }

  return result;
}

unint64_t sub_26B63C920(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280408E20, &qword_26B6EBA88);
    v4();
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26B63C984()
{
  result = qword_280408E30;
  if (!qword_280408E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E30);
  }

  return result;
}

unint64_t sub_26B63C9D8()
{
  result = qword_280408E48;
  if (!qword_280408E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E48);
  }

  return result;
}

uint64_t type metadata accessor for CompetitorShootoutsView()
{
  result = qword_280408EF8;
  if (!qword_280408EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B63CA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompetitorShootoutsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B63CADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompetitorShootoutsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26B63CB40@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CompetitorShootoutsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26B639B9C(a1, v6, a2);
}

unint64_t sub_26B63CBC0()
{
  result = qword_280408E70;
  if (!qword_280408E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280408E60, &qword_26B6EBAD8);
    sub_26B63CC4C();
    sub_26B63CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E70);
  }

  return result;
}

unint64_t sub_26B63CC4C()
{
  result = qword_280408E78;
  if (!qword_280408E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280408E80, &qword_26B6EBAE0);
    sub_26B63CCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E78);
  }

  return result;
}

unint64_t sub_26B63CCD0()
{
  result = qword_280408E88;
  if (!qword_280408E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280408E90, &qword_26B6EBAE8);
    sub_26B63D4C8(&unk_280408E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408E88);
  }

  return result;
}

unint64_t sub_26B63CD88()
{
  result = qword_280408EA8;
  if (!qword_280408EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280408EB0, &qword_26B6EBAF8);
    sub_26B63D4C8(&unk_280408EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408EA8);
  }

  return result;
}

unint64_t sub_26B63CE40()
{
  result = qword_280408EC8;
  if (!qword_280408EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408EC8);
  }

  return result;
}

unint64_t sub_26B63CE98()
{
  result = qword_280408ED0;
  if (!qword_280408ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408ED0);
  }

  return result;
}

unint64_t sub_26B63CEFC()
{
  result = qword_280408ED8;
  if (!qword_280408ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408ED8);
  }

  return result;
}

unint64_t sub_26B63CF54()
{
  result = qword_280408EE0;
  if (!qword_280408EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408EE0);
  }

  return result;
}

uint64_t sub_26B63CFE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B63D020(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CompetitorShootoutsViewModel.ShootoutState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CompetitorShootoutsViewModel.ShootoutState(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26B63D25C()
{
  sub_26B63D2DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CompetitorShootoutsLayout();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26B63D2DC()
{
  if (!qword_280408F08)
  {
    sub_26B6E9734();
    v0 = sub_26B6E9704();
    if (!v1)
    {
      atomic_store(v0, &qword_280408F08);
    }
  }
}

unint64_t sub_26B63D4C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreboardSubscription.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_26B63D578(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B63D628()
{
  result = qword_280408FE0;
  if (!qword_280408FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408FE0);
  }

  return result;
}

unint64_t sub_26B63D680()
{
  result = qword_280408FE8;
  if (!qword_280408FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408FE8);
  }

  return result;
}

unint64_t sub_26B63D6D8()
{
  result = qword_280408FF0;
  if (!qword_280408FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408FF0);
  }

  return result;
}

unint64_t sub_26B63D730()
{
  result = qword_280408FF8;
  if (!qword_280408FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280408FF8);
  }

  return result;
}

unint64_t sub_26B63D788()
{
  result = qword_280409000;
  if (!qword_280409000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409000);
  }

  return result;
}

unint64_t sub_26B63D7E0()
{
  result = qword_280409008;
  if (!qword_280409008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409008);
  }

  return result;
}

unint64_t sub_26B63D838()
{
  result = qword_280409028;
  if (!qword_280409028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409028);
  }

  return result;
}

void sub_26B63D88C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_26B6EA734();
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_26B63D8EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B63D90C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_26B63D95C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_26B63DA10(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26B63DA84()
{
  sub_26B6E9A24();
  v0 = sub_26B6E99F4();

  return v0;
}

void OUTLINED_FUNCTION_10(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_26B6EA534();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_26B6EA784();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return sub_26B6EA7C4();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x26D67E0E0);
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_getWitnessTable();
}

void *sub_26B63DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v4;
  return v3;
}

void sub_26B63DE50(char *a1)
{
  v3 = sub_26B6E98A4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B6E98D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId] == *(v1 + 16) && *&a1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8] == *(v1 + 24);
  if (v19 || (sub_26B6EA5D4() & 1) != 0)
  {
    v31 = v11;
    v32 = v6;

    aBlock[0] = sub_26B69373C(v20);
    sub_26B63E72C(aBlock);
    v21 = aBlock[0];
    sub_26B63F3D0();
    v22 = sub_26B6E9EB4();
    v23 = swift_allocObject();
    v23[2] = v1;
    v23[3] = v21;
    v23[4] = a1;
    aBlock[4] = sub_26B63F414;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B66CB58;
    aBlock[3] = &block_descriptor;
    v24 = _Block_copy(aBlock);

    v25 = a1;

    sub_26B6E98B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26B63F438();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE0, &qword_26B6F17A0);
    sub_26B63F490();
    sub_26B6EA0B4();
    MEMORY[0x26D67D890](0, v18, v10, v24);
    _Block_release(v24);

    (v32[1].isa)(v10, v3);
    (*(v14 + 8))(v18, v31);
  }

  else
  {
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v26 = sub_26B6E95C4();
    __swift_project_value_buffer(v26, qword_2810D4308);
    v32 = sub_26B6E95A4();
    v27 = sub_26B6E9E74();
    if (os_log_type_enabled(v32, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26B630000, v32, v27, "SportingEventRunningClockPbPSyncBuffer: unexpected canonical id", v28, 2u);
      MEMORY[0x26D67E950](v28, -1, -1);
    }

    v29 = v32;
  }
}

uint64_t sub_26B63E224(uint64_t a1, unint64_t a2, uint64_t a3)
{

  v6 = sub_26B6E6E34(2, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_26B6EA654();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v12 >> 1, v10))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 != (v12 >> 1) - v10)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    sub_26B67C52C(v6, v8, v10, v12);
    v14 = v13;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v14)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  v17 = *(a1 + 40);
  *(a1 + 40) = v14;

  v18 = *(a1 + 32);
  v20 = *(a3 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId);
  v21 = *(a3 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8);

  sub_26B6E95F4();
}

void *sub_26B63E394()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_26B63E3C4()
{
  sub_26B63E394();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26B63E430(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B63E470(uint64_t result, int a2, int a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_26B63E4F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_26B63E518(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_26B63E538(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t sub_26B63E584()
{
  OUTLINED_FUNCTION_3_0();
  if (v3 && (result = sub_26B6E93B4(), v1 + *(*(result - 8) + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_1_0();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_26B6E93B4();
    OUTLINED_FUNCTION_1_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_26B63E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_3_0();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_1_0();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_1_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_26B63E72C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26B63F508(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v21[0] = v2 + 32;
  v21[1] = v4;
  v5 = sub_26B6EA554();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v2 + 32);
      do
      {
        v13 = *(v2 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v15;
          if (*(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            v17 = -1;
          }

          else
          {
            v17 = *(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
          }

          if (*(v16 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            if (v17 >= -1)
            {
              break;
            }
          }

          else if (v17 >= *(v16 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp))
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    v8 = sub_26B692998(v4 >> 1);
    v20[0] = v9;
    v20[1] = v7;
    sub_26B63E87C(v20, v22, v21, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_26B6EA204();
}

void sub_26B63E87C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = MEMORY[0x277D84F90];
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5 + 1;
      if (v5 + 1 >= v4)
      {
        i = v5 + 1;
      }

      else
      {
        v8 = *(*a3 + 8 * v7);
        v9 = *(v8 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8);
        if (v9)
        {
          v10 = -1;
        }

        else
        {
          v10 = *(v8 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
        }

        v11 = *(*a3 + 8 * v5) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v11 + 8))
        {
          v12 = -1;
        }

        else
        {
          v12 = *v11;
        }

        for (i = v5 + 2; i < v4; ++i)
        {
          v14 = *(*a3 + 8 * i);
          ++v7;
          v15 = *(v14 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
          if (*(v14 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            v15 = -1;
          }

          if (v9)
          {
            if (v10 < v12 == v15 > -2)
            {
              i = v7;
              goto LABEL_21;
            }
          }

          else if (v10 < v12 == v15 >= *(v8 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp))
          {
            goto LABEL_21;
          }

          v9 = *(v14 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8);
          v8 = v14;
        }

        i = v4;
LABEL_21:
        if (v10 < v12)
        {
          if (i < v5)
          {
            goto LABEL_175;
          }

          if (v5 < i)
          {
            v16 = 8 * i - 8;
            v17 = 8 * v5;
            v18 = i;
            v19 = v5;
            do
            {
              if (v19 != --v18)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_180;
                }

                v21 = *(v20 + v17);
                *(v20 + v17) = *(v20 + v16);
                *(v20 + v16) = v21;
              }

              ++v19;
              v16 -= 8;
              v17 += 8;
            }

            while (v19 < v18);
            v4 = a3[1];
          }
        }
      }

      if (i < v4)
      {
        if (__OFSUB__(i, v5))
        {
          goto LABEL_174;
        }

        if (i - v5 < a4)
        {
          if (__OFADD__(v5, a4))
          {
            goto LABEL_176;
          }

          if (v5 + a4 < v4)
          {
            v4 = v5 + a4;
          }

          if (v4 < v5)
          {
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            return;
          }

          if (i != v4)
          {
            v22 = *a3;
            v23 = *a3 + 8 * i - 8;
            v24 = v5 - i;
            do
            {
              v25 = *(v22 + 8 * i);
              v26 = v24;
              v27 = v23;
              do
              {
                v28 = *v27;
                if (*(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
                {
                  v29 = -1;
                }

                else
                {
                  v29 = *(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
                }

                if (*(v28 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
                {
                  if (v29 > -2)
                  {
                    break;
                  }
                }

                else if (v29 >= *(v28 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp))
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_178;
                }

                *v27 = v25;
                v27[1] = v28;
                --v27;
                v81 = __CFADD__(v26++, 1);
              }

              while (!v81);
              ++i;
              v23 += 8;
              --v24;
            }

            while (i != v4);
            i = v4;
          }
        }
      }

      if (i < v5)
      {
        goto LABEL_173;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B63A97C(0, *(v6 + 16) + 1, 1, v6);
        v6 = v98;
      }

      v31 = *(v6 + 16);
      v30 = *(v6 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_26B63A97C(v30 > 1, v31 + 1, 1, v6);
        v6 = v99;
      }

      *(v6 + 16) = v32;
      v33 = v6 + 32;
      v34 = (v6 + 32 + 16 * v31);
      *v34 = v5;
      v34[1] = i;
      v102 = i;
      v35 = *a1;
      if (!*a1)
      {
        goto LABEL_181;
      }

      if (v31)
      {
        v103 = v6 + 32;
        while (1)
        {
          v36 = v32 - 1;
          v37 = (v33 + 16 * (v32 - 1));
          v38 = (v6 + 16 * v32);
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v39 = *(v6 + 32);
            v40 = *(v6 + 40);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_73:
            if (v42)
            {
              goto LABEL_164;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_167;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_170;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_171;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v32 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v60 = *v38;
          v61 = v38[1];
          v49 = __OFSUB__(v61, v60);
          v56 = v61 - v60;
          v57 = v49;
LABEL_87:
          if (v57)
          {
            goto LABEL_166;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_169;
          }

          if (v64 < v56)
          {
            goto LABEL_154;
          }

LABEL_94:
          if (v36 - 1 >= v32)
          {
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v68 = *a3;
          if (!*a3)
          {
            goto LABEL_179;
          }

          v69 = v6;
          v106 = (v33 + 16 * (v36 - 1));
          __dst = (v33 + 16 * v36);
          v70 = __dst[1];
          v71 = (v68 + 8 * *v106);
          v72 = 8 * *__dst;
          v73 = (v68 + v72);
          v74 = (v68 + 8 * v70);
          v107 = *v106;
          v75 = v72 - 8 * *v106;
          v76 = 8 * v70 - v72;
          if (v75 < v76)
          {
            if (v71 != v35 || v73 <= v35)
            {
              v78 = v36;
              memmove(v35, (v68 + 8 * *v106), v72 - 8 * *v106);
              v36 = v78;
            }

            v79 = &v35[v75];
            v80 = v35;
            v6 = v69;
            while (2)
            {
              v81 = v80 >= v79 || v73 >= v74;
              if (v81)
              {
                v89 = v71;
                goto LABEL_144;
              }

              v82 = *v73;
              v83 = *v73 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
              if (*(v83 + 8))
              {
                v84 = -1;
              }

              else
              {
                v84 = *v83;
              }

              v85 = *v80 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
              if (*(v85 + 8))
              {
                if (v84 > -2)
                {
                  goto LABEL_112;
                }

LABEL_116:
                v86 = v71 == v73;
                v73 += 8;
                if (!v86)
                {
                  goto LABEL_113;
                }
              }

              else
              {
                if (v84 < *v85)
                {
                  goto LABEL_116;
                }

LABEL_112:
                v82 = *v80;
                v86 = v71 == v80;
                v80 += 8;
                if (!v86)
                {
LABEL_113:
                  *v71 = v82;
                }
              }

              v71 += 8;
              continue;
            }
          }

          if (v73 != v35 || v74 <= v35)
          {
            v88 = v36;
            memmove(v35, v73, 8 * v70 - 8 * *__dst);
            v36 = v88;
          }

          v79 = &v35[v76];
          v6 = v69;
LABEL_125:
          v89 = v73;
          v73 -= 8;
          for (v74 -= 8; v79 > v35 && v71 < v89; v74 -= 8)
          {
            v91 = *(v79 - 1);
            v92 = *v73;
            if (*(v91 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
            {
              v93 = -1;
            }

            else
            {
              v93 = *(v91 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
            }

            if (*(v92 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
            {
              if (v93 <= -2)
              {
                goto LABEL_140;
              }
            }

            else if (v93 < *(v92 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp))
            {
LABEL_140:
              if (v74 + 8 != v89)
              {
                *v74 = v92;
              }

              goto LABEL_125;
            }

            if (v79 != v74 + 8)
            {
              *v74 = v91;
            }

            v79 -= 8;
          }

          v80 = v35;
LABEL_144:
          v94 = (v79 - v80) / 8;
          v95 = v89 != v80 || v89 >= &v80[8 * v94];
          v33 = v103;
          if (v95)
          {
            v96 = v36;
            memmove(v89, v80, 8 * v94);
            v36 = v96;
          }

          if (v70 < v107)
          {
            goto LABEL_159;
          }

          v97 = *(v6 + 16);
          if (v36 > v97)
          {
            goto LABEL_160;
          }

          *v106 = v107;
          v106[1] = v70;
          if (v36 >= v97)
          {
            goto LABEL_161;
          }

          v32 = v97 - 1;
          memmove(__dst, __dst + 2, 16 * (v97 - 1 - v36));
          *(v6 + 16) = v97 - 1;
          if (v97 <= 2)
          {
            goto LABEL_154;
          }
        }

        v43 = v33 + 16 * v32;
        v44 = *(v43 - 64);
        v45 = *(v43 - 56);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_162;
        }

        v48 = *(v43 - 48);
        v47 = *(v43 - 40);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_163;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_165;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_168;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_172;
          }

          if (v41 < v67)
          {
            v36 = v32 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_154:
      v4 = a3[1];
      v5 = v102;
      if (v102 >= v4)
      {
        v108 = v6;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_182;
  }

  sub_26B63EF60(&v108, *a1, a3);
}

uint64_t sub_26B63EF60(char **a1, char *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_2:
  for (*a1 = v4; ; v4 = *a1)
  {
    v6 = *(v4 + 2);
    if (v6 < 2)
    {
      return 1;
    }

    v39 = v6 - 2;
    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v8 = *&v4[16 * v6];
    v37 = *(v4 + 2);
    v38 = v6 - 1;
    v9 = *&v4[16 * v6 + 24];
    v10 = (v7 + 8 * v8);
    v11 = 8 * *&v4[16 * v6 + 16];
    v12 = (v7 + v11);
    v40 = v9;
    v13 = (v7 + 8 * v9);
    v14 = v8;
    v15 = v11 - 8 * v8;
    v16 = 8 * v9 - v11;
    if (v15 < v16)
    {
      if (v10 != a2 || v12 <= a2)
      {
        memmove(a2, (v7 + 8 * v8), v11 - 8 * v8);
      }

      v18 = &a2[v15];
      v19 = a2;
      while (2)
      {
        if (v19 >= v18 || v12 >= v13)
        {
          v27 = v10;
          goto LABEL_53;
        }

        v21 = *v12;
        v22 = *v12 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v22 + 8))
        {
          v23 = -1;
        }

        else
        {
          v23 = *v22;
        }

        v24 = *v19 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v24 + 8))
        {
          if (v23 > -2)
          {
            goto LABEL_21;
          }

LABEL_25:
          v25 = v10 == v12;
          v12 += 8;
          if (!v25)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v23 < *v24)
          {
            goto LABEL_25;
          }

LABEL_21:
          v21 = *v19;
          v25 = v10 == v19;
          v19 += 8;
          if (!v25)
          {
LABEL_22:
            *v10 = v21;
          }
        }

        v10 += 8;
        continue;
      }
    }

    if (v12 != a2 || v13 <= a2)
    {
      memmove(a2, (v7 + v11), 8 * v9 - v11);
    }

    v18 = &a2[v16];
LABEL_34:
    v27 = v12;
    v12 -= 8;
    for (v13 -= 8; v18 > a2 && v10 < v27; v13 -= 8)
    {
      v29 = *(v18 - 1);
      v30 = *v12;
      if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
      {
        v31 = -1;
      }

      else
      {
        v31 = *(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
      }

      if (*(v30 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
      {
        if (v31 <= -2)
        {
          goto LABEL_49;
        }
      }

      else if (v31 < *(v30 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp))
      {
LABEL_49:
        if (v13 + 8 != v27)
        {
          *v13 = v30;
        }

        goto LABEL_34;
      }

      if (v18 != v13 + 8)
      {
        *v13 = v29;
      }

      v18 -= 8;
    }

    v19 = a2;
LABEL_53:
    v32 = (v18 - v19) / 8;
    if (v27 != v19 || v27 >= &v19[8 * v32])
    {
      memmove(v27, v19, 8 * v32);
    }

    if (v40 < v14)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      result = sub_26B63F2BC(v4);
      v4 = result;
      goto LABEL_2;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26B63F2BC(v4);
    }

    if (v39 >= *(v4 + 2))
    {
      goto LABEL_66;
    }

    v34 = &v4[16 * v37];
    *v34 = v14;
    *(v34 + 1) = v40;
    *a1 = v4;
    result = sub_26B63F230(v38);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B63F230(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B63F2BC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_26B63F2D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409010, &unk_26B6EC470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_26B63F3D0()
{
  result = qword_2810CDBA8;
  if (!qword_2810CDBA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810CDBA8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26B63F438()
{
  result = qword_2810CD750;
  if (!qword_2810CD750)
  {
    sub_26B6E98A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CD750);
  }

  return result;
}

unint64_t sub_26B63F490()
{
  result = qword_2810CC2D0;
  if (!qword_2810CC2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409FE0, &qword_26B6F17A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2D0);
  }

  return result;
}

uint64_t sub_26B63F580()
{
  v0 = sub_26B6EA394();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26B63F5CC(char a1)
{
  if (!a1)
  {
    return 0x59535F4B434F4C43;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_26B63F650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B63F580();
  *a2 = result;
  return result;
}

uint64_t sub_26B63F680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B63F5CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SportingEventRunningClockFeature.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = 0xD000000000000012;
  v4 = 0x800000026B6FAAC0;
  if (*v0 != 1)
  {
    v3 = 0xD00000000000001CLL;
    v4 = 0x800000026B6FAAE0;
  }

  if (*v0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x59535F4B434F4C43;
  }

  if (*v0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000434ELL;
  }

  MEMORY[0x26D67D4D0](v5, v6);

  MEMORY[0x26D67D4D0](47, 0xE100000000000000);
  sub_26B6E9E14();
  return 0;
}

SportsKit::SportingEventRunningClockFeature_optional __swiftcall SportingEventRunningClockFeature.init(feature:value:)(Swift::String feature, Swift::String_optional value)
{
  object = value.value._object;
  countAndFlagsBits = value.value._countAndFlagsBits;
  v5 = v2;
  v6 = sub_26B63F580();
  if (v6 == 3)
  {

    v9 = 0;
    v10 = 0;
    v11 = 3;
  }

  else
  {
    v12 = v6;
    if (object)
    {
      v9 = sub_26B63F8D4(countAndFlagsBits, object);
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }

    v11 = v12;
    v10 = v8;
  }

  *v5 = v11;
  *(v5 + 8) = v9;
  *(v5 + 16) = v10;
  result.value.value.value = v7;
  *&result.value.feature = v9;
  result.value.value.is_nil = v8;
  return result;
}

uint64_t sub_26B63F8D4(uint64_t a1, uint64_t a2)
{
  sub_26B640530(a1, a2);

  return 0;
}

uint64_t sub_26B63F934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B63FA00(char a1)
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](a1 & 1);
  return sub_26B6EA744();
}

uint64_t sub_26B63FA48(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x65727574616566;
  }
}

uint64_t sub_26B63FA84()
{
  v1 = *v0;
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  return sub_26B6EA744();
}

uint64_t sub_26B63FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B63F934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B63FB18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B63F9F8();
  *a1 = result;
  return result;
}

uint64_t sub_26B63FB40(uint64_t a1)
{
  v2 = sub_26B63FD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B63FB7C(uint64_t a1)
{
  v2 = sub_26B63FD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportingEventRunningClockFeature.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804091B0, &qword_26B6EC480);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = *(v1 + 1);
  v16 = v1[16];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B63FD40();
  sub_26B6EA7C4();
  v19 = v12;
  v18 = 0;
  sub_26B63FD94();
  sub_26B6EA534();
  if (!v2)
  {
    v17 = 1;
    sub_26B6EA4C4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_26B63FD40()
{
  result = qword_2804091B8;
  if (!qword_2804091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091B8);
  }

  return result;
}

unint64_t sub_26B63FD94()
{
  result = qword_2804091C0;
  if (!qword_2804091C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091C0);
  }

  return result;
}

uint64_t SportingEventRunningClockFeature.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804091C8, &qword_26B6EC488);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B63FD40();
  sub_26B6EA784();
  if (!v2)
  {
    v21 = 0;
    sub_26B63FFA4();
    sub_26B6EA464();
    v14 = v22;
    v20 = 1;
    v16 = sub_26B6EA3F4();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26B63FFA4()
{
  result = qword_2804091D0;
  if (!qword_2804091D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091D0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SportingEventRunningClockFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[17])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SportingEventRunningClockFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventRunningClockFeature.Feature(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SportingEventRunningClockFeature.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SportingEventRunningClockFeature.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B640314()
{
  result = qword_2804091D8;
  if (!qword_2804091D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091D8);
  }

  return result;
}

unint64_t sub_26B64036C()
{
  result = qword_2804091E0;
  if (!qword_2804091E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091E0);
  }

  return result;
}

unint64_t sub_26B6403C4()
{
  result = qword_2804091E8;
  if (!qword_2804091E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091E8);
  }

  return result;
}

unint64_t sub_26B64041C()
{
  result = qword_2804091F0;
  if (!qword_2804091F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091F0);
  }

  return result;
}

unint64_t sub_26B640470()
{
  result = qword_2804091F8;
  if (!qword_2804091F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804091F8);
  }

  return result;
}

_BYTE *sub_26B6404C4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_26B640530(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_26B6EA124();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t ScoreboardSubscription.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

Swift::Void __swiftcall ScoreboardSubscription.insert(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_26B6406D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B640768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6406D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B640794(uint64_t a1)
{
  v2 = sub_26B640A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6407D0(uint64_t a1)
{
  v2 = sub_26B640A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoreboardSubscription.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ScoreboardSubscription.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ScoreboardSubscription.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409200, &qword_26B6EC760);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B640A04();
  sub_26B6EA7C4();
  swift_beginAccess();
  v14 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409208, &qword_26B6EC768);
  sub_26B640CBC(&qword_2810CDCE0, &qword_2810CE660);
  sub_26B6EA534();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_26B640A04()
{
  result = qword_2810CE280;
  if (!qword_2810CE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE280);
  }

  return result;
}

uint64_t ScoreboardSubscription.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ScoreboardSubscription.init(from:)(a1);
  return v2;
}

uint64_t ScoreboardSubscription.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409210, &qword_26B6EC770);
  v6 = OUTLINED_FUNCTION_4(v5);
  v18[0] = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v18 - v10;
  *(v1 + 16) = MEMORY[0x277D84F90];
  v12 = (v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B640A04();
  sub_26B6EA784();
  if (v2)
  {
  }

  else
  {
    v14 = v18[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409208, &qword_26B6EC768);
    sub_26B640CBC(&qword_2810CDCD8, &qword_2810CE658);
    sub_26B6EA464();
    (*(v14 + 8))(v11, v5);
    v15 = v18[5];
    swift_beginAccess();
    v16 = *v12;
    *v12 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26B640CBC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409208, &qword_26B6EC768);
    sub_26B640D44(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B640D44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportingEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B640D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScoreboardSubscription.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScoreboardSubscription.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B640EEC()
{
  result = qword_280409218;
  if (!qword_280409218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409218);
  }

  return result;
}

unint64_t sub_26B640F44()
{
  result = qword_2810CE270;
  if (!qword_2810CE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE270);
  }

  return result;
}

unint64_t sub_26B640F9C()
{
  result = qword_2810CE278;
  if (!qword_2810CE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE278);
  }

  return result;
}

uint64_t TemplateImageUrl.ImageFormat.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26B6EA394();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26B641068@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TemplateImageUrl.ImageFormat.init(rawValue:)(a1);
}

uint64_t static TemplateImageUrl.templateThumbUrl(host:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26B6E91A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409228, &qword_26B6EC928);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v25 - v17;
  sub_26B6E9194();
  if (!__swift_getEnumTagSinglePayload(v18, 1, v6))
  {
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_26B6EA134();

    strcpy(v25, "/image/thumb/");
    HIWORD(v25[1]) = -4864;
    MEMORY[0x26D67D4D0](a3, a4);
    MEMORY[0x26D67D4D0](0x7D687B787D777B2FLL, 0xEC0000007D667B2ELL);
    MEMORY[0x26D67CB40](v25[0], v25[1]);
  }

  if (!__swift_getEnumTagSinglePayload(v18, 1, v6))
  {
    (*(v7 + 16))(v10, v18, v6);
    sub_26B6E9174();
    (*(v7 + 8))(v10, v6);
    v19 = sub_26B6E93B4();
    if (__swift_getEnumTagSinglePayload(v14, 1, v19) != 1)
    {
      v22 = sub_26B6E92E4();
      v24 = v23;
      (*(*(v19 - 8) + 8))(v14, v19);
      v25[0] = v22;
      v25[1] = v24;
      sub_26B641414();
      v20 = sub_26B6EA054();

      goto LABEL_7;
    }

    sub_26B6413B4(v14, &qword_280409220, &qword_26B6EC920);
  }

  v20 = 0;
LABEL_7:
  sub_26B6413B4(v18, &qword_280409228, &qword_26B6EC928);
  return v20;
}

uint64_t sub_26B6413B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26B641414()
{
  result = qword_2810CDD08;
  if (!qword_2810CDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD08);
  }

  return result;
}

uint64_t static TemplateImageUrl.imageUrl(templateUrl:width:height:format:)()
{
  v29 = sub_26B6EA564();
  v30 = v0;
  v1 = sub_26B641414();
  v2 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_1_1(v1, v3, v4, v5, v6, v7, v8, v9, MEMORY[0x277D837D0], v1, v1, v1, v29, v30, 123);
  OUTLINED_FUNCTION_0_1();

  v10 = sub_26B6EA564();
  OUTLINED_FUNCTION_1_1(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v1, v1, v10, v11, 123);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_1_1(v18, v19, v20, v21, v22, v23, v24, v25, v2, v1, v1, v1, 6778480, 0xE300000000000000, 123);
  OUTLINED_FUNCTION_0_1();

  sub_26B6E9394();
}

unint64_t sub_26B6415CC()
{
  result = qword_280409230;
  if (!qword_280409230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409230);
  }

  return result;
}

_BYTE *sub_26B641630(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_1()
{

  return sub_26B6EA044();
}

BOOL sub_26B64172C()
{
  v0 = sub_26B6EA394();

  return v0 != 0;
}

BOOL sub_26B64179C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B64172C();
  *a2 = result;
  return result;
}

unint64_t sub_26B6417D0@<X0>(void *a1@<X8>)
{
  result = sub_26B641774();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

BOOL sub_26B641820@<W0>(_BYTE *a1@<X8>)
{
  result = sub_26B64172C();
  *a1 = result;
  return result;
}

uint64_t sub_26B641858(uint64_t a1)
{
  v2 = sub_26B641A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B641894(uint64_t a1)
{
  v2 = sub_26B641A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsActivityAutostartSuppressions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409238, &qword_26B6ECA10);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B641A5C();

  sub_26B6EA7C4();
  v14[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  sub_26B641C48(&qword_2810CC288);
  sub_26B6EA534();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_26B641A5C()
{
  result = qword_280409240;
  if (!qword_280409240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409240);
  }

  return result;
}

uint64_t SportsActivityAutostartSuppressions.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409250, &qword_26B6ECA20);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B641A5C();
  sub_26B6EA784();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
    sub_26B641C48(&qword_2810CDBC0);
    sub_26B6EA464();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B641C48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409248, &qword_26B6ECA18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsActivityAutostartSuppressions.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B641DA4()
{
  result = qword_280409258;
  if (!qword_280409258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409258);
  }

  return result;
}

unint64_t sub_26B641DFC()
{
  result = qword_280409260;
  if (!qword_280409260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409260);
  }

  return result;
}

unint64_t sub_26B641E54()
{
  result = qword_280409268;
  if (!qword_280409268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409268);
  }

  return result;
}

uint64_t DiscardOnError.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_26B6EA5C4();
  return 0;
}

uint64_t sub_26B642000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static DiscardOnError<A>.== infix(_:_:)();
}

uint64_t DiscardOnError<A>.hashValue.getter(uint64_t a1)
{
  sub_26B6EA714();
  DiscardOnError<A>.hash(into:)(v3, a1);
  return sub_26B6EA744();
}

uint64_t sub_26B64207C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B6EA714();
  DiscardOnError<A>.hash(into:)(v6, a2);
  return sub_26B6EA744();
}

uint64_t DiscardOnError<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_26B642140(a1, v7);
  (*(a3 + 8))(v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B642140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B64222C(uint64_t a1)
{
  v2 = sub_26B6423AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B642268(uint64_t a1)
{
  v2 = sub_26B6423AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NilCodable.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409270, &qword_26B6ECC20);
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6423AC();
  sub_26B6EA7C4();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_6_0();
  return v10(v9);
}

unint64_t sub_26B6423AC()
{
  result = qword_280409278;
  if (!qword_280409278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409278);
  }

  return result;
}

void Optional<A>.init(_partiallyFrom:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v19 = v4;
  v18 = sub_26B6E9FF4();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B6EA764();
  OUTLINED_FUNCTION_3_1(v20);
  if (sub_26B6EA614())
  {
    OUTLINED_FUNCTION_9_0();
    v16 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_3_1(v20);
    sub_26B6EA604();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
    v16 = v18;
    (*(v6 + 32))(v14, v12, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  (*(v6 + 32))(v19, v14, v16);
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_8_0();
}

double sub_26B642704@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26B6EA2D4();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  sub_26B6E17E8(a1, a2, v15 - v14);
  v17 = sub_26B6D05EC(a3, &v24);
  (*(v10 + 8))(v16, v8, v17);
  if (*(&v25 + 1))
  {
    sub_26B643E0C(&v24, v28);
    sub_26B643E1C(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A8, &unk_26B6ECF90);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_26B6367F0(&v24, a4);
      return result;
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_26B6413B4(&v24, &qword_280409280, &qword_26B6ECC28);
    if (qword_280408DB0 != -1)
    {
      swift_once();
    }

    v19 = sub_26B6E95C4();
    __swift_project_value_buffer(v19, qword_280421AF8);

    v20 = sub_26B6E95A4();
    v21 = sub_26B6E9E74();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v24 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_26B6D22D8(a1, a2, &v24);
      _os_log_impl(&dword_26B630000, v20, v21, "Value found for property %s is not of the same type. Returning nil.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x26D67E950](v23, -1, -1);
      MEMORY[0x26D67E950](v22, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_26B6413B4(&v24, &qword_2804092A0, &qword_26B6F2850);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_26B6429C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409280, &qword_26B6ECC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26B642A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  Optional<A>.init(_partiallyFrom:)();
}

uint64_t Bool.init(_partiallyFrom:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_1_2();
  if (sub_26B6EA614())
  {
    v3 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    OUTLINED_FUNCTION_1_2();
    v3 = sub_26B6EA5F4();
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3 & 1;
}

uint64_t sub_26B642BE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(_partiallyFrom:)(a1);
  *a2 = result & 1;
  return result;
}

void Array<A>.init(_partiallyFrom:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_0();
  v13[5] = sub_26B6E9904();
  v4 = v1[4];
  OUTLINED_FUNCTION_4_0(v1, v1[3]);
  v5 = sub_26B6EA774();
  v6 = OUTLINED_FUNCTION_2_1();
  sub_26B642704(v6, v7, v5, v8);

  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26B6EA754();
  OUTLINED_FUNCTION_4_0(v11, v12);
  sub_26B6EA584();
  if ((v10 & 1) == 0)
  {
    sub_26B6E9CF4();
    sub_26B6E9C74();
  }

  while (1)
  {
    OUTLINED_FUNCTION_4_0(v11, v12);
    if (sub_26B6EA5A4())
    {
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_26B6EA594();
    sub_26B6E9CF4();
    sub_26B6E9CC4();
  }

  sub_26B6413B4(v13, &qword_280409280, &qword_26B6ECC28);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_8_0();
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

unint64_t sub_26B642FA8()
{
  result = qword_280409288;
  if (!qword_280409288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409288);
  }

  return result;
}

void sub_26B642FFC(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  Array<A>.init(_partiallyFrom:)();
  *a3 = v6;
}

void Optional<A>._partiallyEncode(to:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_0_2();
  v32 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v21 = v20 - v19;
  v23 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_26B6EA7A4();
  v24 = v5[4];
  OUTLINED_FUNCTION_4_0(v5, v5[3]);
  v25 = sub_26B6EA7B4();
  v26 = OUTLINED_FUNCTION_2_1();
  sub_26B642704(v26, v27, v25, v28);

  (*(v15 + 16))(v21, v1, v3);
  if (__swift_getEnumTagSinglePayload(v21, 1, v6) == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    OUTLINED_FUNCTION_1_2();
    sub_26B6EA644();
  }

  else
  {
    (*(v32 + 32))(v13, v21, v6);
    __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    OUTLINED_FUNCTION_6_0();
    sub_26B6EA634();
    v29 = *(v32 + 8);
    v30 = OUTLINED_FUNCTION_6_0();
    v31(v30);
  }

  sub_26B6413B4(&v33, &qword_280409280, &qword_26B6ECC28);
  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_8_0();
}

uint64_t Bool._partiallyEncode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_2();
  sub_26B6EA7A4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B6EA624();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void Array<A>._partiallyEncode(to:)()
{
  OUTLINED_FUNCTION_10_0();
  v25[1] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v25[0] = v13;
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_26B6EA794();
  v16 = v6[4];
  OUTLINED_FUNCTION_4_0(v6, v6[3]);
  v17 = sub_26B6EA7B4();
  v18 = OUTLINED_FUNCTION_2_1();
  sub_26B642704(v18, v19, v17, v20);

  OUTLINED_FUNCTION_6_0();
  v21 = sub_26B6E9C44();
  v27 = v21;
  OUTLINED_FUNCTION_6_0();
  if (v21 == sub_26B6E9CD4())
  {
LABEL_2:
    sub_26B6413B4(&v28, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_8_0();
    return;
  }

  while (1)
  {
    OUTLINED_FUNCTION_6_0();
    v22 = sub_26B6E9CA4();
    sub_26B6E9C64();
    if ((v22 & 1) == 0)
    {
      break;
    }

    (*(v8 + 16))(v14, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v2);
LABEL_5:
    sub_26B6E9CE4();
    __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_26B6EA5B4();
    (*(v8 + 8))(v14, v2);
    OUTLINED_FUNCTION_6_0();
    v23 = sub_26B6E9CD4();
    v21 = v27;
    if (v27 == v23)
    {
      goto LABEL_2;
    }
  }

  v24 = sub_26B6EA164();
  if (v25[0] == 8)
  {
    v26 = v24;
    (*(v8 + 16))(v14, &v26, v2);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_26B64384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 16);
  Array<A>._partiallyEncode(to:)();
}

uint64_t sub_26B6438B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B643920(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26B643A5C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NilCodable(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B643D60()
{
  result = qword_280409290;
  if (!qword_280409290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409290);
  }

  return result;
}

unint64_t sub_26B643DB8()
{
  result = qword_280409298;
  if (!qword_280409298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409298);
  }

  return result;
}

_OWORD *sub_26B643E0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26B643E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return sub_26B6413B4(a1, v1, v2);
}

uint64_t sub_26B643F9C()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_linesRead);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409318, &qword_26B6ED018);
  sub_26B645B34();
  return sub_26B6E9674();
}

uint64_t sub_26B643FFC(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409328, &qword_26B6ED020);
  if (swift_dynamicCast())
  {
    sub_26B6367F0(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_26B6E9214();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_26B645BDC(v35, &qword_280409330, &qword_26B6ED028);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26B6EA1E4();
  }

  sub_26B64530C(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x26D67CE00](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v35[0]);
  v10 = sub_26B645428(sub_26B645C30);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_26B6E9434();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_26B6ADA7C(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_26B6E9B34();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_26B6E9B64();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_26B6EA1E4();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_26B6ADA7C(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_26B6E9B44();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_26B6E9454();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_26B6E9454();
    sub_26B645C4C(v34, v6);
    goto LABEL_58;
  }

  sub_26B645C4C(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_26B645A3C(*&v35[0], *(&v35[0] + 1));

  sub_26B645A94(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}