void sub_1E32D5DBC()
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
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

uint64_t sub_1E32D5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 32)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1E32D5FA0()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 32)) = (v0 - 1);
  }
}

uint64_t sub_1E32D603C()
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
    if (v0 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_36_1(*(v1 + *(v2 + 20) + 8));
    }

    v5 = sub_1E4206C04();
    v4 = v1 + *(v2 + 24);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1E32D6100()
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
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 - 1);
      return;
    }

    sub_1E4206C04();
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1E32D61C4()
{
  OUTLINED_FUNCTION_74_2();
  sub_1E42012F4();
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) != v0)
    {
      return OUTLINED_FUNCTION_36_1(*(v1 + *(v2 + 28)));
    }

    v5 = v6;
    v4 = v1 + *(v2 + 20);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1E32D62A4()
{
  OUTLINED_FUNCTION_40();
  sub_1E42012F4();
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 28)) = (v0 - 1);
      return;
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1E32D643C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D6474()
{

  if (*(v0 + 112) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D64CC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D6500()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D6534()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D65A0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D65D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4205BF4();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32D6660(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4205BF4();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32D66E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1E32D6780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32D6810()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32D6848()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D6888()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D68C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D6908(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1E32D699C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32D6A30()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32D6A68()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D6A9C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E32D6AE4()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D6B34()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D6B6C()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D6BA8()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D6C0C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D6C40()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D6C74()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D6CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E32D6D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32D6E48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF396E8);
  type metadata accessor for CollectionViewModel();
  sub_1E3E27864();
  OUTLINED_FUNCTION_10_135();
  sub_1E3E293B0(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D6EEC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32D6F54()
{
  type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_144();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_118();
  if (!v6)
  {
  }

  sub_1E3264CE0();
  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_124();

  return swift_deallocObject();
}

uint64_t sub_1E32D70D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32D716C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32D71FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D7230()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D7268()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32D72AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399A8);
  sub_1E3E331B8();
  OUTLINED_FUNCTION_2_196();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D733C()
{

  OUTLINED_FUNCTION_11_142();

  return swift_deallocObject();
}

uint64_t sub_1E32D7390()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32D7488()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D75E8()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D7620()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D7658()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D76C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
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

uint64_t sub_1E32D777C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32D7840(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32D78D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32D7960()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39E20);
  sub_1E3E45780();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D7A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E59D78();
  *a1 = result;
  return result;
}

uint64_t sub_1E32D7AB0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D7AE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32D7B24()
{
  v1 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32D7BE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32D7C30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32D7C78()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D7CE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32D7D4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32D7DF4()
{
  v1 = type metadata accessor for HorizontalMultiGroupCollectionView();
  OUTLINED_FUNCTION_70_4();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1E3264CE0();
  v4 = *(v3 + 104);
  if (v4 != 1)
  {
  }

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D7F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E32D8004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32D80BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A418);
  type metadata accessor for CollectionViewModel();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A410);
  OUTLINED_FUNCTION_18_107();
  sub_1E32752B0(v0, &qword_1ECF3A410);
  OUTLINED_FUNCTION_13_145();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_137();
  sub_1E3E6722C(v1, v2);
  return OUTLINED_FUNCTION_53_2();
}

uint64_t sub_1E32D81AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D8220()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for LazyHStickySection() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v5 - 8) + 8))(v0 + v3 + v2[15]);
  return swift_deallocObject();
}

uint64_t sub_1E32D8350()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3A4F8);
  sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  sub_1E3E6722C(v0, v1);
  OUTLINED_FUNCTION_5_189();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_205();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28960);
  sub_1E42013A4();
  swift_getTupleTypeMetadata2();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  sub_1E4203A44();
  OUTLINED_FUNCTION_0_81();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_53_2();
}

uint64_t sub_1E32D84A4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D84DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D853C()
{
  type metadata accessor for StackTemplateView();
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  OUTLINED_FUNCTION_27_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v3 + v1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_124();
  if (v5)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32D86A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
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

uint64_t sub_1E32D8738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32D87D8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D883C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D8884()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D88BC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D8934()
{
  sub_1E42013A4();
  sub_1E3E787E0();
  return OUTLINED_FUNCTION_1_30();
}

uint64_t sub_1E32D89A4()
{

  OUTLINED_FUNCTION_71_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D8A08()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D8A90()
{
  OUTLINED_FUNCTION_27_48();
  if (v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0) - 8);
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

void sub_1E32D8B54()
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
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0) - 8);
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

uint64_t sub_1E32D8C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9D0);
  sub_1E3E81428();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D8CAC()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v3 = OUTLINED_FUNCTION_60_4(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1E32D8D20()
{
  OUTLINED_FUNCTION_55_2();
  if (v1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v3 = OUTLINED_FUNCTION_20_7(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1E32D8D9C()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v3 = OUTLINED_FUNCTION_60_4(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1E32D8E10()
{
  OUTLINED_FUNCTION_55_2();
  if (v1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v3 = OUTLINED_FUNCTION_20_7(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1E32D9064()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34008);
  sub_1E3E8F498();
  OUTLINED_FUNCTION_4_130();
  sub_1E3A1558C(v0, &qword_1ECF34008);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D9118(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1E32D91AC(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32D9238()
{
  v1 = type metadata accessor for ToastContent(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 8))
  {
  }

  v3 = *(v1 + 24);
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

uint64_t sub_1E32D9378(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFC0);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32D93DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D943C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFF0);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32D94A0()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B038);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  return v0;
}

uint64_t sub_1E32D9500()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D956C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D95A4()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32D95D4()
{
  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32D9778()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B270);
  type metadata accessor for NavigationBarItems(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B278);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v0, &qword_1ECF3B278);
  sub_1E32822E0();
  OUTLINED_FUNCTION_2_207();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_244();
  sub_1E3EA22A0(v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32D9880()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32D98E0(unint64_t *a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAD0);
      v7 = a3[8];
    }
  }

  v9 = OUTLINED_FUNCTION_60_4(v7);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1E32D99FC()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      OUTLINED_FUNCTION_32_5();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAD0);
        v8 = v5[8];
      }
    }

    v10 = OUTLINED_FUNCTION_60_4(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_1E32D9B14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B2F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D998);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B308);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B310);
  sub_1E3EAA568();
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_52_6();
  sub_1E32822E0();
  OUTLINED_FUNCTION_2_207();
  OUTLINED_FUNCTION_52_6();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9E0);
  OUTLINED_FUNCTION_2_63();
  sub_1E32752B0(v0, &qword_1ECF2D9E0);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_5_27();
  return OUTLINED_FUNCTION_52_6();
}

uint64_t sub_1E32D9C5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + 32));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    v7 = *(a3 + 44);
  }

  v8 = OUTLINED_FUNCTION_60_4(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1E32D9D2C()
{
  OUTLINED_FUNCTION_55_2();
  if (v4)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v8 = *(v5 + 44);
    }

    v9 = OUTLINED_FUNCTION_60_4(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1E32D9DF8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37758);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32D9E60()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D9F54()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32D9F88()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32D9FC4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32D9FFC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DA060()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DA0D8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B850);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32DA13C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DA170()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DA1A4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DA1D8()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32DA224()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DA270()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DA2AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DA2E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32DA3C8(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v10 = *(a4 + 36);
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

uint64_t sub_1E32DA56C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for RichHeaderButtonView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_1E32DA67C()
{
  sub_1E42039A4();
  OUTLINED_FUNCTION_6_185();

  return swift_getWitnessTable();
}

uint64_t sub_1E32DA7A8()
{
  _Block_release(*(v0 + 24));
  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DA7E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DA838()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DA870()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DA8A8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DA900()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE00);
  OUTLINED_FUNCTION_16_90();
  sub_1E32752B0(v1, &qword_1ECF3BE10);
  sub_1E3EF56F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32DA9C0()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DA9F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DAA38()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DAA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DAAB0()
{
  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32DAAEC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DAB4C()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DABBC()
{
  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32DAC08()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32DAC74()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DACAC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DACF4()
{
  v1 = type metadata accessor for SportsCanonicalBannerView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_40_3();
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

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_18();

  sub_1E3264CE0();

  OUTLINED_FUNCTION_84_18();
  OUTLINED_FUNCTION_84_18();

  OUTLINED_FUNCTION_84_18();

  return swift_deallocObject();
}

uint64_t sub_1E32DAFA4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  OUTLINED_FUNCTION_32_5();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1E32DB0F8(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
      OUTLINED_FUNCTION_32_5();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1E32DB258()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DB298()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DB2F0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DB334()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DB380(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6B0);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32DB3E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E32DB47C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32DB50C()
{
  type metadata accessor for GridView();
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 360) & ~*(v2 + 80);

  sub_1E3264CE0();
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v1 + v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_110();
  OUTLINED_FUNCTION_20_110();
  OUTLINED_FUNCTION_15_140();
  if (!v7)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DB6AC()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DB700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
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

uint64_t sub_1E32DB7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32DB874()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  sub_1E32752B0(v1, &qword_1ECF3C780);
  OUTLINED_FUNCTION_11_159();
  sub_1E3F21EF0(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32DB930()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32DB968()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DB9B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32DB9FC()
{
  sub_1E42013A4();
  sub_1E3F231D4();
  return swift_getWitnessTable();
}

uint64_t sub_1E32DBA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840);
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_1_255();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1E32DBAF0()
{
  v1 = sub_1E4201414();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32DBBA8()
{
  sub_1E4201414();
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_1_255();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1E32DBC88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8D0);
  sub_1E42014E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
  OUTLINED_FUNCTION_3_120();
  sub_1E32752B0(v0, &qword_1ECF3C8C0);
  sub_1E3C0E09C();
  OUTLINED_FUNCTION_3_219();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_20();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_201();
  sub_1E3F275CC(v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32DBDDC()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) == v0)
    {
      v5 = v7;
      v9 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
      OUTLINED_FUNCTION_32_5();
      if (*(v11 + 84) == v0)
      {
        v5 = v10;
        v9 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
        OUTLINED_FUNCTION_32_5();
        if (*(v13 + 84) != v0)
        {
          OUTLINED_FUNCTION_68_31();
          return (v15 + 1);
        }

        v5 = v12;
        v9 = v2[7];
      }
    }

    v6 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

void sub_1E32DBF6C()
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
      OUTLINED_FUNCTION_32_5();
      if (*(v6 + 84) != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
        OUTLINED_FUNCTION_32_5();
        if (*(v7 + 84) != v3)
        {
          *(v1 + *(v2 + 32) + 8) = (v0 - 1);
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1E32DC0FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_68_31();
    return (v7 + 1);
  }
}

void sub_1E32DC1A8()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_1E32DC244()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_68_31();
      return (v6 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
    v5 = OUTLINED_FUNCTION_137_9();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

void sub_1E32DC314()
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
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
    OUTLINED_FUNCTION_137_9();
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1E32DC3E4()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_1();
  sub_1E3A1558C(v1, v2);
  return OUTLINED_FUNCTION_53_44();
}

uint64_t sub_1E32DC450()
{
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_68_31();
      return OUTLINED_FUNCTION_133_10(v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
    v5 = OUTLINED_FUNCTION_137_9();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

void sub_1E32DC520()
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
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20)) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
    OUTLINED_FUNCTION_137_9();
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1E32DC5E8()
{
  v1 = type metadata accessor for SportsBannerScoreboardView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
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

  v5 = v1[5];
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

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E42021E4();
    if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v10 + 8))(v3 + v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DC8C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DC924()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CE08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CE00);
  sub_1E3F35FB4();
  OUTLINED_FUNCTION_7_22();
  swift_getOpaqueTypeConformance2();
  sub_1E3C0E09C();
  return OUTLINED_FUNCTION_53_2();
}

uint64_t sub_1E32DCB04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32DCB3C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DCB80()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DCBB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32DCC4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32008);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32DCCE0()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DCD14()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DCD98()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32DCDD0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DCE30(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E32DCEE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32DCF8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1E32DD02C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32DD0B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32DD0F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32DD1B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32DD1FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DD238()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DD26C()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DD2A0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DD318()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DD36C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DD3D0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DD404()
{
  sub_1E3F64B08(*(v0 + 16), *(v0 + 24));

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32DD444()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DD484()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DD500()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DD5EC()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DD660()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DD694()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DD74C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32DD7B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32DD814(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32DD87C()
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

uint64_t sub_1E32DD974()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DD9AC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DD9E0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DDA4C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DDAAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32DDB3C()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DDB8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DDBFC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_32_10();
  v2 = *(type metadata accessor for TrackItemVisibilityModifier() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  OUTLINED_FUNCTION_37_1();
  (*(v4 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32DDCC8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DDD14()
{
  OUTLINED_FUNCTION_20_118();
  type metadata accessor for TrackItemVisibilityModifier();
  OUTLINED_FUNCTION_15_151();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_52_3();
  sub_1E42020F4();
  type metadata accessor for CGRect(255);
  OUTLINED_FUNCTION_20_118();
  type metadata accessor for MonitoredItemsPreferenceKey();
  OUTLINED_FUNCTION_4_230();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E42021F4();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_35();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E32DDDEC()
{
  OUTLINED_FUNCTION_25_95();
  type metadata accessor for ScrollViewItemsVisibilityModifier();
  OUTLINED_FUNCTION_13_168();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_118();
  sub_1E42020F4();
  OUTLINED_FUNCTION_25_95();
  type metadata accessor for MonitoredItemsPreferenceKey();
  OUTLINED_FUNCTION_25_95();
  type metadata accessor for VisibleItemsPreferenceKey();
  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  sub_1E42024F4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E4201034();
  sub_1E4206374();
  OUTLINED_FUNCTION_7_207();
  swift_getWitnessTable();
  sub_1E4202454();
  sub_1E42013A4();
  OUTLINED_FUNCTION_4_230();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_200();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_216();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E42024E4();
  OUTLINED_FUNCTION_20_118();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_153();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E32DE094(uint64_t *a1, uint64_t a2, int *a3)
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
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1E32DE1C0(void *result, uint64_t a2, int a3, int *a4)
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
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1E32DE310()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_2_232();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32DE3C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D580);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32DE424()
{
  v1 = type metadata accessor for ImageViewWithOverlay();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  if (*(v2 + *(v1 + 40)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DE59C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32DE630(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32DE750()
{
  if (*(v0 + 96) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DE790()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DE800()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DE834()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DE8AC()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DE934()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E32DE96C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E32DEA30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32DEAE8()
{
  v1 = type metadata accessor for AccountSettings();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1E4200E34();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_1E389BF58();

  return swift_deallocObject();
}

uint64_t sub_1E32DEC1C()
{
  v1 = (type metadata accessor for TextBadge() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[12];
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

uint64_t sub_1E32DED50(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32DEDE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32DEE74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D888);
  sub_1E3FCBFD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32DEF04()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DEF38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32DEF88()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32DF010()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DF060()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32DF090()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DF0C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DF100()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DF134()
{
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32DF164()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DF1BC()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DF1F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DF228(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_106();
  v5 = type metadata accessor for SportsPlayIndex.IndexType(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1E32DF26C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_106();
  v5 = type metadata accessor for SportsPlayIndex.IndexType(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1E32DF2B4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DF358()
{
  sub_1E4201F54();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32DF3A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF10);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32DF408(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1E32DF49C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32DF564(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32DF648(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32DF72C()
{
  type metadata accessor for CanonicalInfoCard();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DF8D4()
{
  type metadata accessor for CanonicalInfoCard();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DFA90(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1E32DFB24(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32DFBB4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32DFBEC()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DFC20()
{

  return swift_deallocObject();
}

uint64_t sub_1E32DFC60()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DFC94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32DFD60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32DFD98()
{
  if (*(v0 + 96) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32DFDD8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DFE0C()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32DFE50()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32DFE94()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32DFED0()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32DFF10()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32DFF94(uint64_t a1, uint64_t a2, uint64_t a3)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1E32E009C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1E32E01A0()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_3_245();
  sub_1E401CDF0(v1, &qword_1ECF3E6D0, &unk_1E42E5DC0, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E0224()
{
  v1 = type metadata accessor for LegacySportsCanonicalBannerView(0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E42021E4();
    if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E04B0()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E04E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E0524()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E0558()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E0598(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E918);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32E0600(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E918);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E0664()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E9B0);
  sub_1E40298CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E06C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E0744(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAB8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32E07AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EA38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EA30);
  sub_1E402DA30();
  sub_1E383FBF4();
  OUTLINED_FUNCTION_3_219();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E085C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4205BF4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32E08E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4205BF4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32E098C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB80);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32E09F4()
{
  OUTLINED_FUNCTION_15_1();

  return swift_deallocObject();
}

uint64_t sub_1E32E0A6C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E0B38()
{

  sub_1E389BF58();

  return swift_deallocObject();
}

uint64_t sub_1E32E0BE0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 40));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32E0C60()
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
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32E0CDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32E0D5C()
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
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32E0E14()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E32E0E84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37E98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C938);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36848);
  OUTLINED_FUNCTION_4_252();
  sub_1E32752B0(v0, &qword_1ECF3C938);
  swift_getWitnessTable();
  sub_1E3CB533C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_254();
  sub_1E4044FBC(v1, v2);
  swift_getWitnessTable();
  sub_1E40374F4();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_2();
  sub_1E32752B0(v3, &qword_1ECF37E98);
  swift_getOpaqueTypeConformance2();
  sub_1E4201584();
  OUTLINED_FUNCTION_6_216();
  return swift_getWitnessTable();
}

uint64_t sub_1E32E1110()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E114C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E119C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E11E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E1234(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32E1318(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32E13F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ED78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ED70);
  sub_1E4049F58();
  OUTLINED_FUNCTION_4_253();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E1488(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDE0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32E14F0()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E15EC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E1624()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

__n128 sub_1E32E165C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1E32E1670()
{

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E16AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E16E4()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E1718()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E1770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4202A94();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1E42012F4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1E32E180C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4202A94();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1E42012F4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1E32E18B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E18E8()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1E37B5ACC(*(v0 + 40), *(v0 + 48), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E193C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E1970()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E19E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEC0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32E1A54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  sub_1E41FFCB4();
  v5 = OUTLINED_FUNCTION_60_4(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1E32E1AC8()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1E41FFCB4();
    v5 = OUTLINED_FUNCTION_60_4(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1E32E1B38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8) - 8) + 84) == a2)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    v5 = *(a3 + 28);
  }

  v6 = OUTLINED_FUNCTION_60_4(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1E32E1C08()
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
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_60_4(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1E32E1CE4()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for Scoreboard(0);
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E32E1E80()
{
  if (OUTLINED_FUNCTION_20_123())
  {
    OUTLINED_FUNCTION_6_223();
  }

  else
  {
    OUTLINED_FUNCTION_7_228();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_1E32E1ED4()
{
  if (OUTLINED_FUNCTION_20_123())
  {
    OUTLINED_FUNCTION_6_223();
  }

  else
  {
    OUTLINED_FUNCTION_7_228();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E1F24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F100);
  type metadata accessor for AlertContext(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F110);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v0, &qword_1ECF3F108);
  sub_1E406D2F4();
  OUTLINED_FUNCTION_5_236();
  OUTLINED_FUNCTION_28_89();
  sub_1E32822E0();
  sub_1E406D358();
  sub_1E406D480();
  OUTLINED_FUNCTION_9_182();
  OUTLINED_FUNCTION_28_89();
  OUTLINED_FUNCTION_14_173();
  OUTLINED_FUNCTION_11_184();
  OUTLINED_FUNCTION_28_89();
  return OUTLINED_FUNCTION_28_89();
}

uint64_t sub_1E32E20EC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E2124()
{
  sub_1E42013A4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F120);
  sub_1E42013A4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_25();
  sub_1E32752B0(v0, &qword_1ECF3F120);
  return swift_getWitnessTable();
}

uint64_t sub_1E32E2290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E41FE1B4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = sub_1E4205BF4();
      v10 = *(a3 + 72);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1E32E235C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E41FE1B4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = sub_1E4205BF4();
      v10 = *(a4 + 72);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32E244C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;

  return a2;
}

uint64_t sub_1E32E248C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E24C4()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E24F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E2530()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E2564()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E2598()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_8_0(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = sub_1E41FE874();
  if (!OUTLINED_FUNCTION_183(v5))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v6 + 8))(v1 + v4, v0);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E267C()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E26C4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_8_0(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = sub_1E41FE874();
  if (!OUTLINED_FUNCTION_183(v5))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v6 + 8))(v1 + v4, v0);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E27B4()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E27E8()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32E28A8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E28E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E2918()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E2950()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E29EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_9_187();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  sub_1E42013A4();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E42039C4();
  sub_1E4201F54();
  sub_1E42037A4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_81();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E2BC0(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1E32E2C54(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32E2D54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E2DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32E2E2C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E2E80()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E2F1C()
{
  OUTLINED_FUNCTION_4_261();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E4200AC4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D708);
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_257();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_296();
  sub_1E32752B0(v0, &qword_1ECF2D708);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E7A8);
  sub_1E42013A4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_267();
  sub_1E32752B0(v1, &qword_1ECF2E7A8);
  return swift_getWitnessTable();
}

uint64_t sub_1E32E3204()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E349C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E34D0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E3548()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E35AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E35E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E3694(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F920);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E36F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1E32E377C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32E3808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsPlayPeriod();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1E32E38AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsPlayPeriod();
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

uint64_t sub_1E32E3958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F920);
  sub_1E40C04E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E39BC()
{
  v1 = (type metadata accessor for SportsPeriodSelectionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1E38D5FEC(*(v2 + 16), *(v2 + 24));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_10();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E3BCC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA10);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32E3C30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA00);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32E3C94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA00);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E3CF4()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E3D28()
{

  if (*(v0 + 40))
  {
  }

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E32E3D74()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E3DA8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E3DDC()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32E3E60()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E3EC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E3F78()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E3FAC()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E4014()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E32E4068()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E32E40B0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E40F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E4130()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E416C()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E41A0()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E41DC()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32E4238()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E42A0()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_24_113();
  sub_1E40DEC90(v1, &unk_1ECF3FAC0, &unk_1E42EB9D0, v2);
  sub_1E40DFC98();
  return OUTLINED_FUNCTION_53_2();
}

uint64_t sub_1E32E4364(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB58);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32E4404()
{
  type metadata accessor for ContentFittingNavigationStack();
  sub_1E42010B4();
  sub_1E42013D4();
  sub_1E4201F54();
  OUTLINED_FUNCTION_6_231();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_302();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32E44AC()
{
  v1 = (type metadata accessor for ContentFittingNavigationStack() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));
  v3 = OUTLINED_FUNCTION_11_6();
  v4(v3);
  v5 = v2 + v1[11];
  sub_1E40E0E34(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 33));

  return swift_deallocObject();
}

uint64_t sub_1E32E45B8()
{
  sub_1E42010B4();
  sub_1E42013A4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E42013D4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_1_302();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E32E4750(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1E32E47E4(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32E4A68()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E4AF8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1E32E4BDC(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E32E4CC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E4D18()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E4D60()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E4D94()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E4DD0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E4E08()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E4F00()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E5018()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E5050()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E5084()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E50B8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E50F0()
{
  if (*(v0 + 136) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E5130()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E5690()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E56C8()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E56FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E5730()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E5798()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E57D4()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32E5818()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E5850()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E5884()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E32E58C4()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E5900()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E5950()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E32E59F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF408F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF408E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
  sub_1E4139AE0();
  OUTLINED_FUNCTION_14_2();
  sub_1E32752B0(v0, &qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2_273();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E5AD0()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E5B08()
{
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E5B68(uint64_t *a1, int a2)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v4 = OUTLINED_FUNCTION_9_204();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void *sub_1E32E5BF4(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v4 = OUTLINED_FUNCTION_9_204();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1E32E5CF4(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_66_2();
    return (v2 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v4 = OUTLINED_FUNCTION_9_204();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_1E32E5D78(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v4 = OUTLINED_FUNCTION_9_204();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1E32E5E8C()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E5EC4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E5F18()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E5F4C()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E5F80()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E5FB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E6048()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E60BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32E6150(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32E61E0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E623C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40B20);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32E62B0()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40BC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  return v0;
}

uint64_t sub_1E32E6310(uint64_t a1, uint64_t a2, uint64_t a3)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
  OUTLINED_FUNCTION_32_5();
  if (*(v10 + 84) == a2)
  {
    v9 = OUTLINED_FUNCTION_109_1();
    goto LABEL_5;
  }

  v12 = *(a1 + *(a3 + 24) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_1E32E6414()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    OUTLINED_FUNCTION_32_5();
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    v7 = OUTLINED_FUNCTION_109_1();
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1E32E6508(uint64_t a1, uint64_t a2)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0);
    v7 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_1E32E65A8()
{
  OUTLINED_FUNCTION_40();
  sub_1E42012F4();
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v2)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0);
    v6 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
}

uint64_t sub_1E32E6688()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C10);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  return v0;
}

uint64_t sub_1E32E66E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E6720()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E6758()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E678C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40D50);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return a2;
}

uint64_t sub_1E32E67F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40D50);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E6850()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E68A8()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E68DC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E6918()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E6968()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E69A4()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E69D8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E6A20()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E6A68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E32E6B54()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4202084();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1E32E6D60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4202084();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32E6E20()
{
  type metadata accessor for ListCollectionView();
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_44_68();
  sub_1E3264CE0();

  v4 = *(v0 + 36);
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v3 + v4);

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32E6F50()
{
  type metadata accessor for ListCollectionView();
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_44_68();
  sub_1E3264CE0();

  v2 = *(v0 + 36);
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v1 + v2);

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32E70D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF41138);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E7140(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1E32E71D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32E7294()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E72CC()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E7300()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E7338()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E736C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E73A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E32E7438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32E74C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF41308);
  sub_1E417D830();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E7528()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E7588()
{
  v1 = *(type metadata accessor for SportsBaseballBaseView() - 8);
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

uint64_t sub_1E32E76C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1E32E7780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E32E786C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF41630);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E78D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E792C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E7974()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E79D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF41730);
  sub_1E32822E0();
  sub_1E418FE20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E7A68()
{
  if (*(v0 + 368))
  {

    sub_1E389BF58();
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E7B48()
{

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E7B7C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E7BD8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E7C10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF41950);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E32E7CC4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E7D14()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E32E7D4C()
{

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E7DB8()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E7DF0()
{

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E7E44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E7E7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E7EB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1E32E7F54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E32E7FE0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E8020()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    OUTLINED_FUNCTION_265_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v9 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      v9 = *(a3 + 32);
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

void sub_1E32E8188()
{
  OUTLINED_FUNCTION_155();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
    OUTLINED_FUNCTION_32_5();
    if (*(v4 + 84) == v3)
    {
      OUTLINED_FUNCTION_266_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
      OUTLINED_FUNCTION_32_5();
      if (*(v5 + 84) != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
      }
    }

    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1E32E82A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      type metadata accessor for SportsPlayByPlayItemViewData();
      OUTLINED_FUNCTION_32_5();
      if (*(v12 + 84) != v3)
      {
        return OUTLINED_FUNCTION_36_1(*(v4 + *(a3 + 28) + 8));
      }

      OUTLINED_FUNCTION_265_0();
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_1E32E83D4()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
    OUTLINED_FUNCTION_32_5();
    if (*(v3 + 84) != v1)
    {
      type metadata accessor for SportsPlayByPlayItemViewData();
      OUTLINED_FUNCTION_32_5();
      if (*(v4 + 84) != v1)
      {
        OUTLINED_FUNCTION_77_1(*(v0 + 28));
        return;
      }

      OUTLINED_FUNCTION_266_0();
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1E32E8500()
{
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 24);
  v4 = sub_1E42028E4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1E32E8550()
{
  OUTLINED_FUNCTION_155();
  sub_1E42028E4();
  OUTLINED_FUNCTION_155_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E32E8618(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_1E4205754();
      OUTLINED_FUNCTION_32_5();
      if (*(v12 + 84) == v3)
      {
        OUTLINED_FUNCTION_265_0();
      }

      else
      {
        sub_1E4205BF4();
        OUTLINED_FUNCTION_32_5();
        if (*(v14 + 84) != v3)
        {
          return OUTLINED_FUNCTION_36_1(*(v4 + a3[13] + 8));
        }

        v8 = v13;
        v11 = a3[12];
      }
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_1E32E8788()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
  OUTLINED_FUNCTION_32_5();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v3 + 84) != v1)
    {
      sub_1E4205754();
      OUTLINED_FUNCTION_32_5();
      if (*(v4 + 84) == v1)
      {
        OUTLINED_FUNCTION_266_0();
      }

      else
      {
        sub_1E4205BF4();
        OUTLINED_FUNCTION_32_5();
        if (*(v5 + 84) != v1)
        {
          OUTLINED_FUNCTION_77_1(*(v0 + 52));
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1E32E88EC(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_214_3();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 3)
    {
      return v11 - 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E32E8994()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }
}

uint64_t sub_1E32E8A3C()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E8A90()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E8AC4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    OUTLINED_FUNCTION_32_5();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
      OUTLINED_FUNCTION_32_5();
      if (*(v12 + 84) == v3)
      {
        OUTLINED_FUNCTION_265_0();
      }

      else
      {
        sub_1E4205754();
        OUTLINED_FUNCTION_32_5();
        if (*(v14 + 84) == v3)
        {
          v8 = v13;
          v11 = a3[7];
        }

        else
        {
          if (v3 == 0x7FFFFFFF)
          {
            return OUTLINED_FUNCTION_36_1(*(v4 + a3[8]));
          }

          v8 = sub_1E4205BF4();
          v11 = a3[12];
        }
      }
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_1E32E8C5C()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    OUTLINED_FUNCTION_32_5();
    if (*(v5 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E430);
      OUTLINED_FUNCTION_32_5();
      if (*(v6 + 84) == v3)
      {
        OUTLINED_FUNCTION_266_0();
      }

      else
      {
        sub_1E4205754();
        OUTLINED_FUNCTION_32_5();
        if (*(v7 + 84) != v3)
        {
          if (v3 == 0x7FFFFFFF)
          {
            *(v1 + *(v2 + 32)) = (v0 - 1);
            return;
          }

          sub_1E4205BF4();
        }
      }
    }
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1E32E8DF0(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_36_1(*a1);
  }

  sub_1E4205BF4();
  v4 = OUTLINED_FUNCTION_109_1();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_1E32E8E68()
{
  OUTLINED_FUNCTION_155();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1E4205BF4();
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1E32E8F70()
{
  v1 = (type metadata accessor for HeaderView.PeriodSelectionButton(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v2 + v3);
  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E32E9048()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v1 = OUTLINED_FUNCTION_156_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1E32E9094()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_155_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E32E90E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_156_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    OUTLINED_FUNCTION_32_5();
    if (*(v9 + 84) != v3)
    {
      return OUTLINED_FUNCTION_36_1(*(v4 + *(a3 + 32) + 8));
    }

    v7 = OUTLINED_FUNCTION_109_1();
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_1E32E91D0()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_121_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
    OUTLINED_FUNCTION_32_5();
    if (*(v3 + 84) != v1)
    {
      OUTLINED_FUNCTION_77_1(*(v0 + 32));
      return;
    }

    OUTLINED_FUNCTION_109_1();
  }

  OUTLINED_FUNCTION_155_1();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1E32E92DC()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_113_15();
  OUTLINED_FUNCTION_21_1();
  sub_1E41C3CA0(v1);
  OUTLINED_FUNCTION_8_16();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E93FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E9434()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E9468()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E94AC()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E94E8()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32E95B4()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32E965C()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E32E96A0()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E96D4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32E9708()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E32E9758()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E32E9838()
{

  sub_1E389BF58();

  return swift_deallocObject();
}

uint64_t sub_1E32E98D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42B08);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32E9930(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42B48);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32E9998()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF42B08);
  sub_1E41DBD30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32E99FC()
{
  sub_1E42013A4();
  sub_1E41DC028();
  return swift_getWitnessTable();
}

uint64_t sub_1E32E9A60()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E9AAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E32E9B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32E9BD0()
{
  v1 = (type metadata accessor for TeamStatsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
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

uint64_t sub_1E32E9CF0()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E9DAC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32E9DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1E32E9E2C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42CB0);
  OUTLINED_FUNCTION_32_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42CB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1E32E9F3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42CB0);
  OUTLINED_FUNCTION_32_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42CB8);
    OUTLINED_FUNCTION_32_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7]) = a2;
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1E32EA040()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E32EA074(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42CE8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32EA0D4()
{
  sub_1E3264CE0();
  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E32EA138()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32EA16C()
{

  return swift_deallocObject();
}

uint64_t sub_1E32EA1C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32EA1FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E32EA234()
{

  return swift_deallocObject();
}

uint64_t sub_1E32EA298(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42DC8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E32EA300(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E32EA3B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1E32EA470(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42DE8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E32EA4D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF42DE8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1E32EA540()
{
  sub_1E42013A4();
  sub_1E4201F54();
  sub_1E42037A4();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E32EA600()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32EA634()
{
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E32EA684(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x1E69E99E0];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1E32EA8E4(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_1E32EAA78(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x1E69E99E0];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_1E32EAC6C(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t VLxCLgDpiF(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF43180) ^ 0xDF)) ^ byte_1E4307CA0[byte_1E42FD630[(-85 * ((dword_1ECF432C0 + dword_1ECF43180) ^ 0xDF))] ^ 0xAD]) + 340);
  v2 = *(v1 - 4);
  v3 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - v2) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 - v2) ^ 0xDF))] ^ 0x21]) + 72);
  v4 = &v7[*v3 - v2];
  *(v1 - 4) = 2054362027 * v4 + 0xB4207763EF64BDFLL;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v5 = 1824088897 * ((((2 * v8) | 0x8AE3169E) - v8 - 1165069135) ^ 0x1D18582D);
  v8[0] = a1 - ((2 * a1) & 0xEEEA6432) - v5 + 2004169241;
  v8[1] = 4588 - v5;
  LOBYTE(v3) = -85 * (*(v1 - 4) ^ 0xDF ^ *v3);
  (*(*(&off_1F5DB1610 + ((-85 * (dword_1ECF43180 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF43180 ^ 0xDF ^ dword_1ECF432C0))] ^ 0xD9]) + 49) + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v3 - 12) ^ 0x71u) - 12) ^ v3) + 9490))(v8);
  return (v8[2] - 16257999);
}

uint64_t lfkien1n12m()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43188 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF43188 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x71]) - 153);
  v1 = off_1F5DB19C8 - 12;
  v2 = off_1F5DB1800 - 12;
  v3 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * ((dword_1ECF432C0 + *v0) ^ 0xDF)) - 12) ^ 0x71u) - 12) ^ (-85 * ((dword_1ECF432C0 + *v0) ^ 0xDF))) + 42);
  v4 = 2054362027 * (&v6[*v3 - *v0] ^ 0xB4207763EF64BDFLL);
  *v0 = v4;
  *v3 = v4;
  LODWORD(v4) = 2048652491 * ((-1408681008 - (v7 | 0xAC093BD0) + (v7 | 0x53F6C42F)) ^ 0xE247532A);
  v7[1] = v4 + 6464;
  v7[2] = v4 ^ 0x31E6DAA;
  LOBYTE(v3) = -85 * ((*v3 + *v0) ^ 0xDF);
  (*(*(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF43188) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 + dword_1ECF43188) ^ 0xDF))] ^ 0xEE]) + 163) + (v3 ^ v2[v1[v3] ^ 0xE2]) + 9566))(v7);
  return (v7[0] - 16257999);
}

uint64_t sub_1E32EB430(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42F78) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 - dword_1ECF42F78) ^ 0xDF))] ^ 0x6D]) + 263);
  v2 = *(v1 - 4);
  v3 = off_1F5DB19C8 - 12;
  v4 = off_1F5DB1800 - 12;
  v5 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * (v2 ^ dword_1ECF432C0 ^ 0xDF)) - 12) ^ 0x71u) - 12) ^ (-85 * (v2 ^ dword_1ECF432C0 ^ 0xDF))) + 42);
  v6 = (*v5 - v2) ^ &v8;
  *(v1 - 4) = 2054362027 * (v6 - 0xB4207763EF64BDFLL);
  *v5 = 2054362027 * (v6 ^ 0xB4207763EF64BDFLL);
  v10 = a1;
  v9 = 1358806181 * ((&v9 - 1785614571 - 2 * (&v9 & 0x9591AF15)) ^ 0xAABEC396) + 3363;
  LODWORD(v5) = 2054362027 * ((*v5 - *(v1 - 4)) ^ 0x3EF64BDF);
  return (*(*(&off_1F5DB1610 + ((-85 * (dword_1ECF42F78 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * (dword_1ECF42F78 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x67]) + 221) + (v5 ^ v4[v3[v5] ^ 0xB1]) + 9614))(&v9);
}

uint64_t sub_1E32EB618(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF431B0) ^ 0xDF)) ^ byte_1E4307CA0[byte_1E42FD630[(-85 * ((dword_1ECF432C0 - dword_1ECF431B0) ^ 0xDF))] ^ 0x80]) + 160);
  v2 = *(v1 - 4);
  v3 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * ((dword_1ECF432C0 - v2) ^ 0xDF)) - 12) ^ 0xD9u) - 12) ^ (-85 * ((dword_1ECF432C0 - v2) ^ 0xDF))) - 29);
  v4 = 2054362027 * (((*v3 ^ v2) - &v6) ^ 0xB4207763EF64BDFLL);
  *(v1 - 4) = v4;
  *v3 = v4;
  v8 = a1;
  v7 = 1710126949 * (((&v7 | 0x4F7BBA73) + (~&v7 | 0xB084458C)) ^ 0x7D60E1E2) + 8752;
  LOBYTE(v3) = -85 * ((*v3 - *(v1 - 4)) ^ 0xDF);
  return (*(*(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF431B0) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF431B0) ^ 0xDF))] ^ 0x1F]) + 191) + (*(off_1F5DB1E80 + (*(off_1F5DB1BE0 + v3) ^ 0x2Au) - 8) ^ v3) + 9490))(&v7);
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43408 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD530[byte_1E4316BE0[(-85 * (dword_1ECF43408 ^ 0xDF ^ dword_1ECF432C0))] ^ 0xDD]) - 23);
  v5 = *(v4 - 4);
  v6 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * ((dword_1ECF432C0 - v5) ^ 0xDF)) - 12) ^ 0xD9u) - 12) ^ (-85 * ((dword_1ECF432C0 - v5) ^ 0xDF))) - 29);
  v7 = v5 - &v9 + *v6;
  *(v4 - 4) = 2054362027 * v7 + 0x1FC86B74B1533AF5;
  *v6 = 2054362027 * (v7 ^ 0xB4207763EF64BDFLL);
  v12 = a3;
  v13 = a2;
  v11 = a1;
  v15 = a4;
  v14 = (31943069 * ((-1345080899 - (&v10 | 0xAFD3B1BD) + (&v10 | 0x502C4E42)) ^ 0x3385083A)) ^ 0x1649;
  LOBYTE(v6) = -85 * ((*v6 - *(v4 - 4)) ^ 0xDF);
  (*(*(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF43408) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF43408) ^ 0xDF))] ^ 0x71]) + 120) + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v6 - 8) ^ 0x6Du) - 8) ^ v6) + 9599))(&v10);
  return (v10 - 16257999);
}

uint64_t Hz73b(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43308 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF43308 ^ 0xDF ^ dword_1ECF432C0))] ^ 0xB1]) + 152);
  v3 = *(v2 - 4);
  v4 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + (-85 * ((dword_1ECF432C0 - v3) ^ 0xDF)) - 8) ^ 0x6Du) - 8) ^ (-85 * ((dword_1ECF432C0 - v3) ^ 0xDF))) + 184);
  v5 = 2054362027 * ((*v4 - v3 - &v8) ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v10) = (2048652491 * ((&v9 - 1498806199 - 2 * (&v9 & 0xA6AA0849)) ^ 0x171B9F4C)) ^ 0x505;
  v9 = a1;
  LOBYTE(v5) = -85 * (*(v2 - 4) ^ 0xDF ^ *v4);
  v6 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43308 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * (dword_1ECF43308 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x67]) + 221) - 8;
  (*&v6[8 * (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v5 - 12) ^ 0xB1u) - 12) ^ v5) + 77680])(&v9);
  HIDWORD(v9) = 3673 - 1875091903 * ((&v9 - 468934885 - 2 * (&v9 & 0xE40C9F1B)) ^ 0xD2791C98);
  v10 = a1;
  (*&v6[8 * (*(off_1F5DB1B28 + ((*off_1F5DB1C30)[(-85 * ((*v4 - *(v2 - 4)) ^ 0xDF))] ^ 0xEEu) - 12) ^ (-85 * ((*v4 - *(v2 - 4)) ^ 0xDF))) + 76848])(&v9);
  return (v9 - 16257999);
}

uint64_t sub_1E32EBD7C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF431A8) ^ 0xDF)) ^ byte_1E4307CA0[byte_1E42FD630[(-85 * ((dword_1ECF432C0 - dword_1ECF431A8) ^ 0xDF))] ^ 0xAD]) + 339);
  v2 = off_1F5DB19C8 - 12;
  v3 = off_1F5DB1800 - 12;
  v4 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * ((dword_1ECF432C0 - *v1) ^ 0xDF)) - 12) ^ 0x71u) - 12) ^ (-85 * ((dword_1ECF432C0 - *v1) ^ 0xDF))) + 42);
  v5 = (*v4 - *v1) ^ &v7;
  *v1 = 2054362027 * v5 + 0xB4207763EF64BDFLL;
  *v4 = 2054362027 * (v5 ^ 0xB4207763EF64BDFLL);
  v9 = a1;
  v10 = 4383 - 33731311 * ((((&v8 | 0xDF4467CC) ^ 0xFFFFFFFE) - (~&v8 | 0x20BB9833)) ^ 0x194D5210);
  LOBYTE(v4) = -85 * ((*v4 + *v1) ^ 0xDF);
  (*(*(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF431A8) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF431A8) ^ 0xDF))] ^ 0x1F]) + 191) + (v4 ^ v3[v2[v4] ^ 0xE9]) + 9416))(&v8);
  return v8;
}

uint64_t sub_1E32EC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x280] = v8 - 208;
  v9 = STACK[0x2A8];
  STACK[0x2B0] = *(STACK[0x2A8] + 8 * (v6 - 3756));
  LODWORD(STACK[0x270]) = (a6 ^ 0xB20) + 191781780;
  LODWORD(STACK[0x290]) = a6 + 4099;
  return (*(v9 + 8 * ((46 * (((v6 + 69 + v6 + 70) ^ (*v7 == 0)) & 1)) ^ (v6 + 4166))))(9798, 0xAB3042D228875C41, 0x9508DCB2F33ECE2BLL, a4, 0x5963B6C555D97F1FLL);
}

uint64_t sub_1E32EC3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = 1824088897 * ((-1644784137 - (&a14 | 0x9DF695F7) + (&a14 | 0x62096A08)) ^ 0x3A60B96A);
  a16 = a13;
  a17 = &a11;
  a15 = v23 - 793139351;
  a18 = -654855621 - v23;
  a19 = v23 + v20 + 1674575641;
  v24 = (*(v19 + 8 * (v20 ^ 0x2819u)))(&a14);
  return (*(v19 + 8 * (((a14 == v22) * (25 * (v20 ^ (v21 + 868) ^ (v21 + 3822)) - 976)) ^ v20)))(v24);
}

uint64_t sub_1E32EC47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  *(v32 - 256) = 165422433;
  v33 = *(v32 - 192);
  *(v32 - 208) = 0;
  return (*(v31 + 8 * ((v33 != 0) | (a6 - 2219))))(a1, a2, a3, a4, a5, a6, a7, a31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a27 + 348, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1E32EC498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v71 + 8 * (v72 ^ 0x3247)))();
  v74 = STACK[0x85C];
  STACK[0x628] = STACK[0x628] + ((a71 - 6015) | 0x301u) - 917;
  return (*(v71 + 8 * ((418 * (v74 == 16257999)) ^ (a71 - 3969))))(v73);
}

uint64_t sub_1E32EC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, uint64_t *a20)
{
  a19 = (v21 - 1814) ^ (1710126949 * ((&a15 - 1186890583 - 2 * (&a15 & 0xB9417CA9)) ^ 0x8B5A2739));
  a20 = &a9;
  a17 = a14;
  a18 = &a13;
  (*(v20 + 8 * ((v21 - 2021) ^ 0x2958)))(&a15);
  a16 = (v21 - 1920) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  a17 = a14;
  a18 = &a11;
  (*(v20 + 8 * ((v21 - 2021) ^ 0x295E)))(&a15);
  a17 = a14;
  LODWORD(a18) = v21 - 2021 - 2008441969 * (((&a15 | 0x6B1A8DA2) - (&a15 & 0x6B1A8DA2)) ^ 0x2383D9AC) + 2534;
  v23 = (*(v20 + 8 * (v21 + 4479)))(&a15);
  return (*(v20 + 8 * (((a15 == v22) * ((v21 - 2021) ^ 0x15DD)) ^ (v21 - 2021))))(v23);
}

uint64_t sub_1E32EC67C(uint64_t a1)
{
  LODWORD(STACK[0x714]) = v3;
  STACK[0x8B8] = *(v2 + 8 * (v1 - 5546));
  STACK[0x5B8] = &STACK[0x8F8];
  v4 = STACK[0x8F8];
  STACK[0x4E0] = STACK[0x8F8];
  return (*(v2 + 8 * (((v4 == 0) * ((((v1 - 5507) | 0x2125) - 2978) ^ 0x1691 ^ (11 * (((v1 - 5507) | 0x2125) ^ 0x2342)))) ^ ((v1 - 5507) | 0x2125))))(a1, 197499219);
}

uint64_t sub_1E32EC708(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  *a2 = 0;
  *a3 = 0;
  a13 = 476323082 - 1710126949 * ((((&a13 | 0x604B9BC4) ^ 0xFFFFFFFE) - (~&a13 | 0x9FB4643B)) ^ 0xADAF3FAB);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((4775 * (a14 == 16257999)) ^ 0xEACu)))(v15);
}

uint64_t sub_1E32EC7D0()
{
  v2 = (*(v1 + 8 * (v0 + 3394)))(32, 0x103004054B5FA7DLL);
  STACK[0x7C0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0xFA3) - 4428) ^ 0x69B)) ^ v0)))();
}

uint64_t sub_1E32EC8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = 1317436891 * (((&a17 | 0x2FADFC9A) - &a17 + (&a17 & 0xD0520360)) ^ 0x9FAE64EC) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((7887 * (a18 == ((v21 + 1935) ^ 0x891))) ^ v19)))(v22);
}

uint64_t sub_1E32EC95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = v16 - 3792 - 1710126949 * ((2085322980 - (&a14 | 0x7C4B80E4) + (&a14 | 0x83B47F1B)) ^ 0xB1AF248B) + 476321169;
  v17 = (*(v15 + 8 * ((v16 - 3792) ^ 0x22DD)))(&a14);
  return (*(v15 + 8 * (((a15 == 16257999) * (((v16 - 9) | 0x24) - 5583)) ^ (v16 - 3792))))(v17);
}

uint64_t sub_1E32ECA78@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2 + 688;
  (*(a1 + 8 * (v2 + 5957)))(a2);
  v4 = STACK[0x3E8];
  *(STACK[0x500] + 24) = 0;
  v5 = v4;
  v6 = (*(v4 + 8 * (v3 + 5269)))();
  STACK[0x500] = 0;
  return (*(v5 + 8 * (((((v3 ^ 0x48A) + 2984) | 0x182) - 8471) ^ ((v3 ^ 0x48A) + 214))))(v6);
}

uint64_t sub_1E32ECB94()
{
  v0 = STACK[0x3F8] - 8603;
  LODWORD(STACK[0x330]) = 17168;
  return (*(STACK[0x400] + 8 * v0))();
}

uint64_t sub_1E32ECBB4@<X0>(_DWORD *a1@<X8>)
{
  *(v2 + 80) = 1;
  v9 = (v1 + 1063) | 0x92;
  *(v2 + 84) = *a1;
  v10 = STACK[0x428];
  v11 = STACK[0x468];
  STACK[0x410] = *(v3 + 8 * (v1 - 7477));
  STACK[0x600] = &STACK[0x680];
  LODWORD(STACK[0x60C]) = v11;
  v4 = STACK[0x770];
  STACK[0x448] = &STACK[0xBB0] + STACK[0x770];
  STACK[0x770] = v4 + 32;
  STACK[0x508] = v10;
  STACK[0x488] = 0;
  STACK[0x530] = 0;
  STACK[0x5A8] = 0;
  LODWORD(STACK[0x564]) = 197499219;
  LODWORD(STACK[0x5C4]) = 0;
  STACK[0x8B0] = 0;
  STACK[0x718] = 0;
  LODWORD(STACK[0x7EC]) = 197499219;
  v5 = (*(v3 + 8 * (v9 ^ 0x477)))();
  if (v10)
  {
    v6 = v11 == ((v9 + 1355432825) & 0xAF35BEAF) - 9248;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0x400] + 8 * ((1005 * (((v9 - 76) ^ v7) & 1)) ^ v9)))(v5);
}

uint64_t sub_1E32ECBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = v74 ^ 0x1327;
  (*(v73 + 8 * (v74 ^ 0x3247)))();
  *(v72 + 24) = 0;
  v77 = 79 * (v74 ^ 0x178E);
  (*(v73 + 8 * (v76 + 8352)))(STACK[0x7C0]);
  LODWORD(STACK[0x5FC]) = v75;
  STACK[0x7C8] = STACK[0x8E0];
  STACK[0x580] = *(v73 + 8 * (v77 - 5627));
  return (*(a72 + 8 * ((((((((v77 ^ 0x183F) + 1164) | 0xB00) ^ (&STACK[0x7C8] == 0)) & 1) == 0) * ((119 * ((((v77 ^ 0x183F) + 1164) | 0xB00) ^ 0x1F90)) ^ 0xB77)) ^ (((v77 ^ 0x183F) + 1164) | 0xB00))))(13908, 197499219, 4294958795, 4294961678, 4294961640);
}

uint64_t sub_1E32ECC1C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x908] = *(v2 + 8 * v1);
  LODWORD(STACK[0xB44]) = -213646401;
  STACK[0xB48] = &STACK[0x7E8];
  return (*(v2 + 8 * ((238 * (((((v1 - 58) ^ 0xB1) + 26) ^ (a1 == 0)) & 1)) ^ (v1 + 4806))))();
}

uint64_t sub_1E32ECCA8@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int64x2_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, int8x16_t a39, int8x16_t a40, int64x2_t a41, int8x16_t a42, int64x2_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, int64x2_t a47, int8x16_t a48, uint64_t a49, uint64_t a50, int8x16_t a51)
{
  v62 = a1 - 16;
  *&STACK[0x360] = *(a5 + v62 - 16);
  v63.i64[0] = a5 + v62 - 1;
  v63.i64[1] = v52 + v62;
  v64.i64[0] = a5 + v62 - 3;
  v64.i64[1] = a5 + v62 - 4;
  v65.i64[0] = a5 + v62 - 5;
  v65.i64[1] = a5 + v62 - 6;
  v66.i64[0] = a5 + v62 - 7;
  v66.i64[1] = a5 + v62 - 8;
  v67.i64[0] = a5 + v62 - 9;
  v67.i64[1] = a5 + v62 - 10;
  v68.i64[0] = a5 + v62 - 11;
  v68.i64[1] = a5 + v62 - 12;
  v69.i64[0] = a5 + v62 - 13;
  v69.i64[1] = a5 + v62 - 14;
  v70.i64[0] = a5 + v62 - 15;
  v70.i64[1] = a5 + v62 - 16;
  v71.i64[0] = a4 + v62 - 15;
  v71.i64[1] = a4 + v62 - 16;
  *&STACK[0x310] = v71;
  v72 = vandq_s8(v70, a38);
  v73 = vandq_s8(v69, a38);
  v74 = vandq_s8(v68, a38);
  v75 = vandq_s8(v67, a38);
  v76 = vandq_s8(v66, a38);
  v77 = vandq_s8(v65, a38);
  v78 = vandq_s8(v64, a38);
  v79 = vandq_s8(v63, a38);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), *&STACK[0x280]);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), *&STACK[0x280]);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), *&STACK[0x280]);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), *&STACK[0x280]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), *&STACK[0x280]);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), *&STACK[0x280]);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), *&STACK[0x280]);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), *&STACK[0x280]);
  v88 = veorq_s8(v87, *&STACK[0x270]);
  v89 = veorq_s8(v86, *&STACK[0x270]);
  v90 = veorq_s8(v85, *&STACK[0x270]);
  v91 = veorq_s8(v84, *&STACK[0x270]);
  v92 = veorq_s8(v83, *&STACK[0x270]);
  v93 = veorq_s8(v82, *&STACK[0x270]);
  v94 = veorq_s8(v81, *&STACK[0x270]);
  v95 = veorq_s8(v80, *&STACK[0x270]);
  v96 = veorq_s8(v80, *&STACK[0x260]);
  v97 = veorq_s8(v81, *&STACK[0x260]);
  v98 = veorq_s8(v82, *&STACK[0x260]);
  v99 = veorq_s8(v83, *&STACK[0x260]);
  v100 = veorq_s8(v84, *&STACK[0x260]);
  v101 = veorq_s8(v85, *&STACK[0x260]);
  v102 = veorq_s8(v86, *&STACK[0x260]);
  v103 = veorq_s8(v87, *&STACK[0x260]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x250]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97), *&STACK[0x250]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v98), *&STACK[0x250]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v99), *&STACK[0x250]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v100), *&STACK[0x250]);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v101), *&STACK[0x250]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v102), *&STACK[0x250]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v103), *&STACK[0x250]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v113 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v114 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v115 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v116 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v117 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v118 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v119 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v119);
  v128 = vaddq_s64(v126, v118);
  v129 = vaddq_s64(v125, v117);
  v130 = vaddq_s64(v124, v116);
  v131 = vaddq_s64(v123, v115);
  v132 = vaddq_s64(v122, v114);
  v133 = vaddq_s64(v121, v113);
  v134 = vaddq_s64(v120, v112);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), *&STACK[0x240]), v134), *&STACK[0x230]), *&STACK[0x220]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), *&STACK[0x240]), v133), *&STACK[0x230]), *&STACK[0x220]);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), *&STACK[0x240]), v132), *&STACK[0x230]), *&STACK[0x220]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), *&STACK[0x240]), v131), *&STACK[0x230]), *&STACK[0x220]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), *&STACK[0x240]), v130), *&STACK[0x230]), *&STACK[0x220]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), *&STACK[0x240]), v129), *&STACK[0x230]), *&STACK[0x220]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), *&STACK[0x240]), v128), *&STACK[0x230]), *&STACK[0x220]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x240]), v127), *&STACK[0x230]), *&STACK[0x220]);
  v143 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v147 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v148 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v149 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v150 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v151 = veorq_s8(v138, v146);
  v152 = veorq_s8(v137, v145);
  v153 = veorq_s8(v136, v144);
  v154 = veorq_s8(v135, v143);
  v155 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v154);
  v163 = vaddq_s64(v161, v153);
  v164 = vaddq_s64(v160, v152);
  v165 = vaddq_s64(v159, v151);
  v166 = vaddq_s64(v158, v150);
  v167 = vaddq_s64(v157, v149);
  v168 = vaddq_s64(v156, v148);
  v169 = vaddq_s64(v155, v147);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x210]), v169), *&STACK[0x200]), a51);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), *&STACK[0x210]), v168), *&STACK[0x200]), a51);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), *&STACK[0x210]), v167), *&STACK[0x200]), a51);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), *&STACK[0x210]), v166), *&STACK[0x200]), a51);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), *&STACK[0x210]), v165), *&STACK[0x200]), a51);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), *&STACK[0x210]), v164), *&STACK[0x200]), a51);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), *&STACK[0x210]), v163), *&STACK[0x200]), a51);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x210]), v162), *&STACK[0x200]), a51);
  v178 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v182 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v183 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v184 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v185 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v186 = veorq_s8(v173, v181);
  v187 = veorq_s8(v172, v180);
  v188 = veorq_s8(v171, v179);
  v189 = veorq_s8(v170, v178);
  v190 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v189);
  v198 = vaddq_s64(v196, v188);
  v199 = vaddq_s64(v195, v187);
  v200 = vaddq_s64(v194, v186);
  v201 = vaddq_s64(v193, v185);
  v202 = vaddq_s64(v192, v184);
  v203 = vaddq_s64(v191, v183);
  v204 = vaddq_s64(v190, v182);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), a48), v204), a47), a46);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), a48), v203), a47), a46);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), a48), v202), a47), a46);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), a48), v201), a47), a46);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), a48), v200), a47), a46);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199, v199), a48), v199), a47), a46);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), a48), v198), a47), a46);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), a48), v197), a47), a46);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v214 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v215 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v216 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v217 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v218 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v219 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v220 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v221 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v220);
  v229 = veorq_s8(vaddq_s64(v221, v213), *&STACK[0x370]);
  v230 = veorq_s8(vaddq_s64(v222, v214), *&STACK[0x370]);
  v231 = veorq_s8(vaddq_s64(v223, v215), *&STACK[0x370]);
  v232 = veorq_s8(vaddq_s64(v224, v216), *&STACK[0x370]);
  v233 = veorq_s8(vaddq_s64(v225, v217), *&STACK[0x370]);
  v234 = veorq_s8(vaddq_s64(v226, v218), *&STACK[0x370]);
  v235 = veorq_s8(vaddq_s64(v227, v219), *&STACK[0x370]);
  v236 = veorq_s8(v228, *&STACK[0x370]);
  v237 = *&STACK[0x370];
  v238 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v245 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v246 = veorq_s8(v235, v244);
  v247 = veorq_s8(v234, v243);
  v248 = veorq_s8(v233, v242);
  v249 = veorq_s8(v232, v241);
  v250 = veorq_s8(v231, v240);
  v251 = veorq_s8(v230, v239);
  v252 = veorq_s8(v229, v238);
  v253 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v257 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v252);
  v261 = veorq_s8(vaddq_s64(v253, v245), a45);
  v262 = veorq_s8(vaddq_s64(v254, v246), a45);
  v263 = veorq_s8(vaddq_s64(v255, v247), a45);
  v264 = veorq_s8(vaddq_s64(v256, v248), a45);
  v265 = veorq_s8(vaddq_s64(v257, v249), a45);
  v266 = veorq_s8(vaddq_s64(v258, v250), a45);
  v267 = veorq_s8(vaddq_s64(v259, v251), a45);
  v268 = veorq_s8(v260, a45);
  v269 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v270 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v273 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v274 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v275 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v276 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v277 = veorq_s8(v264, v272);
  v278 = veorq_s8(v263, v271);
  v279 = veorq_s8(v262, v270);
  v280 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v281 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v286 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v250.i64[0] = a4 + v62 - 7;
  v250.i64[1] = a4 + v62 - 8;
  v287 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), veorq_s8(v261, v269));
  v249.i64[0] = a4 + v62 - 5;
  v249.i64[1] = a4 + v62 - 6;
  v288 = vaddq_s64(v286, v279);
  v71.i64[0] = a4 + v62 - 3;
  v71.i64[1] = a4 + v62 - 4;
  *&STACK[0x2C0] = v71;
  v289 = vaddq_s64(v285, v278);
  v290.i64[0] = a4 + v62 - 1;
  v290.i64[1] = a6 + v62;
  *&STACK[0x2E0] = v290;
  v291 = vaddq_s64(v284, v277);
  v292 = vaddq_s64(v283, v276);
  v293 = vaddq_s64(v282, v275);
  v294 = vaddq_s64(v281, v274);
  v295 = vaddq_s64(v280, v273);
  v296 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v289, v289), a44), v289), a43);
  v297 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v293, v293), a44), v293), a43);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v294, v294), a44), v294), a43), a42);
  v299 = vandq_s8(vshlq_n_s64(v67, 3uLL), a37);
  *&STACK[0x2F0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v287, v287), a44), v287), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), a37)));
  *&STACK[0x300] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), a44), v288), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), a37)));
  v300 = vshlq_u64(veorq_s8(v296, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), a37)));
  v301 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v291, v291), a44), v291), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v66, 3uLL), a37)));
  *&STACK[0x340] = vshlq_u64(veorq_s8(v297, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a37)));
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v292, v292), a44), v292), a43), a42), vnegq_s64(v299));
  *&STACK[0x320] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v295, v295), a44), v295), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a37)));
  *&STACK[0x330] = vshlq_u64(v298, vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a37)));
  v302 = vandq_s8(v290, a38);
  v303 = vandq_s8(v71, a38);
  v304 = vandq_s8(v249, a38);
  v305 = vandq_s8(v250, a38);
  v306 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL);
  v310 = vorrq_s8(vaddq_s64(v306, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v311 = vorrq_s8(vaddq_s64(v307, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v312 = vorrq_s8(vaddq_s64(v308, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v313 = vorrq_s8(vsubq_s64(*&STACK[0x390], v306), *&STACK[0x380]);
  v314 = vorrq_s8(vsubq_s64(*&STACK[0x390], v307), *&STACK[0x380]);
  v315 = vorrq_s8(vsubq_s64(*&STACK[0x390], v308), *&STACK[0x380]);
  *&STACK[0x2D0] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v309), *&STACK[0x380]), vorrq_s8(vaddq_s64(v309, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v316 = vaddq_s64(v315, v312);
  v317 = vsubq_s64(a41, vaddq_s64(v313, v310));
  v318 = vsubq_s64(a41, vaddq_s64(v314, v311));
  v319 = vsubq_s64(a41, v316);
  v320 = veorq_s8(v318, a40);
  v321 = veorq_s8(v317, a40);
  v322 = veorq_s8(v317, a39);
  v323 = veorq_s8(v318, a39);
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v323);
  v325 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v326 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v325, v325), a36), v325), a35), a34);
  v327 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v324, v324), a36), v324), a35), a34);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v329 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v330 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), a33);
  v331 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v329), a33);
  v332 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v333 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL));
  v334 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v335 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), v333);
  v336 = vdupq_n_s64(v60);
  v337 = veorq_s8(vaddq_s64(v334, v332), v336);
  v338 = veorq_s8(v335, v336);
  v339 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL));
  v340 = veorq_s8(v337, vsraq_n_u64(vshlq_n_s64(v332, 3uLL), v332, 0x3DuLL));
  v341 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v340);
  v343 = vaddq_s64(v341, v339);
  v344 = vdupq_n_s64(v59);
  v345 = veorq_s8(v343, v344);
  v346 = veorq_s8(v342, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v348 = veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v349 = veorq_s8(v345, v347);
  v350 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v351 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v349);
  v352 = v237;
  v353 = veorq_s8(vaddq_s64(v350, v348), v237);
  v354 = veorq_s8(v351, v237);
  v355 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v356 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v357 = vdupq_n_s64(v53);
  v358 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v355), v357);
  v359 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), v356), v357);
  v360 = v357;
  v361 = vdupq_n_s64(v54);
  v362 = vdupq_n_s64(a7);
  v363 = vdupq_n_s64(v55);
  v364 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v358, v361), vorrq_s8(v358, v362)), v362), v363);
  v365 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v359, v361), vorrq_s8(v359, v362)), v362), v363);
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL)));
  v367 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL)));
  v368 = vdupq_n_s64(v56);
  v369 = vsubq_s64(vandq_s8(vaddq_s64(v367, v367), v368), v367);
  v370 = vsubq_s64(vandq_s8(vaddq_s64(v366, v366), v368), v366);
  v371 = vdupq_n_s64(v57);
  v372 = vaddq_s64(v370, v371);
  v373 = vdupq_n_s64(v58);
  v466.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v369, v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v250, 3uLL), a37))), v301);
  v466.val[2] = veorq_s8(vshlq_u64(veorq_s8(v372, v373), vnegq_s64(vandq_s8(vshlq_n_s64(v249, 3uLL), a37))), v300);
  v374 = veorq_s8(v319, a40);
  v375 = veorq_s8(v319, a39);
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v375);
  v377 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v376, v376), a36), v376), a35), a34);
  v378 = veorq_s8(v377, vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL));
  v379 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v378), a33);
  v380 = veorq_s8(v379, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  *&STACK[0x290] = v336;
  *&STACK[0x2A0] = v344;
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL), v380), v336);
  v382 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL));
  v383 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382), v344);
  v384 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL));
  v385 = v352;
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v384), v352);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL));
  *&STACK[0x2B0] = v360;
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v360);
  v389 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v388, v361), vorrq_s8(v388, v362)), v362), v363);
  v301.i64[0] = a4 + v62 - 13;
  v301.i64[1] = a4 + v62 - 14;
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL)));
  v358.i64[0] = a4 + v62 - 11;
  v358.i64[1] = a4 + v62 - 12;
  v391 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v390, v390), v368), v390), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a37)));
  v390.i64[0] = a4 + v62 - 9;
  v390.i64[1] = a4 + v62 - 10;
  *&STACK[0x2C0] = v390;
  v392 = vsubq_s64(a41, *&STACK[0x2D0]);
  v466.val[1] = veorq_s8(v391, *&STACK[0x300]);
  v393 = veorq_s8(v392, a40);
  v394 = veorq_s8(v392, a39);
  v395 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v394);
  v396 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v395, v395), a36), v395), a35), a34);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v398 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL), v397), a33);
  v399 = veorq_s8(v398, vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL));
  v400 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v399), v336);
  v401 = veorq_s8(v400, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  v402 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL), v401), v344);
  v403 = veorq_s8(v402, vsraq_n_u64(vshlq_n_s64(v401, 3uLL), v401, 0x3DuLL));
  v404 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v403), v385);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v406 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v405), v360);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v406, v361), vorrq_s8(v406, v362)), v362), v363);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL));
  v409 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v410 = vandq_s8(v390, a38);
  v411 = vaddq_s64(v409, v408);
  v412 = vandq_s8(v358, a38);
  v413 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v411, v411), v368), v411), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2E0], 3uLL), a37)));
  v414 = vandq_s8(v301, a38);
  v466.val[0] = veorq_s8(v413, *&STACK[0x2F0]);
  v415 = vandq_s8(*&STACK[0x310], a38);
  v416 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL);
  v420 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v416), *&STACK[0x380]), vorrq_s8(vaddq_s64(v416, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v421 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v417), *&STACK[0x380]), vorrq_s8(vaddq_s64(v417, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v417.i64[0] = vqtbl4q_s8(v466, a32).u64[0];
  v466.val[0] = veorq_s8(v421, a40);
  v466.val[1] = veorq_s8(v420, a40);
  v422 = veorq_s8(v420, a39);
  v466.val[2] = veorq_s8(v421, a39);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL), v466.val[2]);
  v466.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v422);
  v466.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466.val[1], v466.val[1]), a36), v466.val[1]), a35), a34);
  v466.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466.val[0], v466.val[0]), a36), v466.val[0]), a35), a34);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v423 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v423), a33);
  v466.val[0] = veorq_s8(v466.val[0], a33);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v424 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v424), *&STACK[0x290]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x290]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v425 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v425), *&STACK[0x2A0]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x2A0]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL);
  v426 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v426), *&STACK[0x370]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x370]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v427 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v427), *&STACK[0x2B0]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x2B0]);
  v466.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466.val[1], v361), vorrq_s8(v466.val[1], v362)), v362), v363);
  v466.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466.val[0], v361), vorrq_s8(v466.val[0], v362)), v362), v363);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL);
  v428 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v429 = vaddq_s64(v466.val[3], v428);
  v430 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v418), *&STACK[0x380]), vorrq_s8(vaddq_s64(v418, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v466.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v429, v429), v368), v429), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), a37))), *&STACK[0x320]);
  v466.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v466.val[0], v466.val[0]), v368), v466.val[0]), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v301, 3uLL), a37))), *&STACK[0x330]);
  v431 = veorq_s8(v430, a40);
  v432 = veorq_s8(v430, a39);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), a36), v433), a35), a34);
  v435 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v436 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v435), a33);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437), *&STACK[0x290]);
  v439 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v440 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v439), *&STACK[0x2A0]);
  v441 = veorq_s8(v440, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v442 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v441), *&STACK[0x370]);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v444 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v443), *&STACK[0x2B0]);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, v361), vorrq_s8(v444, v362)), v362), v363);
  v446 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL)));
  v447 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v419), *&STACK[0x380]), vorrq_s8(vaddq_s64(v419, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v466.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v446, v446), v368), v446), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), a37))), *&STACK[0x340]);
  v448 = veorq_s8(v447, a40);
  v449 = veorq_s8(v447, a39);
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v449);
  v451 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v450, v450), a36), v450), a35), a34);
  v452 = veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v453 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v452), a33);
  v454 = veorq_s8(v453, vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL));
  v455 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454), *&STACK[0x290]);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v457 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456), *&STACK[0x2A0]);
  v458 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v459 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v458), *&STACK[0x370]);
  v460 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL));
  v461 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), v460), *&STACK[0x2B0]);
  v462 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v461, v361), vorrq_s8(v461, v362)), v362), v363);
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL)));
  v466.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v463, v463), v368), v463), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a37))), *&STACK[0x350]);
  v417.i64[1] = vqtbl4q_s8(v466, a32).u64[0];
  v464 = vrev64q_s8(v417);
  *(a4 + v62 - 16) = veorq_s8(vextq_s8(v464, v464, 8uLL), *&STACK[0x360]);
  return (*(v61 + 8 * (((a3 == v62) * v51) ^ a2)))();
}

uint64_t sub_1E32ECCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, ...)
{
  va_start(va, a8);
  v10 = (*(v9 + 8 * (v8 + 3417)))(a8, a2, va) == 0;
  return (*(v9 + 8 * ((v10 * (634 * (v8 ^ 0x1866) + 10397)) ^ v8)))();
}

uint64_t sub_1E32ECD68@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = v4 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((a1 + 1316268477) & 0x1DAB2FCE ^ 0xC66) != (v2 & 0xFFFFFFE0);
  return (*(v3 + 8 * (((4 * v6) | (8 * v6)) ^ (a1 + 1814028345))))();
}

uint64_t sub_1E32ECDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v26 = 1875091903 * ((-622441221 - (&a17 | 0xDAE64CFB) + (&a17 | 0x2519B304)) ^ 0x136C3087);
  a18 = (v23 ^ 0xF83DF7EF) + ((2 * v23) & 0xF07BEFDE) + ((v25 - 1424) | 0x608) + 668905517 + v26;
  a19 = v25 + 4118 + v26;
  a20 = a14;
  (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  v27 = 1875091903 * (&a17 ^ 0x36758383);
  a20 = a14;
  a18 = v27 + ((v22 >> ((v25 - 25) & 0xF7 ^ 0xD5)) ^ 0xF27EF6AF) + ((2 * (v22 >> ((v25 - 25) & 0xF7 ^ 0xD5))) & 0xE4FDED5E) + 765313019;
  a19 = v25 + 4118 + v27;
  (*(v24 + 8 * (v25 + 6039)))(&a17);
  v28 = 1875091903 * ((2 * (&a17 & 0x12F63890) - &a17 - 318126227) ^ 0xDB7C44EE);
  a20 = a14;
  a18 = (v22 ^ 0xE2BEB6BE) + ((2 * v22) & 0xC57D6D7C) + 1029570540 + v28;
  a19 = v25 + 4118 + v28;
  (*(v24 + 8 * (v25 + 6039)))(&a17);
  v29 = 1875091903 * ((426359305 - (&a17 | 0x1969BA09) + (&a17 | 0xE69645F6)) ^ 0xD0E3C675);
  a20 = a14;
  a18 = (v21 ^ 0xA21DF7BA) + ((2 * v21) & 0x443BEF74) + 2113847024 + v29;
  a19 = v25 + 4118 + v29;
  (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  v30 = 1875091903 * ((((&a17 | 0xD826A5F4) ^ 0xFFFFFFFE) - (~&a17 | 0x27D95A0B)) ^ 0x11ACD988);
  a20 = a14;
  a18 = (v20 ^ 0x61DDF7BE) + ((2 * v20) & 0xC3BBEF7C) - 1103184148 + v30;
  a19 = v25 + 4118 + v30;
  v31 = (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  return (*(v24 + 8 * ((152 * (a17 != 16257999)) ^ v25)))(v31);
}

uint64_t sub_1E32ED174()
{
  v3 = (v0 + 117145870) & 0xF9047FFB;
  v9 = v6;
  v10 = (v3 + 3247) ^ ((&v8 ^ 0x5869D362) * v1);
  (*(v2 + 8 * (v3 ^ 0x3667)))(&v8);
  v10 = ((v3 ^ 0x6C7) + 2926) ^ ((((&v8 | 0xC611F849) - (&v8 & 0xC611F849)) ^ 0x9E782B2B) * v1);
  v9 = v5;
  (*(v2 + 8 * (v3 ^ 0x3667)))(&v8);
  return v3 + (v7 ^ 0x66FDDBDF) + ((2 * v7) & 0xCDFBB7BE) - 1711660027 - 16257999;
}

uint64_t sub_1E32ED1C0(uint64_t a1)
{
  *v3 = a1;
  *v2 = v7;
  v5 = (v1 ^ 0xDAC) + 1124;
  v12 = ((v1 ^ 0xDAC) + 2393) ^ (1824088897 * ((&v10 & 0xEEEAEBF | ~(&v10 | 0xEEEAEBF)) ^ 0xA9788222));
  v11 = v8;
  (*(v4 + 8 * (v1 ^ 0x3F61)))(&v10);
  v11 = v9;
  v12 = (v5 + 1269) ^ (1824088897 * (((&v10 | 0x8BD7EBF5) + (~&v10 | 0x7428140A)) ^ 0xD3BE3896));
  (*(v4 + 8 * (v5 ^ 0x3E29)))(&v10);
  return 0;
}

uint64_t sub_1E32ED2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x330];
  v74 = *(a72 + 8 * (v72 - 5489));
  v75 = *STACK[0x3A0];
  v76 = __ROR8__((v75 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = (v76 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v78 = __ROR8__((v76 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v79 = (0xE13B7065743737B0 - ((v78 + v77) | 0xE13B7065743737B0) + ((v78 + v77) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (0xEA42215FB09D0055 - ((v81 + v80) | 0xEA42215FB09D0055) + ((v81 + v80) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (0xFBC8962DEA5A1818 - ((v86 + v85) | 0xFBC8962DEA5A1818) + ((v86 + v85) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((2 * (v89 + v88)) & 0x95D159776768EC9ALL) - (v89 + v88) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0xD800CF627F7DCE02) - (v92 + v91) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  *(v75 + 4) = BYTE1(LODWORD(STACK[0x330])) ^ 0x98 ^ (((((2 * (v95 + v94)) & 0x4CC31BBC7D14A244) - (v95 + v94) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v75 + 4) & 7)));
  v96 = __ROR8__((v75 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((2 * (v96 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v96 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v98 = v97 ^ 0x56CD15ABE79E9D29;
  v97 ^= 0xFE8BF03C7E68EC75;
  v99 = __ROR8__(v98, 8);
  v100 = (((2 * (v99 + v97)) & 0x42379E9795A534D6) - (v99 + v97) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v101 = v100 ^ __ROR8__(v97, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) | 0xF087926224A8E20ALL) - (v102 + v101) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x5963B6C555D97F1FLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x61459D2AF01F24F7;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x8BD1FBA0C354CF8ELL) - (v109 + v108) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x1A2AEBE44253AF03;
  v113 = __ROR8__(v112, 8) + (v112 ^ __ROR8__(v111, 61));
  *(v75 + 5) = v73 ^ 0x9E ^ (((0xE4BAC51C5A42204CLL - (v113 | 0xE4BAC51C5A42204CLL) + (v113 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v75 + 5) & 7)));
  return v74();
}

uint64_t sub_1E32ED760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v18 + 8 * ((240 * (*(a1 + 52) + v16 == (((v17 ^ 0x335C) - 1122058173) & 0x42E139FF ^ 0x4E4FAE0) + (v17 ^ 0x335C) + 3236)) ^ v17 ^ 0x335C));
  STACK[0x400] = v18;
  STACK[0x3F8] = v17;
  return v19(a1, 0x100004077774924, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E32ED880()
{
  v2 = *(STACK[0x848] + 24);
  STACK[0x778] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * ((869 * (v0 ^ 0x20DD)) ^ 0x17F1)) ^ v0)))();
}

uint64_t sub_1E32ED8D0()
{
  v4 = (((*(v2 + 16) ^ 0x9E487F21) + 389820292) ^ (((v1 + 3986) | 0x301) + 563511752 + (*(v2 + 16) ^ 0xA8E2C928)) ^ ((*(v2 + 16) ^ 0xC95549F6) + 1075910997)) + 571796026;
  v5 = v0 - 1734305384 > v4;
  v6 = (v0 > 0x675F6667) ^ (v4 < 0x98A09998);
  v7 = v5;
  if (v6)
  {
    v8 = v0 > 0x675F6667;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((7 * v8) ^ v1)))();
}

uint64_t sub_1E32EDA00()
{
  STACK[0x3E0] = *(v1 + 8 * v0);
  STACK[0x9D0] = 0;
  return (*(v1 + 8 * (((STACK[0x9D0] < 0x20) * (((((v0 - 426977825) & 0x19733FFC) - 4828) | 0x2000) - 8743)) ^ (v0 - 426977825) & 0x19733FFC)))(0xF5A2F1B9B5D0B209, 1355549129, 46, 0x832330CE2ACA7050, v1, 0x4191986715653828, 505, 0xE49D77DF873DBF7ELL);
}

uint64_t sub_1E32EDA70(uint64_t a1, int a2)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v4 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (-81 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v6 + 8 * ((2 * (v7 != 0)) | (4 * (v7 != 0)) | (a2 - 2637))))();
}

void kmezkLiKJOhcpyl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || a4 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E32EDC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, unsigned int a27)
{
  if (a13 == 925652384)
  {
    v30 = -654855621;
  }

  else
  {
    v30 = 1032869496;
  }

  v31 = ((2 * (&a22 & 0x20AF998) - &a22 + 2113209958) ^ 0x259CD504) * v27;
  a24 = a18;
  a25 = &a20;
  a23 = v31 - 1099733909;
  a26 = v30 - v31;
  a27 = v31 + v29 + 1674574807;
  v32 = (*(v28 + 8 * (v29 ^ 0x355Bu)))(&a22);
  return (*(v28 + 8 * (((a22 == (((v29 - 4223) | 0x400) ^ 0xF8179B)) * (((v29 - 211) | 0x5C0) ^ 0x15F3)) ^ v29)))(v32);
}

uint64_t sub_1E32EDDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15)
{
  v17 = 1875091903 * (&a12 ^ 0x36758383);
  a15 = a10;
  a13 = (v15 ^ 0xB55FF6FF) + ((2 * v15) & 0x6ABFEDFE) + 1790754731 + v17;
  a14 = v17 + 7724;
  v18 = (*(v16 + 77160))(&a12);
  return (*(v16 + 8 * ((1909 * (a12 == 16257999)) ^ 0x10A6u)))(v18);
}

uint64_t sub_1E32EDEAC@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned __int8 a30, int a31, unsigned __int8 a32, int a33, unsigned __int8 a34, int a35, int a36, int a37, unsigned __int8 a38, uint64_t a39, unsigned __int8 a40, uint64_t a41, uint64_t a42, unsigned __int8 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = a2 - 72;
  LODWORD(a14) = *(a45 + (a1 ^ 0xF5)) + (a1 ^ 0xFFFFFF22);
  LODWORD(a16) = *(a45 + (a1 ^ 0x57)) + (a1 ^ 0x80);
  LODWORD(a21) = *(a45 + (a1 ^ 5)) + (a1 ^ 0xD2);
  LODWORD(a19) = *(a45 + (a1 ^ 0x23)) + (a1 ^ 0xFFFFFFF4);
  LODWORD(a18) = *(a45 + (a1 ^ 0xD6)) + (a1 ^ 0xFFFFFF01);
  LODWORD(a20) = *(a45 + (a1 ^ 0x41)) + (a1 ^ 0xFFFFFF96);
  v51 = *(a45 + (a1 ^ 0x63));
  LODWORD(a17) = (a1 ^ 0xFFFFFF88 ^ (v51 + (~(2 * v51) | 0xFFFFFF87) + 61)) + 2 * (v51 & (a1 ^ 0xFFFFFFB4));
  LODWORD(a15) = *(a45 + (a1 ^ 0xBBLL)) + (a1 ^ 0x6C);
  v52 = *(a45 + (a1 ^ 0x14)) + (a1 ^ 0xC3);
  v55 = *(a45 + (a36 ^ 0xA5)) + (a36 ^ 0x72);
  v56 = *(a45 + (a38 ^ 0xA5));
  v57 = (a38 ^ 0x72) & 2;
  if ((v56 & v57) != 0)
  {
    v57 = -v57;
  }

  v58 = ((v57 + v56) ^ (a38 ^ 0x72) & 0xFD) + 2 * (v56 & (a38 ^ 0x72));
  v53 = *(a45 + (a30 ^ 0xA5)) + (a30 ^ 0x72);
  v54 = *(a45 + (a32 ^ 0xA5)) + a23;
  v59 = ((((((*(a45 + (a34 ^ 0xA5)) + (a34 ^ 0x72)) ^ a19) << 8) ^ 0x1F50F516) & (((v53 ^ a21) << 16) ^ 0x3FDEFFB7) | ((v53 ^ a21) << 16) & 0xAF0000) ^ 0x6F776AAB) & ((v54 ^ a18) ^ 0x7FFFFFBF) | (v54 ^ a18) & 0x42;
  v60 = ((*(a45 + (a40 ^ 0xA5)) + (a40 ^ 0x72)) ^ v52) ^ 0xFFFFFFF7;
  v61 = ((*(a45 + (a40 ^ 0xA5)) + (a40 ^ 0x72)) ^ v52) & 0x6A;
  v62 = *(v49 + 8 * (a43 & 7 ^ 0x70u));
  v63 = *(v49 + 8 * (((1 << ((v50 + 64) ^ 0xCB)) + (a43 & 7)) ^ 0x70u));
  v64 = a28 ^ 0x12CEFE74FA34B469 ^ v63 ^ (v63 >> 4);
  *(v48 + 8 * (a43 >> 3)) = a28 ^ 0x12CEFE74FA34B469 ^ v62 ^ (v62 >> 4) ^ (v62 >> 1);
  *(v48 + 8 * ((a43 >> 3) ^ 1u)) = v64 ^ (v63 >> 1);
  return (*(a48 + 8 * v50))(v64, ((v58 ^ a15) << 8) & 0xDFFF, v60, v61, (a20 ^ v55 ^ 0xFFFFFFF9) << 24, v59 ^ 0x8FC86040, v59 & 0x635070E, (v50 + 4416), a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1E32EE594@<X0>(int a1@<W8>)
{
  v6 = 88 * (a1 ^ 0xE29);
  *(v5 - 0x18487EF8CB592F80) = v1;
  v9 = *v4;
  v8 = v6 + 1358806181 * ((&v8 + 534885444 - 2 * (&v8 & 0x1FE1B444)) ^ 0x20CED8C7) - 3149;
  result = (*(v3 + 8 * (v6 + 3148)))(&v8);
  *(v2 + 16) = 16257999;
  return result;
}

uint64_t sub_1E32EE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  v29 = *(v27 + 8);
  *(v28 - 148) = (a19 + 85) ^ (33731311 * (((((v28 - 152) | 0xE6B1C25C) ^ 0xFFFFFFFE) - (~(v28 - 152) | 0x194E3DA3)) ^ 0x20B8F780));
  *(v28 - 144) = v29;
  *(v28 - 136) = &a25;
  (*(v26 + 8 * (a19 ^ 0x292E)))(v28 - 152);
  v30 = *(v27 + 8);
  *(v28 - 136) = a19 - 2008441969 * (((((v28 - 152) | 0xBC3A7A5E) ^ 0xFFFFFFFE) - (~(v28 - 152) | 0x43C585A1)) ^ 0xB5CD1AF) + 2518;
  *(v28 - 144) = v30;
  v31 = (*(v26 + 8 * (a19 ^ 0x29DC)))(v28 - 152);
  return (*(v26 + 8 * ((7170 * (*(v28 - 152) == (a19 ^ 0x17FA ^ v25))) ^ a19)))(v31);
}

uint64_t sub_1E32EE720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  a9 = 4;
  v16 = (*(v14 + 8 * (v13 + 480)))(*(v15 + 4), 23, 0, 0, &a13, &a9);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = a9 == 4;
  }

  v18 = !v17;
  return (*(v14 + 8 * ((v18 * (((v13 - 1781222647) & 0x6A2B2DBC ^ 0x7FB) + ((v13 - 8010) | 0x10))) ^ v13)))(v16);
}

uint64_t sub_1E32EE7A4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  STACK[0x6F8] = a1;
  STACK[0x530] = *(v2 + 8 * v1);
  return (*(v2 + 8 * ((((((v1 + 8768) | 0x70) + 804579327) & 0xD00AF777 ^ 0x3B8) * (a1 == 0)) ^ ((v1 + 8768) | 0x70))))();
}

uint64_t sub_1E32EE7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v18 + 1317436891 * ((1582353783 - (&a15 | 0x5E50CD77) + (&a15 | 0xA1AF3288)) ^ 0x11ACAAFE) + 4370;
  a15 = &a11;
  v20 = (*(v17 + 8 * (v18 + 5853)))(&a15);
  return (*(v17 + 8 * (((a16 == v19 + ((v18 + 1439793461) & 0x1EBB) - 3769) * (((v18 - 1170221201) & 0xAA39DDE9) + 1439060815)) ^ v18)))(v20);
}

uint64_t sub_1E32EE8A4(uint64_t a1, uint64_t a2, int a3)
{
  v8 = (v6 - 32);
  v9 = (a2 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v5 == 32) * a3) ^ (v3 + v4 + 3925))))();
}

uint64_t sub_1E32EEAA0()
{
  *(v6 - 224) = v5 ^ (((-2135139389 - ((v6 - 232) | 0x80BC5BC3) + ((v6 - 232) | 0x7F43A43C)) ^ 0x53BF1547) * v4);
  v7 = (*(v0 + 8 * (v1 + 390)))(v6 - 232);
  v8 = STACK[0x400];
  *(v2 + 8) = *(v6 - 232) ^ v3;
  return (*(v8 + 8 * ((v1 - 7774) ^ 0x2F)))(v7);
}

void sub_1E32EEB3C(uint64_t a1)
{
  v1 = *(a1 + 36) ^ (1317436891 * (((a1 | 0x351550A7) - (a1 | 0xCAEAAF58) - 890589352) ^ 0x8516C8D1));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1E32EEC2C@<X0>(int8x16_t *a1@<X0>, int a2@<W8>)
{
  v4.i64[0] = 0x7878787878787878;
  v4.i64[1] = 0x7878787878787878;
  v5.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v5.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  a1[2] = vaddq_s8(vsubq_s8(v3[2], vandq_s8(vaddq_s8(v3[2], v3[2]), v4)), v5);
  return (*(v2 + 8 * ((10586 * (((a2 + 316) ^ 0xC19) == 16)) ^ a2)))();
}

uint64_t sub_1E32EEC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = v3 ^ 0xDD ^ *(a2 + v6);
  return (*(v5 + 8 * ((7273 * (v6 == 0)) ^ (v2 + v3 + 242))))();
}

uint64_t sub_1E32EEEE0@<X0>(int a1@<W8>)
{
  STACK[0xB70] = v1;
  v3 = STACK[0x820];
  STACK[0xB78] = STACK[0x820];
  return (*(v2 + 8 * (((v1 - v3 > (a1 ^ 0x124Au) - 657) * ((a1 + 401845337) & 0xE80C66F6 ^ 0x105B)) ^ a1)))();
}

uint64_t sub_1E32EEFF4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = 1824088897 * ((2 * (a1 & 0x14529C38) - a1 + 1806525383) ^ 0x33C4B0A5);
  v3 = *(a1 + 28) - v2;
  v4 = *(a1 + 4) - v2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = 1259475733 * (*(a1 + 24) + v2) + 202674402;
  v8 = 2048652491 * (((v10 | 0xEC5E9A02) - v10 + (v10 & 0x13A165F8)) ^ 0x5DEF0D07);
  v13 = v4 ^ ((v4 ^ 0x85BB2D04) + 222263695) ^ ((v4 ^ 0xEFF7C890) + 1735629851) ^ ((v4 ^ 0x62C8B01E) - 364059499) ^ ((v4 ^ 0x7FFFFEFF) - 142890378) ^ v8 ^ 0x7CBE3226;
  v10[0] = v8 ^ v7;
  v10[2] = v8 ^ (v3 - 1674573492);
  v11 = v6;
  v12 = v5;
  result = (*(*(&off_1F5DB1610 + v3 - 1674578835) + (v3 ^ 0x63D02944) - 1))(v10);
  *a1 = v10[1];
  return result;
}

uint64_t sub_1E32EF1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17)
{
  a16 = a10;
  a17 = v18 - 2008441969 * (&a15 ^ 0x4899540E) + 4516;
  v20 = (*(v17 + 8 * (v18 + 8482)))(&a15);
  return (*(v17 + 8 * (((a15 == (v18 ^ 0x331 ^ (v19 + 184))) * (((v18 - 1668887994) & 0x13FF9) - 140)) ^ v18)))(v20);
}

uint64_t sub_1E32EF264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, int a19, char a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, char *a26)
{
  a25 = (v26 - 1323) ^ (1710126949 * ((2 * (&a21 & 0x24A2E888) - &a21 + 1532827511) ^ 0x69464CE7));
  a26 = &a17;
  a23 = a12;
  a24 = &a20;
  (*(v27 + 8 * (v26 + 4926)))(&a21);
  a22 = (v26 - 1429) ^ (33731311 * ((((2 * &a21) | 0x56A94D18) - &a21 - 726967948) ^ 0x12A26CAF));
  a23 = a12;
  a24 = &a15;
  (*(v27 + 8 * (v26 ^ 0x3758)))(&a21);
  a23 = a12;
  LODWORD(a24) = v26 - 2008441969 * ((224533977 - (&a21 ^ 0x6CD6B34C | 0xD621DD9) + (&a21 ^ 0x6CD6B34C | 0xF29DE226)) ^ 0xD6D20564) + 1004;
  v28 = (*(v27 + 8 * (v26 ^ 0x37AA)))(&a21);
  return (*(v27 + 8 * (((a21 == 16257999) * (((v26 ^ 0xAF) - 3662) ^ 0xAEC)) ^ v26)))(v28);
}

uint64_t sub_1E32EF3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, int a24)
{
  v28 = 1358806181 * (((&a21 | 0x49013954) - (&a21 | 0xB6FEC6AB) - 1224816981) ^ 0x762E55D7);
  a22 = (v27 | 0x28) ^ v28;
  a21 = v24;
  a23 = v25 - v28 + 5000;
  v29 = (*(v26 + 8 * (v25 + 8677)))(&a21);
  return (*(v26 + 8 * (((a24 == 16257999) * (14 * (((v25 + 520) | 0x900) ^ 0xE7E) + 5754)) ^ v25)))(v29);
}

uint64_t sub_1E32EF540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x500] = *(v3 + 8 * (v2 - 6068));
  LODWORD(STACK[0xB04]) = -218570653;
  STACK[0xB08] = &STACK[0x470];
  return (*(v3 + 8 * (((((3 * ((v2 + 76) ^ 0x67) + 1) ^ (a2 == 0)) & 1) * ((3 * ((v2 - 6068) ^ 0x167) + 2520) ^ 0xE79)) ^ (3 * ((v2 - 6068) ^ 0x167)))))(a1, 197499219);
}

void FKsdr5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || a3 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E32EF5E4()
{
  v3 = 79 * ((v0 + 3557) ^ 0x1702);
  v10 = (v0 + 6002) ^ ((((&v8 | 0x893693E3) - (&v8 & 0x893693E3)) ^ 0xD15F4081) * v2);
  v9 = v7;
  (*(v1 + 8 * (v0 + 7268)))(&v8);
  v9 = v6;
  v10 = (v3 + 7161) ^ (((&v8 + 1730452353 - 2 * (&v8 & 0x67249B81)) ^ 0x3F4D48E3) * v2);
  (*(v1 + 8 * (v3 + 8427)))(&v8);
  return (v5 ^ 0xDFCF3FF) - 218423344 + ((v5 << (v0 - 39)) & 0x1BF9E7FEu) - 16257999;
}

void sub_1E32EF6CC()
{
  LODWORD(STACK[0x66C]) = v2;
  STACK[0x598] = STACK[0x618];
  STACK[0x8B8] = *(v1 + 8 * (((v0 + 114152046) & 0xF9323FDB) - 5575));
  JUMPOUT(0x1E32EC6C0);
}

uint64_t sub_1E32EF788@<X0>(int a1@<W3>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v21 = (a14 - 146417860) & 0x8BA37E7;
  v22 = (v21 ^ 0x15B6) + a1;
  HIDWORD(v193) = v17 ^ 0x8E21CFAD;
  v23 = v16 ^ 0x7526D2EC;
  LODWORD(v193) = v19 ^ 0xDF1E87CE;
  *(v20 - 148) = v22;
  HIDWORD(a13) = 0;
  v24 = v22;
  v25 = (v15 + v22);
  v26 = (v25 << ((12 * ((a14 + 60) & 0xE7 ^ 0x6B)) ^ 0x9Fu)) & 0x38;
  v192 = (v21 ^ 0x146Bu) + 1205;
  v27 = (__ROR8__(v25, 8) & 0xF8FFFFFFFFFFFFFFLL) + (v192 ^ 0x2D9C56C6ED9D38ACLL);
  v28 = __ROR8__(v27 ^ 0x8B6A6B077E496091, 8);
  v27 ^= 0xE788DD3012A091E0;
  v29 = (v28 + v27) ^ 0xFB9714BECA2C68E9;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xBD8F7CFD1E07971BLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xFD8B533ED96A4334;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8) + v34;
  v36 = v35 ^ __ROR8__(v34, 61);
  *(&v37 + 1) = v36 ^ 0xAC7DA0564C1838BLL;
  *&v37 = v36;
  v38 = (__ROR8__(v35 ^ 0xAC7DA0564C1838BLL, 8) + (v36 ^ 0xAC7DA0564C1838BLL)) ^ 0x6190A7627E7D0B79;
  v39 = v38 ^ (v37 >> 61);
  *&v37 = __ROR8__(v38, 8);
  v40 = (((((v39 ^ v37) + 2 * (v39 & v37)) ^ 0x8E4D6ECA343D275ELL ^ __ROR8__(v39, 61)) + __ROR8__(((v39 ^ v37) + 2 * (v39 & v37)) ^ 0x8E4D6ECA343D275ELL, 8)) ^ 0x51BB4171AFEDC628) >> v26;
  v41 = (__ROR8__(v25 + 8, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  v42 = v41 ^ 0x8B6A6B077E496091;
  v41 ^= 0xE788DD3012A091E0;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0xFB9714BECA2C68E9;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (v44 + __ROR8__(v43, 8)) ^ 0xBD8F7CFD1E07971BLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (v46 + __ROR8__(v45, 8)) ^ 0xFD8B533ED96A4334;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xAC7DA0564C1838BLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x6190A7627E7D0B79;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x8E4D6ECA343D275ELL;
  v54 = (__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ 0x51BB4171AFEDC628;
  v55 = v54 >> v26;
  v26 ^= 0x3Fu;
  v56 = *v25;
  v57 = v40 + 2 * (v54 << v26);
  v58 = (__ROR8__(v25 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  *&v37 = __ROR8__(v58 ^ 0x8B6A6B077E496091, 8);
  v58 ^= 0xE788DD3012A091E0;
  v59 = (v37 + v58) ^ 0xFB9714BECA2C68E9;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (v60 + __ROR8__(v59, 8)) ^ 0xBD8F7CFD1E07971BLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (v62 + __ROR8__(v61, 8)) ^ 0xFD8B533ED96A4334;
  *&v37 = __ROR8__(v62, 61);
  v64 = v63 ^ v37;
  v65 = (v63 ^ v37) + (v63 >> 8) + (v63 << 56);
  v66 = v65 ^ __ROR8__(v64, 61);
  *(&v37 + 1) = v66 ^ 0xAC7DA0564C1838BLL;
  *&v37 = v66;
  v67 = (__ROR8__(v65 + 0xAC7DA0564C1838BLL - ((2 * v65) & 0x158FB40AC9830716), 8) + (v66 ^ 0xAC7DA0564C1838BLL)) ^ 0x6190A7627E7D0B79;
  v68 = v67 ^ (v37 >> 61);
  v69 = (v68 + __ROR8__(v67, 8)) ^ 0x8E4D6ECA343D275ELL;
  v70 = v55 + 2 * (((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v68, 61))) ^ 0x51BB4171AFEDC628) << v26);
  LODWORD(v40) = ((*(a9 + (v40 ^ 0x43)) ^ 0x9B) << 24) | (((*(a11 + (BYTE1(v57) ^ 0x70)) - 27) ^ 0x92) << 16) | (((*(a10 + (BYTE2(v57) ^ 0x48)) + 89) ^ 0xE4) << 8) | ((*(a8 + (BYTE3(v57) ^ 0x44)) ^ 6) - 24);
  LODWORD(v68) = ((*(a9 + (BYTE4(v57) ^ 0xC0)) ^ 0xD) << 24) | (((*(a11 + (BYTE5(v57) ^ 0x47)) - 27) ^ 0x27) << 16) | (((*(a10 + (BYTE6(v57) ^ 0x87)) + 89) ^ 0x6B) << 8) | (*(a8 + (HIBYTE(v57) ^ 0x89)) - 24) ^ 0x94;
  LODWORD(v55) = ((*(a9 + (v55 ^ 0x13)) ^ 0x3C) << 24) | (((*(a11 + (BYTE1(v70) ^ 0x67)) - 27) ^ 0x2F) << 16) | (((*(a10 + (BYTE2(v70) ^ 0x2FLL)) + 89) ^ 0xBF) << 8) | (*(a8 + (BYTE3(v70) ^ 0xAFLL)) - 24) ^ 0x69;
  v71 = ((*(a9 + (BYTE4(v70) ^ 0xE7)) ^ 0xC) << 24) | (((*(a11 + (BYTE5(v70) ^ 0xA3)) - 27) ^ 0x37) << 16) | (((*(a10 + (BYTE6(v70) ^ 0xB7)) + 89) ^ 0x10) << 8) | (*(a8 + (HIBYTE(v70) ^ 0x64)) - 24) ^ 0xCC;
  v203 = v22 | 0xFLL;
  v72 = ((*(a10 + (*(v15 + (v22 | 2)) ^ 0xA8)) + 89) ^ 0x79) << 8;
  v201 = v22 | 7;
  LOBYTE(v57) = *(a8 + (*(v15 + v203) ^ 0xEELL)) - 24;
  v73 = *(v15 + v201) ^ 0x2ALL;
  *(v20 - 176) = v22 | 5;
  LODWORD(v73) = (*(a8 + v73) - 24) ^ 0xE | (((*(a11 + (*(v15 + (v22 | 5)) ^ 0x43)) - 27) ^ 0xD) << 16);
  *(v20 - 168) = v22 | 4;
  LODWORD(v69) = *(a9 + (*(v15 + (v22 | 4)) ^ 0x2DLL)) ^ 0x21;
  *(v20 - 160) = v22 | 0xALL;
  v202 = v22 | 9;
  v204 = v22 | 8;
  v197 = v22 | 0xBLL;
  v196 = v22 | 1;
  v198 = v22 | 3;
  v200 = v22 | 0xCLL;
  v199 = v22 | 6;
  LODWORD(v73) = v73 & 0xFFFF00FF | (v69 << 24) | (((*(a10 + (*(v15 + v199) ^ 0x76)) + 89) ^ 0x69) << 8);
  v194 = v22 | 0xDLL;
  v195 = v22 | 0xELL;
  v74 = v55 ^ v19 ^ 0xDF1E87CE ^ ((((*(a10 + (*(v15 + (v22 | 0xALL)) ^ 0x9ELL)) + 89) ^ 0xF) << 8) | (((*(a11 + (*(v15 + v202) ^ 0xDDLL)) - 27) ^ 0xE4) << 16) | ((*(a9 + (*(v15 + v204) ^ 0x79)) ^ 0xB3) << 24) | (*(a8 + (*(v15 + v197) ^ 0x6BLL)) - 24) ^ 0xCE);
  LODWORD(v55) = v71 ^ HIDWORD(v193) ^ (v57 ^ 0xD8 | ((*(a9 + (*(v15 + v200) ^ 0x6ELL)) ^ 0x6F) << 24) | (((*(a11 + (*(v15 + v194) ^ 0x16)) - 27) ^ 0x45) << 16) | (((*(a10 + (*(v15 + v195) ^ 0x8CLL)) + 89) ^ 0xBF) << 8));
  v75 = (v68 ^ a3 ^ 0xE27E5589 ^ v73) - ((2 * (v68 ^ a3 ^ 0xE27E5589 ^ v73)) & 0x22FEF064) - 1853917134;
  LODWORD(v73) = v74 - ((2 * v74) & 0x1F356AF2) - 1885686407;
  LODWORD(v40) = v23 ^ (v72 & 0xFF00FF00 | ((*(a9 + (v56 ^ 0xF9)) ^ 0xAE) << 24) | (((*(a11 + (*(v15 + v196) ^ 0x9BLL)) - 27) ^ 0x4A) << 16) | (*(a8 + *(v15 + v198)) - 24) ^ 0xEB) ^ 0xCD3D2C8D ^ v40;
  v75 ^= 0x92CE5349;
  v76 = *(&off_1F5DB1610 + (v21 & 0x1FD78B5A)) - 8;
  v77 = *(&off_1F5DB1610 + (v21 ^ 0x1550)) - 4;
  v78 = *&v77[4 * ((v55 ^ 0xD14400D5) >> 16)];
  DWORD1(v37) = v78 ^ v14;
  LODWORD(v37) = v78 ^ v18;
  v79 = *(&off_1F5DB1610 + (v21 ^ 0x15FB)) - 12;
  LODWORD(v69) = ((v37 >> 25) + 764726603 - ((2 * (v37 >> 25)) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v40)];
  LODWORD(v69) = (v69 + 216521882 - ((2 * v69) & 0x19CFB934)) ^ *&v79[4 * v75];
  v80 = *&v77[4 * (BYTE2(v73) ^ 6)];
  DWORD1(v37) = v80 ^ v14;
  LODWORD(v37) = v80 ^ v18;
  v81 = v69 + a2 - ((2 * v69) & 0xCED1022C);
  LODWORD(v69) = ((v37 >> 25) + 216521882 - ((2 * (v37 >> 25)) & 0x19CFB934)) ^ *&v79[4 * v40];
  v82 = *&v77[4 * BYTE2(v75)];
  DWORD1(v37) = v82 ^ v14;
  LODWORD(v37) = v82 ^ v18;
  v83 = ((v37 >> 25) + 216521882 - ((2 * (v37 >> 25)) & 0x19CFB934)) ^ *&v79[4 * (v55 ^ 0xD5)];
  v84 = *&v77[4 * BYTE2(v40)];
  DWORD1(v37) = v84 ^ v14;
  LODWORD(v37) = v84 ^ v18;
  v85 = BYTE3(v40);
  v86 = *(&off_1F5DB1610 + (v21 ^ 0x15C0)) - 12;
  v87 = (v83 + a2 - ((2 * v83) & 0xCED1022C)) ^ *&v86[4 * v85];
  v88 = v87 + 764726603 - ((2 * v87) & 0x5B299A96);
  LODWORD(v73) = v73 ^ 0x1463A00F;
  v89 = *&v76[4 * BYTE1(v75)] ^ (v37 >> 25) ^ *&v79[4 * v73];
  LODWORD(v69) = (v69 + a2 - ((2 * v69) & 0xCED1022C)) ^ *&v86[4 * HIBYTE(v75)];
  v90 = *&v86[4 * BYTE3(v73)];
  v91 = *&v76[4 * BYTE1(v73)];
  v92 = ((v89 ^ 0x217311D1) + a2 - 2 * ((v89 ^ 0x217311D1) & (a2 + 8) ^ v89 & 8)) ^ *&v86[4 * ((v55 ^ 0xD14400D5) >> 24)];
  LODWORD(v73) = *&v76[4 * BYTE1(v55)];
  LODWORD(v55) = v90 ^ 0x38A602A ^ v81;
  LODWORD(v68) = v92 ^ 0xA12E828A;
  LODWORD(v73) = v73 ^ 0xEB939729 ^ (v69 + 764726603 - ((2 * v69) & 0x5B299A96));
  v93 = v91 ^ 0x9BA75E27 ^ v88;
  LODWORD(v69) = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v69 ^ v14;
  LODWORD(v37) = v69 ^ v18;
  LODWORD(v69) = ((v37 >> 25) + 216521882 - ((2 * (v37 >> 25)) & 0x19CFB934)) ^ *&v79[4 * (v91 ^ 0x27 ^ v88)];
  LODWORD(v69) = (v69 + a2 - ((2 * v69) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v73)];
  v94 = *&v79[4 * (v92 ^ 0x8A)] ^ *&v86[4 * HIBYTE(v93)];
  v95 = *&v77[4 * (BYTE2(v92) ^ 0x4B)];
  DWORD1(v37) = v95 ^ v14;
  LODWORD(v37) = v95 ^ v18;
  v96 = ((v37 >> 25) + a2 - ((2 * (v37 >> 25)) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v55)];
  v97 = *&v77[4 * BYTE2(v93)];
  v98 = (v94 ^ 0x6B8F5D8C) + 764726603 - 2 * ((v94 ^ 0x6B8F5D8C) & 0x2D94CD6B ^ v94 & 0x20);
  DWORD1(v37) = v97 ^ v14;
  LODWORD(v37) = v97 ^ v18;
  v99 = ((v37 >> 25) + a2 - ((2 * (v37 >> 25)) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v68)];
  v100 = v69 + 764726603 - ((2 * v69) & 0x5B299A96);
  LODWORD(v69) = (v96 + 764726603 - ((2 * v96) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v93)];
  v101 = (v99 + 216521882 - ((2 * v99) & 0x19CFB934)) ^ *&v79[4 * v55];
  v102 = *&v77[4 * BYTE2(v73)];
  DWORD1(v37) = v102 ^ v14;
  LODWORD(v37) = v102 ^ v18;
  v103 = *&v76[4 * BYTE1(v73)] ^ 0x5157E554 ^ (v101 + 764726603 - ((2 * v101) & 0x5B299A96));
  v104 = *&v76[4 * BYTE1(v55)];
  LODWORD(v55) = *&v79[4 * v73] ^ 0x38852484 ^ (v69 + 216521882 - ((2 * v69) & 0x19CFB934));
  LODWORD(v73) = *&v76[4 * BYTE1(v68)] ^ 0xF39607F4;
  LODWORD(v68) = v104 ^ v98 ^ (v37 >> 25) ^ 0xD09CD387;
  LODWORD(v69) = *&v77[4 * BYTE2(v103)];
  DWORD1(v37) = v69 ^ v14;
  LODWORD(v37) = v69 ^ v18;
  LODWORD(v69) = v37 >> 25;
  v105 = *&v77[4 * BYTE2(v68)];
  LODWORD(v73) = v73 ^ v100;
  DWORD1(v37) = v105 ^ v14;
  LODWORD(v37) = v105 ^ v18;
  v106 = ((v37 >> 25) + 764726603 - ((2 * (v37 >> 25)) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v73)];
  LODWORD(v69) = (v69 + 216521882 - ((2 * v69) & 0x19CFB934)) ^ *&v79[4 * v73];
  v107 = (v106 + 216521882 - ((2 * v106) & 0x19CFB934)) ^ *&v79[4 * v55];
  v108 = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v108 ^ v14;
  LODWORD(v37) = v108 ^ v18;
  v109 = v37 >> 25;
  v110 = *&v77[4 * BYTE2(v73)];
  DWORD1(v37) = v110 ^ v14;
  LODWORD(v37) = v110 ^ v18;
  v111 = ((v37 >> 25) + a2 - ((2 * (v37 >> 25)) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v68)];
  v112 = (v109 + 216521882 - ((2 * v109) & 0x19CFB934)) ^ *&v79[4 * v68];
  v113 = (v111 + 216521882 - ((2 * v111) & 0x19CFB934)) ^ *&v79[4 * v103];
  LODWORD(v69) = *&v86[4 * BYTE3(v55)] ^ (v69 + a2 - ((2 * v69) & 0xCED1022C));
  v114 = (v112 + 764726603 - ((2 * v112) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v103)];
  LODWORD(v55) = *&v76[4 * BYTE1(v55)] ^ 0x4CF109BD ^ (v113 + 764726603 - ((2 * v113) & 0x5B299A96));
  v115 = *&v86[4 * HIBYTE(v103)] ^ 0x1E2C8CC3 ^ (v107 + a2 - ((2 * v107) & 0xCED1022C));
  LODWORD(v68) = *&v76[4 * BYTE1(v68)] ^ 0x87E22ACD ^ (v69 + 764726603 - ((2 * v69) & 0x5B299A96));
  LODWORD(v69) = *&v77[4 * BYTE2(v68)];
  v116 = (v114 + a2 - ((2 * v114) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v73)];
  DWORD1(v37) = v69 ^ v14;
  LODWORD(v37) = v69 ^ v18;
  LODWORD(v69) = v37 >> 25;
  LODWORD(v73) = *&v77[4 * BYTE2(v115)];
  DWORD1(v37) = v73 ^ v14;
  LODWORD(v37) = v73 ^ v18;
  v117 = v116 ^ 0x779B4D13;
  LODWORD(v73) = *&v79[4 * (v116 ^ 0x13)] ^ 0x217311D1 ^ (v37 >> 25) ^ *&v76[4 * BYTE1(v55)];
  v118 = *&v76[4 * BYTE1(v68)] ^ *&v79[4 * v115] ^ 0x217311D1;
  LODWORD(v73) = (v73 + a2 - ((2 * v73) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v68)];
  v119 = *&v77[4 * (BYTE2(v116) ^ 0xFE)];
  DWORD1(v37) = v119 ^ v14;
  LODWORD(v37) = v119 ^ v18;
  v120 = *&v76[4 * BYTE1(v115)] ^ (v69 + 764726603 - ((2 * v69) & 0x5B299A96));
  LODWORD(v69) = *&v86[4 * BYTE3(v55)] ^ (v37 >> 25);
  v121 = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v121 ^ v14;
  LODWORD(v37) = v121 ^ v18;
  LODWORD(v69) = (v118 + a2 - ((2 * v118) & 0xCED1022C)) ^ v69;
  LODWORD(v68) = *&v79[4 * v68] ^ *&v76[4 * BYTE1(v117)] ^ 0x217311D1 ^ (v37 >> 25);
  v122 = *&v86[4 * HIBYTE(v117)] ^ (v120 + a2 - ((2 * v120) & 0xCED1022C));
  v123 = *&v86[4 * HIBYTE(v115)] ^ 0xA7C5FDB1 ^ (v68 + a2 - ((2 * v68) & 0xCED1022C));
  v124 = *&v77[4 * (BYTE2(v69) ^ 0x6C)];
  DWORD1(v37) = v124 ^ v14;
  LODWORD(v37) = v124 ^ v18;
  v125 = v37 >> 25;
  v126 = *&v79[4 * v55] ^ 0x3E0B5BBF ^ (v122 + 216521883 + ~((2 * v122) & 0x19CFB934));
  LODWORD(v55) = *&v77[4 * (BYTE2(v73) ^ 0x70)];
  DWORD1(v37) = v55 ^ v14;
  LODWORD(v37) = v55 ^ v18;
  LODWORD(v55) = ((v37 >> 25) + 764726603 - ((2 * (v37 >> 25)) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v123)];
  LOWORD(v117) = v69 ^ 0x55F6;
  LODWORD(v69) = *&v79[4 * v123] ^ *&v86[4 * ((v69 ^ 0x810955F6) >> 24)] ^ 0x6B8F5D8C;
  LODWORD(v55) = (v55 + a2 - ((2 * v55) & 0xCED1022C)) ^ *&v86[4 * HIBYTE(v126)];
  LODWORD(v73) = v73 ^ 0x71153228;
  v127 = *&v79[4 * v73] ^ (v125 + 216521882 - ((2 * v125) & 0x19CFB934));
  v128 = (v127 + a2 - ((2 * v127) & 0xCED1022C)) ^ *&v86[4 * HIBYTE(v123)];
  v129 = *&v76[4 * BYTE1(v117)] ^ 0x4AFC4C5D ^ *&v86[4 * BYTE3(v73)];
  v130 = v55 + 216521882 - ((2 * v55) & 0x19CFB934);
  LODWORD(v55) = v128 + 764726603 - ((2 * v128) & 0x5B299A96);
  v131 = *&v77[4 * BYTE2(v123)];
  DWORD1(v37) = v131 ^ v14;
  LODWORD(v37) = v131 ^ v18;
  v132 = v37 >> 25;
  v133 = *&v77[4 * BYTE2(v126)];
  DWORD1(v37) = v133 ^ v14;
  LODWORD(v37) = v133 ^ v18;
  LODWORD(v73) = (v69 + 764726603 - ((2 * v69) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v73)] ^ 0xD2A47957 ^ (v37 >> 25);
  LODWORD(v55) = *&v76[4 * BYTE1(v126)] ^ 0xF283AE2B ^ v55;
  v134 = *&v79[4 * v126] ^ (v129 + 216521882 - ((2 * v129) & 0x19CFB934)) ^ v132 ^ 0x9DDF10C0;
  v135 = *&v79[4 * v117] ^ 0x243661B2 ^ v130;
  LODWORD(v69) = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v69 ^ v14;
  LODWORD(v37) = v69 ^ v18;
  LODWORD(v69) = ((v37 >> 25) + a2 - ((2 * (v37 >> 25)) & 0xCED1022C)) ^ *&v86[4 * HIBYTE(v134)];
  v136 = *&v77[4 * BYTE2(v134)];
  DWORD1(v37) = v136 ^ v14;
  LODWORD(v37) = v136 ^ v18;
  v137 = ((v37 >> 25) + a2 - ((2 * (v37 >> 25)) & 0xCED1022C)) ^ *&v86[4 * HIBYTE(v135)];
  v138 = *&v77[4 * BYTE2(v73)];
  DWORD1(v37) = v138 ^ v14;
  LODWORD(v37) = v138 ^ v18;
  v139 = (v137 + 216521882 - ((2 * v137) & 0x19CFB934)) ^ *&v79[4 * v73];
  v140 = *&v76[4 * BYTE1(v135)] ^ *&v79[4 * v134] ^ 0x217311D1 ^ (v37 >> 25);
  v141 = *&v77[4 * BYTE2(v135)];
  DWORD1(v37) = v141 ^ v14;
  LODWORD(v37) = v141 ^ v18;
  v142 = *&v76[4 * BYTE1(v134)] ^ 0x4AFC4C5D ^ *&v86[4 * BYTE3(v73)] ^ (v37 >> 25);
  LODWORD(v68) = (v69 + 216521883 + ~((2 * v69) & 0x19CFB934)) ^ *&v79[4 * v135];
  v143 = *&v76[4 * BYTE1(v73)] ^ 0xC653C9DB ^ (v68 + 764726603 - ((2 * v68) & 0x5B299A96));
  LODWORD(v68) = *&v79[4 * v55];
  v144 = *&v76[4 * BYTE1(v55)] ^ 0x93159A41 ^ (v139 + 764726603 - ((2 * v139) & 0x5B299A96));
  LODWORD(v55) = *&v86[4 * BYTE3(v55)] ^ 0xFC4924AA ^ (v140 + a2 - ((2 * v140) & 0xCED1022C));
  LODWORD(v73) = v68 ^ 0x7FBAB8A9 ^ (v142 + 216521882 - ((2 * v142) & 0x19CFB934));
  LODWORD(v68) = *&v77[4 * BYTE2(v144)];
  LODWORD(v69) = *&v77[4 * BYTE2(v143)];
  DWORD1(v37) = v68 ^ v14;
  LODWORD(v37) = v68 ^ v18;
  LODWORD(v68) = ((v37 >> 25) + 764726603 - ((2 * (v37 >> 25)) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v143)];
  DWORD1(v37) = v69 ^ v14;
  LODWORD(v37) = v69 ^ v18;
  LODWORD(v69) = v37 >> 25;
  v145 = *&v79[4 * v143] ^ *&v76[4 * BYTE1(v144)] ^ 0x217311D1;
  v146 = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v146 ^ v14;
  LODWORD(v37) = v146 ^ v18;
  LODWORD(v68) = (v68 + a2 - ((2 * v68) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v73)];
  v147 = ((v37 >> 25) + 216521882 - ((2 * (v37 >> 25)) & 0x19CFB934)) ^ *&v79[4 * v144];
  LODWORD(v68) = (v68 + 216521882 - ((2 * v68) & 0x19CFB934)) ^ *&v79[4 * v55];
  LODWORD(v69) = *&v79[4 * v73] ^ (v69 + 216521882 - ((2 * v69) & 0x19CFB934));
  v148 = (v147 + a2 - ((2 * v147) & 0xCED1022C)) ^ *&v86[4 * HIBYTE(v143)];
  LODWORD(v69) = (v69 + 764726603 - ((2 * v69) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v55)];
  v149 = *&v77[4 * BYTE2(v73)];
  DWORD1(v37) = v149 ^ v14;
  LODWORD(v37) = v149 ^ v18;
  v150 = *&v86[4 * HIBYTE(v144)] ^ 0x5B724F4F ^ (v69 + a2 - ((2 * v69) & 0xCED1022C));
  LODWORD(v55) = (v145 + a2 - ((2 * v145) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v55)] ^ (v37 >> 25) ^ 0x6168A23E;
  LODWORD(v73) = *&v76[4 * BYTE1(v73)] ^ 0x55B8C5CE ^ (v148 + 764726603 - ((2 * v148) & 0x5B299A96));
  LODWORD(v69) = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v69 ^ v14;
  LODWORD(v37) = v69 ^ v18;
  LODWORD(v69) = v37 >> 25;
  v151 = *&v77[4 * BYTE2(v150)];
  DWORD1(v37) = v151 ^ v14;
  LODWORD(v37) = v151 ^ v18;
  v152 = ((v37 >> 25) + 764726603 - ((2 * (v37 >> 25)) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v73)];
  LODWORD(v69) = (v69 + 216521882 - ((2 * v69) & 0x19CFB934)) ^ *&v79[4 * v150];
  v153 = *&v76[4 * BYTE1(v150)] ^ *&v79[4 * v73];
  LODWORD(v69) = (v69 + 764726603 - ((2 * v69) & 0x5B299A96)) ^ *&v76[4 * ((v68 ^ 0x9654) >> 8)];
  v154 = (v152 + 216521882 - ((2 * v152) & 0x19CFB934)) ^ *&v79[4 * v55];
  v155 = *&v77[4 * BYTE2(v73)];
  DWORD1(v37) = v155 ^ v14;
  LODWORD(v37) = v155 ^ v18;
  v156 = *&v86[4 * HIBYTE(v150)] ^ *&v79[4 * (v68 ^ 0x54)] ^ 0x6B8F5D8C ^ (v37 >> 25);
  v157 = *&v77[4 * ((v68 ^ 0xFE9654) >> 16)];
  DWORD1(v37) = v157 ^ v14;
  LODWORD(v37) = v157 ^ v18;
  v158 = (v69 + a2 - ((2 * v69) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v73)];
  LODWORD(v73) = (v156 + 764726603 - ((2 * v156) & 0x5B299A96)) ^ *&v76[4 * BYTE1(v55)];
  LODWORD(v69) = *&v86[4 * BYTE3(v55)];
  LODWORD(v55) = *&v86[4 * BYTE3(v68)] ^ 0x6C6B9CF9 ^ (v154 + a2 - ((2 * v154) & 0xCED1022C));
  LODWORD(v68) = v73 ^ 0xFFE590EC;
  v159 = *&v77[4 * (BYTE2(v73) ^ 0x80)];
  LODWORD(v73) = v69 ^ (v37 >> 25) ^ 0xCB50F71C ^ ((v153 ^ 0x217311D1) + a2 - 2 * ((v153 ^ 0x217311D1) & (a2 + 8) ^ v153 & 8));
  DWORD1(v37) = v159 ^ v14;
  LODWORD(v37) = v159 ^ v18;
  LODWORD(v69) = ((v37 >> 25) + 764726603 - ((2 * (v37 >> 25)) & 0x5B299A96)) ^ *&v76[4 * ((v158 ^ 0x1678) >> 8)];
  LODWORD(v69) = (v69 + 216521882 - ((2 * v69) & 0x19CFB934)) ^ *&v79[4 * v73];
  v160 = *&v77[4 * BYTE2(v55)];
  DWORD1(v37) = v160 ^ v14;
  LODWORD(v37) = v160 ^ v18;
  v161 = *&v79[4 * (v158 ^ 0x78)] ^ *&v76[4 * BYTE1(v68)] ^ (v37 >> 25);
  v162 = *&v77[4 * (BYTE2(v158) ^ 0xA1)];
  DWORD1(v37) = v162 ^ v14;
  LODWORD(v37) = v162 ^ v18;
  v163 = ((v37 >> 25) + a2 - ((2 * (v37 >> 25)) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v68)];
  v164 = (v69 + a2 - ((2 * v69) & 0xCED1022C)) ^ *&v86[4 * BYTE3(v55)];
  v165 = (v163 + 216521882 - ((2 * v163) & 0x19CFB934)) ^ *&v79[4 * v55];
  LODWORD(v55) = *&v76[4 * BYTE1(v55)] ^ *&v86[4 * ((v158 ^ 0x62C41678u) >> 24)] ^ (*&v77[4 * BYTE2(v73)] << 7) ^ (*&v77[4 * BYTE2(v73)] >> 25) ^ 0x5911DFF5;
  LODWORD(v69) = ((v161 ^ 0x217311D1) + a2 - 2 * ((v161 ^ 0x217311D1) & (a2 + 8) ^ v161 & 8)) ^ *&v86[4 * BYTE3(v73)];
  v166 = (v55 + 216521882 - ((2 * v55) & 0x19CFB934)) ^ *&v79[4 * v68];
  LODWORD(v79) = *&v76[4 * BYTE1(v73)];
  v167 = v165 + 764726603 - ((2 * v165) & 0x5B299A96);
  LODWORD(v55) = v69 ^ 0xF4B67A5B;
  LODWORD(v73) = v164 ^ 0xC5E485D;
  LOBYTE(v68) = v166 ^ 0x47;
  v168 = v79 ^ 0x5D479BEB;
  v169 = *(&off_1F5DB1610 + (v21 ^ 0x159B)) - 8;
  v170 = *&v169[4 * (HIBYTE(v164) ^ 0x6A)];
  DWORD1(v37) = v170 ^ 0xD23C0B;
  LODWORD(v37) = v170 ^ 0xFC000000;
  LODWORD(v77) = v168 ^ v167;
  v171 = *(&off_1F5DB1610 + (v21 ^ 0x15B5)) - 12;
  v172 = *&v171[4 * ((v69 ^ 0x7A5B) >> 8)];
  v173 = (*&v171[4 * (((v166 ^ 0xD247) >> 8) ^ 0x1C)] + 1788523339) ^ (v37 >> 24);
  v174 = *(&off_1F5DB1610 + (v21 ^ 0x148F));
  v175 = (v172 - ((2 * v172 + 1429563030) & 0x4603E906) - 1919113266) ^ *(v174 + 4 * v73);
  LODWORD(v69) = (v173 + 587330691 - ((2 * v173) & 0x4603E906)) ^ *(v174 + 4 * (v69 ^ 0x8Fu));
  v176 = *(&off_1F5DB1610 + (v21 ^ 0x154D)) - 4;
  v177 = *&v176[4 * BYTE2(v55)] ^ (*&v171[4 * BYTE1(v73)] - ((2 * *&v171[4 * BYTE1(v73)] + 355821206) & 0x3D57A23A) + 155616360);
  v178 = *&v169[4 * (v77 >> 24)];
  DWORD1(v37) = v178 ^ 0xD23C0B;
  LODWORD(v37) = v178 ^ 0xFC000000;
  LODWORD(v86) = v166 ^ 0xF77FBA1D;
  v179 = (v175 - 1632906979 - ((2 * v175) & 0x3D57A23A)) ^ *&v176[4 * ((v166 ^ 0xF77FBA1D) >> 16)] ^ (v37 >> 24);
  LODWORD(v73) = *(v174 + 4 * (v68 ^ 0x8Eu)) ^ *&v176[4 * BYTE2(v73)] ^ (*&v171[4 * BYTE1(v77)] + 1788523339);
  LODWORD(v68) = *&v169[4 * (v86 >> 24)];
  DWORD1(v37) = v68 ^ 0xD23C0B;
  LODWORD(v37) = v68 ^ 0xFC000000;
  LODWORD(v68) = *&v176[4 * BYTE2(v77)] ^ (v69 - 1632906979 - ((2 * v69) & 0x3D57A23A));
  LODWORD(v174) = ((v177 ^ (v37 >> 24)) + 587330691 - ((2 * (v177 ^ (v37 >> 24))) & 0x4603E906)) ^ *(v174 + 4 * v77);
  LODWORD(v55) = *&v169[4 * BYTE3(v55)];
  v180 = *(&off_1F5DB1610 + (v21 ^ 0x1533)) - 4;
  *(a6 + (v24 | 1)) = ~v180[((v68 ^ 0xBD206F14) >> 16) ^ 0xC1];
  v181 = *(&off_1F5DB1610 + (v21 ^ 0x155A)) - 8;
  LODWORD(v55) = v73 ^ (v55 << 8) ^ BYTE3(v55);
  *(a6 + v197) = (v181[v174 ^ 0x7ALL] + 103) ^ 0x21;
  v182 = v55 ^ 0x51CE48D1;
  *(a6 + v201) = (v181[v179 ^ 0xE7] + 103) ^ 0x35;
  *(a6 + v194) = v180[((v55 ^ 0x174D7BDB) >> 16) ^ 0xADLL] ^ 0xD1;
  v183 = *(&off_1F5DB1610 + (v21 ^ 0x15BD)) - 8;
  *(a6 + v195) = ((BYTE1(v182) ^ 0x1E) + v183[BYTE1(v182) ^ 0xC2] - 15) ^ 0x9C;
  *(a6 + v198) = (v181[v68 ^ 0x6ALL] + 103) ^ 0x67;
  v184 = v183[BYTE1(v68) ^ 2];
  *(a6 + (v24 | 2)) = ((BYTE1(v68) ^ 0xDE) + v184 - 15) ^ 0x1E;
  *(a6 + v203) = (v181[v55 ^ 0x13] + 103) ^ 0x40;
  *(a6 + v199) = ((BYTE1(v179) ^ 4) + v183[BYTE1(v179) ^ 0xD8] - 15) ^ 0xB7;
  v185 = *(&off_1F5DB1610 + v21 - 5376) - 12;
  *(a6 + v24) = v185[BYTE3(v68) ^ 0x9BLL] ^ 0x3E;
  *(a6 + v200) = v185[v182 >> 24] ^ 0xED;
  *(a6 + *(v20 - 176)) = v180[((v179 ^ 0xC7D34C0C) >> 16) ^ 0x35] ^ 0xE3;
  *(a6 + v202) = v180[((v174 ^ 0x80B39E4B) >> 16) ^ 5] ^ 0xBE;
  *(a6 + *(v20 - 168)) = v185[HIBYTE(v179) ^ 0xB1] ^ 0x35;
  *(a6 + *(v20 - 160)) = ((BYTE1(v174) ^ 0x87) + v183[BYTE1(v174) ^ 0x5BLL] - 15) ^ 0x43;
  LOBYTE(v180) = v185[BYTE3(v174) ^ 0xBBLL];
  v186 = *(v20 - 148);
  v187 = HIDWORD(a7) < 0x3D00687;
  *(a6 + v204) = v180 ^ 0x1A;
  v188 = v187 ^ ((v186 + 63964823) < 0x3D00687);
  v189 = (v186 + 63964823) < HIDWORD(a7);
  if (v188)
  {
    v189 = HIDWORD(a7) < 0x3D00687;
  }

  v190 = *(a12 + 8 * ((3664 * v189) ^ v21));
  return v190(v190, v187, v188, v186, HIDWORD(a7), v184, 194, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v192, v193, v194, v195, v196, v197);
}

uint64_t sub_1E32EF7EC(uint64_t a1)
{
  if (v1)
  {
    v4 = ((2 * v2) & 0xFFB649DC) + (v2 ^ 0xFFDB24EE) == -2415378;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((457 * v5) ^ 0x18F3u)))(a1);
}

uint64_t sub_1E32EF83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, int a19, int a20, char a21, uint64_t a22, char *a23, int a24, char a25, int a26, unsigned int a27, char *a28, char *a29, char *a30, char *a31)
{
  a28 = a23;
  a29 = &a25;
  LODWORD(a30) = (v31 - 1349) ^ (1710126949 * ((2 * (&a26 & 0x9A887F8) - &a26 - 162039806) ^ 0xC44C2392));
  a31 = &a18;
  (*(v32 + 8 * (v31 + 4900)))(&a26);
  a28 = &a16;
  a30 = a23;
  LODWORD(a29) = v31 + 956911519 * ((((2 * &a26) | 0x4C663028) - &a26 + 1506600940) ^ 0x4CA26811) + 4605;
  (*(v32 + 8 * (v31 + 4939)))(&a26);
  a28 = a23;
  a29 = &a21;
  a27 = (v31 - 1455) ^ (33731311 * ((2 * (&a26 & 0x6C2F6598) - &a26 + 332438117) ^ 0x2A265046));
  (*(v32 + 8 * (v31 + 4894)))(&a26);
  LODWORD(a29) = v31 - 2008441969 * ((&a26 - 1079935626 - 2 * (&a26 & 0xBFA17D76)) ^ 0xF7382978) + 978;
  a28 = a23;
  v33 = (*(v32 + 8 * (v31 + 4944)))(&a26);
  return (*(v32 + 8 * ((60 * (a26 == ((599 * (v31 ^ 0x124E)) ^ 0xF8187C))) ^ v31)))(v33);
}

uint64_t sub_1E32EFAF8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (v2 - 2299) | 0x1414;
  *v4 = a1;
  *v3 = a2;
  v12 = v10;
  v13 = (v7 + 3198) ^ (1824088897 * ((((2 * &v11) | 0x1A25E81C) - &v11 + 1928137714) ^ 0xD57B276C));
  (*(v5 + 8 * (v7 ^ 0x3190)))(&v11);
  v12 = v9;
  v13 = ((v7 ^ 0x1C63) + 6171) ^ (1824088897 * ((&v11 & 0xA595133C | ~(&v11 | 0xA595133C)) ^ 0x2033FA1));
  (*(v5 + 8 * ((v7 ^ 0x1C63) + 7437)))(&v11);
  return (v6 - 16257999);
}

uint64_t sub_1E32EFB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFB47 ^ (v4 - 3057)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((2207 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1E32EFB54()
{
  v4 = (*(v1 + 8 * (v3 + 2329)))(*v2, *(v0 + 8 * (v3 - 7235)) - 4);
  **(v0 + 8 * (v3 ^ 0x1CBB)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((((v3 - 5407) | 0x807) ^ 0xFFFFEEA0) + ((v3 + 1502716697) & 0xA66E5F7F))) ^ v3)))();
}

uint64_t sub_1E32EFBE0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x3DB6));

  return v3(v1);
}

uint64_t sub_1E32EFC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16, unsigned int a17, uint64_t a18, int *a19)
{
  a17 = (v20 - 331) ^ (33731311 * (&a16 ^ 0x39F6CA23));
  a18 = a11;
  a19 = &a13;
  v21 = (*(v19 + 8 * (v20 + 6018)))(&a16);
  return (*(v19 + 8 * (((a13 != 0) * (((v20 - 3555) | 0x2051) - 8176)) ^ (v20 + 1742))))(v21);
}

uint64_t sub_1E32EFCFC(uint64_t a1)
{
  v3 = v1 ^ 0x30EA;
  v4 = (*(v2 + 8 * ((v1 ^ 0x30EA) + 1203)))(a1, 2632289750) == 0;
  return (*(v2 + 8 * ((v4 * ((v3 - 1572) ^ (v3 - 1558))) ^ v3)))();
}

void sub_1E32EFDB4()
{
  LODWORD(STACK[0xAD4]) = 16215976;
  STACK[0x628] = v1;
  LODWORD(STACK[0x81C]) = 16215976;
  STACK[0x8B8] = *(v2 + 8 * (v0 ^ 0x1746));
  JUMPOUT(0x1E32EC6C0);
}

uint64_t sub_1E32EFE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = v19 + 1317436891 * (((&a17 | 0x3685EDEB) - (&a17 & 0x3685EDEB)) ^ 0x8686759D) + 6108;
  v22 = (*(v20 + 8 * (v19 + 7591)))(&a17);
  return (*(v20 + 8 * ((3240 * (a18 == ((3 * (v19 ^ 0x4DF)) ^ (v21 + v19 - 289)))) ^ v19)))(v22);
}

uint64_t sub_1E32EFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v24 = ((&a17 & 0x7F08D079 | ~(&a17 | 0x7F08D079)) ^ 0xD89EFCE4) * v22;
  a21 = -654855621 - v24;
  a22 = v24 + a9 + 1674574348;
  a19 = a13;
  a20 = &a12;
  a18 = v24 - 1946289782;
  v25 = (*(v23 + 8 * (a9 ^ 0x3716u)))(&a17);
  return (*(v23 + 8 * (((a17 == 16257999) * (((1248 * (a9 ^ 0x129D) - 3231) | 0x1030) ^ 0x23E3)) ^ a9)))(v25);
}

uint64_t sub_1E32EFFA0(int a1)
{
  v5 = (v4 ^ 0x32B5) - 2973;
  v6 = 2048652491 * ((((2 * v9) | 0xCB0F4A66) - v9 + 444095181) ^ 0x54363236);
  v9[0] = (a1 ^ 0x77F933EF) + v6 + ((2 * a1) & 0xEFF267DE) + (v5 ^ 0x88FEDA3A);
  v9[1] = (v4 ^ 0x32B5) - v6 + 2753;
  v10 = &v8;
  (*(v2 + 8 * (v4 ^ 0x63D)))(v9);
  v10 = *v3;
  v9[0] = v5 + 1358806181 * (((v9 | 0xC91D78FB) + (~v9 | 0x36E28704)) ^ 0xF6321479) + 1865;
  result = (*(v2 + 8 * (v5 ^ 0x2066)))(v9);
  *(v1 + 4) = v8;
  return result;
}

uint64_t sub_1E32F0038(uint64_t a1)
{
  v2 = 1358806181 * ((((2 * a1) | 0x17272C214689DF5ALL) - a1 + 0x746C69EF5CBB1053) ^ 0xDE4926039C6B832ELL);
  result = (*(*(&off_1F5DB1610 + v2 + *(a1 + 32) + 1631615317) - 4))(v2 ^ *(a1 + 28) ^ 0xC91495AF, v2 ^ *(a1 + 8) ^ 0x5771A9AFF3F1E84FLL, (*(a1 + 40) - v2 - 774302606), *(a1 + 48), (v2 + *(a1 + 24) - 499851591), *(a1 + 16), *a1);
  *(a1 + 36) = (result ^ 0x50FA93FF) - 1342341168 + ((2 * result) & 0xA1F527FE);
  return result;
}

uint64_t sub_1E32F0154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = v16 + 1317436891 * (((&a12 | 0x6EE403A4) - &a12 + (&a12 & 0x911BFC58)) ^ 0xDEE79BD2) + 3578;
  a12 = &a11;
  v17 = (*(v14 + 8 * (v16 + 5061)))(&a12);
  return (*(v14 + 8 * (((a13 != v15) * ((v16 ^ 0xC) - 4576)) ^ v16)))(v17);
}

void sub_1E32F01E4(uint64_t a1)
{
  v1 = *(a1 + 4) + 1358806181 * ((2 * (a1 & 0x7EFA1611) - a1 + 17164782) ^ 0x3E2A856D);
  v2 = *(&off_1F5DB1610 + (v1 ^ 0xE5C)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x2AE9)])(16, 0x20040A4A59CD2) == 0) * (v1 - 8227 + ((v1 + 958500523) & 0xC6DE72F9))) ^ v1)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E32F035C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v19 = (a7 + (a6 ^ 0x6AE8EB13) + *(v14 + 4 * a7) * v17 + 103853426) * v9 - a2 - 1878774459;
  v20 = ((a8 ^ a4 ^ (v19 + (v19 - (((v19 * v15) >> 32) >> 11) * v16) * v8)) + v13) ^ v10;
  v21 = a4 - v20;
  v22 = a8 - v20;
  v23 = v20 ^ v13;
  v24 = v23 + a5 + ((a4 - v20) ^ __ROR4__(v20, 31) ^ v22);
  v25 = v24 + v22;
  v26 = v21 - v24;
  v27 = v24 ^ v23;
  HIDWORD(v28) = v24;
  LODWORD(v28) = v24;
  v29 = (((v28 >> 31) + v26 - v25) ^ v27) + v12;
  v30 = v29 ^ v26;
  v31 = v29 + v25 + (v29 ^ v27) + (v30 ^ __ROR4__(v29, 29));
  return (*(v18 + 8 * ((10824 * (a7 == 73)) ^ a6)))(a1, v31 ^ v11, a3, v31 ^ v11 ^ v30);
}

uint64_t sub_1E32F0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, void *a6)
{
  v9 = 2383 * ((3 * (v6 ^ 0x1038)) ^ 0xD30);
  *a6 = a1;
  *a5 = v14;
  v10 = 96 * (v9 ^ 0x12B9);
  v16 = v12;
  v17 = (v9 + 3580) ^ ((((&v15 | 0xF7945D8A) - &v15 + (&v15 & 0x86BA270)) ^ 0xAFFD8EE8) * v7);
  (*(v8 + 8 * (v9 + 4846)))(&v15);
  v16 = v13;
  v17 = (v10 + 4602) ^ ((((&v15 | 0x71892B0) - &v15 + (&v15 & 0xF8E76D48)) ^ 0x5F7141D2) * v7);
  (*(v8 + 8 * (v10 + 5868)))(&v15);
  return 0;
}

uint64_t sub_1E32F0590()
{
  v4 = (v0 + 1844304799) & 0x92120C5E;
  v5 = 3961 * (v4 ^ 0xC1C);
  (*(v3 + 8 * (v4 ^ 0x299A)))();
  v6 = STACK[0x400];
  *(v1 + 40) = 0;
  v7 = 2 * (v2 - 232);
  *(v2 - 232) = v5 - 1710126949 * (((v7 | 0x982033D6) - (v2 - 232) - 1276123627) ^ 0x7E0B427B) - 1173;
  (*(v6 + 8 * (v5 ^ 0x3B6F)))(v2 - 232);
  *(v2 - 216) = v5 - 33731311 * (((v7 | 0x474387DC) - (v2 - 232) + 1549679634) ^ 0x9A5709CD) - 1189;
  (*(STACK[0x400] + 8 * (v5 + 1725)))(v2 - 232);
  return (*(STACK[0x400] + 8 * (((STACK[0x618] == 0) * (86 * (v5 ^ 0x1E9C) + ((v5 + 53) ^ 0xFFFFC3C6))) ^ v5)))();
}

uint64_t sub_1E32F05D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, unint64_t a28, uint64_t a29, _DWORD *a30)
{
  *a30 = (((5119 - v31) & ~(v31 ^ 0x13FF) | v31 & 0xFFFFEC00) & 0x80000000) == 0;
  v34 = (((v30 >> 11) ^ v30) << 7) & 0x9D2C5680 ^ (v30 >> 11) ^ v30;
  *(*a26 + a28) ^= v32 & (v34 << 15) ^ v34 ^ ((v32 & (v34 << 15) ^ v34) >> 18);
  return (*(v33 + 8 * ((63 * (a28 > 0x1FB)) ^ 0x239F)))();
}

uint64_t sub_1E32F063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = STACK[0x5A0];
  *(STACK[0x5A0] + (a1 ^ 0x2DD2E) % 0x3C1) = -13;
  *(a16 + (((0x2DBC7 * v16) >> 64) >> 7) * v17) = -14;
  return (*(v18 + 8 * a1))(a1, v19, 0, a4, a5, a1 ^ 0x1356, 187335, a16, a9, a10, a11);
}

uint64_t sub_1E32F06F4@<X0>(int a1@<W1>, char a2@<W8>)
{
  v14.val[1].i64[0] = (v6 + 13) & 0xF;
  v14.val[1].i64[1] = (v6 + 12) & 0xF;
  v14.val[2].i64[0] = (v6 + 11) & 0xF;
  v14.val[2].i64[1] = (v6 + 10) & 0xF;
  v14.val[3].i64[0] = (v6 + 9) & 0xF;
  v14.val[3].i64[1] = a2 & 0xF ^ 3;
  v15.val[0].i64[0] = (v6 + 7) & 0xF;
  v15.val[0].i64[1] = (v6 + 6) & 0xF;
  v15.val[1].i64[0] = (v6 + 5) & 0xF;
  v15.val[1].i64[1] = (v6 + 4) & 0xF;
  v15.val[2].i64[0] = (v6 + 3) & 0xF;
  v15.val[2].i64[1] = (v6 + 2) & 0xF;
  v8 = *(v7 - 136);
  v15.val[3].i64[0] = (v6 + 1) & 0xF;
  v15.val[3].i64[1] = v6 & 0xF;
  v9.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v9.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v10.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v10.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v11 = ((a1 - 1053) | 0x10Eu) - 2831 + v6;
  v14.val[0].i64[0] = v11 & 0xF;
  v14.val[0].i64[1] = (v6 + 14) & 0xF;
  v12.i64[0] = vqtbl4q_s8(v14, xmmword_1E4316E10).u64[0];
  v12.i64[1] = vqtbl4q_s8(v15, xmmword_1E4316E10).u64[0];
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v2 - 15 + v11), *(v4 + v14.val[0].i64[0] - 15)), veorq_s8(*(v5 + v14.val[0].i64[0] + 1 - 15), *(v3 + v14.val[0].i64[0] + 1 - 15))));
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15.val[0], v15.val[0], 8uLL), v10), vmulq_s8(v12, v9)));
  *(*(v7 - 144) - 15 + v11) = vextq_s8(v15.val[0], v15.val[0], 8uLL);
  return (*(v8 + 8 * ((5412 * ((v6 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_1E32F0870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, int a24)
{
  v26 = 1824088897 * ((((&a19 | 0xFC4A173C) ^ 0xFFFFFFFE) - (~&a19 | 0x3B5E8C3)) ^ 0x5BDC3BA1);
  a21 = a17;
  a22 = &a14;
  a23 = -1574372683 - v26;
  a24 = v26 + 1674577224 + v24;
  a20 = v26 - 1619556640;
  v27 = (*(v25 + 8 * (v24 ^ 0x22EA)))(&a19);
  return (*(v25 + 8 * (((a19 == (((v24 - 1881) | 0xC00) ^ 0xF81FC6)) * (((v24 - 158079331) & 0x5D7E767E) - 1410482056)) ^ v24)))(v27);
}

uint64_t sub_1E32F095C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 843188657) & 0x706E1F3F ^ 0xFFFFFFFFFFFFEFE1) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((498 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v3 - 1565513264))))();
}

uint64_t sub_1E32F09D4@<X0>(int a1@<W8>)
{
  STACK[0x9E8] = v1;
  v4 = STACK[0x6C0];
  STACK[0x9F0] = STACK[0x6C0];
  return (*(v3 + 8 * (((v1 - v4 > ((262 * v2) ^ 0x31BuLL)) * ((869 * (a1 ^ 0xA2D)) ^ 0x16F3)) ^ a1)))();
}

uint64_t sub_1E32F0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v21 = a1 + 16;
  v22 = (v21 ^ a5 ^ v19) + v17;
  v23 = v22 & 0xF;
  v25.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v25.i64[1] = a12;
  v26 = vrev64q_s8(vmulq_s8(v25, a13));
  *(a4 + v22) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v23 - 15), *(a2 + v22)), veorq_s8(*(v15 + v23 - 15), *(v16 + v23 - 15))), vextq_s8(v26, v26, 8uLL));
  return (*(v20 + 8 * (((v14 == v21) * a6) ^ v18)))();
}

uint64_t sub_1E32F0DC0@<X0>(unint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + v3) = 0;
  v7 = v3 >= a1 || v3 + 840616316 >= v2;
  return (*(v5 + 8 * ((7 * v7) ^ v4)))();
}

uint64_t sub_1E32F0E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (v8 - 837729763) & 0x31EEB5DB;
  v14 = (a8 ^ v10) + LODWORD(STACK[0x2F0]) + ((v13 + 630489910) & (2 * a8));
  v15 = STACK[0x570];
  v16 = STACK[0x55C];
  v17 = (a8 + 837833564) ^ (LODWORD(STACK[0x570]) + 552306858);
  v18 = a8 + LODWORD(STACK[0x55C]) + (v17 ^ 0xF169DEBF);
  v19 = STACK[0x560];
  v20 = STACK[0x56C];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x2AC]) - LODWORD(STACK[0x56C]);
  v21 = a3 + 522586324 + LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x404]) = LODWORD(STACK[0x2A8]) - v12;
  v22 = v9 ^ 0xF169DEBF ^ (a3 + 522586324);
  v23 = v20 + LODWORD(STACK[0x2E4]);
  LODWORD(STACK[0x41C]) = LODWORD(STACK[0x2A0]) + v22;
  v24 = v22 + a3 + v19 + 256403140;
  LODWORD(STACK[0x584]) = v18 - 401106135;
  LODWORD(STACK[0x400]) = LODWORD(STACK[0x298]) - a8 + 1240147798;
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x294]) - (((v17 ^ 0x330AF639) - 760156044) ^ ((v17 ^ 0x4A57209D) - 1410521384) ^ ((v17 ^ 0x8834081B) + 1770917458));
  LODWORD(STACK[0x590]) = v24;
  LODWORD(STACK[0x588]) = v22 ^ v12 ^ v24;
  LODWORD(STACK[0x580]) = a8 + 1936462500;
  LODWORD(STACK[0x57C]) = (a8 + v16 - 1230725037) ^ 0xBF243D3E;
  LODWORD(STACK[0x58C]) = v20 ^ 0xF169DEBF ^ v17 ^ (v18 + 151200723);
  LODWORD(STACK[0x56C]) = (a3 + v19 - 1125522620) ^ 0xBF243D3E;
  LODWORD(STACK[0x5A8]) = a3 + 1936462500;
  v25 = STACK[0x2F4];
  v26 = STACK[0x2F8];
  v27 = STACK[0x2B8];
  v28 = STACK[0x2B0];
  v29 = STACK[0x31C];
  v30 = STACK[0x288];
  v31 = v12;
  v32 = STACK[0x2EC];
  STACK[0x320] = STACK[0x328];
  STACK[0x358] = STACK[0x358];
  LODWORD(STACK[0x438]) = 0;
  LODWORD(STACK[0x3F0]) = v28 - v9;
  LODWORD(STACK[0x3F4]) = v21 + ((v13 - 2010) ^ (v13 - 930) ^ 0x3BDCC673);
  LODWORD(STACK[0x3FC]) = v15 + v26 - 1589807827;
  LODWORD(STACK[0x410]) = v19 + v32 - 1505105975;
  LODWORD(STACK[0x3F8]) = (((v27 ^ 0x1C4D19AF) - 474814895) ^ ((v27 ^ 0x4FD54AD4) - 1339378388) ^ ((v27 ^ 0x8F48F808) + 1891043320)) - a3 - 399201198;
  LODWORD(STACK[0x3E8]) = v14 + 1668384471;
  LODWORD(STACK[0x40C]) = v31 + v25 - 1955212092;
  LODWORD(STACK[0x3D8]) = v29;
  LODWORD(STACK[0x408]) = v29 + ((55 - v29) & 0x3F) + 9;
  v33 = *(v11 + 8 * (v13 ^ (862 * (STACK[0x420] & 1))));
  LODWORD(STACK[0x370]) = v30;
  LODWORD(STACK[0x3E0]) = v30;
  return v33((v23 - 62195251));
}

uint64_t sub_1E32F1030()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((((v3 - 232) | 0x3FD401DF) - ((v3 - 232) & 0x3FD401DF)) ^ 0x1328B0A4));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *(v1 + 8) = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * (v0 - 4528)))(v4);
}

uint64_t sub_1E32F1110(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = v18 + a12 + a13 + a15 - a11;
  STACK[0x3B0] = v19 + 0x32040020C880805;
  STACK[0x3A0] = v19 + 0x32040020C8807FELL;
  STACK[0x390] = v19 + 0x32040020C8807FFLL;
  STACK[0x380] = v19 + 0x32040020C880800;
  STACK[0x370] = v19 + 0x32040020C880801;
  STACK[0x360] = v19 + 0x32040020C880802;
  STACK[0x350] = v19 + 0x32040020C880803;
  STACK[0x340] = v19 + v15;
  STACK[0x330] = v19 + v16;
  STACK[0x310] = a15 & 0xFFFFFFF8;
  STACK[0x320] = a11 - (a15 & 0xFFFFFFF8) + 8;
  v20 = v17 + a15 - a11;
  v21.i64[0] = v20 - 5;
  v21.i64[1] = v20 - 6;
  v22.i64[0] = v20 - 3;
  v22.i64[1] = v20 - 4;
  v23.i64[0] = v20 - 1;
  v23.i64[1] = v20 - 2;
  v24 = STACK[0x3C0];
  v25 = ((LODWORD(STACK[0x3C0]) - 1658) | 0x584u) ^ 0xFFFFFFFFFFFFFA7CLL;
  v26.i64[0] = v20 - 7;
  v26.i64[1] = v20 + v25;
  v27.i64[0] = STACK[0x3A0];
  v27.i64[1] = STACK[0x3B0] + v25;
  v28.i64[0] = STACK[0x330];
  v28.i64[1] = STACK[0x350];
  v29.i64[0] = STACK[0x360];
  v29.i64[1] = STACK[0x370];
  v30.i64[0] = STACK[0x380];
  v30.i64[1] = STACK[0x390];
  v31 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v32 = vdupq_n_s64(0x38uLL);
  LODWORD(v19) = STACK[0x320] == 0;
  v33 = vandq_s8(v26, v31);
  v34 = vandq_s8(v23, v31);
  v35 = vandq_s8(v22, v31);
  v36 = vandq_s8(v21, v31);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v41 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v42 = vaddq_s64(v40, v41);
  v43 = vaddq_s64(v39, v41);
  v44 = vaddq_s64(v38, v41);
  v45 = vaddq_s64(v37, v41);
  v46 = vdupq_n_s64(0x4CFAC71E5A50EC49uLL);
  v47 = vdupq_n_s64(a4);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(v45, v46), vorrq_s8(v45, v47)), v47);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(v44, v46), vorrq_s8(v44, v47)), v47);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(v43, v46), vorrq_s8(v43, v47)), v47);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v42, v46), vorrq_s8(v42, v47)), v47);
  v52 = vdupq_n_s64(0x513852535460B9BuLL);
  v53 = veorq_s8(v51, v52);
  v54 = veorq_s8(v50, v52);
  v55 = veorq_s8(v49, v52);
  v56 = veorq_s8(v48, v52);
  v57 = vdupq_n_s64(0xAD5560B2ACB07AC7);
  v58 = veorq_s8(v48, v57);
  v59 = veorq_s8(v49, v57);
  v60 = veorq_s8(v50, v57);
  v61 = veorq_s8(v51, v57);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v64 = vaddq_s64(v62, v58);
  v65 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v66 = veorq_s8(v64, v65);
  v67 = veorq_s8(v63, v65);
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v60), v65);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v61), v65);
  v70 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v72 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v73 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v74 = veorq_s8(v66, v70);
  v75 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v74);
  v79 = vaddq_s64(v75, v71);
  v80 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v81 = veorq_s8(v79, v80);
  v82 = veorq_s8(vaddq_s64(v76, v72), v80);
  v83 = veorq_s8(vaddq_s64(v77, v73), v80);
  v84 = veorq_s8(v78, v80);
  v85 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v88 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v89 = veorq_s8(v83, v87);
  v90 = veorq_s8(v82, v86);
  v91 = veorq_s8(v81, v85);
  v92 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v91);
  v96 = vaddq_s64(v94, v90);
  v97 = vaddq_s64(v93, v89);
  v98 = vaddq_s64(v92, v88);
  v99 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v100 = vdupq_n_s64(0x343B3FDCD10949FuLL);
  v101 = vdupq_n_s64(0x5A20053898C9EB80uLL);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v99)), v100), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v99)), v100), v101);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v99)), v100), v101);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v99)), v100), v101);
  v106 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v109 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v110 = veorq_s8(v104, v108);
  v111 = veorq_s8(v103, v107);
  v112 = veorq_s8(v102, v106);
  v113 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v112);
  v117 = vaddq_s64(v115, v111);
  v118 = vaddq_s64(v114, v110);
  v119 = vdupq_n_s64(0x20842EAD28A8535AuLL);
  v120 = vaddq_s64(v113, v109);
  v121 = vdupq_n_s64(a3);
  v122 = vsubq_s64(vorrq_s8(v116, v119), vorrq_s8(v116, v121));
  v123 = vsubq_s64(vorrq_s8(v117, v119), vorrq_s8(v117, v121));
  v124 = vsubq_s64(vorrq_s8(v118, v119), vorrq_s8(v118, v121));
  v125 = vaddq_s64(vsubq_s64(vorrq_s8(v120, v119), vorrq_s8(v120, v121)), v121);
  v126 = vdupq_n_s64(0x41C1B387D8B777ADuLL);
  v127 = veorq_s8(vaddq_s64(v122, v121), v126);
  v128 = veorq_s8(vaddq_s64(v123, v121), v126);
  v129 = veorq_s8(vaddq_s64(v124, v121), v126);
  v130 = veorq_s8(v125, v126);
  v131 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v134 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v135 = veorq_s8(v128, v132);
  v136 = veorq_s8(v127, v131);
  v137 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v136);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v135);
  v141 = vaddq_s64(v138, v134);
  v142 = vaddq_s64(v137, v133);
  v143 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v144 = vdupq_n_s64(a5);
  v145 = vaddq_s64(vsubq_s64(vorrq_s8(v142, v143), vorrq_s8(v142, v144)), v144);
  v146 = vaddq_s64(vsubq_s64(vorrq_s8(v141, v143), vorrq_s8(v141, v144)), v144);
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v143), vorrq_s8(v140, v144)), v144);
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v139, v143), vorrq_s8(v139, v144)), v144);
  v149 = vdupq_n_s64(0xF9A2B6AA6A94F821);
  v150 = veorq_s8(v148, v149);
  v151 = veorq_s8(v147, v149);
  v152 = veorq_s8(v146, v149);
  v153 = veorq_s8(v145, v149);
  v154 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v157), v161);
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v158), v161);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v159), v161);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160), v161);
  v166 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v169 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), veorq_s8(v162, v166));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), veorq_s8(v163, v167));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), veorq_s8(v164, v168));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v169);
  v174 = vdupq_n_s64(0x170BF460A85E9EEEuLL);
  v175 = vdupq_n_s64(0xF47A05CFABD0B088);
  v176 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), v174), v173), v175), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v174), v172), v175), v176);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v174), v171), v175), v176);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v174), v170), v175), v176);
  v181 = vandq_s8(vshlq_n_s64(v21, 3uLL), v32);
  v182 = vandq_s8(vshlq_n_s64(v22, 3uLL), v32);
  v183 = vshlq_u64(v180, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v32)));
  v184 = vshlq_u64(v179, vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v32)));
  v185 = vshlq_u64(v178, vnegq_s64(v182));
  v186 = vshlq_u64(v177, vnegq_s64(v181));
  v187 = vandq_s8(v30, v31);
  v188 = vandq_s8(v29, v31);
  v189 = vandq_s8(v28, v31);
  v190 = vandq_s8(v27, v31);
  v191 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v195 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v196 = vaddq_s64(v194, v195);
  v197 = vaddq_s64(v193, v195);
  v198 = vaddq_s64(v192, v195);
  v199 = vaddq_s64(v191, v195);
  v200 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v201 = vsubq_s64(v200, v191);
  v202 = vsubq_s64(v200, v192);
  v203 = vsubq_s64(v200, v193);
  v204 = vsubq_s64(v200, v194);
  v205 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v206 = vaddq_s64(vandq_s8(v201, v205), v199);
  v207 = vaddq_s64(vandq_s8(v202, v205), v198);
  v208 = vaddq_s64(vandq_s8(v203, v205), v197);
  v209 = vaddq_s64(vandq_s8(v204, v205), v196);
  v210 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v211 = vsubq_s64(v209, vandq_s8(v196, v210));
  v212 = vsubq_s64(v208, vandq_s8(v197, v210));
  v213 = vsubq_s64(v207, vandq_s8(v198, v210));
  v214 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v215 = vsubq_s64(v206, vandq_s8(v199, v210));
  v216 = veorq_s8(v215, v214);
  v217 = veorq_s8(v213, v214);
  v218 = veorq_s8(v212, v214);
  v219 = vdupq_n_s64(0xDB58A1A949065591);
  v220 = veorq_s8(v211, v214);
  v221 = veorq_s8(v211, v219);
  v222 = veorq_s8(v212, v219);
  v223 = veorq_s8(v213, v219);
  v224 = veorq_s8(v215, v219);
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v222);
  v227 = vdupq_n_s64(0xBC7AB44B3A189480);
  v228 = veorq_s8(vaddq_s64(v225, v221), v227);
  v229 = veorq_s8(v226, v227);
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v223), v227);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v224), v227);
  v232 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v233 = vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v232), v228);
  v234 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v235 = vaddq_s64(v233, v234);
  v236 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), v232), v229), v234);
  v237 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230, v230), v232), v230), v234);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v231, v231), v232), v231), v234);
  v239 = vdupq_n_s64(0x4553883189103385uLL);
  v240 = veorq_s8(v238, v239);
  v241 = veorq_s8(v237, v239);
  v242 = veorq_s8(v236, v239);
  v243 = veorq_s8(v235, v239);
  v244 = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v245 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v246 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v247 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v248 = veorq_s8(v241, v245);
  v249 = veorq_s8(v240, v244);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v249);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v248);
  v254 = vaddq_s64(v251, v247);
  v255 = vaddq_s64(v250, v246);
  v256 = vdupq_n_s64(0x78DE71CD2967B0CEuLL);
  v257 = vdupq_n_s64(0xBC6F38E694B3D867);
  v258 = vaddq_s64(vsubq_s64(v252, vandq_s8(vaddq_s64(v252, v252), v256)), v257);
  v259 = vaddq_s64(vsubq_s64(v253, vandq_s8(vaddq_s64(v253, v253), v256)), v257);
  v260 = vaddq_s64(vsubq_s64(v254, vandq_s8(vaddq_s64(v254, v254), v256)), v257);
  v261 = vaddq_s64(vsubq_s64(v255, vandq_s8(vaddq_s64(v255, v255), v256)), v257);
  v262 = vdupq_n_s64(0xF4B101A286E9DA33);
  v263 = veorq_s8(v261, v262);
  v264 = veorq_s8(v260, v262);
  v265 = veorq_s8(v259, v262);
  v266 = veorq_s8(v258, v262);
  v267 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v268 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v269 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v270 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v271 = veorq_s8(v265, v269);
  v272 = veorq_s8(v264, v268);
  v273 = veorq_s8(v263, v267);
  v274 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v273);
  v278 = vaddq_s64(v274, v270);
  v279 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v280 = veorq_s8(v278, v279);
  v281 = veorq_s8(vaddq_s64(v275, v271), v279);
  v282 = veorq_s8(vaddq_s64(v276, v272), v279);
  v283 = veorq_s8(v277, v279);
  v284 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v286 = vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL);
  v287 = veorq_s8(v283, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v288 = veorq_s8(v282, v286);
  v289 = veorq_s8(v281, v285);
  v290 = veorq_s8(v280, v284);
  v291 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v292 = vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL);
  v293 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v294 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v290);
  v295 = vaddq_s64(v293, v289);
  v296 = vaddq_s64(v292, v288);
  v297 = vaddq_s64(v291, v287);
  v298 = vdupq_n_s64(0xD02B2EB47D7683C6);
  v299 = vdupq_n_s64(0x6815975A3EBB41E3uLL);
  v300 = vdupq_n_s64(0x9A77953CE1639F61);
  v301 = veorq_s8(vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v298)), v299), v300);
  v302 = veorq_s8(vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v298)), v299), v300);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(v295, vandq_s8(vaddq_s64(v295, v295), v298)), v299), v300);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v294, vandq_s8(vaddq_s64(v294, v294), v298)), v299), v300);
  v305 = vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v308 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v309 = veorq_s8(v303, v307);
  v310 = veorq_s8(v302, v306);
  v311 = veorq_s8(v301, v305);
  v312 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL);
  v315 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v311);
  v316 = vaddq_s64(v314, v310);
  v317 = vaddq_s64(v313, v309);
  v318 = vdupq_n_s64(0xDBAE1F50DA30D8EFLL);
  v319 = vaddq_s64(v312, v308);
  v320 = vdupq_n_s64(a6);
  v321 = vsubq_s64(vorrq_s8(v315, v318), vorrq_s8(v315, v320));
  v322 = vsubq_s64(vorrq_s8(v316, v318), vorrq_s8(v316, v320));
  v323 = vsubq_s64(vorrq_s8(v317, v318), vorrq_s8(v317, v320));
  v324 = vaddq_s64(vsubq_s64(vorrq_s8(v319, v318), vorrq_s8(v319, v320)), v320);
  v325 = vdupq_n_s64(0x6210EF9D5C6DF912uLL);
  v326 = veorq_s8(vaddq_s64(v321, v320), v325);
  v327 = veorq_s8(vaddq_s64(v322, v320), v325);
  v328 = veorq_s8(vaddq_s64(v323, v320), v325);
  v329 = veorq_s8(v324, v325);
  v330 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v331 = vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v333 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL));
  v334 = veorq_s8(v328, v332);
  v335 = veorq_s8(v327, v331);
  v336 = veorq_s8(v326, v330);
  v337 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v339 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v340 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v336);
  v341 = vaddq_s64(v338, v334);
  v342 = vaddq_s64(v337, v333);
  v343 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v344 = veorq_s8(v342, v343);
  v345 = veorq_s8(v341, v343);
  v346 = veorq_s8(vaddq_s64(v339, v335), v343);
  v347 = veorq_s8(v340, v343);
  v348 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v349 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL)));
  v351 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v352 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), veorq_s8(v345, v349)), v351), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v32)));
  v353 = vshlq_u64(veorq_s8(v350, v351), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v32)));
  v355.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL))), v351), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v32))), v186);
  v355.val[1] = veorq_s8(v353, v185);
  v355.val[0] = veorq_s8(v352, v184);
  v355.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), veorq_s8(v344, v348)), v351), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v32))), v183);
  *STACK[0x340] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v355, xmmword_1E4316DF0)), *(v20 - 8));
  return (*(STACK[0x400] + 8 * ((249 * v19) ^ v24)))();
}