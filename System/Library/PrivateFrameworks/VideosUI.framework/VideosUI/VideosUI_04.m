uint64_t sub_1E32B83DC()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4202144();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_36_19();

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32B852C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32B85C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32B8690()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_144();
  v4 = *(v3 + 64);
  v5 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v6 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4202144();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_19_33();

  OUTLINED_FUNCTION_36_19();

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32B87D4()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();

  v6 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4202144();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v1 + v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_19_33();

  OUTLINED_FUNCTION_36_19();

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32B8994()
{
  type metadata accessor for ShowcaseOpacityModifier();
  sub_1E42013A4();
  sub_1E38D5A14();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E32B89F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32B8A84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32B8B14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32B8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_5();
  v6 = sub_1E41FF654();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1E32B8C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_106();
  result = sub_1E41FF654();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32B8CD0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32B8D0C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32B8D48()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32B8D80()
{
  sub_1E38DCCB0(*(v0 + 16), *(v0 + 24));

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32B8DBC()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32B8DF4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2D8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32B8E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAD0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 48) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1E32B8F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAD0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32B8FD4()
{
  v1 = *(type metadata accessor for ErrorTemplate() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  OUTLINED_FUNCTION_40_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200E34();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32B9138()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32B9170(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D458);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32B9454()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B948C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B94C4()
{
  v1 = (type metadata accessor for ViewModelLinkEntity(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  sub_1E41FDCA4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1E32B95BC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B95F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B962C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32B9660()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32B9694()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B96D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D660);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32B9734(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32B97C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32B9858()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B989C(uint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
        v11 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1E32B99C8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1E32B9B70()
{

  return swift_deallocObject();
}

uint64_t sub_1E32B9BB0()
{
  sub_1E4201F54();
  sub_1E4201F54();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_8();
  return swift_getWitnessTable();
}

uint64_t sub_1E32B9C74()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32B9CA8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32B9CE0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32B9D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1E32B9E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1E32B9F30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D988);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D998);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9A8);
  type metadata accessor for SeasonMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9C0);
  sub_1E4201134();
  OUTLINED_FUNCTION_4_61();
  sub_1E32752B0(v0, &qword_1ECF2D9C0);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_3_66();
  sub_1E39096D0(v1, v2);
  sub_1E3908BF0();
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_34_26();
  sub_1E32822E0();
  OUTLINED_FUNCTION_14_54();
  OUTLINED_FUNCTION_34_26();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9E0);
  OUTLINED_FUNCTION_2_63();
  sub_1E32752B0(v3, &qword_1ECF2D9E0);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_5_27();
  return OUTLINED_FUNCTION_34_26();
}

uint64_t sub_1E32BA164()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BA1BC()
{
  v1 = *(type metadata accessor for SearchRACMenuOption() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1E32BA2C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BA2F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32BA39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1E32BA3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E32BA460()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCD0);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCD8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC8);
  OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  sub_1E328FCF4(v0, &qword_1ECF291E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_30_5();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A64();
  sub_1E4201F54();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_90();
  sub_1E328FCF4(v1, &qword_1ECF2DCD8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_69();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32BA76C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1E32BA7F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32BA880(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD18);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32BA93C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BA9C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_79_9();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    v7 = OUTLINED_FUNCTION_60_4(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_1E32BAA58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    v6 = OUTLINED_FUNCTION_60_4(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1E32BAAE0(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_79_9();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == a2)
    {
      v8 = a3[16];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDA8);
      OUTLINED_FUNCTION_32_5();
      if (*(v9 + 84) == a2)
      {
        v8 = a3[17];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
        v8 = a3[18];
      }
    }

    v10 = OUTLINED_FUNCTION_60_4(v8);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void *sub_1E32BABFC(void *result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[16];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDA8);
      OUTLINED_FUNCTION_32_5();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[17];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
        v8 = a4[18];
      }
    }

    v10 = OUTLINED_FUNCTION_60_4(v8);

    return __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_1E32BAD20()
{
  v1 = (type metadata accessor for TransactionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E42021E4();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32BAEB4()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BAEF8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BAF40()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BAF74()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32BAFAC()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32BAFE8()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BB038()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BB088()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32BB160(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E42012F4();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32BB1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E42012F4();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32BB294()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v6 + 84) != v0)
    {
      return OUTLINED_FUNCTION_36_1(*(v1 + *(v2 + 24) + 8));
    }

    OUTLINED_FUNCTION_157_3();
    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1E32BB380()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    OUTLINED_FUNCTION_152_2();
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1E32BB46C()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_157_3();
    }

    else
    {
      if (v0 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_36_1(*(v1 + *(v2 + 24)));
      }

      v5 = type metadata accessor for SportsPlayByPlayItemViewData();
      v7 = *(v2 + 32);
    }

    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1E32BB574()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_152_2();
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + *(v2 + 24)) = (v0 - 1);
        return;
      }

      type metadata accessor for SportsPlayByPlayItemViewData();
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1E32BB67C()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_157_3();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v9 + 84) != v0)
      {
        return OUTLINED_FUNCTION_36_1(*(v1 + *(v2 + 28) + 8));
      }

      v5 = v8;
      v7 = *(v2 + 24);
    }

    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1E32BB7B4()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_152_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v6 + 84) != v3)
      {
        *(v1 + *(v2 + 28) + 8) = (v0 - 1);
        return;
      }
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1E32BB8FC()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v6 + 84) != v0)
    {
      return OUTLINED_FUNCTION_36_1(*(v1 + *(v2 + 28)));
    }

    OUTLINED_FUNCTION_157_3();
    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1E32BB9E4()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 28)) = (v0 - 1);
      return;
    }

    OUTLINED_FUNCTION_152_2();
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1E32BBEFC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BBF34()
{
  v1 = (type metadata accessor for ViewModelLinkEntity(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  sub_1E41FDCA4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1E32BC06C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BC0A0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BC128()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BC160()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BC1A8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BC1EC()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BC220()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BC37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4205BF4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
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
}

uint64_t sub_1E32BC43C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4205BF4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E32BC514()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BC564()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BC5C8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECC0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32BC630(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECC8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32BC690(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_7;
  }

  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_5();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[8];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[9] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_1E32BC7D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      sub_1E41FE5D4();
      OUTLINED_FUNCTION_32_5();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[8];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1E32BC920()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32BC968()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32BC9A0()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E32BC9EC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCA74()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCAD4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCB30()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_21_1();
  sub_1E3743478(v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32BCBE8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BCC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCC8C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCCCC()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BCD00()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCD38()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCDA8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F418);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32BCE18()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32BCE54()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_13_2();
  sub_1E374AD40(v1, &unk_1ECF2F500);
  OUTLINED_FUNCTION_2_78();
  sub_1E39849B0(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32BCF2C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BCF64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32BCFA4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32BCFDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32BD01C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BD050()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BD08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1E32BD134()
{
  OUTLINED_FUNCTION_127_1();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v1)
  {
    v7 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v5 + *(v0 + 20)) = (v3 - 1);
  }
}

uint64_t sub_1E32BD1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1E32BD284()
{
  OUTLINED_FUNCTION_127_1();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v1)
  {
    v7 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v5 + *(v0 + 20) + 8) = (v3 - 1);
  }
}

uint64_t sub_1E32BD328()
{
  OUTLINED_FUNCTION_61();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_36_1(*v0);
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    v8 = *(v5 + 48);
  }

  v9 = OUTLINED_FUNCTION_60_4(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1E32BD3F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v6 == v7)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) == v4)
    {
      v9 = *(v3 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v9 = *(v3 + 48);
    }

    v10 = OUTLINED_FUNCTION_60_4(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }
}

uint64_t sub_1E32BD4C4()
{
  OUTLINED_FUNCTION_61();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_36_1(*v0);
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    v8 = *(v5 + 28);
  }

  v9 = OUTLINED_FUNCTION_60_4(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1E32BD590(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v6 == v7)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) == v4)
    {
      v9 = *(v3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v9 = *(v3 + 28);
    }

    v10 = OUTLINED_FUNCTION_60_4(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }
}

uint64_t sub_1E32BD664()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BD75C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BD7DC()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BD810()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BD868()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32BD8AC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BD8E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32BD920()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32BD964()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32BD9A8()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BD9E0()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32BDA74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEA0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32BDADC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEA8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32BDB40()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BDBE4()
{
  v0 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF00);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_59_1();
  sub_1E4201F54();
  sub_1E4201F54();
  OUTLINED_FUNCTION_5_81();
  sub_1E374AD40(v1, &unk_1ECF2FF08);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_83();
  sub_1E374AD40(v2, &qword_1ECF2FF00);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_85();
  sub_1E374AD40(v3, &qword_1ECF2FEF8);
  OUTLINED_FUNCTION_74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E32BDE00()
{
  sub_1E3264CE0();

  if (*(v0 + 184))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32BDE64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF60);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32BDEC8()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E42039C4();
  OUTLINED_FUNCTION_82();
  sub_1E42013A4();
  sub_1E42013A4();
  sub_1E4201F54();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_44();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32BE06C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BE0E4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32BE144()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32BE324(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32BE3B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32BE444()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30278);
  OUTLINED_FUNCTION_1_112();
  sub_1E32752B0(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32BE580()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30388);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30390);
  sub_1E39E15AC();
  sub_1E39E1610();
  swift_getOpaqueTypeConformance2();
  sub_1E39E1664();
  OUTLINED_FUNCTION_2_86();
  sub_1E39E16B8();
  OUTLINED_FUNCTION_2_86();
  sub_1E39E170C();
  OUTLINED_FUNCTION_2_86();
  sub_1E39E1760();
  OUTLINED_FUNCTION_2_86();
  sub_1E39E17B4();
  return OUTLINED_FUNCTION_2_86();
}

uint64_t sub_1E32BE718(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF303F0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32BE784()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32BE7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BE7FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BE86C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32BE8A4()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E32BE8E4()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BE918()
{
  OUTLINED_FUNCTION_82_2();
  v1 = type metadata accessor for NavigationBarItems(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1E3264CE0();

  v3 = v2 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30540);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305B8) + 32);
    sub_1E42014F4();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  if (*(v2 + v1[7] + 8))
  {
  }

  v7 = v1[9];
  sub_1E4202314();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v2 + v7);
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32BEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + 32));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305D0);
  OUTLINED_FUNCTION_32_5();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 24);
  }

  else
  {
    v9 = sub_1E4202314();
    v10 = *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_1E32BEB7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305D0);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = sub_1E4202314();
      v11 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1E32BEC4C()
{
  sub_1E42013A4();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E32BECC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_5();
  sub_1E4202034();
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(v3 + *(a3 + 28)));
  }

  v8 = v6;
  v9 = v3 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1E32BED64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1E4202034();
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 24);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1E32BEE14()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BEF3C()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32BEF8C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BEFC0()
{
  v1 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32BF0C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BF0F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BF144()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BF194()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1E38DCCB0(*(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32BF1FC()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BF230()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BF280()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BF2D8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32BF314()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32BF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_5();
  v6 = sub_1E41FFCB4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1E32BF3F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E41FFCB4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32BF4D8()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32BF514()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32BF6E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BF760(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32BF7F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32BFA30()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32BFA68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32BFAA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32BFAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1E32BFBA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32BFC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + 24));
  }

  v7 = sub_1E42012F4();
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1E32BFCD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E42012F4();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32BFDDC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32BFE2C()
{

  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32BFEC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306D8);
  sub_1E3A232DC();
  sub_1E375320C();
  OUTLINED_FUNCTION_0_116();
  swift_getOpaqueTypeConformance2();
  sub_1E32822E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32BFF80()
{
  sub_1E42013A4();
  sub_1E3A23FDC();
  return swift_getWitnessTable();
}

uint64_t sub_1E32BFFF4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C0078()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C0244()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32C02E4()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_125_3();
  v2 = v1 & 0xFFFFFFFFFFFFFFF8;

  v3 = OUTLINED_FUNCTION_221();
  v4(v3);
  if (*(v0 + v2))
  {
  }

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32C03B0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_125_3();
  v2 = ((((v1 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v3 = OUTLINED_FUNCTION_221();
  v4(v3);

  if (*(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1E32C04A0()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C04EC()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_229();

  v1 = OUTLINED_FUNCTION_46_23();
  v2(v1);

  OUTLINED_FUNCTION_191_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C05AC()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_241();
  v4(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1E32C0640()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C0674()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();

  v1 = OUTLINED_FUNCTION_46_23();
  v2(v1);
  OUTLINED_FUNCTION_191_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C0724()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();

  v1 = OUTLINED_FUNCTION_46_23();
  v2(v1);
  OUTLINED_FUNCTION_191_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C07DC()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C0810()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C0848()
{
  OUTLINED_FUNCTION_194();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v1);
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  v7 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_117_4(v7))
  {
    OUTLINED_FUNCTION_34_34();
    v8 = OUTLINED_FUNCTION_187_0();
    v9(v8);
  }

  OUTLINED_FUNCTION_195_0();
  v11 = (((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v12 = (v6 + v4 + v11) & ~v4;
  v13 = (((v12 + v6) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v14 = *(v3 + 8);
  v14(v0 + v11, v17);
  v14(v0 + v12, v17);

  OUTLINED_FUNCTION_192();

  return swift_deallocObject();
}

uint64_t sub_1E32C0A58()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);

  v5 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_183(v5))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v6 + 8))(v1 + v4, v0);
  }

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32C0B58()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);

  v5 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_183(v5))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v6 + 8))(v1 + v4, v0);
  }

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32C0C50()
{
  OUTLINED_FUNCTION_82_2();
  v1 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32C0CFC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C0D30()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C0D7C()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C0DBC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C0DF4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C0E34()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_194();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v13);
  v15 = *(v14 + 64);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v17 = *(v16 + 80);
  v19 = *(v18 + 64);

  v20 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_117_4(v20))
  {
    OUTLINED_FUNCTION_34_34();
    v21 = OUTLINED_FUNCTION_187_0();
    v22(v21);
  }

  OUTLINED_FUNCTION_59_10();
  v23 = OUTLINED_FUNCTION_309();
  v17(v23);
  v24 = OUTLINED_FUNCTION_187_0();
  v17(v24);

  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_192();

  return swift_deallocObject();
}

uint64_t sub_1E32C1018()
{
  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C1074()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C10A8()
{

  OUTLINED_FUNCTION_325();

  return swift_deallocObject();
}

uint64_t sub_1E32C10E4()
{
  OUTLINED_FUNCTION_325();

  return swift_deallocObject();
}

uint64_t sub_1E32C1124()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();

  v1 = OUTLINED_FUNCTION_46_23();
  v2(v1);
  OUTLINED_FUNCTION_191_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C11D4()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C1234()
{

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C126C()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E32C12B8()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  v3 = v2;
  v4 = *(v2 + 80);
  if (*(v1 + 16))
  {
  }

  (*(v3 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32C1370()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_125_3();
  v2 = v1 & 0xFFFFFFFFFFFFFFF8;
  v3 = ((v1 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = OUTLINED_FUNCTION_221();
  v5(v4);

  if (*(v0 + v3))
  {
  }

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32C143C()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  if (*(v1 + 16))
  {
  }

  v7 = (v4 + 40) & ~v4;

  (*(v3 + 8))(v1 + v7, v0);

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32C1510()
{
  OUTLINED_FUNCTION_335();
  v12 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  OUTLINED_FUNCTION_232();
  v7 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_69_11();

  (*(v5 + 8))(v1 + v6, v12);

  (*(v9 + 8))(v1 + v0, v7);
  if (*(v1 + v2))
  {
  }

  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_15_36();

  return swift_deallocObject();
}

uint64_t sub_1E32C1714()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C1748()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C1780()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C17B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C1814()
{
  sub_1E42013A4();
  sub_1E3A54410();
  return swift_getWitnessTable();
}

uint64_t sub_1E32C1904()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C193C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C197C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C19B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C19F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C1A2C()
{
  sub_1E42013A4();
  sub_1E3A61574();
  return swift_getWitnessTable();
}

uint64_t sub_1E32C1A90()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FE624();
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

    return (v8 + 1);
  }
}

uint64_t sub_1E32C1B7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E41FE624();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32C1C78()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C1CB0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C1CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32C1DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32C1E78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C1EC0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32C1F2C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C1FAC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C2008()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C2048()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C20EC()
{

  sub_1E3264CE0();

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32C2184()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C21E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C2240()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C2278()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C2510()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C2598()
{
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32C25C8()
{

  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32C2600()
{

  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32C2630()
{

  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32C2794()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C27CC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C2814()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C288C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C28C0()
{

  OUTLINED_FUNCTION_29_7();

  return swift_deallocObject();
}

uint64_t sub_1E32C28F4()
{
  if (*(v0 + 88) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C2934()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C296C()
{
  v1 = type metadata accessor for CastRoomBanner();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1E32C2B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32C2C28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BC0);
  sub_1E3A98AF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C2C90()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C2CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31D48);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v0, &qword_1ECF31D48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C2DE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E41FE5D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32C2E68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E41FE5D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32C2EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C2F48()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C2F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32008);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1E32C303C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32008);
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_1E32C30F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31FE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31FE0);
  v0 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_1E42011E4();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_55_0();
  sub_1E328FCF4(v1, v2);
  OUTLINED_FUNCTION_35_33();
  sub_1E3AB4478(v3, v4);
  OUTLINED_FUNCTION_38_26();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C3224()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C32F0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C3398()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321E8);
  sub_1E3AB6CD8();
  sub_1E3AB6D2C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C3468()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C34BC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C34F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3564(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32C35F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32C3684()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v1, v2);
  OUTLINED_FUNCTION_9_79();
  sub_1E3ABCEA4(v3, v4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C373C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C3778()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C37AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C37EC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C3844()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3898(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324F0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32C38F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324F0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32C3960()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3998()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C39D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3A0C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C3A6C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E32C3AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32C3C9C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3D18()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C3D4C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3DC8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3E10()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3E58()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C3E8C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3EDC()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C3F14()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C3FB4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C3FEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C4044()
{
  v1 = sub_1E41FEC34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32C4110()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C4148(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32C41DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32C426C()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C42A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C42F4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C432C()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C43C8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C43FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C443C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C4470()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C44CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_33(a1 + *(a3 + 20));
  }

  v7 = OUTLINED_FUNCTION_66_17();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_1E32C4570()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v2 + 84) == v1)
  {
    v3 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_77_1(*(v0 + 20));
  }
}

uint64_t sub_1E32C4604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) != v3)
    {
      return OUTLINED_FUNCTION_36_33(v4 + *(a3 + 24));
    }

    v7 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_1E32C46F0()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) != v3)
    {
      OUTLINED_FUNCTION_77_1(*(v2 + 24));
      return;
    }

    v7 = OUTLINED_FUNCTION_109_1();
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1E32C47DC()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  v1 = OUTLINED_FUNCTION_156_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1E32C4828()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  v0 = OUTLINED_FUNCTION_68_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E32C4870(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
LABEL_8:

    return __swift_getEnumTagSinglePayload(v7, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_32_5();
  if (*(v10 + 84) == v3)
  {
    v8 = v9;
    v11 = a3[5];
LABEL_7:
    v7 = v4 + v11;
    goto LABEL_8;
  }

  sub_1E41FE1B4();
  OUTLINED_FUNCTION_32_5();
  if (*(v13 + 84) == v3)
  {
    v8 = v12;
    v11 = a3[6];
    goto LABEL_7;
  }

  v15 = *(v4 + a3[7]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

void sub_1E32C49B8()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_1E41FE1B4();
      OUTLINED_FUNCTION_32_5();
      if (*(v12 + 84) != v3)
      {
        *(v1 + v2[7]) = v0;
        return;
      }

      v6 = v11;
      v10 = v2[6];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1E32C4AEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33040);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33050);
  sub_1E3B169F0();
  sub_1E3B16C44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C4B80()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_46_28();
  OUTLINED_FUNCTION_21_1();
  sub_1E3B16EA4(v1);
  OUTLINED_FUNCTION_17_71();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C4BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) != v3)
    {
      return OUTLINED_FUNCTION_36_33(v4 + *(a3 + 36));
    }

    v7 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_1E32C4CE0()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) != v3)
    {
      OUTLINED_FUNCTION_77_1(*(v2 + 36));
      return;
    }

    v7 = OUTLINED_FUNCTION_109_1();
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1E32C4DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_66_17();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E32C4E78()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_1E32C4F38()
{
  v1 = *(type metadata accessor for SportsPlayGroupCell(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201CF4();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C508C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33140);
  sub_1E3B17CE0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C5134(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1E32C5218(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32C533C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334B0);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32C53A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E32C5414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E32C54D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32C5594()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_3_120();
  sub_1E32752B0(v1, &qword_1ECF335D8);
  sub_1E3B2002C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C562C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335C8);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32C5690()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C56EC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C5724()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C5760(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33650);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32C57C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33658);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32C582C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C5860()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C5898()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E32C58E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C592C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
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

uint64_t sub_1E32C59E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
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

uint64_t sub_1E32C5B10(uint64_t *a1, uint64_t a2)
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
    sub_1E4204874();
    v5 = OUTLINED_FUNCTION_109_1();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_1E32C5B94(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1E4204874();
    v4 = OUTLINED_FUNCTION_109_1();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1E32C5C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = a1;
  }

  else
  {
    sub_1E4204874();
    v6 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_getEnumTagSinglePayload(v6, a2, v5);
}

uint64_t sub_1E32C5CB4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    sub_1E4204874();
    v8 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_1E32C5D94()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C5DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32C5E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32C5F18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C5F58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C5FA8()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C5FDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C602C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C607C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8) - 8) + 84) == a2)
  {
    v5 = *(a3 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v5 = *(a3 + 40);
  }

  v6 = OUTLINED_FUNCTION_60_4(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1E32C614C()
{
  OUTLINED_FUNCTION_55_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
      v8 = *(v5 + 40);
    }

    v9 = OUTLINED_FUNCTION_60_4(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1E32C6220(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  sub_1E42012F4();
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32C6294()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1E42012F4();
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32C6494()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C64C8()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C64FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C65A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C65D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C6624()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C6690()
{
  v1 = type metadata accessor for SportsClockView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  sub_1E3827608(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8), *(v3 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32C682C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 32)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1E32C6924()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 32)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1E32C6A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1E32C6AC0()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1E32C6B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E32C6C24()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_1E32C6CC0()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C6D04()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C6D38()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32C6D74()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C6DB0()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C6DF4()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C6E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E32C6EB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C6F08()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C6F4C(uint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
        v11 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1E32C7078(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
        v11 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1E32C71A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33D98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33D90);
  v0 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_13_2();
  sub_1E32752B0(v1, &qword_1ECF33D88);
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C7288(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E20);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32C72F0()
{
  v1 = type metadata accessor for LibraryLockup();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  v4 = sub_1E4200B44();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v4 - 8) + 8))(v2 + v5, v4);
  }

  else
  {
  }

  v6 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32C751C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C7550()
{

  OUTLINED_FUNCTION_44_15();

  return swift_deallocObject();
}

uint64_t sub_1E32C75A8()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C75EC()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1E32C7694()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C76D8()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C770C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C7740()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E32C7794()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C77D0()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32C7814()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C7848()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C78B8()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C78F4()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32C7930()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E32C7974()
{

  OUTLINED_FUNCTION_44_15();

  return swift_deallocObject();
}

uint64_t sub_1E32C79D0()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32C7A6C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E32C7AA4()
{
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1E32C7AFC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32C7C50()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C7C98()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C7CCC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C7D04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32C7DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32C7EA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C7F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return OUTLINED_FUNCTION_18_62(v9);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E32C8048()
{
  OUTLINED_FUNCTION_40();
  sub_1E42012F4();
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_1E32C80D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return OUTLINED_FUNCTION_18_62(v9);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E32C818C()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_68_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_1E32C822C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34038);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34008);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v0, &qword_1ECF34038);
  OUTLINED_FUNCTION_4_130();
  sub_1E32752B0(v1, &qword_1ECF34008);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C82FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34050);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v0, &qword_1ECF34050);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C83C4()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32C83F4()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E32C843C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34110);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32C849C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAD0);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1E32C8560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAD0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1E32C8614()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34110);
  sub_1E3B77BE0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C8680()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C86CC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C8700()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C8734()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C87AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C87F0()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C8824()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C8858()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C88C0()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C88F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C89E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1E41FE5D4();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1E32C8A7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1E41FE5D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32C8B24()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C8BA8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C8BE4()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32C8C20()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C8C60()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C8CB0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C8CF0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32C8F84()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32C8FE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32C9074(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32C9100()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34458);
  sub_1E3BB35F4();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C91C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32C91FC()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C9240()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32C92B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32C939C()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32C93E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C95BC()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32C95F4()
{
  OUTLINED_FUNCTION_27_48();
  if (v3)
  {
    return OUTLINED_FUNCTION_36_1(*v1);
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
      v6 = v2[12];
    }
  }

  v8 = OUTLINED_FUNCTION_60_4(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1E32C9704()
{
  OUTLINED_FUNCTION_55_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      OUTLINED_FUNCTION_32_5();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
        v8 = v5[12];
      }
    }

    v10 = OUTLINED_FUNCTION_20_7(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1E32C981C()
{
  OUTLINED_FUNCTION_27_48();
  if (v2)
  {
    return OUTLINED_FUNCTION_36_1(*v0);
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v4 = OUTLINED_FUNCTION_60_4(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1E32C9894()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = OUTLINED_FUNCTION_20_7(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1E32C990C()
{
  OUTLINED_FUNCTION_27_48();
  if (v2)
  {
    return OUTLINED_FUNCTION_36_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  v4 = OUTLINED_FUNCTION_60_4(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1E32C9984()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    v5 = OUTLINED_FUNCTION_20_7(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1E32C99FC()
{
  OUTLINED_FUNCTION_27_48();
  if (v2)
  {
    return OUTLINED_FUNCTION_36_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v4 = OUTLINED_FUNCTION_60_4(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1E32C9A74()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = OUTLINED_FUNCTION_20_7(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1E32C9AEC(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_66_2();
    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_28_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = OUTLINED_FUNCTION_60_4(*(v2 + 24));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_1E32C9B70(void *result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = OUTLINED_FUNCTION_20_7(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_1E32C9D10()
{

  return swift_deallocObject();
}

uint64_t sub_1E32C9D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1E32C9D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1E32C9DF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF349E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3E8);
  OUTLINED_FUNCTION_17_5();
  sub_1E32752B0(v0, &qword_1ECF349E8);
  OUTLINED_FUNCTION_0_168();
  sub_1E32752B0(v1, &qword_1ECF2D3E8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32C9F7C(uint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
        v11 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1E32CA0A8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
        v11 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1E32CA1D8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CA20C()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32CA250()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CA294()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CA2DC()
{
  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t sub_1E32CA318()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CA354()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CA388()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CA3BC()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 56))
  {
  }

  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t sub_1E32CA424()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32CA468()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CA49C()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32CA4D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CA53C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32CA834()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CA86C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32CA8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32CA938(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32CAA08(uint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E88);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1E32CAB34(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E88);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1E32CAC6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F68);
  sub_1E3BF8368();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CAD04()
{
  OUTLINED_FUNCTION_61();
  if (v0 == v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  v4 = v1;
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0) - 8) + 84) == v0)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = *(v4 + 36);
  }

  v6 = OUTLINED_FUNCTION_60_4(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1E32CADD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0) - 8) + 84) == v4)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v8 = *(v7 + 36);
    }

    v9 = OUTLINED_FUNCTION_60_4(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_1E32CAEAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35080);
  sub_1E3BFC0AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CAFF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0);
  sub_1E42013A4();
  sub_1E3C0008C();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E32CB118()
{
  OUTLINED_FUNCTION_41_41();
  sub_1E4206374();
  swift_getAssociatedTypeWitness();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_42_45();
  sub_1E42013A4();
  OUTLINED_FUNCTION_37_42();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_14_55();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  sub_1E32752B0(v0, &qword_1ECF28998);
  OUTLINED_FUNCTION_32_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(WitnessTable, MEMORY[0x1E697E5D8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  sub_1E32752B0(v2, &qword_1ECF2C5D8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_60();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_41_41();
  type metadata accessor for SelectionHighlightPreferenceKey();
  OUTLINED_FUNCTION_2_141();
  swift_getWitnessTable();
  sub_1E42021F4();
  sub_1E42013A4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_45_39();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_8_102();
  swift_getWitnessTable();
  sub_1E4203B54();
  OUTLINED_FUNCTION_45_39();
  OUTLINED_FUNCTION_5_136();
  sub_1E3C057F8(v3, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_140();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4200CA4();
  OUTLINED_FUNCTION_19_78();
  swift_getWitnessTable();
  sub_1E3C04158();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35228);
  OUTLINED_FUNCTION_17_84();
  sub_1E32752B0(v5, &qword_1ECF35228);
  sub_1E4202604();
  sub_1E42013A4();
  OUTLINED_FUNCTION_45_39();
  OUTLINED_FUNCTION_20_67();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E32CB60C()
{
  v19 = *(v0 + 32);
  v1 = type metadata accessor for HorizontalPicker();
  OUTLINED_FUNCTION_29_55();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = v4 + *(v1 + 52);

  OUTLINED_FUNCTION_40_45(v7, v8, v9, v10, v11, v12, v13, v14, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1E4203AE4();
  OUTLINED_FUNCTION_60_20();
  (*(v16 + 8))(v6 + v17, AssociatedTypeWitness);

  if (*(v4 + *(v1 + 64)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CB7E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32CB864()
{
  v22 = *(v0 + 32);
  v23 = *(v0 + 16);
  v1 = type metadata accessor for HorizontalPicker();
  OUTLINED_FUNCTION_29_55();
  v24 = *(v3 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v9 + 8))(v0 + v4);
  }

  else
  {
  }

  v10 = v8 + *(v1 + 52);

  OUTLINED_FUNCTION_40_45(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1E4203AE4();
  (*(*(AssociatedTypeWitness - 8) + 8))(v10 + *(v20 + 32), AssociatedTypeWitness);

  if (*(v8 + *(v1 + 64)))
  {
  }

  (*(v6 + 8))(v0 + ((v4 + v24 + v7) & ~v7), v23);
  return swift_deallocObject();
}

uint64_t sub_1E32CBAB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CBB00()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CBB34()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CBB74()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CBBDC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CBC40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35318);
  v0 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35320);
  OUTLINED_FUNCTION_1_11();
  sub_1E374AD40(v1, &qword_1ECF35320);
  OUTLINED_FUNCTION_7_18();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_105();
  sub_1E374AD40(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CBDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E88);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1E32CBED0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E88);
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1E32CBFD4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CC00C()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

unint64_t sub_1E32CC078@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GroupActivityEndReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E32CC0CC()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32CC110()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CC16C()
{
  v1 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32CC22C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CC27C()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32CC2C4()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CC2FC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32CC3B8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CC758()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

void sub_1E32CC7B0(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1E32CC804()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E32CC854()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CC89C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35910);
  OUTLINED_FUNCTION_3_120();
  sub_1E32752B0(v0, &qword_1ECF35910);
  sub_1E32822E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CC938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35940);
  sub_1E42013A4();
  OUTLINED_FUNCTION_1_180();
  sub_1E32752B0(v0, &qword_1ECF35940);
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E32CC9EC()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CCA24()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CCA80()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CCABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32CCB48()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CCB7C()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CCBB4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32CCBEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E41FE624();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32CCC74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E41FE624();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32CCD1C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32CCDB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32CCE3C()
{
  v1 = type metadata accessor for HorizontalContainerRelativeModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 48))
  {
  }

  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E42012F4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CCF74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D00);
  sub_1E3C624EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CCFD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CD13C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32CD16C()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CD284()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CD2CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32CD304()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CD33C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32CD3D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32CD45C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D50);
  OUTLINED_FUNCTION_30_50();
  OUTLINED_FUNCTION_82();
  sub_1E3C74E64(v0, v1, v2, v3);
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CD50C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CD570()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CD5E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CD658()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32CD690()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CDC74()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CDCA8()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32CDD0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CDD44()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CDD78()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CDDAC()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32CDE04()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32CDE58()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CDED4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CDF1C()
{
  v1 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32CE024(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362E8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32CE138()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CE190()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CE1D0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E32CE21C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CE298()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

id sub_1E32CE2D0()
{
  v1 = [v0 contextMenuInteraction];

  return v1;
}

uint64_t sub_1E32CE308()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32CE338()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CE370()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32CE3A0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CE3DC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CE434()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32CE46C()
{
  OUTLINED_FUNCTION_37_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32CE4E8()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_37_1();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32CE600()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CE640()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CE698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E32CE700()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF365F8);
  sub_1E3CA6B1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CE870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDA8);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1E32CE974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDA8);
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1E32CEA78()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CEBE0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CEC18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36848);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36858);
  sub_1E3CB4F54();
  OUTLINED_FUNCTION_6_135();
  swift_getOpaqueTypeConformance2();
  sub_1E3CB533C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CED04()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CED54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36958);
  sub_1E4201F64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36950);
  sub_1E3CB9E60();
  OUTLINED_FUNCTION_1_190();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_208();
  sub_1E3CBA2F4(v0, v1);
  OUTLINED_FUNCTION_5_146();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CEE18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369B8);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32CEE7C()
{
  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32CEECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
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

uint64_t sub_1E32CEF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
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

uint64_t sub_1E32CF07C()
{
  type metadata accessor for SportsBannerLogoView();
  OUTLINED_FUNCTION_144();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CF1D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36BA0);
  OUTLINED_FUNCTION_4_164();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_10();
  sub_1E4200A94();
  sub_1E42013A4();
  OUTLINED_FUNCTION_1_191();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_30_54();
  OUTLINED_FUNCTION_13_10();
  sub_1E4200AC4();
  sub_1E4202694();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_137();
  swift_getOpaqueTypeMetadata2();
  sub_1E4200AC4();
  OUTLINED_FUNCTION_168();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_13_10();
  sub_1E4201F54();
  OUTLINED_FUNCTION_12_22();
  sub_1E4201F54();
  OUTLINED_FUNCTION_13_10();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_16_103();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A64();
  sub_1E42013A4();
  sub_1E42013A4();
  sub_1E42013A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E32CF55C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32CF5B4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for EqualHeightLazyHStack() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);

  return swift_deallocObject();
}

uint64_t sub_1E32CF734(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32CF7C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32CF85C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CF890()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CF8D8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32CF90C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CF960()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32CF9BC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CF9F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32CFA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32CFAE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32CFB20()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32CFCA4()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32CFCE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32008);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32CFDC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32008);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32CFEA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36EC0);
  sub_1E3CDD7A8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32CFF08()
{
  type metadata accessor for LibTVShowEpisodeListView(0);
  OUTLINED_FUNCTION_144();
  v4 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  v5 = v4 + *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  OUTLINED_FUNCTION_40_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    if (!OUTLINED_FUNCTION_81_1(v6))
    {

      v7 = *(v2 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v8 + 8))(v5 + v7);
    }
  }

  else
  {
  }

  v9 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v10 + 8))(v4 + v9);
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_56();
  OUTLINED_FUNCTION_65_19();

  return swift_deallocObject();
}

uint64_t sub_1E32D00C4()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D00F8()
{
  type metadata accessor for LibTVShowEpisodeListView(0);
  OUTLINED_FUNCTION_144();
  v4 = (*(v3 + 80) + 107) & ~*(v3 + 80);

  v5 = v1 + v4 + *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  OUTLINED_FUNCTION_40_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    if (!OUTLINED_FUNCTION_81_1(v6))
    {

      v7 = *(v2 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v8 + 8))(v5 + v7);
    }
  }

  else
  {
  }

  v9 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v10 + 8))(v1 + v4 + v9);
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_56();
  OUTLINED_FUNCTION_65_19();

  return swift_deallocObject();
}

uint64_t sub_1E32D0360()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D0398()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D03CC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D0414()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D04A8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E32D0508()
{
  v1 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D05DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32D0618()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D064C()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D06B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_46();
  }

  sub_1E41FDCA4();
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32D072C()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1E41FDCA4();
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32D079C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_46();
  }

  if (*(*(sub_1E41FDC74() - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
    v5 = *(a3 + 24);
  }

  v6 = OUTLINED_FUNCTION_60_4(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1E32D0860()
{
  OUTLINED_FUNCTION_55_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_1E41FDC74() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_60_4(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1E32D0978()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D09B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D0A74()
{
  OUTLINED_FUNCTION_61();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(v4 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32D0AF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = OUTLINED_FUNCTION_60_4(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1E32D0B78()
{
  OUTLINED_FUNCTION_61();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32D0BF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = OUTLINED_FUNCTION_60_4(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1E32D0C78()
{
  v1 = type metadata accessor for EpisodeLockup(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D0DC4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D0E40()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D0E9C()
{

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32D0EE8()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D0F1C()
{

  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t sub_1E32D0F68()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32D0FA4()
{

  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t sub_1E32D0FF0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D1030()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D107C()
{
  sub_1E3D03670();
  sub_1E3798224(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E32D10F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32D11D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32D12B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37648);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37638);
  sub_1E3D04D00();
  OUTLINED_FUNCTION_15_10();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D137C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D13B4()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D13F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D1450()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D1494()
{
  _Block_release(*(v0 + 32));
  OUTLINED_FUNCTION_27_44();

  return swift_deallocObject();
}

uint64_t sub_1E32D14D4()
{
  _Block_release(*(v0 + 24));
  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32D1510()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_27_44();

  return swift_deallocObject();
}

uint64_t sub_1E32D1558()
{
  v1 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D176C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return static LanguageAwareString.alwaysGenerateAttributedString;
}

uint64_t sub_1E32D17AC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return static LanguageAwareString.keepStatisticsOnLanguageComponents;
}

uint64_t sub_1E32D1960()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E32D1A90()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D1AC4()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 79) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E32D1B98()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D2024()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D2070()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D20A4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D20DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D2114()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D2148()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32D2184()
{
  v1 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D223C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32D227C()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32D22C0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D2344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E32D23AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37E90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32160);
  OUTLINED_FUNCTION_1_33();
  sub_1E32752B0(v0, &qword_1ECF37E90);
  sub_1E32822E0();
  OUTLINED_FUNCTION_6_1();
  sub_1E32752B0(v1, &qword_1ECF32160);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D24CC()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D2508()
{
  if (*(v0 + 96) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D254C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D2584()
{
  OUTLINED_FUNCTION_27_48();
  if (v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    v5 = *(v1 + 40);
  }

  v6 = OUTLINED_FUNCTION_60_4(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1E32D2644()
{
  OUTLINED_FUNCTION_55_2();
  if (v2)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
      v6 = *(v3 + 40);
    }

    v7 = OUTLINED_FUNCTION_20_7(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1E32D2734()
{
  OUTLINED_FUNCTION_27_48();
  if (v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = *(v1 + 36);
  }

  v6 = OUTLINED_FUNCTION_60_4(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1E32D27F4()
{
  OUTLINED_FUNCTION_55_2();
  if (v2)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v6 = *(v3 + 36);
    }

    v7 = OUTLINED_FUNCTION_20_7(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1E32D28E8()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  v3 = OUTLINED_FUNCTION_60_4(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1E32D295C()
{
  OUTLINED_FUNCTION_55_2();
  if (v1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
    v3 = OUTLINED_FUNCTION_20_7(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1E32D29D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F10);
  sub_1E3D67AC8();
  OUTLINED_FUNCTION_10_6();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D2C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1E4205B44();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1E32D2C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1E4205B44();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E32D3184()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D31B8()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D3220()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38238);
  sub_1E42013A4();
  sub_1E328FCF4(&qword_1EE2887F8, &qword_1ECF38238);
  return swift_getWitnessTable();
}

uint64_t sub_1E32D32CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38240);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32D3334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38240);
  sub_1E3D7C834();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D33C8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D3440()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D34C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32D3584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 24)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1E32D367C()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1E32D3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1E32D3818()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1E32D3A00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32D3AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1E32D3B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1E32D3C34()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D3C7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D3CB8()
{
  v1 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 66) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D3D8C()
{
  type metadata accessor for FrameModifier();
  sub_1E42013A4();
  sub_1E3D9543C();
  return swift_getWitnessTable();
}

uint64_t sub_1E32D3DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4201274();
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1E32D3EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4201274();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1E32D3F58()
{
  v1 = (type metadata accessor for FrameModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1E4201274();
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v2);
  if (*(v2 + v1[7]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D4044()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D4080()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D4148(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32D41DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32D4268()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387B8);
  sub_1E3D9EBB8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D42F8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D432C()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D4360()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D4394()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D43F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E41FE624();
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_5();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1E32D44D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1E41FE624();
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1E32D45C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();

  v6 = sub_1E41FE414();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D46F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32D473C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32D4778()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D47AC()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D4890()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D48C4()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D48F8()
{

  if (*(v0 + 48))
  {
  }

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32D498C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38AD0);
  sub_1E3DC2304();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D4A48()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D4A8C()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B98);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  return v0;
}

uint64_t sub_1E32D4AEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + 16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32D4B70()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32D4BEC(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32D4C70()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32D4CEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38BA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB28);
  sub_1E3DC500C();
  sub_1E3DC5070();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D4D84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32D4DBC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D4E04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32D4E7C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D4F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C10);
  sub_1E3DCA53C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D4F70(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C48);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32D4FD8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D500C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D5044()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D5080()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D50B4()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D50FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D513C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E70);
  sub_1E3DD5B7C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D51B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32D5298(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32D53B8()
{
  v2 = *(v1 + 16);
  type metadata accessor for UnifiedOverlay.ContentProgressAndAttributes();
  OUTLINED_FUNCTION_60_5();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  (*(*(v2 - 8) + 8))(v4 + *(v0 + 64), v2);

  return swift_deallocObject();
}

uint64_t sub_1E32D54F8()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_1_11();
  sub_1E328FCF4(v1, &qword_1ECF38ED0);
  return OUTLINED_FUNCTION_53_2();
}

uint64_t sub_1E32D5574()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608);
  OUTLINED_FUNCTION_37_60();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_15_120();
  swift_getWitnessTable();
  sub_1E42039C4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_193();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F00);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_30_5();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  sub_1E4203A44();
  OUTLINED_FUNCTION_24_84();
  return OUTLINED_FUNCTION_53_2();
}

uint64_t sub_1E32D56E0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D5714()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D575C()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32D5804()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D5844()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D58C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF338A0);
  OUTLINED_FUNCTION_8_151();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_5_176();
  swift_getWitnessTable();
  sub_1E4203A44();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  sub_1E42039C4();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_81();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32D59FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D5A34()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D5A68()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D5AC8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D5AFC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D5B38()
{
  v1 = type metadata accessor for BalancedWidthModifier(0);
  OUTLINED_FUNCTION_70_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_40_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_10();
    (*(v4 + 8))(v0 + v3);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  sub_1E4206C04();
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E32D5C80()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == v0)
    {
      v5 = v6;
      v8 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
      OUTLINED_FUNCTION_32_5();
      if (*(v10 + 84) != v0)
      {
        return OUTLINED_FUNCTION_36_1(*(v1 + v2[7] + 8));
      }

      v5 = v9;
      v8 = v2[6];
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}