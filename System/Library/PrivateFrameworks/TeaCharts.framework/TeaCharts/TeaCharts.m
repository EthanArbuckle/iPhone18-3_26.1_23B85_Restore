uint64_t FrameworkAssembly.init()()
{
  sub_26D1424C4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26D175EA0;
  type metadata accessor for ChartsAssembly();
  v3 = OUTLINED_FUNCTION_0_6();
  *(v2 + 56) = v1;
  *(v2 + 64) = sub_26D14259C(&qword_2812B8978, type metadata accessor for ChartsAssembly);
  *(v2 + 32) = v3;
  type metadata accessor for GridAssembly();
  v4 = OUTLINED_FUNCTION_0_6();
  *(v2 + 96) = v1;
  *(v2 + 104) = sub_26D14259C(&qword_2812B8948, type metadata accessor for GridAssembly);
  *(v2 + 72) = v4;
  type metadata accessor for LineChartAssembly();
  v5 = OUTLINED_FUNCTION_0_6();
  *(v2 + 136) = v1;
  *(v2 + 144) = sub_26D14259C(qword_2812B8590, type metadata accessor for LineChartAssembly);
  *(v2 + 112) = v5;
  type metadata accessor for ColumnChartAssembly();
  v6 = OUTLINED_FUNCTION_0_6();
  *(v2 + 176) = v1;
  *(v2 + 184) = sub_26D14259C(qword_2812B83F0, type metadata accessor for ColumnChartAssembly);
  *(v2 + 152) = v6;
  type metadata accessor for SparklineAssembly();
  v7 = OUTLINED_FUNCTION_0_6();
  *(v2 + 216) = v1;
  *(v2 + 224) = sub_26D14259C(qword_2812B84C0, type metadata accessor for SparklineAssembly);
  *(v2 + 192) = v7;
  *(v0 + 16) = v2;
  return v0;
}

void sub_26D1424C4()
{
  if (!qword_2812B7C68)
  {
    sub_26D14251C();
    v0 = sub_26D1747C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7C68);
    }
  }
}

unint64_t sub_26D14251C()
{
  result = qword_2812B89A8;
  if (!qword_2812B89A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812B89A8);
  }

  return result;
}

uint64_t sub_26D14259C(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_0_0(uint64_t *a1)
{
  *(v4 - 136) = v2;
  *(v4 - 128) = v3;
  *(v4 - 120) = v1;
  v6 = *a1;
  return v5;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_26D174094();
}

double OUTLINED_FUNCTION_0_4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_0_15()
{
  v2 = *(v1 - 256);
  *(v1 - 336) = *(v1 - 272);
  *(v1 - 320) = v2;
  result = *(v1 - 240);
  v4 = *(v0 + 48);
  *(v1 - 304) = result;
  *(v1 - 288) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20()
{
  result = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_23@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FEA10](67108865, a1, a2 + 8);
}

uint64_t OUTLINED_FUNCTION_0_26@<X0>(char a1@<W8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(v9 - 184) = v12;
  *(v9 - 176) = v11;
  *(v9 - 168) = v10;
  *(v9 - 160) = a5;
  *(v9 - 152) = a4;
  *(v9 - 144) = a3;
  *(v9 - 136) = v6;
  *(v9 - 128) = a2;
  *(v9 - 120) = v5;
  *(v9 - 119) = a1;
  v13 = *v7;
  return v8;
}

void sub_26D142914()
{
  if (!qword_2812B99A0[0])
  {
    type metadata accessor for CategoryAxis();
    v0 = type metadata accessor for CoordinateSpace();
    if (!v1)
    {
      atomic_store(v0, qword_2812B99A0);
    }
  }
}

void sub_26D142994()
{
  sub_26D142914();
  if (v0 <= 0x3F)
  {
    sub_26D142D90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CategoryAxis()
{
  result = qword_2812B9CB0;
  if (!qword_2812B9CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D142A64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (!*a2)
  {
    v6 = a5(0, MEMORY[0x277D837D0]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_26D142AB8()
{
  sub_26D142A64(319, &qword_2812B9DC0, MEMORY[0x277D837F8], MEMORY[0x277D6CFA8], MEMORY[0x277D6CC38]);
  if (v0 <= 0x3F)
  {
    sub_26D142A64(319, &qword_2812B7630, MEMORY[0x277D83B88], MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
    if (v1 <= 0x3F)
    {
      sub_26D142C14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26D142BC4()
{
  if (!qword_2812B77D8)
  {
    v0 = type metadata accessor for Grid();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B77D8);
    }
  }
}

void sub_26D142C14()
{
  if (!qword_2812B75F8)
  {
    sub_26D142BC4();
    v0 = sub_26D174304();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B75F8);
    }
  }
}

uint64_t sub_26D142C9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26D142D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26D142D90()
{
  if (!qword_2812B77C8)
  {
    sub_26D142E14();
    sub_26D142E68();
    sub_26D142EBC();
    v0 = type metadata accessor for Series();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B77C8);
    }
  }
}

unint64_t sub_26D142E14()
{
  result = qword_2812B87F0;
  if (!qword_2812B87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B87F0);
  }

  return result;
}

unint64_t sub_26D142E68()
{
  result = qword_2812B8800;
  if (!qword_2812B8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B8800);
  }

  return result;
}

unint64_t sub_26D142EBC()
{
  result = qword_2812B87F8;
  if (!qword_2812B87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B87F8);
  }

  return result;
}

unint64_t sub_26D142F14()
{
  result = qword_2812B97D0;
  if (!qword_2812B97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B97D0);
  }

  return result;
}

uint64_t sub_26D142F80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for LineChartModel()
{
  result = qword_2812B9A80;
  if (!qword_2812B9A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D143008()
{
  sub_26D142914();
  if (v0 <= 0x3F)
  {
    sub_26D1430BC();
    if (v1 <= 0x3F)
    {
      sub_26D143114();
      if (v2 <= 0x3F)
      {
        sub_26D173E24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26D1430BC()
{
  if (!qword_2812B75F0)
  {
    sub_26D142D90();
    v0 = sub_26D174304();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B75F0);
    }
  }
}

void sub_26D143114()
{
  if (!qword_2812B7618)
  {
    v0 = sub_26D1744C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7618);
    }
  }
}

uint64_t sub_26D14320C()
{
  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B8C78);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F44();
  sub_26D1433B8(0, qword_2812B8BC0);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F44();
  sub_26D14340C();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B8BB8);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B9DD8);
  sub_26D174094();
}

uint64_t sub_26D1433B8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_26D14340C()
{
  if (!qword_2812B9CC0[0])
  {
    sub_26D143468();
    v0 = type metadata accessor for ZoneManager();
    if (!v1)
    {
      atomic_store(v0, qword_2812B9CC0);
    }
  }
}

unint64_t sub_26D143468()
{
  result = qword_2812B9C40;
  if (!qword_2812B9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B9C40);
  }

  return result;
}

unint64_t sub_26D1434BC(uint64_t a1)
{
  *(a1 + 8) = sub_26D1434EC();
  result = sub_26D143558();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26D1434EC()
{
  result = qword_2812B9C48;
  if (!qword_2812B9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B9C48);
  }

  return result;
}

unint64_t sub_26D143558()
{
  result = qword_2812B9C50;
  if (!qword_2812B9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B9C50);
  }

  return result;
}

uint64_t sub_26D1435AC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  result = sub_26D174034();
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D14365C()
{
  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for GridViewProvider();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for CategoryAxisGridViewModelGenerator();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for ValueAxisGridViewModelGenerator();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B8C70);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for GridViewRenderer();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for GridViewStyler();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  sub_26D1433B8(0, &qword_2812B9268);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();
}

void OUTLINED_FUNCTION_1_9()
{
  *(v3 - 336) = v0;
  *(v3 - 328) = v2;
  *(v3 - 320) = v1;
  *(v3 - 360) = v6;
  *(v3 - 352) = v4;
  *(v3 - 344) = v5;
}

uint64_t sub_26D143A24()
{
  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  sub_26D143F5C();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartViewProvider();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineSeriesAccessibilityElementProvider();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  sub_26D1445D8();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B9110);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartCoordinateProvider();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartRenderer();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  sub_26D1433B8(0, qword_2812B9320);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  sub_26D1433B8(0, qword_2812B91A8);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  sub_26D144468();
  OUTLINED_FUNCTION_4_2();
  sub_26D174084();

  sub_26D173F54();
  OUTLINED_FUNCTION_4_2();
  sub_26D174084();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartInteractor();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  sub_26D1433B8(0, &qword_2812B9040);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  sub_26D1433B8(0, &qword_2812B9048);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();
}

void sub_26D143E14()
{
  if (!qword_2812B9740)
  {
    type metadata accessor for LineChartModel();
    sub_26D143F14(&qword_2812B9A90, type metadata accessor for LineChartModel);
    v0 = type metadata accessor for ChartModelFactory();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9740);
    }
  }
}

uint64_t sub_26D143ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D143F14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26D143F5C()
{
  if (!qword_2812B9460[0])
  {
    sub_26D143E14();
    type metadata accessor for LineChartViewProvider();
    type metadata accessor for LineChartCoordinateProvider();
    sub_26D14436C(255, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
    sub_26D144468();
    sub_26D1445D8();
    sub_26D143F14(qword_2812B9748, sub_26D143E14);
    sub_26D143F14(&qword_2812B9260, type metadata accessor for LineChartViewProvider);
    sub_26D143F14(&qword_2812B8EE8, type metadata accessor for LineChartCoordinateProvider);
    sub_26D14466C(&qword_2812B9B38, &qword_2812B9B30, &type metadata for LineChartStyle);
    sub_26D143F14(qword_2812B9120, sub_26D144468);
    sub_26D143F14(qword_2812B9500, sub_26D1445D8);
    v0 = type metadata accessor for ChartViewController();
    if (!v1)
    {
      atomic_store(v0, qword_2812B9460);
    }
  }
}

uint64_t type metadata accessor for LineChartCoordinateProvider()
{
  result = qword_2812B8ED8;
  if (!qword_2812B8ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D144260()
{
  if (!qword_2812B9990)
  {
    sub_26D142914();
    v0 = sub_26D1744C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9990);
    }
  }
}

void sub_26D1442B8()
{
  sub_26D144260();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26D14436C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26D1443D4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_26D1744C4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_26D144468()
{
  if (!qword_2812B9118)
  {
    type metadata accessor for CategoryAxisGridViewModelGenerator();
    type metadata accessor for ValueAxisGridViewModelGenerator();
    v0 = type metadata accessor for GridViewModelGenerator();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9118);
    }
  }
}

uint64_t sub_26D144504(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26D1445D8()
{
  if (!qword_2812B94F8)
  {
    type metadata accessor for LineChartInteractor();
    sub_26D143F14(qword_2812B93E0, type metadata accessor for LineChartInteractor);
    v0 = type metadata accessor for InteractionManager();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B94F8);
    }
  }
}

uint64_t sub_26D14466C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_26D14436C(255, a2, a3, type metadata accessor for StyleManager);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D1446D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26D144724(void *a1)
{
  v2 = a1[11];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v15 = *(result - 8) + 64;
    v5 = a1[12];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v16 = *(result - 8) + 64;
      v7 = a1[13];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v17 = *(result - 8) + 64;
        v9 = a1[14];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v18 = *(result - 8) + 64;
          v11 = a1[15];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v19 = *(result - 8) + 64;
            v13 = a1[10];
            result = sub_26D1744C4();
            if (v14 <= 0x3F)
            {
              v20 = *(result - 8) + 64;
              return swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_26D174364();
}

void sub_26D1449FC()
{
  if (!qword_2812B9730)
  {
    type metadata accessor for ColumnChartModel();
    sub_26D1450B4(&qword_2812B9988, type metadata accessor for ColumnChartModel);
    v0 = type metadata accessor for ChartModelFactory();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9730);
    }
  }
}

uint64_t sub_26D144A90()
{
  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  sub_26D144DB4();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for ColumnChartViewProvider();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F44();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for ColumnChartCoordinateProvider();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  sub_26D14527C();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  sub_26D1433B8(0, &qword_2812B9108);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  sub_26D1433B8(0, qword_2812B9050);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  sub_26D1433B8(0, qword_2812B9270);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  sub_26D144468();
  OUTLINED_FUNCTION_2_6();

  sub_26D173F54();
  v0 = OUTLINED_FUNCTION_1_8();
  sub_26D145368(v0);
  OUTLINED_FUNCTION_2_6();

  sub_26D173F54();
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for ColumnChartInteractor();
  OUTLINED_FUNCTION_0_14();
  sub_26D174084();

  sub_26D173F54();
  sub_26D1433B8(0, qword_2812B8F98);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();

  sub_26D173F54();
  sub_26D1433B8(0, qword_2812B8C80);
  OUTLINED_FUNCTION_0_14();
  sub_26D174094();
}

void sub_26D144DB4()
{
  if (!qword_2812B9458)
  {
    sub_26D1449FC();
    type metadata accessor for ColumnChartViewProvider();
    type metadata accessor for ColumnChartCoordinateProvider();
    sub_26D14527C();
    sub_26D144468();
    sub_26D145368(255);
    sub_26D1450B4(&qword_2812B9738, sub_26D1449FC);
    sub_26D1450B4(&qword_2812B9100, type metadata accessor for ColumnChartViewProvider);
    sub_26D1450B4(&qword_2812B8D60, type metadata accessor for ColumnChartCoordinateProvider);
    sub_26D1450B4(qword_2812B9B48, sub_26D14527C);
    sub_26D1450B4(qword_2812B9120, sub_26D144468);
    sub_26D1450B4(&qword_2812B94F0, sub_26D145368);
    v0 = type metadata accessor for ChartViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9458);
    }
  }
}

uint64_t type metadata accessor for ColumnChartModel()
{
  result = qword_2812B9978;
  if (!qword_2812B9978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D145028()
{
  sub_26D142914();
  if (v0 <= 0x3F)
  {
    sub_26D1430BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26D1450B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D1450FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ColumnChartCoordinateProvider()
{
  result = qword_2812B8D50;
  if (!qword_2812B8D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D1451B4()
{
  sub_26D144260();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26D14527C()
{
  if (!qword_2812B9B40)
  {
    v0 = type metadata accessor for StyleManager();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9B40);
    }
  }
}

void sub_26D1452CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ColumnChartInteractor();
    v7 = sub_26D1450B4(&qword_2812B9310, type metadata accessor for ColumnChartInteractor);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 OUTLINED_FUNCTION_2_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

void OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{

  sub_26D15526C(0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_26D174084();
}

uint64_t OUTLINED_FUNCTION_2_7()
{
  v2 = *(v0 + 40);

  return sub_26D174864();
}

void OUTLINED_FUNCTION_2_8(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
  v3 = *v1;
  v4 = *v2;
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return swift_beginAccess();
}

uint64_t sub_26D1454F4()
{
  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B9038);
  OUTLINED_FUNCTION_0_3();

  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B9318);
  OUTLINED_FUNCTION_0_3();

  sub_26D173F44();
  sub_26D1433B8(0, &qword_2812B8C68);
  OUTLINED_FUNCTION_0_3();
}

uint64_t sub_26D1455EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9318);
  result = sub_26D173EF4();
  if (v6[3])
  {
    v5 = type metadata accessor for SparklineViewRenderer();
    swift_allocObject();
    result = sub_26D1467D4(v6);
    a2[3] = v5;
    a2[4] = &off_287E8B6B0;
    *a2 = result;
  }

  else
  {
    __break(1u);
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

uint64_t sub_26D1456DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9110);
  result = sub_26D173EF4();
  v5 = v14;
  if (v14)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v6, v6);
    v9 = (&v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_26D146270(*v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = type metadata accessor for SparklineLoader();
    a2[3] = result;
    a2[4] = &off_287E8BBB8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D14581C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B91A8);
  result = sub_26D173EF4();
  v5 = v23;
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v6, v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for LinePathGenerator();
    v21[3] = v12;
    v21[4] = &off_287E8C340;
    v21[0] = v11;
    v13 = type metadata accessor for LineImageGenerator();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = &off_287E8C340;
    v14[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_287E8A7D0;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D145A44@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartCoordinateProvider();
  result = sub_26D173EE4();
  if (result)
  {
    v10 = OUTLINED_FUNCTION_1_8();
    v11 = a2(v10);
    result = swift_allocObject();
    *(result + 16) = v4;
    a4[3] = v11;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D145AF0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8C78);
  result = sub_26D173EF4();
  if (v11)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B8BC0);
    result = sub_26D173EF4();
    if (v9)
    {
      v5 = type metadata accessor for LineChartCoordinateProvider();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      return sub_26D145CB0(&v10, &v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D145BD8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_26D145CB0(__int128 *a1, __int128 *a2)
{
  v5 = sub_26D173E74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_coordinateSpace;
  sub_26D142914();
  __swift_storeEnumTagSinglePayload(v2 + v8, 1, 1, v9);
  v10 = v2 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_size;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock;
  sub_26D173E64();
  v12 = sub_26D173E94();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v2 + v11) = sub_26D173E84();
  sub_26D146174(a1, v2 + 16);
  sub_26D146174(a2, v2 + 56);
  return v2;
}

void sub_26D145DE8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x26D146074);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

void sub_26D1460B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_16();
  sub_26D142A64(0, v8, v9, v10, v11);
  if (*(*(v12 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_26D146174(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26D146270(uint64_t *a1)
{
  v1 = *a1;
  v11[3] = v1;
  v11[4] = &off_287E8A7D0;
  v11[0] = a1;
  type metadata accessor for SparklineLoader();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v1);
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v3, v3);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_26D1463BC(*v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_26D1463BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D174434();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v7 = sub_26D174194();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = sub_26D174444();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LineImageGenerator();
  v20 = &off_287E8A7D0;
  *&v18 = a1;
  sub_26D146644();
  (*(v11 + 104))(v15, *MEMORY[0x277D85268], v10);
  sub_26D174184();
  v17 = MEMORY[0x277D84F90];
  sub_26D146688(&qword_2812B7C70, MEMORY[0x277D85230]);
  sub_26D1466D0();
  sub_26D146688(&qword_2812B7C88, sub_26D1466D0);
  sub_26D1744F4();
  *(a2 + 56) = sub_26D174474();
  sub_26D146174(&v18, a2 + 16);
  return a2;
}

unint64_t sub_26D146644()
{
  result = qword_2812B89D8;
  if (!qword_2812B89D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B89D8);
  }

  return result;
}

uint64_t sub_26D146688(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26D1466D0()
{
  if (!qword_2812B7C90)
  {
    sub_26D174434();
    v0 = sub_26D174304();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7C90);
    }
  }
}

void sub_26D14674C()
{
  if (!qword_2812B9DB8)
  {
    sub_26D1468AC(255, &qword_2812B89D0, 0x277D75D18);
    sub_26D1468AC(255, &qword_2812B89C8, 0x277D755B8);
    v0 = sub_26D174074();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9DB8);
    }
  }
}

uint64_t sub_26D1467D4(uint64_t *a1)
{
  v2 = v1;
  sub_26D14674C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 56) = sub_26D174064();
  sub_26D1468EC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v1 + 64) = sub_26D174134();
  sub_26D146A14(a1, v1 + 16);
  v10 = [objc_opt_self() defaultCenter];
  [v10 addObserver:v2 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x277D76670] object:0];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_26D1468AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_26D1468EC()
{
  if (!qword_2812B8980)
  {
    sub_26D1468AC(255, &qword_2812B89C8, 0x277D755B8);
    sub_26D146968();
    v0 = sub_26D174144();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B8980);
    }
  }
}

unint64_t sub_26D146968()
{
  result = qword_2812B8268;
  if (!qword_2812B8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B8268);
  }

  return result;
}

unint64_t sub_26D1469C0()
{
  result = qword_2812B8260;
  if (!qword_2812B8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B8260);
  }

  return result;
}

uint64_t sub_26D146A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for SparklineModel()
{
  result = qword_2812B8910;
  if (!qword_2812B8910)
  {
    return swift_getSingletonMetadata();
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

uint64_t CategoryAxis.init(categories:grids:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  OUTLINED_FUNCTION_0_16();
  sub_26D142A64(0, v5, v6, v7, v8);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v64 = &v57 - v14;
  v15 = MEMORY[0x277D6CC40];
  sub_26D147040(0, &qword_2812B89B8, &qword_2812B9DD0, MEMORY[0x277D6CC40], MEMORY[0x277D843E0]);
  v60 = v16;
  v17 = OUTLINED_FUNCTION_0_8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v57 - v21;
  sub_26D147040(0, &qword_2812B89B0, &qword_2812B9DD0, v15, MEMORY[0x277D843E8]);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v57 - v30;
  v32 = *(v11 + 16);
  v32(a3, a1, v10);
  v58 = type metadata accessor for CategoryAxis();
  v33 = *(v58 + 24);
  v62 = a1;
  v63 = a3;
  *(a3 + v33) = v65;
  v34 = a1;
  v35 = v22;
  v32(v31, v34, v10);
  v36 = sub_26D1741B4();
  v59 = v31;
  sub_26D1471A8(v31, v28);
  v61 = v11;
  (*(v11 + 32))(v64, v28, v10);
  sub_26D1470E0(&qword_2812B9DD0);
  sub_26D174264();
  sub_26D147040(0, &qword_2812B89C0, &qword_2812B9DC8, MEMORY[0x277D6CC48], MEMORY[0x277D84310]);
  v38 = *(v37 + 36);
  v39 = 0;
  v65 = sub_26D1470E0(&qword_2812B9DC8);
  for (i = v35; ; v35 = i)
  {
    sub_26D174394();
    if (*(v35 + v38) == v67)
    {
      v55 = *(v60 + 36);
      (*(v61 + 8))(v62, v10);
      sub_26D14742C(v59, &qword_2812B89B0, MEMORY[0x277D843E8]);
      *(v35 + v55) = v39;
      result = sub_26D14742C(v35, &qword_2812B89B8, MEMORY[0x277D843E0]);
      *(v63 + *(v58 + 20)) = v36;
      return result;
    }

    v40 = sub_26D1743B4();
    v43 = *v41;
    v42 = v41[1];

    v40(&v67, 0);
    sub_26D1743A4();
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v44 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v67 = v36;
    v45 = sub_26D147140();
    if (__OFADD__(v36[2], (v46 & 1) == 0))
    {
      goto LABEL_15;
    }

    v47 = v45;
    v48 = v46;
    sub_26D142A64(0, &qword_2812B7560, MEMORY[0x277D83B88], MEMORY[0x277D837E0], MEMORY[0x277D843B8]);
    if (sub_26D1746C4())
    {
      v49 = sub_26D147140();
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_17;
      }

      v47 = v49;
    }

    v36 = v67;
    if (v48)
    {
      *(v67[7] + 8 * v47) = v39;
    }

    else
    {
      v67[(v47 >> 6) + 8] |= 1 << v47;
      v51 = (v36[6] + 16 * v47);
      *v51 = v43;
      v51[1] = v42;
      *(v36[7] + 8 * v47) = v39;
      v52 = v36[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_16;
      }

      v36[2] = v54;
    }

    ++v39;
    v10 = v44;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_26D174804();
  __break(1u);
  return result;
}

void sub_26D147040(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_0_16();
    sub_26D142A64(255, v9, v10, v11, v12);
    v14 = v13;
    v15 = sub_26D1470E0(a3);
    v16 = a5(a1, v14, v15);
    if (!v17)
    {
      atomic_store(v16, a2);
    }
  }
}

uint64_t sub_26D1470E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_16();
    sub_26D142A64(255, v3, v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26D147140()
{
  OUTLINED_FUNCTION_2_7();
  sub_26D174244();
  v2 = sub_26D174894();

  return sub_26D147244(v1, v0, v2);
}

uint64_t sub_26D1471A8(uint64_t a1, uint64_t a2)
{
  sub_26D147040(0, &qword_2812B89B0, &qword_2812B9DD0, MEMORY[0x277D6CC40], MEMORY[0x277D843E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D147244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26D1747E4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26D14730C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26D142914();
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

uint64_t sub_26D1473BC(uint64_t a1, uint64_t a2)
{
  sub_26D142914();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D14742C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_26D147040(0, a2, &qword_2812B9DD0, MEMORY[0x277D6CC40], a3);
  OUTLINED_FUNCTION_0_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t ValueAxis.init(range:calculationModel:grids:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  result = sub_26D146174(a1, a3 + 16);
  *(a3 + 56) = a2;
  return result;
}

uint64_t CoordinateSpace.init(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CoordinateSpace();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
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

__n128 SparklineModel.init(coordinateSpace:series:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_26D14770C(a1, a3);
  v6 = a3 + *(type metadata accessor for SparklineModel() + 20);
  *v6 = v5;
  result = *(a2 + 1);
  *(v6 + 8) = result;
  return result;
}

void sub_26D147654(uint64_t a1, unsigned __int8 *a2, double a3, double a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 > *a1 && a4 > 0.0)
  {
    v8 = *a2;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    __swift_project_boxed_opaque_existential_1((a1 + 16), v9);
    v11 = (*(v10 + 8))(v9, v10, a3, v6, v5) * a4;
  }
}

uint64_t sub_26D14770C(uint64_t a1, uint64_t a2)
{
  sub_26D142914();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26D147784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26D142914();
  if (*(*(v8 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

double LinearAxisCalculationModel.relativeLocation(for:in:)(double a1, double a2, double a3)
{
  result = 0.0;
  if (a2 != a3)
  {
    return (a1 - a2) / (a3 - a2);
  }

  return result;
}

uint64_t sub_26D147880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_16();
  sub_26D142A64(0, v6, v7, v8, v9);
  if (*(*(v10 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26D14794C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

BOOL static CategoryDataPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_26D1747E4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

id SparklineView.init(frame:)()
{
  OUTLINED_FUNCTION_1_11();
  ObjectType = swift_getObjectType();
  v2 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v3 = OUTLINED_FUNCTION_0_19();
  v6 = [v4 v5];
  *(v0 + OBJC_IVAR____TtC9TeaCharts13SparklineView_imageView) = v6;
  v13 = v0;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_0_19();
  v11 = objc_msgSendSuper2(v9, v10, v8, v13, ObjectType);
  [v11 addSubview_];

  return v11;
}

uint64_t SparklineModel.series.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SparklineModel() + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t sub_26D147D04(uint64_t result, int a2, int a3)
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

void sub_26D147D44(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v43 = *v5;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = *a4;
  v13 = a4[1];
  v14 = a4[2];
  v15 = a4[3];
  v44 = *a5;
  v16 = OUTLINED_FUNCTION_2_5();
  [v17 v18];
  v19 = (a1 + *(type metadata accessor for SparklineModel() + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  *&v47 = v14;
  *(&v47 + 1) = v15;
  *&v48 = v20;
  *(&v48 + 1) = v21;
  *&v49 = v22;
  *(&v49 + 1) = v9;
  *&v50 = v10;
  *(&v50 + 1) = v11;
  v23 = v6[8];
  OUTLINED_FUNCTION_0_15();

  sub_26D148AF4(&v47, v51);
  sub_26D174154();

  v51[0] = v46[0];
  v51[1] = v46[1];
  v51[2] = v46[2];
  v51[3] = v46[3];
  sub_26D148B2C(v51);
  if (v45)
  {
    [*&a2[OBJC_IVAR____TtC9TeaCharts13SparklineView_imageView] setImage_];

LABEL_3:
    sub_26D148B2C(&v47);
    return;
  }

  v52.origin.x = OUTLINED_FUNCTION_2_5();
  CGRectGetWidth(v52);
  v53.origin.x = OUTLINED_FUNCTION_2_5();
  CGRectGetHeight(v53);
  v24 = [objc_opt_self() mainScreen];
  [v24 scale];

  v25 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  if (v44)
  {
    OUTLINED_FUNCTION_1_9();
    v27 = *(v26 + 16);
    v28 = OUTLINED_FUNCTION_3_5();
    v30 = v29(v28);
    MEMORY[0x28223BE20](v30, v31);
    sub_26D148D4C();
    sub_26D174104();
    v32 = sub_26D173EA4();
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    v34 = v48;
    *(v33 + 24) = v47;
    *(v33 + 40) = v34;
    *(v33 + 56) = v49;
    *(v33 + 72) = v50;
    sub_26D148AF4(&v47, v46);
    v35 = a2;
    sub_26D1740C4();
    sub_26D148B2C(&v47);
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
    v37 = *(v36 + 8);
    v38 = OUTLINED_FUNCTION_3_5();
    v40 = v39(v38);
    if (!v40)
    {
      goto LABEL_3;
    }

    v41 = v40;
    [*&a2[OBJC_IVAR____TtC9TeaCharts13SparklineView_imageView] setImage_];
    v42 = v6[8];
    OUTLINED_FUNCTION_0_15();

    sub_26D174114();

    sub_26D148B2C(&v47);
  }
}

uint64_t sub_26D14812C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26D1481BC(uint64_t a1, int a2)
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

uint64_t sub_26D148204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12)
{
  v51 = a7;
  v52 = a8;
  v53 = a3;
  v54 = a4;
  v49 = a2;
  v50 = a12;
  v58 = sub_26D174174();
  v60 = *(v58 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v58, v20);
  v56 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26D174194();
  v57 = *(v59 - 8);
  v22 = *(v57 + 64);
  MEMORY[0x28223BE20](v59, v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SparklineModel();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8, v29);
  v30 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  v55 = *(a5 + 56);
  v32 = a5;
  sub_26D148908(a6, v30);
  v33 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v34 = (v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 31) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  sub_26D148A58(v30, v38 + v33);
  v39 = (v38 + v34);
  v40 = v52;
  *v39 = v51;
  v39[1] = v40;
  v39[2] = v50;
  v41 = (v38 + v35);
  *v41 = a9;
  v41[1] = a10;
  v41[2] = a11;
  v42 = (v38 + v36);
  v43 = v54;
  *v42 = v53;
  v42[1] = v43;
  v44 = (v38 + v37);
  *v44 = sub_26D14ACD0;
  v44[1] = v31;
  aBlock[4] = sub_26D149E68;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D149F38;
  aBlock[3] = &block_descriptor_1;
  v45 = _Block_copy(aBlock);

  sub_26D174184();
  v61 = MEMORY[0x277D84F90];
  sub_26D148E60();
  sub_26D148CA4(0, &qword_2812B7610, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26D148B5C();
  v46 = v56;
  v47 = v58;
  sub_26D1744F4();
  MEMORY[0x26D6B3700](0, v25, v46, v45);
  _Block_release(v45);
  (*(v60 + 8))(v46, v47);
  (*(v57 + 8))(v25, v59);
}

uint64_t sub_26D14863C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D148674()
{
  v1 = (type metadata accessor for SparklineModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = v0 + v3;
  sub_26D149038();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for CategoryAxis();
  v11 = *(v8 + *(v10 + 20));

  v12 = *(v8 + *(v10 + 24));

  sub_26D142914();
  v14 = v8 + *(v13 + 52);
  __swift_destroy_boxed_opaque_existential_1((v14 + 16));
  v15 = *(v14 + 56);

  v16 = v8 + v1[7];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = *(v0 + v4 + 8);

  v20 = *(v0 + v4 + 16);

  v21 = *(v0 + v5 + 8);

  v22 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v2 | 7);
}

uint64_t sub_26D14880C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *a3;
  v10 = *(a3 + 2);
  sub_26D148CA4(0, &qword_2812B7B78, sub_26D148D08, MEMORY[0x277D6CF30]);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_26D1740E4();
}

void *sub_26D1488B8(void *result, int a2)
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

uint64_t sub_26D148908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SparklineModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SparklineStyle.init(lineStyle:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26D173D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D173CF4();
  v10 = sub_26D173CE4();
  v12 = v11;
  result = (*(v5 + 8))(v9, v4);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = a1;
  return result;
}

uint64_t sub_26D148A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SparklineModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D148B5C()
{
  result = qword_2812B7608;
  if (!qword_2812B7608)
  {
    sub_26D148CA4(255, &qword_2812B7610, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B7608);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_3_4(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  return result;
}

void sub_26D148CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26D148D08()
{
  result = qword_2812B89C8;
  if (!qword_2812B89C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B89C8);
  }

  return result;
}

void sub_26D148D4C()
{
  if (!qword_2812B75B8)
  {
    sub_26D1468AC(255, &qword_2812B89D0, 0x277D75D18);
    sub_26D1468AC(255, &qword_2812B89C8, 0x277D755B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812B75B8);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D148E2C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 56);
  return sub_26D174054();
}

unint64_t sub_26D148E60()
{
  result = qword_2812B7B70;
  if (!qword_2812B7B70)
  {
    sub_26D174174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B7B70);
  }

  return result;
}

uint64_t sub_26D148EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D148F20(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char a6)
{
  v8 = *a5;
  v9 = *(a4 + *(type metadata accessor for CategoryAxis() + 20));
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_26D147140();
  if ((v11 & 1) == 0 || a1 <= 0.0)
  {
    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  sub_26D149038();
  result = sub_26D174024();
  v14 = result - 1;
  v15 = __OFSUB__(result, 1);
  if ((v8 & 1) == 0)
  {
    if (!v15)
    {
      v16 = a1 / v14 * v12;
      if (a6)
      {
        v16 = a1 - v16;
      }

      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if (v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = a1 - a1 / v14 * v12;
LABEL_14:
  if ((~*&v16 & 0x7FF0000000000000) == 0 || v16 == 1.79769313e308)
  {
    return 0;
  }

  else
  {
    return *&v16;
  }
}

void sub_26D149038()
{
  if (!qword_2812B9DC0)
  {
    v0 = sub_26D174034();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B9DC0);
    }
  }
}

uint64_t sub_26D149098(CGFloat a1, CGFloat a2, CGFloat a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v11 = sub_26D173E34();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_1_1();
  v20 = v19 - v18;
  v21 = *a5;
  v22 = a5[1];
  v23 = a5[2];
  v24 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  OUTLINED_FUNCTION_0_0(v24);
  v27 = sub_26D14999C(v25, v26);
  v28 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v33 = sub_26D14A928(v30, v31, v29, v32);
  if (a1 == 0.0 || (v34 = v20, a2 == 0.0))
  {

    return 0;
  }

  v69.width = a1;
  v69.height = a2;
  UIGraphicsBeginImageContextWithOptions(v69, 0, a3);
  v37 = UIGraphicsGetCurrentContext();
  if (!v37)
  {
    sub_26D14CDDC();
    v49 = sub_26D1744B4();
    sub_26D174404();
    sub_26D174164();

    return 0;
  }

  v38 = v37;
  [*(a6 + 32) setStroke];
  v39 = v27;
  [v27 setLineWidth_];
  v40 = *(a6 + 16);
  v41 = v11;
  v42 = v34;
  if (v40)
  {
    v43 = *(v40 + 16);
    if (v43)
    {
      v64 = v39;
      v65 = v38;
      v63 = v33;
      v67 = MEMORY[0x277D84F90];
      sub_26D14D400(0, v43, 0);
      v44 = (v40 + 32);
      v45 = *(v67 + 16);
      do
      {
        v47 = *v44++;
        v46 = v47;
        v48 = *(v67 + 24);
        if (v45 >= v48 >> 1)
        {
          sub_26D14D400((v48 > 1), v45 + 1, 1);
        }

        *(v67 + 16) = v45 + 1;
        *(v67 + 8 * v45++ + 32) = v46;
        --v43;
      }

      while (v43);
      v39 = v64;
      v38 = v65;
    }

    sub_26D1743E4();
  }

  [v39 stroke];
  v50 = *(a6 + 48);
  if ((*(a6 + 56) & 1) == 0)
  {
    [v50 setFill];
    v59 = [v33 CGPath];
    CGContextAddPath(v38, v59);

    (*(v13 + 104))(v42, *MEMORY[0x277CBF258], v41);
    sub_26D1743F4();
    sub_26D14ABA0(v50, 0);
    (*(v13 + 8))(v42, v41);
LABEL_29:
    v35 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return v35;
  }

  v51 = *(a6 + 48);

  [v33 addClip];
  v52 = sub_26D14AB7C(v50);
  if (!v52)
  {
LABEL_26:
    sub_26D14ABA0(v50, 1);
    type metadata accessor for CGColor(0);
    v60 = sub_26D1742A4();

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v62 = CGGradientCreateWithColors(DeviceRGB, v60, 0);

    if (v62)
    {
      v70.x = 0.0;
      v70.y = 0.0;
      v71.x = 0.0;
      v71.y = a2;
      CGContextDrawLinearGradient(v38, v62, v70, v71, 0);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v53 = v52;
  v68 = MEMORY[0x277D84F90];
  result = sub_26D174674();
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = 0;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D6B38E0](v54, v50);
      }

      else
      {
        v55 = *(v50 + 8 * v54 + 32);
      }

      v56 = v55;
      ++v54;
      v57 = [v55 CGColor];

      sub_26D174654();
      v58 = *(v68 + 16);
      sub_26D174684();
      sub_26D174694();
      sub_26D174664();
    }

    while (v53 != v54);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1495A0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  [*(a3 + OBJC_IVAR____TtC9TeaCharts13SparklineView_imageView) setImage_];
  v6 = *(a2 + 64);
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = a4[3];

  sub_26D174114();
}

uint64_t sub_26D149650()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  sub_26D174864();
  sub_26D1498EC(v4);
  return sub_26D174894();
}

void sub_26D1496A0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_26D1496EC(double a1)
{
  sub_26D144260();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26D142914();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_coordinateSpace;
  swift_beginAccess();
  sub_26D148EB8(v1 + v14, v7, sub_26D144260);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    v15 = sub_26D144260;
    v16 = v7;
LABEL_5:
    sub_26D14A8C8(v16, v15);
    return 0;
  }

  sub_26D14770C(v7, v13);
  if (*(v1 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_size + 16))
  {
    v15 = sub_26D142914;
    v16 = v13;
    goto LABEL_5;
  }

  v18 = *(v1 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_size + 8);
  v19 = v1[5];
  v20 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  v21 = *(v9 + 52);
  v24 = 1;
  v22 = (*(v20 + 8))(&v13[v21], &v24, v19, v20, a1, v18);
  sub_26D14A8C8(v13, sub_26D142914);
  return *&v22;
}

uint64_t sub_26D1498EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26D6B3B20](*&v3);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x26D6B3B20](*&v10);
  sub_26D174244();
  sub_26D149AF0(a1, v7);

  return sub_26D174244();
}

id sub_26D14999C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v27 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v7 = a1[2];
  if (v7)
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = a1[6];
    v11 = a1[5];
    v12 = *(v2 + 16);
    v31 = a1[4];
    v32 = v11;
    v33 = v10;
    v28 = v4;
    v29 = v5;
    v30 = v6;

    v13 = LineChartCoordinateProvider.location(for:in:)(&v31, &v28);
    v15 = v14;
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      [v27 moveToPoint_];
      v18 = v7 - 1;
      v19 = a1 + 9;
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v31 = *(v19 - 2);
        v32 = v20;
        v33 = v21;
        v28 = v4;
        v29 = v5;
        v30 = v6;

        v22 = LineChartCoordinateProvider.location(for:in:)(&v31, &v28);
        v24 = v23;
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          [v27 addLineToPoint_];
        }

        v19 += 3;
        --v18;
      }

      while (v18);
    }
  }

  return v27;
}

uint64_t sub_26D149AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6B3B10](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;
      v9 = v8;

      sub_26D174244();
      if (v8 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v9;
      }

      MEMORY[0x26D6B3B20](*&v10);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26D149B84(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = *(a2 + 16);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_26D14A034(a1, v19, v6, v7);
  v10 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v11 = (a1 + *(type metadata accessor for SparklineModel() + 20));
  v12 = v11[1];
  v13 = v11[2];
  v18[0] = *v11;
  v18[1] = v12;
  v18[2] = v13;
  v14 = *v10;

  v16 = sub_26D149098(v6, v7, v8, v15, v18, v5);

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_26D149C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (!v8 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  return sub_26D149F7C(a3, a6);
}

uint64_t sub_26D149CD8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);
  if ((sub_26D149C6C(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a2 + 16), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v3 == v5)
  {
    return 1;
  }

  return sub_26D1747E4();
}

void sub_26D149D7C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), uint64_t a10, void (*a11)(void))
{
  v18[0] = a6;
  v18[1] = a7;
  v18[2] = a8;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v13 = sub_26D149B84(a5, v18, v17);
  if (v13)
  {
    v16 = v13;
    a11();
    v14 = v16;
  }

  else
  {
    sub_26D165194();
    v15 = swift_allocError();
    a9();
    v14 = v15;
  }
}

void sub_26D149E68()
{
  v1 = *(type metadata accessor for SparklineModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6 + 8);
  sub_26D149D7C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v6));
}

uint64_t sub_26D149F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26D149F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_26D1747E4();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_26D14A034@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *v4;
  v10 = *__swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_26D14A2CC(a1, v33, a3, a4);
  __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_2();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1_1();
  v17 = (v16 - v15);
  (*(v18 + 16))(v16 - v15);
  v19 = *v17;
  v20 = type metadata accessor for LinePathGenerator();
  v32[3] = v20;
  v32[4] = &off_287E8C340;
  v32[0] = v19;
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v32, v20);
  OUTLINED_FUNCTION_2();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_1_1();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  v30 = *v28;
  v21[5] = v20;
  v21[6] = &off_287E8C340;
  v21[2] = v30;
  __swift_destroy_boxed_opaque_existential_1(v32);
  result = __swift_destroy_boxed_opaque_existential_1(v33);
  a2[3] = v9;
  a2[4] = &off_287E8A7D0;
  *a2 = v21;
  return result;
}

uint64_t LineChartCoordinateProvider.copy()()
{
  v1 = *v0;
  sub_26D146A14((v0 + 2), v7);
  sub_26D146A14((v0 + 7), v6);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_26D145CB0(v7, v6);
  return v4;
}

uint64_t sub_26D14A2CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *v4;
  v10 = v4[2];
  v11 = LineChartCoordinateProvider.copy()();
  v12 = *(v11 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock);
  sub_26D173E44();
  sub_26D14A398(a1, a3, a4);
  sub_26D173E54();
  result = swift_allocObject();
  *(result + 16) = v11;
  a2[3] = v9;
  a2[4] = &off_287E8C340;
  *a2 = result;
  return result;
}

uint64_t sub_26D14A398(uint64_t a1, double a2, double a3)
{
  sub_26D144260();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D148EB8(a1, v11, sub_26D142914);
  sub_26D142914();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_coordinateSpace;
  swift_beginAccess();
  sub_26D14A4C4(v11, v3 + v13);
  result = swift_endAccess();
  v15 = v3 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_size;
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_26D14A4C4(uint64_t a1, uint64_t a2)
{
  sub_26D144260();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LineChartCoordinateProvider.location(for:in:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(v2 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock);
  sub_26D173E44();
  v10 = sub_26D14A608(v3, v4);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    sub_26D1496EC(v5);
    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }
  }

  sub_26D173E54();
  return v12;
}

uint64_t sub_26D14A608(uint64_t a1, uint64_t a2)
{
  sub_26D144260();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26D142914();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_coordinateSpace;
  swift_beginAccess();
  sub_26D148EB8(v2 + v16, v9, sub_26D144260);
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    v17 = sub_26D144260;
    v18 = v9;
  }

  else
  {
    sub_26D14770C(v9, v15);
    if ((*(v2 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_size + 16) & 1) == 0)
    {
      v20 = *(v2 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_size);
      v21 = v2[10];
      v22 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v21);
      v25 = 0;
      v19 = (*(v22 + 8))(a1, a2, v15, &v25, v21, v22, v20);
      sub_26D14A8C8(v15, sub_26D142914);
      return v19;
    }

    v17 = sub_26D142914;
    v18 = v15;
  }

  sub_26D14A8C8(v18, v17);
  return 0;
}

uint64_t sub_26D14A83C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  v11 = *a4;
  v9 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  return sub_26D148F20(a5, a1, a2, a3, &v11, v9);
}

uint64_t sub_26D14A8C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_26D14A928(double *a1, uint64_t *a2, double a3, double a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v21 = *a2;
  v22 = v8;
  v23 = v9;
  v10 = sub_26D14999C(a1, &v21);
  [v10 currentPoint];
  [v10 addLineToPoint_];
  if (*(a1 + 2))
  {
    v12 = *(a1 + 4);
    v11 = *(a1 + 5);
    v13 = a1[6];
    v14 = *(v4 + 16);
    v21 = v7;
    v22 = v8;
    v23 = v9;

    v15 = LineChartCoordinateProvider.horizontalLocation(for:in:)(v12, v11, &v21);
    if (v16)
    {
    }

    else
    {
      v17 = *&v15;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      LineChartCoordinateProvider.verticalLocation(for:in:)(&v21, v13);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        [v10 addLineToPoint_];
        [v10 closePath];
      }
    }
  }

  return v10;
}

uint64_t LineChartCoordinateProvider.horizontalLocation(for:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v8 = *(v3 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock);
  sub_26D173E44();
  v11 = *(a3 + 1);
  v9 = sub_26D14A608(a1, a2);
  sub_26D173E54();
  return v9;
}

uint64_t LineChartCoordinateProvider.verticalLocation(for:in:)(uint64_t *a1, double a2)
{
  v5 = *a1;
  v6 = *(v2 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock);
  sub_26D173E44();
  v9 = *(a1 + 1);
  v7 = sub_26D1496EC(a2);
  sub_26D173E54();
  return v7;
}

uint64_t sub_26D14AB7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26D174584();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_26D14ABA0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26D14ABAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t LineChartCoordinateProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_26D14A8C8(v0 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_coordinateSpace, sub_26D144260);
  v1 = *(v0 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock);

  return v0;
}

uint64_t LineChartCoordinateProvider.__deallocating_deinit()
{
  LineChartCoordinateProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t LinePathGenerator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26D14ACD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

Swift::Void __swiftcall SparklineView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts13SparklineView_imageView];
  [v0 bounds];
  [v1 setFrame_];
}

uint64_t sub_26D14ADBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D14ADD4(uint64_t result, int a2, int a3)
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

uint64_t sub_26D14AE00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GridLayoutOptions(uint64_t result, int a2, int a3)
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

char *sub_26D14AEE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_26D14AF3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D14AF74()
{
  v1 = (type metadata accessor for LineChartModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v3;
  sub_26D149038();
  OUTLINED_FUNCTION_0_2(v9);
  (*(v10 + 8))(v8);
  v11 = type metadata accessor for CategoryAxis();
  v12 = *(v8 + *(v11 + 20));

  v13 = *(v8 + *(v11 + 24));

  sub_26D142914();
  v15 = v8 + *(v14 + 52);
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  v16 = *(v15 + 56);

  v17 = *(v8 + v1[7]);

  v18 = *(v8 + v1[8] + 8);

  v19 = *(v8 + v1[9] + 8);

  v20 = v1[10];
  v21 = sub_26D173E24();
  OUTLINED_FUNCTION_0_2(v21);
  (*(v22 + 8))(v8 + v20);
  v23 = *(v0 + v4);

  v24 = *(v0 + v5);

  v25 = *(v0 + v6);

  v26 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

BOOL sub_26D14B144(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_26D14B1C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D14B200()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D14B238()
{
  sub_26D14D440();
  v2 = v1;
  OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (type metadata accessor for LineChartModel() - 8);
  v10 = *(*v9 + 80);
  v11 = (v8 + v10 + 8) & ~v10;
  v12 = *(*v9 + 64);
  v13 = v5 | v10;
  v14 = *(v0 + 16);

  (*(v4 + 8))(v0 + v6, v2);

  sub_26D149038();
  OUTLINED_FUNCTION_0_8(v15);
  (*(v16 + 8))(v0 + v11);
  v17 = type metadata accessor for CategoryAxis();
  v18 = *(v0 + v11 + *(v17 + 20));

  v19 = *(v0 + v11 + *(v17 + 24));

  sub_26D142914();
  v21 = v0 + v11 + *(v20 + 52);
  __swift_destroy_boxed_opaque_existential_1((v21 + 16));
  v22 = *(v21 + 56);

  v23 = *(v0 + v11 + v9[7]);

  v24 = *(v0 + v11 + v9[8] + 8);

  v25 = *(v0 + v11 + v9[9] + 8);

  v26 = v9[10];
  v27 = sub_26D173E24();
  OUTLINED_FUNCTION_0_8(v27);
  (*(v28 + 8))(v0 + v11 + v26);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

void *sub_26D14B478@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_26D157C78();
  *a2 = result;
  return result;
}

uint64_t sub_26D14B4C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26D157F68();
  *a2 = result;
  return result;
}

uint64_t sub_26D14B4F8()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26D14B5C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D14B5FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D14B64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26D142914();
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

void sub_26D14B6F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26D142914();
  if (*(*(v8 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_26D14B7A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D14B7D8()
{
  v1 = (type metadata accessor for ColumnChartModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = v0 + v3;
  sub_26D149038();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for CategoryAxis();
  v11 = *(v8 + *(v10 + 20));

  v12 = *(v8 + *(v10 + 24));

  sub_26D142914();
  v14 = v8 + *(v13 + 52);
  __swift_destroy_boxed_opaque_existential_1((v14 + 16));
  v15 = *(v14 + 56);

  v16 = *(v8 + v1[7]);

  v17 = *(v0 + v4);

  v18 = *(v0 + v5 + 8);

  v19 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v2 | 7);
}

uint64_t sub_26D14B980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26D142914();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_26D173E24();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void sub_26D14BA50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26D142914();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return;
    }

    v9 = sub_26D173E24();
    v10 = a1 + *(a4 + 32);
  }

  __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26D14BB48()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26D14BB88(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_26D16BDF0();
  *a2 = v4;
}

uint64_t sub_26D14BBB8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D14BBF0()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_1_14();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26D14BC80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D14BCB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D14BDA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26D14BDF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D14BE40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26D14BE94(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_26D14BF44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_26D14BF9C(uint64_t a1, id *a2)
{
  result = sub_26D174214();
  *a2 = 0;
  return result;
}

uint64_t sub_26D14C014(uint64_t a1, id *a2)
{
  v3 = sub_26D174224();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26D14C0A4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_26D14C0C8(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_26D14C134()
{
  v0 = sub_26D174234();
  v1 = MEMORY[0x26D6B34F0](v0);

  return v1;
}

uint64_t sub_26D14C174()
{
  sub_26D174234();
  sub_26D174244();
}

uint64_t sub_26D14C1E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D14C79C();
  *a1 = result;
  return result;
}

uint64_t sub_26D14C208@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_3();
  *a1 = result;
  return result;
}

uint64_t sub_26D14C230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26D14C094(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26D14C260@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26D150EE4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26D14C290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26D14C09C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26D14C2C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26D14C0A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26D14C2FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26D14C0C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26D14C348@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26D14C0F0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26D14C3B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26D160748();
}

uint64_t sub_26D14C3D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26D14BF44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26D14C3F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D174204();

  *a2 = v5;
  return result;
}

uint64_t sub_26D14C440()
{
  OUTLINED_FUNCTION_1_0();
  result = sub_26D160960();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26D14C468(uint64_t a1)
{
  v2 = sub_26D14C5C4(&qword_2812B75E0, type metadata accessor for Key);
  v3 = sub_26D14C5C4(&qword_2804DD870, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_26D14C524@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26D14C5C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D14C79C()
{
  sub_26D174234();
  v0 = sub_26D174204();

  return v0;
}

uint64_t sub_26D14C7F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26D14C838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LineCap.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

uint64_t sub_26D14C930()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D14C978()
{
  result = qword_2804DD878;
  if (!qword_2804DD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LineCap(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LineCap(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D14CBA0(double a1, double a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = *a4;
  v7 = sub_26D14CCF0();
  result = 0;
  if (v7 || a2 <= 0.0)
  {
    return result;
  }

  sub_26D149038();
  result = sub_26D174024();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a1 / a2;
  if (v6)
  {
    v9 = 1.0 - a1 / a2;
  }

  v10 = round(v9 * (result - 1));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v11 = v10;
  sub_26D14CD84();
  sub_26D174374();
  sub_26D174394();
  v12 = sub_26D174384();
  result = 0;
  if ((v11 & 0x8000000000000000) == 0 && v12 > v11)
  {
    sub_26D174044();
    return v13;
  }

  return result;
}

BOOL sub_26D14CCF0()
{
  sub_26D149038();
  sub_26D14CD84();
  sub_26D174374();
  sub_26D174394();
  return v2 == v1;
}

unint64_t sub_26D14CD84()
{
  result = qword_2812B9DC8;
  if (!qword_2812B9DC8)
  {
    sub_26D149038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B9DC8);
  }

  return result;
}

unint64_t sub_26D14CDDC()
{
  result = qword_2804DD880;
  if (!qword_2804DD880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804DD880);
  }

  return result;
}

uint64_t *LineChartViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t LineChartViewProvider.__deallocating_deinit()
{
  LineChartViewProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void LineChartViewProvider.view(for:style:)(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for LineChartModel() + 20)) + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26D174674();
    v3 = 0;
    v17 = v1;
    do
    {
      v4 = *__swift_project_boxed_opaque_existential_1((v18 + 56), *(v18 + 80));
      v5 = *(sub_26D164EBC(v3) + 64);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_26D14D420(0, v6, 0);
        v7 = v2;
        v8 = (v5 + 40);
        do
        {
          v9 = *(v8 - 1);
          v10 = *v8;
          v12 = *(v7 + 16);
          v11 = *(v7 + 24);

          if (v12 >= v11 >> 1)
          {
            sub_26D14D420((v11 > 1), v12 + 1, 1);
          }

          *(v7 + 16) = v12 + 1;
          v13 = v7 + 16 * v12;
          *(v13 + 32) = v9;
          *(v13 + 40) = v10;
          v8 += 3;
          --v6;
        }

        while (v6);
        v2 = MEMORY[0x277D84F90];
        v1 = v17;
      }

      else
      {
        v7 = v2;
      }

      ++v3;
      v14 = objc_allocWithZone(type metadata accessor for LineSeriesView());
      sub_26D1518F8(v7);

      sub_26D174654();
      v15 = *(v19 + 16);
      sub_26D174684();
      sub_26D174694();
      sub_26D174664();
    }

    while (v3 != v1);
    v2 = v19;
  }

  v16 = objc_allocWithZone(type metadata accessor for LineChartView());
  LineChartView.init(seriesViews:)(v2);
}

uint64_t LineChartViewProvider.present(_:on:attributes:)(uint64_t a1, void *a2, CGFloat *a3)
{
  sub_26D14D440();
  v10 = OUTLINED_FUNCTION_2_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  OUTLINED_FUNCTION_1_2();
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v19 = a3[3];
  memcpy(__dst, a3 + 4, sizeof(__dst));
  v27.origin.x = v16;
  v27.origin.y = v17;
  v27.size.width = v18;
  v27.size.height = v19;
  result = CGRectIsEmpty(v27);
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    OUTLINED_FUNCTION_3_0();
    v22 = *(v21 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v5, v4 + v22, v3);
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    memcpy(v25, __dst, sizeof(v25));
    v23 = *a3;
    sub_26D1552C4(a1, v5, a2, v24);
    return (*(v12 + 8))(v5, v3);
  }

  return result;
}

uint64_t LineChartViewProvider.updateZones(with:view:)(uint64_t a1, void *a2)
{
  sub_26D14D440();
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_1_2();
  v14 = [a2 traitCollection];
  v15 = [v14 layoutDirection];

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  OUTLINED_FUNCTION_3_0();
  v17 = *(v16 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v4, v3 + v17, v2);
  [a2 bounds];
  v22[0] = v18;
  v22[1] = v19;
  v23 = v15 == 1;
  v20 = *v14;
  sub_26D1560E0(v4, a1, a2, v22);
  return (*(v10 + 8))(v4, v2);
}

uint64_t sub_26D14D3B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = LineChartViewProvider.zoneManager.getter();
  *a1 = result;
  return result;
}

char *sub_26D14D400(char *a1, int64_t a2, char a3)
{
  result = sub_26D14D608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D420(char *a1, int64_t a2, char a3)
{
  result = sub_26D14D70C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26D14D440()
{
  if (!qword_2812B7B90)
  {
    sub_26D1434EC();
    sub_26D143558();
    v0 = sub_26D174034();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7B90);
    }
  }
}

char *sub_26D14D508(char *a1, int64_t a2, char a3)
{
  result = sub_26D14D818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26D14D528(void *a1, int64_t a2, char a3)
{
  result = sub_26D14D934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D548(char *a1, int64_t a2, char a3)
{
  result = sub_26D14DA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D568(char *a1, int64_t a2, char a3)
{
  result = sub_26D14DB58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D588(char *a1, int64_t a2, char a3)
{
  result = sub_26D14DC64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D5A8(char *a1, int64_t a2, char a3)
{
  result = sub_26D14DD7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D5C8(char *a1, int64_t a2, char a3)
{
  result = sub_26D14DE98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D5E8(char *a1, int64_t a2, char a3)
{
  result = sub_26D14DFA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D14D608(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2804DD888);
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

char *sub_26D14D70C(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B74E8);
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

char *sub_26D14D818(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B7538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26D14D934(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_26D14E12C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_26D14E184();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D14DA4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B7528);
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

char *sub_26D14DB58(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B7518);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D14DC64(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B7510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D14DD7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B7530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D14DE98(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B7500);
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

char *sub_26D14DFA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D14E1EC(0, &qword_2812B74D8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D14E0BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_26D14E0E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_26D14E10C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

void sub_26D14E12C()
{
  if (!qword_2812B74F8)
  {
    sub_26D14E184();
    v0 = sub_26D1747C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B74F8);
    }
  }
}

void sub_26D14E184()
{
  if (!qword_2812B7638)
  {
    type metadata accessor for LineStyle();
    v0 = sub_26D1741E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7638);
    }
  }
}

void sub_26D14E1EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26D1747C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id SeriesStyle.strokeColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id SeriesStyle.fill.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_26D14E2C4(v2, v3);
}

id sub_26D14E2C4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t SeriesStyle.init(strokeColor:fill:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D14E304(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D14E358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ZoneStyle.init(identifier:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ZoneStyle();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

uint64_t sub_26D14E460(uint64_t a1)
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

uint64_t sub_26D14E4E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_26D14E660(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26D14E8C0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for LineChartModel();
  v17 = v16 - 8;
  v73 = *(v16 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v74 = v20;
  v77 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v75 = a8;
  v76 = v21;
  v22 = *(a8 + *(v17 + 28));
  v23 = *(v22 + 16);
  if (v23)
  {
    v91 = MEMORY[0x277D84F90];

    sub_26D174674();
    v24 = 0;
    v25 = *(v22 + 16);
    v82 = v22 + 32;
    v26 = (v22 + 48);
    v87 = v22;
    do
    {
      if (v25 == v24)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v24 >= *(v22 + 16))
      {
        goto LABEL_34;
      }

      v27 = *(v26 - 1);
      v28 = *v26;
      v29 = *__swift_project_boxed_opaque_existential_1((a9 + 56), *(a9 + 80));

      sub_26D164EBC(v24);

      sub_26D174654();
      v30 = *(v91 + 16);
      sub_26D174684();
      v22 = v87;
      sub_26D174694();
      sub_26D174664();
      v26 += 3;
      ++v24;
    }

    while (v23 != v24);
    v31 = v91;
    v32 = *(v22 + 16);
    v33 = MEMORY[0x277D84F90];
    if (!v32)
    {
LABEL_27:
      v63 = v31;
      goto LABEL_29;
    }

    v91 = MEMORY[0x277D84F90];
    sub_26D14D528(0, v32, 0);
    v34 = v22;
    v35 = 0;
    v33 = v91;
    v36 = *(v34 + 16);
    if (v36 >= v32)
    {
      v36 = v32;
    }

    v80 = a9;
    v81 = v36;
    v78 = v32;
    v79 = v31;
    while (v35 != v81)
    {
      if (v35 >= *(v87 + 16))
      {
        goto LABEL_36;
      }

      v85 = v35 + 1;
      v86 = v33;
      v37 = v82 + 24 * v35;
      v38 = *(v37 + 8);
      v39 = *(v37 + 16);
      v40 = *__swift_project_boxed_opaque_existential_1((a9 + 56), *(a9 + 80));
      v84 = v38;

      v83 = v39;

      v41 = *(sub_26D164EBC(v35) + 64);

      v42 = 0;
      v43 = *(v41 + 16);
      v88 = v41;
      v89 = v43;
      v44 = (v41 + 48);
      v45 = MEMORY[0x277D84F98];
      while (v89 != v42)
      {
        if (v42 >= *(v88 + 16))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v47 = *(v44 - 2);
        v46 = *(v44 - 1);
        v48 = *v44;
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v90 = v45;
        v49 = sub_26D147140();
        if (__OFADD__(v45[2], (v50 & 1) == 0))
        {
          goto LABEL_31;
        }

        v51 = v49;
        v52 = v50;
        sub_26D14F73C(0, &qword_2812B7568, type metadata accessor for LineStyle);
        if (sub_26D1746C4())
        {
          v53 = sub_26D147140();
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_37;
          }

          v51 = v53;
        }

        if (v52)
        {

          v45 = v90;
          v55 = v90[7];
          v56 = *(v55 + 8 * v51);
          *(v55 + 8 * v51) = v48;
        }

        else
        {
          v45 = v90;
          v90[(v51 >> 6) + 8] |= 1 << v51;
          v57 = (v45[6] + 16 * v51);
          *v57 = v47;
          v57[1] = v46;
          *(v45[7] + 8 * v51) = v48;

          v58 = v45[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_32;
          }

          v45[2] = v60;
        }

        v44 += 3;
        ++v42;
      }

      v33 = v86;
      v91 = v86;
      v62 = *(v86 + 16);
      v61 = *(v86 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_26D14D528((v61 > 1), v62 + 1, 1);
        v33 = v91;
      }

      *(v33 + 16) = v62 + 1;
      *(v33 + 8 * v62 + 32) = v45;
      v35 = v85;
      v31 = v79;
      a9 = v80;
      if (v85 == v78)
      {
        goto LABEL_27;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_26D174804();
    __break(1u);
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D84F90];
LABEL_29:
    v89 = sub_26D173F34();
    v64 = v77;
    sub_26D14F5B8(v75, v77);
    v65 = (*(v73 + 80) + 40) & ~*(v73 + 80);
    v66 = (v74 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    v69[2] = a3;
    v69[3] = a4;
    v69[4] = a5;
    sub_26D14F61C(v64, v69 + v65);
    *(v69 + v66) = v63;
    *(v69 + v67) = a9;
    *(v69 + v68) = v33;
    v70 = (v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8));
    v71 = v76;
    *v70 = sub_26D14ACD0;
    v70[1] = v71;

    sub_26D173F24();
  }

  return result;
}

uint64_t sub_26D14EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), CGFloat a6, CGFloat a7, CGFloat a8)
{
  v13 = *(a1 + *(type metadata accessor for LineChartModel() + 20));
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    goto LABEL_38;
  }

  v101 = MEMORY[0x277D84F90];
  sub_26D14D548(0, v14, 0);
  v16 = 0;
  v15 = v101;
  v17 = *(v13 + 16);
  v81 = a2 & 0xC000000000000001;
  v82 = v13 + 32;
  v79 = a4 + 32;
  v80 = *(a4 + 16);
  v75 = a2 + 32;
  v76 = v14;
  if (v17 >= v14)
  {
    v17 = v14;
  }

  v83 = v17;
  v77 = v13;
  v78 = a2;
  while (v16 != v83)
  {
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_43;
    }

    v18 = (v82 + 24 * v16);
    v19 = *(v18 + 1);
    v94 = *v18;
    v20 = v18[2];
    sub_26D1601E0(v16, v81 == 0, a2);
    if (v81)
    {

      v21 = MEMORY[0x26D6B38E0](v16, a2);
    }

    else
    {
      v21 = *(v75 + 8 * v16);
    }

    v22 = __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
    v97 = v94;
    v98 = v19;
    v99 = v20;
    v23 = *v22;
    v24 = sub_26D149098(a6, a7, a8, v20, &v97, v21);
    if (v16 == v80)
    {
      goto LABEL_44;
    }

    v85 = v24;
    v92 = v20;
    v93 = v19;
    v25 = *(v79 + 8 * v16);
    v84 = v16 + 1;
    v26 = v25 + 64;
    v27 = 1 << *(v25 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v25 + 64);
    v86 = v15;
    v87 = (v27 + 63) >> 6;
    v91 = *(v79 + 8 * v16);
    swift_bridgeObjectRetain_n();
    v30 = 0;
    v31 = MEMORY[0x277D84F98];
LABEL_15:
    v32 = v30;
    v89 = v31;
    if (!v29)
    {
      goto LABEL_17;
    }

    do
    {
      v30 = v32;
LABEL_20:
      v33 = __clz(__rbit64(v29)) | (v30 << 6);
      v34 = (*(v91 + 48) + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(*(v91 + 56) + 8 * v33);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v38 = v37;
      if (UIAccessibilityIsBoldTextEnabled())
      {
        v39 = *(v37 + 24) * 1.5;
        v40 = v35;
        v41 = v36;
        v42 = *(v37 + 32);
        v43 = *(v37 + 40);
        v97 = *(v37 + 16);
        v98 = v39;
        v99 = v42;
        v100 = v43;
        v45 = *(v37 + 56);
        v95 = *(v37 + 48);
        v44 = v95;
        v96 = v45;
        v46 = *(v37 + 64);

        v47 = v42;
        v36 = v41;
        v35 = v40;
        sub_26D14E2C4(v44, v45);

        type metadata accessor for LineStyle();
        swift_allocObject();
        v38 = LineStyle.init(stroke:fill:zoneStyles:)(&v97, &v95, v46);
      }

      v29 &= v29 - 1;
      v48 = __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
      v97 = v94;
      v98 = v93;
      v99 = v92;
      v49 = *v48;
      v50 = sub_26D149098(a6, a7, a8, v92, &v97, v38);
      if (v50)
      {
        v54 = v50;
        swift_isUniquelyReferenced_nonNull_native();
        v97 = v89;
        v55 = sub_26D147140();
        if (__OFADD__(*(v89 + 16), (v56 & 1) == 0))
        {
          goto LABEL_45;
        }

        v57 = v55;
        v90 = v56;
        sub_26D14F73C(0, &qword_2812B7548, sub_26D148D08);
        if (sub_26D1746C4())
        {
          v58 = sub_26D147140();
          if ((v90 & 1) != (v59 & 1))
          {
            goto LABEL_47;
          }

          v57 = v58;
          if (v90)
          {
LABEL_34:

            v67 = v97;
            v68 = *(v97 + 56);
            v69 = *(v68 + 8 * v57);
            *(v68 + 8 * v57) = v54;
            v31 = v67;

            goto LABEL_15;
          }
        }

        else if (v90)
        {
          goto LABEL_34;
        }

        v60 = v97;
        *(v97 + 8 * (v57 >> 6) + 64) |= 1 << v57;
        v61 = (*(v60 + 48) + 16 * v57);
        *v61 = v36;
        v61[1] = v35;
        *(*(v60 + 56) + 8 * v57) = v54;
        v31 = v60;

        v62 = *(v31 + 16);
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_46;
        }

        *(v31 + 16) = v64;
        goto LABEL_15;
      }

      v31 = v89;
      v51 = sub_26D147140();
      v53 = v52;

      if (v53)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v97 = v89;
        v65 = *(v89 + 24);
        sub_26D14F73C(0, &qword_2812B7548, sub_26D148D08);
        sub_26D1746C4();
        v31 = v97;
        v66 = *(*(v97 + 48) + 16 * v51 + 8);

        sub_26D148D08();
        sub_26D1746D4();

        goto LABEL_15;
      }

      v32 = v30;
    }

    while (v29);
    while (1)
    {
LABEL_17:
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v30 >= v87)
      {
        break;
      }

      v29 = *(v26 + 8 * v30);
      ++v32;
      if (v29)
      {
        goto LABEL_20;
      }
    }

    v15 = v86;
    v101 = v86;
    v71 = *(v86 + 16);
    v70 = *(v86 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_26D14D548((v70 > 1), v71 + 1, 1);
      v15 = v101;
    }

    *(v15 + 16) = v71 + 1;
    v72 = v15 + 16 * v71;
    *(v72 + 32) = v85;
    *(v72 + 40) = v31;
    v16 = v84;
    v13 = v77;
    a2 = v78;
    if (v84 == v76)
    {
LABEL_38:
      a5(v15);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_26D174804();
  __break(1u);
  return result;
}

uint64_t sub_26D14F554()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_26D14F5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineChartModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D14F61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineChartModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D14F680()
{
  v1 = *(type metadata accessor for LineChartModel() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0 + v3);
  v10 = *(v0 + v4);
  v11 = *(v0 + v5);
  v12 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 1);

  return sub_26D14EE9C(v0 + v2, v9, v10, v11, v13, v6, v7, v8);
}

void sub_26D14F73C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D1746E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26D14F7A0@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v86 = a3;
  v87 = sub_26D173DF4();
  v85 = *(v87 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v87, v7);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v91 = &v84 - v11;
  v12 = 0;
  v94 = 0;
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a1 + 16);
  v16 = (a1 + 32);
  v17 = MEMORY[0x277D84F90];
  v89 = *MEMORY[0x277D740A8];
  v18 = 1.0;
  v92 = v15;
  v93 = (a1 + 32);
LABEL_2:
  if (v12 != v15)
  {
    *&v98 = v17;
    memcpy(__dst, &v16[10 * v12], sizeof(__dst));
    v96 = __dst[3];
    v97 = __dst[4];
    v19 = LOBYTE(__dst[0]);
    ++v12;
    v16 = *(&__dst[0] + 1);
    v20 = *(*(&__dst[0] + 1) + 16);
    sub_26D150B24(__dst, v106);
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
LABEL_4:
    v23 = &v16[2 * v21 + 5];
    while (1)
    {
      if (v20 == v21)
      {
        v106[0] = v98;

        sub_26D161A4C(v22);
        sub_26D150BDC(__dst);

        v17 = v106[0];
        v16 = v93;
        goto LABEL_2;
      }

      v24 = v23;
      if (v21 >= v16[2])
      {
        break;
      }

      ++v21;
      v23 += 16;
      v25 = *v24;
      if (*v24)
      {
        v26 = *(v24 - 1);
        if (v26 != 1.0)
        {
          v95 = v19;
          v27 = v25;
          if ([v27 length] >= 1)
          {
            v28 = [v27 attributesAtIndex:0 effectiveRange:0];
            type metadata accessor for Key(0);
            sub_26D150DF8(&qword_2812B75E0, type metadata accessor for Key);
            v29 = sub_26D1741A4();

            if (*(v29 + 16) && (v30 = sub_26D160964(v89), (v31 & 1) != 0))
            {
              sub_26D150B80(*(v29 + 56) + 32 * v30, v106);

              sub_26D1468AC(0, &qword_2812B75C8, 0x277D74300);
              if (swift_dynamicCast())
              {
                v32 = v104[0];
LABEL_16:
                [v27 boundingRectWithSize:1 options:0 context:{v13, v14}];
                v3 = v33;
                v35 = v34;
                v36 = v14;
                if (v32)
                {
                  v37 = v32;
                  [v37 ascender];
                  v36 = v38;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_26D153268(0, *(v22 + 16) + 1, 1, v22);
                  v22 = v44;
                }

                v40 = *(v22 + 16);
                v39 = *(v22 + 24);
                if (v40 >= v39 >> 1)
                {
                  sub_26D153268(v39 > 1, v40 + 1, 1, v22);
                  v22 = v45;
                }

                *(v22 + 16) = v40 + 1;
                v41 = v22 + 80 * v40;
                *(v41 + 32) = v27;
                *(v41 + 40) = v3;
                *(v41 + 48) = v35;
                *(v41 + 56) = v36;
                *(v41 + 64) = v26;
                v19 = v95;
                *(v41 + 72) = v95;
                v42 = *(v106 + 3);
                *(v41 + 73) = v106[0];
                *(v41 + 76) = v42;
                v43 = v97;
                *(v41 + 80) = v96;
                *(v41 + 96) = v43;
                v15 = v92;
                goto LABEL_4;
              }
            }

            else
            {
            }
          }

          v32 = 0;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_43:

    v57 = MEMORY[0x277D84F90];
LABEL_44:
    v69 = MEMORY[0x277D84F90];
    if (v15)
    {
      v105 = MEMORY[0x277D84F90];
      sub_26D14D568(0, v15, 0);
      v69 = v105;
      do
      {
        v70 = v15;
        memcpy(__dst, v16, sizeof(__dst));
        v71 = BYTE9(__dst[2]);
        v72 = v16;
        v73 = v90[5];
        v74 = v90[6];
        __swift_project_boxed_opaque_existential_1(v90 + 2, v73);
        memcpy(v106, __dst, sizeof(v106));
        *&v99 = v13;
        *(&v99 + 1) = v14;
        v100 = 0uLL;
        v101 = v3;
        v102 = v18;
        v103 = v71;
        v75 = *(v74 + 8);
        sub_26D150B24(__dst, v104);
        v76 = v75(v106, &v99, v73, v74);
        sub_26D150BDC(__dst);
        v105 = v69;
        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_26D14D568((v77 > 1), v78 + 1, 1);
          v69 = v105;
        }

        *(v69 + 16) = v78 + 1;
        *(v69 + 8 * v78 + 32) = v76;
        v16 = v72 + 10;
        v15 = v70 - 1;
      }

      while (v70 != 1);
    }

    v80 = v85;
    v79 = v86;
    *v86 = 0.0;
    v79[1] = 0.0;
    v79[2] = v13;
    v79[3] = v14;
    v79[4] = 0.0;
    v79[5] = 0.0;
    v79[6] = v3;
    v79[7] = v18;
    *(v79 + 8) = v69;
    *(v79 + 9) = v57;
    v81 = *(v80 + 8);
    v82 = v87;
    v81(v88, v87);
    return (v81)(v91, v82);
  }

  v46 = 0;
  v18 = 0.0;
  v3 = 0.0;
  while (1)
  {
    v47 = ~v46;
    v48 = *(v17 + 16) - v46;
    v49 = v17 + 56 + 80 * v46;
    if (!v48)
    {
      break;
    }

    while ((*(v49 + 16) & 1) != 0)
    {
      v50 = *(v49 + 24);
      v51 = *v49;
      v49 += 80;
      v52 = v51 + v50;
      if (v3 <= v52)
      {
        v3 = v52;
      }

      --v47;
      if (!--v48)
      {
        goto LABEL_34;
      }
    }

    v53 = *(v49 + 32);
    v54 = *(v49 - 16);
    if (v18 <= v54 + v53 + *(v49 + 48))
    {
      v18 = v54 + v53 + *(v49 + 48);
    }

    v46 = -v47;
  }

LABEL_34:
  sub_26D173DE4();
  sub_26D173DE4();
  v55 = *(v17 + 16);
  if (!v55)
  {
    goto LABEL_43;
  }

  v105 = MEMORY[0x277D84F90];
  sub_26D14D588(0, v55, 0);
  v56 = v88;
  v57 = v105;
  v58 = v55 - 1;
  for (i = 32; ; i += 80)
  {
    memcpy(__dst, (v17 + i), sizeof(__dst));
    v60 = v17;
    memcpy(v106, (v17 + i), sizeof(v106));
    sub_26D150C30(__dst, v104);
    v61 = v94;
    sub_26D14FF30(v106, v56, v91, &v99, v13, v14, v13 - v18, v14 - v3, 3.0, 0.0, 0.0, v3, v18);
    v94 = v61;
    if (v61)
    {
      break;
    }

    memcpy(v104, v106, sizeof(v104));
    sub_26D150C68(v104);
    v62 = v99;
    v63 = v100;
    v64 = v101;
    v65 = LOBYTE(v102);
    v105 = v57;
    v67 = *(v57 + 16);
    v66 = *(v57 + 24);
    if (v67 >= v66 >> 1)
    {
      v97 = v100;
      v98 = v99;
      sub_26D14D588((v66 > 1), v67 + 1, 1);
      v63 = v97;
      v62 = v98;
      v56 = v88;
      v57 = v105;
    }

    *(v57 + 16) = v67 + 1;
    v68 = v57 + 48 * v67;
    *(v68 + 32) = v62;
    *(v68 + 48) = v63;
    *(v68 + 64) = v64;
    *(v68 + 72) = v65;
    if (!v58)
    {

      v15 = v92;
      v16 = v93;
      goto LABEL_44;
    }

    --v58;
    v17 = v60;
  }

  memcpy(v104, v106, sizeof(v104));
  sub_26D150C68(v104);

  __break(1u);
  return result;
}

void sub_26D14FF30(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, double a6@<D1>, CGFloat a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>, double a13)
{
  v26 = sub_26D173DF4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x50uLL);
  if ((__dst[5] & 1) == 0)
  {
    v47 = *&__dst[1];
    v48 = *&__dst[2];
    v49 = a5 - *&__dst[1] - *&__dst[9];
    v50 = *&__dst[6] + *&__dst[4] * a8;
    v114.origin.x = v49;
    v114.origin.y = v50;
    *&v114.size.width = __dst[1];
    *&v114.size.height = __dst[2];
    v51 = CGRectGetMinY(v114) - a9;
    if (COERCE__INT64(fabs(v51)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v51 > -9.22337204e18)
    {
      if (v51 < 9.22337204e18)
      {
        v115.origin.x = v49;
        v115.origin.y = v50;
        v115.size.width = v47;
        v115.size.height = v48;
        v52 = CGRectGetMaxY(v115) + a9;
        if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v52 > -9.22337204e18)
          {
            if (v52 < 9.22337204e18)
            {
              if ((v52 & ~(v52 >> 63)) >= v51)
              {
                (*(v27 + 16))(v31, a2, v26);
                v53 = sub_26D173D64();
                (*(v27 + 8))(v31, v26);
                if (v53)
                {
                  *(a4 + 32) = 0;
                  *a4 = 0u;
                  *(a4 + 16) = 0u;
                  *(a4 + 40) = 1;
                  return;
                }

                v116.origin.x = v49;
                v116.origin.y = v50;
                v116.size.width = v47;
                v116.size.height = v48;
                MinY = CGRectGetMinY(v116);
                v87 = MinY;
                if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (MinY > -9.22337204e18)
                  {
                    if (MinY < 9.22337204e18)
                    {
                      v117.origin.x = v49;
                      v117.origin.y = v50;
                      v117.size.width = v47;
                      v117.size.height = v48;
                      MaxY = CGRectGetMaxY(v117);
                      if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (MaxY > -9.22337204e18)
                        {
                          if (MaxY < 9.22337204e18)
                          {
                            if (MaxY >= v87)
                            {
                              sub_26D173D84();
                              *a4 = __dst[0];
                              *(a4 + 8) = v49;
                              *(a4 + 16) = v50;
                              *(a4 + 24) = v47;
                              *(a4 + 32) = v48;
                              *(a4 + 40) = 0;
                              sub_26D150C30(__dst, v105);
                              return;
                            }

                            goto LABEL_49;
                          }

LABEL_48:
                          __break(1u);
LABEL_49:
                          __break(1u);
LABEL_50:
                          __break(1u);
                          goto LABEL_51;
                        }

LABEL_47:
                        __break(1u);
                        goto LABEL_48;
                      }

LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }

LABEL_45:
                    __break(1u);
                    goto LABEL_46;
                  }

LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_38;
  }

  v109 = a12;
  v101 = a5;
  v32 = *&__dst[7] + *&__dst[4] * a7 + a11;
  v33 = *&__dst[1];
  v34 = *&__dst[2];
  v100 = a6;
  v110.origin.y = a6 - *&__dst[2];
  v110.origin.x = v32;
  *&v104 = a6 - *&__dst[2];
  *&v110.size.width = __dst[1];
  *&v110.size.height = __dst[2];
  MinX = CGRectGetMinX(v110);
  v103 = v13;
  v102 = a4;
  if (MinX == 1.79769313e308 || (*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v111.origin.x = v32, *&v111.origin.y = v104, v111.size.width = v33, v111.size.height = v34, MaxX = CGRectGetMaxX(v111), MaxX == 1.79769313e308) || (*&MaxX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v95 = a13;
    v97 = sub_26D174404();
    sub_26D150C98();
    v99 = v54;
    v55 = swift_allocObject();
    v98 = xmmword_26D175EA0;
    *(v55 + 16) = xmmword_26D175EA0;
    v106 = 0.0;
    v107 = -2.68156159e154;
    v105[0] = v32;
    *&v105[1] = v104;
    v105[2] = v33;
    v105[3] = v34;
    type metadata accessor for CGRect(0);
    v96 = v56;
    sub_26D1746A4();
    v57 = v106;
    v58 = v107;
    v59 = MEMORY[0x277D837D0];
    *(v55 + 56) = MEMORY[0x277D837D0];
    v60 = sub_26D150D4C();
    *(v55 + 64) = v60;
    *(v55 + 32) = v57;
    *(v55 + 40) = v58;
    v106 = 0.0;
    v107 = -2.68156159e154;
    v94 = a10;
    v105[0] = a10;
    v105[1] = a11;
    v105[2] = v109;
    v105[3] = a13;
    type metadata accessor for UIEdgeInsets(0);
    v93[1] = v61;
    sub_26D1746A4();
    v62 = v106;
    v63 = v107;
    *(v55 + 96) = v59;
    *(v55 + 104) = v60;
    *(v55 + 72) = v62;
    *(v55 + 80) = v63;
    v106 = 0.0;
    v107 = -2.68156159e154;
    memcpy(v105, __dst, sizeof(v105));
    sub_26D1746A4();
    v64 = v106;
    v65 = v107;
    *(v55 + 136) = v59;
    *(v55 + 144) = v60;
    *(v55 + 112) = v64;
    *(v55 + 120) = v65;
    v105[0] = 0.0;
    v105[1] = -2.68156159e154;
    v66 = v101;
    v67 = v100;
    v106 = v101;
    v107 = v100;
    sub_26D1746A4();
    v68 = v105[0];
    v69 = v105[1];
    *(v55 + 176) = v59;
    *(v55 + 184) = v60;
    *(v55 + 152) = v68;
    *(v55 + 160) = v69;
    v105[0] = 0.0;
    v105[1] = -2.68156159e154;
    v106 = a7;
    v107 = a8;
    type metadata accessor for CGSize(0);
    sub_26D1746A4();
    v70 = v105[0];
    v71 = v105[1];
    *(v55 + 216) = v59;
    *(v55 + 224) = v60;
    *(v55 + 192) = v70;
    *(v55 + 200) = v71;
    sub_26D1468AC(0, &qword_2804DD880, 0x277D86200);
    v72 = sub_26D1744B4();
    sub_26D174164();

    sub_26D174414();
    v73 = swift_allocObject();
    *(v73 + 16) = v98;
    v106 = 0.0;
    v107 = -2.68156159e154;
    v105[0] = v32;
    *&v105[1] = v104;
    v105[2] = v33;
    v105[3] = v34;
    sub_26D1746A4();
    v74 = v106;
    v75 = v107;
    *(v73 + 56) = v59;
    *(v73 + 64) = v60;
    *(v73 + 32) = v74;
    *(v73 + 40) = v75;
    v106 = 0.0;
    v107 = -2.68156159e154;
    v105[0] = v94;
    v105[1] = a11;
    v105[2] = v109;
    v105[3] = v95;
    sub_26D1746A4();
    v76 = v106;
    v77 = v107;
    *(v73 + 96) = v59;
    *(v73 + 104) = v60;
    *(v73 + 72) = v76;
    *(v73 + 80) = v77;
    v106 = 0.0;
    v107 = -2.68156159e154;
    memcpy(v105, __dst, sizeof(v105));
    sub_26D1746A4();
    v78 = v106;
    v79 = v107;
    *(v73 + 136) = v59;
    *(v73 + 144) = v60;
    *(v73 + 112) = v78;
    *(v73 + 120) = v79;
    v105[0] = 0.0;
    v105[1] = -2.68156159e154;
    v106 = v66;
    v107 = v67;
    sub_26D1746A4();
    v80 = v105[0];
    v81 = v105[1];
    *(v73 + 176) = v59;
    *(v73 + 184) = v60;
    *(v73 + 152) = v80;
    *(v73 + 160) = v81;
    v105[0] = 0.0;
    v105[1] = -2.68156159e154;
    v106 = a7;
    v107 = a8;
    sub_26D1746A4();
    v82 = v105[0];
    v83 = v105[1];
    *(v73 + 216) = v59;
    *(v73 + 224) = v60;
    *(v73 + 192) = v82;
    *(v73 + 200) = v83;
    v84 = sub_26D1744B4();
    sub_26D174164();

    v85 = v102;
    v102[4] = 0;
    *v85 = 0u;
    *(v85 + 1) = 0u;
    *(v85 + 40) = 1;
    return;
  }

  v112.origin.x = v32;
  *&v112.origin.y = v104;
  v112.size.width = v33;
  v112.size.height = v34;
  v37 = CGRectGetMinX(v112) + -3.0;
  if (COERCE__INT64(fabs(v37)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v113.origin.x = v32;
  *&v113.origin.y = v104;
  v113.size.width = v33;
  v113.size.height = v34;
  v38 = CGRectGetMaxX(v113) + 3.0;
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v39 = v37 & ~(v37 >> 63);
  v40 = v38 & ~(v38 >> 63);
  if (v40 >= v37)
  {
    (*(v27 + 16))(v31, a3, v26);
    *&v105[0] = v37 & ~(v37 >> 63);
    *&v105[1] = v40;
    sub_26D150DA0();
    sub_26D150DF8(&qword_2812B7620, sub_26D150DA0);
    v89 = sub_26D173D74();
    (*(v27 + 8))(v31, v26);
    if ((v89 & 1) == 0)
    {
      v118.origin.x = v32;
      *&v118.origin.y = v104;
      v118.size.width = v33;
      v118.size.height = v34;
      if (CGRectGetMaxX(v118) < v101)
      {
        *&v105[0] = v37 & ~(v37 >> 63);
        *&v105[1] = v40;
        sub_26D173D94();
        v90 = v102;
        *v102 = __dst[0];
        v91 = v104;
        v90[1] = v32;
        *(v90 + 2) = v91;
        v90[3] = v33;
        v90[4] = v34;
        *(v90 + 40) = 0;
        sub_26D150C30(__dst, v105);
        return;
      }
    }
  }

  else
  {
    sub_26D174404();
    sub_26D150C98();
    v41 = swift_allocObject();
    v104 = xmmword_26D175E90;
    *(v41 + 16) = xmmword_26D175E90;
    v42 = MEMORY[0x277D83B88];
    v43 = MEMORY[0x277D83C10];
    *(v41 + 56) = MEMORY[0x277D83B88];
    *(v41 + 64) = v43;
    *(v41 + 32) = v39;
    *(v41 + 96) = v42;
    *(v41 + 104) = v43;
    *(v41 + 72) = v40;
    sub_26D1468AC(0, &qword_2804DD880, 0x277D86200);
    v44 = sub_26D1744B4();
    sub_26D174164();

    sub_26D174414();
    v45 = swift_allocObject();
    *(v45 + 16) = v104;
    *(v45 + 56) = v42;
    *(v45 + 64) = v43;
    *(v45 + 32) = v39;
    *(v45 + 96) = v42;
    *(v45 + 104) = v43;
    *(v45 + 72) = v40;
    v46 = sub_26D1744B4();
    sub_26D174164();
  }

  v92 = v102;
  v102[4] = 0;
  *v92 = 0u;
  *(v92 + 1) = 0u;
  *(v92 + 40) = 1;
}

uint64_t sub_26D150B80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26D150C98()
{
  if (!qword_2804DD890)
  {
    sub_26D150CF0();
    v0 = sub_26D1747C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DD890);
    }
  }
}

unint64_t sub_26D150CF0()
{
  result = qword_2804DD898;
  if (!qword_2804DD898)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804DD898);
  }

  return result;
}

unint64_t sub_26D150D4C()
{
  result = qword_2804DD8A0;
  if (!qword_2804DD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD8A0);
  }

  return result;
}

void sub_26D150DA0()
{
  if (!qword_2812B7628)
  {
    v0 = sub_26D1741F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7628);
    }
  }
}

uint64_t sub_26D150DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D150E40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26D150E80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t InteractionCursor.series.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_26D150F70(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  result = type metadata accessor for Series();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D15100C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 24) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_26D15118C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 24] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t InteractionManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InteractionManager.__deallocating_deinit()
{
  InteractionManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26D1514B4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26D151558@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8C78);
  result = sub_26D173EF4();
  if (v12)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B8BC0);
    result = sub_26D173EF4();
    if (v10)
    {
      v7 = type metadata accessor for SparklineCoordinateProvider();
      v8 = swift_allocObject();
      sub_26D146174(&v11, v8 + 16);
      result = sub_26D146174(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &protocol witness table for SparklineCoordinateProvider;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D151670(uint64_t a1, unsigned int a2)
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

uint64_t sub_26D1516C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D151738@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *(v3 + 16);
}

uint64_t sub_26D151784()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id LineSeriesView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LineSeriesView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  type metadata accessor for LineView();
  *(v0 + v1) = sub_26D1741B4();
  sub_26D1746F4();
  __break(1u);
}

uint64_t sub_26D1518F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  v4 = type metadata accessor for LineView();
  *&v1[v3] = sub_26D1741B4();
  v32 = v4;
  v5 = [objc_allocWithZone(v4) init];
  *&v1[OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView] = v5;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for LineSeriesView();
  v6 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView];
  v8 = v6;
  [v8 addSubview_];
  v9 = 0;
  v33 = *(a1 + 16);
  v34 = a1;
  v10 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  v11 = (a1 + 40);
  while (1)
  {
    if (v33 == v9)
    {

      return v8;
    }

    if (v9 >= *(v34 + 16))
    {
      break;
    }

    v35 = v11;
    v36 = v9;
    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = objc_allocWithZone(v32);

    v15 = [v14 init];
    [v15 setHidden_];
    [v8 addSubview_];
    swift_beginAccess();
    v16 = v15;
    v17 = *&v8[v10];
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v8[v10];
    *&v8[v10] = 0x8000000000000000;
    v19 = sub_26D147140();
    if (__OFADD__(v18[2], (v20 & 1) == 0))
    {
      goto LABEL_15;
    }

    v21 = v19;
    v22 = v20;
    sub_26D151EF4();
    if (sub_26D1746C4())
    {
      v23 = sub_26D147140();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_17;
      }

      v21 = v23;
    }

    if (v22)
    {
      v25 = v18[7];
      v26 = *(v25 + 8 * v21);
      *(v25 + 8 * v21) = v16;
    }

    else
    {
      v18[(v21 >> 6) + 8] |= 1 << v21;
      v27 = (v18[6] + 16 * v21);
      *v27 = v13;
      v27[1] = v12;
      *(v18[7] + 8 * v21) = v16;
      v28 = v18[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_16;
      }

      v18[2] = v30;
    }

    *&v8[v10] = v18;
    swift_endAccess();

    v11 = v35 + 2;
    v9 = v36 + 1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_26D174804();
  __break(1u);
  return result;
}

uint64_t sub_26D151BC4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LineSeriesView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v6; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(v3 + 48) + 16 * v12 + 8);
    v14 = *(*(v3 + 56) + 8 * v12);

    v15 = v14;
    [v0 bounds];
    [v15 setFrame_];
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id LineSeriesView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LineSeriesView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LineSeriesView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26D151EF4()
{
  if (!qword_2812B7570)
  {
    type metadata accessor for LineView();
    v0 = sub_26D1746E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7570);
    }
  }
}

uint64_t sub_26D151F5C(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_26D14D5A8(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 88)
  {
    memcpy(__dst, i, 0x58uLL);
    memcpy(__src, i, sizeof(__src));
    sub_26D1528A8(__dst, v14);
    a1(v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v14, __src, sizeof(v14));
    sub_26D15295C(v14);
    memcpy(v13, v16, sizeof(v13));
    v18 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_26D14D5A8((v10 > 1), v11 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v11 + 1;
    memcpy((v6 + 80 * v11 + 32), v13, 0x50uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, sizeof(v14));
  sub_26D15295C(v14);

  __break(1u);
  return result;
}

uint64_t sub_26D1520E0(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_26D14D5C8(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; ++i)
  {
    v16 = *i;
    a1(v17, &v16);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v17[0];
    v11 = v17[1];
    v18 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_26D14D5C8((v12 > 1), v13 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t ValueAxisGridViewModelGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t ValueAxisGridViewModelGenerator.models(for:orientation:options:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  if (*(a1 + 8) > *a1 && *a3 > 0.0)
  {
    v5 = *(a3 + 8);
    v6 = *a2;
    v7 = *(a1 + 56);
    v8 = MEMORY[0x28223BE20](a1, a2);
    v14[2] = v3;
    v14[3] = v9;
    v15 = v10;
    v16 = v8;
    v17 = v11;
    v18 = v11;
    v12 = v11;
    v4 = sub_26D151F5C(sub_26D152840, v14, v7);
  }

  return v4;
}

double sub_26D152324@<D0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v14 = *a1;
  v15 = a2[5];
  v16 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v15);
  v20 = (a4 & 1) == 0;
  v17 = (*(v16 + 8))(a3, &v20, v15, v16, v14, a8);
  if (a5)
  {
    v18 = sub_26D154824(a6, v14);
  }

  else
  {
    v18 = 0;
  }

  result = v17 / a8;
  *a7 = v17 / a8;
  *(a7 + 8) = v18;
  return result;
}

uint64_t sub_26D152408(void (*a1)(uint64_t *__return_ptr, double *), double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_26D152A50(a2, a3, a4);
  v36 = MEMORY[0x277D84F90];
  sub_26D14D5C8(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_32;
  }

  v12 = v36;
  if (!v10)
  {
    v31 = 0;
    v13 = 0;
    v15 = a2;
    goto LABEL_17;
  }

  v31 = 0;
  v13 = 0;
  v11.n128_f64[0] = a2;
  v30 = a1;
  do
  {
    v14 = v11.n128_f64[0] <= a3;
    if (a4 > 0.0)
    {
      v14 = v11.n128_f64[0] >= a3;
    }

    if (v14)
    {
      if (v31 & 1 | (v11.n128_f64[0] != a3))
      {
        goto LABEL_31;
      }

      v31 = 1;
      v15 = v11.n128_f64[0];
    }

    else
    {
      v16 = __OFADD__(v13++, 1);
      if (v16)
      {
        goto LABEL_30;
      }

      v15 = a2 + v13 * a4;
    }

    v32 = v11.n128_f64[0];
    v33 = 0;
    v30(&v34, &v32);
    if (v5)
    {
      goto LABEL_33;
    }

    v5 = 0;
    v17 = v34;
    v18 = v35;
    v36 = v12;
    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_26D14D5C8((v19 > 1), v20 + 1, 1);
      v12 = v36;
    }

    *(v12 + 16) = v20 + 1;
    v21 = v12 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v11.n128_f64[0] = v15;
    --v10;
    a1 = v30;
  }

  while (v10);
  while (1)
  {
LABEL_17:
    v22 = v15 <= a3;
    if (a4 > 0.0)
    {
      v22 = v15 >= a3;
    }

    if (!v22)
    {
      break;
    }

    if ((v15 != a3) | v31 & 1)
    {
      return v12;
    }

    v31 = 1;
    v23 = v15;
LABEL_24:
    v32 = v15;
    (a1)(&v34, &v32, v11);
    if (v5)
    {
      goto LABEL_33;
    }

    v5 = 0;
    v24 = v34;
    v25 = v35;
    v36 = v12;
    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_26D14D5C8((v26 > 1), v27 + 1, 1);
      v12 = v36;
    }

    *(v12 + 16) = v27 + 1;
    v28 = v12 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    v15 = v23;
  }

  v16 = __OFADD__(v13++, 1);
  if (!v16)
  {
    v11.n128_f64[0] = v13;
    v23 = a2 + v13 * a4;
    goto LABEL_24;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:

  __break(1u);
  return result;
}

uint64_t sub_26D15269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41 = v8;
  v9 = *(a1 + 64);
  v42 = *(a1 + 48);
  v43 = v9;
  v10 = *(a1 + 80);
  if ((v7 & 1) == 0)
  {
    v13 = MEMORY[0x28223BE20](a1, a2);
    v32 = v14;
    v33 = v15;
    v11 = v16 & 1;
    v34 = v16 & 1;
    v35 = v13;
    v36 = v17;
    v37 = v10;
    v38 = v18;

    v19 = sub_26D1520E0(sub_26D152ABC, &v31, v6);
LABEL_6:
    v12 = v19;

    goto LABEL_7;
  }

  if (*&v6 != 0.0)
  {
    v20 = *a3;
    v21 = a3[1];
    v22 = MEMORY[0x28223BE20](a1, a2);
    v32 = v23;
    v33 = v24;
    v11 = v25 & 1;
    v34 = v25 & 1;
    v35 = v22;
    v36 = v26;
    v37 = v10;
    v38 = v27;

    v19 = sub_26D152408(sub_26D1529B8, v20, v21, *&v6);
    goto LABEL_6;
  }

  v11 = a4 & 1;
  v12 = MEMORY[0x277D84F90];
LABEL_7:
  *a5 = v11;
  *(a5 + 8) = v12;
  v28 = v41;
  *(a5 + 16) = v40;
  *(a5 + 32) = v28;
  v29 = v43;
  *(a5 + 48) = v42;
  *(a5 + 64) = v29;
  return sub_26D1529D0(&v40, v39);
}

uint64_t sub_26D1528A8(uint64_t a1, uint64_t a2)
{
  sub_26D15290C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26D15290C()
{
  if (!qword_2812B77D0)
  {
    v0 = type metadata accessor for Grid();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B77D0);
    }
  }
}

uint64_t sub_26D15295C(uint64_t a1)
{
  sub_26D15290C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D152A50(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  while (1)
  {
    v7 = v6 <= a2;
    if (a3 > 0.0)
    {
      v7 = v6 >= a2;
    }

    if (v7)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
      goto LABEL_9;
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      break;
    }

    v6 = a1 + v5 * a3;
LABEL_9:
    v8 = __OFADD__(result++, 1);
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t LineChartInteractor.__allocating_init(categoryCoordinateCalculator:valueCoordinateCalculator:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  LineChartInteractor.init(categoryCoordinateCalculator:valueCoordinateCalculator:)(a1, a2);
  return v4;
}

uint64_t LineChartInteractor.init(categoryCoordinateCalculator:valueCoordinateCalculator:)(uint64_t *a1, uint64_t *a2)
{
  sub_26D146A14(a1, v2 + 16);
  sub_26D146A14(a2, v2 + 56);
  v5 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v2 + 96) = v5 == 1;
  return v2;
}

uint64_t LineChartInteractor.dataPoint(for:model:size:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(v6 + 96))
  {
    v12 = a5 - a3;
  }

  else
  {
    v12 = a3;
  }

  v13 = *(v6 + 40);
  v14 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v13);
  LOBYTE(v72[0]) = 0;
  result = (*(v14 + 16))(a1, v72, v13, v14, v12, a5);
  if (v16)
  {
    v17 = result;
    v18 = v16;
    v65 = a2;
    v19 = *(v6 + 80);
    v20 = *(v6 + 88);
    __swift_project_boxed_opaque_existential_1((v6 + 56), v19);
    sub_26D142914();
    v22 = *(v21 + 52);
    LOBYTE(v72[0]) = 1;
    v23 = (*(v20 + 16))(a1 + v22, v72, v19, v20, a4, a6);
    result = type metadata accessor for LineChartModel();
    v24 = 0;
    v25 = *(a1 + *(result + 20));
    v67 = v25;
    v69 = *(v25 + 16);
    v66 = v25 + 32;
    v26 = MEMORY[0x277D84F90];
LABEL_6:
    while (v24 != v69)
    {
      if (v24 >= *(v67 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v27 = v26;
      v28 = (v66 + 24 * v24);
      v29 = v28[1];
      v71 = *v28;
      v30 = v28[2];
      ++v24;
      v31 = (v30 + 48);
      v32 = *(v30 + 16) + 1;
      while (1)
      {
        v33 = v31 + 3;
        if (!--v32)
        {
          v26 = v27;
          goto LABEL_6;
        }

        v35 = *(v31 - 2);
        v34 = *(v31 - 1);
        v36 = *v31;
        if (v35 == v17 && v18 == v34)
        {
          break;
        }

        v38 = *(v31 - 2);
        v39 = *(v31 - 1);
        result = sub_26D1747E4();
        v31 = v33;
        if (result)
        {
          goto LABEL_18;
        }
      }

      v35 = v17;
LABEL_18:

      v40 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26D153290(0, *(v27 + 16) + 1, 1, v27);
        v40 = result;
      }

      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v43 = v40;
      if (v42 >= v41 >> 1)
      {
        result = sub_26D153290(v41 > 1, v42 + 1, 1, v40);
        v43 = result;
      }

      *(v43 + 16) = v42 + 1;
      v26 = v43;
      v44 = (v43 + 48 * v42);
      v44[4] = v71;
      v44[5] = v29;
      v44[6] = v30;
      v44[7] = v35;
      v44[8] = v34;
      v44[9] = v36;
    }

    v74 = 0;
    v75 = 0;
    v73 = v26;
    sub_26D153098(v72);
    if (!v72[2])
    {

      result = sub_26D1533AC(v72[0], v72[1], 0);
      v65[1] = 0u;
      v65[2] = 0u;
      *v65 = 0u;
      return result;
    }

    v45 = v72[0];
    v46 = *&v72[6];
    v47 = v73;
    v48 = v74;
    v49 = *(v73 + 16);
    v50 = v75;
    result = swift_bridgeObjectRetain_n();
LABEL_25:
    v51 = 0;
    v52 = vabdd_f64(v46, v23);
    v53 = (v47 + 48 * v48);
    while (v49 - v48 != v51)
    {
      if (v48 < 0)
      {
        goto LABEL_38;
      }

      if ((v48 + v51) >= *(v47 + 16))
      {
        goto LABEL_39;
      }

      v54 = v50 + v51 + 1;
      if (__OFADD__(v50 + v51, 1))
      {
        goto LABEL_40;
      }

      v46 = v53[9];
      ++v51;
      v53 += 6;
      if (vabdd_f64(v46, v23) < v52)
      {
        v68 = v49;
        v70 = v26;
        v55 = *(v53 + 2);
        v57 = *(v53 - 1);
        v56 = *v53;

        v45 = v50 + v51 - 1;
        v48 += v51;
        v50 = v54;
        v49 = v68;
        v26 = v70;
        goto LABEL_25;
      }
    }

    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    if (v45 < *(v26 + 16))
    {
      v58 = (v26 + 48 * v45);
      v59 = v58[4];
      v60 = v58[5];
      v62 = v58[6];
      v61 = v58[7];
      v63 = v58[8];
      v64 = v58[9];

      *v65 = v59;
      *(v65 + 1) = v60;
      *(v65 + 2) = v62;
      *(v65 + 3) = v61;
      *(v65 + 4) = v63;
      *(v65 + 5) = v64;
      return result;
    }

LABEL_42:
    __break(1u);
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t LineChartInteractor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t LineChartInteractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 97, 7);
}

void sub_26D153098(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = (*v1 + 48 * v2);
  v6 = v4[4];
  v5 = v4[5];
  v8 = v4[6];
  v7 = v4[7];
  v10 = v4[8];
  v9 = v4[9];
  v1[1] = v2 + 1;
  v11 = v1[2];
  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v11 + 1;
  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
}

void sub_26D153190()
{
  OUTLINED_FUNCTION_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      sub_26D14E1EC(0, &qword_2812B7538);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 48);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_1();
        sub_26D14E0BC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_5();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26D153290(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_26D1539BC(0, &qword_2812B7520, sub_26D153A10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26D14E0BC((a4 + 32), v8, (v10 + 32));
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

    sub_26D153A10();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1533AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_26D153400()
{
  result = qword_2812B9A90;
  if (!qword_2812B9A90)
  {
    type metadata accessor for LineChartModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B9A90);
  }

  return result;
}

void sub_26D1534AC(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
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
      sub_26D14E1EC(0, a5);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 80);
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

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_5();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_5();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26D1535AC()
{
  OUTLINED_FUNCTION_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      sub_26D14E1EC(0, &qword_2812B7500);
      v9 = OUTLINED_FUNCTION_8();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_3_1();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_1();
        sub_26D14AEE4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_5();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26D1536A4(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(void, void, void), void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_26D153964(0, a5, a6, a7);
      v16 = OUTLINED_FUNCTION_8();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_3_1();
      v16[2] = v14;
      v16[3] = v17;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v16 + 4, (a4 + 32), 16 * v14);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_5();
  if (!v12)
  {
    OUTLINED_FUNCTION_0_5();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26D153784()
{
  OUTLINED_FUNCTION_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      sub_26D14E1EC(0, &qword_2812B74E0);
      v9 = OUTLINED_FUNCTION_8();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 8);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_1();
        sub_26D14E10C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_5();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26D153850()
{
  OUTLINED_FUNCTION_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      sub_26D1539BC(0, &qword_2804DD8B8, sub_26D15391C);
      v9 = OUTLINED_FUNCTION_8();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_3_1();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_1();
        sub_26D14AEE4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_26D15391C();
    OUTLINED_FUNCTION_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_5();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_26D15391C()
{
  result = qword_2804DD8C0;
  if (!qword_2804DD8C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2804DD8C0);
  }

  return result;
}

void sub_26D153964(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void, void))
{
  if (!*a2)
  {
    sub_26D153A94(255, a3, a4);
    v5 = sub_26D1747C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26D1539BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D1747C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26D153A10()
{
  if (!qword_2812B79F8[0])
  {
    sub_26D142E14();
    sub_26D142E68();
    sub_26D142EBC();
    v0 = type metadata accessor for InteractionCursor();
    if (!v1)
    {
      atomic_store(v0, qword_2812B79F8);
    }
  }
}

void sub_26D153A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_allocObject();
}

uint64_t FrameworkAssembly.__allocating_init()()
{
  v0 = swift_allocObject();
  FrameworkAssembly.init()();
  return v0;
}

uint64_t FrameworkAssembly.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FrameworkAssembly.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for LayoutOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LayoutOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}