uint64_t sub_21C686BD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21C6CE610();

    return sub_21C6CE3B0();
  }

  else
  {
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    sub_21C6CE3B0();
    sub_21C6CED30();
    swift_getWitnessTable();
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    return sub_21C6CE3B0();
  }
}

uint64_t sub_21C686D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21C6CE610();
    sub_21C6CE3B0();
  }

  else
  {
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    sub_21C6CE3B0();
    sub_21C6CED30();
    swift_getWitnessTable();
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    sub_21C6CE3B0();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C686F64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21C6CEBC0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21C686F90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21C686FC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C687008()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C68708C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE68F8, &qword_21C6CFFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C687144()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21C68717C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6CE450();
  *a1 = result;
  return result;
}

uint64_t sub_21C6871A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_21C6CE460();
}

uint64_t sub_21C6871DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C687220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69C8, &unk_21C6D0240);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_21C6872F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69C8, &unk_21C6D0240);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21C6873C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C69CAA8(v2, v3);
}

uint64_t sub_21C687408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6838, &qword_21C6CF910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6A08, &qword_21C6D02E0);
  sub_21C694224(&qword_27CDE6A10, &qword_27CDE6838, &qword_21C6CF910);
  sub_21C694224(&qword_27CDE6A18, &qword_27CDE6A08, &qword_21C6D02E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C687534(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6AB0, &qword_21C6D0460);
  swift_getTupleTypeMetadata2();
  sub_21C6CEAE0();
  sub_21C6CE5D0();
  sub_21C6CEA80();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C687654()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21C68769C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C687724()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C68776C(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6B10, &qword_21C6D06D0);
  swift_getTupleTypeMetadata();
  sub_21C6CEAE0();
  sub_21C6CE8E0();
  type metadata accessor for ApplicationDistributionState();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  swift_getOpaqueTypeMetadata2();
  sub_21C6CE330();
  sub_21C6CE3B0();
  swift_getOpaqueTypeConformance2();
  sub_21C698BA8(qword_27CDE6B18, MEMORY[0x277CDD8B0]);
  return swift_getWitnessTable();
}

uint64_t sub_21C687A1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C687A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C6CDF20();
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

    return (v12 + 1);
  }
}

uint64_t sub_21C687B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21C6CDF20();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C687C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C78, &unk_21C6D0CD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for ChildPaneSetting();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C687D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C78, &unk_21C6D0CD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = type metadata accessor for ChildPaneSetting();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C687E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CA8, &qword_21C6D0D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C687ED8()
{
  v1 = type metadata accessor for ChildPaneSettingView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE6A28, &qword_21C6D0318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21C6CE6B0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_21C6A4B14(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v8 = v5 + *(v1 + 24);
  v9 = type metadata accessor for ChildPaneSetting();
  v10 = v9[5];
  v11 = sub_21C6CDF20();
  (*(*(v11 - 8) + 8))(&v8[v10], v11);
  v12 = *&v8[v9[6] + 8];

  v13 = *&v8[v9[8] + 8];

  v14 = *&v8[v9[9] + 8];

  v15 = *&v8[v9[10]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C6880A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C6CDF20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C6881CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21C6CDF20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C6882F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for MultiValueSetting();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21C6883B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for MultiValueSetting();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C68845C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E08, &qword_21C6D0F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6884F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C6CDF20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for PropertyListValue();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_21C688670(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21C6CDF20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for PropertyListValue();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[9];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_21C6887F0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for RadioGroupSetting();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21C6888A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for RadioGroupSetting();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C688984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
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

    return (v12 + 1);
  }
}

uint64_t sub_21C688A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C688B30(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TextFieldSetting();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C688BDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TextFieldSetting();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C688C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7188, &qword_21C6D1988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C688CEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C688E24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C688F5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for TitleValueSetting();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21C689014(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for TitleValueSetting();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C6890C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C6CDF20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C6891F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21C6CDF20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C68931C()
{
  v1 = *(type metadata accessor for PropertyListValue() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *(v6 + 8);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_21C6BB7CC(*v6, *(v6 + 8));
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = sub_21C6CDFD0();
      (*(*(v9 - 8) + 8))(v6, v9);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      v8 = *v6;
LABEL_11:
    }
  }

LABEL_12:
  v11 = (v3 + v2 + v5) & ~v2;
  v12 = v0 + v5;
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 <= 1)
  {
    if (!v13)
    {
      v16 = *(v12 + 8);
      goto LABEL_22;
    }

    if (v13 == 1)
    {
      sub_21C6BB7CC(*v12, *(v12 + 8));
    }
  }

  else
  {
    if (v13 == 2)
    {
      v15 = sub_21C6CDFD0();
      (*(*(v15 - 8) + 8))(v0 + v5, v15);
      goto LABEL_23;
    }

    if (v13 == 6 || v13 == 7)
    {
      v14 = *v12;
LABEL_22:
    }
  }

LABEL_23:
  v17 = v0 + v11;
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 <= 1)
  {
    if (!v18)
    {
      v21 = *(v17 + 8);
      goto LABEL_33;
    }

    if (v18 == 1)
    {
      sub_21C6BB7CC(*v17, *(v17 + 8));
    }
  }

  else
  {
    if (v18 == 2)
    {
      v20 = sub_21C6CDFD0();
      (*(*(v20 - 8) + 8))(v0 + v11, v20);
      goto LABEL_34;
    }

    if (v18 == 6 || v18 == 7)
    {
      v19 = *v17;
LABEL_33:
    }
  }

LABEL_34:

  return MEMORY[0x2821FE8E8](v0, v11 + v3, v2 | 7);
}

uint64_t sub_21C689598()
{
  v1 = *(type metadata accessor for PropertyListValue() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *(v6 + 8);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_21C6BB7CC(*v6, *(v6 + 8));
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = sub_21C6CDFD0();
      (*(*(v9 - 8) + 8))(v6, v9);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      v8 = *v6;
LABEL_11:
    }
  }

LABEL_12:
  v11 = v0 + v5;
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 <= 1)
  {
    if (!v12)
    {
      v15 = *(v11 + 8);
      goto LABEL_22;
    }

    if (v12 == 1)
    {
      sub_21C6BB7CC(*v11, *(v11 + 8));
    }
  }

  else
  {
    if (v12 == 2)
    {
      v14 = sub_21C6CDFD0();
      (*(*(v14 - 8) + 8))(v0 + v5, v14);
      goto LABEL_23;
    }

    if (v12 == 6 || v12 == 7)
    {
      v13 = *v11;
LABEL_22:
    }
  }

LABEL_23:
  v16 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t sub_21C689790(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ToggleSetting();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C68983C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ToggleSetting();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C68990C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PropertyListValue();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C689A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PropertyListValue();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_21C689B14(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "PSGroupSpecifier";
  }

  else
  {
    v3 = "PSMultiValueSpecifier";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_21C689B58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C689BB8@<X0>(void *a1@<X8>)
{
  sub_21C6C0328();
  result = sub_21C6CE4C0();
  *a1 = v3;
  return result;
}

uint64_t sub_21C689C10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C689C8C()
{
  v1 = sub_21C6CE3C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C689D7C()
{
  v1 = *(type metadata accessor for PropertyListValue() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = *(v5 + 8);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_21C6BB7CC(*v5, *(v5 + 8));
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_21C6CDFD0();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      v7 = *v5;
LABEL_11:
    }
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C689EB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C689EF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C689FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE75C8, &qword_21C6D2538);
  sub_21C6CE4F0();
  sub_21C694224(&qword_27CDE75E0, &qword_27CDE75C8, &qword_21C6D2538);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C68A050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C68A124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C68A2A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2 & 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6808, &qword_21C6CF8F0);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = v48 - v9;
  v10 = sub_21C6CE4B0();
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6810, &qword_21C6CF8F8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v55 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v48 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v6;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v6;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v6;
  type metadata accessor for ApplicationDistributionState();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  swift_retain_n();
  v52 = sub_21C6CE2A0();
  v60 = v24 & 1;

  v48[1] = a2;
  if (a2)
  {
    v25 = *(a1 + 112);

    if ((v25 & 1) == 0)
    {

      goto LABEL_6;
    }

LABEL_7:
    v35 = 1;
    v37 = v53;
    v36 = v54;
    goto LABEL_11;
  }

  sub_21C6CECF0();
  v27 = sub_21C6CE6C0();
  sub_21C6CE170();

  sub_21C6CE4A0();
  swift_getAtKeyPath();

  v29 = v51 + 2;
  v28 = *(v51 + 1);
  v28(v14, v50);
  v30 = *(v56 + 112);

  if (v30)
  {
    goto LABEL_7;
  }

  sub_21C6CECF0();
  v31 = sub_21C6CE6C0();
  v51 = v29;
  v32 = v31;
  sub_21C6CE170();

  sub_21C6CE4A0();
  swift_getAtKeyPath();

  v28(v14, v50);
  v26 = v56;
LABEL_6:
  v33 = *(v26 + 113);

  if (v33)
  {
    goto LABEL_7;
  }

  v51 = v48;
  MEMORY[0x28223BE20](v34);
  v50 = &v48[-8];
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v38 = qword_27CDE9D58;
  v56 = sub_21C6CE740();
  v57 = v39;
  v58 = v40 & 1;
  v59 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6820, &qword_21C6CF900);
  sub_21C68F8C8(&qword_27CDE6828, &qword_27CDE6820, &qword_21C6CF900);
  v42 = v49;
  sub_21C6CEA40();
  v37 = v53;
  v43 = v54;
  (*(v53 + 32))(v20, v42, v54);
  v36 = v43;
  v35 = 0;
LABEL_11:
  (*(v37 + 56))(v20, v35, 1, v36);
  v44 = v60;
  v45 = v55;
  sub_21C68F744(v20, v55, &qword_27CDE6810, &qword_21C6CF8F8);
  *a3 = v52;
  *(a3 + 8) = v44;
  *(a3 + 16) = sub_21C68F220;
  *(a3 + 24) = v21;
  *(a3 + 32) = sub_21C68F22C;
  *(a3 + 40) = v22;
  *(a3 + 48) = sub_21C68F238;
  *(a3 + 56) = v23;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6830, &qword_21C6CF908);
  sub_21C68F744(v45, a3 + *(v46 + 48), &qword_27CDE6810, &qword_21C6CF8F8);

  sub_21C68F7D4(v20, &qword_27CDE6810, &qword_21C6CF8F8);
  sub_21C68F7D4(v45, &qword_27CDE6810, &qword_21C6CF8F8);
}

uint64_t sub_21C68A920@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v63 = a3;
  v5 = a2 & 1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v62 = *(v64 - 8);
  v6 = *(v62 + 64);
  v7 = MEMORY[0x28223BE20](v64);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v61 - v9;
  v10 = sub_21C6CE4B0();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6868, &qword_21C6CFA28);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v74 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6840, &qword_21C6CF918);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v73 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  MEMORY[0x28223BE20](v27);
  v77 = a1;
  v78 = v5;
  v67 = &v61 - v30;
  sub_21C6CE350();
  v75 = a1;
  v76 = v5;
  v68 = v29;
  sub_21C6CE350();

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v32 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v65 + 8))(v13, v66);
    v31 = v79;
  }

  v33 = *(v31 + 112);

  v69 = v26;
  if (v33 == 1)
  {
    MEMORY[0x28223BE20](v34);
    *(&v61 - 2) = a1;
    *(&v61 - 8) = a2 & 1;
    sub_21C6CE350();
    v35 = v72;
    (*(v20 + 32))(v72, v26, v19);
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v72;
  }

  (*(v20 + 56))(v35, v36, 1, v19);

  v37 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v38 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v65 + 8))(v13, v66);
    v37 = v79;
  }

  swift_getKeyPath();
  v79 = v37;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v39 = v37[117];

  if (v39 != 1)
  {
    goto LABEL_12;
  }

  v40 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v41 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v65 + 8))(v13, v66);
    v40 = v79;
  }

  swift_getKeyPath();
  v79 = v40;
  sub_21C6CE040();

  v42 = v40[115];

  if ((v42 & 1) == 0)
  {
    type metadata accessor for ApplicationDistributionState();
    v43 = sub_21C6CE2A0();
    LODWORD(v65) = v44 & 1;
    v66 = v43;
  }

  else
  {
LABEL_12:
    v66 = 0;
    LODWORD(v65) = 255;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a2 & 1;

  v46 = v70;
  sub_21C6CE990();
  v47 = v20;
  v48 = *(v20 + 16);
  v49 = v69;
  v48(v69, v67, v19);
  v48(v73, v68, v19);
  sub_21C68F744(v72, v74, &qword_27CDE6868, &qword_21C6CFA28);
  v50 = v62;
  v61 = *(v62 + 16);
  v51 = v64;
  v61(v71, v46, v64);
  v52 = v63;
  v48(v63, v49, v19);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6870, &qword_21C6CFA30);
  v48(&v52[v53[12]], v73, v19);
  sub_21C68F744(v74, &v52[v53[16]], &qword_27CDE6868, &qword_21C6CFA28);
  v54 = &v52[v53[20]];
  v55 = v66;
  *v54 = v66;
  LOBYTE(v49) = v65;
  v54[8] = v65;
  v56 = &v52[v53[24]];
  v57 = v71;
  v61(v56, v71, v51);
  sub_21C68F7AC(v55, v49);
  sub_21C68F7C0(v55, v49);
  v58 = *(v50 + 8);
  v58(v70, v51);
  sub_21C68F7D4(v72, &qword_27CDE6868, &qword_21C6CFA28);
  v59 = *(v47 + 8);
  v59(v68, v19);
  v59(v67, v19);
  v58(v57, v51);
  sub_21C68F7C0(v55, v49);
  sub_21C68F7D4(v74, &qword_27CDE6868, &qword_21C6CFA28);
  v59(v73, v19);
  return (v59)(v69, v19);
}

uint64_t sub_21C68B2C8(uint64_t a1, char a2)
{
  v4 = sub_21C6CE570();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = sub_21C6CE4B0();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v13 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v41 + 8))(v11, v42);
    v12 = v43;
  }

  swift_getKeyPath();
  v43 = v12;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v14 = *(v12 + 115);

  if (v14)
  {
    goto LABEL_7;
  }

  v15 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v16 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v41 + 8))(v11, v42);
    v15 = v43;
  }

  swift_getKeyPath();
  v43 = v15;
  sub_21C6CE040();

  v17 = *(v15 + 114);

  if (v17 == 1)
  {
LABEL_7:
    sub_21C6CE560();
    sub_21C6CE550();
    sub_21C6CE900();
    sub_21C6CE530();

    sub_21C6CE550();

    v18 = a1;
    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v19 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v41 + 8))(v11, v42);
      v18 = v43;
    }

    swift_getKeyPath();
    v43 = v18;
    sub_21C6CE040();

    v20 = *(v18 + 64);
    v21 = *(v18 + 72);

    sub_21C6CE540();

    sub_21C6CE550();

    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v22 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v41 + 8))(v11, v42);
      a1 = v43;
    }
  }

  else
  {

    v27 = a1;
    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v28 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v41 + 8))(v11, v42);
      v27 = v43;
    }

    swift_getKeyPath();
    v43 = v27;
    sub_21C6CE040();

    v29 = *(v27 + 117);

    if (v29 == 1)
    {
      sub_21C6CE560();
      sub_21C6CE550();
      sub_21C6CE900();
      sub_21C6CE530();

      sub_21C6CE550();

      v30 = a1;
      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v31 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v41 + 8))(v11, v42);
        v30 = v43;
      }

      swift_getKeyPath();
      v43 = v30;
      sub_21C6CE040();

      v32 = *(v30 + 64);
      v33 = *(v30 + 72);

      sub_21C6CE540();

      sub_21C6CE550();

      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v34 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v41 + 8))(v11, v42);
        a1 = v43;
      }
    }

    else
    {
      sub_21C6CE560();
      sub_21C6CE550();

      v35 = a1;
      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v36 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v41 + 8))(v11, v42);
        v35 = v43;
      }

      swift_getKeyPath();
      v43 = v35;
      sub_21C6CE040();

      v37 = *(v35 + 64);
      v38 = *(v35 + 72);

      sub_21C6CE540();

      sub_21C6CE550();

      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v39 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v41 + 8))(v11, v42);
        a1 = v43;
      }
    }
  }

  swift_getKeyPath();
  v43 = a1;
  sub_21C6CE040();

  v23 = *(a1 + 80);
  v24 = *(a1 + 88);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v25 = qword_27CDE9D58;
  return sub_21C6CE740();
}

uint64_t sub_21C68BE54@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v18[0];
  }

  swift_getKeyPath();
  v18[0] = a1;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v13 = *(a1 + 48);
  v12 = *(a1 + 56);

  v18[0] = v13;
  v18[1] = v12;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21C68C06C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v18[0];
  }

  swift_getKeyPath();
  v18[0] = a1;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v13 = *(a1 + 96);
  v12 = *(a1 + 104);

  v18[0] = v13;
  v18[1] = v12;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21C68C280(uint64_t a1, char a2)
{
  v3 = sub_21C6CE4B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v8 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  sub_21C698F88();
}

uint64_t sub_21C68C3E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v20;
  }

  swift_getKeyPath();
  v20 = a1;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v12 = *(a1 + 161);

  if (v12 == 1)
  {
    sub_21C6CE580();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v13 = qword_27CDE9D58;
    result = sub_21C6CE740();
    v18 = v17 & 1;
  }

  else
  {
    result = 0;
    v15 = 0;
    v18 = 0;
    v16 = 0;
  }

  *a3 = result;
  a3[1] = v15;
  a3[2] = v18;
  a3[3] = v16;
  return result;
}

uint64_t sub_21C68C678@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v36 = a3;
  v5 = sub_21C6CE570();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_21C6CE4B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v13 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
    v12 = v37;
  }

  swift_getKeyPath();
  *&v37 = v12;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v14 = *(v12 + 117);

  if (v14 == 1)
  {

    v15 = a1;
    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v16 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v8 + 8))(v11, v7);
      v15 = v40;
    }

    swift_getKeyPath();
    v40 = v15;
    sub_21C6CE040();

    swift_beginAccess();
    sub_21C68F744(v15 + 120, &v37, &qword_27CDE6860, &qword_21C6CF9D0);

    if (*(&v38 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
      sub_21C6CE130();
      __swift_destroy_boxed_opaque_existential_1(&v37);
      sub_21C6CE560();
      sub_21C6CE550();
      sub_21C6CE540();

      sub_21C6CE550();

      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v17 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v8 + 8))(v11, v7);
        a1 = v37;
      }

      swift_getKeyPath();
      *&v37 = a1;
      sub_21C6CE040();

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);

      sub_21C6CE540();

      sub_21C6CE550();
      sub_21C6CE590();
      if (qword_27CDE67D8 != -1)
      {
        swift_once();
      }

      v20 = qword_27CDE9D58;
      v40 = sub_21C6CE740();
      v41 = v21;
      v42 = v22 & 1;
      v43 = v23;
      v44 = 0;
      goto LABEL_19;
    }

    sub_21C68F7D4(&v37, &qword_27CDE6860, &qword_21C6CF9D0);
  }

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v24 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
    a1 = v37;
  }

  swift_getKeyPath();
  *&v37 = a1;
  sub_21C6CE040();

  v25 = *(a1 + 114);

  if (v25 != 1)
  {
    v31 = 0uLL;
    v33 = -1;
    v32 = 0uLL;
    goto LABEL_21;
  }

  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v27 = qword_27CDE9D58;
  v40 = sub_21C6CE740();
  v41 = v29;
  v42 = v28 & 1;
  v43 = v30;
  v44 = 1;
LABEL_19:
  result = sub_21C6CE5C0();
  v31 = v37;
  v32 = v38;
  v33 = v39;
LABEL_21:
  v34 = v36;
  *v36 = v31;
  v34[1] = v32;
  *(v34 + 32) = v33;
  return result;
}

uint64_t sub_21C68CD94@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v43 = *(v41 - 8);
  v5 = v43[8];
  v6 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6840, &qword_21C6CF918);
  v37 = *(v10 - 8);
  v11 = v37;
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v35 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v17);
  v49 = a1;
  v50 = a2 & 1;
  v21 = &v35 - v20;
  v38 = &v35 - v20;
  sub_21C6CE350();
  v47 = a1;
  v48 = a2 & 1;
  v36 = v19;
  sub_21C6CE350();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2 & 1;
  v45 = a1;
  v46 = a2 & 1;

  v35 = v9;
  sub_21C6CE990();
  v23 = *(v11 + 16);
  v24 = v44;
  v23(v44, v21, v10);
  v25 = v39;
  v23(v39, v19, v10);
  v26 = v43[2];
  v27 = v40;
  v28 = v9;
  v29 = v41;
  v26(v40, v28, v41);
  v30 = v42;
  v23(v42, v24, v10);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6848, &unk_21C6CF920);
  v23(&v30[*(v31 + 48)], v25, v10);
  v26(&v30[*(v31 + 64)], v27, v29);
  v32 = v43[1];
  v32(v35, v29);
  v33 = *(v37 + 8);
  v33(v36, v10);
  v33(v38, v10);
  v32(v27, v29);
  v33(v25, v10);
  return (v33)(v44, v10);
}

uint64_t sub_21C68D21C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v18[0];
  }

  v13 = *(a1 + 184);
  v12 = *(a1 + 192);

  v18[0] = v13;
  v18[1] = v12;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21C68D3C4@<X0>(uint64_t a1@<X8>)
{
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C68D48C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v18[0];
  }

  v13 = *(a1 + 200);
  v12 = *(a1 + 208);

  v18[0] = v13;
  v18[1] = v12;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21C68D614@<X0>(uint64_t a1@<X8>)
{
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C68D6F4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21C6CECD0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21C6CECA0();

  v9 = sub_21C6CEC90();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2 & 1;
  sub_21C68DC00(0, 0, v7, &unk_21C6CF938, v10);
}

uint64_t sub_21C68D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_21C6CE4B0();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  sub_21C6CECA0();
  *(v5 + 56) = sub_21C6CEC90();
  v10 = sub_21C6CEC80();
  *(v5 + 64) = v10;
  *(v5 + 72) = v9;

  return MEMORY[0x2822009F8](sub_21C68D91C, v10, v9);
}

uint64_t sub_21C68D91C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_21C6CECF0();
    v6 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_21C68DA54;

  return sub_21C6999F4();
}

uint64_t sub_21C68DA54()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21C68DB98, v5, v4);
}

uint64_t sub_21C68DB98()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C68DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21C68F744(a3, v27 - v11, &qword_27CDE6850, &qword_21C6D0210);
  v13 = sub_21C6CECD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21C68F7D4(v12, &qword_27CDE6850, &qword_21C6D0210);
  }

  else
  {
    sub_21C6CECC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21C6CEC80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21C6CEBE0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21C68F7D4(a3, &qword_27CDE6850, &qword_21C6D0210);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C68F7D4(a3, &qword_27CDE6850, &qword_21C6D0210);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21C68DF00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21C6CE570();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_21C6CE560();
  sub_21C6CE550();

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v13 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v21[1];
  }

  v14 = *(a1 + 184);
  v15 = *(a1 + 192);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v16 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a3 = result;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v20;
  return result;
}

uint64_t sub_21C68E1B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C68E278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_21C68E33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_21C68E400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_21C68E4C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_21C68E50C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  *a2 = *(v3 + 114);
  return result;
}

uint64_t sub_21C68E5DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  *a2 = *(v3 + 115);
  return result;
}

uint64_t sub_21C68E6AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  *a2 = *(v3 + 117);
  return result;
}

uint64_t sub_21C68E77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  swift_beginAccess();
  return sub_21C68F744(v3 + 120, a2, &qword_27CDE6860, &qword_21C6CF9D0);
}

uint64_t sub_21C68E84C(uint64_t a1, uint64_t *a2)
{
  sub_21C68F744(a1, v5, &qword_27CDE6860, &qword_21C6CF9D0);
  v3 = *a2;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE030();

  return sub_21C68F7D4(v5, &qword_27CDE6860, &qword_21C6CF9D0);
}

uint64_t sub_21C68E954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  *a2 = *(v3 + 161);
  return result;
}

uint64_t sub_21C68EA24()
{
  v1 = *v0;
  v2 = sub_21C6CEBC0();
  v3 = MEMORY[0x21CF0F3B0](v2);

  return v3;
}

uint64_t sub_21C68EA60()
{
  v1 = *v0;
  sub_21C6CEBC0();
  sub_21C6CEBF0();
}

uint64_t sub_21C68EAB4()
{
  v1 = *v0;
  sub_21C6CEBC0();
  sub_21C6CEE50();
  sub_21C6CEBF0();
  v2 = sub_21C6CEE90();

  return v2;
}

uint64_t sub_21C68EB28(uint64_t a1, id *a2)
{
  result = sub_21C6CEBA0();
  *a2 = 0;
  return result;
}

uint64_t sub_21C68EBA0(uint64_t a1, id *a2)
{
  v3 = sub_21C6CEBB0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C68EC20@<X0>(uint64_t *a1@<X8>)
{
  sub_21C6CEBC0();
  v2 = sub_21C6CEB90();

  *a1 = v2;
  return result;
}

uint64_t sub_21C68EC64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21C6CEBC0();
  v6 = v5;
  if (v4 == sub_21C6CEBC0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21C6CEE20();
  }

  return v9 & 1;
}

uint64_t sub_21C68ECEC(uint64_t a1)
{
  v2 = sub_21C68F964(&qword_27CDE68E0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_21C68F964(&qword_27CDE68E8, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C68EDA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21C6CEB90();

  *a2 = v5;
  return result;
}

uint64_t sub_21C68EDF0(uint64_t a1)
{
  v2 = sub_21C68F964(&qword_27CDE68D0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_21C68F964(&qword_27CDE68D8, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C68EEAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C68EFA4;

  return v7(a1);
}

uint64_t sub_21C68EFA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

uint64_t sub_21C68F0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21C68F168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C68F1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
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

uint64_t sub_21C68F2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C68D824(a1, v4, v5, v6, v7);
}

uint64_t sub_21C68F38C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21C68F480(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C68FB38;

  return sub_21C68EEAC(a1, v5);
}

uint64_t sub_21C68F538(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C68F38C;

  return sub_21C68EEAC(a1, v5);
}

unint64_t sub_21C68F5F0()
{
  result = qword_27CDE6858;
  if (!qword_27CDE6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6858);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21C68F6F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21C68B2C8(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C68F744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C68F7AC(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_21C68F7C0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_21C68F7D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21C68F87C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_21C68F8C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C68F964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C68FB6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE68F0, &qword_21C6CFF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE68F8, &qword_21C6CFFA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_21C6CE4B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v25[0] = a1;
  }

  else
  {

    sub_21C6CECF0();
    v19 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6900, &qword_21C6CFFA8);
  swift_allocBox();
  type metadata accessor for ApplicationDistributionState();
  sub_21C690630();
  sub_21C6CEAB0();
  sub_21C6CEA90();
  v20 = *(v25[0] + 113);

  if (v20 == 1)
  {
    sub_21C690388(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6908, &qword_21C6CFFB0);
    sub_21C690690();
    sub_21C6CEA70();
    (*(v6 + 32))(v13, v9, v5);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v6 + 56))(v13, v21, 1, v5);
  sub_21C68708C(v13, v24);
}

uint64_t sub_21C68FEC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6928, &qword_21C6CFFE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6918, &qword_21C6CFFB8);
  sub_21C690758();
  swift_getOpaqueTypeConformance2();
  return sub_21C6CE350();
}

uint64_t sub_21C68FFA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6900, &qword_21C6CFFA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6918, &qword_21C6CFFB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = swift_projectBox();
  (*(v1 + 16))(v5, v13, v0);
  sub_21C6CEAA0();
  v14 = *(v1 + 8);
  v14(v5, v0);
  swift_getKeyPath();
  sub_21C6CEAC0();

  v14(v7, v0);
  sub_21C6CE9D0();
  sub_21C690758();
  sub_21C6CE7E0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21C690204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C690630();
  sub_21C6CE040();

  *a2 = *(v3 + 162);
  return result;
}

uint64_t sub_21C6902A8@<X0>(uint64_t a1@<X8>)
{
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C690388@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6900, &qword_21C6CFFA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = sub_21C6CE570();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_21C6CE560();
  sub_21C6CE550();
  v9 = swift_projectBox();
  (*(v3 + 16))(v6, v9, v2);
  sub_21C6CEA90();
  (*(v3 + 8))(v6, v2);
  v10 = v19;
  swift_getKeyPath();
  v19 = v10;
  sub_21C690630();
  sub_21C6CE040();

  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v13 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

unint64_t sub_21C690630()
{
  result = qword_27CDE6818;
  if (!qword_27CDE6818)
  {
    type metadata accessor for ApplicationDistributionState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6818);
  }

  return result;
}

unint64_t sub_21C690690()
{
  result = qword_27CDE6910;
  if (!qword_27CDE6910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6908, &qword_21C6CFFB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6918, &qword_21C6CFFB8);
    sub_21C690758();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6910);
  }

  return result;
}

unint64_t sub_21C690758()
{
  result = qword_27CDE6920;
  if (!qword_27CDE6920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6918, &qword_21C6CFFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6920);
  }

  return result;
}

unint64_t sub_21C6907C4()
{
  result = qword_27CDE6930;
  if (!qword_27CDE6930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE68F8, &qword_21C6CFFA0);
    sub_21C690848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6930);
  }

  return result;
}

unint64_t sub_21C690848()
{
  result = qword_27CDE6938;
  if (!qword_27CDE6938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE68F0, &qword_21C6CFF98);
    sub_21C690690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6938);
  }

  return result;
}

uint64_t sub_21C69090C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6940, &qword_21C6D0108);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_21C6CE4B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v17 = sub_21C6CE6C0();
    v27 = v7;
    v18 = v10;
    v19 = v6;
    v20 = a2;
    v21 = a3;
    v22 = v17;
    sub_21C6CE170();

    a3 = v21;
    a2 = v20;
    v6 = v19;
    v10 = v18;
    v7 = v27;
    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v12 + 8))(v15, v11);
    v16 = v28;
  }

  swift_getKeyPath();
  v28 = v16;
  sub_21C690630();
  sub_21C6CE040();

  v23 = *(v16 + 115);

  if (v23 == 1)
  {
    MEMORY[0x28223BE20](v24);
    *(&v27 - 2) = a1;
    *(&v27 - 8) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6948, &qword_21C6D0138);
    sub_21C692A04();
    sub_21C6CEA60();
    (*(v7 + 32))(a3, v10, v6);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  return (*(v7 + 56))(a3, v25, 1, v6);
}

uint64_t sub_21C690C18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6970, &qword_21C6D0148);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v61 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6978, &unk_21C6D0150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v58 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v68 = *(v63 - 8);
  v10 = *(v68 + 64);
  v11 = MEMORY[0x28223BE20](v63);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6980, &qword_21C6D0160);
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = &v58 - v15;
  v16 = sub_21C6CE4B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v22 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v17 + 8))(v20, v16);
    v21 = *&v118[0];
  }

  swift_getKeyPath();
  *&v118[0] = v21;
  v58 = sub_21C690630();
  sub_21C6CE040();

  v23 = *(v21 + 117);

  if (v23 == 1)
  {
    v24 = sub_21C6CE510();
    LOBYTE(v104) = 1;
    sub_21C6921A0(a1, a2 & 1, sub_21C691D38, v118);
    v88 = v118[6];
    v89 = v118[7];
    v90 = v118[8];
    v91 = v118[9];
    v84 = v118[2];
    v85 = v118[3];
    v86 = v118[4];
    v87 = v118[5];
    v82 = v118[0];
    v83 = v118[1];
    v100 = v118[6];
    v101 = v118[7];
    v102 = v118[8];
    v103 = v118[9];
    v96 = v118[2];
    v97 = v118[3];
    v98 = v118[4];
    v99 = v118[5];
    v94 = v118[0];
    v95 = v118[1];
    sub_21C68F744(&v82, &v106, &qword_27CDE6988, &qword_21C6D0190);
    sub_21C68F7D4(&v94, &qword_27CDE6988, &qword_21C6D0190);
    *(&v118[3] + 7) = v85;
    *(&v118[2] + 7) = v84;
    *(&v118[6] + 7) = v88;
    *(&v118[7] + 7) = v89;
    *(&v118[8] + 7) = v90;
    *(&v118[9] + 7) = v91;
    *(&v118[4] + 7) = v86;
    *(&v118[5] + 7) = v87;
    *(v118 + 7) = v82;
    *(&v118[1] + 7) = v83;
    *(&v93[7] + 1) = v118[7];
    *(&v93[8] + 1) = v118[8];
    *(&v93[9] + 1) = v118[9];
    *(&v93[3] + 1) = v118[3];
    *(&v93[4] + 1) = v118[4];
    *(&v93[5] + 1) = v118[5];
    *(&v93[6] + 1) = v118[6];
    *(v93 + 1) = v118[0];
    *(&v93[1] + 1) = v118[1];
    v92 = v24;
    LOBYTE(v93[0]) = v104;
    *&v93[10] = *(&v91 + 1);
    *(&v93[2] + 1) = v118[2];
    type metadata accessor for ApplicationDistributionState();
    v25 = sub_21C6CE2A0();
    v78 = v93[7];
    v79 = v93[8];
    v80 = v93[9];
    v74 = v93[3];
    v75 = v93[4];
    v76 = v93[5];
    v77 = v93[6];
    v70 = v92;
    v71 = v93[0];
    v72 = v93[1];
    v73 = v93[2];
    v105[7] = v93[7];
    v105[8] = v93[8];
    v105[9] = v93[9];
    v105[3] = v93[3];
    v105[4] = v93[4];
    v105[5] = v93[5];
    v105[6] = v93[6];
    v104 = v92;
    v105[0] = v93[0];
    v105[1] = v93[1];
    v105[2] = v93[2];
    v114 = v93[7];
    v115 = v93[8];
    v116 = v93[9];
    v110 = v93[3];
    v111 = v93[4];
    v112 = v93[5];
    v113 = v93[6];
    v106 = v92;
    v107 = v93[0];
    v81 = *&v93[10];
    *&v105[10] = *&v93[10];
    v117 = *&v93[10];
    v108 = v93[1];
    v109 = v93[2];
    v27 = v26 & 1;
    v69 = v26 & 1;
    sub_21C68F744(&v92, v118, &qword_27CDE6998, &qword_21C6D01A0);

    sub_21C68F744(&v104, v118, &qword_27CDE6998, &qword_21C6D01A0);
    v118[8] = v78;
    v118[9] = v79;
    v118[10] = v80;
    v119 = v81;
    v118[4] = v74;
    v118[5] = v75;
    v118[6] = v76;
    v118[7] = v77;
    v118[0] = v70;
    v118[1] = v71;
    v118[2] = v72;
    v118[3] = v73;
    sub_21C68F7D4(v118, &qword_27CDE6998, &qword_21C6D01A0);
    v28 = v115;
    v29 = v65;
    *(v65 + 128) = v114;
    *(v29 + 144) = v28;
    *(v29 + 160) = v116;
    v30 = v117;
    v31 = v111;
    *(v29 + 64) = v110;
    *(v29 + 80) = v31;
    v32 = v113;
    *(v29 + 96) = v112;
    *(v29 + 112) = v32;
    v33 = v107;
    *v29 = v106;
    *(v29 + 16) = v33;
    v34 = v109;
    *(v29 + 32) = v108;
    *(v29 + 48) = v34;
    *(v29 + 176) = v30;
    *(v29 + 184) = v25;
    *(v29 + 192) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6958, &qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6968, &qword_27CDE6970, &qword_21C6D0148);
    sub_21C6CE5C0();

    return sub_21C68F7D4(&v92, &qword_27CDE6998, &qword_21C6D01A0);
  }

  else
  {
    v36 = sub_21C6CE510();
    LOBYTE(v92) = 1;
    sub_21C6921A0(a1, a2 & 1, sub_21C692434, v118);
    v100 = v118[6];
    v101 = v118[7];
    v102 = v118[8];
    v103 = v118[9];
    v96 = v118[2];
    v97 = v118[3];
    v98 = v118[4];
    v99 = v118[5];
    v94 = v118[0];
    v95 = v118[1];
    v76 = v118[6];
    v77 = v118[7];
    v78 = v118[8];
    v79 = v118[9];
    v72 = v118[2];
    v73 = v118[3];
    v74 = v118[4];
    v75 = v118[5];
    v70 = v118[0];
    v71 = v118[1];
    sub_21C68F744(&v94, &v106, &qword_27CDE6988, &qword_21C6D0190);
    sub_21C68F7D4(&v70, &qword_27CDE6988, &qword_21C6D0190);
    *(&v118[3] + 7) = v97;
    *(&v118[2] + 7) = v96;
    *(&v118[6] + 7) = v100;
    *(&v118[7] + 7) = v101;
    *(&v118[8] + 7) = v102;
    *(&v118[9] + 7) = v103;
    *(&v118[4] + 7) = v98;
    *(&v118[5] + 7) = v99;
    *(v118 + 7) = v94;
    *(&v118[1] + 7) = v95;
    *(&v105[7] + 1) = v118[7];
    *(&v105[8] + 1) = v118[8];
    *(&v105[9] + 1) = v118[9];
    *(&v105[3] + 1) = v118[3];
    *(&v105[4] + 1) = v118[4];
    *(&v105[5] + 1) = v118[5];
    *(&v105[6] + 1) = v118[6];
    *(v105 + 1) = v118[0];
    *(&v105[1] + 1) = v118[1];
    v104 = v36;
    LOBYTE(v105[0]) = v92;
    *&v105[10] = *(&v103 + 1);
    *(&v105[2] + 1) = v118[2];
    v37 = v59;
    sub_21C6CE250();
    v38 = sub_21C6CE270();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = a2 & 1;
    MEMORY[0x28223BE20](v39);
    *(&v58 - 2) = a1;
    *(&v58 - 8) = a2 & 1;

    v40 = v62;
    sub_21C6CE980();
    v93[7] = v105[7];
    v93[8] = v105[8];
    v93[9] = v105[9];
    *&v93[10] = *&v105[10];
    v93[3] = v105[3];
    v93[4] = v105[4];
    v93[5] = v105[5];
    v93[6] = v105[6];
    v92 = v104;
    v93[0] = v105[0];
    v93[1] = v105[1];
    v93[2] = v105[2];
    v41 = v68;
    v42 = *(v68 + 16);
    v43 = v60;
    v44 = v40;
    v45 = v63;
    v42(v60, v44);
    v46 = v93[6];
    v114 = v93[7];
    v115 = v93[8];
    v47 = v93[8];
    v116 = v93[9];
    v48 = v93[3];
    v49 = v93[2];
    v110 = v93[3];
    v111 = v93[4];
    v50 = v93[4];
    v51 = v93[5];
    v112 = v93[5];
    v113 = v93[6];
    v106 = v92;
    v107 = v93[0];
    v53 = v92;
    v52 = v93[0];
    v54 = v93[1];
    v108 = v93[1];
    v109 = v93[2];
    v55 = v61;
    *(v61 + 8) = v93[7];
    *(v55 + 144) = v47;
    *(v55 + 160) = v93[9];
    *(v55 + 64) = v48;
    *(v55 + 80) = v50;
    *(v55 + 96) = v51;
    *(v55 + 112) = v46;
    *v55 = v53;
    *(v55 + 16) = v52;
    v117 = *&v93[10];
    *(v55 + 176) = *&v93[10];
    *(v55 + 32) = v54;
    *(v55 + 48) = v49;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6990, &qword_21C6D0198);
    (v42)(v55 + *(v56 + 48), v43, v45);
    sub_21C68F744(&v104, v118, &qword_27CDE6998, &qword_21C6D01A0);
    sub_21C68F744(&v106, v118, &qword_27CDE6998, &qword_21C6D01A0);
    v57 = *(v41 + 8);
    v68 = v41 + 8;
    v57(v43, v45);
    v118[8] = v93[7];
    v118[9] = v93[8];
    v118[10] = v93[9];
    v119 = *&v93[10];
    v118[4] = v93[3];
    v118[5] = v93[4];
    v118[6] = v93[5];
    v118[7] = v93[6];
    v118[0] = v92;
    v118[1] = v93[0];
    v118[2] = v93[1];
    v118[3] = v93[2];
    sub_21C68F7D4(v118, &qword_27CDE6998, &qword_21C6D01A0);
    sub_21C68F744(v55, v65, &qword_27CDE6970, &qword_21C6D0148);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6958, &qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6968, &qword_27CDE6970, &qword_21C6D0148);
    sub_21C6CE5C0();
    sub_21C68F7D4(&v104, &qword_27CDE6998, &qword_21C6D01A0);
    sub_21C68F7D4(v55, &qword_27CDE6970, &qword_21C6D0148);
    return (v57)(v62, v63);
  }
}

uint64_t sub_21C6917B0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21C6CECD0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21C6CECA0();

  v9 = sub_21C6CEC90();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2 & 1;
  sub_21C68DC00(0, 0, v7, &unk_21C6D0220, v10);
}

uint64_t sub_21C6918E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_21C6CE4B0();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  sub_21C6CECA0();
  *(v5 + 56) = sub_21C6CEC90();
  v10 = sub_21C6CEC80();
  *(v5 + 64) = v10;
  *(v5 + 72) = v9;

  return MEMORY[0x2822009F8](sub_21C6919D8, v10, v9);
}

uint64_t sub_21C6919D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_21C6CECF0();
    v6 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_21C68DA54;

  return sub_21C69A470();
}

uint64_t sub_21C691B10@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v18[1];
  }

  v12 = *(a1 + 113);

  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v13 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21C691D38@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v5 = sub_21C6CE4B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21C6CE570();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_21C6CE560();
  sub_21C6CE550();
  if (a2)
  {
    v48 = a1;
  }

  else
  {

    sub_21C6CECF0();
    v12 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
    a1 = v48;
  }

  swift_getKeyPath();
  v46 = a1;
  sub_21C690630();
  sub_21C6CE040();

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v15 = qword_27CDE9D58;
  v16 = sub_21C6CE740();
  v18 = v17;
  v20 = v19;
  sub_21C6CE6F0();
  v21 = sub_21C6CE720();
  v42 = v22;
  v43 = v21;
  v24 = v23;
  HIDWORD(v41) = v25;

  sub_21C692AD8(v16, v18, v20 & 1);

  sub_21C6CE580();
  v26 = sub_21C6CE740();
  v28 = v27;
  LOBYTE(v16) = v29;
  sub_21C6CE6E0();
  v30 = sub_21C6CE720();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21C692AD8(v26, v28, v16 & 1);

  v37 = BYTE4(v41) & 1;
  v45 = BYTE4(v41) & 1;
  LOBYTE(v46) = BYTE4(v41) & 1;
  v34 &= 1u;
  v47 = v34;
  v39 = v43;
  v38 = v44;
  *v44 = v43;
  v38[1] = v24;
  *(v38 + 16) = v37;
  v38[3] = v42;
  v38[4] = v30;
  v38[5] = v32;
  *(v38 + 48) = v34;
  v38[7] = v36;
  sub_21C692AE8(v39, v24, v37);

  sub_21C692AE8(v30, v32, v34);

  sub_21C692AD8(v30, v32, v34);

  sub_21C692AD8(v39, v24, v45);
}

uint64_t sub_21C6921A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(_OWORD *__return_ptr, uint64_t, void)@<X2>, _OWORD *a4@<X8>)
{
  v7 = sub_21C6CE900();
  v8 = sub_21C6CE8B0();
  KeyPath = swift_getKeyPath();
  v10 = sub_21C6CE6D0();
  sub_21C6CE280();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_21C6CE5A0();
  LOBYTE(v55[0]) = 1;
  a3(v46, a1, a2 & 1);
  *&v45[7] = v46[0];
  *&v45[23] = v46[1];
  *&v45[39] = v46[2];
  *&v45[55] = v47;
  v20 = v55[0];
  *&v48 = v7;
  *(&v48 + 1) = KeyPath;
  *&v49 = v8;
  BYTE8(v49) = v10;
  *&v50 = v12;
  *(&v50 + 1) = v14;
  *&v51 = v16;
  *(&v51 + 1) = v18;
  v44[0] = 0;
  v43 = v51;
  v41 = v49;
  v42 = v50;
  v40 = v48;
  v53[0] = v19;
  v53[1] = 0;
  v54[0] = v55[0];
  *&v54[1] = *v45;
  *&v54[64] = *(&v47 + 1);
  v21 = *&v45[32];
  *&v54[49] = *&v45[48];
  v22 = *&v45[16];
  *&v54[33] = *&v45[32];
  *&v54[17] = *&v45[16];
  *&v44[24] = *v54;
  *&v44[8] = v19;
  *&v44[88] = *&v54[64];
  *&v44[72] = *&v54[48];
  *&v44[56] = *&v54[32];
  *&v44[40] = *&v54[16];
  v23 = v49;
  *a4 = v48;
  a4[1] = v23;
  v24 = v42;
  v25 = v43;
  v26 = *&v44[16];
  v27 = *&v44[32];
  a4[4] = *v44;
  a4[5] = v26;
  a4[2] = v24;
  a4[3] = v25;
  v28 = *&v44[48];
  v29 = *&v44[80];
  v30 = *v45;
  a4[8] = *&v44[64];
  a4[9] = v29;
  v52 = 0;
  a4[6] = v27;
  a4[7] = v28;
  v55[0] = v19;
  v55[1] = 0;
  v56 = v20;
  v58 = v22;
  v59 = v21;
  *v60 = *&v45[48];
  *&v60[15] = *&v45[63];
  v57 = v30;
  sub_21C68F744(&v48, v33, &qword_27CDE69A0, &qword_21C6D01D8);
  sub_21C68F744(v53, v33, &qword_27CDE69A8, &qword_21C6D01E0);
  sub_21C68F7D4(v55, &qword_27CDE69A8, &qword_21C6D01E0);
  v33[0] = v7;
  v33[1] = KeyPath;
  v33[2] = v8;
  v34 = v10;
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v38 = v18;
  v39 = 0;
  return sub_21C68F7D4(v33, &qword_27CDE69A0, &qword_21C6D01D8);
}

uint64_t sub_21C692434@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21C6CE570();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  sub_21C6CE560();
  sub_21C6CE550();

  v14 = a1;
  v54 = a2;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v15 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v14 = v58;
  }

  v47 = v7;
  v48 = v6;
  swift_getKeyPath();
  v58 = v14;
  v50 = sub_21C690630();
  sub_21C6CE040();

  v16 = *(v14 + 32);
  v17 = *(v14 + 40);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v18 = qword_27CDE9D58;
  v19 = sub_21C6CE740();
  v21 = v20;
  v23 = v22;
  sub_21C6CE6F0();
  v24 = sub_21C6CE720();
  v51 = v25;
  v52 = v24;
  v49 = v26;
  v53 = v27;

  sub_21C692AD8(v19, v21, v23 & 1);

  sub_21C6CE560();
  sub_21C6CE550();
  if (v54)
  {
    v58 = a1;
  }

  else
  {

    sub_21C6CECF0();
    v28 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v47 + 8))(v10, v48);
    a1 = v58;
  }

  swift_getKeyPath();
  v56 = a1;
  sub_21C6CE040();

  v29 = *(a1 + 32);
  v30 = *(a1 + 40);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  v31 = sub_21C6CE740();
  v33 = v32;
  v35 = v34;
  sub_21C6CE6E0();
  v36 = sub_21C6CE720();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_21C692AD8(v31, v33, v35 & 1);

  v43 = v49 & 1;
  v55 = v49 & 1;
  LOBYTE(v56) = v49 & 1;
  v57 = v40 & 1;
  v45 = v51;
  v44 = v52;
  *a3 = v52;
  *(a3 + 8) = v45;
  *(a3 + 16) = v43;
  *(a3 + 24) = v53;
  *(a3 + 32) = v36;
  *(a3 + 40) = v38;
  *(a3 + 48) = v40 & 1;
  *(a3 + 56) = v42;
  sub_21C692AE8(v44, v45, v43);

  sub_21C692AE8(v36, v38, v40 & 1);

  sub_21C692AD8(v36, v38, v40 & 1);

  sub_21C692AD8(v44, v45, v55);
}

unint64_t sub_21C692A04()
{
  result = qword_27CDE6950;
  if (!qword_27CDE6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6948, &qword_21C6D0138);
    sub_21C68F8C8(&qword_27CDE6958, &qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6968, &qword_27CDE6970, &qword_21C6D0148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6950);
  }

  return result;
}

uint64_t sub_21C692AD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C692AE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C692AF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C6918E0(a1, v4, v5, v6, v7);
}

unint64_t sub_21C692BBC()
{
  result = qword_27CDE69B0;
  if (!qword_27CDE69B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE69B8, &qword_21C6D0228);
    sub_21C692C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE69B0);
  }

  return result;
}

unint64_t sub_21C692C40()
{
  result = qword_27CDE69C0;
  if (!qword_27CDE69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6940, &qword_21C6D0108);
    sub_21C692A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE69C0);
  }

  return result;
}

uint64_t type metadata accessor for MalwareDetectionReenableApplicationListButton()
{
  result = qword_27CDE69D0;
  if (!qword_27CDE69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C692D44()
{
  sub_21C692E18(319, &qword_27CDE69E0, MEMORY[0x277CDF708]);
  if (v0 <= 0x3F)
  {
    sub_21C692E18(319, &qword_27CDE69E8, type metadata accessor for ApplicationDistributionState);
    if (v1 <= 0x3F)
    {
      sub_21C692E6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C692E18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21C6CE290();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C692E6C()
{
  if (!qword_27CDE69F0)
  {
    v0 = sub_21C6CE970();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE69F0);
    }
  }
}

uint64_t sub_21C692ED8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6978, &unk_21C6D0150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  sub_21C6CE250();
  v14 = sub_21C6CE270();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  sub_21C694078(v2, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_21C6940DC(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v37 = v13;
  sub_21C6CE980();
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v17 = qword_27CDE9D58;
  v18 = sub_21C6CE740();
  v35 = v19;
  v36 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v2 + *(v3 + 24);
  v25 = *v24;
  v26 = *(v24 + 8);
  v42 = v25;
  v43 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A00, &qword_21C6D02D8);
  v27 = sub_21C6CE960();
  v34 = v33;
  v33[3] = v41;
  v28 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A08, &qword_21C6D02E0);
  sub_21C694224(&qword_27CDE6A10, &qword_27CDE6838, &qword_21C6CF910);
  sub_21C694224(&qword_27CDE6A18, &qword_27CDE6A08, &qword_21C6D02E0);
  v29 = v39;
  v30 = v36;
  v31 = v37;
  sub_21C6CE870();

  sub_21C692AD8(v30, v21, v23 & 1);

  return (*(v38 + 8))(v31, v29);
}

uint64_t sub_21C6933C4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A00, &qword_21C6D02D8);
  return sub_21C6CE950();
}

uint64_t sub_21C693458@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a1;
  v51 = a2;
  v3 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6978, &unk_21C6D0150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v41 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v52 = &v41 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v48 = &v41 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v47 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  sub_21C6CE250();
  v24 = sub_21C6CE270();
  v25 = *(v24 - 8);
  v44 = *(v25 + 56);
  v45 = v25 + 56;
  v44(v8, 0, 1, v24);
  sub_21C694078(a1, &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v27 = swift_allocObject();
  sub_21C6940DC(&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v43 = v23;
  sub_21C6CE980();
  sub_21C694078(v42, &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  sub_21C6940DC(&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26);
  v29 = v47;
  sub_21C6CE990();
  sub_21C6CE260();
  v44(v8, 0, 1, v24);
  v30 = v48;
  sub_21C6CE980();
  v31 = v10[2];
  v32 = v52;
  v31(v52, v23, v9);
  v33 = v49;
  v34 = v29;
  v31(v49, v29, v9);
  v35 = v50;
  v36 = v30;
  v31(v50, v30, v9);
  v37 = v51;
  v31(v51, v32, v9);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A20, &qword_21C6D0310);
  v31(&v37[*(v38 + 48)], v33, v9);
  v31(&v37[*(v38 + 64)], v35, v9);
  v39 = v10[1];
  v39(v36, v9);
  v39(v34, v9);
  v39(v43, v9);
  v39(v35, v9);
  v39(v33, v9);
  return (v39)(v52, v9);
}

uint64_t sub_21C6939BC(uint64_t a1)
{
  v2 = sub_21C6CE4B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton() + 20));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21C69AED8();
}

uint64_t sub_21C693B34(uint64_t a1)
{
  v2 = sub_21C6CE320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21C6CE4B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton() + 20));
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_21C6CECF0();
    v15 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
  }

  sub_21C694468(&qword_27CDE69F8, &qword_21C6D02D0, MEMORY[0x277CDF708], v6);
  sub_21C69B644(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C693D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CE4B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C6CE570();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_21C6CE560();
  sub_21C6CE550();
  v11 = (a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton() + 20));
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    sub_21C6CECF0();
    v14 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v12 = v23;
  }

  swift_getKeyPath();
  v23 = v12;
  sub_21C690630();
  sub_21C6CE040();

  v15 = *(v12 + 32);
  v16 = *(v12 + 40);

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v17 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a2 = result;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_21C694078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6940DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C694158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C690630();
  sub_21C6CE040();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_21C6941D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C69CAA8(v2, v3);
}

uint64_t sub_21C694224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69F8, &qword_21C6D02D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21C6CE320();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C6943CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MalwareDetectionReenableApplicationListButton() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C694468@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_21C6CE4B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_21C68F744(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_21C6CECF0();
    v22 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_21C694668()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C6946C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C69470C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C694774(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C6947C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C6CE5B0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21C6CE5C0();
}

uint64_t sub_21C6948B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21C6CE5B0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21C6CE5C0();
}

uint64_t sub_21C6949B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6AB0, &qword_21C6D0460);
  v28 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v24 = sub_21C6CEAE0();
  v4 = *(a1 + 32);
  v5 = sub_21C6CE5D0();
  v25 = *(&v28 + 1);
  v6 = sub_21C6CEA80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  v40 = *(a1 + 56);
  v15 = v40;
  v41 = v2;
  v12.i64[0] = v4;
  v35 = v2;
  v29[1] = v28;
  v30 = v4;
  v16 = *(a1 + 48);
  v27 = *(a1 + 40);
  v39 = v27.i64[1];
  v37 = v28;
  v38 = vzip1q_s64(v12, v27);
  v34[1] = v28;
  v34[2] = v38;
  v34[3] = v16;
  v31 = v27;
  v32 = v40;
  v33 = v2;
  v17 = v24;
  WitnessTable = swift_getWitnessTable();
  v45 = MEMORY[0x277CE0BC8];
  v46 = v15;
  v22 = swift_getWitnessTable();
  sub_21C695AA8(sub_21C695C10, v36, sub_21C695C28, v34, sub_21C695C40, v29, v25, v17, v5);
  v42 = v27.i64[1];
  v43 = WitnessTable;
  v44 = v22;
  v19 = swift_getWitnessTable();
  sub_21C698CE4(v11, v6, v19);
  v20 = *(v7 + 8);
  v20(v11, v6);
  sub_21C698CE4(v14, v6, v19);
  return (v20)(v14, v6);
}

uint64_t sub_21C694CAC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a6;
  v44 = a7;
  v50 = a4;
  v51 = a8;
  v42 = a3;
  v11 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AB0, &qword_21C6D0460);
  v16 = *(*(v46 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v46);
  v49 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *(a2 - 1);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v41 - v28;
  v30 = *(a1 + 24);
  (*(a1 + 16))(v27);
  sub_21C698CE4(v26, a2, a5);
  v45 = *(v22 + 8);
  v45(v26, a2);
  v55 = a2;
  v56 = v42;
  v57 = v50;
  v58 = a5;
  v50 = a5;
  v59 = v43;
  v60 = v44;
  type metadata accessor for MalwareDetectionReenableApplicationListSectionElement();
  if (sub_21C6950C4())
  {
    *v15 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69F8, &qword_21C6D02D0);
    swift_storeEnumTagMultiPayload();
    v31 = v47;
    v32 = v15 + *(v47 + 20);
    type metadata accessor for ApplicationDistributionState();
    sub_21C695D98(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    *v32 = sub_21C6CE2A0();
    v32[8] = v33 & 1;
    v34 = v15 + *(v31 + 24);
    LOBYTE(v54[0]) = 0;
    sub_21C6CE930();
    v35 = v56;
    *v34 = v55;
    *(v34 + 1) = v35;
    sub_21C6940DC(v15, v21);
    v36 = 0;
    v37 = v31;
  }

  else
  {
    v36 = 1;
    v37 = v47;
  }

  (*(v48 + 56))(v21, v36, 1, v37);
  (*(v22 + 16))(v26, v29, a2);
  v55 = v26;
  v38 = v49;
  sub_21C695C74(v21, v49);
  v56 = v38;
  v54[0] = a2;
  v54[1] = v46;
  v52 = v50;
  v53 = sub_21C695CE4();
  sub_21C696DC4(&v55, 2uLL, v54);
  sub_21C68F7D4(v21, &qword_27CDE6AB0, &qword_21C6D0460);
  v39 = v45;
  v45(v29, a2);
  sub_21C68F7D4(v38, &qword_27CDE6AB0, &qword_21C6D0460);
  return v39(v26, a2);
}

uint64_t sub_21C6950C4()
{
  v1 = sub_21C6CE4B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 8);
  v17 = *v0;
  v6 = v17;
  v7 = v18;

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_21C6CECF0();
    v9 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();
    sub_21C68F7D4(&v17, &qword_27CDE6AB8, &qword_21C6D0468);
    (*(v2 + 8))(v5, v1);
    v8 = v16;
  }

  swift_getKeyPath();
  v16 = v8;
  sub_21C695D98(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v10 = *(v8 + 115);

  if (v10 == 1)
  {

    if ((v7 & 1) == 0)
    {
      sub_21C6CECF0();
      v11 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();
      sub_21C68F7D4(&v17, &qword_27CDE6AB8, &qword_21C6D0468);
      (*(v2 + 8))(v5, v1);
      v6 = v16;
    }

    swift_getKeyPath();
    v16 = v6;
    sub_21C6CE040();

    v12 = *(v6 + 116);

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_21C6953A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19 - v14;
  v16 = *(v13 + 40);
  (*(v13 + 32))();
  sub_21C698CE4(v12, a3, a6);
  v17 = *(v8 + 8);
  v17(v12, a3);
  sub_21C698CE4(v15, a3, a6);
  return (v17)(v15, a3);
}

uint64_t sub_21C6954D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a5;
  v56 = a6;
  v59 = a8;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = sub_21C6CE4B0();
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x28223BE20](v20);
  v52 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21C6CE570();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_21C6CE5D0();
  v57 = *(v25 - 8);
  v58 = v25;
  v26 = *(v57 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v52 - v27;
  v62 = a2;
  v63 = a3;
  v29 = a7;
  v64 = a4;
  v65 = v55;
  v66 = v56;
  v67 = a7;
  type metadata accessor for MalwareDetectionReenableApplicationListSectionElement();
  v30 = sub_21C6950C4();
  v31 = MEMORY[0x277CE0BC8];
  if (v30)
  {
    v32 = v28;
    sub_21C6CE560();
    sub_21C6CE550();
    v69 = *(a1 + 8);
    v33 = *a1;
    v68 = *a1;
    v34 = v69;

    if ((v34 & 1) == 0)
    {
      sub_21C6CECF0();
      v35 = sub_21C6CE6C0();
      sub_21C6CE170();

      v36 = v52;
      sub_21C6CE4A0();
      swift_getAtKeyPath();
      sub_21C68F7D4(&v68, &qword_27CDE6AB8, &qword_21C6D0468);
      (*(v53 + 8))(v36, v54);
      v33 = v62;
    }

    swift_getKeyPath();
    v62 = v33;
    sub_21C695D98(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE040();

    v37 = *(v33 + 32);
    v38 = *(v33 + 40);

    sub_21C6CE540();

    sub_21C6CE550();
    sub_21C6CE590();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v39 = qword_27CDE9D58;
    v40 = sub_21C6CE740();
    v42 = v41;
    v62 = v40;
    v63 = v41;
    v44 = v43 & 1;
    LOBYTE(v64) = v43 & 1;
    v65 = v45;
    v46 = v32;
    sub_21C6947C0(&v62, MEMORY[0x277CE0BD8]);
    sub_21C692AD8(v40, v42, v44);

    v31 = MEMORY[0x277CE0BC8];
  }

  else
  {
    v47 = a1[7];
    (a1[6])();
    sub_21C698CE4(v17, a4, v29);
    v48 = *(v13 + 8);
    v48(v17, a4);
    sub_21C698CE4(v19, a4, v29);
    sub_21C6948B8(v17, MEMORY[0x277CE0BD8], a4);
    v48(v17, a4);
    v48(v19, a4);
    v46 = v28;
  }

  v60 = v31;
  v61 = v29;
  v49 = v58;
  WitnessTable = swift_getWitnessTable();
  sub_21C698CE4(v46, v49, WitnessTable);
  return (*(v57 + 8))(v46, v49);
}

uint64_t sub_21C695AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v15(v14);
  a5(v16);
  return sub_21C6CEA50();
}

uint64_t sub_21C695BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_21C6949B0(a1, a2);
}

uint64_t sub_21C695C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AB0, &qword_21C6D0460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C695CE4()
{
  result = qword_27CDE6AC0;
  if (!qword_27CDE6AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6AB0, &qword_21C6D0460);
    sub_21C695D98(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6AC0);
  }

  return result;
}

uint64_t sub_21C695D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C695E0C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21C6CECD0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21C6CECA0();

  v9 = sub_21C6CEC90();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2 & 1;
  sub_21C68DC00(0, 0, v7, &unk_21C6D0688, v10);
}

uint64_t sub_21C695F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_21C6CE4B0();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  sub_21C6CECA0();
  *(v5 + 56) = sub_21C6CEC90();
  v10 = sub_21C6CEC80();
  *(v5 + 64) = v10;
  *(v5 + 72) = v9;

  return MEMORY[0x2822009F8](sub_21C696034, v10, v9);
}

uint64_t sub_21C696034()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_21C6CECF0();
    v6 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_21C68DA54;

  return sub_21C69BF78();
}

uint64_t sub_21C69616C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = sub_21C6CE520();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AE0, &qword_21C6D0608);
  return sub_21C6961D4(a1, a2 & 1, a3 + *(v6 + 44));
}

uint64_t sub_21C6961D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AE8, &qword_21C6D0610);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF0, &qword_21C6D0618);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = sub_21C6CE4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v21 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v16 + 8))(v19, v15);
    v20 = v79;
  }

  v65 = v19;
  v66 = v16;
  swift_getKeyPath();
  *&v79 = v20;
  v71 = sub_21C690630();
  sub_21C6CE040();

  v22 = *(v20 + 160) == 1;
  v67 = a2;
  v63 = v15;
  if (v22)
  {

LABEL_8:
    v61 = v14;
    v62 = a3;
    sub_21C6CE580();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v24 = qword_27CDE9D58;
    v25 = sub_21C6CE740();
    v27 = v26;
    v29 = v28;
    v30 = [objc_opt_self() secondaryLabelColor];
    sub_21C6CE8A0();
    v31 = sub_21C6CE710();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_21C692AD8(v25, v27, v29 & 1);

    v74 = v31;
    v75 = v33;
    v76 = v35 & 1;
    v77 = v37;
    v78 = 0;
    sub_21C6CE5C0();
    v72 = v79;
    v73 = v80;
    v38 = v81;
    a3 = v62;
    v14 = v61;
    goto LABEL_17;
  }

  if (*(v20 + 216))
  {
    v23 = sub_21C6CE090();

    if (v23)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v39 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v40 = sub_21C6CE6C0();
    sub_21C6CE170();

    v41 = v65;
    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v66 + 8))(v41, v15);
    v39 = v79;
  }

  swift_getKeyPath();
  *&v79 = v39;
  sub_21C6CE040();

  v42 = *(v39 + 115);

  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v43 = qword_27CDE9D58;
  v74 = sub_21C6CE740();
  v75 = v45;
  v76 = v44 & 1;
  v77 = v46;
  v78 = 1;
  sub_21C6CE5C0();
  v72 = v79;
  v73 = v80;
  v38 = v81;
LABEL_17:

  v47 = v72;
  v48 = v73;
  sub_21C696B78(v72, *(&v72 + 1), v73);
  if ((v67 & 1) == 0)
  {
    sub_21C6CECF0();
    v49 = sub_21C6CE6C0();
    sub_21C6CE170();

    v50 = v65;
    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v66 + 8))(v50, v63);
    a1 = v79;
  }

  swift_getKeyPath();
  *&v79 = a1;
  sub_21C6CE040();

  if (*(a1 + 160) != 1)
  {
    if (*(a1 + 216))
    {
      v51 = sub_21C6CE090();

      if (v51)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v55 = 1;
    v54 = v68;
    v53 = v69;
    goto LABEL_26;
  }

LABEL_23:
  v52 = v64;
  sub_21C6CE300();
  v54 = v68;
  v53 = v69;
  (*(v68 + 32))(v14, v52, v69);
  v55 = 0;
LABEL_26:
  (*(v54 + 56))(v14, v55, 1, v53);
  v56 = v70;
  sub_21C696BB4(v14, v70);
  v57 = v73;
  *a3 = v72;
  *(a3 + 16) = v57;
  *(a3 + 32) = v38;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF8, &unk_21C6D0670);
  sub_21C696BB4(v56, a3 + *(v58 + 64));
  sub_21C696B78(v47, *(&v47 + 1), v48);
  sub_21C696C24(v47, *(&v47 + 1), v48);
  sub_21C696C60(v14);
  sub_21C696C60(v56);
  return sub_21C696C24(v47, *(&v47 + 1), v48);
}

uint64_t sub_21C696A68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AD0, &qword_21C6D0600);
  sub_21C694224(&qword_27CDE6AD8, &qword_27CDE6AD0, &qword_21C6D0600);
  return sub_21C6CE990();
}

uint64_t sub_21C696B78(uint64_t a1, uint64_t a2, char a3)
{
  sub_21C692AE8(a1, a2, a3 & 1);
}

uint64_t sub_21C696BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF0, &qword_21C6D0618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C696C24(uint64_t a1, uint64_t a2, char a3)
{
  sub_21C692AD8(a1, a2, a3 & 1);
}

uint64_t sub_21C696C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF0, &qword_21C6D0618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C696CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C695F3C(a1, v4, v5, v6, v7);
}

uint64_t sub_21C696DC4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_21C6CEAF0();
}

uint64_t ApplicationDistributionListContent.init(applicationBundleIdentifier:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for ApplicationDistributionState();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_21C69DA94(a1, a2);
  result = sub_21C6CE930();
  *a5 = v14;
  a5[1] = v15;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ApplicationDistributionListContent.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v60 = a2;
  v4 = sub_21C6CECD0();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v70 = &type metadata for MalwareDetectionListHeaderElement;
  v71 = v7;
  v8 = v7;
  v44 = v7;
  v72 = &type metadata for ApplicationInstallConfirmationListSectionElement;
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6B10, &qword_21C6D06D0);
  swift_getTupleTypeMetadata();
  sub_21C6CEAE0();
  v9 = sub_21C6CE8E0();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ApplicationDistributionState();
  WitnessTable = swift_getWitnessTable();
  v69 = WitnessTable;
  v14 = swift_getWitnessTable();
  v47 = v14;
  v46 = sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  v70 = v9;
  v71 = v13;
  v72 = v14;
  v73 = v46;
  v51 = MEMORY[0x277CE0C50];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v41 - v16;
  sub_21C6CE330();
  v52 = sub_21C6CE3B0();
  v56 = *(v52 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = &v41 - v20;
  v21 = *v2;
  v22 = v2[1];
  v23 = v2[3];
  v43 = v2[2];
  v50 = *(v50 + 24);
  v61 = v8;
  v62 = v50;
  v63 = v21;
  v64 = v22;
  v65 = v43;
  v66 = v23;
  sub_21C6CE8D0();
  v70 = v21;
  v71 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  v24 = swift_checkMetadataState();
  v25 = v47;
  v26 = v46;
  sub_21C6CE7B0();

  (*(v55 + 8))(v12, v9);
  v27 = swift_allocObject();
  v28 = v50;
  v27[2] = v44;
  v27[3] = v28;
  v27[4] = v21;
  v27[5] = v22;
  v27[6] = v43;
  v27[7] = v23;

  v70 = v9;
  v71 = v24;
  v72 = v25;
  v73 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v57;
  sub_21C6CECB0();
  v31 = v48;
  v32 = OpaqueTypeMetadata2;
  v33 = v42;
  sub_21C6CE860();

  (*(v58 + 8))(v30, v59);
  (*(v54 + 8))(v33, v32);
  v34 = sub_21C698BA8(qword_27CDE6B18, MEMORY[0x277CDD8B0]);
  v67 = OpaqueTypeConformance2;
  v68 = v34;
  v35 = v52;
  swift_getWitnessTable();
  v36 = v56;
  v37 = *(v56 + 16);
  v38 = v53;
  v37(v53, v31, v35);
  v39 = *(v36 + 8);
  v39(v31, v35);
  v37(v60, v38, v35);
  return (v39)(v38, v35);
}

uint64_t sub_21C6976AC@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a6;
  v59 = a2;
  v58 = a1;
  v74 = a7;
  v62 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v54 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA8, &qword_21C6D07F0);
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v14 = &v53 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6B10, &qword_21C6D06D0);
  v15 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = *(a5 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  type metadata accessor for ApplicationDistributionState();
  sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  v69 = sub_21C6CE2A0();
  v64 = v28;
  v56 = a4;
  v55 = a3;
  a3();
  v29 = v20[2];
  v71 = v27;
  v65 = v29;
  v60 = v20 + 2;
  v29(v27, v24, a5);
  v30 = v20[1];
  v61 = a5;
  v70 = v30;
  v67 = v20 + 1;
  v30(v24, a5);
  v68 = sub_21C6CE2A0();
  v63 = v31;
  v32 = v58;
  v84 = v58;
  v33 = v59;
  v85 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  v34 = v79[0];
  swift_getKeyPath();
  v84 = v34;
  sub_21C6CE040();

  LODWORD(a4) = *(v34 + 161);

  if (a4 == 1)
  {
    *v14 = sub_21C6CE2A0();
    v14[8] = v35 & 1;
    swift_storeEnumTagMultiPayload();
    sub_21C698B54();
    sub_21C698BA8(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton);
    sub_21C6CE5C0();
    v36 = 0;
    v37 = v66;
    v38 = v61;
  }

  else
  {
    v53 = v14;
    v39 = v62;
    v40 = v61;
    v37 = v66;
    type metadata accessor for ApplicationDistributionListContent();
    v84 = v32;
    v85 = v33;
    v86 = v55;
    v87 = v56;
    v38 = v40;
    if (sub_21C697E1C())
    {
      KeyPath = swift_getKeyPath();
      v42 = v54;
      *v54 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69F8, &qword_21C6D02D0);
      swift_storeEnumTagMultiPayload();
      v43 = v42 + *(v39 + 20);
      *v43 = sub_21C6CE2A0();
      *(v43 + 8) = v44 & 1;
      v45 = v42 + *(v39 + 24);
      LOBYTE(v79[0]) = 0;
      sub_21C6CE930();
      v46 = v85;
      *v45 = v84;
      *(v45 + 8) = v46;
      sub_21C694078(v42, v53);
      swift_storeEnumTagMultiPayload();
      sub_21C698B54();
      sub_21C698BA8(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton);
      sub_21C6CE5C0();
      sub_21C698C58(v42);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BB0, &qword_21C6D07F8);
  (*(*(v47 - 8) + 56))(v19, v36, 1, v47);
  v82 = v69;
  v83 = v64 & 1;
  v84 = &v82;
  v48 = v71;
  v65(v24, v71, v38);
  v80 = v68;
  v81 = v63 & 1;
  v85 = v24;
  v86 = &v80;
  v49 = v73;
  sub_21C6988FC(v19, v73);
  v87 = v49;

  v79[0] = &type metadata for MalwareDetectionListHeaderElement;
  v79[1] = v38;
  v79[2] = &type metadata for ApplicationInstallConfirmationListSectionElement;
  v79[3] = v72;
  v75 = sub_21C69896C();
  v76 = v37;
  v77 = sub_21C6989C0();
  v78 = sub_21C698A14();
  sub_21C696DC4(&v84, 4uLL, v79);

  sub_21C698BF0(v19);
  v50 = v48;
  v51 = v70;
  v70(v50, v38);
  sub_21C698BF0(v49);

  v51(v24, v38);
}

uint64_t sub_21C697E1C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  swift_getKeyPath();
  sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v3 = *(v7 + 115);

  if (v3 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
    sub_21C6CE940();
    swift_getKeyPath();
    sub_21C6CE040();

    v4 = *(v7 + 116);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21C697F80(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v2[14] = sub_21C6CECA0();
  v2[15] = sub_21C6CEC90();
  v4 = sub_21C6CEC80();
  v2[16] = v4;
  v2[17] = v3;

  return MEMORY[0x2822009F8](sub_21C69801C, v4, v3);
}

uint64_t sub_21C69801C()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[8] = v0[12];
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  v0[18] = v0[10];
  v0[19] = sub_21C6CEC90();

  return MEMORY[0x2822009F8](sub_21C6980C0, 0, 0);
}

uint64_t sub_21C6980C0()
{
  v1 = [objc_opt_self() enumeratorWithOptions_];
  v0[6] = sub_21C6A1EA4;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21C698780;
  v0[5] = &block_descriptor;
  v2 = _Block_copy(v0 + 2);
  [v1 setFilter_];
  _Block_release(v2);
  v3 = [v1 nextObject];
  v0[20] = v3;

  if (v3)
  {
  }

  v4 = v0[19];
  v5 = v0[14];
  v7 = sub_21C6CEC80();
  v0[21] = v7;
  v0[22] = v6;

  return MEMORY[0x2822009F8](sub_21C698210, v7, v6);
}

uint64_t sub_21C698210()
{
  v1 = v0[20];
  v2 = v0[18];
  if (((v1 != 0) ^ *(v2 + 161)))
  {
    v3 = v1 != 0;
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v0[11] = v2;
    sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  else
  {
    *(v2 + 161) = v1 != 0;
  }

  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_21C698394;
  v6 = v0[18];

  return sub_21C69EE48();
}

uint64_t sub_21C698394()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21C6984B4, v4, v3);
}

uint64_t sub_21C6984B4()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[16];
  v4 = v0[17];

  return MEMORY[0x2822009F8](sub_21C698520, v3, v4);
}

uint64_t sub_21C698520()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C698594()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21C68F38C;

  return sub_21C697F80(v4, v5);
}

uint64_t sub_21C698698()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6986E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C698728(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21C698780(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_21C6987FC(uint64_t a1)
{
  v2 = sub_21C6CE320();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21C6CE490();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C6988FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6B10, &qword_21C6D06D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C69896C()
{
  result = qword_27CDE6BB8;
  if (!qword_27CDE6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BB8);
  }

  return result;
}

unint64_t sub_21C6989C0()
{
  result = qword_27CDE6BC0;
  if (!qword_27CDE6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BC0);
  }

  return result;
}

unint64_t sub_21C698A14()
{
  result = qword_27CDE6BC8;
  if (!qword_27CDE6BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6B10, &qword_21C6D06D0);
    sub_21C698A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BC8);
  }

  return result;
}

unint64_t sub_21C698A98()
{
  result = qword_27CDE6BD0;
  if (!qword_27CDE6BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6BB0, &qword_21C6D07F8);
    sub_21C698B54();
    sub_21C698BA8(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BD0);
  }

  return result;
}

unint64_t sub_21C698B54()
{
  result = qword_27CDE6BD8;
  if (!qword_27CDE6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BD8);
  }

  return result;
}

uint64_t sub_21C698BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C698BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6B10, &qword_21C6D06D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C698C58(uint64_t a1)
{
  v2 = type metadata accessor for MalwareDetectionReenableApplicationListButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C698CE8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_21C698D98()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v2 = *(v0 + 96);
  v1 = *(v4 + 104);

  return v2;
}

uint64_t sub_21C698E48()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 117);
}

uint64_t sub_21C698EE8()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 115);
}

uint64_t sub_21C698F88()
{
  v1 = sub_21C6CDF80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21C6CE1A0();
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = *(v0 + 16);
  v24 = *(v0 + 24);
  v49 = v0;
  v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v46 = v24;
  v47 = v23;
  v26 = sub_21C6BF2EC(v23, v24, 0);
  v45 = v11;
  v48 = v26;
  v27 = [v26 iTunesMetadata];
  v28 = [v27 distributorInfo];

  v29 = [v28 supportPageURL];
  if (v29)
  {
    sub_21C6CDF60();

    v30 = v2;
    (*(v2 + 56))(v20, 0, 1, v1);
  }

  else
  {
    v30 = v2;
    (*(v2 + 56))(v20, 1, 1, v1);
  }

  sub_21C6A2894(v20, v22);
  sub_21C68F744(v22, v17, &qword_27CDE6BF8, &qword_21C6D0A30);
  if ((*(v30 + 48))(v17, 1, v1) == 1)
  {
    sub_21C68F7D4(v17, &qword_27CDE6BF8, &qword_21C6D0A30);
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v31 = v50;
    v32 = __swift_project_value_buffer(v50, qword_27CDE9D90);
    v33 = v51;
    v34 = v45;
    (*(v51 + 16))(v45, v32, v31);

    v35 = sub_21C6CE180();
    v36 = sub_21C6CECF0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      *(v37 + 14) = sub_21C6A218C(v47, v46, &v52);
      _os_log_impl(&dword_21C685000, v35, v36, "Failed to retrieve support page URL for %{private,mask.hash}s.", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x21CF0FD60](v38, -1, -1);
      MEMORY[0x21CF0FD60](v37, -1, -1);
    }

    (*(v33 + 8))(v34, v31);
  }

  else
  {
    v39 = v5;
    (*(v30 + 32))(v5, v17, v1);
    v40 = [objc_opt_self() sharedApplication];
    v41 = sub_21C6CDF40();
    sub_21C6C8824(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_21C6A2BEC(&qword_27CDE68E0, type metadata accessor for OpenExternalURLOptionsKey);
    v42 = sub_21C6CEB30();

    [v40 openURL:v41 options:v42 completionHandler:0];

    (*(v30 + 8))(v39, v1);
  }

  return sub_21C68F7D4(v22, &qword_27CDE6BF8, &qword_21C6D0A30);
}

uint64_t sub_21C699734()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 161);
}

uint64_t sub_21C6997D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  swift_beginAccess();
  return sub_21C68F744(v1 + 120, a1, &qword_27CDE6860, &qword_21C6CF9D0);
}

uint64_t sub_21C6998A4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_21C699954()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 114);
}

uint64_t sub_21C6999F4()
{
  v1[6] = v0;
  v2 = sub_21C6CE1A0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C699AB4, 0, 0);
}

uint64_t sub_21C699AB4()
{
  v1 = v0[6];
  v2 = v1[22];
  if (v2)
  {
    v3 = v1[21];
    v4 = v1[2];
    v5 = v1[3];
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v6 = sub_21C6BF2EC(v4, v5, 0);
    v0[10] = v6;
    v7 = [v6 iTunesMetadata];
    v8 = [v7 storeItemIdentifier];

    v9 = *(MEMORY[0x277CD5028] + 4);
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_21C699DC8;

    return MEMORY[0x2821237A0](v3, v2, v8, 0, 1);
  }

  else
  {
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_21C699DC8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_21C699F44;
  }

  else
  {
    v3 = sub_21C699EDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21C699EDC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C699F44()
{
  v26 = v0;

  v1 = *(v0 + 96);
  if (qword_27CDE67E8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = __swift_project_value_buffer(v4, qword_27CDE9D78);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21C6CE180();
  v8 = sub_21C6CECE0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v24 = v10;
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = sub_21C6CEE40();
    v20 = sub_21C6A218C(v18, v19, &v25);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_21C685000, v7, v8, "Error requesting product page: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CF0FD60](v14, -1, -1);
    MEMORY[0x21CF0FD60](v13, -1, -1);

    (*(v11 + 8))(v24, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21C69A160()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_21C69A210()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v2 = *(v0 + 80);
  v1 = *(v4 + 88);

  return v2;
}

uint64_t sub_21C69A2C0()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 162);
}

uint64_t sub_21C69A360(uint64_t result)
{
  if (*(v1 + 162) == (result & 1))
  {
    *(v1 + 162) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69A470()
{
  v1[35] = v0;
  v2 = sub_21C6CE1A0();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v4 = *(v3 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C69A53C, 0, 0);
}

uint64_t sub_21C69A53C()
{
  v26 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = objc_allocWithZone(MEMORY[0x277D1C160]);
  v5 = sub_21C6CEB90();
  v6 = [v4 initWithBundleIdentifier_];
  v0[40] = v6;

  if (v6)
  {
    v7 = objc_opt_self();
    v0[41] = v7;
    v0[2] = v0;
    v0[3] = sub_21C69A864;
    v8 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C08, &qword_21C6D0C10);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21C69FE60;
    v0[21] = &block_descriptor_0;
    v0[22] = v8;
    [v7 setRemovability:1 forAppWithIdentity:v6 byClient:0 completion:v0 + 18];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v10 = v0[37];
    v9 = v0[38];
    v11 = v0[36];
    v12 = __swift_project_value_buffer(v11, qword_27CDE9D90);
    (*(v10 + 16))(v9, v12, v11);

    v13 = sub_21C6CE180();
    v14 = sub_21C6CECE0();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21C6A218C(v2, v3, &v25);
      _os_log_impl(&dword_21C685000, v13, v14, "Failed to create IXApplicationIdentity for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CF0FD60](v20, -1, -1);
      MEMORY[0x21CF0FD60](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    v22 = v0[38];
    v21 = v0[39];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_21C69A864()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_21C69ADB4;
  }

  else
  {
    v3 = sub_21C69A974;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21C69A974()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D1C1D0]) init];
  v0[43] = v1;
  if (v1)
  {
    v2 = v0[40];
    v3 = v0[41];
    v4 = v1;
    [v1 setRequestUserConfirmation_];
    [v4 setWaitForDeletion_];
    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_21C69AC2C;
    v5 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C10, &qword_21C6D0C18);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21C69FF0C;
    v0[29] = &block_descriptor_52;
    v0[30] = v5;
    [v3 uninstallAppWithIdentity:v2 options:v4 completion:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v6 = v0[39];
    v7 = v0[36];
    v8 = v0[37];
    v9 = __swift_project_value_buffer(v7, qword_27CDE9D90);
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_21C6CE180();
    v11 = sub_21C6CECE0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[39];
    v14 = v0[40];
    v15 = v0[36];
    v16 = v0[37];
    if (v12)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21C685000, v10, v11, "Failed to create IXUninstallOptions", v17, 2u);
      MEMORY[0x21CF0FD60](v17, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
    v19 = v0[38];
    v18 = v0[39];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_21C69AC2C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_21C69AE40;
  }

  else
  {
    v3 = sub_21C69AD3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21C69AD3C()
{
  v1 = *(v0 + 320);

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21C69ADB4()
{
  v1 = v0[42];
  v2 = v0[40];
  swift_willThrow();

  v4 = v0[38];
  v3 = v0[39];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21C69AE40()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[40];
  swift_willThrow();

  v5 = v0[38];
  v4 = v0[39];

  v6 = v0[1];

  return v6();
}

void sub_21C69AED8()
{
  v1 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21C6CE1A0();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = sub_21C6CDF80();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v42 = v12;
  v15 = sub_21C6BF2EC(v12, v13, 0);
  v40 = v6;
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
  v41 = v16;
  v18 = [v16 URL];
  sub_21C6CDF60();

  v19 = sub_21C6CDF40();
  (*(v8 + 8))(v11, v7);
  v44[0] = 0;
  LOBYTE(v7) = [v17 setUserOverride:1 forBundle:v19 withError:v44];

  v20 = v44[0];
  if (v7)
  {
    if (v1[116] == 1)
    {
      v21 = v44[0];

      v1[116] = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v39 - 2) = v1;
      *(&v39 - 8) = 1;
      v44[0] = v1;
      sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
      v37 = v20;
      sub_21C6CE030();
    }
  }

  else
  {
    v22 = v44[0];
    v23 = sub_21C6CDEE0();

    swift_willThrow();
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v2, qword_27CDE9D90);
    v25 = v43;
    v26 = v40;
    (*(v43 + 16))(v40, v24, v2);

    v27 = v23;
    v28 = sub_21C6CE180();
    v29 = sub_21C6CECE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 141558531;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      *(v30 + 14) = sub_21C6A218C(v42, v13, v44);
      *(v30 + 22) = 2082;
      swift_getErrorValue();
      v32 = sub_21C6CEE40();
      v34 = v26;
      v35 = sub_21C6A218C(v32, v33, v44);

      *(v30 + 24) = v35;
      _os_log_impl(&dword_21C685000, v28, v29, "Failed to set user override for %{private,mask.hash}s, error: '%{public}s'.", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v31, -1, -1);
      MEMORY[0x21CF0FD60](v30, -1, -1);

      (*(v25 + 8))(v34, v2);
    }

    else
    {

      (*(v25 + 8))(v26, v2);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21C69B644(uint64_t a1)
{
  v64 = a1;
  v71[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - v7;
  v9 = sub_21C6CE1A0();
  v69 = *(v9 - 1);
  v70 = v9;
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = sub_21C6CDF80();
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v68 = v1;
  v23 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v66 = v22;
  v67 = v21;
  v24 = sub_21C6BF2EC(v21, v22, 0);
  v60 = v6;
  v25 = v18;
  v61 = v13;
  v62 = v8;
  v26 = v24;
  v27 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
  v63 = v26;
  v28 = [v26 URL];
  sub_21C6CDF60();

  v29 = sub_21C6CDF40();
  v30 = v65;
  v31 = *(v65 + 8);
  v31(v20, v14);
  v71[0] = 0;
  v32 = [v27 queryForBundle:v29 withError:v71];

  if (!v32)
  {
    v39 = v71[0];
    v40 = sub_21C6CDEE0();

    swift_willThrow();
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v41 = v70;
    v42 = __swift_project_value_buffer(v70, qword_27CDE9D90);
    v43 = v69;
    v44 = v61;
    (*(v69 + 16))(v61, v42, v41);

    v45 = v40;
    v46 = sub_21C6CE180();
    v47 = sub_21C6CECE0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v71[0] = v49;
      *v48 = 141558531;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      *(v48 + 14) = sub_21C6A218C(v67, v66, v71);
      *(v48 + 22) = 2082;
      swift_getErrorValue();
      v50 = sub_21C6CEE40();
      v52 = sub_21C6A218C(v50, v51, v71);

      *(v48 + 24) = v52;
      _os_log_impl(&dword_21C685000, v46, v47, "Failed to query launch warning database for %{private,mask.hash}s, error: '%{public}s'.", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v49, -1, -1);
      MEMORY[0x21CF0FD60](v48, -1, -1);
    }

    else
    {
    }

    result = (*(v43 + 8))(v44, v41);
    goto LABEL_13;
  }

  v33 = v14;
  v70 = v31;
  v34 = v71[0];
  v35 = [v32 kbURL];
  if (v35)
  {
    v36 = v35;
    sub_21C6CDF60();

    v37 = *(v30 + 32);
    v38 = v62;
    v37(v62, v20, v33);
    (*(v30 + 56))(v38, 0, 1, v33);
    v37(v25, v38, v33);
LABEL_12:
    sub_21C6CE310();

    result = (v70)(v25, v33);
LABEL_13:
    v58 = *MEMORY[0x277D85DE8];
    return result;
  }

  v54 = v27;
  v55 = v62;
  (*(v30 + 56))(v62, 1, 1, v33);
  v56 = v60;
  sub_21C6CDF70();
  v57 = *(v30 + 48);
  result = v57(v56, 1, v33);
  if (result != 1)
  {
    (*(v30 + 32))(v25, v56, v33);
    v27 = v54;
    if (v57(v55, 1, v33) != 1)
    {
      sub_21C68F7D4(v55, &qword_27CDE6BF8, &qword_21C6D0A30);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C69BED8()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 116);
}

uint64_t sub_21C69BF78()
{
  v1[17] = v0;
  v2 = sub_21C6CE1A0();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C20, &qword_21C6D0C30) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = sub_21C6CE140();
  v1[23] = v6;
  v7 = *(v6 - 8);
  v1[24] = v7;
  v8 = *(v7 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C69C0D8, 0, 0);
}

uint64_t sub_21C69C0D8()
{
  v37 = v0;
  v1 = v0[24];
  v2 = v0[17];
  swift_getKeyPath();
  v0[13] = v2;
  v0[26] = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationDistributionState___observationRegistrar;
  v0[27] = sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  swift_beginAccess();
  sub_21C68F744(v2 + 120, (v0 + 2), &qword_27CDE6860, &qword_21C6CF9D0);
  v3 = (v1 + 56);
  if (v0[5])
  {
    v4 = v0[23];
    v5 = v0[24];
    v6 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C50, &qword_21C6D0C78);
    v7 = swift_dynamicCast();
    (*v3)(v6, v7 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v8 = v0[17];
      (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
      if (*(v8 + 160) == 1)
      {
        *(v8 + 160) = 1;
      }

      else
      {
        v31 = v0[17];
        swift_getKeyPath();
        v32 = swift_task_alloc();
        *(v32 + 16) = v31;
        *(v32 + 24) = 1;
        v0[14] = v31;
        sub_21C6CE030();
      }

      v33 = *(MEMORY[0x277CD4FF0] + 4);
      v34 = swift_task_alloc();
      v0[28] = v34;
      *v34 = v0;
      v34[1] = sub_21C69C598;
      v35 = v0[25];

      return MEMORY[0x282123768](v35);
    }
  }

  else
  {
    v9 = v0[22];
    v10 = v0[23];
    sub_21C68F7D4((v0 + 2), &qword_27CDE6860, &qword_21C6CF9D0);
    (*v3)(v9, 1, 1, v10);
  }

  sub_21C68F7D4(v0[22], &qword_27CDE6C20, &qword_21C6D0C30);
  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  v15 = __swift_project_value_buffer(v12, qword_27CDE9D90);
  (*(v13 + 16))(v11, v15, v12);

  v16 = sub_21C6CE180();
  v17 = sub_21C6CECF0();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[19];
  if (v18)
  {
    v22 = v0[17];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    *(v23 + 14) = sub_21C6A218C(*(v22 + 16), *(v22 + 24), &v36);
    _os_log_impl(&dword_21C685000, v16, v17, "Requested Update for %{private,mask.hash}s, but no update metadata was available.", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x21CF0FD60](v24, -1, -1);
    MEMORY[0x21CF0FD60](v23, -1, -1);
  }

  (*(v21 + 8))(v19, v20);
  v25 = v0[25];
  v26 = v0[21];
  v27 = v0[22];
  v28 = v0[20];

  v29 = v0[1];

  return v29();
}

uint64_t sub_21C69C598()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_21C69C74C;
  }

  else
  {
    v3 = sub_21C69C6AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21C69C6AC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21C69C74C()
{
  v41 = v0;
  v1 = v0[17];
  if (*(v1 + 160))
  {
    v3 = v0[26];
    v2 = v0[27];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = 0;
    v0[16] = v1;
    sub_21C6CE030();
  }

  else
  {
    *(v1 + 160) = 0;
  }

  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = __swift_project_value_buffer(v8, qword_27CDE9D90);
  (*(v7 + 16))(v6, v9, v8);

  v10 = v5;
  v11 = sub_21C6CE180();
  v12 = sub_21C6CECE0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[29];
  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[23];
  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[18];
  if (v13)
  {
    v39 = v0[25];
    v21 = v0[17];
    v38 = v0[18];
    v22 = swift_slowAlloc();
    v37 = v17;
    v23 = swift_slowAlloc();
    v40[0] = v23;
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    *(v22 + 14) = sub_21C6A218C(*(v21 + 16), *(v21 + 24), v40);
    *(v22 + 22) = 2082;
    swift_getErrorValue();
    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[12];
    v27 = sub_21C6CEE40();
    v36 = v18;
    v29 = sub_21C6A218C(v27, v28, v40);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_21C685000, v11, v12, "Failed to request Update for %{private,mask.hash}s, error: '%{public}s'.", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF0FD60](v23, -1, -1);
    MEMORY[0x21CF0FD60](v22, -1, -1);

    (*(v19 + 8))(v36, v38);
    (*(v16 + 8))(v39, v37);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v30 = v0[25];
  v31 = v0[21];
  v32 = v0[22];
  v33 = v0[20];

  v34 = v0[1];

  return v34();
}

uint64_t sub_21C69CAA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_21C6CEE20() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69CC08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_21C6CEE20() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69CD68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (v6 = *(v2 + 72), (sub_21C6CEE20() & 1) != 0))
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69CEC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80) == a1 && *(v2 + 88) == a2;
  if (v5 || (v6 = *(v2 + 88), (sub_21C6CEE20() & 1) != 0))
  {
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69D028(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (v6 = *(v2 + 104), (sub_21C6CEE20() & 1) != 0))
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69D188(uint64_t result)
{
  if (*(v1 + 114) == (result & 1))
  {
    *(v1 + 114) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D298(uint64_t result)
{
  if (*(v1 + 115) == (result & 1))
  {
    *(v1 + 115) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  *a2 = *(v3 + 116);
  return result;
}

uint64_t sub_21C69D478(uint64_t result)
{
  if (*(v1 + 116) == (result & 1))
  {
    *(v1 + 116) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D588(uint64_t result)
{
  if (*(v1 + 117) == (result & 1))
  {
    *(v1 + 117) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D698(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C6A27A4(a2, a1 + 120);
  return swift_endAccess();
}

uint64_t sub_21C69D6FC()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  return *(v0 + 160);
}

uint64_t sub_21C69D79C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_21C69D86C(uint64_t result)
{
  if (*(v1 + 160) == (result & 1))
  {
    *(v1 + 160) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D97C(uint64_t result)
{
  if (*(v1 + 161) == (result & 1))
  {
    *(v1 + 161) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69DA94(uint64_t a1, uint64_t a2)
{
  v157[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21C6CDF80();
  v139 = *(v5 - 8);
  v6 = *(v139 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C6CE1A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v127 - v15;
  MEMORY[0x28223BE20](v17);
  *(v2 + 114) = 0;
  *(v2 + 117) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 147) = 0u;
  sub_21C6CE050();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v153 = v2;
  v18 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v152 = a1;
  v156 = a2;
  v19 = sub_21C6BF2EC(a1, a2, 0);
  v148 = 0;
  v20 = v19;
  v144 = v16;
  v133 = v8;
  v128 = v13;
  v140 = v10;
  v138 = v9;
  v151 = [v19 isManagedAppDistributor];
  v21 = [v20 iTunesMetadata];
  v22 = [v21 distributorInfo];

  v23 = [v22 distributorID];
  if (v23)
  {
    v24 = sub_21C6CEBC0();
    v26 = v25;

    v27 = v5;
    if (v24 == v152 && v26 == v156)
    {
      v154 = 1;
    }

    else
    {
      v154 = sub_21C6CEE20();
    }

    v28 = v138;
  }

  else
  {
    v154 = 0;
    v28 = v138;
    v27 = v5;
  }

  v29 = v20;
  v30 = [v29 localizedName];
  v31 = sub_21C6CEBC0();
  v136 = v32;

  v33 = [v29 iTunesMetadata];
  v34 = [v33 distributorInfo];

  v35 = [v34 distributorID];
  if (v35)
  {
    v155 = sub_21C6CEBC0();
    v37 = v36;
  }

  else
  {
    v155 = 0;
    v37 = 0;
  }

  v38 = v140;
  v39 = [v29 iTunesMetadata];
  v40 = [v39 artistName];

  v41 = v144;
  if (!v40)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v42 = qword_27CDE9D58;
    v43 = sub_21C6CEB90();
    v40 = [v42 localizedStringForKey:v43 value:0 table:0];
  }

  v130 = v27;
  v149 = sub_21C6CEBC0();
  v135 = v44;

  v45 = [v29 shortVersionString];
  if (v45)
  {
    v46 = v45;
    v147 = sub_21C6CEBC0();
    v134 = v47;
  }

  else
  {
    v147 = 0;
    v134 = 0xE000000000000000;
  }

  v48 = v155;
  v49 = [v29 exactBundleVersion];
  if (!v49)
  {
    v146 = 0;
    v132 = 0xE000000000000000;
    if (v154)
    {
      goto LABEL_20;
    }

LABEL_26:
    v145 = 0;
    v131 = 0xE000000000000000;
    v55 = v148;
    goto LABEL_27;
  }

  v50 = v49;
  v146 = sub_21C6CEBC0();
  v132 = v51;

  if ((v154 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v52 = [v29 iTunesMetadata];
  v53 = [v52 distributorInfo];

  v54 = [v53 domain];
  v55 = v148;
  if (!v54)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v56 = qword_27CDE9D58;
    v57 = sub_21C6CEB90();
    v54 = [v56 localizedStringForKey:v57 value:0 table:0];
  }

  v145 = sub_21C6CEBC0();
  v131 = v58;

  v48 = v155;
LABEL_27:
  v137 = v31;
  v150 = v37;
  if (!v37)
  {
    v72 = v28;
    goto LABEL_34;
  }

  v59 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v60 = sub_21C6BF2EC(v48, v37, 0);
  if (v55)
  {
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v28, qword_27CDE9D90);
    (*(v38 + 16))(v41, v61, v28);

    v62 = v55;
    v63 = sub_21C6CE180();
    v64 = sub_21C6CECF0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v157[0] = v66;
      *v65 = 141558531;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      v67 = sub_21C6A218C(v155, v37, v157);

      *(v65 + 14) = v67;
      *(v65 + 22) = 2082;
      swift_getErrorValue();
      v68 = sub_21C6CEE40();
      v70 = sub_21C6A218C(v68, v69, v157);

      *(v65 + 24) = v70;
      _os_log_impl(&dword_21C685000, v63, v64, "Failed to retrieve LSApplicationRecord for %{private,mask.hash}s with error '%{public}s'", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v66, -1, -1);
      v71 = v138;
      MEMORY[0x21CF0FD60](v65, -1, -1);

      v48 = v155;
      v72 = v71;
      (*(v140 + 8))(v41, v71);
LABEL_34:
      v73 = 0;
      v74 = 1;
      goto LABEL_38;
    }

    v72 = v28;
    (*(v38 + 8))(v41, v28);
    v73 = 0;
    v74 = 1;
  }

  else
  {
    v75 = v60;
    v72 = v28;

    sub_21C6CE0C0();
    sub_21C6CE0B0();
    v76 = [v75 iTunesMetadata];
    [v76 storeItemIdentifier];

    v73 = sub_21C6CE0A0();

    v74 = 0;
  }

  v48 = v155;
LABEL_38:
  *(v153 + 216) = v73;
  v77 = [v29 iTunesMetadata];
  v78 = [v77 distributorInfo];

  v79 = [v78 distributorNameForCurrentLocale];
  v80 = v154;
  v81 = v133;
  if (!v79)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v82 = qword_27CDE9D58;
    v83 = sub_21C6CEB90();
    v79 = [v82 localizedStringForKey:v83 value:0 table:0];
  }

  v143 = sub_21C6CEBC0();
  v129 = v84;

  v85 = [v29 iTunesMetadata];
  v86 = [v85 distributorInfo];

  v87 = [v86 developerName];
  v88 = v74;
  if (!v87)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v89 = qword_27CDE9D58;
    v90 = sub_21C6CEB90();
    v87 = [v89 localizedStringForKey:v90 value:0 table:0];
  }

  v142 = sub_21C6CEBC0();
  v141 = v91;

  if (v80)
  {
    v92 = [v29 iTunesMetadata];
    v93 = [v92 distributorInfo];

    v94 = [v93 developerID];
    if (v94)
    {
      sub_21C6CEBC0();

      v95 = sub_21C6CE100();

      v88 = v74 | v95 ^ 1;
    }
  }

  v96 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
  v97 = [v29 URL];

  sub_21C6CDF60();
  v98 = sub_21C6CDF40();
  (*(v139 + 8))(v81, v130);
  v157[0] = 0;
  v99 = [v96 queryForBundle:v98 withError:v157];

  LODWORD(v144) = v88;
  if (v99)
  {
    v100 = v157[0];
    LODWORD(v140) = [v99 warningState] == 1;
    LODWORD(v148) = [v99 isUserOverridden];

    v101 = v153;
    v102 = v137;
    v155 = v48;
    v103 = v136;
  }

  else
  {
    v104 = v157[0];
    v105 = sub_21C6CDEE0();

    swift_willThrow();
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v106 = __swift_project_value_buffer(v72, qword_27CDE9D90);
    v107 = v140;
    v108 = v128;
    (*(v140 + 16))(v128, v106, v72);

    v109 = v105;
    v110 = sub_21C6CE180();
    v111 = sub_21C6CECE0();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v157[0] = v113;
      *v112 = 141558531;
      *(v112 + 4) = 1752392040;
      *(v112 + 12) = 2081;
      *(v112 + 14) = sub_21C6A218C(v152, v156, v157);
      *(v112 + 22) = 2082;
      swift_getErrorValue();
      v114 = sub_21C6CEE40();
      v116 = sub_21C6A218C(v114, v115, v157);

      *(v112 + 24) = v116;
      _os_log_impl(&dword_21C685000, v110, v111, "Failed to query for malware warning for %{private,mask.hash}s with error '%{public}s'.", v112, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v113, -1, -1);
      MEMORY[0x21CF0FD60](v112, -1, -1);

      (*(v107 + 8))(v108, v138);
    }

    else
    {

      (*(v107 + 8))(v108, v72);
    }

    LODWORD(v148) = 0;
    LODWORD(v140) = 0;
    v102 = v137;
    v103 = v136;
    v101 = v153;
  }

  v117 = v135;
  v118 = v134;
  v119 = v132;
  v120 = v131;
  v121 = v129;
  v122 = sub_21C6CE110();

  *(v101 + 162) = v122 & 1;
  *(v101 + 115) = v140;
  *(v101 + 116) = v148;
  *(v101 + 32) = v102;
  *(v101 + 40) = v103;
  *(v101 + 113) = v151;
  *(v101 + 114) = v144 & 1;
  *(v101 + 112) = v154 & 1;
  *(v101 + 48) = v149;
  *(v101 + 56) = v117;
  *(v101 + 96) = v145;
  *(v101 + 104) = v120;
  v123 = v150;
  *(v101 + 168) = v155;
  *(v101 + 176) = v123;
  *(v101 + 184) = v143;
  *(v101 + 192) = v121;
  v124 = v141;
  *(v101 + 200) = v142;
  *(v101 + 208) = v124;
  *(v101 + 64) = v147;
  *(v101 + 72) = v118;
  *(v101 + 80) = v146;
  *(v101 + 88) = v119;
  sub_21C6CE020();
  sub_21C6CE020();
  v125 = *MEMORY[0x277D85DE8];
  return v101;
}

uint64_t sub_21C69EE48()
{
  v1[35] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C20, &qword_21C6D0C30) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = sub_21C6CE1A0();
  v1[38] = v3;
  v4 = *(v3 - 8);
  v1[39] = v4;
  v5 = *(v4 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C69EF64, 0, 0);
}

uint64_t sub_21C69EF64()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  v0[43] = v2;
  v3 = *(v1 + 24);
  v0[44] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_21C6BF2EC(v2, v3, 0);
  v6 = [v5 iTunesMetadata];
  v7 = [v6 distributorInfo];

  v8 = [v7 developerID];
  if (v8 && (sub_21C6CEBC0(), v8, v9 = sub_21C6CE100(), , (v9 & 1) == 0))
  {
    v13 = v0[35];
    if (*(v13 + 117))
    {
      swift_getKeyPath();
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      v0[34] = v13;
      sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
      sub_21C6CE030();
    }

    else
    {
      *(v13 + 117) = 0;
    }

    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v15 = v0[41];
    v16 = v0[38];
    v17 = v0[39];
    v18 = __swift_project_value_buffer(v16, qword_27CDE9D90);
    (*(v17 + 16))(v15, v18, v16);
    v19 = sub_21C6CE180();
    v20 = sub_21C6CED00();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[41];
    v23 = v0[38];
    v24 = v0[39];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21C685000, v19, v20, "Developer is not approved so will not fetch for updates", v25, 2u);
      MEMORY[0x21CF0FD60](v25, -1, -1);
    }

    (*(v24 + 8))(v22, v23);
    v27 = v0[41];
    v26 = v0[42];
    v28 = v0[40];
    v30 = v0[36];
    v29 = v0[37];

    v31 = v0[1];

    return v31();
  }

  else
  {

    v10 = *(MEMORY[0x277CD4FF8] + 4);
    v11 = swift_task_alloc();
    v0[45] = v11;
    *v11 = v0;
    v11[1] = sub_21C69F580;
    v12 = v0[37];

    return MEMORY[0x282123780](v12, v2, v3, 0);
  }
}

uint64_t sub_21C69F580()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_21C69FA1C;
  }

  else
  {
    v3 = sub_21C69F694;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21C69F694()
{
  v1 = (v0 + 56);
  v2 = *(v0 + 288);
  sub_21C68F744(*(v0 + 296), v2, &qword_27CDE6C20, &qword_21C6D0C30);
  v3 = sub_21C6CE140();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 288);
  if (v5 == 1)
  {
    sub_21C68F7D4(*(v0 + 288), &qword_27CDE6C20, &qword_21C6D0C30);
    *v1 = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 80) = v3;
    *(v0 + 88) = &off_282E3F358;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v4 + 32))(boxed_opaque_existential_1, v6, v3);
  }

  v8 = *(v0 + 368);
  v9 = *(v0 + 280);
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  *(v0 + 248) = v9;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE030();

  sub_21C68F7D4(v0 + 56, &qword_27CDE6860, &qword_21C6CF9D0);
  swift_getKeyPath();
  *(v0 + 256) = v9;
  sub_21C6CE040();

  swift_beginAccess();
  sub_21C68F744(v9 + 120, v0 + 96, &qword_27CDE6860, &qword_21C6CF9D0);
  v11 = *(v0 + 120);
  sub_21C68F7D4(v0 + 96, &qword_27CDE6860, &qword_21C6CF9D0);
  v12 = (v11 != 0) ^ *(v9 + 117);
  v13 = *(v0 + 296);
  v14 = v11 != 0;
  if (v12)
  {
    v15 = *(v0 + 280);
    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    *(v0 + 264) = v15;
    sub_21C6CE030();

    sub_21C68F7D4(v13, &qword_27CDE6C20, &qword_21C6D0C30);
  }

  else
  {
    sub_21C68F7D4(*(v0 + 296), &qword_27CDE6C20, &qword_21C6D0C30);
    *(v9 + 117) = v14;
  }

  v18 = *(v0 + 328);
  v17 = *(v0 + 336);
  v19 = *(v0 + 320);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21C69FA1C()
{
  v40 = v0;
  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = __swift_project_value_buffer(v4, qword_27CDE9D90);
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_21C6CE180();
  v9 = sub_21C6CECE0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 368);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v13 = *(v0 + 312);
    v38 = *(v0 + 320);
    v14 = *(v0 + 304);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_21C6A218C(v12, v11, v39);
    *(v15 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = sub_21C6CEE40();
    v22 = sub_21C6A218C(v20, v21, v39);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_21C685000, v8, v9, "Failed to get update metadata for %{private,mask.hash}s, error: '%{public}s'.", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF0FD60](v16, -1, -1);
    MEMORY[0x21CF0FD60](v15, -1, -1);

    (*(v13 + 8))(v38, v14);
  }

  else
  {
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 304);

    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 280);
  if (*(v26 + 117))
  {
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v0 + 232) = v26;
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  else
  {
    *(v26 + 117) = 0;
  }

  v28 = *(v0 + 368);
  v29 = *(v0 + 280);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_getKeyPath();
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = v0 + 16;
  *(v0 + 224) = v29;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE030();

  sub_21C68F7D4(v0 + 16, &qword_27CDE6860, &qword_21C6CF9D0);
  v32 = *(v0 + 328);
  v31 = *(v0 + 336);
  v33 = *(v0 + 320);
  v35 = *(v0 + 288);
  v34 = *(v0 + 296);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_21C69FE60(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C18, &qword_21C6D0C20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_21C69FF0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C18, &qword_21C6D0C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21C69FFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C48, &qword_21C6D0C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  if (*(a1 + 216))
  {
    sub_21C6CE080();
  }

  else
  {
    v6 = sub_21C6CE070();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  return sub_21C68F7D4(v5, &qword_27CDE6C48, &qword_21C6D0C40);
}

uint64_t sub_21C6A00B4()
{
  v0 = sub_21C6CEB00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C6CEB20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_21C6CECA0();
    v14[0] = v5;
    sub_21C6A1900(sub_21C6A2B18, v11);
    sub_21C6A2B80();
    v12 = sub_21C6CED10();
    aBlock[4] = sub_21C6A2BCC;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6A1CA8;
    aBlock[3] = &block_descriptor_61;
    v13 = _Block_copy(aBlock);
    swift_retain_n();
    sub_21C6CEB10();
    v14[1] = MEMORY[0x277D84F90];
    sub_21C6A2BEC(&qword_27CDE6C30, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C38, &qword_21C6D0C38);
    sub_21C6A2C34();
    sub_21C6CED60();
    MEMORY[0x21CF0F4B0](0, v9, v4, v13);
    _Block_release(v13);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v14[0]);
  }

  return result;
}

void sub_21C6A03C8()
{
  v1 = v0;
  v145 = *MEMORY[0x277D85DE8];
  v2 = sub_21C6CDF80();
  v136 = *(v2 - 8);
  v3 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_21C6CE1A0();
  v138 = *(v139 - 8);
  v6 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v126 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v126 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v18 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v137 = v16;
  v19 = sub_21C6BF2EC(v17, v16, 0);
  v133 = v14;
  v131 = v11;
  v129 = v5;
  v130 = v2;
  v127 = v17;
  v128 = v8;
  v20 = v19;
  v21 = [v20 localizedName];
  v22 = sub_21C6CEBC0();
  v24 = v23;

  sub_21C69CAA8(v22, v24);
  v25 = [v20 iTunesMetadata];
  v26 = [v25 artistName];

  v27 = v139;
  v28 = v1;
  if (!v26)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v29 = qword_27CDE9D58;
    v30 = sub_21C6CEB90();
    v26 = [v29 localizedStringForKey:v30 value:0 table:0];
  }

  v31 = sub_21C6CEBC0();
  v33 = v32;

  sub_21C69CC08(v31, v33);
  v34 = [v20 iTunesMetadata];
  v35 = [v34 distributorInfo];

  v36 = [v35 domain];
  if (!v36)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v37 = qword_27CDE9D58;
    v38 = sub_21C6CEB90();
    v36 = [v37 localizedStringForKey:v38 value:0 table:0];
  }

  v39 = sub_21C6CEBC0();
  v41 = v40;

  sub_21C69CC08(v39, v41);
  v42 = [v20 shortVersionString];
  if (v42)
  {
    v43 = v42;
    v44 = sub_21C6CEBC0();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0xE000000000000000;
  }

  sub_21C69CD68(v44, v46);
  v48 = [v20 exactBundleVersion];
  if (v48)
  {
    v49 = v48;
    v50 = sub_21C6CEBC0();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  sub_21C69CEC8(v50, v52);
  swift_getKeyPath();
  v53 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationDistributionState___observationRegistrar;
  *&v142 = v1;
  v54 = sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();

  v56 = *(v28 + 64);
  v55 = *(v28 + 72);
  swift_getKeyPath();
  v141[1] = v28;

  v132 = v53;
  v135 = v54;
  sub_21C6CE040();

  swift_beginAccess();
  sub_21C68F744(v28 + 120, &v142, &qword_27CDE6860, &qword_21C6CF9D0);
  v57 = *(&v143 + 1);
  if (*(&v143 + 1))
  {
    v134 = v20;
    v58 = __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
    v59 = *(v57 - 8);
    v60 = *(v59 + 64);
    v61 = MEMORY[0x28223BE20](v58);
    v63 = &v126 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v63, v61);
    sub_21C68F7D4(&v142, &qword_27CDE6860, &qword_21C6CF9D0);
    v64 = sub_21C6CE130();
    v66 = v65;
    (*(v59 + 8))(v63, v57);
    if (v56 == v64 && v55 == v66)
    {

      v27 = v139;
      v67 = v138;
      v20 = v134;
      v68 = v133;
      goto LABEL_22;
    }

    v69 = sub_21C6CEE20();

    v27 = v139;
    v67 = v138;
    v20 = v134;
    v68 = v133;
    if (v69)
    {
LABEL_22:
      if (qword_27CDE67F0 != -1)
      {
        swift_once();
      }

      v70 = __swift_project_value_buffer(v27, qword_27CDE9D90);
      v71 = *(v67 + 16);
      v131 = v70;
      v126 = v71;
      (v71)(v68);
      v72 = sub_21C6CE180();
      v73 = sub_21C6CED00();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_21C685000, v72, v73, "Update complete", v74, 2u);
        MEMORY[0x21CF0FD60](v74, -1, -1);
      }

      v75 = *(v67 + 8);
      v76 = v133;
      v138 = v67 + 8;
      v133 = v75;
      v75(v76, v27);
      v144 = 0;
      v142 = 0u;
      v143 = 0u;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v126 - 2) = v28;
      *(&v126 - 1) = &v142;
      v141[0] = v28;
      sub_21C6CE030();

      sub_21C68F7D4(&v142, &qword_27CDE6860, &qword_21C6CF9D0);
      if (*(v28 + 117))
      {
        v78 = swift_getKeyPath();
        MEMORY[0x28223BE20](v78);
        *(&v126 - 2) = v28;
        *(&v126 - 8) = 0;
        *&v142 = v28;
        sub_21C6CE030();

        if ((*(v28 + 160) & 1) == 0)
        {
LABEL_28:
          *(v28 + 160) = 0;
          goto LABEL_31;
        }
      }

      else
      {
        *(v28 + 117) = 0;
        if ((*(v28 + 160) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v79 = swift_getKeyPath();
      MEMORY[0x28223BE20](v79);
      *(&v126 - 2) = v28;
      *(&v126 - 8) = 0;
      *&v142 = v28;
      sub_21C6CE030();

LABEL_31:
      v80 = v139;
      v81 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
      v82 = [v20 URL];

      v83 = v129;
      sub_21C6CDF60();

      v84 = sub_21C6CDF40();
      (*(v136 + 8))(v83, v130);
      *&v142 = 0;
      v85 = [v81 queryForBundle:v84 withError:&v142];

      if (v85)
      {
        v86 = v142;
        v87 = [v85 warningState];
        if ((*(v28 + 115) ^ (v87 == 1)))
        {
          v88 = v87 == 1;
          v89 = swift_getKeyPath();
          MEMORY[0x28223BE20](v89);
          *(&v126 - 2) = v28;
          *(&v126 - 8) = v88;
          *&v142 = v28;
          sub_21C6CE030();
        }

        else
        {
          *(v28 + 115) = v87 == 1;
        }

        v120 = [v85 isUserOverridden];
        v121 = v120;
        if (v120 == *(v28 + 116))
        {

          *(v28 + 116) = v121;
        }

        else
        {
          v122 = swift_getKeyPath();
          MEMORY[0x28223BE20](v122);
          *(&v126 - 2) = v28;
          *(&v126 - 8) = v121;
          *&v142 = v28;
          sub_21C6CE030();
        }

        goto LABEL_11;
      }

      v90 = v142;
      v91 = sub_21C6CDEE0();

      swift_willThrow();
      v92 = v128;
      v126(v128, v131, v80);

      v93 = v91;
      v94 = sub_21C6CE180();
      v95 = sub_21C6CECE0();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v142 = v97;
        *v96 = 141558531;
        *(v96 + 4) = 1752392040;
        *(v96 + 12) = 2081;
        *(v96 + 14) = sub_21C6A218C(v127, v137, &v142);
        *(v96 + 22) = 2082;
        swift_getErrorValue();
        v98 = sub_21C6CEE40();
        v100 = sub_21C6A218C(v98, v99, &v142);

        *(v96 + 24) = v100;
        _os_log_impl(&dword_21C685000, v94, v95, "Failed to query for malware warning for %{private,mask.hash}s with error '%{public}s'.", v96, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CF0FD60](v97, -1, -1);
        MEMORY[0x21CF0FD60](v96, -1, -1);
      }

      v133(v92, v80);
      if (*(v28 + 115))
      {
        v101 = swift_getKeyPath();
        MEMORY[0x28223BE20](v101);
        *(&v126 - 2) = v28;
        *(&v126 - 8) = 0;
        *&v142 = v28;
        sub_21C6CE030();

        if ((*(v28 + 116) & 1) == 0)
        {
LABEL_38:

          *(v28 + 116) = 0;
          goto LABEL_11;
        }
      }

      else
      {
        *(v28 + 115) = 0;
        if ((*(v28 + 116) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v125 = swift_getKeyPath();
      MEMORY[0x28223BE20](v125);
      *(&v126 - 2) = v28;
      *(&v126 - 8) = 0;
      *&v142 = v28;
      sub_21C6CE030();

      goto LABEL_11;
    }
  }

  else
  {
    sub_21C68F7D4(&v142, &qword_27CDE6860, &qword_21C6CF9D0);

    v67 = v138;
  }

  v102 = v131;
  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v103 = __swift_project_value_buffer(v27, qword_27CDE9D90);
  (*(v67 + 16))(v102, v103, v27);

  v104 = sub_21C6CE180();
  v105 = sub_21C6CED00();

  if (os_log_type_enabled(v104, v105))
  {
    v134 = v20;
    v106 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v141[0] = v137;
    *v106 = 136315394;
    swift_getKeyPath();
    *&v142 = v28;
    sub_21C6CE040();

    v107 = *(v28 + 64);
    v108 = *(v28 + 72);

    v109 = sub_21C6A218C(v107, v108, v141);

    *(v106 + 4) = v109;
    *(v106 + 12) = 2080;
    swift_getKeyPath();
    v140 = v28;
    sub_21C6CE040();

    sub_21C68F744(v28 + 120, &v142, &qword_27CDE6860, &qword_21C6CF9D0);
    v110 = *(&v143 + 1);
    if (*(&v143 + 1))
    {
      v111 = __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
      v112 = *(v110 - 8);
      v113 = *(v112 + 64);
      v114 = MEMORY[0x28223BE20](v111);
      v116 = &v126 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v112 + 16))(v116, v114);
      sub_21C68F7D4(&v142, &qword_27CDE6860, &qword_21C6CF9D0);
      v117 = sub_21C6CE130();
      v119 = v118;
      (*(v112 + 8))(v116, v110);
      v67 = v138;
      v27 = v139;
    }

    else
    {
      sub_21C68F7D4(&v142, &qword_27CDE6860, &qword_21C6CF9D0);
      v119 = 0xE500000000000000;
      v117 = 0x296C696E28;
    }

    v123 = sub_21C6A218C(v117, v119, v141);

    *(v106 + 14) = v123;
    _os_log_impl(&dword_21C685000, v104, v105, "Not yet updated: have %s but latest is %s", v106, 0x16u);
    v124 = v137;
    swift_arrayDestroy();
    MEMORY[0x21CF0FD60](v124, -1, -1);
    MEMORY[0x21CF0FD60](v106, -1, -1);

    (*(v67 + 8))(v131, v27);
  }

  else
  {

    (*(v67 + 8))(v102, v27);
  }

LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21C6A1900(uint64_t a1, uint64_t a2)
{
  sub_21C6CEC90();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21C6A2CA8();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21C6CED80();
    MEMORY[0x21CF0F390](0xD00000000000003FLL, 0x800000021C6D3110);
    v8 = sub_21C6CEEA0();
    MEMORY[0x21CF0F390](v8);

    MEMORY[0x21CF0F390](46, 0xE100000000000000);
    result = sub_21C6CEDA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C6A1A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C48, &qword_21C6D0C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4;
  if (*(a1 + 216))
  {
    sub_21C6CE080();
    v6 = sub_21C6CE070();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
    {
      return sub_21C68F7D4(v5, &qword_27CDE6C48, &qword_21C6D0C40);
    }
  }

  else
  {
    v8 = sub_21C6CE070();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  result = sub_21C68F7D4(v5, &qword_27CDE6C48, &qword_21C6D0C40);
  if (*(a1 + 160))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = a1;
    LOBYTE(v10[-1]) = 0;
    v10[1] = a1;
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE030();
  }

  else
  {
    *(a1 + 160) = 0;
  }

  return result;
}

uint64_t sub_21C6A1CA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21C6A1CEC()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
  sub_21C6CE040();
}

uint64_t sub_21C6A1D88()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState);
    sub_21C6CE040();

    v2 = *(v1 + 162);
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    sub_21C6CE120();
    sub_21C6CE020();
  }

  return result;
}

char *sub_21C6A1EC4()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = *(v0 + 13);

  sub_21C68F7D4((v0 + 120), &qword_27CDE6860, &qword_21C6CF9D0);
  v7 = *(v0 + 22);

  v8 = *(v0 + 24);

  v9 = *(v0 + 26);

  v10 = *(v0 + 27);

  v11 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationDistributionState___observationRegistrar;
  v12 = sub_21C6CE060();
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  return v0;
}

uint64_t sub_21C6A1F8C()
{
  sub_21C6A1EC4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ApplicationDistributionState()
{
  result = qword_27CDE6BE8;
  if (!qword_27CDE6BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6A2038()
{
  result = sub_21C6CE060();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21C6A2114()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21C6A218C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C6A2258(v11, 0, 0, 1, a1, a2);
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
    sub_21C6A2734(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21C6A2258(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21C6A2364(a5, a6);
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
    result = sub_21C6CED90();
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

uint64_t sub_21C6A2364(uint64_t a1, unint64_t a2)
{
  v4 = sub_21C6A23B0(a1, a2);
  sub_21C6A24E0(&unk_282E3EAE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21C6A23B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_21C6A25CC(v5, 0);
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

  result = sub_21C6CED90();
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
        v10 = sub_21C6CEC10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C6A25CC(v10, 0);
        result = sub_21C6CED70();
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

uint64_t sub_21C6A24E0(uint64_t result)
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

  result = sub_21C6A2640(result, v12, 1, v3);
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

void *sub_21C6A25CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C00, &qword_21C6D0A38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21C6A2640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C00, &qword_21C6D0A38);
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

uint64_t sub_21C6A2734(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21C6A27A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6860, &qword_21C6CF9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6A2844()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 104);
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_21C6A2894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6A2904()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_21C6A2944()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 88);
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_21C6A2984()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t (*sub_21C6A2A58())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_21C6A2CD0;
}

uint64_t (*sub_21C6A2AB8())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_21C6A2B10;
}

unint64_t sub_21C6A2B80()
{
  result = qword_27CDE6C28;
  if (!qword_27CDE6C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE6C28);
  }

  return result;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C6A2BEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C6A2C34()
{
  result = qword_27CDE6C40;
  if (!qword_27CDE6C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6C38, &qword_21C6D0C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6C40);
  }

  return result;
}

uint64_t sub_21C6A2CA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for ChildPaneSetting()
{
  result = qword_27CDE6C58;
  if (!qword_27CDE6C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A2DDC()
{
  sub_21C6CDF20();
  if (v0 <= 0x3F)
  {
    sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6A2ED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21C6A2F34()
{
  result = sub_21C6C9110(MEMORY[0x277D84F90]);
  qword_27CDE9D08 = result;
  return result;
}

uint64_t sub_21C6A2F5C()
{
  v1 = *(v0 + *(type metadata accessor for ChildPaneSetting() + 40));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6A3054()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = v0;
  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v13 = type metadata accessor for ChildPaneSetting();
  MEMORY[0x21CF0F390](*&v12[v13[6]], *&v12[v13[6] + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v14 = &v0[v13[5]];
  v15 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v15);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  if (v12[v13[7]])
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v12[v13[7]])
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x21CF0F390](v16, v17);

  return 0;
}