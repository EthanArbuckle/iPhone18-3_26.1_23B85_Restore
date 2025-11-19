uint64_t sub_220CEB314(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_220DBE960();
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
    result = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v17 = sub_220DBEAD0();
      v18 = OUTLINED_FUNCTION_5(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[8];
      }

      else
      {
        v11 = sub_220DBE740();
        v16 = a4[9];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEB494()
{
  v1 = (type metadata accessor for ChartAreaSeries() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[8];
  v7 = sub_220DBE560();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v8(v6 + *(v9 + 36), v7);
  v10 = *(v0 + v3 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220CEB5CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_220CEB660(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CEB6EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96038, &unk_220DC6000);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96030, &qword_220DC5FF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96028, &qword_220DC5FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96050, &qword_220DC6030);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96020, &qword_220DC5FE8);
  sub_220D8AC0C();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_5_27();
  sub_220DBF590();
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_5_27();
  return OUTLINED_FUNCTION_5_27();
}

uint64_t sub_220CEB868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220CEB848();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220CEB9CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_220DBEAD0();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    v12 = OUTLINED_FUNCTION_5(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      v16 = OUTLINED_FUNCTION_5(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_220DBE740();
        v19 = OUTLINED_FUNCTION_5(v18);
        if (*(v20 + 84) != a2)
        {
          v22 = *(a1 + a3[9]);
          if (v22 >= 2)
          {
            return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220CEBB60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_220DBEAD0();
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    v14 = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      v18 = OUTLINED_FUNCTION_5(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_220DBE740();
        result = OUTLINED_FUNCTION_5(v20);
        if (*(v22 + 84) != a3)
        {
          *(a1 + a4[9]) = a2 + 1;
          return result;
        }

        v11 = result;
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEBD3C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96298, &qword_220DC6F80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  OUTLINED_FUNCTION_6_6();
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  OUTLINED_FUNCTION_6_6();
  sub_220DBF8A0();
  sub_220DBFB20();
  sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
  swift_getWitnessTable();
  sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  OUTLINED_FUNCTION_0_22();
  sub_220CE161C(v3, &qword_27CF96298, &qword_220DC6F80);
  sub_220DC00C0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  return swift_getWitnessTable();
}

uint64_t sub_220CEBF48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220DBED90();
  *a1 = result;
  return result;
}

uint64_t sub_220CEBF9C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220CEBFE8()
{
  v2 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  OUTLINED_FUNCTION_1_36(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5);

  v9 = v0[7];
  v10 = sub_220DC0150();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 8))(v1 + v5 + v9);
  v12 = *(v1 + v5 + v0[8]);

  v13 = *(v1 + v5 + v0[9]);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_220CEC0DC()
{
  v2 = type metadata accessor for ChartPointMarkSeriesContent(0);
  OUTLINED_FUNCTION_1_36(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5);

  v9 = *(v0 + 28);
  v10 = sub_220DC0150();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 8))(v1 + v5 + v9);
  v12 = *(v1 + v5 + *(v0 + 36));

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_220CEC21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBE210();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v12 = OUTLINED_FUNCTION_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 40) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220CEC318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBE210();
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
    result = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEC4B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 247)
    {
      v11 = *(a1 + a3[5]);
      if (v11 >= 9)
      {
        return v11 - 8;
      }

      else
      {
        return 0;
      }
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    v14 = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v17 = sub_220DBE560();
      v18 = OUTLINED_FUNCTION_5(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[7];
      }

      else
      {
        v9 = sub_220DBE740();
        v16 = a3[8];
      }
    }

    v10 = a1 + v16;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220CEC600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  result = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 247)
    {
      *(a1 + a4[5]) = a2 + 8;
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    v14 = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = sub_220DBE560();
      v18 = OUTLINED_FUNCTION_5(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = sub_220DBE740();
        v16 = a4[8];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEC81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
  OUTLINED_FUNCTION_1_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220CEC878()
{
  OUTLINED_FUNCTION_0_25();
  v1 = v0[9];

  v2 = v0[12];

  v3 = v0[14];

  v4 = v0[16];

  v5 = v0[18];

  v6 = v0[19];

  v7 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_220CEC8E4()
{
  OUTLINED_FUNCTION_0_25();
  v1 = v0[9];

  v2 = v0[12];

  v3 = v0[14];

  v4 = v0[16];

  v5 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_220CECA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E0, &qword_220DC7DE0);
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E8, &qword_220DC7DE8);
  v12 = OUTLINED_FUNCTION_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220CECB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E0, &qword_220DC7DE0);
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E8, &qword_220DC7DE8);
    result = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CECCE0()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF960();
  *v0 = result & 1;
  return result;
}

uint64_t sub_220CECD0C()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF920();
  *v0 = v2;
  return result;
}

uint64_t sub_220CECD5C()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF970();
  *v0 = result;
  return result;
}

uint64_t sub_220CECD88()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF990();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_220CECDBC()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF940();
  *v0 = result;
  return result;
}

uint64_t sub_220CECE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96640, &qword_220DC7E98);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220CECE74()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF8F0();
  *v0 = result;
  return result;
}

uint64_t sub_220CECF34(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_21();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  OUTLINED_FUNCTION_5(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[6];
  }

  else
  {
    v9 = type metadata accessor for ChartLineStyle(0);
    OUTLINED_FUNCTION_5(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[8];
    }

    else
    {
      sub_220DBFA30();
      v8 = a3[11];
    }
  }

  v11 = OUTLINED_FUNCTION_23_14(v8);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_220CED034()
{
  OUTLINED_FUNCTION_17_15();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    OUTLINED_FUNCTION_5(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[6];
    }

    else
    {
      v10 = type metadata accessor for ChartLineStyle(0);
      OUTLINED_FUNCTION_5(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[8];
      }

      else
      {
        sub_220DBFA30();
        v9 = v5[11];
      }
    }

    v12 = OUTLINED_FUNCTION_23_14(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

uint64_t sub_220CED138(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_21();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  OUTLINED_FUNCTION_5(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[6];
  }

  else
  {
    v9 = type metadata accessor for ChartLineStyle(0);
    OUTLINED_FUNCTION_5(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[10];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
      OUTLINED_FUNCTION_5(v11);
      if (*(v12 + 84) == a2)
      {
        v8 = a3[12];
      }

      else
      {
        sub_220DBFA30();
        v8 = a3[15];
      }
    }
  }

  v13 = OUTLINED_FUNCTION_23_14(v8);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_220CED284()
{
  OUTLINED_FUNCTION_17_15();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    OUTLINED_FUNCTION_5(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[6];
    }

    else
    {
      v10 = type metadata accessor for ChartLineStyle(0);
      OUTLINED_FUNCTION_5(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[10];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
        OUTLINED_FUNCTION_5(v12);
        if (*(v13 + 84) == v6)
        {
          v9 = v5[12];
        }

        else
        {
          sub_220DBFA30();
          v9 = v5[15];
        }
      }
    }

    v14 = OUTLINED_FUNCTION_23_14(v9);

    __swift_storeEnumTagSinglePayload(v14, v15, v0, v16);
  }
}

uint64_t sub_220CED3FC()
{
  v1 = type metadata accessor for StyledLineMark(0);
  v2 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v5 = *(v3 + 80);
  v30 = *(v6 + 64);
  v32 = v0;
  v7 = (v0 + ((v2 + 16) & ~v2));
  v8 = *v7;

  v9 = &v7[v1[6]];
  v10 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v10);
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v12(&v9[*(v13 + 36)], v10);
  v14 = *&v7[v1[8] + 8];

  v15 = &v7[v1[10]];
  type metadata accessor for ChartLineStrokeStyle(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v12(v15, v10);
  }

  v16 = type metadata accessor for ChartLineStyle(0);
  sub_220D1ECD8(*&v15[v16[6]], *&v15[v16[6] + 8], *&v15[v16[6] + 16], v15[v16[6] + 24]);
  v17 = *&v15[v16[7]];

  v18 = *&v15[v16[8]];

  v19 = *&v7[v1[11] + 24];

  v20 = v1[12];
  if (!__swift_getEnumTagSinglePayload(&v7[v20], 1, v10))
  {
    v12(&v7[v20], v10);
  }

  v21 = v1[13];
  if (!__swift_getEnumTagSinglePayload(&v7[v21], 1, v10))
  {
    v12(&v7[v21], v10);
  }

  v22 = v2 | v5;
  v23 = (((v2 + 16) & ~v2) + v29 + v5) & ~v5;
  v24 = v1[15];
  v25 = sub_220DBFA30();
  OUTLINED_FUNCTION_6(v25);
  (*(v26 + 8))(&v7[v24]);
  v27 = *&v7[v1[16]];

  (*(v4 + 8))(v32 + v23, v31);

  return MEMORY[0x2821FE8E8](v32, v23 + v30, v22 | 7);
}

uint64_t sub_220CED714()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967C8, &unk_220DC8598);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96050, &qword_220DC6030);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967C0, &qword_220DC8590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967B8, &qword_220DC8588);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967B0, &qword_220DC8580);
  sub_220DB5B50();
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_11_21();
  sub_220DBF590();
  OUTLINED_FUNCTION_11_21();
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_220CED868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  v6 = sub_220DBE560();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  v12 = OUTLINED_FUNCTION_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 32);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 36) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220CED954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_0();
  v8 = sub_220DBE560();
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
    result = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 36) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEDABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 6)
    {
      return v8 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220CEDB70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  return result;
}

uint64_t sub_220CEDD10()
{
  if (sub_220DBE460())
  {
    v0 = *(type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey() + 20);

    JUMPOUT(0x223D96350);
  }

  return 0;
}

uint64_t sub_220CEDD70()
{
  sub_220DBE560();
  sub_220CF0168(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  v0 = *(type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey() + 20);
  sub_220DBE740();
  sub_220CF0168(&qword_27CF94FE8, MEMORY[0x277CC9A70]);
  return sub_220DC0560();
}

uint64_t sub_220CEDE48()
{
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220CF0168(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  v0 = *(type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey() + 20);
  sub_220DBE740();
  sub_220CF0168(&qword_27CF94FE8, MEMORY[0x277CC9A70]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t sub_220CEDF40(uint64_t a1, uint64_t a2)
{
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220CF0168(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  v3 = *(a2 + 20);
  sub_220DBE740();
  sub_220CF0168(&qword_27CF94FE8, MEMORY[0x277CC9A70]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t HumidityChartHeaderStringBuilder.__allocating_init(humidityTitleStringBuilder:)(__int128 *a1)
{
  v2 = swift_allocObject();
  HumidityChartHeaderStringBuilder.init(humidityTitleStringBuilder:)(a1);
  return v2;
}

uint64_t HumidityChartHeaderStringBuilder.init(humidityTitleStringBuilder:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F88, &unk_220DC17D0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 56) = sub_220DBF280();
  sub_220CD570C(a1, v1 + 16);
  return v1;
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

void HumidityChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v215 = a3;
  v225 = a2;
  v235 = a1;
  v230 = a4;
  v210 = sub_220DBECB0();
  v4 = OUTLINED_FUNCTION_0(v210);
  v209 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v9 - v8);
  v213 = type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey();
  v10 = OUTLINED_FUNCTION_6(v213);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  v223 = &v203 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v224 = &v203 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v21 = OUTLINED_FUNCTION_18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14(&v203 - v25);
  v26 = sub_220DBE260();
  v27 = OUTLINED_FUNCTION_18(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v228 = v31 - v30;
  v229 = sub_220DBE210();
  v32 = OUTLINED_FUNCTION_0(v229);
  v214 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14(&v203 - v37);
  v38 = sub_220DBE5E0();
  v39 = OUTLINED_FUNCTION_18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v231 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v45 = OUTLINED_FUNCTION_0(v44);
  v233 = v46;
  v234 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v232 = &v203 - v49;
  v222 = sub_220DC0300();
  v50 = OUTLINED_FUNCTION_0(v222);
  v221 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1();
  v56 = v55 - v54;
  v220 = sub_220DC0A40();
  v57 = OUTLINED_FUNCTION_0(v220);
  v219 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1();
  v63 = v62 - v61;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v64 = OUTLINED_FUNCTION_0(v218);
  v217 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v69 = &v203 - v68;
  v227 = sub_220DBEAD0();
  v70 = OUTLINED_FUNCTION_0(v227);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1();
  v77 = v76 - v75;
  v78 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v79 = OUTLINED_FUNCTION_6(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_1();
  v84 = v83 - v82;
  v85 = sub_220DBE830();
  v86 = OUTLINED_FUNCTION_0(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1();
  v93 = v92 - v91;
  sub_220CEFC54(v235, v84, type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind);
  if (!swift_getEnumCaseMultiPayload())
  {
    v216 = v88;
    v225 = v85;
    v213 = v72;
    v108 = *(v72 + 32);
    v223 = v84;
    v108(v77, v84, v227);
    sub_220DBEA90();
    sub_220DC02B0();
    v109 = v221;
    v110 = v222;
    (*(v221 + 104))(v56, *MEMORY[0x277D7B408], v222);
    sub_220DBF100();
    sub_220DBF0D0();
    sub_220CF0168(&qword_280FA6610, MEMORY[0x277D7B508]);
    v111 = v218;
    v112 = v220;
    v224 = sub_220DBE0B0();
    v235 = v113;

    (*(v109 + 8))(v56, v110);
    OUTLINED_FUNCTION_8_0(&v241);
    v114(v63, v112);
    OUTLINED_FUNCTION_8_0(&v240);
    v115(v69, v111);
    sub_220DBEAA0();
    v236 = v116;
    sub_220DBE570();
    sub_220CEFCB0();
    v117 = v232;
    sub_220DBE290();
    sub_220CEFD04();
    v118 = v234;
    sub_220DC0520();
    (*(v233 + 8))(v117, v118);
    v119 = v237;
    v120 = v238;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v234 = v77;
    OUTLINED_FUNCTION_11();
    v232 = v121;
    sub_220DBE240();
    OUTLINED_FUNCTION_17_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_220DC17C0;
    v123 = MEMORY[0x277D837D0];
    *(v122 + 56) = MEMORY[0x277D837D0];
    v124 = sub_220CEFDB0();
    *(v122 + 32) = v119;
    *(v122 + 40) = v120;
    *(v122 + 96) = v123;
    *(v122 + 104) = v124;
    v125 = v224;
    *(v122 + 64) = v124;
    *(v122 + 72) = v125;
    *(v122 + 80) = v235;

    v233 = sub_220DC05F0();
    v127 = v126;

    sub_220CEFE04();
    v128 = sub_220DC09F0();
    sub_220CEFE48(v128);
    if (v129)
    {
      v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
      v131 = sub_220DC06A0();

      v132 = v223;
      if (v131)
      {
        v226 = v130;
        v231 = v127;
        v237 = v119;
        v238 = v120;
        v133 = sub_220DC09F0();
        v134 = sub_220CEFE48(v133);
        if (!v135)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_23_0(v134, v135);
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_11();
        sub_220DC0B00();
        OUTLINED_FUNCTION_22_0();
        sub_220DBE250();
        v136 = v212;
        sub_220DBE220();
        v137 = sub_220DC09F0();
        sub_220CEFE48(v137);
        if (!v138)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_21();

        sub_220DBE250();
        v139 = v211;
        OUTLINED_FUNCTION_20();
        sub_220DBE220();
        v140 = v229;
        __swift_storeEnumTagSinglePayload(v139, 0, 1, v229);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_21();
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_220DC17A0;
        OUTLINED_FUNCTION_19_0(v141, MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_20();
        v142 = sub_220DC05F0();
        v144 = v143;

        OUTLINED_FUNCTION_8_0(&v239);
        v145(v234, v227);
        v146 = OUTLINED_FUNCTION_16();
        v147(v146, v136, v140);
        v148 = type metadata accessor for ConditionDetailChartHeaderStringModel();
        sub_220CEFF68(v139, v141 + v148[5]);
        OUTLINED_FUNCTION_7_0(v148[6]);
        v149 = (v141 + v148[7]);
        *v149 = v142;
        v149[1] = v144;
        OUTLINED_FUNCTION_7_0(v148[8]);
        OUTLINED_FUNCTION_7_0(v148[11]);
        *(v141 + v148[9]) = 0;
        v150 = (v141 + v148[10]);
        v151 = v231;
        *v150 = v233;
        v150[1] = v151;
        v152 = (v141 + v148[12]);
        v152[2] = 0u;
        v152[3] = 0u;
        *v152 = 0u;
        v152[1] = 0u;
        OUTLINED_FUNCTION_5_0();
        v154 = v223 + v226;
      }

      else
      {
        v167 = v230;
        sub_220CEF564(v119, v120, v215, v230);

        v168 = type metadata accessor for ConditionDetailChartHeaderStringModel();
        OUTLINED_FUNCTION_15(v168);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_17_2();
        v169 = swift_allocObject();
        *(v169 + 16) = xmmword_220DC17A0;
        OUTLINED_FUNCTION_19_0(v169, MEMORY[0x277D837D0]);
        sub_220DC05F0();

        OUTLINED_FUNCTION_8_0(&v239);
        v170(v234, v227);
        OUTLINED_FUNCTION_2_1();
        *v171 = v233;
        v171[1] = v127;
        v172 = v167 + *(v119 + 48);
        *v172 = 0xD000000000000011;
        *(v172 + 8) = 0x8000000220DC8DC0;
        *(v172 + 16) = 0u;
        *(v172 + 32) = 0u;
        *(v172 + 48) = 0xD000000000000015;
        *(v172 + 56) = 0x8000000220DC8DE0;
        OUTLINED_FUNCTION_5_0();
        v154 = v132 + v130;
      }

      v153(v154, v225);
      return;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v94 = v232;
  v96 = v233;
  v95 = v234;
  (*(v88 + 32))(v93, v84, v85);
  v97 = v224;
  sub_220CEF48C(v225, v224);
  v98 = sub_220DBF310();
  v99 = v93;
  if (__swift_getEnumTagSinglePayload(v97, 1, v98) == 1)
  {
    (*(v88 + 8))(v93, v85);
    sub_220CEF4FC(v97);
    if (qword_27CF94F50 != -1)
    {
      swift_once();
    }

    v100 = sub_220DBF410();
    __swift_project_value_buffer(v100, qword_27CF95F78);
    v101 = sub_220DBF3F0();
    v102 = sub_220DC0980();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_220CD1000, v101, v102, "Failed to create chart header for Humidity due to missing extrema values", v103, 2u);
      MEMORY[0x223D98FB0](v103, -1, -1);
    }

    sub_220DBE250();
    v104 = v230;
    sub_220DBE220();
    v105 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    __swift_storeEnumTagSinglePayload(v104 + v105[5], 1, 1, v229);
    OUTLINED_FUNCTION_7_0(v105[6]);
    *(v104 + v105[7]) = xmmword_220DC17B0;
    OUTLINED_FUNCTION_7_0(v105[8]);
    OUTLINED_FUNCTION_7_0(v105[11]);
    *(v104 + v105[9]) = 0;
    v106 = (v104 + v105[10]);
    *v106 = 0;
    v106[1] = 0xE000000000000000;
    v107 = v105[12];
    goto LABEL_27;
  }

  v216 = v88;
  v225 = v85;
  sub_220CEF4FC(v97);
  v155 = v223;
  sub_220DBE810();
  v156 = *(type metadata accessor for ConditionDetailChartHeaderInput(0) + 32);
  v157 = *(v213 + 20);
  v158 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v158);
  (*(v159 + 16))(v155 + v157, v235 + v156);
  v160 = v226;
  v161 = *(v226 + 56);

  sub_220DBF290();

  v204 = v99;
  if (v238)
  {
    v162 = v207;
    sub_220DBE7A0();
    sub_220DBECA0();
    v164 = v163;
    OUTLINED_FUNCTION_8_0(&v238);
    v165(v162, v210);
    v166 = *(v160 + 56);
    sub_220CEFC54(v155, v208, type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey);
    v237 = v164;
    LOBYTE(v238) = 0;

    sub_220DBF2A0();
  }

  else
  {
    v164 = v237;
  }

  v236 = v164;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v96 + 8))(v94, v95);
  v173 = v237;
  v174 = v238;
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v104 = 0xD000000000000022;
  OUTLINED_FUNCTION_11();
  sub_220DBE240();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_220DC17A0;
  *(v175 + 56) = MEMORY[0x277D837D0];
  *(v175 + 64) = sub_220CEFDB0();
  *(v175 + 32) = v173;
  *(v175 + 40) = v174;

  v176 = sub_220DC05F0();
  v235 = v177;

  v178 = sub_220CEFE04();
  v179 = sub_220DC09F0();
  sub_220CEFE48(v179);
  if (!v180)
  {
    goto LABEL_31;
  }

  v181 = sub_220DC06A0();

  if ((v181 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0();
    v198(v204, v225);
    v199 = v230;
    sub_220CEF564(v173, v174, v215, v230);

    v200 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    OUTLINED_FUNCTION_15(v200);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_17_2();
    sub_220CEFEB8(v223);
    OUTLINED_FUNCTION_2_1();
    v201 = v235;
    *v202 = v176;
    v202[1] = v201;
    v197 = (v199 + *(v173 + 48));
    goto LABEL_29;
  }

  v237 = v173;
  v238 = v174;
  v182 = sub_220DC09F0();
  v183 = sub_220CEFE48(v182);
  if (!v184)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_23_0(v183, v184);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_11();
  sub_220DC0B00();
  OUTLINED_FUNCTION_22_0();
  sub_220DBE250();
  v185 = v206;
  sub_220DBE220();
  v186 = sub_220DC09F0();
  sub_220CEFE48(v186);
  if (v187)
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_5_0();
    v188(v204, v225);

    sub_220DBE250();
    v189 = v205;
    OUTLINED_FUNCTION_20();
    sub_220DBE220();
    v190 = v229;
    __swift_storeEnumTagSinglePayload(v189, 0, 1, v229);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_21();
    sub_220CEFEB8(v223);
    v191 = OUTLINED_FUNCTION_16();
    v192(v191, v185, v190);
    v193 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    sub_220CEFF68(v189, v193[5] - 0x2FFFFFFFFFFFFFDELL);
    OUTLINED_FUNCTION_7_0(v193[6]);
    v194 = (v193[7] - 0x2FFFFFFFFFFFFFDELL);
    *v194 = v173;
    v194[1] = v178;
    OUTLINED_FUNCTION_7_0(v193[8]);
    OUTLINED_FUNCTION_7_0(v193[11]);
    *(v193[9] - 0x2FFFFFFFFFFFFFDELL) = 0;
    v195 = (v193[10] - 0x2FFFFFFFFFFFFFDELL);
    v196 = v235;
    *v195 = v176;
    v195[1] = v196;
    v107 = v193[12];
LABEL_27:
    v197 = (v104 + v107);
LABEL_29:
    v197[2] = 0u;
    v197[3] = 0u;
    *v197 = 0u;
    v197[1] = 0u;
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey()
{
  result = qword_27CF94FD0;
  if (!qword_27CF94FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CEF48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CEF4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CEF564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a2;
  v25[1] = a4;
  v6 = sub_220DBFC60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBFC80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[5];
  v17 = v4[6];
  v25[0] = __swift_project_boxed_opaque_existential_1(v4 + 2, v16);
  (*(v12 + 104))(v15, *MEMORY[0x277CE0A80], v11);
  sub_220DBFC30();
  sub_220DBFBE0();
  (*(v12 + 8))(v15, v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A10], v6);
  v18 = sub_220DBFC70();

  (*(v7 + 8))(v10, v6);
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v21 = (*(v20 + 56))(v19, v20);
  v22 = a3[3];
  v23 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  (*(v23 + 64))(v22, v23);
  (*(v17 + 8))(v26, v27, v18, v21, v16, v17);
}

uint64_t HumidityChartHeaderStringBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t HumidityChartHeaderStringBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_220CEF8D8(uint64_t a1, id *a2)
{
  result = sub_220DC0600();
  *a2 = 0;
  return result;
}

uint64_t sub_220CEF954(uint64_t a1, id *a2)
{
  v3 = sub_220DC0610();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_220CEF9D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220CF0308();
  *a1 = result;
  return result;
}

uint64_t sub_220CEFA04()
{
  v0 = sub_220DC0620();
  v1 = MEMORY[0x223D982E0](v0);

  return v1;
}

uint64_t sub_220CEFA44()
{
  sub_220DC0620();
  sub_220DC0660();
}

uint64_t sub_220CEFAA0()
{
  sub_220DC0620();
  sub_220DC0CE0();
  sub_220DC0660();
  v0 = sub_220DC0D20();

  return v0;
}

uint64_t sub_220CEFB14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_220D05CA0();
}

uint64_t sub_220CEFB20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_220DC05E0();

  *a2 = v5;
  return result;
}

uint64_t sub_220CEFB68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220CEFB94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220CEFB98(uint64_t a1)
{
  v2 = sub_220CF0168(&qword_27CF95110, type metadata accessor for Key);
  v3 = sub_220CF0168(&qword_27CF95018, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_220CEFC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

unint64_t sub_220CEFCB0()
{
  result = qword_27CF94FA8;
  if (!qword_27CF94FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF94FA8);
  }

  return result;
}

unint64_t sub_220CEFD04()
{
  result = qword_27CF94FB0;
  if (!qword_27CF94FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94F98, &qword_220DC17E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF94FB0);
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

unint64_t sub_220CEFDB0()
{
  result = qword_280FA6658;
  if (!qword_280FA6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6658);
  }

  return result;
}

unint64_t sub_220CEFE04()
{
  result = qword_27CF94FC0;
  if (!qword_27CF94FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF94FC0);
  }

  return result;
}

uint64_t sub_220CEFE48(void *a1)
{
  v2 = [a1 percentSymbol];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_220DC0620();

  return v3;
}

uint64_t sub_220CEFEB8(uint64_t a1)
{
  v2 = type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220CEFF14()
{
  result = qword_280FA6660;
  if (!qword_280FA6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6660);
  }

  return result;
}

uint64_t sub_220CEFF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
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

uint64_t sub_220CF009C()
{
  result = sub_220DBE560();
  if (v1 <= 0x3F)
  {
    result = sub_220DBE740();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220CF0168(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_220CF01BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CF01DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_220CF0308()
{
  sub_220DC0620();
  v0 = sub_220DC05E0();

  return v0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_220CF0374(uint64_t a1, unint64_t *a2)
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

double static StrokeStyle.rounded(lineWidth:dash:)@<D0>(uint64_t a1@<X8>)
{

  sub_220DBF720();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t AttributedText.init(_:accessibilityAttributedText:onInteraction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(type metadata accessor for AttributedText() + 24);
  v11 = sub_220DBE210();
  __swift_storeEnumTagSinglePayload(a5 + v10, 1, 1, v11);
  *a5 = a1;
  result = sub_220CF0500(a2, a5 + v10);
  a5[1] = a3;
  a5[2] = a4;
  return result;
}

uint64_t type metadata accessor for AttributedText()
{
  result = qword_27CF95050;
  if (!qword_27CF95050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CF0500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AttributedText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_220DBE210();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_220CF0758(&v21 - v8);
  v10 = *v1;
  sub_220CF08E0();
  v11 = *(v3 + 16);
  v11(v7, v9, v2);
  v12 = v10;
  v22 = v12;
  v13 = sub_220DC0A60();
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  v24 = v12;
  v25 = v14;
  v26 = v15;
  v27 = v13;
  v11(v7, v9, v2);

  v16 = sub_220DBFD30();
  v18 = v17;
  LOBYTE(v11) = v19;
  sub_220CF0924();
  sub_220DBFDD0();
  sub_220CF0978(v16, v18, v11 & 1);

  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_220CF0758@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220DBE260();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for AttributedText();
  sub_220CF16F4(v1 + *(v9 + 24), v8);
  v10 = sub_220DBE210();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_220CF1764(v8);
  v11 = [*v1 string];
  sub_220DC0620();

  sub_220DBE250();
  return sub_220DBE220();
}

unint64_t sub_220CF08E0()
{
  result = qword_27CF95038;
  if (!qword_27CF95038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95038);
  }

  return result;
}

unint64_t sub_220CF0924()
{
  result = qword_27CF95040;
  if (!qword_27CF95040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95040);
  }

  return result;
}

uint64_t sub_220CF0978(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_220CF09D0()
{
  sub_220CF08E0();
  if (v0 <= 0x3F)
  {
    sub_220CF0A6C();
    if (v1 <= 0x3F)
    {
      sub_220CF0AB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220CF0A6C()
{
  result = qword_27CF95060;
  if (!qword_27CF95060)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CF95060);
  }

  return result;
}

void sub_220CF0AB4()
{
  if (!qword_27CF95068)
  {
    sub_220DBE210();
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF95068);
    }
  }
}

id sub_220CF0B74(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);

  return v11;
}

id sub_220CF0C58(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_220CF0D10(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper11Coordinator_onInteraction);
  v4 = *(v2 + OBJC_IVAR____TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper11Coordinator_onInteraction + 8);
  return v3(a2) & 1;
}

id sub_220CF0ED0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_220CF0F40()
{
  result = qword_27CF950E8;
  if (!qword_27CF950E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF950F0, &qword_220DC1B88);
    sub_220CF0924();
    sub_220CF15E8(&qword_27CF950F8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF950E8);
  }

  return result;
}

uint64_t sub_220CF0FFC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_220CF103C(uint64_t result, int a2, int a3)
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

id sub_220CF1090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextViewWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper11Coordinator_onInteraction];
  *v7 = a2;
  *(v7 + 1) = a3;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_220CF1104()
{
  type metadata accessor for TextViewWrapper.TextView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = v2;
  [v8 setTextContainerInset_];
  [v8 setEditable_];
  [v8 setScrollEnabled_];
  v9 = [v8 textContainer];
  [v9 setLineFragmentPadding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95108, &unk_220DC1CB0);
  sub_220DBFB70();
  [v8 setDelegate_];

  [v8 setIsAccessibilityElement_];
  type metadata accessor for Key(0);
  sub_220CF15E8(&qword_27CF95110, type metadata accessor for Key);
  v10 = sub_220DC0540();
  sub_220CF1630(v10, v8);

  return v8;
}

void sub_220CF1300(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  [a1 setAttributedText_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95108, &unk_220DC1CB0);
  sub_220DBFB70();
  [a1 setDelegate_];

  if (a6)
  {
    v9 = a6;

    v8 = v9;
  }

  [a1 setAccessibilityAttributedValue_];
}

id sub_220CF13B8(uint64_t a1, int a2, id a3)
{
  result = [a3 sizeThatFits_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

id sub_220CF13F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_220CF1104();
}

id sub_220CF1418@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  result = sub_220CF1090(*v1, v1[1], v1[2]);
  *a1 = result;
  return result;
}

id sub_220CF1480(uint64_t a1, int a2, id a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  return sub_220CF13B8(a1, a2, a3);
}

uint64_t sub_220CF14A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CF1594();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_220CF1508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CF1594();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_220CF156C()
{
  sub_220CF1594();
  sub_220DBFAE0();
  __break(1u);
}

unint64_t sub_220CF1594()
{
  result = qword_27CF95100;
  if (!qword_27CF95100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95100);
  }

  return result;
}

uint64_t sub_220CF15E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220CF1630(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_220CF15E8(&qword_27CF95110, type metadata accessor for Key);
  v3 = sub_220DC0530();

  [a2 setLinkTextAttributes_];
}

uint64_t sub_220CF16F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CF1764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CF180C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_220CF184C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220CF18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v138 = a6;
  v139 = a7;
  v135 = a5;
  v136 = a2;
  v131 = a3;
  v132 = a4;
  v142 = a9;
  v143 = a1;
  v141 = sub_220DC0260();
  v12 = OUTLINED_FUNCTION_0(v141);
  v120 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v117 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v134 = &v116 - v22;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v23 = OUTLINED_FUNCTION_0(v140);
  v137 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9();
  v133 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_57();
  v130 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F0, &qword_220DC1D98);
  v31 = OUTLINED_FUNCTION_18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v129 = &v116 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v36 = OUTLINED_FUNCTION_18(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_57();
  v144 = v41;
  v42 = *a8;
  v128 = a8[1];
  v43 = v128;
  v44 = a8[3];
  v127 = a8[2];
  v45 = v127;
  v126 = v44;
  v46 = a8[5];
  v125 = a8[4];
  v47 = v125;
  v124 = v46;
  v48 = v9[3];
  v49 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v48);
  v145 = v42;
  v146 = v43;
  v147 = v45;
  v148 = v44;
  v149 = v47;
  v150 = v46;
  v122 = (*(v49 + 8))(v143, v131, v132, &v145, v48, v49);
  v123 = v50;
  v51 = v9[10];
  v52 = sub_220DBECC0();
  v53 = v129;
  __swift_storeEnumTagSinglePayload(v129, 1, 1, v52);
  v54 = v136;
  v55 = v42;
  sub_220DC0310();
  sub_220CE1ABC(v53, &qword_27CF951F0, &qword_220DC1D98);
  v56 = v10[8];
  v57 = v10[9];
  v139 = __swift_project_boxed_opaque_existential_1(v10 + 5, v56);
  v58 = v130;
  sub_220DBE780();
  v59 = v133;
  sub_220DBE7B0();
  v60 = v134;
  sub_220DBE7D0();
  v145 = v55;
  v146 = v128;
  v147 = v127;
  v148 = v126;
  v61 = v123;
  OUTLINED_FUNCTION_31();
  v149 = v63;
  v150 = v62;
  v64 = v54;
  v65 = v58;
  v66 = (*(v57 + 8))(v143, v64, v58, v59, v60, &v145, v56, v57);
  v68 = v67;
  sub_220CE1ABC(v60, &qword_27CF951E0, &unk_220DC1D80);
  v69 = *(v137 + 8);
  v70 = v140;
  v69(v59, v140);
  v69(v65, v70);
  if (v61)
  {
    v71 = v121;
    sub_220CF6B14(v144, v121, &qword_27CF951F8, &qword_220DC1DA0);
    v72 = v141;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v141);
    v143 = v68;
    if (EnumTagSinglePayload == 1)
    {
      sub_220CE1ABC(v71, &qword_27CF951F8, &qword_220DC1DA0);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v74 = OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_0(v74);
      v76 = v75;
      v78 = *(v77 + 72);
      OUTLINED_FUNCTION_42();
      v79 = swift_allocObject();
      OUTLINED_FUNCTION_47(v79, xmmword_220DC17C0);
      v80 = *(v76 + 104);
      (v80)(v57, *MEMORY[0x277D7B3D8], v74);
      v81 = (v57 + v78);
      v82 = v143;
      *v81 = v66;
      v81[1] = v82;
      v80();
      sub_220DC0220();
    }

    else
    {
      v140 = v66;
      v87 = v120;
      v88 = v117;
      (*(v120 + 32))(v117, v71, v72);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      v89 = sub_220DBE240();
      v138 = v90;
      v139 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v91 = sub_220DC0250();
      OUTLINED_FUNCTION_0(v91);
      v93 = v92;
      v95 = *(v94 + 72);
      OUTLINED_FUNCTION_42();
      v96 = swift_allocObject();
      OUTLINED_FUNCTION_47(v96, xmmword_220DC1CC0);
      v97 = *(v93 + 104);
      (v97)(v57, *MEMORY[0x277D7B3D8], v91);
      (*(v87 + 16))(v57 + v95, v88, v72);
      (v97)(v57 + v95, *MEMORY[0x277D7B3C0], v91);
      v98 = (v57 + 2 * v95);
      v99 = v143;
      *v98 = v140;
      v98[1] = v99;
      v97();
      sub_220DC0220();
      (*(v87 + 8))(v88, v72);
    }

    v84 = v144;
  }

  else
  {
    v83 = v119;
    v84 = v144;
    v85 = v118;
    sub_220CF6B14(v144, v118, &qword_27CF951F8, &qword_220DC1DA0);
    v86 = v141;
    if (__swift_getEnumTagSinglePayload(v85, 1, v141) == 1)
    {
      sub_220CE1ABC(v85, &qword_27CF951F8, &qword_220DC1DA0);
      sub_220DC0240();
    }

    else
    {
      v140 = v66;
      v143 = v68;
      v100 = v120;
      v101 = v83;
      (*(v120 + 32))(v83, v85, v86);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      v102 = sub_220DBE240();
      v138 = v103;
      v139 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v104 = OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_0(v104);
      v106 = v105;
      v108 = *(v107 + 72);
      OUTLINED_FUNCTION_42();
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_220DC17C0;
      v110 = v109 + v57;
      (*(v100 + 16))(v110, v101, v86);
      v111 = *(v106 + 104);
      (v111)(v110, *MEMORY[0x277D7B3C0], v104);
      v112 = (v110 + v108);
      v113 = v143;
      *v112 = v140;
      v112[1] = v113;
      v114 = *MEMORY[0x277D7B3D8];
      v111();
      sub_220DC0220();
      (*(v100 + 8))(v101, v86);
    }
  }

  return sub_220CE1ABC(v84, &qword_27CF951F8, &qword_220DC1DA0);
}

uint64_t sub_220CF22D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v424 = a5;
  v406 = a4;
  v402 = a3;
  v435 = a1;
  v411 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v431 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  v430 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v429 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v417 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v428 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v432 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_57();
  v436 = v34;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v35 = OUTLINED_FUNCTION_0(v422);
  v433 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v421 = &v386 - v39;
  v419 = sub_220DBE380();
  v40 = OUTLINED_FUNCTION_0(v419);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v47 = v46 - v45;
  v48 = sub_220DBE560();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_0();
  v416 = v55;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v386 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v386 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v386 - v65;
  v413 = sub_220DBE6E0();
  v67 = OUTLINED_FUNCTION_0(v413);
  v412 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_1();
  v73 = v72 - v71;
  sub_220DBE600();
  v394 = sub_220DBE520();
  sub_220DBE5F0();
  sub_220DBE390();
  v418 = v51;
  v74 = *(v51 + 8);
  v427 = v48;
  v425 = v51 + 8;
  v434 = v74;
  v74(v64, v48);
  v426 = v73;
  v420 = v66;
  sub_220DBE330();
  v389 = sub_220DBE4F0();
  v407 = v75;
  sub_220D2B7CC();
  v435 = a2;
  v414 = v61;
  v76 = v424;
  v388 = sub_220DBE3C0();
  v77 = *(v42 + 8);
  v391 = v47;
  v392 = v42 + 8;
  v390 = v77;
  v77(v47, v419);
  sub_220DBF100();
  v78 = sub_220DBF0D0();
  if (v76)
  {
    v79 = sub_220DBF130();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v82 = v76;
    v83 = sub_220DBF120();

    v84 = MEMORY[0x277D7AAF8];
    v78 = v83;
  }

  else
  {
    v84 = MEMORY[0x277D7AA40];
  }

  v85 = v421;
  v86 = v402;
  sub_220DBE780();
  v424 = v78;
  v399 = v84;
  v408 = sub_220CF686C(v85);
  v409 = v87;
  v88 = *(v433 + 8);
  v433 += 8;
  v88(v85, v422);
  v89 = v436;
  sub_220DBE7C0();
  v90 = v400;
  sub_220CF6B14(v89, v400, &qword_27CF951E0, &unk_220DC1D80);
  v91 = v427;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, 1, v427);
  v93 = v425;
  v94 = v415;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CE1ABC(v90, &qword_27CF951E0, &unk_220DC1D80);
    v95 = 1;
    v96 = v432;
  }

  else
  {
    v97 = v432;
    sub_220DBE400();
    v96 = v97;
    v434(v90, v91);
    v95 = 0;
  }

  OUTLINED_FUNCTION_62(v96, v95);
  sub_220CF6B14(v96, v94, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v94);
  v98 = v428;
  if (v134)
  {
    sub_220CE1ABC(v94, &qword_27CF951E0, &unk_220DC1D80);
    v99 = 1;
  }

  else
  {
    sub_220DBE3A0();
    v96 = v432;
    v434(v94, v91);
    v99 = 0;
  }

  v100 = v424;
  v101 = v417;
  OUTLINED_FUNCTION_62(v98, v99);
  sub_220CF6B14(v96, v101, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v101);
  v102 = v430;
  if (v134)
  {
    sub_220CE1ABC(v101, &qword_27CF951E0, &unk_220DC1D80);
    v400 = 0;
    v415 = 0;
    v105 = v434;
  }

  else
  {
    v400 = sub_220DBE4F0();
    v415 = v103;
    v104 = v101;
    v105 = v434;
    v434(v104, v91);
  }

  v106 = v401;
  sub_220CF6B14(v98, v401, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v106);
  if (v134)
  {
    v109 = v93;
    sub_220CE1ABC(v106, &qword_27CF951E0, &unk_220DC1D80);
    v387 = 0;
    v417 = 0;
  }

  else
  {
    v387 = sub_220DBE4F0();
    v417 = v107;
    v108 = OUTLINED_FUNCTION_37_0();
    v109 = v93;
    v105(v108);
  }

  v110 = v410;
  v111 = v421;
  sub_220DBE7B0();
  v410 = sub_220CF686C(v111);
  v423 = v112;
  v88(v111, v422);
  v113 = v429;
  v114 = v86;
  sub_220DBE7D0();
  sub_220CF6B14(v113, v110, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v110);
  if (v134)
  {
    sub_220CE1ABC(v110, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_38();
    v115 = v109;
    v117 = v105;
    v118 = v115;
  }

  else
  {
    v114 = v110;
    sub_220DBE400();
    v116 = v109;
    v117 = v105;
    v118 = v116;
    v117(v110, v91);
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_62(v102, v119);
  sub_220CF6B14(v102, v114, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v114);
  if (v134)
  {
    sub_220CE1ABC(v114, &qword_27CF951E0, &unk_220DC1D80);
    v121 = 1;
  }

  else
  {
    sub_220DBE3A0();
    v120 = OUTLINED_FUNCTION_37_0();
    (v117)(v120);
    v121 = 0;
  }

  v122 = v403;
  OUTLINED_FUNCTION_62(v110, v121);
  sub_220CF6B14(v102, v122, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v122);
  if (v134)
  {
    sub_220CE1ABC(v122, &qword_27CF951E0, &unk_220DC1D80);
    v422 = 0;
    v124 = 0;
  }

  else
  {
    v422 = sub_220DBE4F0();
    v124 = v123;
    v125 = OUTLINED_FUNCTION_37_0();
    (v117)(v125);
  }

  v126 = v404;
  sub_220CF6B14(v110, v404, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v126);
  if (v134)
  {
    sub_220CE1ABC(v126, &qword_27CF951E0, &unk_220DC1D80);
    v421 = 0;
    v433 = 0;
  }

  else
  {
    v421 = sub_220DBE4F0();
    v433 = v127;
    v128 = OUTLINED_FUNCTION_37_0();
    (v117)(v128);
  }

  v129 = v405;
  sub_220CF6B14(v88, v405, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v129);
  if (v134)
  {
    sub_220CE1ABC(v129, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    v130 = v86;
    v131 = v129;
    v132 = *(v418 + 32);
    v132(v100, v131, v91);
    v133 = v395;
    sub_220CF6B14(v113, v395, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_13_0(v133);
    if (v134)
    {
      v117(v100, v91);
      sub_220CE1ABC(v133, &qword_27CF951E0, &unk_220DC1D80);
      v86 = v130;
      v88 = v436;
    }

    else
    {
      v404 = v124;
      v135 = v393;
      v132(v393, v133, v91);
      v86 = v130;
      if (v130)
      {
        v136 = v436;
        if (v417)
        {
          v124 = v404;
          if (v404 && v433)
          {
            v137 = v391;
            sub_220D2B7CC();
            v138 = sub_220DBE3C0();
            v139 = v419;
            v100 = v390;
            v390(v137, v419);
            sub_220D2B7CC();
            v418 = sub_220DBE3C0();
            (v100)(v137, v139);
            v140 = sub_220DBE490();
            v141 = sub_220DBE490();
            v142 = sub_220DBE460();
            v143 = sub_220DBE460();
            v144 = v143;
            if (v140 & 1) != 0 && (v141)
            {

              if (v142 & v406)
              {

                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_51();
LABEL_44:
                OUTLINED_FUNCTION_6_0();
                v435 = sub_220DBE240();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                v145 = OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_4_2(v145);
                v147 = v146;
                v149 = *(v148 + 72);
                v150 = (*(v146 + 80) + 32) & ~*(v146 + 80);
                v151 = OUTLINED_FUNCTION_40();
                *(v151 + 16) = xmmword_220DC1CD0;
                v152 = (v151 + v150);
                OUTLINED_FUNCTION_7_1();
                *v152 = v154;
                v152[1] = v153;
                v155 = *MEMORY[0x277D7B3C8];
                v156 = *(v147 + 104);
                OUTLINED_FUNCTION_28_0();
                v156();
                OUTLINED_FUNCTION_49();
                *(v152 + v149) = v157;
                v158 = *MEMORY[0x277D7B3B8];
                OUTLINED_FUNCTION_39_0();
                v156();
                OUTLINED_FUNCTION_9_0((v152 + 2 * v149));
                OUTLINED_FUNCTION_28_0();
                v156();
                *(v152 + 3 * v149) = v418;
                OUTLINED_FUNCTION_39_0();
                v156();
                OUTLINED_FUNCTION_16_0((v152 + 4 * v149));
                v100 = *MEMORY[0x277D7B3D0];
                OUTLINED_FUNCTION_59();
                v156();
                OUTLINED_FUNCTION_10_0((v152 + 5 * v149));
                OUTLINED_FUNCTION_59();
                v156();
LABEL_202:
                OUTLINED_FUNCTION_31();
LABEL_474:
                sub_220DC0220();
                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_54();
                OUTLINED_FUNCTION_36_0();
                (v100)();
                goto LABEL_282;
              }

              if (v144)
              {
                if (v406)
                {
                  v199 = v138;

                  if (qword_280FA6600 != -1)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_51();
LABEL_150:
                  OUTLINED_FUNCTION_6_0();
                  sub_220DBE240();
                  OUTLINED_FUNCTION_14_1();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                  v200 = OUTLINED_FUNCTION_41();
                  OUTLINED_FUNCTION_4_2(v200);
                  v202 = v201;
                  v204 = *(v203 + 72);
                  v205 = OUTLINED_FUNCTION_26_1();
                  OUTLINED_FUNCTION_2_2(v205, xmmword_220DC1CD0);
                  v206 = *MEMORY[0x277D7B3C8];
                  v207 = *(v202 + 104);
                  v208 = OUTLINED_FUNCTION_15_0();
                  (v207)(v208);
                  *(v100 + v204) = v199;
                  v209 = *MEMORY[0x277D7B3B8];
                  OUTLINED_FUNCTION_28_0();
                  v207();
                  v210 = OUTLINED_FUNCTION_8_2((v100 + 2 * v204));
                  (v207)(v210);
                  *(v100 + 3 * v204) = v388;
                  OUTLINED_FUNCTION_28_0();
                  v207();
                  OUTLINED_FUNCTION_18_0((v100 + 4 * v204));
                  v211 = *MEMORY[0x277D7B3D0];
                  OUTLINED_FUNCTION_22_1();
                  v207();
                  v212 = OUTLINED_FUNCTION_16_0((v100 + 5 * v204));
                  v213 = v211;
LABEL_473:
                  (v207)(v212, v213, v140);
                  OUTLINED_FUNCTION_31();
                  goto LABEL_474;
                }

                if ((v142 & 1) == 0)
                {

                  OUTLINED_FUNCTION_12_1();
                  switch(v307)
                  {
                    case 1:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      goto LABEL_430;
                    case 2:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      goto LABEL_430;
                    case 3:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      OUTLINED_FUNCTION_1_1();
                      OUTLINED_FUNCTION_60();
                      goto LABEL_150;
                    case 4:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      goto LABEL_430;
                    case 5:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      goto LABEL_430;
                    case 6:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      goto LABEL_430;
                    default:
                      v199 = v138;
                      OUTLINED_FUNCTION_19();
                      if (!v134)
                      {
                        OUTLINED_FUNCTION_10();
                      }

LABEL_430:
                      OUTLINED_FUNCTION_1_1();
                      break;
                  }

                  goto LABEL_150;
                }

LABEL_299:

                OUTLINED_FUNCTION_12_1();
                switch(v308)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_378;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_378;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    OUTLINED_FUNCTION_1_1();
                    OUTLINED_FUNCTION_60();
                    goto LABEL_44;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_378;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_378;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_378;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

LABEL_378:
                    OUTLINED_FUNCTION_1_1();
                    break;
                }

                goto LABEL_44;
              }

              if (v406)
              {
                OUTLINED_FUNCTION_34_0();

                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_3_3();
                OUTLINED_FUNCTION_33();
              }

              else
              {
                if (v142)
                {
                  goto LABEL_299;
                }

                OUTLINED_FUNCTION_34_0();

                OUTLINED_FUNCTION_12_1();
                switch(v311)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                }

                OUTLINED_FUNCTION_1_1();
              }

              OUTLINED_FUNCTION_6_0();
              v435 = sub_220DBE240();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
              v245 = OUTLINED_FUNCTION_41();
              OUTLINED_FUNCTION_4_2(v245);
              v247 = v246;
              v249 = *(v248 + 72);
              v250 = (*(v246 + 80) + 32) & ~*(v246 + 80);
              v251 = OUTLINED_FUNCTION_40();
              *(v251 + 16) = xmmword_220DC1CD0;
              v252 = (v251 + v250);
              OUTLINED_FUNCTION_7_1();
              *v252 = v254;
              v252[1] = v253;
              v255 = *MEMORY[0x277D7B3C8];
              v256 = *(v247 + 104);
              OUTLINED_FUNCTION_28_0();
              v256();
              *(v252 + v249) = v138;
              v257 = *MEMORY[0x277D7B3B8];
              OUTLINED_FUNCTION_39_0();
              v256();
              OUTLINED_FUNCTION_9_0((v252 + 2 * v249));
              OUTLINED_FUNCTION_28_0();
              v256();
              *(v252 + 3 * v249) = v418;
              OUTLINED_FUNCTION_39_0();
              v256();
              OUTLINED_FUNCTION_18_0((v252 + 4 * v249));
              v100 = *MEMORY[0x277D7B3D0];
              OUTLINED_FUNCTION_59();
              v256();
              OUTLINED_FUNCTION_10_0((v252 + 5 * v249));
              OUTLINED_FUNCTION_59();
              v256();
              goto LABEL_202;
            }

            if (v142)
            {

              OUTLINED_FUNCTION_30_1();
              if (v195)
              {
                if (qword_280FA6600 != -1)
                {
LABEL_321:
                  OUTLINED_FUNCTION_10();
                }

LABEL_331:
                OUTLINED_FUNCTION_1_1();
              }

              else
              {
                OUTLINED_FUNCTION_12_1();
                switch(v243)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_331;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      goto LABEL_321;
                    }

                    goto LABEL_331;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_331;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_331;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    break;
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_58();
              }

              OUTLINED_FUNCTION_6_0();
              sub_220DBE240();
              OUTLINED_FUNCTION_14_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
              v312 = OUTLINED_FUNCTION_41();
              OUTLINED_FUNCTION_4_2(v312);
              v314 = v313;
              v316 = *(v315 + 72);
              OUTLINED_FUNCTION_21_0();
              v317 = OUTLINED_FUNCTION_40();
              OUTLINED_FUNCTION_2_2(v317, xmmword_220DC1CD0);
              v318 = *MEMORY[0x277D7B3C8];
              v319 = *(v314 + 104);
              v320 = OUTLINED_FUNCTION_15_0();
              v319(v320);
              OUTLINED_FUNCTION_49();
              *(v100 + v316) = v321;
              (v319)(v100 + v316, *MEMORY[0x277D7B3B8], v140);
              v322 = OUTLINED_FUNCTION_8_2((v100 + 2 * v316));
              v319(v322);
              v323 = OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_10_0(v323);
              v324 = *MEMORY[0x277D7B3D0];
              OUTLINED_FUNCTION_22_1();
              (v319)();
              v325 = (v100 + 4 * v316);
              v326 = v433;
              *v325 = v421;
              v325[1] = v326;
              OUTLINED_FUNCTION_22_1();
              (v319)();
              v327 = OUTLINED_FUNCTION_46(5 * v316);
            }

            else
            {
              if ((v140 & 1) == 0)
              {
                if (v143)
                {

                  OUTLINED_FUNCTION_30_1();
                  if (v244)
                  {
                    if (qword_280FA6600 != -1)
                    {
LABEL_395:
                      OUTLINED_FUNCTION_10();
                    }

LABEL_420:
                    OUTLINED_FUNCTION_1_1();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_1();
                    switch(v309)
                    {
                      case 1:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      case 2:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        goto LABEL_420;
                      case 3:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          goto LABEL_395;
                        }

                        goto LABEL_420;
                      case 4:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        goto LABEL_420;
                      case 5:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      case 6:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        goto LABEL_420;
                      default:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                    }

                    OUTLINED_FUNCTION_1_1();
                    OUTLINED_FUNCTION_58();
                  }

                  OUTLINED_FUNCTION_6_0();
                  sub_220DBE240();
                  OUTLINED_FUNCTION_14_1();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                  v344 = OUTLINED_FUNCTION_41();
                  OUTLINED_FUNCTION_4_2(v344);
                  v346 = v345;
                  v348 = *(v347 + 72);
                  v349 = OUTLINED_FUNCTION_26_1();
                  OUTLINED_FUNCTION_2_2(v349, xmmword_220DC1CD0);
                  v350 = *MEMORY[0x277D7B3C8];
                  v207 = *(v346 + 104);
                  v351 = OUTLINED_FUNCTION_15_0();
                  (v207)(v351);
                  OUTLINED_FUNCTION_35();
                  v352 = *MEMORY[0x277D7B3D0];
                  OUTLINED_FUNCTION_28_0();
                  v207();
                  v353 = OUTLINED_FUNCTION_20_0();
                  (v207)(v353);
                  v354 = OUTLINED_FUNCTION_8_2((v100 + 3 * v348));
                  (v207)(v354);
                  OUTLINED_FUNCTION_49();
                  *v355 = v356;
                  v357 = *MEMORY[0x277D7B3B8];
                  v207();
                  v212 = OUTLINED_FUNCTION_46(5 * v348);
                  v359 = *(v358 - 256);
                }

                else
                {
                  OUTLINED_FUNCTION_34_0();

                  if (v141)
                  {

                    OUTLINED_FUNCTION_30_1();
                    if (v306)
                    {
                      if (qword_280FA6600 != -1)
                      {
                        OUTLINED_FUNCTION_10();
                      }

                      OUTLINED_FUNCTION_1_1();
                      OUTLINED_FUNCTION_55();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_12_1();
                      switch(v329)
                      {
                        case 1:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

                          goto LABEL_467;
                        case 2:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

                          goto LABEL_467;
                        case 3:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

                          OUTLINED_FUNCTION_1_1();
                          OUTLINED_FUNCTION_58();
                          break;
                        case 4:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

                          goto LABEL_467;
                        case 5:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

                          goto LABEL_467;
                        case 6:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

                          goto LABEL_467;
                        default:
                          OUTLINED_FUNCTION_19();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_10();
                          }

LABEL_467:
                          OUTLINED_FUNCTION_1_1();
                          break;
                      }
                    }

                    OUTLINED_FUNCTION_6_0();
                    v100 = sub_220DBE240();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                    v360 = OUTLINED_FUNCTION_41();
                    OUTLINED_FUNCTION_4_2(v360);
                    v362 = v361;
                    v364 = *(v363 + 72);
                    v365 = (*(v361 + 80) + 32) & ~*(v361 + 80);
                    v366 = OUTLINED_FUNCTION_40();
                    *(v366 + 16) = xmmword_220DC1CD0;
                    v367 = (v366 + v365);
                    OUTLINED_FUNCTION_7_1();
                    *v367 = v369;
                    v367[1] = v368;
                    v370 = *MEMORY[0x277D7B3C8];
                    v371 = *(v362 + 104);
                    OUTLINED_FUNCTION_28_0();
                    v371();
                    OUTLINED_FUNCTION_18_0((v366 + v365 + v364));
                    v372 = *MEMORY[0x277D7B3D0];
                    OUTLINED_FUNCTION_39_0();
                    v371();
                    v373 = (v366 + v365 + 2 * v364);
                    v374 = v417;
                    *v373 = v387;
                    v373[1] = v374;
                    OUTLINED_FUNCTION_39_0();
                    v371();
                    OUTLINED_FUNCTION_9_0((v366 + v365 + 3 * v364));
                    OUTLINED_FUNCTION_28_0();
                    v371();
                    *(v367 + 4 * v364) = v418;
                    v375 = *MEMORY[0x277D7B3B8];
                    v371();
                    OUTLINED_FUNCTION_10_0((v366 + v365 + 5 * v364));
                    OUTLINED_FUNCTION_39_0();
                    v371();
                    OUTLINED_FUNCTION_31();
                    goto LABEL_474;
                  }

                  OUTLINED_FUNCTION_30_1();
                  if (v310)
                  {
                    if (qword_280FA6600 != -1)
                    {
LABEL_451:
                      OUTLINED_FUNCTION_10();
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_1();
                    switch(v330)
                    {
                      case 1:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      case 2:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      case 3:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          goto LABEL_451;
                        }

                        break;
                      case 4:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      case 5:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      case 6:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                      default:
                        OUTLINED_FUNCTION_19();
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_10();
                        }

                        break;
                    }
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_6_0();
                  sub_220DBE240();
                  OUTLINED_FUNCTION_14_1();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                  v376 = OUTLINED_FUNCTION_41();
                  OUTLINED_FUNCTION_4_2(v376);
                  v378 = v377;
                  v380 = *(v379 + 72);
                  v381 = OUTLINED_FUNCTION_26_1();
                  OUTLINED_FUNCTION_2_2(v381, xmmword_220DC1CD0);
                  v382 = *MEMORY[0x277D7B3C8];
                  v207 = *(v378 + 104);
                  v383 = OUTLINED_FUNCTION_15_0();
                  (v207)(v383);
                  OUTLINED_FUNCTION_35();
                  v352 = *MEMORY[0x277D7B3D0];
                  OUTLINED_FUNCTION_28_0();
                  v207();
                  v384 = OUTLINED_FUNCTION_20_0();
                  (v207)(v384);
                  v385 = OUTLINED_FUNCTION_8_2((v100 + 3 * v380));
                  (v207)(v385);
                  OUTLINED_FUNCTION_10_0((v100 + 4 * v380));
                  OUTLINED_FUNCTION_28_0();
                  v207();
                  v212 = (v100 + 5 * v380);
                  *v212 = v421;
                  v359 = v433;
                }

                v212[1] = v359;
                v213 = v352;
                goto LABEL_473;
              }

              OUTLINED_FUNCTION_34_0();

              OUTLINED_FUNCTION_30_1();
              v416 = v138;
              if (v198)
              {
                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_55();
              }

              else
              {
                OUTLINED_FUNCTION_12_1();
                switch(v305)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_370;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_370;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    OUTLINED_FUNCTION_1_1();
                    OUTLINED_FUNCTION_58();
                    break;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_370;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_370;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

                    goto LABEL_370;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v134)
                    {
                      OUTLINED_FUNCTION_10();
                    }

LABEL_370:
                    OUTLINED_FUNCTION_1_1();
                    break;
                }
              }

              OUTLINED_FUNCTION_6_0();
              sub_220DBE240();
              OUTLINED_FUNCTION_14_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
              v331 = OUTLINED_FUNCTION_41();
              OUTLINED_FUNCTION_4_2(v331);
              v333 = v332;
              v335 = *(v334 + 72);
              OUTLINED_FUNCTION_21_0();
              v336 = OUTLINED_FUNCTION_40();
              OUTLINED_FUNCTION_2_2(v336, xmmword_220DC1CD0);
              v337 = *MEMORY[0x277D7B3C8];
              v319 = *(v333 + 104);
              v338 = OUTLINED_FUNCTION_15_0();
              v319(v338);
              *(v100 + v335) = v416;
              (v319)(v100 + v335, *MEMORY[0x277D7B3B8], v140);
              v339 = OUTLINED_FUNCTION_8_2((v100 + 2 * v335));
              v319(v339);
              v340 = OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_10_0(v340);
              v341 = *MEMORY[0x277D7B3D0];
              OUTLINED_FUNCTION_22_1();
              (v319)();
              v342 = (v100 + 4 * v335);
              v343 = v433;
              *v342 = v421;
              v342[1] = v343;
              OUTLINED_FUNCTION_22_1();
              (v319)();
              v327 = (v100 + 5 * v335);
              *v327 = v400;
              v328 = &v437;
            }

            v327[1] = *(v328 - 32);
            OUTLINED_FUNCTION_22_1();
            (v319)();
            OUTLINED_FUNCTION_24_0();
            sub_220DC0220();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_36_0();
            (v100)();
LABEL_282:
            (v100)();
            goto LABEL_283;
          }

          v159 = OUTLINED_FUNCTION_54();
          v117(v159, v91);
          v117(v100, v91);
        }

        else
        {
          v160 = OUTLINED_FUNCTION_54();
          v117(v160, v91);
          v117(v100, v91);
          v124 = v404;
        }

        v88 = v136;
      }

      else
      {
        v117(v135, v91);
        v117(v100, v91);
        v88 = v436;
        v124 = v404;
      }
    }
  }

  v161 = v398;
  sub_220CF6B14(v88, v398, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v161);
  if (v134)
  {
    v100 = v118;

    sub_220CE1ABC(v161, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v418 + 32))(v416, v161, v91);
    if (v86 && v417)
    {

      sub_220D2B7CC();
      v140 = v435;
      v162 = sub_220DBE3C0();
      OUTLINED_FUNCTION_48();
      v163();
      if (sub_220DBE460())
      {

        OUTLINED_FUNCTION_30_1();
        if (v164)
        {
          v165 = v423;
          if (qword_280FA6600 != -1)
          {
            OUTLINED_FUNCTION_10();
          }

          OUTLINED_FUNCTION_3_3();
          OUTLINED_FUNCTION_33();
        }

        else
        {
          OUTLINED_FUNCTION_12_1();
          switch(v180)
          {
            case 1:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_165;
            case 2:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_51();
              break;
            case 3:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_168;
            case 4:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_168;
            case 5:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_165;
            case 6:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

LABEL_168:
              OUTLINED_FUNCTION_1_1();
              break;
            default:
              v165 = v423;
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

LABEL_165:
              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_52_0();
              break;
          }
        }

        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        OUTLINED_FUNCTION_14_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        v214 = OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_4_2(v214);
        v216 = v215;
        v218 = *(v217 + 72);
        OUTLINED_FUNCTION_21_0();
        v219 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_2_2(v219, xmmword_220DC1CE0);
        v220 = *MEMORY[0x277D7B3C8];
        v221 = *(v216 + 104);
        v222 = OUTLINED_FUNCTION_15_0();
        v221(v222);
        OUTLINED_FUNCTION_49();
        *(v100 + v218) = v223;
        (v221)(v100 + v218, *MEMORY[0x277D7B3B8], v140);
        v224 = (v100 + 2 * v218);
        *v224 = v410;
        v224[1] = v165;
        OUTLINED_FUNCTION_22_1();
        (v221)();
        v225 = OUTLINED_FUNCTION_45();
        v226 = OUTLINED_FUNCTION_16_0(v225);
        (v221)(v226, *MEMORY[0x277D7B3D0], v140);
      }

      else
      {
        OUTLINED_FUNCTION_34_0();

        if (sub_220DBE490())
        {

          OUTLINED_FUNCTION_30_1();
          if (v173)
          {
            if (qword_280FA6600 != -1)
            {
LABEL_234:
              OUTLINED_FUNCTION_10();
            }

LABEL_235:
            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_32();
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
            switch(v193)
            {
              case 1:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_235;
              case 2:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_235;
              case 3:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_52_0();
                break;
              case 4:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_235;
              case 5:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_235;
              case 6:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  goto LABEL_234;
                }

                goto LABEL_235;
              default:
                OUTLINED_FUNCTION_29();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_235;
            }
          }

          OUTLINED_FUNCTION_6_0();
          sub_220DBE240();
          v140 = v258;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
          v259 = OUTLINED_FUNCTION_61();
          OUTLINED_FUNCTION_0(v259);
          v261 = *(v260 + 72);
          v100 = OUTLINED_FUNCTION_44();
          *(v100 + 16) = xmmword_220DC1CE0;
          v262 = (v100 + v124);
          OUTLINED_FUNCTION_7_1();
          *v262 = v264;
          v262[1] = v263;
          v265 = *MEMORY[0x277D7B3C8];
          v266 = OUTLINED_FUNCTION_53();
          (v88)(v266);
          *(v262 + v261) = v162;
          (v88)(v262 + v261, *MEMORY[0x277D7B3B8], v259);
          v267 = OUTLINED_FUNCTION_9_0((v262 + 2 * v261));
          (v88)(v267, v265, v259);
          v268 = OUTLINED_FUNCTION_18_0((v262 + 3 * v261));
          (v88)(v268, *MEMORY[0x277D7B3D0], v259);
          OUTLINED_FUNCTION_31();
          goto LABEL_281;
        }

        OUTLINED_FUNCTION_30_1();
        if (v181)
        {
          if (qword_280FA6600 != -1)
          {
LABEL_238:
            OUTLINED_FUNCTION_10();
          }

LABEL_239:
          OUTLINED_FUNCTION_1_1();
        }

        else
        {
          OUTLINED_FUNCTION_12_1();
          switch(v194)
          {
            case 1:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_232;
            case 2:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_55();
              break;
            case 3:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_239;
            case 4:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_239;
            case 5:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

              goto LABEL_232;
            case 6:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                goto LABEL_238;
              }

              goto LABEL_239;
            default:
              OUTLINED_FUNCTION_19();
              if (!v134)
              {
                OUTLINED_FUNCTION_10();
              }

LABEL_232:
              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_60();
              break;
          }
        }

        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        OUTLINED_FUNCTION_14_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        v269 = OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_4_2(v269);
        v271 = v270;
        v273 = *(v272 + 72);
        v100 = (*(v270 + 80) + 32) & ~*(v270 + 80);
        v274 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_2_2(v274, xmmword_220DC1CE0);
        v275 = *MEMORY[0x277D7B3C8];
        v276 = *(v271 + 104);
        v277 = OUTLINED_FUNCTION_15_0();
        (v276)(v277);
        OUTLINED_FUNCTION_35();
        v278 = *MEMORY[0x277D7B3D0];
        OUTLINED_FUNCTION_28_0();
        v276();
        v279 = OUTLINED_FUNCTION_20_0();
        (v276)(v279);
        v280 = OUTLINED_FUNCTION_8_2((v100 + 3 * v273));
        (v276)(v280);
      }

      OUTLINED_FUNCTION_24_0();
LABEL_281:
      sub_220DC0220();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_36_0();
      goto LABEL_282;
    }

    v166 = OUTLINED_FUNCTION_37_0();
    v100 = v118;
    (v117)(v166);
  }

  v167 = v397;
  sub_220CF6B14(v113, v397, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v167);
  v140 = v433;
  if (v134)
  {
    OUTLINED_FUNCTION_34_0();

    sub_220CE1ABC(v167, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v418 + 32))(v396, v167, v91);
    if (v124)
    {
      if (v140)
      {
        sub_220D2B7CC();
        v168 = sub_220DBE3C0();
        OUTLINED_FUNCTION_48();
        v169();
        if (sub_220DBE460())
        {

          OUTLINED_FUNCTION_30_1();
          if (v170)
          {
            v171 = v423;
            if (qword_280FA6600 != -1)
            {
              OUTLINED_FUNCTION_10();
            }

            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_33();
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
            switch(v190)
            {
              case 1:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_184;
              case 2:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_51();
                break;
              case 3:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_187;
              case 4:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_187;
              case 5:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_184;
              case 6:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

LABEL_187:
                OUTLINED_FUNCTION_1_1();
                break;
              default:
                v171 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

LABEL_184:
                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_52_0();
                break;
            }
          }

          OUTLINED_FUNCTION_6_0();
          sub_220DBE240();
          OUTLINED_FUNCTION_14_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
          v227 = OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_4_2(v227);
          v229 = v228;
          v231 = *(v230 + 72);
          OUTLINED_FUNCTION_21_0();
          v232 = OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_2_2(v232, xmmword_220DC1CE0);
          v233 = *MEMORY[0x277D7B3C8];
          v234 = *(v229 + 104);
          v235 = OUTLINED_FUNCTION_15_0();
          (v234)(v235);
          v236 = (v100 + v231);
          *v236 = v410;
          v236[1] = v171;
          OUTLINED_FUNCTION_22_1();
          v234();
          OUTLINED_FUNCTION_49();
          *v237 = v238;
          v239 = *MEMORY[0x277D7B3B8];
          v234();
          v240 = OUTLINED_FUNCTION_45();
          v241 = OUTLINED_FUNCTION_16_0(v240);
          v242 = *MEMORY[0x277D7B3D0];
        }

        else
        {
          OUTLINED_FUNCTION_34_0();

          v178 = sub_220DBE490();
          v404 = v124;
          if (v178)
          {

            OUTLINED_FUNCTION_30_1();
            if (v179)
            {
              if (qword_280FA6600 != -1)
              {
LABEL_273:
                OUTLINED_FUNCTION_10();
              }

LABEL_274:
              OUTLINED_FUNCTION_3_3();
              OUTLINED_FUNCTION_32();
            }

            else
            {
              OUTLINED_FUNCTION_12_1();
              switch(v196)
              {
                case 1:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  goto LABEL_274;
                case 2:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  goto LABEL_274;
                case 3:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_52_0();
                  break;
                case 4:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  goto LABEL_274;
                case 5:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  goto LABEL_274;
                case 6:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    goto LABEL_273;
                  }

                  goto LABEL_274;
                default:
                  OUTLINED_FUNCTION_29();
                  if (!v134)
                  {
                    OUTLINED_FUNCTION_10();
                  }

                  goto LABEL_274;
              }
            }

            OUTLINED_FUNCTION_6_0();
            sub_220DBE240();
            v140 = v281;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
            v282 = OUTLINED_FUNCTION_61();
            OUTLINED_FUNCTION_0(v282);
            v284 = *(v283 + 72);
            v100 = OUTLINED_FUNCTION_44();
            *(v100 + 16) = xmmword_220DC1CE0;
            v285 = (v100 + v124);
            OUTLINED_FUNCTION_7_1();
            *v285 = v287;
            v285[1] = v286;
            v288 = *MEMORY[0x277D7B3C8];
            v289 = OUTLINED_FUNCTION_53();
            (v88)(v289);
            v290 = OUTLINED_FUNCTION_9_0((v285 + v284));
            (v88)(v290, v288, v282);
            *(v285 + 2 * v284) = v168;
            v291 = *MEMORY[0x277D7B3B8];
            (v88)();
            v292 = OUTLINED_FUNCTION_10_0((v285 + 3 * v284));
            (v88)(v292, *MEMORY[0x277D7B3D0], v282);
            OUTLINED_FUNCTION_31();
            goto LABEL_281;
          }

          OUTLINED_FUNCTION_30_1();
          if (v191)
          {
            v192 = v423;
            if (qword_280FA6600 != -1)
            {
LABEL_277:
              OUTLINED_FUNCTION_10();
            }

LABEL_278:
            OUTLINED_FUNCTION_1_1();
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
            switch(v197)
            {
              case 1:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_271;
              case 2:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_55();
                break;
              case 3:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_278;
              case 4:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_278;
              case 5:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

                goto LABEL_271;
              case 6:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  goto LABEL_277;
                }

                goto LABEL_278;
              default:
                v192 = v423;
                OUTLINED_FUNCTION_19();
                if (!v134)
                {
                  OUTLINED_FUNCTION_10();
                }

LABEL_271:
                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_60();
                break;
            }
          }

          OUTLINED_FUNCTION_6_0();
          sub_220DBE240();
          OUTLINED_FUNCTION_14_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
          v293 = OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_4_2(v293);
          v295 = v294;
          v297 = *(v296 + 72);
          OUTLINED_FUNCTION_21_0();
          v298 = OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_2_2(v298, xmmword_220DC1CE0);
          v299 = *MEMORY[0x277D7B3C8];
          v234 = *(v295 + 104);
          v300 = OUTLINED_FUNCTION_15_0();
          (v234)(v300);
          v301 = (v100 + v297);
          *v301 = v410;
          v301[1] = v192;
          OUTLINED_FUNCTION_22_1();
          v234();
          OUTLINED_FUNCTION_10_0((v100 + 2 * v297));
          v302 = *MEMORY[0x277D7B3D0];
          OUTLINED_FUNCTION_22_1();
          v234();
          v241 = OUTLINED_FUNCTION_45();
          v303 = v433;
          *v241 = v421;
          v241[1] = v303;
          v242 = v302;
        }

        (v234)(v241, v242, v140);
        OUTLINED_FUNCTION_24_0();
        goto LABEL_281;
      }

      v174 = OUTLINED_FUNCTION_37_0();
      (v117)(v174);

      OUTLINED_FUNCTION_34_0();
    }

    else
    {
      v172 = OUTLINED_FUNCTION_37_0();
      (v117)(v172);
      OUTLINED_FUNCTION_34_0();
    }
  }

  OUTLINED_FUNCTION_30_1();
  if (v175)
  {
    v176 = v423;
    if (qword_280FA6600 != -1)
    {
LABEL_102:
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    switch(v177)
    {
      case 1:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          OUTLINED_FUNCTION_10();
        }

        break;
      case 2:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          OUTLINED_FUNCTION_10();
        }

        break;
      case 3:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          goto LABEL_102;
        }

        break;
      case 4:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          OUTLINED_FUNCTION_10();
        }

        break;
      case 5:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          OUTLINED_FUNCTION_10();
        }

        break;
      case 6:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          OUTLINED_FUNCTION_10();
        }

        break;
      default:
        v176 = v423;
        OUTLINED_FUNCTION_19();
        if (!v134)
        {
          OUTLINED_FUNCTION_10();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  OUTLINED_FUNCTION_14_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v182 = sub_220DC0250();
  OUTLINED_FUNCTION_0(v182);
  v184 = v183;
  v186 = *(v185 + 72);
  OUTLINED_FUNCTION_21_0();
  v187 = swift_allocObject();
  OUTLINED_FUNCTION_2_2(v187, xmmword_220DC17C0);
  v188 = *(v184 + 104);
  (v188)(v100, *MEMORY[0x277D7B3C8], v182);
  v189 = (v100 + v186);
  *v189 = v410;
  v189[1] = v176;
  v188();
  OUTLINED_FUNCTION_24_0();
  sub_220DC0220();
  swift_unknownObjectRelease();
  v140 = v427;
  v100 = v434;
LABEL_283:
  OUTLINED_FUNCTION_50(v431);
  OUTLINED_FUNCTION_50(v430);
  OUTLINED_FUNCTION_50(v429);
  OUTLINED_FUNCTION_50(v428);
  OUTLINED_FUNCTION_50(v432);
  OUTLINED_FUNCTION_50(v436);
  (v100)(v414, v140);
  (v100)(v420, v140);
  return (*(v412 + 8))(v426, v413);
}

uint64_t sub_220CF6774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_220DBE5E0();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  sub_220DBE580();
  sub_220CF22D8(a1, a2, a3, a4, a5, a6);
  return (*(v15 + 8))(v20, v12);
}

uint64_t sub_220CF686C(uint64_t a1)
{
  v15[1] = a1;
  v1 = sub_220DC0300();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_220DC0A40();
  v6 = *(v15[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15[0]);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DC02B0();
  swift_getObjectType();
  v10 = sub_220DBF110();
  v11 = [v10 symbol];

  sub_220DC0620();
  (*(v2 + 104))(v5, *MEMORY[0x277D7B408], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220CF6ABC();
  v12 = v15[0];
  v13 = sub_220DBE090();

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
  return v13;
}

unint64_t sub_220CF6ABC()
{
  result = qword_280FA6610;
  if (!qword_280FA6610)
  {
    sub_220DC0A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6610);
  }

  return result;
}

uint64_t sub_220CF6B14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void OUTLINED_FUNCTION_36_0()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 184);
  v3 = *(v0 - 112);
}

void OUTLINED_FUNCTION_38()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);
  v4 = *(v0 - 96);
  v5 = *(v0 - 376);
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_44()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  *(v1 + a1) = *(v2 - 488);
  return result;
}

__n128 *OUTLINED_FUNCTION_47(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v5 = (result->n128_u64 + v2);
  *v5 = *(v4 - 320);
  v5[1] = v3;
  return result;
}

void OUTLINED_FUNCTION_48()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 464);
  v3 = *(v0 - 480);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return sub_220DC0250();
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t PressureTrend.symbolName.getter()
{
  v1 = sub_220DBEC50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277CE33E0])
  {
    return 0x70752E776F727261;
  }

  if (v6 == *MEMORY[0x277CE33F0])
  {
    return 0x6F642E776F727261;
  }

  if (v6 == *MEMORY[0x277CE33E8])
  {
    return 0x6C61757165;
  }

  result = sub_220DC0C90();
  __break(1u);
  return result;
}

uint64_t sub_220CF6E8C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v92 = a3;
  v5 = sub_220DBEAD0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v89 = v7;
  v90 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v85 = v11 - v10;
  v86 = sub_220DBF410();
  v12 = OUTLINED_FUNCTION_0(v86);
  v84 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v87 = v17 - v16;
  v96 = sub_220DBEBA0();
  v18 = OUTLINED_FUNCTION_0(v96);
  v98 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v97 = v23 - v22;
  v24 = sub_220DC0300();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = sub_220DC0A40();
  v94 = OUTLINED_FUNCTION_0(v33);
  v95 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v41 = OUTLINED_FUNCTION_0(v40);
  v93 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v46 = &v84 - v45;
  v47 = *a4;
  sub_220DBE9B0();
  sub_220DC02B0();
  v48 = sub_220DBF130();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = v47;
  sub_220DBF120();
  v52 = [v51 symbol];
  sub_220DC0620();

  (*(v27 + 104))(v32, *MEMORY[0x277D7B408], v24);
  sub_220CF82D4(&qword_280FA6610, MEMORY[0x277D7B508]);
  v53 = v94;
  v88 = sub_220DBE090();
  v91 = v54;
  v55 = v96;

  (*(v27 + 8))(v32, v24);
  v56 = v39;
  v57 = v98;
  (*(v95 + 8))(v56, v53);
  v58 = v92;
  v59 = v46;
  v60 = v97;
  (*(v93 + 8))(v59, v40);
  sub_220DBEAC0();
  v61 = sub_220DBE990();
  sub_220CF754C(v60, v61 & 1);
  v63 = v62;
  v66 = *(v57 + 8);
  v64 = v57 + 8;
  v65 = v66;
  v66(v60, v55);
  if (v63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_220DC17A0;
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 64) = sub_220CEFDB0();
    v68 = v91;
    *(v67 + 32) = v88;
    *(v67 + 40) = v68;
    v69 = sub_220DC05F0();
  }

  else
  {

    v70 = v87;
    sub_220DBF3C0();
    v71 = v85;
    (*(v89 + 16))(v85, v58, v90);
    v72 = sub_220DBF3F0();
    v73 = sub_220DC0980();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v98 = v64;
      v75 = v74;
      v76 = swift_slowAlloc();
      v99 = v76;
      *v75 = 136446210;
      sub_220DBEAC0();
      sub_220CF82D4(&qword_27CF95200, MEMORY[0x277CE3328]);
      v77 = sub_220DC0C70();
      v78 = v55;
      v79 = v71;
      v81 = v80;
      v65(v60, v78);
      (*(v89 + 8))(v79, v90);
      v82 = sub_220D3F210(v77, v81, &v99);

      *(v75 + 4) = v82;
      _os_log_impl(&dword_220CD1000, v72, v73, "Unhandled case:%{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x223D98FB0](v76, -1, -1);
      MEMORY[0x223D98FB0](v75, -1, -1);
    }

    else
    {

      (*(v89 + 8))(v71, v90);
    }

    (*(v84 + 8))(v70, v86);
    return 0;
  }

  return v69;
}

uint64_t sub_220CF754C(uint64_t a1, char a2)
{
  v4 = sub_220DBEBA0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a1, v4);
  v13 = (*(v7 + 88))(v12, v4);
  if (v13 == *MEMORY[0x277CE32F8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3220])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3228])
  {
    if (qword_280FA6600 == -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_1_2();
LABEL_10:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
    }

LABEL_131:
    OUTLINED_FUNCTION_10();
    goto LABEL_9;
  }

  if (v13 == *MEMORY[0x277CE32D8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32B0])
  {
    if (a2)
    {
      OUTLINED_FUNCTION_29();
      if (!v15)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_29();
      if (!v15)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    goto LABEL_88;
  }

  if (v13 == *MEMORY[0x277CE32E0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32F0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3300])
  {
LABEL_29:
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32B8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

  if (v13 == *MEMORY[0x277CE3270])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3240])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32E8])
  {
    goto LABEL_41;
  }

  if (v13 == *MEMORY[0x277CE3290])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

  if (v13 == *MEMORY[0x277CE3298])
  {
    if (qword_280FA6600 == -1)
    {
LABEL_50:
      OUTLINED_FUNCTION_2_3();
      goto LABEL_10;
    }

LABEL_94:
    OUTLINED_FUNCTION_10();
    goto LABEL_50;
  }

  if (v13 == *MEMORY[0x277CE3308])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3310])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3288])
  {
LABEL_41:
    if (qword_280FA6600 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

  if (v13 == *MEMORY[0x277CE3318])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3278])
  {
LABEL_66:
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3230])
  {
    if (a2)
    {
      OUTLINED_FUNCTION_29();
      if (!v15)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_29();
      if (!v15)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    goto LABEL_88;
  }

  if (v13 == *MEMORY[0x277CE3248])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3250])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32A0])
  {
    goto LABEL_87;
  }

  if (v13 == *MEMORY[0x277CE3280])
  {
    goto LABEL_66;
  }

  if (v13 == *MEMORY[0x277CE32C0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_88;
    }

    goto LABEL_130;
  }

  if (v13 == *MEMORY[0x277CE32C8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32A8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_88;
    }

    goto LABEL_130;
  }

  if (v13 == *MEMORY[0x277CE3258])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3238])
  {
    goto LABEL_29;
  }

  if (v13 == *MEMORY[0x277CE3218])
  {
LABEL_87:
    if (qword_280FA6600 == -1)
    {
LABEL_88:
      OUTLINED_FUNCTION_5_1();
      goto LABEL_10;
    }

LABEL_130:
    OUTLINED_FUNCTION_10();
    goto LABEL_88;
  }

  if (v13 == *MEMORY[0x277CE3260])
  {
    goto LABEL_66;
  }

  if (v13 == *MEMORY[0x277CE3268])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE32D0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v13 == *MEMORY[0x277CE3320])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v16 = sub_220DBF410();
  __swift_project_value_buffer(v16, qword_27CF95F48);
  v17 = sub_220DBF3F0();
  v18 = sub_220DC0980();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_220CD1000, v17, v18, "unknown case in ConditionTemperatureStringBuilder.description", v19, 2u);
    MEMORY[0x223D98FB0](v19, -1, -1);
  }

  (*(v7 + 8))(v12, v4);
  return 0;
}

uint64_t sub_220CF82D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PrecipitationTotalStringAmount.Context.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t sub_220CF83AC()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

void static PrecipitationTotalStringAmount.Format.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v7 = OUTLINED_FUNCTION_0(v6);
  v68 = v8;
  v69 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v65 = (v11 - v12);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v66 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v67 = v16;
  OUTLINED_FUNCTION_23();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v64 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = OUTLINED_FUNCTION_11_1();
  v22 = type metadata accessor for PrecipitationTotalStringAmount.Format(v21);
  v23 = OUTLINED_FUNCTION_6(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - v31;
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0) - 8) + 64);
  OUTLINED_FUNCTION_34();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v64 - v36;
  v38 = &v64 + *(v35 + 56) - v36;
  sub_220CE1028(v5, &v64 - v36);
  sub_220CE1028(v3, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220CE1028(v37, v1);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
      v41 = *(v1 + v40);
      OUTLINED_FUNCTION_23_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v38[v40];
        v44 = v68;
        v43 = v69;
        (*(v68 + 32))(v20, v38, v69);
        sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
        sub_220DBE020();
        v45 = *(v44 + 8);
        v45(v20, v43);
        v45(v1, v43);
LABEL_16:
        sub_220CF8964(v37);
        goto LABEL_17;
      }

      (*(v68 + 8))(v1, v69);
      goto LABEL_12;
    }

    sub_220CE1028(v37, v28);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    OUTLINED_FUNCTION_23_1();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v48 = v67;
      v47 = v68;
      v49 = *(v68 + 32);
      v50 = v69;
      v49(v67, v38, v69);
      v49(v66, (v28 + v46), v50);
      v49(v65, &v38[v46], v50);
      sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
      v51 = sub_220DBE020();
      v52 = *(v47 + 8);
      v52(v28, v50);
      if ((v51 & 1) == 0)
      {
        v61 = OUTLINED_FUNCTION_23_1();
        (v52)(v61);
        v62 = OUTLINED_FUNCTION_32_0();
        (v52)(v62);
        v63 = OUTLINED_FUNCTION_38_0();
        (v52)(v63);
        goto LABEL_16;
      }

      sub_220DBE020();
      v53 = OUTLINED_FUNCTION_23_1();
      (v52)(v53);
      v54 = OUTLINED_FUNCTION_32_0();
      (v52)(v54);
      v55 = v48;
      goto LABEL_14;
    }

    v56 = *(v68 + 8);
    v57 = v28 + v46;
    v58 = v69;
    v56(v57, v69);
    v56(v28, v58);
  }

  else
  {
    sub_220CE1028(v37, v32);
    OUTLINED_FUNCTION_23_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      v59 = v68;
      v50 = v69;
      (*(v68 + 32))(v0, v38, v69);
      sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
      sub_220DBE020();
      v52 = *(v59 + 8);
      v60 = OUTLINED_FUNCTION_38_0();
      (v52)(v60);
      v55 = v32;
LABEL_14:
      v52(v55, v50);
      sub_220CF8964(v37);
      goto LABEL_17;
    }

    (*(v68 + 8))(v32, v69);
  }

LABEL_12:
  sub_220CDA548(v37, &qword_27CF95210, &unk_220DC35F0);
LABEL_17:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220CF8964(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationTotalStringAmount.format.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();

  return sub_220CE1028(v1 + v3, a1);
}

void PrecipitationTotalStringAmount.init(context:amount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = *v25;
  v41 = *(v31 + 16);
  OUTLINED_FUNCTION_26();
  v41();
  if (v40)
  {
    if (v40 == 1)
    {
      OUTLINED_FUNCTION_26();
      v41();
      OUTLINED_FUNCTION_5_2();
      sub_220CDEE30(v39, v36, &v27[v42]);
    }

    else
    {
      OUTLINED_FUNCTION_5_2();
      sub_220CF8B70();
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    sub_220CDB1D4();
  }

  (*(v31 + 8))(v23, v28);
  *v27 = v40;
  OUTLINED_FUNCTION_24();
}

void sub_220CF8B70()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_1();
  sub_220DBF100();
  sub_220DBF0D0();
  v15 = sub_220DBF0B0();

  OUTLINED_FUNCTION_14_2();
  sub_220DBE130();
  sub_220DBE0E0();
  sub_220DC0430();
  OUTLINED_FUNCTION_14_2();
  sub_220DBE130();
  sub_220DBE050();
  if (v16 == 0.0)
  {

    v17 = *(v9 + 8);
    v17(v3, v6);
    v18 = OUTLINED_FUNCTION_36();
    (v17)(v18);
    v19 = OUTLINED_FUNCTION_33_0();
    (v17)(v19);
    v20 = OUTLINED_FUNCTION_37();
    (v17)(v20);
    (*(v9 + 32))(v5, v1, v6);
  }

  else
  {
    v32 = v5;
    sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
    v21 = sub_220DBE010();

    v22 = *(v9 + 8);
    v22(v3, v6);
    v23 = OUTLINED_FUNCTION_36();
    (v22)(v23);
    v24 = OUTLINED_FUNCTION_39();
    (v22)(v24);
    if (v21)
    {
      v25 = OUTLINED_FUNCTION_37();
      (v22)(v25);
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
      (*(v9 + 32))(v32, v0, v6);
      *(v32 + v26) = 1;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_33_0();
      (v22)(v27);
      v28 = *(v9 + 32);
      v29 = OUTLINED_FUNCTION_32_0();
      v31(v29, v30, v6);
    }
  }

  OUTLINED_FUNCTION_28_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24();
}

void PrecipitationTotalStringAmount.init(context:precipitationAmountByType:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v32[1] = v5;
  v32[0] = sub_220DBEC90();
  v6 = OUTLINED_FUNCTION_0(v32[0]);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_18_1();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v32 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  v26 = *v4;
  v27 = v2;
  sub_220DBEDD0();
  sub_220DBEDC0();
  if (v26)
  {
    v27 = v13;
    if (v26 == 1)
    {
      sub_220DBEC80();
      sub_220DBEC70();
      OUTLINED_FUNCTION_5_2();
      v28 = OUTLINED_FUNCTION_16_1();
      sub_220CDEE30(v28, v0, v29);
    }

    else
    {
      sub_220DBEC60();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_16_1();
      sub_220CF8B70();
    }
  }

  else
  {
    (*(v17 + 16))(v23, v25, v14);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_16_1();
    sub_220CDB1D4();
  }

  v30 = sub_220DBEE10();
  OUTLINED_FUNCTION_6(v30);
  (*(v31 + 8))(v2);
  (*(v8 + 8))(v13, v32[0]);
  (*(v17 + 8))(v25, v14);
  *v27 = v26;
  OUTLINED_FUNCTION_24();
}

void static PrecipitationTotalStringAmount.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_5_2();

    static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
  }
}

uint64_t PrecipitationTotalStringAmount.unit.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_42_0();
  v9 = OUTLINED_FUNCTION_6(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v0 + v15, v14);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    (*(v4 + 32))(v1, v14 + *(v23 + 48), v2);
    v19 = sub_220DBE030();
    v24 = *(v4 + 8);
    v25 = OUTLINED_FUNCTION_29_1();
    v24(v25);
    (v24)(v14, v2);
  }

  else
  {
    v16 = *(v4 + 32);
    v17 = OUTLINED_FUNCTION_37();
    v18(v17);
    v19 = sub_220DBE030();
    v20 = *(v4 + 8);
    v21 = OUTLINED_FUNCTION_29_1();
    v22(v21);
  }

  return v19;
}

BOOL PrecipitationTotalStringAmount.isLessThan.getter()
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v0 + v8, v7);
  OUTLINED_FUNCTION_27_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    OUTLINED_FUNCTION_6(v10);
    (*(v11 + 8))(v7);
  }

  else
  {
    sub_220CF8964(v7);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t PrecipitationTotalStringAmount.pluralRule.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_42_0();
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v1 + v17, v16);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    *a1 = 0;
    *(a1 + 8) = 1;
    v25 = *(v6 + 8);
    v25(v16 + v24, v4);
    v26 = OUTLINED_FUNCTION_33_0();
    return (v25)(v26);
  }

  else
  {
    (*(v6 + 32))(v2, v16, v4);
    sub_220DBE050();
    v19 = Double.pluralRuleInteger.getter(v18);
    v20 = *(v6 + 8);
    v21 = OUTLINED_FUNCTION_37();
    result = v22(v21);
    *a1 = v19;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_220CF9528(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DC0970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v45 = &v34 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v5 + 32;
  v43 = a2 + 56;
  v44 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v34 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (2)
    {
      v22 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v42 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v42 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v45, v14, v4);
      v27 = *(a2 + 40);
      sub_220CE33B8(&qword_27CF95240, MEMORY[0x277D7B4C8]);
      v28 = sub_220DC0550();
      v29 = a2;
      v30 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v28 & v30;
        if (((*(v43 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          (*v21)(v45, v4);
          return 0;
        }

        v26(v9, *(v29 + 48) + v31 * v42, v4);
        sub_220CE33B8(&qword_27CF95248, MEMORY[0x277D7B4C8]);
        v32 = sub_220DC05B0();
        v33 = *v21;
        (*v21)(v9, v4);
        v28 = v31 + 1;
      }

      while ((v32 & 1) == 0);
      result = (v33)(v45, v4);
      a2 = v29;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v40;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t PrecipitationTotalStringAmount.Context.init(_:isDataInPast:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = sub_220DBEC20();
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  result = (*(v9 + 88))(a1, v6);
  if (result == *MEMORY[0x277CE33A0])
  {
    if (a2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    result = (*(v8 + 8))(a1, v6);
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

unint64_t sub_220CF99A8()
{
  result = qword_27CF95238;
  if (!qword_27CF95238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationTotalStringAmount.Context(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PrecipitationTotalStringAmount.Context(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationTotalStringAmountPluralRule(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrecipitationTotalStringAmountPluralRule(uint64_t result, int a2, int a3)
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

uint64_t sub_220CF9C00(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CF9C1C(uint64_t result, int a2)
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

uint64_t OUTLINED_FUNCTION_30_2()
{

  return sub_220DC0280();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return type metadata accessor for PrecipitationTotalStringAmount.Format(0);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

double CurrentWeather.chartValue(for:units:)(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = sub_220DBEF00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v104 = v6;
  v105 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v103 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v12 = OUTLINED_FUNCTION_0(v11);
  v109 = v13;
  v110 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v102 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v108 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v21 = OUTLINED_FUNCTION_0(v20);
  v100 = v22;
  v101 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v98 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  v99 = &v93 - v28;
  v29 = sub_220DBEF70();
  v30 = OUTLINED_FUNCTION_0(v29);
  v96 = v31;
  v97 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v95 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v37 = OUTLINED_FUNCTION_0(v36);
  v106 = v38;
  v107 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v93 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v48 = OUTLINED_FUNCTION_0(v47);
  v94 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v93 - v56;
  v58 = sub_220DBEE60();
  v59 = OUTLINED_FUNCTION_0(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1();
  v66 = v65 - v64;
  v67 = *a1;
  v68 = *a2;
  switch(v67)
  {
    case 1:
      v81 = a2[1];
      sub_220DBEAB0();
      sub_220DBE130();
      v82 = *(v94 + 8);
      v82(v54, v47);
      sub_220DBE050();
      v71 = v83;
      v82(v57, v47);
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_3_4();
      sub_220DBEA10();
      sub_220DBEE50();
      v71 = v70;
      (*(v61 + 8))(v66, v58);
      goto LABEL_15;
    case 3:
      sub_220DBE9B0();
      goto LABEL_8;
    case 4:
      sub_220DBE9D0();
LABEL_8:
      v72 = v107;
      sub_220DBE130();
      v73 = *(v106 + 8);
      v73(v43, v72);
      sub_220DBE050();
      v71 = v74;
      v73(v46, v72);
      goto LABEL_15;
    case 5:
      v84 = v95;
      OUTLINED_FUNCTION_3_4();
      sub_220DBEA80();
      v85 = sub_220DBEF50();
      (*(v96 + 8))(v84, v97);
      v71 = v85;
      goto LABEL_15;
    case 6:
      v86 = a2[5];
      v77 = v98;
      sub_220DBE9A0();
      v78 = v99;
      v79 = v101;
      sub_220DBE130();
      v80 = v100;
      goto LABEL_13;
    case 7:
      v75 = a2[2];
      v76 = v103;
      OUTLINED_FUNCTION_3_4();
      sub_220DBEA70();
      v77 = v102;
      sub_220DBEEF0();
      (*(v104 + 8))(v76, v105);
      v78 = v108;
      v79 = v110;
      sub_220DBE130();
      v80 = v109;
LABEL_13:
      v87 = *(v80 + 8);
      v87(v77, v79);
      sub_220DBE050();
      v71 = v88;
      v87(v78, v79);
      goto LABEL_15;
    case 8:
      v89 = v108;
      OUTLINED_FUNCTION_3_4();
      sub_220DBE9F0();
      v90 = v110;
      sub_220DBE050();
      v92 = v91;
      (*(v109 + 8))(v89, v90);
      if (v92 <= 0.0)
      {
        v71 = 0.0;
      }

      else
      {
        v71 = 1.0;
      }

LABEL_15:
      result = v71;
      break;
    default:

      sub_220DBEAA0();
      break;
  }

  return result;
}

uint64_t VisibilityCondition.shortDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_14:
        OUTLINED_FUNCTION_10();
      }

      break;
  }

  OUTLINED_FUNCTION_1_3();
  return sub_220DBE240();
}

uint64_t VisibilityCondition.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220CFA66C()
{
  result = qword_27CF95268;
  if (!qword_27CF95268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95268);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VisibilityCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t InterpolationMethod.init(chartCondition:)(char *a1)
{
  v1 = *a1;
  result = qword_220DC20A8[v1];
  v3 = byte_220DC20F0[v1];
  return result;
}

uint64_t HumidityDewPointRule.description(for:data:)()
{
  v0 = sub_220DC0300();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DC0A40();
  v9 = OUTLINED_FUNCTION_0(v8);
  v35 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v16 = OUTLINED_FUNCTION_0(v15);
  v34 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v22 = sub_220DBE240();
  v32 = v23;
  v33 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_220DC17A0;
  sub_220DBEA90();
  sub_220DC02B0();
  (*(v3 + 104))(v7, *MEMORY[0x277D7B408], v0);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220CF6ABC();
  v25 = sub_220DBE0B0();
  v31 = v26;

  (*(v3 + 8))(v7, v0);
  (*(v35 + 8))(v14, v8);
  (*(v34 + 8))(v21, v15);
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_220CEFDB0();
  v27 = v31;
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = sub_220DC05F0();

  return v28;
}

uint64_t getEnumTagSinglePayload for HumidityDewPointRule(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for HumidityDewPointRule(_BYTE *result, int a2, int a3)
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

void sub_220CFADD4()
{
  OUTLINED_FUNCTION_25();
  v101 = v1;
  v102 = v0;
  v105 = v3;
  v106 = v2;
  v103 = v4;
  v6 = v5;
  v100 = v7;
  v104 = sub_220DBE960();
  v8 = OUTLINED_FUNCTION_0(v104);
  v107 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v96 = &v91 - v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  v97 = &v91 - v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  v98 = &v91 - v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v30);
  v99 = &v91 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v91 - v34;
  v36 = sub_220DBE560();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  sub_220CE02DC(v6, v35);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_220CD8040(v35);
    if (qword_27CF94F48 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    v45 = sub_220DBF410();
    __swift_project_value_buffer(v45, qword_27CF95F60);
    v46 = sub_220DBF3F0();
    v47 = sub_220DC0980();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_220CD1000, v46, v47, v101, v48, 2u);
      MEMORY[0x223D98FB0](v48, -1, -1);
    }

    [objc_opt_self() centimeters];
    sub_220CDB190();
    sub_220DBE040();
  }

  else
  {
    v92 = v23;
    v93 = v36;
    (*(v39 + 32))(v44, v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    v49 = sub_220DBEF90();
    MEMORY[0x28223BE20](v49);
    v50 = v102;
    *(&v91 - 2) = v44;
    *(&v91 - 1) = v50;
    OUTLINED_FUNCTION_4_3();
    v55 = sub_220CE0914(v51, v52, v53, v54, sub_220CE5648);
    v56 = *(v55 + 16);
    v103 = v18;
    v106 = v15;
    v94 = v44;
    v95 = v39;
    if (v56)
    {
      v108 = MEMORY[0x277D84F90];
      sub_220CFB6C4();
      v57 = v108;
      v58 = *(v107 + 16);
      v59 = *(v107 + 80);
      OUTLINED_FUNCTION_13_2();
      v91 = v55;
      v61 = v55 + v60;
      v101 = *(v62 + 56);
      v102 = v63;
      v107 = v62;
      v64 = (v62 - 8);
      v65 = v96;
      do
      {
        v66 = v104;
        v67 = v102(v14, v61, v104);
        v105(v67);
        (*v64)(v14, v66);
        v108 = v57;
        v68 = *(v57 + 16);
        if (v68 >= *(v57 + 24) >> 1)
        {
          sub_220CFB6C4();
          v57 = v108;
        }

        *(v57 + 16) = v68 + 1;
        v18 = v103;
        v69 = *(v103 + 80);
        OUTLINED_FUNCTION_13_2();
        v71 = v57 + v70 + *(v18 + 72) * v68;
        v15 = v106;
        (*(v18 + 32))(v71, v65, v106);
        v61 += v101;
        --v56;
      }

      while (v56);

      v72 = v98;
      v73 = v99;
      v74 = v94;
      v39 = v95;
    }

    else
    {
      v74 = v44;

      v57 = MEMORY[0x277D84F90];
      v72 = v98;
      v73 = v99;
    }

    v75 = [objc_opt_self() centimeters];
    v76 = sub_220CDB190();
    sub_220DBE040();
    v77 = *(v18 + 16);
    v77(v72, v73, v15);
    v78 = *(v57 + 16);
    if (v78)
    {
      v79 = *(v18 + 80);
      OUTLINED_FUNCTION_13_2();
      v107 = v18 + 16;
      v81 = v57 + v80;
      v82 = v72;
      v83 = *(v18 + 72);
      v104 = v77;
      v105 = v83;
      v84 = (v18 + 8);
      v85 = (v18 + 32);
      v101 = v84 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v102 = v76;
      v86 = v92;
      v87 = v106;
      v88 = v97;
      do
      {
        v104(v88, v81, v87);
        sub_220DBE120();
        v89 = *v84;
        (*v84)(v88, v87);
        v89(v82, v87);
        (*v85)(v82, v86, v87);
        v81 += v105;
        --v78;
      }

      while (v78);

      v18 = v103;
      v72 = v82;
      v73 = v99;
      v74 = v94;
      v39 = v95;
    }

    else
    {

      v89 = *(v18 + 8);
    }

    v90 = v106;
    v89(v73, v106);
    (*(v18 + 32))(v100, v72, v90);
    (*(v39 + 8))(v74, v93);
  }

  OUTLINED_FUNCTION_24();
}

char *sub_220CFB4F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_220CFB518(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_220CFB564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_14_3();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_3_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_3_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void sub_220CFB6C4()
{
  v1 = *v0;
  sub_220CFBBDC();
  *v0 = v2;
}

char *sub_220CFB704(char *a1, int64_t a2, char a3)
{
  result = sub_220CFB9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_220CFB724()
{
  v1 = *v0;
  sub_220CE5690();
  *v0 = v2;
}

char *sub_220CFB77C(char *a1, int64_t a2, char a3)
{
  result = sub_220CFBAA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_220CFB79C()
{
  v1 = *v0;
  sub_220CE5690();
  *v0 = v2;
}

char *sub_220CFB7F4(char *a1, int64_t a2, char a3)
{
  result = sub_220CFBDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB814(char *a1, int64_t a2, char a3)
{
  result = sub_220CFBF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB834(char *a1, int64_t a2, char a3)
{
  result = sub_220CFC018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB854(char *a1, int64_t a2, char a3)
{
  result = sub_220CFC118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_220CFB8B0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_9_2();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952E8, &qword_220DC4FD0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

char *sub_220CFB9A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952D8, &qword_220DC21A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_220CFBAA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C8, &qword_220DC4E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_220CFBBDC()
{
  OUTLINED_FUNCTION_25();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_9_2();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) - 8) + 72);
  v19 = OUTLINED_FUNCTION_10_1();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v16;
  v19[3] = 2 * ((v20 - v0) / v18);
LABEL_18:
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) - 8) + 80);
  OUTLINED_FUNCTION_13_2();
  if (v11)
  {
    sub_220CFB564(v9 + v23, v16, v19 + v23, v7, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
  }

  OUTLINED_FUNCTION_24();
}

char *sub_220CFBDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220CFBF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95298, &qword_220DC2188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_220CFC018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95280, &qword_220DC2170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_220CFC118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95290, &qword_220DC2180);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *CompactOverviewTableView.init(model:columnSpacing:columnHorizontalPadding:showDividerOnFirstRow:)@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t CompactOverviewTableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = v1[3];
  *a1 = sub_220DBF9D0();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95300, &qword_220DC21C0) + 44);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95308, &qword_220DC21C8);
  type metadata accessor for CompactOverviewTableColumnView();
  sub_220CE161C(&qword_27CF95310, &qword_27CF95308, &qword_220DC21C8);
  sub_220CFC73C(&qword_27CF95318, type metadata accessor for CompactOverviewTableColumnView);
  sub_220CFC73C(&qword_27CF95320, type metadata accessor for OverviewTableRowViewModel);
  return sub_220DC00B0();
}

uint64_t sub_220CFC3E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  v10 = sub_220DBFC80();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95388, &qword_220DC25B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v36 - v17);
  v19 = type metadata accessor for OverviewTableRowViewModel();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CFD3A8(a1, v22);
  if (a3)
  {
    goto LABEL_4;
  }

  sub_220D10084(a2, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_220CDA548(v18, &qword_27CF95388, &qword_220DC25B0);
LABEL_4:
    v23 = 1;
    goto LABEL_5;
  }

  v33 = *v18;
  v32 = v18[1];

  sub_220CFD470(v18, type metadata accessor for OverviewTableRowViewModel);
  if (v33 == *a1 && v32 == a1[1])
  {

    v23 = 0;
  }

  else
  {
    v35 = sub_220DC0CA0();

    v23 = v35 ^ 1;
  }

LABEL_5:
  sub_220CFD40C(v22, a4);
  v24 = type metadata accessor for CompactOverviewTableColumnView();
  *(a4 + v24[5]) = v23 & 1;
  *(a4 + v24[6]) = a5;
  v25 = v24[7];
  v26 = v11[13];
  v26(v14, *MEMORY[0x277CE0AA8], v10);
  sub_220DBFC20();
  v27 = sub_220DBFBE0();
  v28 = v11[1];
  v28(v14, v10);
  *(a4 + v25) = v27;
  v29 = v24[8];
  v26(v14, *MEMORY[0x277CE0A68], v10);
  sub_220DBFC20();
  v30 = sub_220DBFBE0();
  result = (v28)(v14, v10);
  *(a4 + v29) = v30;
  return result;
}

uint64_t type metadata accessor for CompactOverviewTableColumnView()
{
  result = qword_27CF95338;
  if (!qword_27CF95338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CFC73C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220CFC7DC()
{
  result = type metadata accessor for OverviewTableRowViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220CFC888@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_4_4(&v102[-v4]);
  v109 = sub_220DBFB60();
  v5 = OUTLINED_FUNCTION_0(v109);
  v108 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_4(&v102[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95350, &qword_220DC22F8);
  v10 = OUTLINED_FUNCTION_0(v112);
  v111 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_4(&v102[-v14]);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95358, &qword_220DC2300);
  v15 = OUTLINED_FUNCTION_6(v117);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_4(&v102[-v21]);
  v22 = sub_220DC0070();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  v29 = &v102[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95360, &qword_220DC2308);
  v31 = OUTLINED_FUNCTION_6(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v102[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95368, &unk_220DC2310);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v42);
  v44 = &v102[-v43];
  v45 = type metadata accessor for CompactOverviewTableColumnView();
  v46 = 1;
  if (*(v1 + v45[5]) == 1)
  {
    v47 = v44;
    sub_220DC0060();
    v48 = sub_220DBFBB0();
    if (*(v1 + *(type metadata accessor for OverviewTableRowViewModel() + 28)) == 1)
    {
      v49 = *(v1 + v45[6]);
    }

    sub_220DBF700();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v25 + 32))(v36, v29, v22);
    v58 = v36 + *(v30 + 36);
    *v58 = v48;
    *(v58 + 8) = v51;
    *(v58 + 16) = v53;
    *(v58 + 24) = v55;
    *(v58 + 32) = v57;
    *(v58 + 40) = 0;
    sub_220CFD338(v36, v39);
    v44 = v47;
    sub_220CFD338(v39, v47);
    v46 = 0;
  }

  v113 = v44;
  __swift_storeEnumTagSinglePayload(v44, v46, 1, v30);
  v105 = sub_220DBFA40();
  v126 = 1;
  v104 = sub_220CFD1A4();
  v60 = v59;
  v103 = v61;
  v63 = v62;
  OverviewTableRowViewModel.formattedValueText()();
  v65 = v64;
  v106 = v1;
  v67 = v66;
  v69 = v68;
  v70 = *(v1 + v45[8]);
  v71 = sub_220DBFD10();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  sub_220CF0978(v65, v67, v69 & 1);

  v78 = v103 & 1;
  v125 = v103 & 1;
  v128 = v103 & 1;
  v127 = v75 & 1;
  v79 = v104;
  sub_220CFD2C8(v104, v60, v103 & 1);

  sub_220CFD2C8(v71, v73, v75 & 1);

  sub_220CF0978(v71, v73, v75 & 1);

  sub_220CF0978(v79, v60, v125);

  __src[0] = v105;
  __src[1] = 0;
  LOBYTE(__src[2]) = v126;
  __src[3] = v79;
  __src[4] = v60;
  LOBYTE(__src[5]) = v78;
  __src[6] = v63;
  __src[7] = v71;
  __src[8] = v73;
  LOBYTE(__src[9]) = v75 & 1;
  __src[10] = v77;
  v80 = v107;
  sub_220DBFB50();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95370, &qword_220DC2560);
  v82 = sub_220CE161C(&qword_27CF95378, &qword_27CF95370, &qword_220DC2560);
  v83 = v110;
  sub_220DBFDE0();
  (*(v108 + 8))(v80, v109);
  memcpy(__dst, __src, sizeof(__dst));
  sub_220CDA548(__dst, &qword_27CF95370, &qword_220DC2560);
  v84 = *(v106 + 24);
  v85 = v106;
  __src[0] = *(v106 + 16);
  __src[1] = v84;
  v122 = v81;
  v123 = v82;
  swift_getOpaqueTypeConformance2();
  sub_220CEFF14();
  v86 = v115;
  v87 = v112;
  sub_220DBFDC0();
  (*(v111 + 8))(v83, v87);
  v88 = type metadata accessor for OverviewTableRowViewModel();
  v89 = v119;
  sub_220CFD2D8(v85 + *(v88 + 24), v119, &qword_27CF95348, &qword_220DC22F0);
  v90 = type metadata accessor for OverviewTableValueString();
  if (__swift_getEnumTagSinglePayload(v89, 1, v90) == 1)
  {
    sub_220CDA548(v89, &qword_27CF95348, &qword_220DC22F0);
    v91 = 0;
    v92 = 0xE000000000000000;
  }

  else
  {
    v91 = sub_220CFFBF0();
    v92 = v93;
    sub_220CFD470(v89, type metadata accessor for OverviewTableValueString);
  }

  __src[0] = v91;
  __src[1] = v92;
  v94 = v116;
  sub_220DBF880();

  sub_220CE8278(v86);
  v95 = v118;
  sub_220DBF890();
  sub_220CE8278(v94);
  v96 = v113;
  v97 = v114;
  sub_220CFD2D8(v113, v114, &qword_27CF95368, &unk_220DC2310);
  v98 = v120;
  sub_220CE82D8(v95, v120);
  v99 = v121;
  sub_220CFD2D8(v97, v121, &qword_27CF95368, &unk_220DC2310);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95380, &unk_220DC2320);
  sub_220CE82D8(v98, v99 + *(v100 + 48));
  sub_220CE8278(v95);
  sub_220CDA548(v96, &qword_27CF95368, &unk_220DC2310);
  sub_220CE8278(v98);
  return sub_220CDA548(v97, &qword_27CF95368, &unk_220DC2310);
}

uint64_t sub_220CFD1A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_220DC0650();
  sub_220CEFF14();
  v3 = sub_220DBFD40();
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + *(type metadata accessor for CompactOverviewTableColumnView() + 28));
  v9 = sub_220DBFD10();
  v11 = v10;
  v13 = v12;
  sub_220CF0978(v3, v5, v7 & 1);

  sub_220DBFF20();
  v14 = sub_220DBFCE0();

  sub_220CF0978(v9, v11, v13 & 1);

  return v14;
}

uint64_t sub_220CFD2C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_220CFD2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220CFD338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95360, &qword_220DC2308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CFD3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableRowViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CFD40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CFD470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OverviewTableView.init(model:rowVerticalPadding:rowHorizontalPadding:showDividerOnFirstRow:titleFont:valueFont:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953A0, &unk_220DC2340);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = sub_220DBFC80();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  result = MEMORY[0x28223BE20](v19);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v35 = a2;
  if (!a3)
  {
    v29 = OUTLINED_FUNCTION_2_4();
    v30(v29);
    sub_220DBFC40();
    a3 = sub_220DBFBE0();
    result = (*(v21 + 8))(v26, v18);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = OUTLINED_FUNCTION_2_4();
    v32(v31);
    v33 = sub_220DBFC00();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v33);
    a4 = sub_220DBFC50();
    sub_220CDA548(v17, &qword_27CF953A0, &unk_220DC2340);
    result = (*(v21 + 8))(v26, v18);
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v28 = v35;
  *a5 = v27;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = v28;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t OverviewTableView.body.getter()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v8 = *&v7[0];
  v6 = *&v7[0];
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_220CFDB4C(&v8, v5);
  sub_220CFDBA8(v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95308, &qword_220DC21C8);
  type metadata accessor for OverviewTableRowView();
  sub_220CE161C(&qword_27CF95310, &qword_27CF95308, &qword_220DC21C8);
  sub_220CFDC2C(&qword_27CF953A8, type metadata accessor for OverviewTableRowView);
  sub_220CFDC2C(&qword_27CF95320, type metadata accessor for OverviewTableRowViewModel);
  return sub_220DC00B0();
}

uint64_t sub_220CFD86C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95388, &qword_220DC25B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-v6 - 8];
  v8 = type metadata accessor for OverviewTableRowViewModel();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for OverviewTableRowView();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_220CFF830();
  if (*(a2 + 24))
  {
    goto LABEL_4;
  }

  sub_220D10084(*a2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_220CDA548(v7, &qword_27CF95388, &qword_220DC25B0);
LABEL_4:
    v14 = 1;
    goto LABEL_5;
  }

  v22 = *v7;
  v21 = v7[1];

  sub_220CFF9FC(v7, type metadata accessor for OverviewTableRowViewModel);
  if (v22 == *a1 && v21 == a1[1])
  {

    v14 = 0;
  }

  else
  {
    v24 = sub_220DC0CA0();

    v14 = v24 ^ 1;
  }

LABEL_5:
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v18 = *(a2 + 32);
  v17 = *(a2 + 40);
  v27 = v17;
  v28 = v18;
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95460, &qword_220DC2568);
  swift_storeEnumTagMultiPayload();
  v19 = v10[5];
  sub_220CFF94C();
  *(v13 + v10[6]) = v15;
  *(v13 + v10[7]) = v16;
  *(v13 + v10[8]) = v14 & 1;
  *(v13 + v10[9]) = v18;
  *(v13 + v10[10]) = v17;
  sub_220CFF94C();
  sub_220CFF9A0(&v28, v26);
  return sub_220CFF9A0(&v27, v26);
}

uint64_t type metadata accessor for OverviewTableRowView()
{
  result = qword_27CF953D0;
  if (!qword_27CF953D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CFDC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220CFDC74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220DBF9C0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95460, &qword_220DC2568);
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v21 - v14);
  sub_220CFF7DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_220DBF7D0();
    OUTLINED_FUNCTION_0_2(v16);
    return (*(v17 + 32))(a1, v15);
  }

  else
  {
    v19 = *v15;
    sub_220DC0990();
    v20 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v2);
  }
}

uint64_t sub_220CFDE58@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_220DBFA40();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953E8, &unk_220DC2508);
  return sub_220CFDEA8(v1, a1 + *(v3 + 44));
}

uint64_t sub_220CFDEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v97 - v5;
  v6 = sub_220DBFB60();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F0, &qword_220DC2518);
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = *(v103 + 64);
  MEMORY[0x28223BE20](v9);
  v102 = &v97 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F8, &qword_220DC2520);
  v12 = *(*(v108 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v108);
  v111 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = &v97 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v107 = &v97 - v18;
  MEMORY[0x28223BE20](v17);
  v109 = &v97 - v19;
  v20 = sub_220DC0070();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95360, &qword_220DC2308);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v97 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95368, &unk_220DC2310);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v105 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v97 - v36;
  v38 = type metadata accessor for OverviewTableRowView();
  v39 = *(a1 + v38[8]);
  v40 = 1;
  v113 = v37;
  if (v39 == 1)
  {
    v98 = v20;
    sub_220DC0060();
    v41 = sub_220DBFBB0();
    v42 = a1 + v38[5];
    if (*(v42 + *(type metadata accessor for OverviewTableRowViewModel() + 28)) == 1)
    {
      v43 = *(a1 + v38[7]);
    }

    sub_220DBF700();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    (*(v21 + 32))(v29, v24, v98);
    v52 = &v29[*(v25 + 36)];
    *v52 = v41;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    sub_220CFD338(v29, v31);
    v37 = v113;
    sub_220CFD338(v31, v113);
    v40 = 0;
  }

  __swift_storeEnumTagSinglePayload(v37, v40, 1, v25);
  v53 = sub_220DBF9E0();
  LOBYTE(v114) = 1;
  sub_220CFE72C(a1, v120);
  memcpy(v118, v120, sizeof(v118));
  memcpy(v119, v120, 0x62uLL);
  sub_220CFF7DC();
  sub_220CDA548(v119, &qword_27CF95400, &qword_220DC2528);
  memcpy(&v117[7], v118, 0x62uLL);
  v54 = a1;
  v55 = v114;
  v56 = sub_220DBFBD0();
  v57 = *(v54 + v38[6]);
  sub_220DBF700();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v120[0] = 0;
  v66 = sub_220DBFBB0();
  v67 = *(v54 + v38[7]);
  sub_220DBF700();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  LOBYTE(v114) = 0;
  v116[0] = v53;
  v116[1] = 0;
  LOBYTE(v116[2]) = v55;
  memcpy(&v116[2] + 1, v117, 0x69uLL);
  LOBYTE(v116[16]) = v56;
  v116[17] = v59;
  v116[18] = v61;
  v116[19] = v63;
  v116[20] = v65;
  LOBYTE(v116[21]) = 0;
  LOBYTE(v116[22]) = v66;
  v116[23] = v69;
  v116[24] = v71;
  v116[25] = v73;
  v116[26] = v75;
  LOBYTE(v116[27]) = 0;
  v76 = v99;
  sub_220DBFB50();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95408, &qword_220DC2530);
  v78 = sub_220CFF698();
  v79 = v102;
  sub_220DBFDE0();
  (*(v100 + 8))(v76, v101);
  memcpy(v120, v116, 0xD9uLL);
  sub_220CDA548(v120, &qword_27CF95408, &qword_220DC2530);
  v80 = v54 + v38[5];
  v81 = *(v80 + 24);
  v116[0] = *(v80 + 16);
  v116[1] = v81;
  v114 = v77;
  v115 = v78;
  swift_getOpaqueTypeConformance2();
  sub_220CEFF14();
  v82 = v106;
  v83 = v104;
  sub_220DBFDC0();
  (*(v103 + 8))(v79, v83);
  v84 = *(type metadata accessor for OverviewTableRowViewModel() + 24);
  v85 = v110;
  sub_220CFF7DC();
  v86 = type metadata accessor for OverviewTableValueString();
  if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
  {
    sub_220CDA548(v85, &qword_27CF95348, &qword_220DC22F0);
    v87 = 0;
    v88 = 0xE000000000000000;
  }

  else
  {
    v87 = sub_220CFFBF0();
    v88 = v89;
    sub_220CFF9FC(v85, type metadata accessor for OverviewTableValueString);
  }

  v116[0] = v87;
  v116[1] = v88;
  v90 = v107;
  sub_220DBF880();

  sub_220CE8620(v82);
  v91 = v109;
  sub_220DBF890();
  sub_220CE8620(v90);
  v92 = v113;
  v93 = v105;
  sub_220CFF7DC();
  v94 = v111;
  sub_220CE8680();
  sub_220CFF7DC();
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95438, &qword_220DC2548) + 48);
  sub_220CE8680();
  sub_220CE8620(v91);
  sub_220CDA548(v92, &qword_27CF95368, &unk_220DC2310);
  sub_220CE8620(v94);
  return sub_220CDA548(v93, &qword_27CF95368, &unk_220DC2310);
}

void *sub_220CFE72C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_220DBF7D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CFDC74(v7);
  v8 = sub_220DBF7C0();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v9 = sub_220DBFA50();
    v63[0] = 1;
    sub_220CFED30(a1, v58);
    *(__src + 7) = v58[0];
    *(&__src[2] + 7) = v58[1];
    *(&__src[4] + 7) = v58[2];
    *(&__src[6] + 7) = v58[3];
    v59[0] = v9;
    v59[1] = 0;
    LOBYTE(v59[2]) = v63[0];
    memcpy(&v59[2] + 1, __src, 0x47uLL);
    memcpy(v61, v59, sizeof(v61));
    memcpy(v60, v59, sizeof(v60));
    memcpy(v62, v59, sizeof(v62));
    v57 = 0;
    sub_220CFF7DC();
    sub_220CFF7DC();
    sub_220CDA548(v61, &qword_27CF95370, &qword_220DC2560);
    v64 = 0;
    memcpy(__src, v62, 0x58uLL);
    __src[11] = 0;
    LOWORD(__src[12]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95440, &qword_220DC2550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95448, &qword_220DC2558);
    sub_220CE161C(&qword_27CF95450, &qword_27CF95440, &qword_220DC2550);
    sub_220CE161C(&qword_27CF95458, &qword_27CF95448, &qword_220DC2558);
    sub_220DBFB10();
    sub_220CDA548(v59, &qword_27CF95370, &qword_220DC2560);
  }

  else
  {
    v10 = type metadata accessor for OverviewTableRowView();
    v11 = a1 + v10[5];
    v12 = *(v11 + 24);
    __src[0] = *(v11 + 16);
    __src[1] = v12;
    sub_220CEFF14();

    v13 = sub_220DBFD40();
    v15 = v14;
    v17 = v16;
    v18 = *(a1 + v10[9]);
    v53 = sub_220DBFD10();
    v54 = v19;
    v55 = v20;
    v51 = v21;
    sub_220CF0978(v13, v15, v17 & 1);

    OverviewTableRowViewModel.formattedValueText()();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = *(a1 + v10[10]);
    v29 = sub_220DBFD10();
    v31 = v30;
    v33 = v32;
    sub_220CF0978(v23, v25, v27 & 1);

    sub_220DBFF20();
    v34 = sub_220DBFCE0();
    v36 = v35;
    LOBYTE(v23) = v37;
    v52 = v38;

    sub_220CF0978(v29, v31, v33 & 1);

    v39 = v51 & 1;
    v60[0] = v39;
    LOBYTE(v59[0]) = v51 & 1;
    LOBYTE(v58[0]) = 1;
    LOBYTE(v29) = v23 & 1;
    v64 = v23 & 1;
    v50 = 1;
    v51 = v23 & 1;
    v40 = v53;
    v41 = v55;
    sub_220CFD2C8(v53, v55, v39);
    v42 = v54;

    sub_220CFD2C8(v34, v36, v23 & 1);
    v43 = v52;

    sub_220CFD2C8(v40, v41, v39);
    v44 = v42;

    v45 = v36;
    sub_220CFD2C8(v34, v36, v29);

    sub_220CF0978(v34, v36, v29);

    v46 = v40;
    v47 = v40;
    v48 = v55;
    sub_220CF0978(v47, v55, v60[0]);

    v61[0] = 1;
    __src[0] = v46;
    __src[1] = v48;
    LOBYTE(__src[2]) = v39;
    __src[3] = v44;
    __src[4] = 0;
    LOBYTE(__src[5]) = v50;
    __src[6] = v34;
    __src[7] = v45;
    LOBYTE(__src[8]) = v51;
    __src[9] = v43;
    __src[10] = 0x3FF0000000000000;
    __src[11] = v62[0];
    LOBYTE(__src[12]) = v62[1];
    BYTE1(__src[12]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95440, &qword_220DC2550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95448, &qword_220DC2558);
    sub_220CE161C(&qword_27CF95450, &qword_27CF95440, &qword_220DC2550);
    sub_220CE161C(&qword_27CF95458, &qword_27CF95448, &qword_220DC2558);
    sub_220DBFB10();
    sub_220CF0978(v34, v45, v29);

    sub_220CF0978(v53, v55, v39);
  }

  memcpy(__src, v63, 0x62uLL);
  return memcpy(v56, __src, 0x62uLL);
}

uint64_t sub_220CFED30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverviewTableRowView();
  v5 = a1 + v4[5];
  v38 = *(v5 + 16);
  v39 = *(v5 + 24);
  sub_220CEFF14();

  v6 = sub_220DBFD40();
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + v4[9]);
  v12 = sub_220DBFD10();
  v35 = v13;
  v36 = v12;
  v34 = v14;
  v37 = v15;
  sub_220CF0978(v6, v8, v10 & 1);

  OverviewTableRowViewModel.formattedValueText()();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = *(a1 + v4[10]);
  v23 = sub_220DBFD10();
  v25 = v24;
  LOBYTE(v8) = v26;
  sub_220CF0978(v17, v19, v21 & 1);

  sub_220DBFF20();
  v27 = sub_220DBFCE0();
  v29 = v28;
  LOBYTE(v6) = v30;
  v32 = v31;

  sub_220CF0978(v23, v25, v8 & 1);

  *a2 = v36;
  *(a2 + 8) = v35;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v6 & 1;
  *(a2 + 56) = v32;
  sub_220CFD2C8(v36, v35, v34 & 1);

  sub_220CFD2C8(v27, v29, v6 & 1);

  sub_220CF0978(v27, v29, v6 & 1);

  sub_220CF0978(v36, v35, v34 & 1);
}

uint64_t sub_220CFEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_220DC0120();
  v10 = v9;
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95468, &qword_220DC2570) + 36);
  sub_220CFF0A8(a2, v11, a4);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95470, &qword_220DC2578) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95478, &qword_220DC2580);
  OUTLINED_FUNCTION_0_2(v13);
  (*(v14 + 16))(a3, a1);
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95480, &qword_220DC2588) + 36));
  v16 = *(sub_220DBF8B0() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_220DBFA10();
  OUTLINED_FUNCTION_0_2(v18);
  (*(v19 + 104))(v15 + v16, v17);
  *v15 = a4;
  v15[1] = a4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95488, &qword_220DC2590);
  *(v15 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_220CFF0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_220DBF8B0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_220DBFA10();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = a3;
  v10[1] = a3;
  sub_220DBF720();
  sub_220CFF830();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95490, &qword_220DC2598) + 36);
  v15 = v23;
  *v14 = *&v22[8];
  *(v14 + 16) = v15;
  *(v14 + 32) = v24;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95498, &qword_220DC25A0);
  *(a2 + *(v16 + 52)) = a1;
  *(a2 + *(v16 + 56)) = 256;

  v17 = sub_220DC0120();
  v19 = v18;
  sub_220CFF9FC(v10, MEMORY[0x277CDFC08]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954A0, &qword_220DC25A8);
  v21 = (a2 + *(result + 36));
  *v21 = v17;
  v21[1] = v19;
  return result;
}

uint64_t View.overviewTableBackground(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *v5 = a4;
  v5[1] = a1;
  return MEMORY[0x223D97A50](v5, a2, &type metadata for OverviewTableBackgroundModifier, a3);
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

uint64_t sub_220CFF308(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220CFF348(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_220CFF3A4()
{
  result = qword_27CF953B0;
  if (!qword_27CF953B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF953B8, &qword_220DC23F8);
    sub_220CFDC2C(&qword_27CF953A8, type metadata accessor for OverviewTableRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF953B0);
  }

  return result;
}

unint64_t sub_220CFF458()
{
  result = qword_27CF953C0;
  if (!qword_27CF953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF953C0);
  }

  return result;
}

uint64_t sub_220CFF4AC(uint64_t a1, int a2)
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

uint64_t sub_220CFF4EC(uint64_t result, int a2, int a3)
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

void sub_220CFF560()
{
  sub_220CFF608();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OverviewTableRowViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220CFF608()
{
  if (!qword_27CF953E0)
  {
    sub_220DBF7D0();
    v0 = sub_220DBF710();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF953E0);
    }
  }
}

unint64_t sub_220CFF698()
{
  result = qword_27CF95410;
  if (!qword_27CF95410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95408, &qword_220DC2530);
    sub_220CFF724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95410);
  }

  return result;
}

unint64_t sub_220CFF724()
{
  result = qword_27CF95418;
  if (!qword_27CF95418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95420, &qword_220DC2538);
    sub_220CE161C(&qword_27CF95428, &qword_27CF95430, &qword_220DC2540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95418);
  }

  return result;
}

uint64_t sub_220CFF7DC()
{
  OUTLINED_FUNCTION_6_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_20();
  v7(v6);
  return v0;
}

uint64_t sub_220CFF830()
{
  OUTLINED_FUNCTION_6_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return v0;
}

uint64_t sub_220CFF884(uint64_t a1)
{
  v2 = sub_220DBF7D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220DBF8E0();
}

uint64_t sub_220CFF94C()
{
  OUTLINED_FUNCTION_6_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return v0;
}

uint64_t sub_220CFF9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_220CFFA54()
{
  result = qword_27CF954B8;
  if (!qword_27CF954B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95480, &qword_220DC2588);
    sub_220CFFB0C();
    sub_220CE161C(&qword_27CF954D8, &qword_27CF95488, &qword_220DC2590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF954B8);
  }

  return result;
}

unint64_t sub_220CFFB0C()
{
  result = qword_27CF954C0;
  if (!qword_27CF954C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95468, &qword_220DC2570);
    sub_220CE161C(&qword_27CF954C8, &qword_27CF95478, &qword_220DC2580);
    sub_220CE161C(&qword_27CF954D0, &qword_27CF95470, &qword_220DC2578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF954C0);
  }

  return result;
}

uint64_t sub_220CFFBF0()
{
  v1 = type metadata accessor for OverviewTableValueString();
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_220D00124(v0, v6 - v5);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    sub_220DC03A0();
    sub_220D00188(v8, v9, v10);
  }

  else
  {
    v11 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E8, &qword_220DC25F8) + 48));
    v12 = *v11;
    v13 = v11[1];
    v14 = sub_220DBE210();
    OUTLINED_FUNCTION_6(v14);
    (*(v15 + 8))(v7);
  }

  return OUTLINED_FUNCTION_3_1();
}

uint64_t static OverviewTableValueString.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE210();
  v5 = OUTLINED_FUNCTION_0(v4);
  v61 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for OverviewTableValueString();
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E0, &qword_220DC25F0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v60 - v27;
  v29 = &v60 + *(v26 + 56) - v27;
  sub_220D00124(a1, &v60 - v27);
  sub_220D00124(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v61;
    sub_220D00124(v28, v23);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E8, &qword_220DC25F8) + 48);
    v44 = *&v23[v42];
    v43 = *&v23[v42 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      (*(v41 + 8))(v23, v4);
LABEL_9:
      sub_220D001A0(v28);
LABEL_10:
      v37 = 0;
      return v37 & 1;
    }

    v52 = *&v29[v42 + 8];
    v60 = *&v29[v42];
    (*(v41 + 32))(v11, v29, v4);
    v53 = sub_220DBE1E0();
    v54 = *(v41 + 8);
    v54(v23, v4);
    if (v53)
    {
      if (v44 == v60 && v43 == v52)
      {

        v59 = OUTLINED_FUNCTION_3_1();
        (v54)(v59);
LABEL_22:
        sub_220D00208(v28);
        v37 = 1;
        return v37 & 1;
      }

      v56 = sub_220DC0CA0();

      v57 = OUTLINED_FUNCTION_3_1();
      (v54)(v57);
      if (v56)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v58 = OUTLINED_FUNCTION_3_1();
      (v54)(v58);
    }

    sub_220D00208(v28);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_220D00124(v28, v18);
    v45 = *v18;
    v46 = *(v18 + 1);
    v47 = v18[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_220D00124(v28, v21);
  v31 = *v21;
  v32 = *(v21 + 1);
  v33 = v21[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    v48 = OUTLINED_FUNCTION_1_4();
    sub_220D00188(v48, v49, v50);
    goto LABEL_9;
  }

LABEL_4:
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  OUTLINED_FUNCTION_1_4();
  v37 = sub_220DC0390();
  v38 = OUTLINED_FUNCTION_1_4();
  sub_220D00188(v38, v39, v40);
  sub_220D00188(v34, v35, v36);
  sub_220D00208(v28);
  return v37 & 1;
}

uint64_t type metadata accessor for OverviewTableValueString()
{
  result = qword_27CF954F0;
  if (!qword_27CF954F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D00124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableValueString();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D00188(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_220D001A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E0, &qword_220DC25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D00208(uint64_t a1)
{
  v2 = type metadata accessor for OverviewTableValueString();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220D00268()
{
  sub_220D002D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220D002D4()
{
  if (!qword_27CF95500)
  {
    sub_220DBE210();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95500);
    }
  }
}

_BYTE *sub_220D00340(uint64_t a1)
{
  v2 = sub_220DBE210();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v25[-v11];
  v13 = type metadata accessor for OverviewTableValueString();
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v19 = (v18 - v17);
  sub_220D00124(a1, v18 - v17);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 16);
    sub_220DBFCC0();
    OUTLINED_FUNCTION_5_3();
    sub_220D00208(a1);
  }

  else
  {
    v23 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E8, &qword_220DC25F8) + 48) + 8);

    (*(v5 + 32))(v12, v19, v2);
    sub_220DBE200();
    sub_220DBFD30();
    OUTLINED_FUNCTION_5_3();

    sub_220D00208(a1);
    (*(v5 + 8))(v12, v2);
  }

  return v10;
}

void OverviewTableRowViewModel.formattedValueText()()
{
  OUTLINED_FUNCTION_25();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-v5];
  v7 = type metadata accessor for OverviewTableValueString();
  v8 = OUTLINED_FUNCTION_6(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v22[-v14];
  sub_220DBFBF0();
  v16 = type metadata accessor for OverviewTableRowViewModel();
  sub_220D00790(v0 + *(v16 + 24), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_220CDA548(v6, &qword_27CF95348, &qword_220DC22F0);
    sub_220DBFA00();
    v17 = sub_220DBFD20();
    v19 = v18;
    v21 = v20;

    sub_220DBFD10();
    OUTLINED_FUNCTION_5_4();

    sub_220CF0978(v17, v19, v21 & 1);
  }

  else
  {
    sub_220D00800(v6, v15);
    sub_220D02070(v15, v13, type metadata accessor for OverviewTableValueString);
    sub_220D00340(v13);
    OUTLINED_FUNCTION_5_4();
    sub_220D020CC(v15, type metadata accessor for OverviewTableValueString);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for OverviewTableRowViewModel()
{
  result = qword_27CF95510;
  if (!qword_27CF95510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D00790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D00800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableValueString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D00880(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v8 = v6[1];
    v7 = v6[2];
    v9 = (v5 + 24 * v3);
    v11 = v9[1];
    v10 = v9[2];
    if (v8)
    {
      if (!v11)
      {
        return 0;
      }

      if (*v6 != *v9 || v8 != v11)
      {
        v13 = v6[1];
        v14 = v9[1];
        if ((sub_220DC0CA0() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v11)
    {
      return 0;
    }

    v15 = *(v7 + 16);
    if (v15 != *(v10 + 16))
    {
      return 0;
    }

    if (v15)
    {
      v16 = v7 == v10;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v25 = v5;

      v17 = 0;
      v18 = v15 - 1;
      v19 = 32;
      while (v17 < *(v7 + 16))
      {
        result = memcpy(__dst, (v7 + v19), sizeof(__dst));
        if (v17 >= *(v10 + 16))
        {
          goto LABEL_58;
        }

        memcpy(v28, (v10 + v19), 0x48uLL);
        v20 = __dst[0] == v28[0] && __dst[1] == v28[1];
        if (!v20 && (sub_220DC0CA0() & 1) == 0)
        {
          goto LABEL_55;
        }

        v21 = __dst[2] == v28[2] && __dst[3] == v28[3];
        if (!v21 && (sub_220DC0CA0() & 1) == 0)
        {
          goto LABEL_55;
        }

        v22 = __dst[4] == v28[4] && __dst[5] == v28[5];
        if (!v22 && (sub_220DC0CA0() & 1) == 0)
        {
          goto LABEL_55;
        }

        result = __dst[6];
        if (__dst[6] != v28[6] || __dst[7] != v28[7])
        {
          result = sub_220DC0CA0();
          if ((result & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        if (__dst[8])
        {
          if (!v28[8])
          {
            goto LABEL_54;
          }

          sub_220D01FC0(__dst, v26);
          sub_220D01FC0(v28, v26);
          swift_retain_n();

          v24 = sub_220DBFE90();

          sub_220D0201C(v28);
          result = sub_220D0201C(__dst);
          if ((v24 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (v28[8])
        {
LABEL_54:
          sub_220D01FC0(__dst, v26);
          sub_220D01FC0(v28, v26);

          sub_220D0201C(v28);
          sub_220D0201C(__dst);
LABEL_55:

          return 0;
        }

        if (v18 == v17)
        {

          v5 = v25;
          goto LABEL_21;
        }

        v19 += 72;
        ++v17;
      }

      __break(1u);
LABEL_58:
      __break(1u);
      break;
    }

LABEL_21:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}