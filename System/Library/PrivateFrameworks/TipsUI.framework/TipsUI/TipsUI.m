uint64_t sub_220B330D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220B330F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_220B33154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220BCDBA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_220B33180@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_220B33190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220B331FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220B33280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B58);
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

  return (v14 + 1);
}

uint64_t sub_220B333A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B58);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220B334D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_220BCBF80();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220B33614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220BCC930();
  *a1 = result;
  return result;
}

uint64_t sub_220B3366C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220BCC970();
  *a1 = result;
  return result;
}

double sub_220B336F8@<D0>(double *a1@<X8>)
{
  sub_220B48844();
  sub_220BCC9E0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_220B33794@<X0>(uint64_t a1@<X8>)
{
  sub_220B487F0();
  result = sub_220BCC9E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_220B337F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220B3385C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_220B3392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220BCC2E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220B33A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220BCC2E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_220B33B94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B33BD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TPSAppSearchQuery_origin;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_220B33C2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TPSAppSearchQuery_origin;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_220B33C80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220B33CC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_220B33D04(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9ECE8(v1);
}

uint64_t sub_220B33D54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B33D8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B33F40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_220B3401C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = v4;
  return result;
}

id sub_220B34068@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

uint64_t sub_220B340A8()
{
  v1 = sub_220BCC820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220B34130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B34168()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F48);
  sub_220BCC860();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F80);
  sub_220BCC860();
  sub_220B43830(&qword_27CF76F60, &qword_27CF76F48);
  swift_getWitnessTable();
  sub_220B43830(&qword_27CF76F88, &qword_27CF76F80);
  return swift_getWitnessTable();
}

uint64_t sub_220B3429C@<X0>(_BYTE *a1@<X8>)
{
  sub_220B599BC();
  result = sub_220BCC9E0();
  *a1 = v3;
  return result;
}

uint64_t sub_220B3433C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D60);
  sub_220BCCC40();
  sub_220B59078();
  swift_getWitnessTable();
  sub_220BCD350();
  sub_220BCC860();
  sub_220BCC860();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_220B344A8()
{
  type metadata accessor for SearchResultsView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F98);
  sub_220B5A4EC(&qword_27CF76FA0, type metadata accessor for SearchResultsView);
  sub_220B5A534();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_220B34564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220BCC2E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220B34698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220BCC2E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_220B347DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B34814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220B348DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77070);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220B349A0()
{
  v1 = type metadata accessor for ItemListView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_220BCC830();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_220B3385C(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220B34AE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B34B60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_220B34C28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220B34CD8()
{
  MEMORY[0x223D93990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B34D10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B34D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_220B34DB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_220B34E34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B34E7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B34EC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77170);
  sub_220BCC860();
  sub_220B63348();
  return swift_getWitnessTable();
}

uint64_t sub_220B34F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_220BCCF10();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220B35078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_220BCCF10();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_220B351AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220B35218()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B35268()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF771F8);
  sub_220B65508();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_220B352D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF772A8);
  sub_220BCC640();
  sub_220BCC860();
  sub_220B66620();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_220BCD370();
  sub_220BCCC40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_220B353FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220B354B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220B3555C()
{
  v1 = (type metadata accessor for AttributionActionModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_220B680EC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40));
  v5 = v0 + v4 + v1[7];
  v6 = type metadata accessor for AttributionItem();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = sub_220BCBF80();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_220B356FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF772E8);
  sub_220B68198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_220B357C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B35800()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B35844()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B3587C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220B35938(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220B359E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220B35A2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77388);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220B35AC8()
{
  v1 = type metadata accessor for DeviceExpertClientView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_220B680EC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40));
  v5 = v0 + v4 + *(v1 + 20);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A0) + 32);
  v7 = sub_220BCC2E0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v0 + v4 + *(v1 + 24);
  v10 = type metadata accessor for DeviceExpertViewModel();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 8))(v9, v7);
      v14 = type metadata accessor for SummarizedAnswerViewModel();
      sub_220B5E8DC(*(v9 + v14[5]), *(v9 + v14[5] + 8), *(v9 + v14[5] + 16));

      sub_220B5E8DC(*(v9 + v14[6]), *(v9 + v14[6] + 8), *(v9 + v14[6] + 16));

      sub_220B5E8DC(*(v9 + v14[7]), *(v9 + v14[7] + 8), *(v9 + v14[7] + 16));

      v13 = v14[8];
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_4;
      }

      (*(v8 + 8))(v9, v7);
      v12 = type metadata accessor for ListAnswerViewModel();
      sub_220B5E8DC(*(v9 + v12[6]), *(v9 + v12[6] + 8), *(v9 + v12[6] + 16));

      sub_220B5E8DC(*(v9 + v12[8]), *(v9 + v12[8] + 8), *(v9 + v12[8] + 16));

      v13 = v12[9];
    }

    v15 = v9 + v13;
    v16 = type metadata accessor for AttributionItem();
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 32);
      v18 = sub_220BCBF80();
      v19 = *(v18 - 8);
      v23 = v17;
      v20 = v15 + v17;
      v21 = v18;
      if (!(*(v19 + 48))(v20, 1, v18))
      {
        (*(v19 + 8))(v15 + v23, v21);
      }
    }
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_220B35EB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
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

uint64_t sub_220B35FD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_220B360F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF773B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF773A8);
  sub_220B724EC();
  sub_220B725A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_220B36198()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8) - 8);
  v25 = *(v1 + 80);
  v2 = (v25 + 32) & ~v25;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for DeviceExpertClientView();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v26 = *(*(v4 - 8) + 64);
  swift_unknownObjectRelease();
  v7 = sub_220BCC2E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v27 = (v2 + v3 + v5) & ~v5;
  v10 = v0 + v6;
  sub_220B680EC(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40));
  v11 = v0 + v6 + *(v4 + 20);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A0) + 32);
  if (!v9(v11 + v12, 1, v7))
  {
    (*(v8 + 8))(v11 + v12, v7);
  }

  v13 = v10 + *(v4 + 24);
  v14 = type metadata accessor for DeviceExpertViewModel();
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 8))(v13, v7);
      v18 = type metadata accessor for SummarizedAnswerViewModel();
      sub_220B5E8DC(*(v13 + v18[5]), *(v13 + v18[5] + 8), *(v13 + v18[5] + 16));

      sub_220B5E8DC(*(v13 + v18[6]), *(v13 + v18[6] + 8), *(v13 + v18[6] + 16));

      sub_220B5E8DC(*(v13 + v18[7]), *(v13 + v18[7] + 8), *(v13 + v18[7] + 16));

      v17 = v18[8];
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_6;
      }

      (*(v8 + 8))(v13, v7);
      v16 = type metadata accessor for ListAnswerViewModel();
      sub_220B5E8DC(*(v13 + v16[6]), *(v13 + v16[6] + 8), *(v13 + v16[6] + 16));

      sub_220B5E8DC(*(v13 + v16[8]), *(v13 + v16[8] + 8), *(v13 + v16[8] + 16));

      v17 = v16[9];
    }

    v19 = v13 + v17;
    v20 = type metadata accessor for AttributionItem();
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {

      v21 = *(v20 + 32);
      v22 = sub_220BCBF80();
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(v19 + v21, 1, v22))
      {
        (*(v23 + 8))(v19 + v21, v22);
      }
    }
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8);

  return MEMORY[0x2821FE8E8](v0, v27 + v26, v25 | v5 | 7);
}

uint64_t sub_220B36638(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_220B366F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220B367A8()
{
  v1 = sub_220BCBF80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220B36838()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B368C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_220BCCF10();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_220B36A50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_220BCCF10();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_220B36BE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_220BCC9A0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_220B36C48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B36C80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B36D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220BCC990();
  *a1 = result & 1;
  return result;
}

void sub_220B36D84(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9F470(v1);
}

id sub_220B36DB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_220B36E64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220B7AC8C();
  *a1 = result;
  return result;
}

uint64_t sub_220B36E90(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC6TipsUI12TipViewModel____lazy_storage___assetViewModel) = *a1;
}

uint64_t sub_220B36EDC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775D0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

void *sub_220B36FA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220B37054()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B370A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220B370E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220B37138()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B3717C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF778E0);
  sub_220BCC860();
  sub_220B86DAC();
  return swift_getWitnessTable();
}

void sub_220B37208(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_220BCDB70();
  [v2 setIdentifier_];
}

uint64_t sub_220B3726C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_220B372D4()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220B37334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B373D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220BCC890();
  *a1 = result;
  return result;
}

uint64_t sub_220B374EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[7] + 8);
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

  else
  {
    v15 = sub_220BCCF10();
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[11];
      goto LABEL_5;
    }

    v16 = sub_220BCD960();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[12];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_220B376CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
    return result;
  }

  v14 = sub_220BCCF10();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  v15 = sub_220BCD960();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_220B378AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220B378EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B37988()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77C30);
  sub_220BCC860();
  sub_220B906CC();
  return swift_getWitnessTable();
}

void sub_220B37A80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B91544(v1);
}

void sub_220B37AB4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B91A74(v1);
}

uint64_t sub_220B37BF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B37C28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77250);
  sub_220BCC860();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77258);
  sub_220BCC860();
  sub_220B43830(&qword_2812C09C0, &qword_27CF77250);
  swift_getWitnessTable();
  sub_220B43830(&qword_2812C09A8, &qword_27CF77258);
  return swift_getWitnessTable();
}

uint64_t sub_220B37D58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B37D90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B37DD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_220B37E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_220B37E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_220B37EC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_220B37F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_220B38004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77070);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_220B380D4()
{
  v1 = type metadata accessor for LineByLineRevealModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_220BCC830();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_220B38258(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9F12C(v1);
}

void sub_220B38294(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9F8D0(v1);
}

uint64_t sub_220B3831C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_220B38364@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_220B383D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_pendingSharedVariantID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_220B3842C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_currentTipList;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_220B3848C@<X0>(void *a1@<X8>)
{
  result = sub_220BA0840();
  *a1 = result;
  return result;
}

void sub_220B384B8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController);
  *(*a2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController) = *a1;
  v3 = v2;
}

uint64_t sub_220B38538()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77ED0);
  sub_220BCC860();
  sub_220BA4F8C();
  return swift_getWitnessTable();
}

void sub_220B38674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220BAD338(v1);
}

uint64_t sub_220B386A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_220B38708(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220BAD538(v1);
}

uint64_t sub_220B38768()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220B387B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchPerformedDebouncer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_220B38838@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_220B388A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220BA9234(v1);
}

uint64_t sub_220B38938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_220B38990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_220B389E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchLocation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_220B38A3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchLocation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_220B38AD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B38B08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220B38B50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_220B38BB0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220B38C08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_220B38C40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B38D18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B38D50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77F30);
  sub_220BCC860();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77F40);
  sub_220BCC860();
  sub_220B43830(&qword_2812C09C8, &qword_27CF77F30);
  swift_getWitnessTable();
  sub_220B43830(&qword_2812C09B0, &qword_27CF77F40);
  return swift_getWitnessTable();
}

uint64_t sub_220B38E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListAnswerViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220B38EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListAnswerViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220B38F94@<X0>(_BYTE *a1@<X8>)
{
  sub_220B5E148();
  result = sub_220BCC9E0();
  *a1 = v3;
  return result;
}

uint64_t sub_220B39030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B390A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220B39114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
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

    return (v10 + 1);
  }
}

uint64_t sub_220B391E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220B392D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B39350()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B393A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
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

    return (v10 + 1);
  }
}

uint64_t sub_220B39474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220B3965C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220B396DC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_220BCDB70();
  [v2 setIdentifier_];
}

uint64_t sub_220B39740()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_220B397A8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220B3980C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t sub_220B39A94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TPSSearchResultViewModel_supportFlowSearchResultsProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_220B39B6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B39BA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220B39BDC()
{
  MEMORY[0x223D93990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220B39CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF782B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF782B0);
  sub_220BC826C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_220B39D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_2812C0C10;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_220B39DEC()
{
  sub_220BCCEA0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_220BCC7F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78078);
  sub_220BCC860();
  swift_getOpaqueTypeConformance2();
  sub_220B43830(&qword_27CF78070, &qword_27CF78078);
  return swift_getWitnessTable();
}

uint64_t sub_220B3A008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220B3A074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220B3A128(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_220B3A13C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_220B3A74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_220B3BEAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v3 - 160), 8);
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_220B3D9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_220B3E76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_220B3F8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_220B416A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_220B42080@<Q0>(uint64_t a1@<X8>)
{
  v17 = *(v1 + 16);
  sub_220B43454();

  v3 = sub_220BCCF80();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  sub_220BCD470();
  sub_220BCC880();
  *&v16[55] = v20;
  *&v16[71] = v21;
  *&v16[87] = v22;
  *&v16[103] = v23;
  *&v16[7] = v17;
  *&v16[23] = v18;
  v11 = v7 & 1;
  *&v16[39] = v19;
  v12 = sub_220BCCCD0();
  v13 = sub_220BCCE60();
  v14 = swift_getKeyPath();
  *(a1 + 113) = *&v16[64];
  *(a1 + 129) = *&v16[80];
  *(a1 + 145) = *&v16[96];
  *(a1 + 49) = *v16;
  *(a1 + 65) = *&v16[16];
  result = *&v16[32];
  *(a1 + 81) = *&v16[32];
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 160) = *(&v23 + 1);
  *(a1 + 97) = *&v16[48];
  *(a1 + 168) = 256;
  *(a1 + 172) = v12;
  *(a1 + 176) = v14;
  *(a1 + 184) = v13;
  return result;
}

uint64_t sub_220B42220(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223D91100](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_220B42274(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x223D91110](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_220B42398()
{
  sub_220BCE210();
  swift_getWitnessTable();
  sub_220BCC3A0();
  return sub_220BCE240();
}

uint64_t sub_220B42400(uint64_t a1, id *a2)
{
  result = sub_220BCDB80();
  *a2 = 0;
  return result;
}

uint64_t sub_220B42478(uint64_t a1, id *a2)
{
  v3 = sub_220BCDB90();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_220B424F8@<X0>(uint64_t *a1@<X8>)
{
  sub_220BCDBA0();
  v2 = sub_220BCDB70();

  *a1 = v2;
  return result;
}

uint64_t sub_220B4253C()
{
  sub_220B42688(&qword_27CF76A38, type metadata accessor for AttributeName);
  sub_220B42688(&qword_27CF76A40, type metadata accessor for AttributeName);

  return sub_220BCE0F0();
}

uint64_t sub_220B42688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220B426D0()
{
  swift_getWitnessTable();

  return sub_220BCC390();
}

uint64_t sub_220B427CC()
{
  sub_220B42688(&qword_27CF76AB8, type metadata accessor for TextStyle);
  sub_220B42688(&qword_27CF76AC0, type metadata accessor for TextStyle);

  return sub_220BCE0F0();
}

double sub_220B42888@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_220B42894()
{
  sub_220B42688(&qword_27CF76A20, type metadata accessor for Weight);
  sub_220B42688(&qword_27CF76A28, type metadata accessor for Weight);
  sub_220B42FCC();
  return sub_220BCE0F0();
}

uint64_t sub_220B429EC()
{
  sub_220B42688(&qword_27CF76A10, type metadata accessor for TPSAnimationSource);
  sub_220B42688(&qword_27CF76A18, type metadata accessor for TPSAnimationSource);

  return sub_220BCE0F0();
}

uint64_t sub_220B42AA8()
{
  sub_220B42688(&qword_2812C08E0, type metadata accessor for Key);
  sub_220B42688(&qword_27CF76AC8, type metadata accessor for Key);

  return sub_220BCE0F0();
}

uint64_t sub_220B42B64@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220BCDB70();

  *a1 = v2;
  return result;
}

uint64_t sub_220B42BAC()
{
  sub_220B42688(&qword_27CF76AA8, type metadata accessor for OptionKey);
  sub_220B42688(&qword_27CF76AB0, type metadata accessor for OptionKey);

  return sub_220BCE0F0();
}

uint64_t sub_220B42C70()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x223D92FD0](*&v1);
}

uint64_t sub_220B42CAC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_220B42CC4()
{
  v0 = sub_220BCDBA0();
  v1 = MEMORY[0x223D929D0](v0);

  return v1;
}

uint64_t sub_220B42D00()
{
  sub_220BCDBA0();
  sub_220BCDBF0();
}

uint64_t sub_220B42D54()
{
  sub_220BCDBA0();
  sub_220BCE210();
  sub_220BCDBF0();
  v0 = sub_220BCE240();

  return v0;
}

uint64_t sub_220B42EB4()
{
  v0 = sub_220BCDBA0();
  v2 = v1;
  if (v0 == sub_220BCDBA0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_220BCE130();
  }

  return v5 & 1;
}

unint64_t sub_220B42FCC()
{
  result = qword_27CF76A30;
  if (!qword_27CF76A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76A30);
  }

  return result;
}

uint64_t type metadata accessor for AttributionView()
{
  result = qword_27CF76A58;
  if (!qword_27CF76A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220B430E4()
{
  result = type metadata accessor for AttributionItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220B43164(uint64_t a1, unint64_t *a2)
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

unint64_t sub_220B43454()
{
  result = qword_2812C0960;
  if (!qword_2812C0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0960);
  }

  return result;
}

unint64_t sub_220B434A8()
{
  result = qword_27CF76AD0;
  if (!qword_27CF76AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76AD8);
    sub_220B435A8();
    sub_220B43830(&qword_27CF76B40, &qword_27CF76B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76AD0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_220B435A8()
{
  result = qword_27CF76AE0;
  if (!qword_27CF76AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76AE8);
    sub_220B43660();
    sub_220B43830(&qword_27CF76B30, &qword_27CF76B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76AE0);
  }

  return result;
}

unint64_t sub_220B43660()
{
  result = qword_27CF76AF0;
  if (!qword_27CF76AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76AF8);
    sub_220B436EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76AF0);
  }

  return result;
}

unint64_t sub_220B436EC()
{
  result = qword_27CF76B00;
  if (!qword_27CF76B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76B08);
    sub_220B43778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76B00);
  }

  return result;
}

unint64_t sub_220B43778()
{
  result = qword_27CF76B10;
  if (!qword_27CF76B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76B18);
    sub_220B43830(&qword_27CF76B20, &qword_27CF76B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76B10);
  }

  return result;
}

uint64_t sub_220B43830(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static Array.colorsFromGradient(_:)(void *a1)
{
  if (a1)
  {
    v11 = MEMORY[0x277D84F90];
    v1 = a1;
    v2 = [v1 stops];
    sub_220B43A8C();
    v3 = sub_220BCDC70();

    if (v3 >> 62)
    {
      v4 = sub_220BCDF70();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x223D92D80](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          v7 = v6;
          v8 = [v6 colorString];
          if (v8)
          {
            v9 = v8;
            sub_220BCDBA0();

            _sSo7UIColorC6TipsUIE25colorForSystemColorStringyABSSFZ_0();

            sub_220BCD150();

            MEMORY[0x223D929F0](v10);
            if (*(v11 + 16) >= *(v11 + 24) >> 1)
            {
              sub_220BCDC80();
            }

            sub_220BCDC90();
          }

          else
          {
          }
        }
      }
    }
  }
}

unint64_t sub_220B43A8C()
{
  result = qword_2812C0918;
  if (!qword_2812C0918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C0918);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for ListItemDocumentImageView()
{
  result = qword_27CF76B60;
  if (!qword_27CF76B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B43B94()
{
  sub_220B43C80(319, &qword_2812C0A40, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_220B43C80(319, &qword_27CF76B70, MEMORY[0x277CE0358]);
    if (v1 <= 0x3F)
    {
      sub_220B43CD4();
      if (v2 <= 0x3F)
      {
        sub_220B43D68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220B43C80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220BCC600();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220B43CD4()
{
  if (!qword_2812C0A08)
  {
    type metadata accessor for SearchResultsViewModel();
    sub_220B46240(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
    v0 = sub_220BCC7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0A08);
    }
  }
}

unint64_t sub_220B43D68()
{
  result = qword_27CF76B78;
  if (!qword_27CF76B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF76B78);
  }

  return result;
}

uint64_t sub_220B43DD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_220BCC9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_220B462DC(v2, &v14 - v9, &qword_27CF76CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC5C0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_220B43FD0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B80);
  MEMORY[0x28223BE20](v17);
  v2 = &v15 - v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B88);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B90);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76B98);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76BA0);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  type metadata accessor for ListItemDocumentImageView();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_220B44410(v13);
    sub_220B462DC(v13, v7, &qword_27CF76BA0);
    swift_storeEnumTagMultiPayload();
    sub_220B45A80();
    sub_220B45B30();
    sub_220BCCC30();
    sub_220B462DC(v10, v4, &qword_27CF76B98);
    swift_storeEnumTagMultiPayload();
    sub_220B459F4();
    sub_220BCCC30();
    sub_220B463F4(v10, &qword_27CF76B98);
    return sub_220B463F4(v13, &qword_27CF76BA0);
  }

  else
  {
    v15 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_220B44AD8(v2);
      sub_220B462DC(v2, v7, &qword_27CF76B80);
      swift_storeEnumTagMultiPayload();
      sub_220B45A80();
      sub_220B45B30();
      sub_220BCCC30();
      sub_220B462DC(v10, v4, &qword_27CF76B98);
      swift_storeEnumTagMultiPayload();
      sub_220B459F4();
      sub_220BCCC30();
      sub_220B463F4(v10, &qword_27CF76B98);
      return sub_220B463F4(v2, &qword_27CF76B80);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_220B459F4();
      return sub_220BCCC30();
    }
  }
}

uint64_t sub_220B44410@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v62 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v64 = &KeyPath - v6;
  MEMORY[0x28223BE20](v5);
  v63 = &KeyPath - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76BC0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &KeyPath - v9;
  v11 = sub_220BCC5C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &KeyPath - v16;
  v69 = type metadata accessor for SearchResultsViewModel.AssetConfiguration();
  MEMORY[0x28223BE20](v69);
  v70 = (&KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + *(type metadata accessor for ListItemDocumentImageView() + 28));
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v60 = v19;
    v65 = v1;
    sub_220B43DD0(v17);
    (*(v12 + 104))(v15, *MEMORY[0x277CDF3C0], v11);
    v22 = sub_220BCC5B0();
    v23 = *(v12 + 8);
    v23(v15, v11);
    v23(v17, v11);
    v24 = v70;
    SearchResultsViewModel.thumbnailAssetConfiguration(for:userInterfaceStyle:)(v21, v22 & 1, v70);
    v25 = *v24;
    v26 = v24[1];
    v27 = v63;
    sub_220B462DC(v24 + *(v69 + 20), v63, &qword_27CF76C90);
    v28 = v64;
    sub_220B462DC(v27, v64, &qword_27CF76C90);
    KeyPath = swift_getKeyPath();
    v72 = 0;
    v29 = v62;
    sub_220B462DC(v28, v62, &qword_27CF76C90);
    v30 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = v26;
    sub_220B46540(v29, v31 + v30, &qword_27CF76C90);
    v71 = 0;

    sub_220BCD3C0();
    v62 = *(&v73 + 1);
    v32 = v73;
    LODWORD(v61) = v74;
    v33 = sub_220BCD1B0();
    sub_220B463F4(v28, &qword_27CF76C90);
    sub_220B463F4(v27, &qword_27CF76C90);
    LOBYTE(v25) = v72;
    LOBYTE(v30) = HIBYTE(v71);
    v34 = swift_getKeyPath();
    v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C98) + 36)];
    sub_220B4540C(v35);
    v36 = sub_220BCD460();
    v38 = v37;
    v39 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CA0) + 36));
    *v39 = v36;
    v39[1] = v38;
    *v10 = KeyPath;
    v10[8] = v25;
    *(v10 + 2) = sub_220B460F0;
    *(v10 + 3) = v31;
    v10[32] = v30;
    v40 = v62;
    *(v10 + 5) = v32;
    *(v10 + 6) = v40;
    v10[56] = v61;
    *(v10 + 8) = 0;
    *(v10 + 9) = v33;
    *(v10 + 10) = v34;
    v10[88] = 1;
    v41 = v70;
    sub_220BCD460();
    sub_220BCC6C0();
    v42 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CA8) + 36)];
    v43 = v74;
    *v42 = v73;
    *(v42 + 1) = v43;
    *(v42 + 2) = v75;
    v44 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CB0) + 36)];
    v45 = *(sub_220BCC870() + 20);
    v46 = *MEMORY[0x277CE0118];
    v47 = sub_220BCCAC0();
    (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
    __asm { FMOV            V0.2D, #16.0 }

    *v44 = _Q0;
    *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C88) + 36)] = 256;
    v53 = v67;
    sub_220B43DD0(&v10[*(v67 + 52)]);

    sub_220B46160(v41);
    v54 = v68;
    sub_220B46540(v10, v68, &qword_27CF76BC0);
    return (*(v66 + 56))(v54, 0, 1, v53);
  }

  else
  {
    v56 = v67;
    v57 = *(v66 + 56);
    v58 = v68;

    return v57(v58, 1, 1, v56);
  }
}

uint64_t sub_220B44AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCCC80();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CF8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76BF8);
  MEMORY[0x28223BE20](v80);
  v17 = &v71 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76BE8);
  MEMORY[0x28223BE20](v81);
  v84 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76BD8);
  v86 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v83 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v82 = &v71 - v22;
  v23 = *(type metadata accessor for ListItemDocumentImageView() + 28);
  v85 = v1;
  v24 = *(v1 + v23);
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = v24;
    v28 = [v26 tocAssets];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 symbolId];

      if (v30)
      {
        v74 = v27;
        v75 = a1;
        sub_220BCDBA0();

        sub_220BCD280();
        sub_220BCCD10();
        v31 = sub_220BCCD20();
        (*(*(v31 - 8) + 56))(v15, 0, 1, v31);
        sub_220BCD2C0();

        sub_220B463F4(v15, &qword_27CF76CF8);
        sub_220BCCB30();
        v32 = sub_220BCCB40();
        (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
        v73 = sub_220BCD290();

        sub_220B463F4(v12, &qword_27CF76CF0);
        v72 = sub_220BCD160();
        KeyPath = swift_getKeyPath();
        sub_220BCCDF0();
        v34 = sub_220BCCDD0();
        (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
        v35 = sub_220BCCE00();
        sub_220B463F4(v9, &qword_27CF76CE8);
        v36 = swift_getKeyPath();
        LOBYTE(v88) = 1;
        v37 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C18) + 36)];
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C68) + 28);
        v39 = *MEMORY[0x277CE1058];
        v40 = sub_220BCD2A0();
        (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
        *v37 = swift_getKeyPath();
        *v17 = v73;
        *(v17 + 1) = KeyPath;
        *(v17 + 2) = v72;
        *(v17 + 3) = 0;
        *(v17 + 16) = 1;
        *(v17 + 5) = v36;
        *(v17 + 6) = v35;
        LOBYTE(v35) = sub_220BCCD60();
        v41 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C08) + 36)];
        *v41 = v35;
        *(v41 + 8) = 0u;
        *(v41 + 24) = 0u;
        v41[40] = 1;
        sub_220BCD460();
        sub_220BCC6C0();
        v42 = &v17[*(v80 + 36)];
        v43 = v89;
        *v42 = v88;
        *(v42 + 1) = v43;
        *(v42 + 2) = v90;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_220BCC4C0();

        if (v87 == 1 && (v44 = v76, sub_220B792C4(v76), v45 = v77, sub_220BCCC70(), v46 = sub_220BCCC50(), v47 = *(v78 + 8), v48 = v45, v49 = v79, v47(v48, v79), v47(v44, v49), (v46 & 1) != 0))
        {
          v50 = &selRef_clearColor;
        }

        else
        {
          v50 = &selRef_tertiarySystemFillColor;
        }

        v53 = [objc_opt_self() *v50];
        v54 = sub_220BCD150();
        v55 = sub_220BCCD60();

        v56 = v84;
        sub_220B46540(v17, v84, &qword_27CF76BF8);
        v57 = v56 + *(v81 + 36);
        *v57 = v54;
        *(v57 + 8) = v55;
        v58 = v83;
        v59 = &v83[*(v19 + 36)];
        v60 = *(sub_220BCC870() + 20);
        v61 = *MEMORY[0x277CE0118];
        v62 = sub_220BCCAC0();
        (*(*(v62 - 8) + 104))(&v59[v60], v61, v62);
        __asm { FMOV            V0.2D, #16.0 }

        *v59 = _Q0;
        *&v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C88) + 36)] = 256;
        sub_220B46540(v56, v58, &qword_27CF76BE8);
        v68 = v82;
        sub_220B46540(v58, v82, &qword_27CF76BD8);
        v69 = v68;
        v70 = v75;
        sub_220B46540(v69, v75, &qword_27CF76BD8);
        return (*(v86 + 56))(v70, 0, 1, v19);
      }
    }
  }

  v51 = *(v86 + 56);

  return v51(a1, 1, 1, v19);
}

uint64_t sub_220B4540C@<X0>(uint64_t a1@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CB8);
  MEMORY[0x28223BE20](v45);
  v4 = (&v38 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CC0);
  MEMORY[0x28223BE20](v5);
  v42 = (&v38 - v6);
  v7 = sub_220BCCC80();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for ListItemDocumentImageView();
  v14 = *(v1 + *(v13 + 28));
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v43 = v5;
  v44 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v14;
  sub_220BCC4C0();

  if (v46)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v46 != 1)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v18 = v47;
  v39 = v46;
  v19 = [v16 identifier];
  v20 = sub_220BCDBA0();
  v22 = v21;

  if (!v18)
  {

LABEL_9:

    goto LABEL_10;
  }

  if (v39 == v20 && v18 == v22)
  {

    v23 = v43;
  }

  else
  {
    v26 = sub_220BCE130();

    v23 = v43;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = *(*(v1 + *(v13 + 24) + 8) + OBJC_IVAR___TPSSearchResultViewModel_keyboardStatusObserver);
  if (!v27 || (swift_getKeyPath(), v46 = v27, sub_220B46240(&qword_27CF76CD0, type metadata accessor for ExternalKeyboardMonitor), , v23 = v43, sub_220BCC300(), , v28 = *(v27 + 16), , v28 != 1) || (sub_220B792C4(v12), sub_220BCCC60(), v29 = sub_220BCCC50(), v30 = v41, v31 = *(v40 + 8), v31(v10, v41), v31(v12, v30), (v29 & 1) == 0))
  {
    sub_220BCD1C0();
    v32 = sub_220BCD1E0();

    v46 = v32;
    sub_220B46288();
    v33 = sub_220BCD240();
    v34 = *(v23 + 36);
    v35 = *MEMORY[0x277CE13B8];
    v36 = sub_220BCD4D0();
    v37 = v42;
    (*(*(v36 - 8) + 104))(v42 + v34, v35, v36);
    *v37 = v33;
    sub_220B462DC(v37, v4, &qword_27CF76CC0);
    swift_storeEnumTagMultiPayload();
    sub_220B461BC();
    sub_220BCCC30();
    return sub_220B463F4(v37, &qword_27CF76CC0);
  }

LABEL_10:
  v24 = [objc_opt_self() tertiarySystemFillColor];
  *v4 = sub_220BCD150();
  swift_storeEnumTagMultiPayload();
  sub_220B461BC();
  return sub_220BCCC30();
}

unint64_t sub_220B459F4()
{
  result = qword_27CF76BA8;
  if (!qword_27CF76BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76B98);
    sub_220B45A80();
    sub_220B45B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76BA8);
  }

  return result;
}

unint64_t sub_220B45A80()
{
  result = qword_27CF76BB0;
  if (!qword_27CF76BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76BA0);
    sub_220B43830(&qword_27CF76BB8, &qword_27CF76BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76BB0);
  }

  return result;
}

unint64_t sub_220B45B30()
{
  result = qword_27CF76BC8;
  if (!qword_27CF76BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76B80);
    sub_220B45BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76BC8);
  }

  return result;
}

unint64_t sub_220B45BB4()
{
  result = qword_27CF76BD0;
  if (!qword_27CF76BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76BD8);
    sub_220B45C6C();
    sub_220B43830(&qword_27CF76C80, &qword_27CF76C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76BD0);
  }

  return result;
}

unint64_t sub_220B45C6C()
{
  result = qword_27CF76BE0;
  if (!qword_27CF76BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76BE8);
    sub_220B45D24();
    sub_220B43830(&qword_27CF76C70, &qword_27CF76C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76BE0);
  }

  return result;
}

unint64_t sub_220B45D24()
{
  result = qword_27CF76BF0;
  if (!qword_27CF76BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76BF8);
    sub_220B45DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76BF0);
  }

  return result;
}

unint64_t sub_220B45DB0()
{
  result = qword_27CF76C00;
  if (!qword_27CF76C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76C08);
    sub_220B45E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76C00);
  }

  return result;
}

unint64_t sub_220B45E3C()
{
  result = qword_27CF76C10;
  if (!qword_27CF76C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76C18);
    sub_220B45EF4();
    sub_220B43830(&qword_27CF76C60, &qword_27CF76C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76C10);
  }

  return result;
}

unint64_t sub_220B45EF4()
{
  result = qword_27CF76C20;
  if (!qword_27CF76C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76C28);
    sub_220B45FAC();
    sub_220B43830(&qword_27CF76B40, &qword_27CF76B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76C20);
  }

  return result;
}

unint64_t sub_220B45FAC()
{
  result = qword_27CF76C30;
  if (!qword_27CF76C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76C38);
    sub_220B46038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76C30);
  }

  return result;
}

unint64_t sub_220B46038()
{
  result = qword_27CF76C40;
  if (!qword_27CF76C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76C48);
    sub_220B43830(&qword_27CF76C50, &qword_27CF76C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76C40);
  }

  return result;
}

uint64_t sub_220B460F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_220B58218(v2, v3, v4);
}

uint64_t sub_220B46160(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsViewModel.AssetConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220B461BC()
{
  result = qword_27CF76CC8;
  if (!qword_27CF76CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76CC8);
  }

  return result;
}

uint64_t sub_220B46240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220B46288()
{
  result = qword_27CF76CD8;
  if (!qword_27CF76CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76CD8);
  }

  return result;
}

uint64_t sub_220B462DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B46344@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220BCC970();
  *a1 = result;
  return result;
}

uint64_t sub_220B4639C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220BCC930();
  *a1 = result;
  return result;
}

uint64_t sub_220B463F4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220B46478(uint64_t a1)
{
  v2 = sub_220BCD2A0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220BCC8C0();
}

uint64_t sub_220B46540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_220B465A8()
{
  result = qword_27CF76D00;
  if (!qword_27CF76D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D08);
    sub_220B459F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76D00);
  }

  return result;
}

uint64_t sub_220B46634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a1;
  v25 = a2;
  v4 = sub_220BCC2E0();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220BCC2B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DeviceExpertViewModel();
  MEMORY[0x28223BE20](v24);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220BCC120();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCC140();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D38DE0])
  {
    sub_220BCC2C0();
    v18 = sub_220BCC270();
    (*(v8 + 8))(v10, v7);
    v19 = *(v18 + 16);

    (*(v22 + 16))(v6, v3, v23);
    sub_220B469AC(v21, v26);
    if (v19)
    {
      sub_220B5ABBC(v6, v26, v12);
    }

    else
    {
      sub_220B48B34(v6, v26, v12);
    }

    swift_storeEnumTagMultiPayload();
    return sub_220B46A10(v12, v25);
  }

  else if (v17 == *MEMORY[0x277D38DD8])
  {
    (*(v22 + 16))(v6, v2, v23);
    sub_220B469AC(v21, v26);
    sub_220B48B34(v6, v26, v25);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_220B469AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_220B46A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B46A74()
{
  v1 = *(v0 + 64);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v1 + 16);
  if (v2)
  {
    swift_getKeyPath();
    sub_220B4849C(&qword_2812C2180, type metadata accessor for TipsContentModel);
    v4 = v3;
    sub_220BCC300();

    v5 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentTip;
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = v6;

    if (!v6)
    {
      return 0;
    }

    v8 = [v7 fullContent];

    if (!v8)
    {
      return 0;
    }

    v9 = [v8 assets];

    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_220B4849C(&qword_2812C2180, type metadata accessor for TipsContentModel);
    v10 = v3;
    sub_220BCC300();

    v11 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentCollection;
    swift_beginAccess();
    v12 = *&v10[v11];
    v13 = v12;

    if (!v12)
    {
      return 0;
    }

    v14 = [v13 featuredContent];

    if (!v14)
    {
      return 0;
    }

    v9 = [v14 assets];

    if (!v9)
    {
      return 0;
    }
  }

  v15 = [v9 alt];

  if (v15)
  {
    v16 = sub_220BCDBA0();

    return v16;
  }

  return 0;
}

uint64_t RemoteVideoView.init(viewModel:showReplayButtonAtVideoEnd:isImageLoaded:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  type metadata accessor for DocumentAssetViewModel();
  sub_220B4849C(&qword_2812C13B0, type metadata accessor for DocumentAssetViewModel);

  v14 = sub_220BCC7A0();
  v16 = v15;
  if (a5)
  {
  }

  else
  {
    sub_220BCD3C0();

    a4 = v21;
    a5 = v22;
    a6 = v23;
  }

  *a7 = KeyPath;
  *(a7 + 8) = 0;
  *(a7 + 16) = v12;
  *(a7 + 24) = 0;
  *(a7 + 32) = v13;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 49) = 0;
  *(a7 + 56) = v14;
  *(a7 + 64) = v16;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a1;
  *(a7 + 104) = a2;
  *(a7 + 112) = a3 & 1;
  return result;
}

uint64_t RemoteVideoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_220BCCAF0();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCCD40();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D10);
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D18);
  v12 = MEMORY[0x28223BE20](v44);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v43 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v53 = &v43 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D20);
  MEMORY[0x28223BE20](v51);
  v52 = &v43 - v18;
  v19 = v1[5];
  v71 = v1[4];
  v72 = v19;
  v73 = v1[6];
  v74 = *(v1 + 112);
  v20 = v1[1];
  v67 = *v1;
  v68 = v20;
  v21 = v1[3];
  v69 = v1[2];
  v70 = v21;
  v22 = sub_220BCD460();
  v24 = v23;
  sub_220B474F8(&v67, &v87);
  v83 = v95;
  v84 = v96;
  v85 = v97;
  v79 = v91;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v86[8] = v95;
  v86[9] = v96;
  v86[10] = v97;
  v86[4] = v91;
  v86[5] = v92;
  v86[6] = v93;
  v86[7] = v94;
  v86[0] = v87;
  v86[1] = v88;
  v86[2] = v89;
  v86[3] = v90;
  sub_220B462DC(&v75, &v55, &qword_27CF76D28);
  sub_220B463F4(v86, &qword_27CF76D28);
  v64 = v83;
  v65 = v84;
  v66 = v85;
  v60 = v79;
  v61 = v80;
  v62 = v81;
  v63 = v82;
  v56 = v75;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  *&v55 = v22;
  *(&v55 + 1) = v24;
  sub_220BCCD30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D30);
  v26 = sub_220B48198();
  sub_220BCD0B0();
  (*(v45 + 8))(v7, v46);
  v95 = v63;
  v96 = v64;
  v97 = v65;
  v98 = v66;
  v91 = v59;
  v92 = v60;
  v93 = v61;
  v94 = v62;
  v87 = v55;
  v88 = v56;
  v89 = v57;
  v90 = v58;
  v27 = v43;
  sub_220B463F4(&v87, &qword_27CF76D30);
  sub_220BCCAD0();
  *&v55 = v25;
  *(&v55 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v47;
  sub_220BCD0E0();
  (*(v49 + 8))(v4, v50);
  (*(v48 + 8))(v11, v28);
  v59 = v71;
  v60 = v72;
  v61 = v73;
  LOBYTE(v62) = v74;
  v55 = v67;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v29 = sub_220B46A74();
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  *&v55 = v31;
  *(&v55 + 1) = v32;
  sub_220B43454();
  sub_220BCC840();

  sub_220B337F0(v14);
  v59 = v71;
  v60 = v72;
  v61 = v73;
  LOBYTE(v62) = v74;
  v55 = v67;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  sub_220B46A74();
  if (v33)
  {
  }

  v34 = v53;
  sub_220BCC850();
  sub_220B337F0(v27);
  v35 = swift_allocObject();
  v36 = v72;
  *(v35 + 80) = v71;
  *(v35 + 96) = v36;
  *(v35 + 112) = v73;
  *(v35 + 128) = v74;
  v37 = v68;
  *(v35 + 16) = v67;
  *(v35 + 32) = v37;
  v38 = v70;
  *(v35 + 48) = v69;
  *(v35 + 64) = v38;
  v39 = v34;
  v40 = v52;
  sub_220B46540(v39, v52, &qword_27CF76D18);
  v41 = (v40 + *(v51 + 36));
  *v41 = sub_220B4823C;
  v41[1] = v35;
  v41[2] = 0;
  v41[3] = 0;
  sub_220B46540(v40, v54, &qword_27CF76D20);
  return sub_220B48260(&v67, &v55);
}

uint64_t sub_220B474F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_220BCC9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220B4798C(a1, &v73);
  v46 = v74;
  v47 = *(&v73 + 1);
  v45 = *(&v74 + 1);
  v43 = *(&v75 + 1);
  v44 = v75;
  v48 = v76;
  v49 = v73;
  HIDWORD(v42) = BYTE8(v76);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v73)
  {

    v82 = *(a1 + 24);
    v8 = *(a1 + 16);
    v81 = v8;
    if (v82 == 1)
    {
      v9 = v8;
    }

    else
    {

      sub_220BCDDC0();
      v10 = sub_220BCCD50();
      sub_220BCC3C0();

      sub_220BCC9C0();
      swift_getAtKeyPath();
      sub_220B463F4(&v81, &qword_27CF76D50);
      (*(v5 + 8))(v7, v4);
      v9 = *&v73;
    }
  }

  else
  {
    v9 = 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v11 = v73;
  if (v73)
  {
    v12 = sub_220BCD460();
    v14 = v13;
    sub_220B47E34(v11, a1, &v55);
    v68 = v57;
    v69 = v58;
    v70 = v59;
    *&v71 = v60;
    v66 = v55;
    v67 = v56;
    v78 = v60;
    v75 = v57;
    v76 = v58;
    v77 = v59;
    v73 = v55;
    v74 = v56;
    sub_220B462DC(&v66, &v50, &qword_27CF76D48);
    sub_220B463F4(&v73, &qword_27CF76D48);

    v15 = v12;
    v17 = *(&v66 + 1);
    v16 = v66;
    v19 = *(&v67 + 1);
    v18 = v67;
    v21 = *(&v68 + 1);
    v20 = v68;
    v23 = *(&v69 + 1);
    v22 = v69;
    v25 = *(&v70 + 1);
    v24 = v70;
    v26 = v71;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v28 = v46;
  v27 = v47;
  *&v50 = v49;
  *(&v50 + 1) = v47;
  v29 = v44;
  v30 = v45;
  *&v51 = v46;
  *(&v51 + 1) = v45;
  v31 = v43;
  *&v52 = v44;
  *(&v52 + 1) = v43;
  *&v53 = v48;
  v32 = BYTE4(v42);
  BYTE8(v53) = BYTE4(v42);
  v54 = v9;
  v63 = v52;
  v64 = v53;
  v61 = v50;
  v62 = v51;
  *&v66 = v15;
  *(&v66 + 1) = v14;
  *&v67 = v16;
  *(&v67 + 1) = v17;
  *&v68 = v18;
  *(&v68 + 1) = v19;
  *&v69 = v20;
  *(&v69 + 1) = v21;
  *&v70 = v22;
  *(&v70 + 1) = v23;
  *&v71 = v24;
  *(&v71 + 1) = v25;
  v72 = v26;
  *(&v65[1] + 8) = v67;
  *(&v65[2] + 8) = v68;
  *(v65 + 8) = v66;
  *v65 = v9;
  *(&v65[6] + 1) = v26;
  *(&v65[5] + 8) = v71;
  *(&v65[4] + 8) = v70;
  *(&v65[3] + 8) = v69;
  v33 = v51;
  *a2 = v50;
  a2[1] = v33;
  v34 = v63;
  v35 = v64;
  v36 = v65[1];
  a2[4] = v65[0];
  a2[5] = v36;
  a2[2] = v34;
  a2[3] = v35;
  v37 = v65[2];
  v38 = v65[3];
  v39 = v65[6];
  a2[9] = v65[5];
  a2[10] = v39;
  v40 = v65[4];
  a2[7] = v38;
  a2[8] = v40;
  a2[6] = v37;
  *&v73 = v15;
  *(&v73 + 1) = v14;
  *&v74 = v16;
  *(&v74 + 1) = v17;
  *&v75 = v18;
  *(&v75 + 1) = v19;
  *&v76 = v20;
  *(&v76 + 1) = v21;
  *&v77 = v22;
  *(&v77 + 1) = v23;
  v78 = v24;
  v79 = v25;
  v80 = v26;
  sub_220B462DC(&v50, &v55, &qword_27CF76D38);
  sub_220B462DC(&v66, &v55, &qword_27CF76D40);
  sub_220B463F4(&v73, &qword_27CF76D40);
  return sub_220B484E4(v49, v27, v28, v30, v29, v31, v48, v32 & 1);
}

double sub_220B4798C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  v3 = sub_220BCC9D0();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCD270();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v10 = v27;
  if (BYTE8(v27))
  {
    sub_220B485EC(v27, SBYTE8(v27));
    v11 = sub_220BCD1B0();
    LOBYTE(v30) = 1;
    *&v42 = v11;
    v44[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D60);
    sub_220B48608(&qword_2812C09E0, &qword_27CF76D60, &unk_220BD11A0, sub_220B4868C);
    sub_220BCCC30();
  }

  else
  {
    v23 = v5;
    v24 = v3;
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v12 = sub_220BCD2B0();
    (*(v7 + 8))(v9, v6);
    v46 = *(a1 + 8);
    v13 = *a1;
    v45 = *a1;
    if (v46 == 1)
    {
      v41 = v13 & 1;
    }

    else
    {

      sub_220BCDDC0();
      v14 = sub_220BCCD50();
      sub_220BCC3C0();

      v15 = v23;
      sub_220BCC9C0();
      swift_getAtKeyPath();
      sub_220B463F4(&v45, &qword_27CF76D70);
      (*(v25 + 8))(v15, v24);
      LOBYTE(v13) = v41;
    }

    v16 = swift_allocObject();
    v17 = *(a1 + 80);
    *(v16 + 80) = *(a1 + 64);
    *(v16 + 96) = v17;
    *(v16 + 112) = *(a1 + 96);
    *(v16 + 128) = *(a1 + 112);
    v18 = *(a1 + 16);
    *(v16 + 16) = *a1;
    *(v16 + 32) = v18;
    v19 = *(a1 + 48);
    *(v16 + 48) = *(a1 + 32);
    *(v16 + 64) = v19;
    v39 = 1;
    v40 = 0;
    v30 = v12;
    v31 = 0;
    v32 = 1;
    v33 = v13 & 1;
    v34 = sub_220B48898;
    v35 = v16;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    swift_retain_n();
    swift_retain_n();
    sub_220B48260(a1, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D60);
    sub_220B48608(&qword_2812C09E0, &qword_27CF76D60, &unk_220BD11A0, sub_220B4868C);
    sub_220BCCC30();
    sub_220B485EC(v10, 0);

    v27 = v42;
    v28 = v43;
    v29[0] = *v44;
    *(v29 + 9) = *&v44[9];
  }

  v20 = v28;
  v21 = v26;
  *v26 = v27;
  v21[1] = v20;
  v21[2] = v29[0];
  result = *(v29 + 9);
  *(v21 + 41) = *(v29 + 9);
  return result;
}

uint64_t sub_220B47E34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for DocumentAssetViewModel();
  sub_220B4849C(&qword_2812C13B0, type metadata accessor for DocumentAssetViewModel);
  sub_220BCC7B0();
  swift_getKeyPath();
  sub_220BCC7C0();

  v6 = v18;
  v7 = v19;
  v8 = v20;
  sub_220BCC7B0();
  swift_getKeyPath();
  sub_220BCC7C0();

  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = a1;
  sub_220B48564(v18, v19);
  sub_220B48564(v21, v22);

  sub_220B485A4(v18, v19);
  sub_220B485A4(v21, v22);
  v13 = swift_allocObject();
  v14 = *(a2 + 80);
  *(v13 + 80) = *(a2 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a2 + 96);
  *(v13 + 128) = *(a2 + 112);
  v15 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v15;
  v16 = *(a2 + 48);
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = v16;
  *a3 = v12;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = sub_220B485E8;
  *(a3 + 64) = v13;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return sub_220B48260(a2, &v18);
}

uint64_t sub_220B48034@<X0>(uint64_t a1@<X8>)
{
  sub_220B487F0();
  result = sub_220BCC9E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_220B4808C()
{
  sub_220B487F0();

  return sub_220BCC9F0();
}

double sub_220B480FC@<D0>(double *a1@<X8>)
{
  sub_220B48844();
  sub_220BCC9E0();
  result = v3;
  *a1 = v3;
  return result;
}

unint64_t sub_220B48198()
{
  result = qword_2812C0978;
  if (!qword_2812C0978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0978);
  }

  return result;
}

uint64_t sub_220B481FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_220B482EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220B48334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220B483A4()
{
  result = qword_2812C09F8;
  if (!qword_2812C09F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D30);
    sub_220B48198();
    swift_getOpaqueTypeConformance2();
    sub_220B4849C(&qword_2812C0998, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09F8);
  }

  return result;
}

uint64_t sub_220B4849C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220B484E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  if ((a8 & 1) == 0)
  {
    sub_220B3A128(a4);

    return sub_220B3A128(a6);
  }

  return result;
}

uint64_t sub_220B48564(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_220B485A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_220B485EC(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_220B48608(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220B4868C()
{
  result = qword_2812C09F0;
  if (!qword_2812C09F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09F0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_220B3385C(*(v0 + 16), *(v0 + 24));
  sub_220B3385C(*(v0 + 32), *(v0 + 40));
  sub_220B481FC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 65));

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

unint64_t sub_220B487F0()
{
  result = qword_2812C09D0;
  if (!qword_2812C09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09D0);
  }

  return result;
}

unint64_t sub_220B48844()
{
  result = qword_2812C0F80;
  if (!qword_2812C0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0F80);
  }

  return result;
}

id static TPSAnalyticsEventContentViewed.analyticsViewMode(forTraitCollection:)(void *a1)
{
  v1 = [swift_getObjCClassFromMetadata() analyticsViewModeForInterfaceStyle_];

  return v1;
}

id sub_220B4890C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 analyticsViewModeForInterfaceStyle_];

  return v5;
}

id static TPSAnalyticsEventContentViewed.analyticsViewMode(forInterfaceStyle:)(uint64_t a1)
{
  v1 = MEMORY[0x277D71868];
  v2 = MEMORY[0x277D71860];
  if (a1 != 2)
  {
    v2 = MEMORY[0x277D71870];
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  return *v1;
}

id sub_220B489A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D71868];
  v4 = MEMORY[0x277D71860];
  if (a3 != 2)
  {
    v4 = MEMORY[0x277D71870];
  }

  if (a3 != 1)
  {
    v3 = v4;
  }

  return *v3;
}

uint64_t type metadata accessor for SummarizedAnswerViewModel()
{
  result = qword_27CF76D80;
  if (!qword_27CF76D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B48A4C()
{
  sub_220BCC2E0();
  if (v0 <= 0x3F)
  {
    sub_220B48ADC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220B48ADC()
{
  if (!qword_27CF76D90)
  {
    type metadata accessor for AttributionItem();
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF76D90);
    }
  }
}

uint64_t sub_220B48B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v64 - v6;
  v7 = sub_220BCC2B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SummarizedAnswerViewModel();
  v12 = v11[8];
  v13 = type metadata accessor for AttributionItem();
  v65 = *(v13 - 8);
  v14 = *(v65 + 56);
  v74 = v12;
  v66 = a3;
  v72 = v65 + 56;
  v73 = v13;
  v71 = v14;
  (v14)(a3 + v12, 1, 1);
  v15 = sub_220BCC2E0();
  v69 = *(v15 - 8);
  v16 = *(v69 + 16);
  v67 = a1;
  v70 = v15;
  v16(a3, a1);
  sub_220BCC2C0();
  v17 = sub_220BCC090();
  v18 = *(v8 + 8);
  v19 = v7;
  v18(v10, v7);
  v20 = sub_220B670E4(v17);
  v22 = v21;
  LOBYTE(v7) = v23;
  v25 = v24;

  v26 = v66;
  v27 = v66 + v11[5];
  *v27 = v20;
  *(v27 + 8) = v22;
  *(v27 + 16) = v7 & 1;
  *(v27 + 24) = v25;
  v28 = v26;
  v29 = v67;
  sub_220BCC2C0();
  v30 = sub_220BCC290();
  v18(v10, v19);
  v31 = sub_220B670E4(v30);
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;

  v37 = v28 + v11[6];
  *v37 = v31;
  *(v37 + 8) = v33;
  *(v37 + 16) = v22 & 1;
  *(v37 + 24) = v36;
  v38 = sub_220BCC0B0();
  v39 = sub_220B670E4(v38);
  v41 = v40;
  LOBYTE(v22) = v42;
  v44 = v43;

  v45 = v28 + v11[7];
  *v45 = v39;
  *(v45 + 8) = v41;
  *(v45 + 16) = v22 & 1;
  *(v45 + 24) = v44;
  v46 = v68;
  sub_220B469AC(v68, v79);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  MEMORY[0x28223BE20](v47);
  v49 = (&v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v49;
  v52 = type metadata accessor for TipsApp();
  v77 = v52;
  v78 = &off_28345CDC0;
  v76[0] = v51;
  type metadata accessor for AttributionItemFactory();
  inited = swift_initStackObject();
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  MEMORY[0x28223BE20](v54);
  v56 = (&v64 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v56;
  inited[5] = v52;
  inited[6] = &off_28345CDC0;
  inited[2] = v58;
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v59 = sub_220BCC130();
  v60 = sub_220B9A30C(v59);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 2));
  v61 = v75;
  if (v60[2])
  {
    sub_220B49240(v60 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v75);
    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  (*(v69 + 8))(v29, v70);
  v71(v61, v62, 1, v73);
  return sub_220B492A4(v61, v28 + v74);
}

uint64_t sub_220B490C8()
{
  if ((sub_220BCCF40() & 1) == 0 || (sub_220BCCF40() & 1) == 0)
  {
    return 0;
  }

  return sub_220BCCF40();
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_220B49240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B492A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SearchResults.tips.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *SearchResults.topics.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *SearchResults.supportFlows.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t SearchResults.init(tips:topics:supportFlows:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TPSAppSearchQuery.Origin.description.getter(unint64_t a1)
{
  if (a1 >= 3)
  {
    result = sub_220BCE160();
    __break(1u);
  }

  else
  {

    return sub_220BCDBA0();
  }

  return result;
}

unint64_t TPSAppSearchQuery.Origin.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_220B49440()
{
  v1 = *v0;
  sub_220BCE210();
  MEMORY[0x223D92FC0](v1);
  return sub_220BCE240();
}

uint64_t sub_220B494B4()
{
  v1 = *v0;
  sub_220BCE210();
  MEMORY[0x223D92FC0](v1);
  return sub_220BCE240();
}

uint64_t *sub_220B494F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_220B49514()
{
  if (*v0 >= 3uLL)
  {
    result = sub_220BCE160();
    __break(1u);
  }

  else
  {

    return sub_220BCDBA0();
  }

  return result;
}

uint64_t TPSAppSearchQuery.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSAppSearchQuery_identifier);

  return v1;
}

uint64_t sub_220B49750()
{
  v1 = sub_220BCDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = sub_220BCDA10();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_220B498F0()
{
  swift_beginAccess();
  sub_220BCDA20();
  return swift_endAccess();
}

uint64_t sub_220B49958@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_220BCDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  v10 = sub_220BCDA10();
  v12 = v11;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_220B49A78()
{
  swift_beginAccess();

  sub_220BCDA20();
  return swift_endAccess();
}

void (*sub_220B49AE8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  *(v3 + 56) = sub_220BCDA00();
  return sub_220B49B7C;
}

void sub_220B49B7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_220B49C18()
{
  v1 = OBJC_IVAR___TPSAppSearchQuery_origin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_220B49CB0(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSAppSearchQuery_origin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TPSAppSearchQuery.init(searchTerm:origin:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a3;
  v8 = sub_220BCC020();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220BCDA30();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  sub_220BCD9F0();
  (*(v12 + 32))(&v6[v15], v14, v11);
  v16 = OBJC_IVAR___TPSAppSearchQuery_origin;
  *&v6[OBJC_IVAR___TPSAppSearchQuery_origin] = 0;
  swift_beginAccess();
  (*(v12 + 8))(&v6[v15], v11);
  sub_220BCD9F0();
  swift_endAccess();
  swift_beginAccess();
  *&v6[v16] = v24;
  if (a5)
  {
    v17 = v23;
  }

  else
  {
    sub_220BCC010();
    v17 = sub_220BCC000();
    a5 = v18;
    (*(v22 + 8))(v10, v8);
  }

  v19 = &v6[OBJC_IVAR___TPSAppSearchQuery_identifier];
  *v19 = v17;
  v19[1] = a5;
  v20 = type metadata accessor for TPSAppSearchQuery();
  v25.receiver = v6;
  v25.super_class = v20;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t type metadata accessor for TPSAppSearchQuery()
{
  result = qword_2812C1B80;
  if (!qword_2812C1B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static TPSAppSearchQuery.makeQuery(with:origin:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a1;
  v21 = a3;
  v3 = sub_220BCC020();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220BCDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TPSAppSearchQuery();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;

  sub_220BCD9F0();
  (*(v8 + 32))(&v12[v13], v10, v7);
  v14 = OBJC_IVAR___TPSAppSearchQuery_origin;
  *&v12[OBJC_IVAR___TPSAppSearchQuery_origin] = 0;
  swift_beginAccess();
  (*(v8 + 8))(&v12[v13], v7);
  sub_220BCD9F0();
  swift_endAccess();
  swift_beginAccess();
  *&v12[v14] = v21;
  sub_220BCC010();
  v15 = sub_220BCC000();
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  v18 = &v12[OBJC_IVAR___TPSAppSearchQuery_identifier];
  *v18 = v15;
  v18[1] = v17;
  v22.receiver = v12;
  v22.super_class = v11;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_220B4A3A0(uint64_t a1)
{
  *(v2 + 2424) = v1;
  *(v2 + 2376) = a1;
  return MEMORY[0x2822009F8](sub_220B4A3C4, 0, 0);
}

uint64_t sub_220B4A3C4()
{
  v1 = v0[303];
  v2 = swift_allocObject();
  v0[309] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA0);
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  v0[310] = v5;
  *(v5 + 16) = v3;
  v6 = v3;
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v0[311] = v7;
  *(v7 + 16) = v6;
  v8 = v6;
  swift_asyncLet_begin();
  if (sub_220B6C988())
  {
    v9 = v0[303];
    v10 = swift_task_alloc();
    v0[312] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = xmmword_220BD1220;
    v11 = swift_task_alloc();
    v0[313] = v11;
    *v11 = v0;
    v11[1] = sub_220B4A618;

    return MEMORY[0x282200740](v0 + 251, v4, v4, 0, 0, &unk_220BD1280, v10, v4);
  }

  else
  {

    return MEMORY[0x282200928](v0 + 82, v0 + 253, sub_220B4AF74, v0 + 268);
  }
}

void sub_220B4A618()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_220B4A754, 0, 0);
  }
}

uint64_t sub_220B4A754()
{
  v1 = *(v0 + 2008);
  *(v0 + 2512) = v1;
  if (*(v0 + 2016))
  {
    *(v0 + 2184) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    swift_willThrowTypedImpl();
    sub_220B4D4D0(v1);
    v2 = sub_220B4AF74;
    v3 = (v0 + 656);
    v4 = v0 + 2024;
    v5 = v0 + 2144;
    goto LABEL_40;
  }

  v6 = sub_220BCD740();
  if (v6 >> 62)
  {
    goto LABEL_38;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v7)
  {
LABEL_39:
    v2 = sub_220B4AE50;
    v3 = (v0 + 656);
    v4 = v0 + 2024;
    v5 = v0 + 2048;
LABEL_40:

    return MEMORY[0x282200928](v3, v4, v2, v5);
  }

LABEL_5:
  v8 = sub_220BCD740();
  v9 = v8;
  v43 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    v10 = sub_220BCDF70();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  v42 = v0;
  if (v10)
  {
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D92D80](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v0 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v35 = sub_220BCDF70();

        if (!v35)
        {
          goto LABEL_39;
        }

        goto LABEL_5;
      }

      v15 = sub_220BCD6C0();
      v17 = v16;
      sub_220BCD870();
      v18 = sub_220BCD840();
      if (v17)
      {
        if (v15 == v18 && v17 == v19)
        {
        }

        else
        {
          v20 = sub_220BCE130();

          if ((v20 & 1) == 0)
          {

            goto LABEL_10;
          }
        }

        sub_220BCE000();
        sub_220BCE020();
        sub_220BCE030();
        sub_220BCE010();
      }

      else
      {
      }

LABEL_10:
      ++v12;
      if (v0 == v10)
      {
        v21 = v43;
        v0 = v42;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_25;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_25:
  *(v0 + 2520) = v21;

  v22 = sub_220BCD740();
  if (v22 >> 62)
  {
    v36 = v22;
    v23 = sub_220BCDF70();
    v22 = v36;
    if (!v23)
    {
      goto LABEL_45;
    }

LABEL_27:
    v24 = v22;
    v3 = sub_220B4CDA4(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v25 = v11;
      sub_220BCDAE0();
      v26 = 0;
      v27 = v24;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x223D92D80](v26, v27);
        }

        else
        {
          v28 = *(v27 + 8 * v26 + 32);
        }

        v29 = v28;
        v44 = sub_220BCDAB0();
        v45 = v30;
        MEMORY[0x223D929B0](0x22203D3D20, 0xE500000000000000);
        v31 = sub_220BCD6D0();
        MEMORY[0x223D929B0](v31);

        MEMORY[0x223D929B0](25378, 0xE200000000000000);

        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_220B4CDA4((v32 > 1), v33 + 1, 1);
        }

        ++v26;
        *(v25 + 16) = v33 + 1;
        v34 = v25 + 16 * v33;
        *(v34 + 32) = v44;
        *(v34 + 40) = v45;
        v27 = v24;
      }

      while (v23 != v26);

      v0 = v42;
      goto LABEL_46;
    }

    __break(1u);
    return MEMORY[0x282200928](v3, v4, v2, v5);
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    goto LABEL_27;
  }

LABEL_45:

  v25 = MEMORY[0x277D84F90];
LABEL_46:
  *(v0 + 2232) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DB8);
  sub_220B4D4DC();
  v37 = sub_220BCDB30();
  v39 = v38;

  *(v0 + 2528) = v39;
  v40 = swift_task_alloc();
  *(v0 + 2536) = v40;
  *v40 = v0;
  v40[1] = sub_220B4AC50;

  return sub_220B4D648(3, 3, v37, v39);
}

uint64_t sub_220B4AC50(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2544) = a1;
  *(v3 + 1985) = a2;

  return MEMORY[0x2822009F8](sub_220B4AD74, 0, 0);
}

uint64_t sub_220B4AD74()
{
  v1 = *(v0 + 2544);
  if (*(v0 + 1985))
  {
    *(v0 + 2280) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    swift_willThrowTypedImpl();
    sub_220B4D4D0(v1);
    v1 = 0;
  }

  sub_220BCD6A0();
  sub_220BCD760();

  return MEMORY[0x282200928](v0 + 656, v0 + 2024, sub_220B4AE50, v0 + 2048);
}

uint64_t sub_220B4AE6C()
{
  v1 = *(v0 + 2024);
  if (*(v0 + 2032))
  {
    *(v0 + 2328) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    swift_willThrowTypedImpl();
    v2 = 0;
  }

  else
  {
    v2 = v1;
    sub_220BCD740();
    sub_220B4D4D0(v1);
  }

  v3 = *(v0 + 2512);
  sub_220BCD760();

  sub_220B4E284(v3);
  *(v0 + 2552) = *(v0 + 2512);

  return MEMORY[0x282200928](v0 + 16, v0 + 1976, sub_220B4B044, v0 + 2240);
}

uint64_t sub_220B4AF90()
{
  v1 = *(v0 + 2024);
  if (*(v0 + 2032))
  {
    *(v0 + 2136) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    swift_willThrowTypedImpl();
    v1 = 0;
  }

  else
  {
    v2 = v1;
  }

  *(v0 + 2552) = v1;
  v3 = v1;

  return MEMORY[0x282200928](v0 + 16, v0 + 1976, sub_220B4B044, v0 + 2240);
}

uint64_t sub_220B4B060()
{
  v1 = *(v0 + 1976);
  if (*(v0 + 1984))
  {
    *(v0 + 2088) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    swift_willThrowTypedImpl();
    v1 = 0;
  }

  else
  {
    v2 = v1;
  }

  *(v0 + 2560) = v1;
  v3 = v1;

  return MEMORY[0x282200928](v0 + 1296, v0 + 1992, sub_220B4B114, v0 + 2336);
}

uint64_t sub_220B4B130()
{
  v1 = *(v0 + 1992);
  if (*(v0 + 2000))
  {
    *(v0 + 2040) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    swift_willThrowTypedImpl();
    v1 = 0;
  }

  else
  {
    v2 = v1;
  }

  v3 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  if (v3)
  {

LABEL_7:
    v5 = *(v0 + 2376);
    *v5 = vextq_s8(*(v0 + 2552), *(v0 + 2552), 8uLL);
    v5[1].i64[0] = v1;
    v6 = sub_220B4B378;
    v7 = v0 + 1296;
    v8 = v0 + 1992;
    v9 = v0 + 2288;
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_7;
  }

  sub_220B4D3B8();
  *(v0 + 2568) = swift_allocError();
  swift_willThrow();

  v6 = sub_220B4B268;
  v7 = v0 + 1296;
  v8 = v0 + 1992;
  v9 = v0 + 2432;
LABEL_8:

  return MEMORY[0x282200920](v7, v8, v6, v9);
}

uint64_t sub_220B4B2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220B4B40C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220B4B488(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_220BCDA30();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4B548, 0, 0);
}

uint64_t sub_220B4B548()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_220BCDA10();
  v8 = v7;
  v0[10] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_220B4B660;

  return sub_220B4D648(2, 0, v6, v8);
}

uint64_t sub_220B4B660(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x2822009F8](sub_220B4EB98, 0, 0);
}

uint64_t sub_220B4B784(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_220BCDA30();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4B844, 0, 0);
}

uint64_t sub_220B4B844()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_220BCDA10();
  v8 = v7;
  v0[10] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_220B4B95C;

  return sub_220B4D648(3, 0, v6, v8);
}

uint64_t sub_220B4B95C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x2822009F8](sub_220B4BA80, 0, 0);
}

uint64_t sub_220B4BA80()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  *v2 = *(v0 + 96);
  *(v2 + 8) = v1 & 1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_220B4BAFC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_220BCDA30();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4BBBC, 0, 0);
}

uint64_t sub_220B4BBBC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_220BCDA10();
  v8 = v7;
  v0[10] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_220B4B660;

  return sub_220B4D648(4, 0, v6, v8);
}

uint64_t sub_220B4BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4BD78, 0, 0);
}

uint64_t sub_220B4BD78()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_220BCDD40();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v8 = v4;
  sub_220B4C5E8(v1, &unk_220BD14A8, v7);
  sub_220B4E918(v1);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_220B4C5E8(v1, &unk_220BD14B8, v9);
  sub_220B4E918(v1);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E10);
  *v10 = v0;
  v10[1] = sub_220B4BF50;

  return MEMORY[0x2822004D0](v0 + 2, 0, 0, v11);
}

uint64_t sub_220B4BF50()
{

  if (v0)
  {

    v1 = sub_220B4C174;
  }

  else
  {
    v1 = sub_220B4C068;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_220B4C068()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
  sub_220BCDD90();
  if (v2 == 255)
  {
    sub_220BCDCE0();
    sub_220B4E7F8();
    v1 = swift_allocError();
    sub_220BCDAF0();
    LOBYTE(v2) = 1;
  }

  v3 = *(v0 + 32);
  *v3 = v1;
  *(v3 + 8) = v2 & 1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_220B4C174()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
  sub_220BCDD90();
  sub_220BCDCE0();
  sub_220B4E7F8();
  v1 = swift_allocError();
  sub_220BCDAF0();
  v2 = *(v0 + 32);
  *v2 = v1;
  *(v2 + 8) = 1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_220B4C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_220BCDA30();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4C328, 0, 0);
}

uint64_t sub_220B4C328()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_220BCDA10();
  v8 = v7;
  v0[11] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_220B4C448;
  v10 = v0[7];

  return sub_220B4D648(v10, 0, v6, v8);
}

uint64_t sub_220B4C448(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x2822009F8](sub_220B4C56C, 0, 0);
}

uint64_t sub_220B4C56C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  *v2 = *(v0 + 104);
  *(v2 + 8) = v1 & 1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_220B4C5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_220B4EB28(a1, v18 - v8);
  v10 = sub_220BCDD40();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_220B4E918(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_220BCDCB0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_220BCDD30();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA0);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_220B4C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_220BCE050();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4C884, 0, 0);
}

uint64_t sub_220B4C884()
{
  v1 = *(v0 + 24);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_220BCE1A0();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_220B4C964;

  return sub_220B99A60(v2, v3, 0, 0, 1);
}

uint64_t sub_220B4C964()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_220B4CB84;
  }

  else
  {
    v5 = sub_220B4CAD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_220B4CAD4()
{
  v1 = *(v0 + 16);
  sub_220BCDCE0();
  sub_220B4E7F8();
  v2 = swift_allocError();
  sub_220BCDAF0();
  *v1 = v2;
  *(v1 + 8) = 1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_220B4CB84()
{

  v1 = *(v0 + 8);

  return v1();
}

id TPSAppSearchQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSAppSearchQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAppSearchQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_220B4CD44(char *a1, int64_t a2, char a3)
{
  result = sub_220B4CE04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220B4CD64(void *a1, int64_t a2, char a3)
{
  result = sub_220B4D01C(a1, a2, a3, *v3, &qword_27CF76DE8, &unk_220BD1480, &qword_27CF76DF0);
  *v3 = result;
  return result;
}

char *sub_220B4CDA4(char *a1, int64_t a2, char a3)
{
  result = sub_220B4CF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220B4CDC4(void *a1, int64_t a2, char a3)
{
  result = sub_220B4D01C(a1, a2, a3, *v3, &qword_27CF76DD0, &unk_220BD2490, &qword_27CF76DD8);
  *v3 = result;
  return result;
}

char *sub_220B4CE04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220B4CF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_220B4D01C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void (*sub_220B4D150(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D92D80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_220B4D1D0;
  }

  __break(1u);
  return result;
}

uint64_t sub_220B4D1D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220B4EBA0;

  return sub_220B4B488(a1, v4);
}

uint64_t sub_220B4D278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220B4EBA0;

  return sub_220B4B784(a1, v4);
}

uint64_t sub_220B4D318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220B4EBA0;

  return sub_220B4BAFC(a1, v4);
}

unint64_t sub_220B4D3B8()
{
  result = qword_27CF76DB0;
  if (!qword_27CF76DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76DB0);
  }

  return result;
}

uint64_t sub_220B4D40C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_220B4EBA0;

  return sub_220B4BCD4(a1, a2, v6, v7, v8);
}

unint64_t sub_220B4D4DC()
{
  result = qword_27CF76DC0;
  if (!qword_27CF76DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76DC0);
  }

  return result;
}

uint64_t (*sub_220B4D540(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D92D80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_220B4EB9C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_220B4D5C0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D92D80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_220B4D640;
  }

  __break(1u);
  return result;
}

uint64_t sub_220B4D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_220BCD630();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_220BCDCE0();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = sub_220BCC020();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B4D7D0, 0, 0);
}

uint64_t sub_220B4D7D0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_220BCC010();
  sub_220BCC000();
  (*(v2 + 8))(v1, v3);
  v4 = objc_allocWithZone(sub_220BCD680());

  v5 = sub_220BCD650();
  v0[25] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277D717A0]) init];
  v0[26] = v6;
  sub_220BCDD70();
  v7 = swift_task_alloc();
  v0[27] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[28] = v8;
  v9 = sub_220BCD770();
  *v8 = v0;
  v8[1] = sub_220B4DBEC;

  return MEMORY[0x2822008A0](v0 + 10, 0, 0, 0xD000000000000010, 0x8000000220BD6DF0, sub_220B4E850, v7, v9);
}

uint64_t sub_220B4DBEC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_220B4DFD0;
  }

  else
  {

    v2 = sub_220B4DD08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220B4DD08()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 80);
  sub_220BCDD70();
  if (v1)
  {

    *(v0 + 56) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
    v4 = swift_dynamicCast();
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    if (v4)
    {
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 144);
      v10 = *(v0 + 152);

      v11 = *(v10 + 32);
      v11(v8, v7, v9);
      sub_220BCD660();
      v12 = sub_220BCDB70();

      [v6 cancelQueryWithIdentifier_];

      sub_220B4E7F8();
      v2 = swift_allocError();
      v11(v13, v8, v9);
    }

    else
    {
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v17 = *(v0 + 120);
      v18 = *(v0 + 88);

      sub_220BCD610();
      sub_220BCDFB0();
      *(v0 + 40) = 0;
      *(v0 + 48) = 0xE000000000000000;
      MEMORY[0x223D929B0](0xD00000000000001ELL, 0x8000000220BD6DD0);
      swift_getErrorValue();
      v19 = sub_220BCE1B0();
      MEMORY[0x223D929B0](v19);

      MEMORY[0x223D929B0](0x203A726F6620, 0xE600000000000000);
      *(v0 + 72) = v18;
      sub_220BCE070();
      sub_220BCDA60();

      (*(v16 + 8))(v15, v17);
      v2 = v1;
    }
  }

  else
  {
    v14 = *(v0 + 200);
  }

  v20 = *(v0 + 8);

  return v20(v2, v1 != 0);
}

uint64_t sub_220B4DFD0()
{

  v1 = *(v0 + 232);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);

    v9 = *(v8 + 32);
    v9(v5, v6, v7);
    sub_220BCD660();
    v10 = sub_220BCDB70();

    [v4 cancelQueryWithIdentifier_];

    sub_220B4E7F8();
    v1 = swift_allocError();
    v9(v11, v5, v7);
  }

  else
  {
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v20 = *(v0 + 120);
    v16 = *(v0 + 88);

    sub_220BCD610();
    sub_220BCDFB0();
    *(v0 + 40) = 0;
    *(v0 + 48) = 0xE000000000000000;
    MEMORY[0x223D929B0](0xD00000000000001ELL, 0x8000000220BD6DD0);
    swift_getErrorValue();
    v17 = sub_220BCE1B0();
    MEMORY[0x223D929B0](v17);

    MEMORY[0x223D929B0](0x203A726F6620, 0xE600000000000000);
    *(v0 + 72) = v16;
    sub_220BCE070();
    sub_220BCDA60();

    (*(v15 + 8))(v14, v20);
  }

  v18 = *(v0 + 8);

  return v18(v1, 1);
}

unint64_t sub_220B4E294()
{
  result = qword_27CF76DC8;
  if (!qword_27CF76DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76DC8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_220B4E2FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220B4E358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_220B4E3C4()
{
  result = sub_220BCDA30();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TPSAppSearchQuery.execute()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220B4EBA0;

  return v7(a1);
}

uint64_t getEnumTagSinglePayload for TPSAppSearchQueryError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TPSAppSearchQueryError(_WORD *result, int a2, int a3)
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

unint64_t sub_220B4E7F8()
{
  result = qword_27CF76DF8;
  if (!qword_27CF76DF8)
  {
    sub_220BCDCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76DF8);
  }

  return result;
}

uint64_t sub_220B4E858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_220B4EBA0;

  return sub_220B4C264(a1, v4, v5, v7, v6);
}

uint64_t sub_220B4E918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220B4E980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_220B4EA34;

  return sub_220B4C7C4(a1, v4, v5, v6);
}

uint64_t sub_220B4EA34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_220B4EB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TipsWorkspace.execute(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_220BCBF80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    v15 = objc_allocWithZone(MEMORY[0x277D717C0]);
    v16 = sub_220BCBF20();
    v17 = [v15 initWithURL_];

    if (!v17)
    {
LABEL_18:

      return 0;
    }

    v18 = [v17 actionType];
    if (v18 > 3)
    {
      if (v18 != 4)
      {
        if (v18 == 9)
        {
          v19 = [v17 bundleID];
          if (v19)
          {
            v20 = v19;
            v38 = sub_220BCDBA0();
            v39 = v21;
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }

          v30 = [v17 identifier];
          if (v30)
          {
            v31 = v30;
            sub_220BCDBA0();
          }

          v40 = v4;
          v32 = [objc_opt_self() mainBundleIdentifier];
          if (v32)
          {
            v33 = v32;
            sub_220BCDBA0();
          }

          sub_220BCDAE0();
          sub_220BCDA80();

          v34 = v40;
          if ((*(v40 + 48))(v2, 1, v3) == 1)
          {

            sub_220B4F3F4(v2);
            return 0;
          }

          (*(v34 + 32))(v7, v2, v3);
          v35 = sub_220BCBF20();
          sub_220B4F2C4(MEMORY[0x277D84F90]);
          v36 = sub_220BCDB00();

          [v14 openSensitiveURL:v35 withOptions:v36];

          (*(v34 + 8))(v7, v3);
          return 1;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v18 == 1)
      {
        v28 = [v17 bundleID];
        if (v28)
        {
          v29 = v28;
          [v14 openApplicationWithBundleID_];

          goto LABEL_16;
        }

        goto LABEL_17;
      }

      if (v18 != 2)
      {
LABEL_13:
        v26 = sub_220BCBF20();
        sub_220B4F2C4(MEMORY[0x277D84F90]);
        v27 = sub_220BCDB00();

        [v14 openURL:v26 withOptions:v27];

LABEL_16:
        return 1;
      }
    }

    v22 = [v17 URL];
    if (v22)
    {
      v23 = v22;
      sub_220BCBF30();

      (*(v4 + 32))(v12, v10, v3);
      v24 = sub_220BCBF20();
      sub_220B4F2C4(MEMORY[0x277D84F90]);
      v25 = sub_220BCDB00();

      [v14 openSensitiveURL:v24 withOptions:v25];

      (*(v4 + 8))(v12, v3);
      return 1;
    }

LABEL_17:

    goto LABEL_18;
  }

  return result;
}

void static TipsWorkspace.openApplication(withBundleID:)()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_220BCDB70();
    [v1 openApplicationWithBundleID_];
  }
}

void static TipsWorkspace.openSensitive(_:)()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    [v2 setSensitive_];
    v3 = sub_220BCBF20();
    [v1 openURL:v3 configuration:v2 completionHandler:0];
  }
}

unint64_t sub_220B4F2C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77E50);
    v3 = sub_220BCE0E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_220B462DC(v4, &v13, &qword_27CF76E58);
      v5 = v13;
      v6 = v14;
      result = sub_220B7C4A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_220B4F8A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_220B4F3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220B4F46C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E50);
    v3 = sub_220BCE0E0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_220B7C520(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_220B4F584(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_220BCE0E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_220B7C4A8(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_220B4F680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E38);
    v3 = sub_220BCE0E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_220B7C4A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_220B4F77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E18);
    v3 = sub_220BCE0E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_220B462DC(v4, &v11, &qword_27CF76E20);
      v5 = v11;
      result = sub_220B7E0C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_220B4F8A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_220B4F8A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_220B4F8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E28);
    v3 = sub_220BCE0E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_220B462DC(v4, &v11, &qword_27CF76E30);
      v5 = v11;
      result = sub_220B7E0C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_220B4F8A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id ContentMessageViewModelProvider.provideContentMessageViewModel()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  swift_getKeyPath();
  sub_220B4FB80();
  sub_220BCC300();

  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = v4;

  v6 = objc_allocWithZone(type metadata accessor for ContentMessageViewModel());
  return ContentMessageViewModel.init(error:defaultMessage:)(v4, 0, 0);
}

id sub_220B4FAAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B4FB80();
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_220B4FB50(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9ECE8(v1);
}

unint64_t sub_220B4FB80()
{
  result = qword_2812C2180;
  if (!qword_2812C2180)
  {
    type metadata accessor for TipsContentModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C2180);
  }

  return result;
}

void sub_220B4FC08()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_220B4FFB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_220B4FC80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_220B4FDC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

void sub_220B4FFB0()
{
  if (!qword_2812C0860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76DA8);
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0860);
    }
  }
}

uint64_t sub_220B50028()
{
  v1 = *v0;
  sub_220BCE210();
  MEMORY[0x223D92FC0](v1);
  return sub_220BCE240();
}

uint64_t sub_220B5009C()
{
  v1 = *v0;
  sub_220BCE210();
  MEMORY[0x223D92FC0](v1);
  return sub_220BCE240();
}

uint64_t sub_220B500E0()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6620776F6E6B6E55;
  }
}

uint64_t getEnumTagSinglePayload for ContentLoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentLoadError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_220B502DC()
{
  result = qword_27CF76E60;
  if (!qword_27CF76E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76E60);
  }

  return result;
}

UIImage_optional __swiftcall UIImage.init(systemImageName:)(Swift::String systemImageName)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_220BCDB70();

  v3 = [ObjCClassFromMetadata _systemImageNamed_];

  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id sub_220B503AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_220BCDBA0();
  if (*(a1 + 16))
  {
    v10 = sub_220B7C4A8(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_220B506E4(*(a1 + 56) + 32 * v10, v32);
      if (swift_dynamicCast())
      {
        v13 = objc_opt_self();
        v14 = sub_220BCDB70();

        v15 = [v13 _systemImageNamed_];

        if (v15)
        {

          if ((a4 & 1) == 0)
          {
            goto LABEL_17;
          }

          v16 = sub_220BCDBA0();
          if (*(a1 + 16))
          {
            v18 = sub_220B7C4A8(v16, v17);
            v20 = v19;

            if (v20)
            {
              sub_220B506E4(*(a1 + 56) + 32 * v18, v32);
              if (swift_dynamicCast())
              {
                if (sub_220BCDBA0() == v30 && v21 == v31)
                {

LABEL_19:

                  a3 = 1;
                  goto LABEL_17;
                }

                v25 = sub_220BCE130();

                if (v25)
                {
                  goto LABEL_19;
                }

                if (sub_220BCDBA0() == v30 && v26 == v31)
                {
                }

                else
                {
                  v27 = sub_220BCE130();

                  if ((v27 & 1) == 0)
                  {
                    if (sub_220BCDBA0() == v30 && v28 == v31)
                    {

                      a3 = -1;
                    }

                    else
                    {
                      v29 = sub_220BCE130();

                      a3 = v29 << 63 >> 63;
                    }

                    goto LABEL_17;
                  }
                }

                a3 = 3;
LABEL_17:
                v23 = [objc_opt_self() configurationWithTextStyle:a2 scale:a3];
                v24 = [v15 imageByApplyingSymbolConfiguration_];

                return v24;
              }
            }
          }

          else
          {
          }

          a3 = 2;
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_220B506E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_220B50768()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

uint64_t sub_220B507E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220B50860(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_220BCC4D0();
}

uint64_t sub_220B508D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

uint64_t sub_220B5094C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_220BCC4D0();
}

uint64_t (*sub_220B509BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t sub_220B50A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E70);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E68);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_220B50C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E68);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_220B50D38(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__player;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E68);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t (*sub_220B50EF8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B50F9C;
}

uint64_t (*sub_220B50FC8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isAssetLoaded;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B51138;
}

uint64_t (*sub_220B51164(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t sub_220B51208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_220B513BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_220B514F4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isPlaying;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t sub_220B51678@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220B51708()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_220BCC4D0();
}

uint64_t sub_220B5178C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

uint64_t sub_220B5180C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_220BCC4D0();
}

uint64_t (*sub_220B51878(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

void sub_220B5191C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_220B51984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_220BCC490();
  return swift_endAccess();
}

uint64_t sub_220B51A1C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_220BCC490();
  return swift_endAccess();
}

uint64_t (*sub_220B51AA0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isVideoLoaded;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

void sub_220B51C10(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_220BCC4A0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_220BCC4A0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_220B51D88(uint64_t result)
{
  v2 = result;
  v3 = result & 1;
  v4 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_didPlayToEndTime;
  if (*(v1 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_didPlayToEndTime) != (result & 1))
  {
    type metadata accessor for DocumentAssetViewModel();
    sub_220B55E64();
    sub_220BCC420();
    sub_220BCC460();
  }

  *(v1 + v4) = v3;
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
    sub_220B43830(&qword_2812C0AE0, &qword_27CF76EC0);
    sub_220BCC470();
  }

  return result;
}

uint64_t DocumentAssetViewModel.__allocating_init(document:assetsInfo:contentModel:)(void *a1, void *a2, char *a3)
{
  v6 = swift_allocObject();
  DocumentAssetViewModel.init(document:assetsInfo:contentModel:)(a1, a2, a3);
  return v6;
}

uint64_t DocumentAssetViewModel.init(document:assetsInfo:contentModel:)(void *a1, void *a2, char *a3)
{
  v4 = v3;
  v77 = a3;
  v78 = a1;
  v90 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E88);
  v6 = *(v5 - 8);
  v86 = v5;
  v87 = v6;
  MEMORY[0x28223BE20](v5);
  v85 = v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E90);
  v9 = *(v8 - 8);
  v88 = v8;
  v89 = v9;
  MEMORY[0x28223BE20](v8);
  v84 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E98);
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  MEMORY[0x28223BE20](v11);
  v79 = v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EA0);
  v15 = *(v14 - 8);
  v75 = v14;
  v76 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v74 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = v68 - v19;
  MEMORY[0x28223BE20](v18);
  v72 = v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v68 - v25;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E68);
  v27 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v29 = v68 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EA8);
  v68[3] = v30;
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = v68 - v32;
  v34 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__imageState;
  v91 = 0;
  v92 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EB0);
  sub_220BCC480();
  (*(v31 + 32))(v4 + v34, v33, v30);
  v35 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__player;
  v91 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EB8);
  sub_220BCC480();
  (*(v27 + 32))(v4 + v35, v29, v81);
  v36 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isAssetLoaded;
  LOBYTE(v91) = 0;
  sub_220BCC480();
  v37 = *(v24 + 32);
  v37(v4 + v36, v26, v23);
  v38 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isPlaying;
  LOBYTE(v91) = 0;
  sub_220BCC480();
  v37(v4 + v38, v26, v23);
  v39 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isVideoLoaded;
  LOBYTE(v91) = 0;
  sub_220BCC480();
  v37(v4 + v39, v26, v23);
  v40 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_playerDidFinishSubject;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  swift_allocObject();
  *(v4 + v40) = sub_220BCC430();
  v81 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_networkIsReachableCancellable;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_networkIsReachableCancellable) = 0;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoLoaderCancellable) = 0;
  v71 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_cancellables;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_cancellables) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 0;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer) = 0;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_didPlayToEndTime) = 0;
  v42 = v77;
  v41 = v78;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_document) = v78;
  *(v4 + 16) = v42;
  v78 = v41;
  v77 = v42;
  v43 = sub_220BCD7A0();
  v45 = v44;
  v46 = v69;
  sub_220BCD7C0();
  type metadata accessor for RemoteFileLoader();
  swift_allocObject();
  v47 = sub_220B5C340(v43, v45, v46);
  v70 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoFileLoader;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoFileLoader) = v47;
  v48 = sub_220BCD780();
  v50 = v49;
  sub_220BCD7B0();
  type metadata accessor for RemoteImageLoader();
  swift_allocObject();
  v51 = sub_220B6BAC0(v48, v50, v46);
  v68[2] = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_imageLoader;
  *(v4 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_imageLoader) = v51;
  swift_beginAccess();

  v52 = v72;
  sub_220BCC490();
  swift_endAccess();

  swift_beginAccess();
  v53 = v73;
  sub_220BCC490();
  swift_endAccess();
  v69 = MEMORY[0x277CBCEC8];
  v68[1] = sub_220B43830(&qword_2812C0AC8, &qword_27CF76EA0);
  v54 = v75;
  sub_220BCC570();
  v55 = v76;
  v56 = *(v76 + 8);
  v56(v52, v54);
  (*(v55 + 16))(v74, v53, v54);
  swift_beginAccess();
  sub_220BCC4A0();
  swift_endAccess();
  v56(v53, v54);
  swift_beginAccess();

  sub_220BCC490();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  v57 = v79;
  sub_220BCC500();

  v56(v52, v54);
  swift_allocObject();
  swift_weakInit();
  sub_220B43830(&qword_2812C0B20, &qword_27CF76E98);
  v58 = v82;
  sub_220BCC560();

  (*(v83 + 8))(v57, v58);
  swift_beginAccess();
  sub_220BCC400();
  swift_endAccess();

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC8);
  v59 = v85;
  sub_220BCC490();
  swift_endAccess();

  sub_220B43830(&qword_2812C0AC0, &qword_27CF76E88);
  v60 = v84;
  v61 = v86;
  sub_220BCC500();
  (*(v87 + 8))(v59, v61);
  swift_allocObject();
  swift_weakInit();
  sub_220B43830(&qword_2812C0B18, &qword_27CF76E90);
  v62 = v88;
  sub_220BCC560();

  (*(v89 + 8))(v60, v62);
  swift_beginAccess();
  sub_220BCC400();
  swift_endAccess();

  v63 = v77;
  v91 = *&v77[OBJC_IVAR____TtC6TipsUI16TipsContentModel_networkDidChangeToReachable];
  v64 = swift_allocObject();
  swift_weakInit();

  v65 = swift_allocObject();
  *(v65 + 16) = sub_220B550B4;
  *(v65 + 24) = v64;
  sub_220B43830(&qword_2812C0AD8, &qword_27CF76EC0);
  v66 = sub_220BCC560();

  *(v4 + v81) = v66;

  return v4;
}

uint64_t sub_220B52BE4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  result = MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = 1;
  if (*(a1 + 8) >= 2u)
  {
    if (*a1 || (swift_beginAccess(), (result = swift_weakLoadStrong()) == 0) || (, , swift_getKeyPath(), swift_getKeyPath(), sub_220BCC4C0(), , , , EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), result = sub_220B463F4(v7, &qword_27CF76EF0), EnumCaseMultiPayload))
    {
      v8 = 0;
    }
  }

  *a2 = v8;
  return result;
}

uint64_t sub_220B52D58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_220B554A8(a1, &v8 - v5);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    *a2 = 1;
  }

  else
  {
    if (result)
    {
      *a2 = 0;
    }

    else
    {
      *a2 = 1;
    }

    return sub_220B463F4(v6, &qword_27CF76EF0);
  }

  return result;
}

uint64_t sub_220B52E34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_220BCC4D0();
  }

  return result;
}

uint64_t sub_220B52EC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220B538AC();
  }

  return result;
}

uint64_t DocumentAssetViewModel.deinit()
{
  sub_220B54BC4();

  v1 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__imageState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__player;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isAssetLoaded;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isPlaying, v6);
  v7(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel__isVideoLoaded, v6);

  return v0;
}

uint64_t DocumentAssetViewModel.__deallocating_deinit()
{
  DocumentAssetViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220B5317C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76ED0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76ED8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v22 = &v21 - v5;
  v7 = sub_220BCDF00();
  v23 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EE0);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v24 = *(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_playerDidFinishSubject);
  v28 = v24;

  sub_220BCDEF0();
  (*(v8 + 56))(v6, 1, 1, v7);
  v15 = [objc_opt_self() mainRunLoop];
  v27 = v15;
  v16 = sub_220BCDEE0();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  sub_220B55458(0, &qword_2812C0868);
  sub_220B43830(&qword_2812C0AD8, &qword_27CF76EC0);
  sub_220B550E4();
  v17 = v22;
  sub_220BCC540();
  sub_220B463F4(v3, &qword_27CF76ED0);

  sub_220B463F4(v17, &qword_27CF76ED8);
  (*(v8 + 8))(v10, v23);

  sub_220B43830(&qword_27CF76EE8, &qword_27CF76EE0);
  v18 = v25;
  v19 = sub_220BCC4F0();
  (*(v26 + 8))(v14, v18);
  return v19;
}

uint64_t sub_220B53568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  result = MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  if (*(*(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_imageLoader) + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier + 8))
  {
    v5 = objc_opt_self();

    v6 = sub_220BCDB70();

    v7 = [v5 dataCacheForIdentifier_];

    if (v7)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_220BCC4C0();

      if (v14 != 2 || v13)
      {
        sub_220B485EC(v13, v14);
      }

      else
      {
        sub_220B6BC70();
      }
    }
  }

  if (*(*(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoFileLoader) + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier + 8))
  {
    sub_220B55458(0, &qword_2812C08C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v9 = [ObjCClassFromMetadata sharedInstance];
    if (v9)
    {
      v10 = v9;
      v11 = sub_220BCDB70();

      v12 = [v10 dataCacheForIdentifier_];

      if (!v12)
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_220BCC4C0();

      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_220B463F4(v4, &qword_27CF76EF0);
        sub_220B5C58C();
      }

      return sub_220B463F4(v4, &qword_27CF76EF0);
    }

    else
    {
    }
  }

  return result;
}

id sub_220B5386C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_document) assetFileInfoManager];

  return v1;
}

void sub_220B538AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E88);
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F08);
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  if ((*(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) & 1) == 0)
  {
    v22 = v5;
    v23 = v9;
    v24 = v14;
    v25 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    if (v27)
    {
    }

    else
    {
      v20 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoFileLoader;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC8);
      v21 = v0;
      sub_220BCC490();
      swift_endAccess();

      swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      swift_weakInit();
      sub_220B43830(&qword_2812C0AC0, &qword_27CF76E88);

      sub_220BCC510();

      (*(v26 + 8))(v3, v1);

      sub_220BCBF80();
      sub_220B43830(&qword_2812C0B00, &qword_27CF76EF8);
      sub_220BCC500();
      (*(v22 + 8))(v7, v4);
      sub_220B55458(0, &qword_2812C0878);
      sub_220BCC3F0();
      (*(v23 + 8))(v11, v8);
      swift_allocObject();
      v17 = v21;
      swift_weakInit();
      sub_220B43830(&qword_2812C0B10, &qword_27CF76F08);
      v18 = v25;
      v19 = sub_220BCC560();

      (*(v24 + 8))(v16, v18);
      *(v17 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoLoaderCancellable) = v19;

      sub_220B6BC70();

      sub_220B5C58C();
    }
  }
}

uint64_t sub_220B53EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  sub_220B554A8(a1, &v7 - v3);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 1;
  }

  if (result)
  {
    sub_220B463F4(v4, &qword_27CF76EF0);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = result;

    sub_220B5D250();

    *(v6 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_220B548BC();
  }

  return sub_220B463F4(v4, &qword_27CF76EF0);
}

uint64_t sub_220B5405C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220B54BC4();
  }

  return result;
}

uint64_t sub_220B540B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  sub_220B554A8(a1, &v11 - v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_220B463F4(v6, &qword_27CF76EF0);
    v7 = sub_220BCBF80();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }

  else
  {
    v9 = sub_220BCBF80();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v6, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

id sub_220B5423C@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CE6598]);
  v3 = sub_220BCBF20();
  v4 = [v2 initWithURL_];

  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 8);
  v7 = *(MEMORY[0x277CC08F0] + 12);
  v16 = *(MEMORY[0x277CC08F0] + 16);
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v16;
  v12 = v16;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v4 seekToTime:&v17 toleranceBefore:&v13 toleranceAfter:&v9];
  result = [v4 setMuted_];
  *a1 = v4;
  return result;
}

uint64_t sub_220B54308(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_220BCC4D0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoLoaderCancellable) = 0;
  }

  return result;
}

void sub_220B543E0(uint64_t a1, int a2)
{
  v3 = v2;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-v11];
  v13 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoFileLoader;
  v14 = (*(v2 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_videoFileLoader) + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier);
  v16 = *v14;
  v15 = v14[1];

  v17 = sub_220BCD7A0();
  if (!v15)
  {
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  if (v16 != v17 || v15 != v18)
  {
    v20 = sub_220BCE130();

    if (v20)
    {
      goto LABEL_13;
    }

LABEL_11:

    sub_220B5D250();
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220B554A8(v12, v10);
    sub_220BCC4D0();
    sub_220B463F4(v12, &qword_27CF76EF0);
    v21 = *(v2 + v13);

    v22 = sub_220BCD7A0();
    v23 = (v21 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier);
    *v23 = v22;
    v23[1] = v24;

    v25 = *(v2 + v13);

    sub_220BCD7C0();
    v26 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_url;
    swift_beginAccess();
    sub_220B55518(v6, v25 + v26);
    swift_endAccess();

    sub_220B54750();
    *(v3 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = 0;

    sub_220BCC4D0();
    goto LABEL_16;
  }

LABEL_13:
  if (!*(*(v2 + v13) + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier + 8) && *(*(v2 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_imageLoader) + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier + 8))
  {
    sub_220B54750();
  }

LABEL_16:
  if (v28)
  {
    sub_220B538AC();
  }
}

uint64_t sub_220B54750()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_imageLoader;

  sub_220B6C6D4();
  swift_getKeyPath();
  swift_getKeyPath();
  v12[1] = 0;
  v13 = 2;
  sub_220BCC4D0();
  v5 = *(v0 + v4);

  v6 = sub_220BCD780();
  v7 = (v5 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier);
  *v7 = v6;
  v7[1] = v8;

  v9 = *(v0 + v4);

  sub_220BCD7B0();
  v10 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_url;
  swift_beginAccess();
  sub_220B55518(v3, v9 + v10);
  swift_endAccess();
}

uint64_t sub_220B548BC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 0;
  v2 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer;
  if (!*(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer))
  {
    v3 = *(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_document);
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v5;
      v14[4] = sub_220B55E44;
      v14[5] = v8;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 1107296256;
      v14[2] = sub_220B54B5C;
      v14[3] = &block_descriptor;
      v9 = _Block_copy(v14);
      v10 = v3;

      v11 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:0.75];

      _Block_release(v9);
      v12 = *(v1 + v2);
      *(v1 + v2) = v11;
    }
  }

  sub_220B6C6D4();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v14[0]) = 1;

  return sub_220BCC4D0();
}

void sub_220B54AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);

    sub_220BA1440(a3);
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer);
    *(v6 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer) = 0;
  }
}

void sub_220B54B5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_220B54BC4()
{
  v1 = v0;

  sub_220B6C6D4();

  sub_220B5D250();

  *(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_isLoading) = 0;
  v2 = OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer;
  [*(v1 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_prefetchTimer) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;
}

void sub_220B54C60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  [v0 play];
}

void sub_220B54CE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    [v0 pause];
  }
}

uint64_t sub_220B54DC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6TipsUI22DocumentAssetViewModel_didPlayToEndTime);
  if ((v1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    [v3 play];
  }

  return v1 ^ 1u;
}

void sub_220B54E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  [v12 pause];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v0 = v12;
  if (v12)
  {
    v1 = *MEMORY[0x277CC08F0];
    v2 = *(MEMORY[0x277CC08F0] + 8);
    v3 = *(MEMORY[0x277CC08F0] + 12);
    v11 = *(MEMORY[0x277CC08F0] + 16);
    v12 = v1;
    v13 = v2;
    v14 = v3;
    v15 = v11;
    v7 = v11;
    v8 = v1;
    v9 = v2;
    v10 = v3;
    v4 = v1;
    v5 = v2;
    v6 = v3;
    [v0 seekToTime:&v12 toleranceBefore:&v8 toleranceAfter:&v4];
  }
}

void sub_220B54F88()
{
  sub_220B54E5C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  [v0 play];
}

uint64_t sub_220B55014@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DocumentAssetViewModel();
  result = sub_220BCC420();
  *a1 = result;
  return result;
}

unint64_t sub_220B550E4()
{
  result = qword_2812C0870;
  if (!qword_2812C0870)
  {
    sub_220B55458(255, &qword_2812C0868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0870);
  }

  return result;
}

uint64_t sub_220B55174()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();
}

uint64_t sub_220B551F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_220B554A8(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220B554A8(v7, v5);

  sub_220BCC4D0();
  return sub_220B463F4(v7, &qword_27CF76EF0);
}

uint64_t sub_220B55324@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_220B553BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_220B55EBC(v1, v2);
  return sub_220BCC4D0();
}

uint64_t sub_220B55458(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_220B554A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B55518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DocumentAssetViewModel()
{
  result = qword_2812C13A0;
  if (!qword_2812C13A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B555E8()
{
  sub_220B55DA0(319, &qword_2812C0AA8, &qword_27CF76EB0);
  if (v0 <= 0x3F)
  {
    sub_220B55DA0(319, &qword_2812C0A50, &qword_27CF76EB8);
    if (v1 <= 0x3F)
    {
      sub_220B55DF4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_220B55DA0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_220BCC4E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220B55DF4()
{
  if (!qword_2812C0A58)
  {
    v0 = sub_220BCC4E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0A58);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220B55E64()
{
  result = qword_2812C13B0;
  if (!qword_2812C13B0)
  {
    type metadata accessor for DocumentAssetViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C13B0);
  }

  return result;
}

id sub_220B55EBC(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_220B55EE4()
{
  v0 = sub_220BCE100();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

id _sSo7UIColorC6TipsUIE25colorForSystemColorStringyABSSFZ_0()
{
  if (sub_220BCDC20())
  {
  }

  else
  {

    MEMORY[0x223D929B0](0x726F6C6F43, 0xE500000000000000);
  }

  switch(sub_220B55EE4())
  {
    case 1u:
      v0 = [objc_opt_self() systemBlueColor];
      goto LABEL_22;
    case 2u:
      v0 = [objc_opt_self() systemBrownColor];
      goto LABEL_22;
    case 3u:
      v0 = [objc_opt_self() systemCyanColor];
      goto LABEL_22;
    case 4u:
      v0 = [objc_opt_self() systemGrayColor];
      goto LABEL_22;
    case 5u:
      v0 = [objc_opt_self() systemGreenColor];
      goto LABEL_22;
    case 6u:
      v0 = [objc_opt_self() systemIndigoColor];
      goto LABEL_22;
    case 7u:
      v0 = [objc_opt_self() systemMintColor];
      goto LABEL_22;
    case 8u:
      v0 = [objc_opt_self() systemOrangeColor];
      goto LABEL_22;
    case 9u:
      v0 = [objc_opt_self() systemPinkColor];
      goto LABEL_22;
    case 0xAu:
      v0 = [objc_opt_self() systemPurpleColor];
      goto LABEL_22;
    case 0xBu:
      v0 = [objc_opt_self() systemRedColor];
      goto LABEL_22;
    case 0xCu:
      v0 = [objc_opt_self() systemTealColor];
      goto LABEL_22;
    case 0xDu:
      v0 = [objc_opt_self() systemYellowColor];
      goto LABEL_22;
    case 0xEu:
      v0 = [objc_opt_self() linkColor];
      goto LABEL_22;
    case 0xFu:
      sub_220B56218();
      sub_220BCD160();
      return sub_220BCDEB0();
    case 0x10u:
      v0 = [objc_opt_self() labelColor];
      goto LABEL_22;
    default:
      v0 = [objc_opt_self() secondaryLabelColor];
LABEL_22:

      return v0;
  }
}