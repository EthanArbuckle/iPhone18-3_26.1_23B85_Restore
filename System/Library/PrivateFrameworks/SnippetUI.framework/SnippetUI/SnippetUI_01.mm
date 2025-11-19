uint64_t sub_26A4A99F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 28)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4A9AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
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

uint64_t sub_26A4A9C18()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A73E78C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A9C64()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A73E74C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A9CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E28);
  sub_26A692E14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4A9D30()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4A9E04()
{
  if (*(v0 + 25))
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 32);
  sub_26A49035C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A4A9EE0()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4A9FB8()
{
  if (*(v0 + 25))
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 32);
  sub_26A4D82E8(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A4AA074()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AA0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BE98();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_26A84E158();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4AA158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A84BE98();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_26A84E158();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4AA200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TableRowWatchCellViewModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_26A4AA2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TableRowWatchCellViewModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4AA3C4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AA450()
{
  sub_26A84F4F8();
  sub_26A69C384();
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AA4D0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AA548()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4AA634(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A4AA6C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4AA754()
{
  type metadata accessor for PopOver();
  OUTLINED_FUNCTION_6_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  MEMORY[0x26D665710](v3 + 16);
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A4AA88C()
{
  type metadata accessor for PopOver();
  OUTLINED_FUNCTION_6_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  MEMORY[0x26D665710](v3 + 16);
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A4AA9A8()
{
  type metadata accessor for PopOver();
  OUTLINED_FUNCTION_6_3();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  MEMORY[0x26D665710](v1 + v3 + 16);
  v6 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v7 + 8))(v1 + v3 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A4AAB44()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AAB84(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4AAC88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4AADAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26A4AAE68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_26A4AAF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84F4E8();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 44) + 88));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 40);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4AAFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84F4E8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4AB080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + 88));
  }

  v7 = sub_26A84F218();
  v8 = a1 + *(a3 + 40);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4AB0FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = sub_26A84F218();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4AB190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyRootView.ContentType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A4AB240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnyRootView.ContentType(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4AB2F8()
{
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A4AB354()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4AB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6ACCE8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A4AB514()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3678);
  sub_26A84F4F8();
  sub_26A6ACB90(&qword_2803B3680, &qword_2803B3678);
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AB59C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  sub_26A84F4F8();
  sub_26A6ACB90(&qword_28157FB50, &unk_2803B31B0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AB688()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B36A0);
  sub_26A84F4F8();
  sub_26A6AD2C0();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AB8D8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AB918(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[7];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4ABA4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4ABB90()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AD8);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4ABBF0@<X0>(void *a1@<X8>)
{
  result = sub_26A84F7F8();
  *a1 = v3;
  return result;
}

uint64_t sub_26A4ABC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84B158();
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

uint64_t sub_26A4ABD18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84B158();
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

uint64_t sub_26A4ABDD0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ActionHandler(0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
      v14 = a3[18];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[11]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4ABEF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return;
    }

    type metadata accessor for ActionHandler(0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
      v14 = a4[18];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4AC130()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4AC24C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4AC288()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AC2F0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  if (v3 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v14 = a3[8];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
        v14 = a3[10];
      }
    }

    v9 = v4 + v14;
    goto LABEL_13;
  }

  v10 = *(v4 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4AC46C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[5] + 224) = (v4 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
        v14 = a4[10];
      }
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_26A4AC604()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A58);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4AC688()
{
  OUTLINED_FUNCTION_6_1();
  v2 = sub_26A84B1D8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4AC6CC()
{
  OUTLINED_FUNCTION_6_1();
  v2 = sub_26A84B1D8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4AC798()
{
  v1 = sub_26A84E4B8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  OUTLINED_FUNCTION_2_5(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_26A84AEB8();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v11 + 8))(v0 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4AC910(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_7;
  }

  sub_26A84E4B8();
  OUTLINED_FUNCTION_179();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[8];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[9]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_26A4ACA54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      sub_26A84E4B8();
      OUTLINED_FUNCTION_179();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[8];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4ACBA4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4ACC3C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6CCE0C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4ACCC8()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A6CD118();
  *v0 = result;
  return result;
}

uint64_t sub_26A4ACCF4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A6CD098();
  *v0 = result;
  return result;
}

uint64_t sub_26A4ACD20()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6D0D88();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4ACDA0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[9];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[18];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[20] + 280);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4ACEA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[9];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[20] + 280) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[18];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4ACFB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E68);
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EE8);
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_3_11();
  sub_26A549F4C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_42();
  sub_26A549F4C();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AD0A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E68);
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEBA0);
  sub_26A84F4F8();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EE8);
  sub_26A84F4F8();
  sub_26A549F4C();
  swift_getWitnessTable();
  sub_26A549F4C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_42();
  sub_26A549F4C();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AD2A4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AD2E4()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4018);
  OUTLINED_FUNCTION_46();
  (*(v2 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A4AD344()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4018);
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A4AD3BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.containsComponentsWithActionSubject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A4AD3FC()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for SwitchView();
  OUTLINED_FUNCTION_37_0();
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_26A84E228();
  if (!OUTLINED_FUNCTION_25_6(v7))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v8 + 8))(v1 + v6, v2);
  }

  if (*(v1 + v6 + *(v0 + 20) + 8))
  {
  }

  v9 = OUTLINED_FUNCTION_4_57();
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_8_50(v11))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v12 + 8))(v4 + v10, v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_73();
  if (v13)
  {
    if ((*(v3 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v3);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v3 + 16);
  v14 = v4 + *(v9 + 44);
  v15 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_9_44(v15))
  {
    MEMORY[0x26D665710](v14);
    v16 = *(v3 + 24);
    v17 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_5_56(v17))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v14 + v16, v4);
    }

    OUTLINED_FUNCTION_11_38();

    OUTLINED_FUNCTION_11_38();
  }

  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A4AD630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for ActionHandler(0);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_26A4AD71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = type metadata accessor for ActionHandler(0);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4AD804()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
  type metadata accessor for CGRect();
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  OUTLINED_FUNCTION_6_48();
  sub_26A84FEE8();
  sub_26A84F4F8();
  sub_26A4EEF40();
  sub_26A851328();
  OUTLINED_FUNCTION_3_63();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84EDC8();
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84EDE8();
  sub_26A504FB4();
  sub_26A850028();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_73();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_53();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84F208();
  OUTLINED_FUNCTION_4_59();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A851128();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_5_57();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A4ADA24()
{
  v1 = sub_26A84F088();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26A4ADAF8()
{
  v1 = sub_26A84F088();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26A4ADBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84EA68();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v8) & 0xC) != 0)
    {
      return 16 - ((4 * v8) & 0xC | (v8 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26A4ADC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84EA68();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_26A4ADD3C()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4ADE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4230);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A4ADEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4230);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4ADF98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238);
  swift_getTupleTypeMetadata3();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  sub_26A851128();
  OUTLINED_FUNCTION_5_57();

  return swift_getWitnessTable();
}

uint64_t sub_26A4AE058()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AE098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 28)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4AE190()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 28)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 24);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4AE29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 32)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4AE33C()
{
  OUTLINED_FUNCTION_59_1();
  sub_26A84B1D8();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 20);

    __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 32)) = (v0 - 1);
  }
}

uint64_t sub_26A4AE3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BD28();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
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
}

uint64_t sub_26A4AE494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84BD28();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_26A4AE544()
{
  v1 = (type metadata accessor for TableCellDelayedLoadImageView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A4D82E8(*v2, *(v2 + 8));
  v3 = v1[7];
  sub_26A84BD28();
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_26A4AE670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410);
  OUTLINED_FUNCTION_179();
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

void sub_26A4AE774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410);
    OUTLINED_FUNCTION_179();
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

uint64_t sub_26A4AE8B4()
{
  v8 = *(v0 + 16);
  type metadata accessor for ControlLoadingView();
  OUTLINED_FUNCTION_37_0();
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));
  OUTLINED_FUNCTION_16_10();
  (*(v3 + 8))(v2, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (!OUTLINED_FUNCTION_9_44(AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_16_10();
    v5 = OUTLINED_FUNCTION_58_1();
    v6(v5);
  }

  sub_26A852068();
  sub_26A851088();

  return swift_deallocObject();
}

uint64_t sub_26A4AEA24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44E0);
  sub_26A84FE08();
  sub_26A850ED8();
  sub_26A84F198();
  sub_26A84F4F8();
  sub_26A6E2CD0();
  OUTLINED_FUNCTION_6_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_51();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_60();
  sub_26A6E30D8(v0, v1);
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4AEB30()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4AEC08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A6405F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4AEC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4658);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_26A84E8B8();
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 24)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4AED78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4658);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_26A84E8B8();
    OUTLINED_FUNCTION_179();
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

uint64_t sub_26A4AEE6C()
{
  type metadata accessor for PickerControlView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F138();
    OUTLINED_FUNCTION_1_4();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  v5 = *(v0 + 20);
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 8))(v1 + v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_26A4AEFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + 240));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_26A84E8B8();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_26A4AF080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 240) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_26A84E8B8();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4AF154()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46E0);
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A4AF214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A84E878();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A4AF244()
{
  type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  OUTLINED_FUNCTION_3_65();

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v0 + 24);
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v7 + 8))(v3 + v6);

  return swift_deallocObject();
}

uint64_t sub_26A4AF398()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AF43C()
{
  type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;
  sub_26A49035C(*(v1 + v3), *(v1 + v3 + 8));
  sub_26A49035C(*(v4 + 16), *(v4 + 24));
  sub_26A49035C(*(v4 + 32), *(v4 + 40));
  sub_26A49035C(*(v4 + 48), *(v4 + 56));
  sub_26A49035C(*(v4 + 64), *(v4 + 72));
  sub_26A49035C(*(v4 + 80), *(v4 + 88));
  sub_26A49035C(*(v4 + 96), *(v4 + 104));
  sub_26A49035C(*(v4 + 112), *(v4 + 120));
  sub_26A49035C(*(v4 + 128), *(v4 + 136));
  sub_26A49035C(*(v4 + 144), *(v4 + 152));

  v5 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 24);
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v4 + v7);

  return swift_deallocObject();
}

uint64_t sub_26A4AF620()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46E0);
  sub_26A6E7BE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4AF6A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5DA738();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4AF700()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AF750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A4AF834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4AF944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ImageStyleAppearance();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_26A84B2B8();
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4AFA40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ImageStyleAppearance();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_26A84B2B8();
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4AFB7C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4AFBBC()
{
  v1 = type metadata accessor for LongItemTextView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 9))
  {
    if ((*(v3 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + v2);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v3 + 16);
  sub_26A49035C(*(v3 + 24), *(v3 + 32));
  sub_26A49035C(*(v3 + 40), *(v3 + 48));
  sub_26A49035C(*(v3 + 56), *(v3 + 64));
  sub_26A49035C(*(v3 + 72), *(v3 + 80));
  sub_26A49035C(*(v3 + 88), *(v3 + 96));
  sub_26A49035C(*(v3 + 104), *(v3 + 112));
  sub_26A49035C(*(v3 + 120), *(v3 + 128));
  sub_26A49035C(*(v3 + 136), *(v3 + 144));
  sub_26A49035C(*(v3 + 152), *(v3 + 160));
  sub_26A49035C(*(v3 + 168), *(v3 + 176));

  sub_26A49035C(*(v3 + 312), *(v3 + 320));
  sub_26A49035C(*(v3 + 328), *(v3 + 336));
  sub_26A49035C(*(v3 + 344), *(v3 + 352));
  sub_26A49035C(*(v3 + 360), *(v3 + 368));
  sub_26A49035C(*(v3 + 376), *(v3 + 384));
  sub_26A49035C(*(v3 + 392), *(v3 + 400));
  sub_26A49035C(*(v3 + 408), *(v3 + 416));
  sub_26A49035C(*(v3 + 424), *(v3 + 432));
  sub_26A49035C(*(v3 + 440), *(v3 + 448));
  sub_26A49035C(*(v3 + 456), *(v3 + 464));

  sub_26A49035C(*(v3 + 600), *(v3 + 608));
  sub_26A49035C(*(v3 + 616), *(v3 + 624));
  v4 = (v3 + v1[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v5 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v10 + 8))(v4);
  }

LABEL_11:
  OUTLINED_FUNCTION_7_8(v1[10]);
  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_8(v1[12]);
  OUTLINED_FUNCTION_7_8(v1[13]);

  return swift_deallocObject();
}

uint64_t sub_26A4AFF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 248);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A4B0000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 248) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4B00F4()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B01CC()
{

  return swift_deallocObject();
}

id sub_26A4B0204(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) currentIdiom];
  *v1 = result;
  return result;
}

id sub_26A4B0248(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) snippetWidth];
  *v1 = v3;
  return result;
}

id sub_26A4B02A4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) backgroundMaterial];
  *v1 = result;
  return result;
}

id sub_26A4B0368(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) isRedacted];
  *v1 = result;
  return result;
}

id sub_26A4B03AC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) isPresentedWithSmartDialogText];
  *v1 = result;
  return result;
}

id sub_26A4B03F0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) visualResponseLocation];
  *v1 = result;
  return result;
}

uint64_t sub_26A4B043C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D68);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26A4B0490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D68);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26A4B060C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DB0);
  sub_26A84EF28();
  sub_26A84F4F8();
  sub_26A84F4F8();
  sub_26A6F6228();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B0714()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B0754(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A4B08A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4B09F4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[8];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F88);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[13];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[16] + 280);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4B0AFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F88);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[16] + 280) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[13];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

id sub_26A4B0C3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 125);
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 9) = v4;
  return v3;
}

uint64_t sub_26A4B0C80()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B0D50()
{
  v0 = OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for SFButtonItemStyle();
  OUTLINED_FUNCTION_5_61();
  sub_26A6FE804(v1, v2, &unk_26A879668, v3);
  OUTLINED_FUNCTION_6_52();
  sub_26A6FE428(v4, v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4B0E28()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_34();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);
  v7 = *(v0 + v6);
  if (v7 >> 60 != 15)
  {
    sub_26A550028(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B0EFC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_34();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26A4B0FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD658);
  sub_26A84F4F8();
  sub_26A6FF8AC();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B1040()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD658);
  sub_26A84F4F8();
  sub_26A6FF8AC();
  swift_getWitnessTable();
  type metadata accessor for RequestHostBackgroundModifier();
  sub_26A84F4F8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B1138()
{
  sub_26A84FE08();
  OUTLINED_FUNCTION_6_14();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B11C0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B1200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4B1304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4B1418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = type metadata accessor for BadgedImageView.Model(0);
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_26A4B14AC(uint64_t result, unsigned int a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    type metadata accessor for BadgedImageView.Model(0);
    OUTLINED_FUNCTION_19_22();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_26A4B1528()
{
  OUTLINED_FUNCTION_13_2();
  v2 = type metadata accessor for ImageSourceModel();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4B1564()
{
  OUTLINED_FUNCTION_13_2();
  type metadata accessor for ImageSourceModel();
  OUTLINED_FUNCTION_19_22();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26A4B15CC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B160C()
{
  type metadata accessor for BadgedImageView(0);
  OUTLINED_FUNCTION_6_3();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18_24();

  v4 = v2 + *(v0 + 44);
  type metadata accessor for ImageSourceModel();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_26A84B158();
      OUTLINED_FUNCTION_1_4();
      (*(v5 + 8))(v4);
      v6 = &unk_2803B2CF0;
      goto LABEL_9;
    case 1u:

      v15 = type metadata accessor for ImageSourceView.Model(0);
      v16 = sub_26A84B2B8();
      if (!OUTLINED_FUNCTION_8_53(v16))
      {
        OUTLINED_FUNCTION_4_11();
        v17 = OUTLINED_FUNCTION_14_34();
        v18(v17);
      }

      v19 = v15[7];
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v20 + 8))(v4 + v19);
      v21 = v15[11];
      sub_26A84B2E8();
      OUTLINED_FUNCTION_1_4();
      (*(v22 + 8))(v4 + v21);
      v23 = sub_26A84DFA8();
      if (!OUTLINED_FUNCTION_8_53(v23))
      {
        OUTLINED_FUNCTION_4_11();
        v24 = OUTLINED_FUNCTION_14_34();
        v25(v24);
      }

      v14 = v15[13];
      sub_26A84B2F8();
      goto LABEL_15;
    case 2u:

      type metadata accessor for SymbolSourceView.Model(0);
      OUTLINED_FUNCTION_21_24();
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v7 + 8))(v4 + v3);
      v8 = sub_26A84B318();
      if (!OUTLINED_FUNCTION_8_53(v8))
      {
        OUTLINED_FUNCTION_4_11();
        v9 = OUTLINED_FUNCTION_14_34();
        v10(v9);
      }

      v11 = sub_26A84B238();
      if (OUTLINED_FUNCTION_3_68(v11))
      {
        break;
      }

      OUTLINED_FUNCTION_1_33();
      v12 = OUTLINED_FUNCTION_11_41();
      goto LABEL_16;
    case 3u:

      v6 = &unk_2803B2CD8;
LABEL_9:
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v6) + 48);
      sub_26A84B1D8();
LABEL_15:
      OUTLINED_FUNCTION_1_4();
      v13 = *(v26 + 8);
      v12 = v4 + v14;
LABEL_16:
      v13(v12);
      break;
    case 4u:

      break;
    default:
      break;
  }

  type metadata accessor for BadgedImageView.Model(0);
  switch(OUTLINED_FUNCTION_23_19())
  {
    case 0u:
      sub_26A84B158();
      OUTLINED_FUNCTION_1_4();
      (*(v27 + 8))(v4);
      v28 = &unk_2803B2CF0;
      goto LABEL_25;
    case 1u:

      v39 = type metadata accessor for ImageSourceView.Model(0);
      OUTLINED_FUNCTION_21_24();
      v40 = sub_26A84B2B8();
      if (!OUTLINED_FUNCTION_3_68(v40))
      {
        OUTLINED_FUNCTION_1_33();
        v41 = OUTLINED_FUNCTION_11_41();
        v42(v41);
      }

      v43 = v39[7];
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v44 + 8))(v4 + v43);
      v45 = v39[11];
      sub_26A84B2E8();
      OUTLINED_FUNCTION_1_4();
      (*(v46 + 8))(v4 + v45);
      v47 = sub_26A84DFA8();
      if (!OUTLINED_FUNCTION_3_68(v47))
      {
        OUTLINED_FUNCTION_1_33();
        v48 = OUTLINED_FUNCTION_11_41();
        v49(v48);
      }

      v38 = v39[13];
      sub_26A84B2F8();
      goto LABEL_31;
    case 2u:

      v29 = type metadata accessor for SymbolSourceView.Model(0);
      v30 = *(v29 + 24);
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v31 + 8))(v4 + v30);
      v32 = sub_26A84B318();
      if (!OUTLINED_FUNCTION_3_68(v32))
      {
        OUTLINED_FUNCTION_1_33();
        v33 = OUTLINED_FUNCTION_11_41();
        v34(v33);
      }

      v35 = *(v29 + 36);
      v36 = sub_26A84B238();
      if (!OUTLINED_FUNCTION_24_22(v36))
      {
        OUTLINED_FUNCTION_4_11();
        (*(v37 + 8))(v4 + v35, v29);
      }

      break;
    case 3u:

      v28 = &unk_2803B2CD8;
LABEL_25:
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v28) + 48);
      sub_26A84B1D8();
LABEL_31:
      OUTLINED_FUNCTION_1_4();
      (*(v50 + 8))(v4 + v38, v51);
      break;
    case 4u:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B1C3C()
{
  OUTLINED_FUNCTION_13_2();
  v2 = sub_26A84B1D8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4B1C78()
{
  OUTLINED_FUNCTION_13_2();
  sub_26A84B1D8();
  OUTLINED_FUNCTION_19_22();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26A4B1CB4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BadgeImageViewConstants.Configuration(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A4B1D3C(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for BadgeImageViewConstants.Configuration(0);
    OUTLINED_FUNCTION_19_22();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_26A4B1E0C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B1EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E158();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ActionHandler(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4B1F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A84E158();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ActionHandler(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4B2060()
{
  v1 = (type metadata accessor for SnippetKitButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84E158();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  v4 = v2 + v1[7];
  sub_26A556DF4(*v4, *(v4 + 8), *(v4 + 16));
  sub_26A49035C(*(v4 + 24), *(v4 + 32));
  v5 = type metadata accessor for ActionHandler(0);
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v4 + v5[7]), *(v4 + v5[7] + 8), *(v4 + v5[7] + 16));
  sub_26A49035C(*(v4 + v5[8]), *(v4 + v5[8] + 8));
  sub_26A49035C(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v8 = v4 + v5[10];
  if (*(v8 + 9))
  {
    if ((*(v8 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v4 + v5[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v8 + 16);
  v9 = v4 + v5[11];
  v10 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    MEMORY[0x26D665710](v9);
    v11 = *(v10 + 24);
    v12 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B2348()
{
  type metadata accessor for BinaryButtonView.AmbientConversationSpaceLayout.ButtonStackLayout();
  swift_getWitnessTable();
  sub_26A84F1A8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B2474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84D098();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = type metadata accessor for ActionHandler(0);
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4B2540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84D098();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    v9 = type metadata accessor for ActionHandler(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4B2654()
{
  v1 = (type metadata accessor for MultilineTextPropertyView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84D098();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  OUTLINED_FUNCTION_7_8(v1[7]);
  OUTLINED_FUNCTION_7_8(v1[8]);
  OUTLINED_FUNCTION_7_8(v1[9]);
  OUTLINED_FUNCTION_7_8(v1[10]);
  v4 = v2 + v1[11];
  sub_26A556DF4(*v4, *(v4 + 8), *(v4 + 16));
  sub_26A49035C(*(v4 + 24), *(v4 + 32));
  v5 = type metadata accessor for ActionHandler(0);
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v4 + v5[7]), *(v4 + v5[7] + 8), *(v4 + v5[7] + 16));
  sub_26A49035C(*(v4 + v5[8]), *(v4 + v5[8] + 8));
  sub_26A49035C(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v8 = v4 + v5[10];
  if (*(v8 + 9))
  {
    if ((*(v8 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v4 + v5[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v8 + 16);
  v9 = v4 + v5[11];
  v10 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    MEMORY[0x26D665710](v9);
    v11 = *(v10 + 24);
    v12 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B2924()
{

  return swift_deallocObject();
}

double sub_26A4B295C(char a1)
{
  result = 10.0;
  if (a1)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_26A4B2974()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B2A48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF688);
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A84F4F8();
  sub_26A84FE08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5858);
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A5C9C88(&qword_2803B5860, &qword_2803B5858);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B2C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A711B4C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A4B2CC0()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B2DC4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B2E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 224);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A4B2EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4B2FD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26A4B3028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BFA8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 16);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v8 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4B3100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84BFA8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 16) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4B327C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A71AAD8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4B33B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4B3444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4B34D0()
{
  OUTLINED_FUNCTION_6_8();
  result = MEMORY[0x26D661920]();
  *v0 = result;
  return result;
}

uint64_t sub_26A4B3504()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F8D8();
  *v0 = result;
  return result;
}

uint64_t sub_26A4B3540()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F848();
  *v0 = result;
  return result;
}

uint64_t sub_26A4B35D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4B366C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4B3714()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CF8);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4B3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26A4B3828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_26A4B390C()
{
  v0 = OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5DE0);
  OUTLINED_FUNCTION_3_23();
  sub_26A4D7DCC();
  sub_26A723E28();
  sub_26A72407C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4B39F8()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B3AF0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3B38()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3B70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EnvironmentImagePreferences(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4B3BF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EnvironmentImagePreferences(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_26A4B3CA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26A4B3CAC()
{
  MEMORY[0x26D665710](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26A4B3CE4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3D34()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3D94()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3DCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A72818C();
  *a1 = result;
  return result;
}

uint64_t sub_26A4B3DFC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3E4C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B3EA8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.smartDialogAnimationEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4B3F00()
{
  type metadata accessor for SmartDialogAnimatableModifier(255);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_1_83();
  sub_26A72C02C();
  swift_getWitnessTable();
  sub_26A4D7DCC();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B4010(uint64_t *a1, int a2, uint64_t a3)
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
    sub_26A84ACC8();
    v6 = OUTLINED_FUNCTION_86_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_26A4B4094()
{
  OUTLINED_FUNCTION_6_1();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A84ACC8();
    v5 = OUTLINED_FUNCTION_86_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26A4B410C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4B415C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4B41B0()
{
  v1 = *(type metadata accessor for SmartDialogAnimatableModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26A84ACC8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);

  return swift_deallocObject();
}

uint64_t sub_26A4B42A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 32);
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

  else
  {
    sub_26A84ACC8();
    v7 = OUTLINED_FUNCTION_86_0(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_26A4B4334()
{
  OUTLINED_FUNCTION_6_1();
  if (v3 == 2147483646)
  {
    *(v1 + 32) = v0;
  }

  else
  {
    v4 = v2;
    sub_26A84ACC8();
    v5 = OUTLINED_FUNCTION_86_0(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26A4B43B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for SmartDialogAnimation(0);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    v4 = v2 + *(v3 + 24);
    sub_26A8511F8();
    OUTLINED_FUNCTION_1_4();
    (*(v5 + 8))(v4);
    type metadata accessor for SmartDialogAnimationSettings(0);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B4544()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFixedWidth.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4B4590()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFixedHeight.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4B45EC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B468C()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A731994();
  *v0 = result;
  return result;
}

uint64_t sub_26A4B46E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentImagePreferences(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A4B4794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EnvironmentImagePreferences(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4B491C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A68165C();
  *a1 = result;
  return result;
}

__n128 sub_26A4B4950(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26A4B4988()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A4B4A20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6380);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A4B4A88()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6380);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A4B4AEC()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5DA99C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4B4B38()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5DA9DC();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4B4B84()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6668EC();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4B4BD0()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F958();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_26A4B4C0C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.sfCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A4B4C38()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D7364();
  *v0 = result;
  return result;
}

uint64_t sub_26A4B4C64()
{

  sub_26A4EC448(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 80))
  {
    sub_26A4EC448(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  sub_26A4EC448(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_26A4B4CE8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      type metadata accessor for ActionHandler(0);
      OUTLINED_FUNCTION_179();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = sub_26A84E4B8();
        v12 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_26A4B4E08(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      type metadata accessor for ActionHandler(0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = sub_26A84E4B8();
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4B4F18()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6440);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4B4F84()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_37_0();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_26A49035C(*v4, *(v4 + 8));

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + *(v0 + 28);
  v8 = OUTLINED_FUNCTION_8_55();
  v9 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_21_26(v10))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v11 + 8))(v7 + v9, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_81();
  if (v12)
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v2);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v2 + 16);
  v13 = OUTLINED_FUNCTION_14_37();
  if (!OUTLINED_FUNCTION_25_6(v13))
  {
    MEMORY[0x26D665710](v8);
    v14 = *(v2 + 24);
    v15 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_20_27(v15))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v16 + 8))(v8 + v14, v7);
    }

    OUTLINED_FUNCTION_13_36();

    OUTLINED_FUNCTION_13_36();
  }

  OUTLINED_FUNCTION_11_43();
  OUTLINED_FUNCTION_1_4();
  (*(v17 + 8))(v4 + v0);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A4B51F0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B5244()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B5330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84B1D8();
  v7 = a1 + *(a3 + 36);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_26A4B5388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26A84B1D8();
  v8 = a1 + *(a4 + 36);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_26A4B53E4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B5424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5D77B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4B5484()
{
  if (*(v0 + 25))
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 32);
  sub_26A73E014(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A4B550C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B5568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 48));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4B566C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 32);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4B57B0()
{
  type metadata accessor for SummaryItemStandardTextLayout();
  OUTLINED_FUNCTION_37_0();
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  OUTLINED_FUNCTION_1_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v6 = OUTLINED_FUNCTION_7_58();
  v7 = *(v6 + 36);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v3 + v7, v8);
  v10(v3 + *(v6 + 40), v8);
  v11 = v5 + *(v2 + 32);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v13 = OUTLINED_FUNCTION_4_72(v12);
  (v10)(v13);
  v10(v11 + *(v6 + 40), v8);
  OUTLINED_FUNCTION_2_84(v0[5]);
  OUTLINED_FUNCTION_2_84(v0[6]);
  OUTLINED_FUNCTION_2_84(v0[7]);
  v14 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v15 + 8))(v5 + v14);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_84(v0[9]);

  return swift_deallocObject();
}

uint64_t sub_26A4B5A00()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B5A40()
{
  type metadata accessor for SummaryItemStandardTextLayout();
  OUTLINED_FUNCTION_37_0();
  v15 = *(v3 + 80);

  OUTLINED_FUNCTION_1_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v4 = OUTLINED_FUNCTION_7_58();
  v5 = *(v4 + 36);
  v6 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v8 = *(v7 + 8);
  v8(v2 + v5, v6);
  v8(v2 + *(v4 + 40), v6);
  v9 = v1 + ((v15 + 49) & ~v15) + *(((v15 + 49) & ~v15) + 0x20);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v11 = OUTLINED_FUNCTION_4_72(v10);
  (v8)(v11);
  v8(v9 + *(v4 + 40), v6);
  OUTLINED_FUNCTION_2_84(v0[5]);
  OUTLINED_FUNCTION_2_84(v0[6]);
  OUTLINED_FUNCTION_2_84(v0[7]);
  v12 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v13 + 8))(v1 + ((v15 + 49) & ~v15) + v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_84(v0[9]);

  return swift_deallocObject();
}

uint64_t sub_26A4B5CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67B0);
  OUTLINED_FUNCTION_3_75();
  sub_26A744454(v0, &qword_2803B67B0, &unk_26A87EA38, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4B5D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84F218();
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

uint64_t sub_26A4B5E18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84F218();
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

uint64_t sub_26A4B5EE8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B5F88()
{
  v1 = sub_26A84AB98();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26A4B6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BBF8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4B60E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84BBF8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4B61D0()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B62F4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B6334(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A4B6418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4B6524@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresentedWithSmartDialogText.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4B657C()
{
  OUTLINED_FUNCTION_44_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v3);
  }

  else
  {
    v6 = *(v0 + *(v2 + 60) + 200);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }
}

void sub_26A4B6628()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_1_60();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 60) + 200) = (v0 - 1);
  }
}

void sub_26A4B66C0()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0);
  OUTLINED_FUNCTION_8_58();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_31_16();
  sub_26A84F4F8();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_42();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  sub_26A69C384();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240);
  OUTLINED_FUNCTION_8_58();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0);
  type metadata accessor for OuterPlatterBackground(255);
  OUTLINED_FUNCTION_31_16();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_86();
  swift_getWitnessTable();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_28();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_28();
  sub_26A755CD0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_32();
  swift_getOpaqueTypeMetadata2();
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A852068();
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_35_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_58();
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448);
  OUTLINED_FUNCTION_8_58();
  sub_26A84F4F8();
  sub_26A84FE08();
  OUTLINED_FUNCTION_28_10();
  type metadata accessor for ComponentStack();
  OUTLINED_FUNCTION_28_10();
  sub_26A84F4F8();
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_28_10();
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88);
  OUTLINED_FUNCTION_28_10();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_35_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  OUTLINED_FUNCTION_128();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_58();
  sub_26A851238();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_28_10();
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_27();
  OUTLINED_FUNCTION_211();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_150();
  sub_26A84FE08();
  sub_26A84FE08();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_5();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A4D6BF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A4B6D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26A4B6DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  v0 = OUTLINED_FUNCTION_1_60();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26A4B6E24()
{
  OUTLINED_FUNCTION_44_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v3);
  }

  else
  {
    v6 = *(v0 + *(v2 + 20) + 8);
    if (v6 > 1)
    {
      return (v6 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_26A4B6ECC()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_1_60();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = -v0;
  }
}

uint64_t sub_26A4B6FCC()
{
  sub_26A84F4F8();
  sub_26A6E4C88();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B7058()
{
  sub_26A4F5714(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 41))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 32);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 48);
  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B70E0()
{

  OUTLINED_FUNCTION_29_7();

  return swift_deallocObject();
}

uint64_t sub_26A4B7130()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B7220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A75D254();
  *a1 = result;
  return result;
}

uint64_t sub_26A4B7274()
{
  sub_26A84F4F8();
  sub_26A75D2E4();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B72D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D68);
  OUTLINED_FUNCTION_46();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  sub_26A4D82E8(*(v0 + v3), *(v0 + v3 + 8));

  return swift_deallocObject();
}

uint64_t sub_26A4B7380()
{
  v1 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  sub_26A4D82E8(*(v0 + 16), *(v0 + 24));
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26A4B7460()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B74A0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
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

  return (v13 + 1);
}

void sub_26A4B75A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4B76D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A744D2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4B7738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A73D268();
  *a1 = result;
  return result;
}

uint64_t sub_26A4B7770()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B7848()
{
  if (*(v0 + 25))
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 32);
  sub_26A49035C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A4B78F4()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B79D8()
{
  v2 = OUTLINED_FUNCTION_3_82();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4B7A10()
{
  v2 = OUTLINED_FUNCTION_3_82();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4B7A98()
{

  return swift_deallocObject();
}

uint64_t sub_26A4B7AFC()
{
  v1 = type metadata accessor for SimpleItemVisualElementView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  v4 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v18 + 8))(v0 + v2);
  }

LABEL_7:
  v6 = OUTLINED_FUNCTION_20_22(v1[5]);
  sub_26A49035C(v6, v7);
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  v10 = OUTLINED_FUNCTION_20_22(v1[7]);
  sub_26A4F5714(v10, v11);
  v12 = OUTLINED_FUNCTION_20_22(v1[8]);
  sub_26A49035C(v12, v13);
  v14 = OUTLINED_FUNCTION_20_22(v1[9]);
  sub_26A49035C(v14, v15);
  v16 = v3 + v1[10];
  if (v16[9])
  {
    if ((v16[8] & 1) == 0)
    {
      MEMORY[0x26D665710](v3 + v1[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v16 + 16);

  return swift_deallocObject();
}

uint64_t sub_26A4B7D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 44));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4B7E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 44)) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_26A4B7F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6FF0);
  sub_26A76691C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4B7FE8()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7060);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4B805C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = sub_26A84B1D8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4B80A0()
{
  OUTLINED_FUNCTION_6_1();
  v2 = sub_26A84B1D8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4B80E8(uint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
    OUTLINED_FUNCTION_179();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_26A84B1D8();
      OUTLINED_FUNCTION_179();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        sub_26A84B2E8();
        OUTLINED_FUNCTION_179();
        if (*(v16 + 84) == a2)
        {
          v11 = v15;
          v12 = a3[11];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
          OUTLINED_FUNCTION_179();
          if (*(v18 + 84) == a2)
          {
            v11 = v17;
            v12 = a3[12];
          }

          else
          {
            v11 = sub_26A84B2F8();
            v12 = a3[13];
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_26A4B8294(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_26A84B1D8();
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        sub_26A84B2E8();
        OUTLINED_FUNCTION_179();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[11];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
          OUTLINED_FUNCTION_179();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[12];
          }

          else
          {
            v10 = sub_26A84B2F8();
            v11 = a4[13];
          }
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4B8490(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for ImageSourceView.Model(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + a3[5] + 8);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71A8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
        OUTLINED_FUNCTION_179();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[13];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE40);
          v14 = a3[14];
        }
      }
    }

    v9 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4B8648(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for ImageSourceView.Model(0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[5] + 8) = -a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71A8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
        OUTLINED_FUNCTION_179();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[13];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE40);
          v14 = a4[14];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4B8808()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4B890C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4B898C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.hideRedactions.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A4B89DC()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.viewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A4B8A08()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A4B8ABC()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F848();
  *v0 = result;
  return result;
}

double sub_26A4B8B3C@<D0>(uint64_t a1@<X8>)
{
  sub_26A7706FC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_26A4B8BC4()
{
  OUTLINED_FUNCTION_46_5();
  if (v3)
  {
    return OUTLINED_FUNCTION_49_0(*(v0 + 240));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == v6)
  {
    v9 = v7;
    v10 = *(v5 + 64);
  }

  else
  {
    v9 = type metadata accessor for ActionHandler(0);
    v10 = *(v5 + 80);
  }

  return __swift_getEnumTagSinglePayload(v0 + v10, v6, v9);
}

void sub_26A4B8C80()
{
  OUTLINED_FUNCTION_6_1();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 240) = (v0 - 1);
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) != v3)
    {
      type metadata accessor for ActionHandler(0);
    }

    OUTLINED_FUNCTION_19_22();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26A4B8DA0()
{

  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4B8E14()
{
  OUTLINED_FUNCTION_51_6();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_26A4B8E50()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4B8E84()
{
  sub_26A4D3334(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A4B8ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_49_0(*(v4 + *(a3 + 32)));
    }

    v8 = type metadata accessor for ActionType();
    v9 = v4 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_26A4B8F90()
{
  OUTLINED_FUNCTION_59_1();
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 32)) = (v0 - 1);
      return;
    }

    type metadata accessor for ActionType();
  }

  OUTLINED_FUNCTION_19_22();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26A4B905C()
{
  OUTLINED_FUNCTION_46_5();
  if (v3)
  {
    return OUTLINED_FUNCTION_49_0(*v0);
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == v6)
  {
    v9 = v7;
    v10 = *(v5 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v10 = *(v5 + 32);
  }

  return __swift_getEnumTagSinglePayload(v0 + v10, v6, v9);
}

void sub_26A4B9124()
{
  OUTLINED_FUNCTION_6_1();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    }

    OUTLINED_FUNCTION_19_22();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26A4B9210()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7420);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4B926C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  OUTLINED_FUNCTION_2_5(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for ActionType();
  OUTLINED_FUNCTION_37_0();
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v3;
  v9 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_25_6(v9))
  {
    MEMORY[0x26D665710](v8);
    v10 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v10))
    {
      OUTLINED_FUNCTION_4_11();
      v11 = OUTLINED_FUNCTION_40_9();
      v12(v11);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v14 + 8))(v0 + v7);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A4B9420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 36)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_26A4B94C8()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_19_22();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 36)) = (v0 - 1);
  }
}

uint64_t sub_26A4B9674()
{
  sub_26A8510E8();
  sub_26A84F588();
  swift_getWitnessTable();
  sub_26A7766F8(&qword_28157FD68);
  swift_getOpaqueTypeMetadata2();
  sub_26A84FE08();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B97C0()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_26A5066FC(*(v0 + 48), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B980C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_26A5066FC(*(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4B9894()
{
  type metadata accessor for ExpandableContentModifier();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_1_96();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4B9908(uint64_t *a1, uint64_t a2, int *a3)
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
    sub_26A84B1D8();
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D10);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
        v11 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_26A4B9A28(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_26A84B1D8();
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D10);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4B9B9C(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for SymbolSourceView.Model(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7618);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_11:
    v9 = a1 + v12;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[14];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD0);
  OUTLINED_FUNCTION_179();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[15];
    goto LABEL_11;
  }

  v20 = *(a1 + a3[20] + 8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  v21 = v20 - 1;
  if (v21 < 0)
  {
    v21 = -1;
  }

  return (v21 + 1);
}

void sub_26A4B9D88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for SymbolSourceView.Model(0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7618);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
        OUTLINED_FUNCTION_179();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD0);
          OUTLINED_FUNCTION_179();
          if (*(v20 + 84) != a3)
          {
            *(a1 + a4[20] + 8) = a2;
            return;
          }

          v10 = v19;
          v14 = a4[15];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4B9F64()
{
  v1 = type metadata accessor for SymbolSourceView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = type metadata accessor for SymbolSourceView.Model(0);
  v4 = v3[6];
  v5 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v8 = v3[7];
  v9 = sub_26A84B318();
  if (!__swift_getEnumTagSinglePayload(v2 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  v10 = v3[9];
  v11 = sub_26A84B238();
  if (!OUTLINED_FUNCTION_33_13(v11))
  {
    (*(*(v3 - 1) + 8))(v2 + v10, v3);
  }

  v12 = v2 + v1[5];
  sub_26A49035C(*v12, *(v12 + 8));
  sub_26A49035C(*(v12 + 16), *(v12 + 24));
  sub_26A49035C(*(v12 + 32), *(v12 + 40));
  sub_26A49035C(*(v12 + 48), *(v12 + 56));
  sub_26A49035C(*(v12 + 64), *(v12 + 72));
  sub_26A49035C(*(v12 + 80), *(v12 + 88));
  sub_26A49035C(*(v12 + 96), *(v12 + 104));
  sub_26A49035C(*(v12 + 112), *(v12 + 120));
  sub_26A49035C(*(v12 + 128), *(v12 + 136));
  sub_26A49035C(*(v12 + 144), *(v12 + 152));
  v13 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_26A84FC88();
    if (!OUTLINED_FUNCTION_33_13(v14))
    {
      (*(*(v12 - 8) + 8))(v2 + v13, v12);
    }
  }

  else
  {
  }

  v15 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!__swift_getEnumTagSinglePayload(v2 + v15, 1, v5))
    {
      v7(v2 + v15, v5);
    }
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_7_52(v1[8]);
  sub_26A49035C(v16, v17);
  v18 = OUTLINED_FUNCTION_7_52(v1[9]);
  sub_26A49035C(v18, v19);
  OUTLINED_FUNCTION_7_66(v1[10]);
  OUTLINED_FUNCTION_7_66(v1[11]);
  v20 = OUTLINED_FUNCTION_7_52(v1[12]);
  sub_26A49035C(v20, v21);
  v22 = OUTLINED_FUNCTION_7_52(v1[13]);
  sub_26A49035C(v22, v23);
  v24 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v25 + 8))(v2 + v24);
  }

  else
  {
  }

  v26 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84FBC8();
    OUTLINED_FUNCTION_46();
    (*(v27 + 8))(v2 + v26);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_52(v1[16]);
  j__swift_release();
  v28 = OUTLINED_FUNCTION_7_52(v1[17]);
  sub_26A49035C(v28, v29);
  v30 = OUTLINED_FUNCTION_7_52(v1[18]);
  sub_26A49035C(v30, v31);

  return swift_deallocObject();
}

uint64_t sub_26A4BA3BC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BA428()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BA470()
{
  v2 = OUTLINED_FUNCTION_0_92();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4BA4A8()
{
  v2 = OUTLINED_FUNCTION_0_92();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4BA808()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BA848(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A4BA974(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4BAABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A794044(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A4BAB78()
{
  OUTLINED_FUNCTION_46_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_49_0(*(v0 + 200));
  }

  v4 = v1;
  type metadata accessor for TableRowViewModel();
  v5 = OUTLINED_FUNCTION_86_0(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_26A4BABE4()
{
  OUTLINED_FUNCTION_12_47();
  if (v3)
  {
    *(v1 + 200) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for TableRowViewModel();
    v5 = OUTLINED_FUNCTION_86_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26A4BAC50()
{
  OUTLINED_FUNCTION_46_5();
  if (v3)
  {
    return OUTLINED_FUNCTION_49_0(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = *(type metadata accessor for TableRowViewModel() - 8);
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 24);
  }

  else
  {
    sub_26A84F218();
    v8 = *(v5 + 44);
  }

  v9 = OUTLINED_FUNCTION_86_0(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_26A4BAD00()
{
  OUTLINED_FUNCTION_12_47();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(type metadata accessor for TableRowViewModel() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      sub_26A84F218();
      v8 = *(v5 + 44);
    }

    v9 = OUTLINED_FUNCTION_86_0(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_26A4BADD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

char *sub_26A4BAE34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

uint64_t sub_26A4BAE58()
{

  OUTLINED_FUNCTION_26_17();

  return swift_deallocObject();
}

uint64_t sub_26A4BAE98(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[9];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v9 = a3[10];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[6] + 280);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_26A4BAFCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 280) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v11 = a4[10];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4BB154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A79A790();
  *a1 = result;
  return result;
}

uint64_t sub_26A4BB184@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A79A768();
  *a1 = result;
  return result;
}

uint64_t sub_26A4BB1D8()
{
  type metadata accessor for FactItemButtonView(0);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_70_0();
  if (v5)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  OUTLINED_FUNCTION_39_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v6 = OUTLINED_FUNCTION_81_2();
  v7 = *(v6 + 52);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v3 + v7, v8);
  v10(v3 + *(v6 + 56), v8);
  v11 = v4 + *(v2 + 32);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v13 = OUTLINED_FUNCTION_65_4(v12);
  (v10)(v13);
  v10(v11 + *(v6 + 56), v8);
  OUTLINED_FUNCTION_1_7(v0[6]);

  OUTLINED_FUNCTION_1_7(v0[7]);

  OUTLINED_FUNCTION_91_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = type metadata accessor for ActionType();
  if (OUTLINED_FUNCTION_9_44(v14))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v19 + 8))(v2);
  }

LABEL_11:
  v16 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v1 + v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();

  return swift_deallocObject();
}

uint64_t sub_26A4BB7B8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BB7F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A7CA0CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4BB854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A7CA1CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4BB8C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BB998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F88);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4BBA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F88);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4BBB60()
{
  OUTLINED_FUNCTION_13_46();
  type metadata accessor for ExpandableContentModifier();
  OUTLINED_FUNCTION_10_52();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84FE88();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  sub_26A84F358();
  type metadata accessor for ExpandableContentStyle();
  OUTLINED_FUNCTION_8_66();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_67();
  sub_26A7CD5E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4BBC44()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8068);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4BBCA0()
{
  v1 = type metadata accessor for ExpandableContentStyle();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_26A8501A8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  v8 = *(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v0 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_32(v1[5]);
  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F4E8();
    OUTLINED_FUNCTION_46();
    (*(v11 + 8))(v0 + v3 + v10);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_32(v1[7]);
  OUTLINED_FUNCTION_17_32(v1[8]);
  (*(v7 + 8))(v0 + ((v3 + v4 + v8) & ~v8), v5);

  return swift_deallocObject();
}

uint64_t sub_26A4BBF00()
{
  OUTLINED_FUNCTION_13_46();
  type metadata accessor for ClipShapeModifier();
  OUTLINED_FUNCTION_11_53();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84FE88();
  OUTLINED_FUNCTION_13_46();
  sub_26A84EF28();
  OUTLINED_FUNCTION_59_2();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_71();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BBFC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A84F958();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26A4BBFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_26A84AFA8();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A4BC0CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_26A84AFA8();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4BC1A0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BC248()
{
  v1 = type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_33_10();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v5 = *(v4 + 56);
    if (v5 != 255)
    {
      sub_26A5066FC(*(v4 + 48), v5);
    }
  }

  else
  {
    sub_26A84AB98();
    OUTLINED_FUNCTION_46();
    (*(v6 + 8))(v0 + v3);
    type metadata accessor for LoadableText.Source.URLImage(0);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_13_47();
    if (!v9)
    {
      sub_26A5066FC(*v8, v7);
    }

    v10 = *(v1 + 32);
    v11 = sub_26A850F68();
    if (!OUTLINED_FUNCTION_21_32(v11))
    {
      (*(*(v1 - 8) + 8))(v4 + v10, v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_26A4BC3C0()
{
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_33_10();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = *(v6 + 56);
    if (v7 != 255)
    {
      sub_26A5066FC(*(v6 + 48), v7);
    }
  }

  else
  {
    sub_26A84AB98();
    OUTLINED_FUNCTION_46();
    (*(v8 + 8))(v0 + v3);
    type metadata accessor for LoadableText.Source.URLImage(0);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_13_47();
    if (!v11)
    {
      sub_26A5066FC(*v10, v9);
    }

    v12 = *(v1 + 32);
    v13 = sub_26A850F68();
    if (!OUTLINED_FUNCTION_21_32(v13))
    {
      (*(*(v1 - 8) + 8))(v6 + v12, v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_26A4BC564(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2878);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A4BC648(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2878);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4BC730()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BC7C8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BC808(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[7];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4BC93C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4BCAB0()
{
  v1 = (type metadata accessor for SliderView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_26A84E1E8();
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_26A4D82E8(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_26A4BCBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E1E8();
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

uint64_t sub_26A4BCC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E1E8();
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

uint64_t sub_26A4BCD48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4BCD80()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4BCDD0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BCE18(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[9];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4BCF4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[9];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4BD0B0()
{
  type metadata accessor for FactItemShortNumberView();
  OUTLINED_FUNCTION_37_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A49035C(*v3, *(v3 + 8));
  sub_26A49035C(*(v3 + 16), *(v3 + 24));
  sub_26A49035C(*(v3 + 32), *(v3 + 40));
  sub_26A49035C(*(v3 + 48), *(v3 + 56));
  sub_26A49035C(*(v3 + 64), *(v3 + 72));
  sub_26A49035C(*(v3 + 80), *(v3 + 88));
  sub_26A49035C(*(v3 + 96), *(v3 + 104));
  sub_26A49035C(*(v3 + 112), *(v3 + 120));
  sub_26A49035C(*(v3 + 128), *(v3 + 136));
  sub_26A49035C(*(v3 + 144), *(v3 + 152));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v5 = v3 + *(v4 + 28);
  v6 = type metadata accessor for FactItemConstants();
  v7 = *(v6 + 52);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + *(v6 + 56), v8);
  v11 = v3 + *(v4 + 32);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0) + 36);
  v10(v12 + *(v6 + 52), v8);
  v10(v12 + *(v6 + 56), v8);
  v13 = v3 + v0[5];
  OUTLINED_FUNCTION_6_70();
  sub_26A49035C(*(v13 + 48), *(v13 + 56));
  sub_26A49035C(*(v13 + 64), *(v13 + 72));
  sub_26A49035C(*(v13 + 80), *(v13 + 88));
  sub_26A49035C(*(v13 + 96), *(v13 + 104));
  sub_26A49035C(*(v13 + 112), *(v13 + 120));
  sub_26A49035C(*(v13 + 128), *(v13 + 136));
  sub_26A49035C(*(v13 + 144), *(v13 + 152));

  OUTLINED_FUNCTION_60_0(v3 + v0[6]);
  OUTLINED_FUNCTION_60_0(v3 + v0[7]);
  v14 = (v3 + v0[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  v15 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v23 + 8))(v14);
  }

LABEL_7:
  v17 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v18 + 8))(v3 + v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_50_8();
  OUTLINED_FUNCTION_50_8();
  OUTLINED_FUNCTION_50_8();
  v19 = (v3 + v0[13]);
  if (v19[10])
  {
    OUTLINED_FUNCTION_6_70();
    if (v19[9])
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (v19[12])
    {

      OUTLINED_FUNCTION_7_6();
      if (v19[20])
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  v20 = (v3 + v0[14]);
  if (v20[10])
  {
    OUTLINED_FUNCTION_6_70();
    if (v20[9])
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (v20[12])
    {

      OUTLINED_FUNCTION_7_6();
      if (v20[20])
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  v21 = (v3 + v0[15]);
  if (v21[10])
  {
    OUTLINED_FUNCTION_6_70();
    if (v21[9])
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (v21[12])
    {

      OUTLINED_FUNCTION_7_6();
      if (v21[20])
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_50_8();

  return swift_deallocObject();
}

uint64_t sub_26A4BD5BC()
{
  type metadata accessor for FactItemShortNumberView();
  OUTLINED_FUNCTION_37_0();
  v30 = *(v2 + 80);
  v28 = *(v3 + 64);
  v31 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v27 = *(v4 + 80);
  v32 = v1;
  v29 = (v30 + 16) & ~v30;
  v6 = v1 + v29;
  sub_26A49035C(*(v1 + v29), *(v1 + v29 + 8));
  sub_26A49035C(*(v6 + 16), *(v6 + 24));
  sub_26A49035C(*(v6 + 32), *(v6 + 40));
  sub_26A49035C(*(v6 + 48), *(v6 + 56));
  sub_26A49035C(*(v6 + 64), *(v6 + 72));
  sub_26A49035C(*(v6 + 80), *(v6 + 88));
  sub_26A49035C(*(v6 + 96), *(v6 + 104));
  sub_26A49035C(*(v6 + 112), *(v6 + 120));
  sub_26A49035C(*(v6 + 128), *(v6 + 136));
  sub_26A49035C(*(v6 + 144), *(v6 + 152));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v8 = v1 + v29 + *(v7 + 28);
  v9 = type metadata accessor for FactItemConstants();
  v10 = *(v9 + 52);
  v11 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v13 = *(v12 + 8);
  v13(v8 + v10, v11);
  v13(v8 + *(v9 + 56), v11);
  v14 = v6 + *(v7 + 32);

  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0) + 36);
  v13(v15 + *(v9 + 52), v11);
  v13(v15 + *(v9 + 56), v11);
  v16 = v6 + v0[5];
  OUTLINED_FUNCTION_5_79();
  sub_26A49035C(*(v16 + 48), *(v16 + 56));
  sub_26A49035C(*(v16 + 64), *(v16 + 72));
  sub_26A49035C(*(v16 + 80), *(v16 + 88));
  sub_26A49035C(*(v16 + 96), *(v16 + 104));
  sub_26A49035C(*(v16 + 112), *(v16 + 120));
  sub_26A49035C(*(v16 + 128), *(v16 + 136));
  sub_26A49035C(*(v16 + 144), *(v16 + 152));

  OUTLINED_FUNCTION_60_0(v6 + v0[6]);
  OUTLINED_FUNCTION_60_0(v6 + v0[7]);
  v17 = (v6 + v0[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  v18 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v26 + 8))(v17);
  }

LABEL_7:
  v20 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v21 + 8))(v6 + v20);
  }

  else
  {
  }

  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_48_7();
  v22 = (v6 + v0[13]);
  if (v22[10])
  {
    OUTLINED_FUNCTION_5_79();
    if (v22[9])
    {
      OUTLINED_FUNCTION_41_14();
    }

    if (v22[12])
    {

      OUTLINED_FUNCTION_39_10();
      if (v22[20])
      {
        OUTLINED_FUNCTION_37_17();
      }

      OUTLINED_FUNCTION_35_13();
    }
  }

  v23 = (v6 + v0[14]);
  if (v23[10])
  {
    OUTLINED_FUNCTION_5_79();
    if (v23[9])
    {
      OUTLINED_FUNCTION_41_14();
    }

    if (v23[12])
    {

      OUTLINED_FUNCTION_39_10();
      if (v23[20])
      {
        OUTLINED_FUNCTION_37_17();
      }

      OUTLINED_FUNCTION_35_13();
    }
  }

  v24 = (v6 + v0[15]);
  if (v24[10])
  {
    OUTLINED_FUNCTION_5_79();
    if (v24[9])
    {
      OUTLINED_FUNCTION_41_14();
    }

    if (v24[12])
    {

      OUTLINED_FUNCTION_39_10();
      if (v24[20])
      {
        OUTLINED_FUNCTION_37_17();
      }

      OUTLINED_FUNCTION_35_13();
    }
  }

  OUTLINED_FUNCTION_48_7();
  (*(v5 + 8))(v32 + ((v29 + v28 + v27) & ~v27), v31);

  return swift_deallocObject();
}

uint64_t sub_26A4BDB90()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BDBD0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[7];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4BDD04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4BDE98()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A711488();
  *v0 = result;
  return result;
}

uint64_t sub_26A4BDEE4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A7115F4();
  *v0 = result;
  return result;
}

uint64_t sub_26A4BDF30()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A71186C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_26A4BDF64()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5DA688();
  *v0 = result;
  return result;
}

uint64_t sub_26A4BDFB0()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F8D8();
  *v0 = result;
  return result;
}

uint64_t sub_26A4BDFE4(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        v10 = sub_26A84AFA8();
        v11 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A4BE104(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        v10 = sub_26A84AFA8();
        v11 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4BE25C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = type metadata accessor for RichTextView(0);
  OUTLINED_FUNCTION_33_10();
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918) - 8) + 80);
  v7 = v0 + v4;

  sub_26A49035C(*(v7 + 16), *(v7 + 24));
  sub_26A49035C(*(v7 + 32), *(v7 + 40));
  sub_26A49035C(*(v7 + 48), *(v7 + 56));
  sub_26A49035C(*(v7 + 64), *(v7 + 72));
  sub_26A49035C(*(v7 + 80), *(v7 + 88));
  sub_26A49035C(*(v7 + 96), *(v7 + 104));
  sub_26A49035C(*(v7 + 112), *(v7 + 120));
  sub_26A49035C(*(v7 + 128), *(v7 + 136));
  sub_26A49035C(*(v7 + 144), *(v7 + 152));
  sub_26A49035C(*(v7 + 160), *(v7 + 168));

  sub_26A49035C(*(v7 + 304), *(v7 + 312));
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  v10 = (v5 + v6 + 8) & ~v6;
  v11 = OUTLINED_FUNCTION_19_29(v1[8]);
  sub_26A49035C(v11, v12);
  v13 = OUTLINED_FUNCTION_19_29(v1[9]);
  sub_26A49035C(v13, v14);
  sub_26A4F5724(*(v7 + v1[10]), *(v7 + v1[10] + 8), *(v7 + v1[10] + 9));
  v15 = OUTLINED_FUNCTION_19_29(v1[11]);
  sub_26A49035C(v15, v16);
  OUTLINED_FUNCTION_19_29(v1[12]);
  j__swift_release();
  v17 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v18 + 8))(v7 + v17);
  }

  else
  {
  }

  v19 = v1[14];
  sub_26A84AFA8();
  OUTLINED_FUNCTION_46();
  (*(v20 + 8))(v7 + v19);

  v21 = sub_26A850F68();
  if (!__swift_getEnumTagSinglePayload(v0 + v10, 1, v21))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v22 + 8))(v0 + v10, v21);
  }

  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A4BE5B0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BE608()
{
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A4BE640()
{
  v1 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26A4BE700()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26A4BE740()
{
  sub_26A84E408();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A4BE820()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E18);
  type metadata accessor for RFButtonStyle();
  sub_26A7F891C();
  OUTLINED_FUNCTION_4_85();
  sub_26A7FB720();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4BE8D0()
{
  sub_26A4D82E8(*(v0 + 32), *(v0 + 40));

  sub_26A7FADD8(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));
  if (*(v0 + 169))
  {
    if ((*(v0 + 168) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 160);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 176);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A4BE978()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BE9B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EE0);
  OUTLINED_FUNCTION_46();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return a2;
}

uint64_t sub_26A4BEA3C()
{
  sub_26A4D82E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A4BEA80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FA8);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A4BEAE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FA8);
  sub_26A7FC1B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4BEB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E518();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26A4BEC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E518();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_26A4BECF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448);
  sub_26A84F4F8();
  sub_26A7FDD68();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BED68()
{
  OUTLINED_FUNCTION_2_11();
  v2 = sub_26A84BBF8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4BEDA8()
{
  OUTLINED_FUNCTION_2_11();
  v2 = sub_26A84BBF8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4BEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_2_11();
  v7 = type metadata accessor for ComponentSeparatorsConfiguration(v6);
  if (*(*(v7 - 8) + 84) == v3)
  {
    v8 = v7;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_26A4BEE8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_2_11();
  v9 = type metadata accessor for ComponentSeparatorsConfiguration(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v5;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_26A4BEF38()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4BF014()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4BF100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4658);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_26A84E968();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 216);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26A4BF1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4658);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 216) = (a2 - 1);
      return result;
    }

    v9 = sub_26A84E968();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4BF2BC()
{
  type metadata accessor for ToggleControlView();
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F138();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_105();

  v5 = *(v0 + 24);
  sub_26A84E968();
  OUTLINED_FUNCTION_46();
  (*(v6 + 8))(v1 + v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_26A4BF468()
{

  return swift_deallocObject();
}

uint64_t sub_26A4BF4FC()
{
  sub_26A84FE08();
  OUTLINED_FUNCTION_6_14();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BF54C()
{
  sub_26A84FE08();
  OUTLINED_FUNCTION_6_14();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BF598()
{
  sub_26A84FE08();
  OUTLINED_FUNCTION_6_14();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BF61C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9C18);
  OUTLINED_FUNCTION_13_49();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9C28);
  OUTLINED_FUNCTION_13_49();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_11_59();
  sub_26A506A30();
  swift_getWitnessTable();
  sub_26A506A30();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BF790()
{
  sub_26A8507A8();
  OUTLINED_FUNCTION_46();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = v0 + v3;
  OUTLINED_FUNCTION_20_33();
  if (v5)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      MEMORY[0x26D665710](v4 + 56);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v4 + 72);

  return swift_deallocObject();
}

uint64_t sub_26A4BF87C()
{
  v1 = *(type metadata accessor for MenuOverlayData() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v4);

  v6 = v0 + v3;
  sub_26A4F5714(*(v0 + v3), *(v0 + v3 + 8));
  sub_26A4F5724(*(v6 + 16), *(v6 + 24), *(v6 + 25));
  sub_26A58FF48(*(v6 + 32), *(v6 + 40), *(v6 + 48));
  if (*(v0 + v3 + 65))
  {
    if ((*(v6 + 64) & 1) == 0)
    {
      MEMORY[0x26D665710](v6 + 56);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v6 + 72);

  return swift_deallocObject();
}

uint64_t sub_26A4BF9C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A84F868();
  *a1 = result;
  return result;
}

uint64_t sub_26A4BFA20()
{

  sub_26A5066FC(*(v0 + 48), *(v0 + 56));
  sub_26A4F5714(*(v0 + 64), *(v0 + 72));
  sub_26A4F5724(*(v0 + 80), *(v0 + 88), *(v0 + 89));
  sub_26A58FF48(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  if (*(v0 + 129))
  {
    if ((*(v0 + 128) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 120);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_26A4BFAF0()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A8507A8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  v10 = *(v8 + 80);
  (*(v3 + 8))(v0 + v5, v1);
  v11 = v0 + v6;
  OUTLINED_FUNCTION_20_33();
  if (v12)
  {
    if ((*(v11 + 64) & 1) == 0)
    {
      MEMORY[0x26D665710](v11 + 56);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v11 + 72);

  (*(v9 + 8))(v0 + ((v6 + v10 + 104) & ~v10), v7);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A4BFC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84ACC8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A4BFD00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84ACC8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4BFDA8()
{
  type metadata accessor for EngageableGestureHandler();
  OUTLINED_FUNCTION_10_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_49();
  sub_26A84FE88();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9168);
  OUTLINED_FUNCTION_13_49();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_54();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4BFE78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9398);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A4BFF04()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A4BFF44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A807B70();
  *a1 = result;
  return result;
}

uint64_t sub_26A4BFF74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A807B48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4BFFCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A807B20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4C0030()
{
  if (*(v0 + 25))
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 32);
  sub_26A49035C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A4C00D8()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4C01F0()
{
  type metadata accessor for DraggableContent();
  OUTLINED_FUNCTION_1_107();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_60();
  sub_26A850068();
  OUTLINED_FUNCTION_14_5();
  sub_26A84F4F8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4C028C()
{
  type metadata accessor for DraggableModifier();
  OUTLINED_FUNCTION_14_5();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_2_102();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4C034C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for DraggableModifier() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  sub_26A852068();
  sub_26A851088();

  return swift_deallocObject();
}

uint64_t sub_26A4C0460()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A4C04E0()
{
  OUTLINED_FUNCTION_11_60();
  type metadata accessor for DraggableModifier();
  OUTLINED_FUNCTION_2_102();
  swift_getWitnessTable();
  sub_26A84FE88();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26A852068();
  sub_26A84FE08();
  OUTLINED_FUNCTION_11_60();
  type metadata accessor for DraggableContent();
  OUTLINED_FUNCTION_1_107();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_60();
  sub_26A852068();
  OUTLINED_FUNCTION_7_76();
  swift_getWitnessTable();
  sub_26A850028();
  sub_26A84F4F8();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_88();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_83();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A4C0700()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4C07EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4C082C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26A4C0880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26A4C0980()
{

  return swift_deallocObject();
}

uint64_t sub_26A4C09C0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A4C0B10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4C0C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84ACC8();
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

uint64_t sub_26A4C0D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84ACC8();
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

uint64_t sub_26A4C0E2C(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
        v11 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A4C0F58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A4C112C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A4C11DC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4C121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 224);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A4C1300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4C13EC()
{
  v1 = type metadata accessor for PrimaryHeaderStackedImageView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));

  sub_26A49035C(*(v2 + 288), *(v2 + 296));
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = (v2 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_9:

    goto LABEL_10;
  }

  v6 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v5);
  }

LABEL_10:

  return swift_deallocObject();
}

uint64_t sub_26A4C16A8()
{
  v2 = OUTLINED_FUNCTION_5_86();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4C16E0()
{
  v2 = OUTLINED_FUNCTION_5_86();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4C171C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26A84F218();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A4C17A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26A84F218();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4C1824(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for TableRowViewModel();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_49_0(*(a1 + a3[5] + 224));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);
    OUTLINED_FUNCTION_179();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v13 = a3[12];
    }

    v9 = a1 + v13;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4C1940()
{
  OUTLINED_FUNCTION_59_1();
  type metadata accessor for TableRowViewModel();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + v2[5] + 224) = (v0 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[10];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = v2[12];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4C1A9C()
{
  v1 = type metadata accessor for TableRowV2View(0);
  OUTLINED_FUNCTION_33_19();
  v3 = *(v2 + 80);
  v15 = *(v4 + 64);
  v16 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v0 + ((v3 + 16) & ~v3);
  v9 = sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  v11 = *(v10 + 8);
  v11(v8, v9);
  type metadata accessor for TableRowViewModel();

  OUTLINED_FUNCTION_0_105(v1[5]);

  OUTLINED_FUNCTION_0_105(v1[6]);

  OUTLINED_FUNCTION_0_105(v1[7]);

  OUTLINED_FUNCTION_0_105(v1[8]);

  OUTLINED_FUNCTION_0_105(v1[9]);

  v11(v8 + v1[10], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);

  sub_26A492280();
  v12 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v13 + 8))(v8 + v12);
  }

  else
  {
  }

  sub_26A49035C(*(v8 + v1[13]), *(v8 + v1[13] + 8));
  (*(v6 + 8))(v0 + ((((v3 + 16) & ~v3) + v15 + v7) & ~v7), v16);

  return swift_deallocObject();
}

uint64_t sub_26A4C1E10()
{

  return swift_deallocObject();
}

double sub_26A4C1EAC@<D0>(void (*a1)(_OWORD *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  sub_26A844638(a1, &v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 10);
  *(a2 + 26) = *(v6 + 10);
  return result;
}

uint64_t sub_26A4C1EEC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  result = sub_26A4C1A58(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_26A4C1F24()
{

  return swift_deallocObject();
}

uint64_t sub_26A4C1F5C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4C1F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_26A4C2044()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_26A4C2188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84B1D8();
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

uint64_t sub_26A4C2238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84B1D8();
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

uint64_t sub_26A4C2304(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4C2314(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26A4C23D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

char *sub_26A4C23DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A4C2404(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A4C2424(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}