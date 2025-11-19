uint64_t sub_26A30A3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A30A460(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCoreChart();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ProtoCoreChartElement.chart.getter@<X0>(_OWORD *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_2_41();
  sub_26A30A3F0(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for _ProtoCoreChart();
  v10 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v10, v11, v9);
  if (!v12)
  {
    return sub_26A14BF4C(v2, a1);
  }

  *a1 = xmmword_26A426400;
  v13 = a1 + *(v9 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_37(v14, v15, v9);
  if (!v12)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t sub_26A30A5A0(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCoreChart();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A14BEAC(a1, v5);
  return _ProtoCoreChartElement.chart.setter(v5);
}

uint64_t _ProtoCoreChartElement.chart.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCoreChartElement() + 24);
  sub_26A13440C();
  sub_26A14BF4C(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoCoreChart();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*_ProtoCoreChartElement.chart.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoCoreChart();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoCoreChartElement() + 24);
  *(v3 + 10) = v11;
  sub_26A30A3F0(v1 + v11, v6);
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v12)
  {
    *v10 = xmmword_26A426400;
    v13 = v10 + *(v7 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A14BF4C(v6, v10);
  }

  return sub_26A30A808;
}

void sub_26A30A808(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_26A14BEAC((*a1)[4], v4);
    sub_26A13440C();
    sub_26A14BF4C(v4, v8 + v3);
    OUTLINED_FUNCTION_70();
    sub_26A30A460(v5);
  }

  else
  {
    sub_26A13440C();
    sub_26A14BF4C(v5, v8 + v3);
    OUTLINED_FUNCTION_70();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t _ProtoCoreChartElement.hasChart.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_2_41();
  sub_26A30A3F0(v0 + *(v6 + 24), v1);
  type metadata accessor for _ProtoCoreChart();
  v7 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_26A13440C();
  return v11;
}

Swift::Void __swiftcall _ProtoCoreChartElement.clearChart()()
{
  v1 = *(type metadata accessor for _ProtoCoreChartElement() + 24);
  sub_26A13440C();
  v2 = type metadata accessor for _ProtoCoreChart();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t _ProtoCoreChartElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t _ProtoCoreChartElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoCoreChartElement() + 20);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoCoreChartElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCoreChartElement() + 20);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*_ProtoCoreChartElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoCoreChartElement() + 20);
  return nullsub_1;
}

uint64_t sub_26A30AB90()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372538);
  __swift_project_value_buffer(v0, qword_280372538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "chart";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoCoreChartElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C550 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoCoreChartElement.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A1FD7CC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A30AE74();
    }
  }

  return result;
}

uint64_t sub_26A30AE74()
{
  v0 = *(type metadata accessor for _ProtoCoreChartElement() + 24);
  type metadata accessor for _ProtoCoreChart();
  sub_26A30B61C();
  return sub_26A424944();
}

uint64_t _ProtoCoreChartElement.traverse<A>(visitor:)()
{
  v2 = v0;
  result = sub_26A30AFEC(v0);
  if (!v1)
  {
    v4 = *v0;
    if (*(*v2 + 16))
    {
      sub_26A11EF50();
      sub_26A4249D4();
    }

    v5 = v2 + *(type metadata accessor for _ProtoCoreChartElement() + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A30AFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoCoreChart();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoCoreChartElement();
  sub_26A30A3F0(a1 + *(v10 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A14BF4C(v5, v9);
  sub_26A30B61C();
  sub_26A424A84();
  return sub_26A30A460(v9);
}

uint64_t _ProtoCoreChartElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCoreChartElement();
  sub_26A30B61C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A30B2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30B61C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A30B3C8(uint64_t a1)
{
  v2 = sub_26A30B61C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A30B480()
{
  sub_26A30B61C();

  return sub_26A4249B4();
}

void sub_26A30B528()
{
  sub_26A11FDC8();
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      sub_26A30B5C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A30B5C4()
{
  if (!qword_28157AB68[0])
  {
    type metadata accessor for _ProtoCoreChart();
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, qword_28157AB68);
    }
  }
}

unint64_t sub_26A30B61C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return type metadata accessor for _ProtoCoreChartElement();
}

uint64_t _ProtoVisualization_Map.mapProperty.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Map(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoVisualization_Map.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Map.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Map(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Map.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Map.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Map(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Map.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A30BB4C()
{
  v1 = OUTLINED_FUNCTION_53();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A30BBE0(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142();
  v5 = *v3;
  v4 = v3[1];

  return v5;
}

uint64_t _ProtoVisualization_Map.mapProperty.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036CAE8, &unk_26A426430);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Map.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Map.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Map.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &off_28036C7C0, &off_26A427400);
  return swift_endAccess();
}

uint64_t sub_26A30C098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a4(0);
    OUTLINED_FUNCTION_100_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_5_3();
    v16 = a5(v18);
    *(v10 + v13) = v16;
  }

  v19 = (v16 + *a6);
  swift_beginAccess();
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;
}

uint64_t _ProtoVisualization_Map.hasMapProperty.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Chart.visual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Chart(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Chart.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Chart(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Chart.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Chart(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A30C684@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_141_0();
  v12 = a1(0);
  OUTLINED_FUNCTION_97_0(v12);
  v13 = *a2;
  OUTLINED_FUNCTION_142();
  sub_26A1F9BEC(v3 + v13, v4, &off_28036C7C0, &off_26A427400);
  v14 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_37(v4, 1, v14);
  if (!v15)
  {
    return sub_26A30BB4C();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  v16 = a3 + *(v14 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_37(v4, 1, v14);
  if (!v15)
  {
    return sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.visual.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036CAE8, &unk_26A426430);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &off_28036C7C0, &off_26A427400);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.hasVisual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

void _ProtoVisualization_Chart.visual.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearVisual()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
}

uint64_t sub_26A30CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  sub_26A3130B0();
  return a7(v7);
}

void _ProtoVisualization_Chart.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Chart.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Chart.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
}

uint64_t sub_26A30D5E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Chart.componentName.setter();
}

uint64_t _ProtoVisualization_Chart.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30D6D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Chart.linkIdentifier.setter();
}

uint64_t _ProtoVisualization_Chart.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoVisualization_Image.visual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Image(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoVisualization_Image.visual.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036CAE8, &unk_26A426430);
  return swift_endAccess();
}

void _ProtoVisualization_Image.visual.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasVisual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearVisual()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
}

uint64_t _ProtoVisualization_Image.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Image(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Image.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

void _ProtoVisualization_Image.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

uint64_t _ProtoVisualization_Image.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoVisualization_Image(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Image.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

void _ProtoVisualization_Image.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

uint64_t _ProtoVisualization_Image.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_82_8();
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v13, v14, &off_28036C7C0, &off_26A427400);
  return swift_endAccess();
}

void _ProtoVisualization_Image.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
}

uint64_t sub_26A30E97C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Image.componentName.setter();
}

uint64_t _ProtoVisualization_Image.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30EAD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Image.linkIdentifier.setter();
}

uint64_t _ProtoVisualization_Image.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30EC64@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void _ProtoVisualization_Map.mapProperty.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearMapProperty()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
}

void _ProtoVisualization_Map.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Map.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Map.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A30F49C(uint64_t a1, char a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A3130B0();
    a3(v6);
    sub_26A313104(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v9);

  free(v5);
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v12);
  v13 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v13, v14, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
}

uint64_t sub_26A30F614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Map.componentName.setter();
}

uint64_t _ProtoVisualization_Map.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30F704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Map.linkIdentifier.setter();
}

uint64_t _ProtoVisualization_Map.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void sub_26A30F7F4()
{
  OUTLINED_FUNCTION_76();
  v5 = *v0;
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 56);
  if (v8)
  {
    v9 = v4;
    v10 = *(v5 + 64);
    v11 = *(*v0 + 56);

    v9(v6, v7);
    v12 = *(v5 + 56);
  }

  else
  {
    v13 = v3;
    v14 = v2;
    v15 = v1;
    v16 = *(v5 + 72);
    v17 = *(v5 + 64);
    v18 = *(v17 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v17 + v16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = *(v5 + 72);
      v22 = *(v5 + 64);
      v23 = v15(0);
      OUTLINED_FUNCTION_100_0(v23);
      swift_allocObject();
      v24 = OUTLINED_FUNCTION_5_3();
      v20 = v14(v24);
      *(v22 + v21) = v20;
    }

    v25 = (v20 + *v13);
    swift_beginAccess();
    v26 = v25[1];
    *v25 = v6;
    v25[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v27);
}

uint64_t sub_26A30F9BC()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  v2 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A30FA94()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47_13(v8, v47);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_173_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v48 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  OUTLINED_FUNCTION_107_6();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  v33 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v33 = 0;
  v33[1] = v34;
  OUTLINED_FUNCTION_142();
  v35 = OUTLINED_FUNCTION_65_12();
  sub_26A1F9BEC(v35, v36, v37, &unk_26A426430);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_6();
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  OUTLINED_FUNCTION_142();
  sub_26A1F9BEC(v3 + v38, v1, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_8();
  v39 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v39, v0 + v21);
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_21_8();
  v40 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v40, v0 + v48);
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  v41 = OUTLINED_FUNCTION_61_10();
  sub_26A1F9BEC(v41, v42, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_8();
  swift_endAccess();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_262();

  v43 = (v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1();
  v45 = *v43;
  v44 = v43[1];

  OUTLINED_FUNCTION_74_7();
  v46 = v33[1];
  *v33 = v45;
  v33[1] = v44;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A30FDB0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A30FEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A310020();
        break;
      case 2:
        sub_26A3100FC();
        break;
      case 3:
        sub_26A3101D8();
        break;
      case 4:
        sub_26A3102B4();
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A310020()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3100FC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3101D8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3102B4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3103C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A31054C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A310734(a1, a2, a3, a4);
    sub_26A31091C(a1, a2, a3, a4);
    sub_26A310B04(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A31054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoVisualProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A30BB4C();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A310734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A31091C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A310B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &off_28036C7C0, &off_26A427400);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoActionProperty);
}

uint64_t static _ProtoVisualization_Chart.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_53();
  v1 = type metadata accessor for _ProtoVisualization_Chart(v0);
  OUTLINED_FUNCTION_63_9(v1);
  if (!v2)
  {

    sub_26A314398();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_9_35();
  sub_26A31319C(v5, v6);
  return OUTLINED_FUNCTION_68_7() & 1;
}

uint64_t sub_26A310E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A31319C(&qword_280372720, type metadata accessor for _ProtoVisualization_Chart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A310EE8(uint64_t a1)
{
  v2 = sub_26A31319C(&qword_28036F810, type metadata accessor for _ProtoVisualization_Chart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A310F58()
{
  sub_26A31319C(&qword_28036F810, type metadata accessor for _ProtoVisualization_Chart);

  return sub_26A4249B4();
}

uint64_t sub_26A310FF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A424AC4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A42B080;
  v7 = v25 + v6;
  v8 = v25 + v6 + v4[14];
  *(v25 + v6) = 1;
  *v8 = "visual";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_26A424A94();
  OUTLINED_FUNCTION_14_8(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, 6);
  v13 = OUTLINED_FUNCTION_194_0(v7 + v5);
  *v14 = 2;
  *v13 = "text_1";
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  v15 = *MEMORY[0x277D21888];
  OUTLINED_FUNCTION_12_7();
  v12();
  v16 = OUTLINED_FUNCTION_194_0(v7 + 2 * v5);
  *v17 = 3;
  *v16 = "text_2";
  *(v16 + 8) = 6;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v12();
  v18 = OUTLINED_FUNCTION_194_0(v7 + 3 * v5);
  *v19 = 4;
  *v18 = "action";
  *(v18 + 8) = 6;
  *(v18 + 16) = 2;
  v12();
  v20 = OUTLINED_FUNCTION_194_0(v7 + 4 * v5);
  *v21 = 5;
  *v20 = "component_name";
  *(v20 + 8) = 14;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v12();
  v22 = OUTLINED_FUNCTION_194_0(v7 + 5 * v5);
  *v23 = 6;
  *v22 = "link_identifier";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v12();
  return sub_26A424AA4();
}

uint64_t sub_26A3112D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_100_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A311328()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  v2 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A311400()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47_13(v8, v47);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_173_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v48 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  OUTLINED_FUNCTION_107_6();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  v33 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v33 = 0;
  v33[1] = v34;
  OUTLINED_FUNCTION_142();
  v35 = OUTLINED_FUNCTION_65_12();
  sub_26A1F9BEC(v35, v36, v37, &unk_26A426430);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_6();
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  OUTLINED_FUNCTION_142();
  sub_26A1F9BEC(v3 + v38, v1, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_8();
  v39 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v39, v0 + v21);
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_21_8();
  v40 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v40, v0 + v48);
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  v41 = OUTLINED_FUNCTION_61_10();
  sub_26A1F9BEC(v41, v42, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_8();
  swift_endAccess();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_262();

  v43 = (v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1();
  v45 = *v43;
  v44 = v43[1];

  OUTLINED_FUNCTION_74_7();
  v46 = v33[1];
  *v33 = v45;
  v33[1] = v44;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A31171C()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A31185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A31198C();
        break;
      case 2:
        sub_26A311A68();
        break;
      case 3:
        sub_26A311B44();
        break;
      case 4:
        sub_26A311C20();
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A31198C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311A68()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311B44()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311C20()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A311EB8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A3120A0(a1, a2, a3, a4);
    sub_26A312288(a1, a2, a3, a4);
    sub_26A312470(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A311EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoVisualProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A30BB4C();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A3120A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A312288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A312470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &off_28036C7C0, &off_26A427400);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoActionProperty);
}

uint64_t static _ProtoVisualization_Image.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_53();
  v1 = type metadata accessor for _ProtoVisualization_Image(v0);
  OUTLINED_FUNCTION_63_9(v1);
  if (!v2)
  {

    sub_26A314398();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_9_35();
  sub_26A31319C(v5, v6);
  return OUTLINED_FUNCTION_68_7() & 1;
}

uint64_t sub_26A3127D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A31319C(&qword_280372718, type metadata accessor for _ProtoVisualization_Image);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A312854(uint64_t a1)
{
  v2 = sub_26A31319C(&qword_28036F7E0, type metadata accessor for _ProtoVisualization_Image);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3128C4()
{
  sub_26A31319C(&qword_28036F7E0, type metadata accessor for _ProtoVisualization_Image);

  return sub_26A4249B4();
}

uint64_t sub_26A312960()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803725B8);
  __swift_project_value_buffer(v0, qword_2803725B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42B080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "map_property";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "link_identifier";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A312C7C()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty;
  v2 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A312D54()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47_13(v8, v47);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_173_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v48 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  OUTLINED_FUNCTION_107_6();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  v33 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v33 = 0;
  v33[1] = v34;
  OUTLINED_FUNCTION_142();
  v35 = OUTLINED_FUNCTION_65_12();
  sub_26A1F9BEC(v35, v36, v37, &unk_26A426430);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_6();
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  OUTLINED_FUNCTION_142();
  sub_26A1F9BEC(v3 + v38, v1, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_8();
  v39 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v39, v0 + v21);
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_21_8();
  v40 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v40, v0 + v48);
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  v41 = OUTLINED_FUNCTION_61_10();
  sub_26A1F9BEC(v41, v42, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_8();
  swift_endAccess();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_262();

  v43 = (v3 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1();
  v45 = *v43;
  v44 = v43[1];

  OUTLINED_FUNCTION_74_7();
  v46 = v33[1];
  *v33 = v45;
  v33[1] = v44;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3130B0()
{
  v1 = OUTLINED_FUNCTION_53();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A313104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A31319C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3131E4()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A3132CC(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26A31337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_100_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_5_3();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_26A313440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A313570();
        break;
      case 2:
        sub_26A31364C();
        break;
      case 3:
        sub_26A313728();
        break;
      case 4:
        sub_26A313804();
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A313570()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A31364C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A313728()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A313804()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A313910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A31398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A313B18(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A313D00(a1, a2, a3, a4);
    sub_26A313EE8(a1, a2, a3, a4);
    sub_26A3140D0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A313B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoVisualProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A30BB4C();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A313D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A313EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3140D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for _ProtoActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v13, v8, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &off_28036C7C0, &off_26A427400);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A313104(v12, type metadata accessor for _ProtoActionProperty);
}

uint64_t static _ProtoVisualization_Map.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_53();
  v1 = type metadata accessor for _ProtoVisualization_Map(v0);
  OUTLINED_FUNCTION_63_9(v1);
  if (!v2)
  {

    sub_26A314398();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_9_35();
  sub_26A31319C(v5, v6);
  return OUTLINED_FUNCTION_68_7() & 1;
}

void sub_26A314398()
{
  OUTLINED_FUNCTION_76();
  v169 = v1;
  v171 = v2;
  v174 = v3;
  v180 = v4;
  v184 = v5;
  v7 = v6;
  v192 = v8;
  v10 = v9;
  v175 = type metadata accessor for _ProtoActionProperty();
  v11 = OUTLINED_FUNCTION_12(v175);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v170 = v14;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v173);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v176 = &v168 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v172 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  v178 = &v168 - v25;
  v186 = type metadata accessor for _ProtoTextProperty(0);
  v26 = OUTLINED_FUNCTION_12(v186);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v179 = v29;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v30 = OUTLINED_FUNCTION_12(v189);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v181 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  v185 = &v168 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v37 = OUTLINED_FUNCTION_41(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  v177 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  v187 = &v168 - v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  v182 = &v168 - v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  v190 = &v168 - v46;
  v47 = type metadata accessor for _ProtoVisualProperty();
  v48 = OUTLINED_FUNCTION_12(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v183 = v51;
  v52 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130) - 8);
  v53 = *(*v52 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_141_0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v56 = OUTLINED_FUNCTION_41(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8();
  v188 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  v62 = &v168 - v61;
  v63 = *v7;
  OUTLINED_FUNCTION_142();
  v191 = v10;
  sub_26A1F9BEC(v10 + v63, v62, &qword_28036CAE8, &unk_26A426430);
  v64 = *v7;
  v65 = v47;
  v66 = v192;
  OUTLINED_FUNCTION_142();
  v67 = v52[14];
  sub_26A1F9BEC(v62, v0, &qword_28036CAE8, &unk_26A426430);
  sub_26A1F9BEC(v66 + v64, v0 + v67, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_1_4();
  if (v71)
  {
    v68 = v191;

    sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_37(v0 + v67, 1, v65);
    v69 = v66;
    if (v71)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_12;
    }

LABEL_9:
    sub_26A0E48F0(v0, &qword_28036D190, &unk_26A427130);
    goto LABEL_61;
  }

  v68 = v191;
  v69 = v66;
  v70 = v188;
  sub_26A1F9BEC(v0, v188, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_37(v0 + v67, 1, v65);
  if (v71)
  {

    sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
    sub_26A313104(v70, type metadata accessor for _ProtoVisualProperty);
    goto LABEL_9;
  }

  v72 = v183;
  sub_26A30BB4C();

  static _ProtoVisualProperty.== infix(_:_:)(v70, v72);
  OUTLINED_FUNCTION_106_4();
  sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
  sub_26A313104(v70, type metadata accessor for _ProtoVisualProperty);
  v73 = OUTLINED_FUNCTION_103();
  sub_26A0E48F0(v73, v74, &unk_26A426430);
  if ((v64 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_12:
  v75 = v184;
  v76 = *v184;
  OUTLINED_FUNCTION_142();
  v77 = v190;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v78, v79, v80, v81);
  v82 = *v75;
  OUTLINED_FUNCTION_142();
  v83 = *(v189 + 48);
  v84 = v185;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v85, v86, v87, v88);
  OUTLINED_FUNCTION_112_1();
  v89 = v84;
  sub_26A1F9BEC(v90, v91, v92, v93);
  v94 = v186;
  OUTLINED_FUNCTION_37(v84, 1, v186);
  v95 = v68;
  if (v71)
  {
    sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v89 + v83, 1, v94);
    v96 = v187;
    if (v71)
    {
      sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_22;
    }

LABEL_20:
    v99 = &qword_28036C7D0;
    v100 = &qword_26A426DE0;
    v101 = v89;
    goto LABEL_60;
  }

  v97 = v182;
  sub_26A1F9BEC(v89, v182, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_37(v89 + v83, 1, v94);
  v96 = v187;
  if (v98)
  {
    sub_26A0E48F0(v190, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_59_13();
    goto LABEL_20;
  }

  sub_26A30BB4C();
  v102 = OUTLINED_FUNCTION_103();
  static _ProtoTextProperty.== infix(_:_:)(v102, v103);
  OUTLINED_FUNCTION_106_4();
  sub_26A0E48F0(v190, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A313104(v97, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_22:
  v104 = v180;
  v105 = *v180;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v106, v107, v108, v109);
  v110 = *v104;
  OUTLINED_FUNCTION_142();
  v111 = *(v189 + 48);
  v112 = v96;
  v113 = v181;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v114, v115, v116, v117);
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v118, v119, v120, v121);
  OUTLINED_FUNCTION_37(v113, 1, v94);
  if (v71)
  {
    sub_26A0E48F0(v112, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v113 + v111, 1, v94);
    if (v71)
    {
      sub_26A0E48F0(v113, &qword_28036C7B8, &unk_26A425BF0);
      v122 = v178;
      goto LABEL_32;
    }

LABEL_30:
    v99 = &qword_28036C7D0;
    v100 = &qword_26A426DE0;
    v101 = v113;
    goto LABEL_60;
  }

  v123 = v177;
  sub_26A1F9BEC(v113, v177, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_37(v113 + v111, 1, v94);
  v122 = v178;
  if (v124)
  {
    sub_26A0E48F0(v187, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_59_13();
    goto LABEL_30;
  }

  sub_26A30BB4C();
  v125 = OUTLINED_FUNCTION_103();
  static _ProtoTextProperty.== infix(_:_:)(v125, v126);
  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_27_2(v187);
  sub_26A313104(v123, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_27_2(v113);
  if ((&unk_26A425BF0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_32:
  v127 = v174;
  v128 = *v174;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v129, v130, v131, v132);
  v133 = *v127;
  OUTLINED_FUNCTION_142();
  v134 = *(v173 + 48);
  v135 = v176;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v136, v137, v138, v139);
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v140, v141, v142, v143);
  v144 = v175;
  OUTLINED_FUNCTION_37(v135, 1, v175);
  if (!v71)
  {
    v157 = v172;
    sub_26A1F9BEC(v135, v172, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_37(v135 + v134, 1, v144);
    if (!v158)
    {
      v159 = v170;
      sub_26A30BB4C();
      v160 = *v157;
      v161 = *v159;
      sub_26A0E36D8();
      if (v162)
      {
        v163 = v157[1] == v159[1] && v157[2] == v159[2];
        if (v163 || (sub_26A425354() & 1) != 0)
        {
          v164 = *(v144 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_9_35();
          sub_26A31319C(v165, v166);
          v167 = sub_26A424B64();
          sub_26A313104(v159, type metadata accessor for _ProtoActionProperty);
          OUTLINED_FUNCTION_27_2(v122);
          sub_26A313104(v157, type metadata accessor for _ProtoActionProperty);
          OUTLINED_FUNCTION_27_2(v135);
          if ((v167 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_37;
        }
      }

      sub_26A313104(v159, type metadata accessor for _ProtoActionProperty);
      sub_26A0E48F0(v122, &off_28036C7C0, &off_26A427400);
      sub_26A313104(v157, type metadata accessor for _ProtoActionProperty);
      v101 = OUTLINED_FUNCTION_88();
      v100 = &off_26A427400;
LABEL_60:
      sub_26A0E48F0(v101, v99, v100);
      goto LABEL_61;
    }

    sub_26A0E48F0(v122, &off_28036C7C0, &off_26A427400);
    sub_26A313104(v157, type metadata accessor for _ProtoActionProperty);
LABEL_50:
    v99 = &qword_28036C7C8;
    v100 = &qword_26A425C00;
    v101 = v135;
    goto LABEL_60;
  }

  sub_26A0E48F0(v122, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_37(v135 + v134, 1, v144);
  if (!v71)
  {
    goto LABEL_50;
  }

  sub_26A0E48F0(v135, &off_28036C7C0, &off_26A427400);
LABEL_37:
  v145 = v171;
  v146 = (v95 + *v171);
  OUTLINED_FUNCTION_129_1();
  v147 = *v146;
  v148 = v146[1];
  v149 = (v69 + *v145);
  OUTLINED_FUNCTION_142();
  v150 = v147 == *v149 && v148 == v149[1];
  if (v150 || (sub_26A425354() & 1) != 0)
  {
    v151 = v169;
    v152 = (v95 + *v169);
    OUTLINED_FUNCTION_129_1();
    v153 = *v152;
    v154 = v152[1];
    v155 = (v69 + *v151);
    OUTLINED_FUNCTION_142();
    if (v153 != *v155 || v154 != v155[1])
    {
      sub_26A425354();
    }
  }

LABEL_61:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A315040(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26A425504();
  a1(0);
  sub_26A31319C(a2, a3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3153A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A31319C(&qword_280372710, type metadata accessor for _ProtoVisualization_Map);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3154B4(uint64_t a1)
{
  v2 = sub_26A31319C(&qword_28036F828, type metadata accessor for _ProtoVisualization_Map);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A31556C()
{
  sub_26A31319C(&qword_28036F828, type metadata accessor for _ProtoVisualization_Map);

  return sub_26A4249B4();
}

uint64_t sub_26A31566C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A315740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A31579C()
{
  sub_26A315740(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26A315740(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26A315740(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  result = type metadata accessor for _ProtoVisualization_Image(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_13_23()
{
  result = type metadata accessor for _ProtoVisualization_Chart(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_14_20()
{
  result = type metadata accessor for _ProtoVisualization_Map(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return sub_26A1F9BEC(v1 + v4, v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_26A1F9BEC(v1 + v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_59_13()
{

  return sub_26A313104(v0, type metadata accessor for _ProtoTextProperty);
}

uint64_t OUTLINED_FUNCTION_60_10()
{
  v2 = *v0;
  v3 = v0[1];

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_61_10()
{
  result = v0 + v1;
  v4 = *(v2 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1, uint64_t a2)
{

  return sub_26A1F9C88(v4, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_63_9(uint64_t result)
{
  v3 = *(result + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_7()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_73_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26A1F9C88(v4, v5 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_74_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_8()
{

  return sub_26A1F9C88(v3, v0 + v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_76_7()
{

  return sub_26A1F9BEC(v0 + v1, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return sub_26A1F9C88(v3, v0 + v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_82_8()
{

  return sub_26A30BB4C();
}

uint64_t OUTLINED_FUNCTION_86_9()
{

  return sub_26A30BB4C();
}

uint64_t OUTLINED_FUNCTION_106_4()
{

  return sub_26A313104(v1, v0);
}

uint64_t OUTLINED_FUNCTION_107_6()
{
  *(v1 - 296) = v0;

  return type metadata accessor for _ProtoActionProperty();
}

uint64_t sub_26A315D94(uint64_t a1, uint64_t a2)
{
  sub_26A0E5D68(a1, &v8);
  v3 = type metadata accessor for RedactingEncoder();
  OUTLINED_FUNCTION_9_36();
  v4 = swift_allocObject();
  sub_26A0D671C(&v8, v4 + 16);
  v9 = v3;
  v10 = sub_26A318F74();
  *&v8 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  sub_26A424B34();
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

uint64_t sub_26A315E6C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return a1(v3, v4);
}

uint64_t sub_26A315EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v3 = sub_26A425184();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_42();
  v5 = type metadata accessor for RedactingKeyedEncodingContainer();
  OUTLINED_FUNCTION_3_46();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v17 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  OUTLINED_FUNCTION_10_42();
  sub_26A425594();
  OUTLINED_FUNCTION_10_42();
  sub_26A316060(v18, v19);
  (*(v7 + 16))(v13, v16, v5);
  OUTLINED_FUNCTION_4_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_24();
  sub_26A425194();
  return (*(v7 + 8))(v16, v5);
}

uint64_t sub_26A316060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A425184();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_26A316144@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v9 = v4[5];
  v10 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
  a4[3] = a1;
  a4[4] = a2();
  OUTLINED_FUNCTION_9_36();
  *a4 = swift_allocObject();
  return a3(v9, v10);
}

uint64_t sub_26A3161D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_9_36();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

unint64_t sub_26A3162E0()
{
  result = qword_280372728;
  if (!qword_280372728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372728);
  }

  return result;
}

unint64_t sub_26A316334()
{
  result = qword_280372730[0];
  if (!qword_280372730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280372730);
  }

  return result;
}

uint64_t sub_26A3163A8(uint64_t a1)
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

uint64_t sub_26A316418(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_26A316554(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_26A316770(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = sub_26A425184();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_26A31682C(uint64_t a1, int a2)
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

uint64_t sub_26A31686C(uint64_t result, int a2, int a3)
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

uint64_t sub_26A3168CC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return a1(v3, v4);
}

uint64_t sub_26A316918()
{
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  return sub_26A425204();
}

uint64_t sub_26A316978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = *(v6 + 16);
  v12(v28 - v13, a1, a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v14 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    return sub_26A425214();
  }

  else
  {
    (v12)(v9, a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372858, &qword_26A43D5A0);
    if (swift_dynamicCast())
    {
      sub_26A319028(v28, &v29);
      v16 = v30;
      v17 = v31;
      v18 = __swift_project_boxed_opaque_existential_1(&v29, v30);
      v32 = v28;
      v19 = *(v16 - 8);
      v20 = *(v19 + 64);
      v21 = MEMORY[0x28223BE20](v18);
      v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 8))(v16, v17, v21);
      v24 = *(v3 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
      sub_26A425214();
      (*(v19 + 8))(v23, v16);
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      sub_26A318FC8(v28, &qword_280372860, &unk_26A43D5A8);
      v25 = *(v3 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
      sub_26A4251E4();
      v26 = type metadata accessor for RedactingEncoder();
      v27 = swift_allocObject();
      sub_26A0D671C(&v29, v27 + 16);
      v30 = v26;
      v31 = sub_26A318F74();
      *&v29 = v27;
      sub_26A424B34();
    }

    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }
}

unint64_t sub_26A316CE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  sub_26A4251E4();
  v4 = type metadata accessor for RedactingEncoder();
  v5 = swift_allocObject();
  sub_26A0D671C(&v7, v5 + 16);
  a1[3] = v4;
  result = sub_26A318F74();
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_26A316D6C(uint64_t a1)
{
  *&v9 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v12);
    goto LABEL_9;
  }

  v15 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372848, &qword_26A43D590);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_26A318FC8(&v9, &qword_280372850, &qword_26A43D598);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    goto LABEL_8;
  }

  v4 = *(&v10 + 1);
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  v5 = *(v3 + 8);
  *(&v13 + 1) = v4;
  v14 = v3;
  __swift_allocate_boxed_opaque_existential_1(&v12);
  v5(v4, v3);
  __swift_destroy_boxed_opaque_existential_1(&v9);
  if (!*(&v13 + 1))
  {
LABEL_8:
    sub_26A318FC8(&v12, &qword_280372850, &qword_26A43D598);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v6 = *(v1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
    sub_26A4251F4();
    return swift_unknownObjectRelease();
  }

LABEL_9:
  v8 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  return sub_26A4251F4();
}

uint64_t sub_26A316F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v3 = type metadata accessor for RedactingKeyedEncodingContainer();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v21 = sub_26A425184();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v16 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  sub_26A4251C4();
  v17 = v21;
  (*(v9 + 16))(v12, v15, v21);
  sub_26A316060(v12, v8);
  v18 = v24;
  (*(v24 + 16))(v23, v8, v3);
  swift_getWitnessTable();
  sub_26A425194();
  (*(v18 + 8))(v8, v3);
  return (*(v9 + 8))(v15, v17);
}

uint64_t sub_26A317218@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  a1[3] = &type metadata for RedactingUnkeyedEncodingContainer;
  a1[4] = sub_26A316334();
  *a1 = swift_allocObject();
  return sub_26A4251D4();
}

uint64_t sub_26A3178C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = sub_26A425184();

  return MEMORY[0x2821FDAA8](v3);
}

uint64_t sub_26A3178F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(a4 + 24);
  sub_26A425184();
  OUTLINED_FUNCTION_11_29();
  return sub_26A425114();
}

uint64_t sub_26A31793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_46();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v18 = *(v9 + 16);
  v18(&v36 - v19, a1, v20, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
    sub_26A425184();
    return sub_26A425154();
  }

  else
  {
    v37 = a3;
    v38 = a2;
    (v18)(v15, a1, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372858, &qword_26A43D5A0);
    if (swift_dynamicCast())
    {
      sub_26A319028(v39, v40);
      v24 = v41;
      v25 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      OUTLINED_FUNCTION_3_46();
      v27 = v26;
      v29 = *(v28 + 64);
      v31 = MEMORY[0x28223BE20](v30);
      v33 = &v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 8))(v24, v25, v31);
      v34 = *(v37 + 16);
      v35 = *(v37 + 24);
      sub_26A425184();
      sub_26A425154();
      (*(v27 + 8))(v33, v24);
    }

    else
    {
      memset(v39, 0, sizeof(v39));
      sub_26A318FC8(v39, &qword_280372860, &unk_26A43D5A8);
      sub_26A317C44(v38, v37, v40);
      sub_26A424B34();
    }

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }
}

unint64_t sub_26A317C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_7_24(a1, a2);
  sub_26A425184();
  sub_26A4250C4();
  v4 = type metadata accessor for RedactingEncoder();
  OUTLINED_FUNCTION_9_36();
  v5 = swift_allocObject();
  sub_26A0D671C(&v7, v5 + 16);
  a3[3] = v4;
  result = sub_26A318F74();
  a3[4] = result;
  *a3 = v5;
  return result;
}

uint64_t sub_26A317CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v18 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
    goto LABEL_9;
  }

  v24 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372848, &qword_26A43D590);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_26A318FC8(&v18, &qword_280372850, &qword_26A43D598);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_8;
  }

  v5 = *(&v19 + 1);
  v6 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v7 = *(v6 + 8);
  *(&v22 + 1) = v5;
  v23 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v21);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  if (!*(&v22 + 1))
  {
LABEL_8:
    sub_26A318FC8(&v21, &qword_280372850, &qword_26A43D598);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v8 = v18;
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    v11 = sub_26A425184();
    OUTLINED_FUNCTION_13_24(v8, v12, v11);
    return swift_unknownObjectRelease();
  }

LABEL_9:
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v16 = sub_26A425184();
  return OUTLINED_FUNCTION_13_24(a1, v17, v16);
}

uint64_t sub_26A317EC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_24(a1, a2);
  sub_26A425184();
  return sub_26A425174();
}

uint64_t sub_26A317EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  sub_26A425184();
  return sub_26A425124();
}

uint64_t sub_26A317F4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_24(a1, a2);
  sub_26A425184();
  return sub_26A425134();
}

uint64_t sub_26A317F8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_24(a1, a2);
  sub_26A425184();
  return sub_26A425144();
}

uint64_t sub_26A317FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_48(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_8_29();
  return v3(v4);
}

uint64_t sub_26A318000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_48(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_8_29();
  return v3(v4);
}

uint64_t sub_26A318034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_48(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_8_29();
  return v3(v4);
}

uint64_t sub_26A3180A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v36 = a1;
  v38 = a4;
  v5 = type metadata accessor for RedactingKeyedEncodingContainer();
  OUTLINED_FUNCTION_3_46();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  OUTLINED_FUNCTION_10_42();
  v35 = sub_26A425184();
  OUTLINED_FUNCTION_3_46();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v34 - v26;
  v28 = *(a3 + 16);
  v29 = *(a3 + 24);
  sub_26A425184();
  sub_26A4250A4();
  v30 = v35;
  (*(v18 + 16))(v24, v27, v35);
  OUTLINED_FUNCTION_10_42();
  sub_26A316060(v31, v32);
  (*(v7 + 16))(v13, v16, v5);
  OUTLINED_FUNCTION_4_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_24();
  sub_26A425194();
  (*(v7 + 8))(v16, v5);
  return (*(v18 + 8))(v27, v30);
}

uint64_t sub_26A3182E4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for RedactingUnkeyedEncodingContainer;
  a2[4] = sub_26A316334();
  OUTLINED_FUNCTION_9_36();
  *a2 = swift_allocObject();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_26A425184();
  return sub_26A425094();
}

unint64_t sub_26A318364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_26A425184();
  sub_26A4250D4();
  v5 = type metadata accessor for RedactingEncoder();
  OUTLINED_FUNCTION_9_36();
  v6 = swift_allocObject();
  sub_26A0D671C(&v8, v6 + 16);
  a2[3] = v5;
  result = sub_26A318F74();
  a2[4] = result;
  *a2 = v6;
  return result;
}

uint64_t sub_26A318980()
{
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_11_29();
  return sub_26A425384();
}

uint64_t sub_26A3189D0()
{
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  return sub_26A425394();
}

uint64_t sub_26A318A44(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v2 = OUTLINED_FUNCTION_5_39();
  return a1(v2);
}

uint64_t sub_26A318A84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return a2(a1, v5, v6);
}

uint64_t sub_26A318AE8(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v2 = OUTLINED_FUNCTION_5_39();
  return a1(v2);
}

uint64_t sub_26A318B2C(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v2 = OUTLINED_FUNCTION_5_39();
  return a1(v2);
}

uint64_t sub_26A318B70(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v3 = OUTLINED_FUNCTION_2_42();
  return a2(v3);
}

uint64_t sub_26A318BB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v3 = OUTLINED_FUNCTION_2_42();
  return a2(v3);
}

uint64_t sub_26A318BF0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v3 = OUTLINED_FUNCTION_2_42();
  return a2(v3);
}

unint64_t sub_26A318F74()
{
  result = qword_280372838;
  if (!qword_280372838)
  {
    type metadata accessor for RedactingEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372838);
  }

  return result;
}

uint64_t sub_26A318FC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_26A319028(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_59()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);

  return sub_26A425184();
}

uint64_t OUTLINED_FUNCTION_7_24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return 0;
}

uint64_t OUTLINED_FUNCTION_13_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDB30](a1, v5, a3, v4, v3);
}

uint64_t SectionHeaderRich.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = *(v0 + *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v15)
  {
    *v13 = MEMORY[0x277D84F90];
    *(v13 + 8) = 0;
    v16 = v13 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v7[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v15)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A31AE08();
  }

  return sub_26A31AE08();
}

void SectionHeaderRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v33 = v2;
  v3 = type metadata accessor for _ProtoVisualProperty();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = *(v0 + *(OUTLINED_FUNCTION_20_24() + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v19, v20, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      *v9 = MEMORY[0x277D84F90];
      *(v9 + 8) = 0;
      v22 = v9 + v3[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v23 = v3[8];
      v24 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
      v28 = v3[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
      OUTLINED_FUNCTION_38_0();
      if (!v21)
      {
        sub_26A0E48F0(v16, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A31AE08();
    }

    sub_26A31AE08();
    v1 = 0;
  }

  v32 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v33, v1, 1, v32);
  OUTLINED_FUNCTION_75();
}

uint64_t SectionHeaderRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void SectionHeaderRich.action.getter()
{
  OUTLINED_FUNCTION_76();
  v24 = v2;
  v3 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = *(v0 + *(OUTLINED_FUNCTION_20_24() + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v19, v20, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      *v9 = MEMORY[0x277D84F90];
      v9[1] = 0;
      v9[2] = 0xE000000000000000;
      v22 = v9 + *(v3 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v21)
      {
        sub_26A0E48F0(v16, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A31AE08();
    }

    sub_26A31AE08();
    v1 = 0;
  }

  v23 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v24, v1, 1, v23);
  OUTLINED_FUNCTION_75();
}

void _ProtoSectionHeader_Rich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v123 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v123);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v119 = v5;
  MEMORY[0x28223BE20](v6);
  v118 = (v115 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v120 = v12;
  MEMORY[0x28223BE20](v13);
  v117 = v115 - v14;
  MEMORY[0x28223BE20](v15);
  v122 = v115 - v16;
  v121 = type metadata accessor for _ProtoVisualProperty();
  v17 = OUTLINED_FUNCTION_12(v121);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v116 = (v115 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v23 = OUTLINED_FUNCTION_41(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v29 = v115 - v28;
  v30 = type metadata accessor for _ProtoTextProperty(0);
  v31 = OUTLINED_FUNCTION_12(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  v36 = v115 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v38 = OUTLINED_FUNCTION_41(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  v43 = v115 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v115 - v45;
  OUTLINED_FUNCTION_1_49();
  sub_26A31B250();
  v124 = *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20);
  v125 = v1;
  v47 = *(v1 + v124);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v46, 1, v30);
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  v48 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v43, 1, v30);
    if (v49)
    {
      *v36 = v48;
      *(v36 + 4) = 0;
      v50 = &v36[v30[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v51 = v30[8];
      OUTLINED_FUNCTION_92();
      v52 = v123;
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v123);
      v56 = v30[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
      OUTLINED_FUNCTION_37(v43, 1, v30);
      v61 = v124;
      v60 = v125;
      if (!v49)
      {
        sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A31AE08();
      v61 = v124;
      v60 = v125;
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A31AE5C(v36, type metadata accessor for _ProtoTextProperty);
    v62 = *(v60 + v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v60 + v61);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      sub_26A117F4C();
      *(v60 + v61) = v68;
    }

    sub_26A31AE08();
    v69 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v30);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v72 = v121;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v121);
  sub_26A0E48F0(v29, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload == 1)
  {
    v74 = v123;
    v75 = v125;
  }

  else
  {
    v76 = v115[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v76, 1, v72);
    v75 = v125;
    if (v49)
    {
      v86 = v116;
      *v116 = v48;
      *(v86 + 8) = 0;
      v77 = v86 + v72[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v78 = v72[8];
      OUTLINED_FUNCTION_92();
      v74 = v123;
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v123);
      v82 = v72[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v74);
      OUTLINED_FUNCTION_37(v76, 1, v72);
      v87 = v124;
      if (!v49)
      {
        sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v86 = v116;
      sub_26A31AE08();
      v74 = v123;
      v87 = v124;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A31AE5C(v86, type metadata accessor for _ProtoVisualProperty);
    v88 = *(v75 + v87);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v75 + v87);
    if ((v89 & 1) == 0)
    {
      v91 = type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
      v92 = *(v91 + 48);
      v93 = *(v91 + 52);
      swift_allocObject();
      sub_26A117F4C();
      *(v75 + v87) = v94;
    }

    sub_26A31AE08();
    v95 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v72);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v98 = v122;
  sub_26A10FD9C();
  v99 = __swift_getEnumTagSinglePayload(v98, 1, v74);
  sub_26A0E48F0(v98, &off_28036C7C0, &off_26A427400);
  if (v99 != 1)
  {
    v100 = v117;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v100, 1, v74);
    v101 = v124;
    if (v49)
    {
      v103 = v118;
      *v118 = v48;
      *(v103 + 8) = 0;
      *(v103 + 16) = 0xE000000000000000;
      v102 = v103 + *(v74 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v100, 1, v74);
      v104 = v119;
      if (!v49)
      {
        sub_26A0E48F0(v100, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v103 = v118;
      sub_26A31AE08();
      v104 = v119;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v104);
    sub_26A31AE5C(v103, type metadata accessor for _ProtoActionProperty);
    v105 = *(v75 + v101);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(v75 + v101);
    if ((v106 & 1) == 0)
    {
      v108 = type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();
      sub_26A117F4C();
      *(v75 + v101) = v111;
    }

    sub_26A31AE08();
    v112 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v74);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SectionHeaderRich.init(text1:thumbnail:action:componentName:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoSectionHeader_Rich(0);
  OUTLINED_FUNCTION_9_37();
  sub_26A31B12C(v6, v7);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB00, &unk_26A426450);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A31A1E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a1;
  v7 = type metadata accessor for ActionProperty();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for _ProtoActionProperty();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v35 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v36 = &v35 - v18;
  v19 = type metadata accessor for _ProtoVisualProperty();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = type metadata accessor for VisualProperty();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for _ProtoTextProperty(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = type metadata accessor for TextProperty(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v27 + 8))(v28, v27);
  sub_26A31AE08();
  _ProtoSectionHeader_Rich.text1.setter();
  sub_26A10FD9C();
  if (v44)
  {
    sub_26A0D671C(&v43, v45);
    v29 = v46;
    v30 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v30 + 8))(v29, v30);
    sub_26A31AE08();
    _ProtoSectionHeader_Rich.thumbnail.setter();
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    sub_26A0E48F0(&v43, &qword_28036CB00, &unk_26A426450);
  }

  sub_26A10FD9C();
  v31 = v46;
  if (!v46)
  {
    sub_26A0E48F0(v45, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    goto LABEL_8;
  }

  v32 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  (*(v32 + 8))(v31, v32);
  sub_26A31AE08();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
LABEL_8:
    sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
    goto LABEL_9;
  }

  v33 = v36;
  sub_26A31AE08();
  sub_26A31B250();
  _ProtoSectionHeader_Rich.action.setter();
  sub_26A31AE5C(v33, type metadata accessor for _ProtoActionProperty);
LABEL_9:

  return _ProtoSectionHeader_Rich.componentName.setter();
}

uint64_t SectionHeaderRich.init(text1:thumbnail:action:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v11);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSectionHeader_Rich(0);
  OUTLINED_FUNCTION_9_37();
  sub_26A31B12C(v6, v7);
  sub_26A4249C4();
  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

Swift::String __swiftcall SectionHeaderRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v71 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v70 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = type metadata accessor for _ProtoTextProperty(0);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v32 = type metadata accessor for SectionHeaderRich();
  v33 = OUTLINED_FUNCTION_41(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  v38 = &v69 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE38, &qword_26A4269C0);
  OUTLINED_FUNCTION_12(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  v44 = &v69 - v43;
  OUTLINED_FUNCTION_8_30();
  sub_26A31B250();
  if (v2)
  {
    _ProtoSectionHeader_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A31B250();
  }

  sub_26A31AE08();
  v44[*(v39 + 32)] = v2 & 1;
  sub_26A31AE5C(v38, type metadata accessor for SectionHeaderRich);
  v45 = MEMORY[0x277D84F90];
  *&v44[*(v39 + 28)] = MEMORY[0x277D84F90];
  v46 = *&v44[*(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v18, 1, v19);
  if (v47)
  {
    *v25 = v45;
    *(v25 + 8) = 0;
    v48 = v25 + v19[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v49 = v19[8];
    v50 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
    v54 = v19[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v50);
    OUTLINED_FUNCTION_37(v18, 1, v19);
    if (!v47)
    {
      sub_26A0E48F0(v18, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A31AE08();
  }

  sub_26A31AE08();
  v58 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v58);
  sub_26A105B54();
  sub_26A0E48F0(v31, &qword_28036CB30, &qword_26A426480);
  v59 = v70;
  SectionHeaderRich.thumbnail.getter();
  sub_26A105B2C();
  sub_26A0E48F0(v59, &qword_28036CB20, &unk_26A426470);
  v60 = v71;
  SectionHeaderRich.action.getter();
  sub_26A105A28();
  sub_26A0E48F0(v60, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F79A8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v62, v63, v64, v65, v69, v70);

  sub_26A0FC55C();
  sub_26A0E48F0(v44, &qword_28036CE38, &qword_26A4269C0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v67;
  result._countAndFlagsBits = v66;
  return result;
}

uint64_t type metadata accessor for SectionHeaderRich()
{
  result = qword_280372868;
  if (!qword_280372868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A31AE08()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A31AE5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SectionHeaderRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1_49();
  sub_26A31B250();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_10_43();
  sub_26A31AE08();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SectionHeaderRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SectionHeaderRich();
  *(inited + 64) = &protocol witness table for SectionHeaderRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_8_30();
  sub_26A31B250();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A31B12C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A31B12C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A31B1E4()
{
  result = type metadata accessor for _ProtoSectionHeader_Rich(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A31B250()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_24()
{

  return type metadata accessor for _ProtoSectionHeader_Rich(0);
}

uint64_t OUTLINED_FUNCTION_23_27()
{

  return type metadata accessor for _ProtoSectionHeader_Rich(0);
}

const char *RFFeatureFlags.ResponseFramework.feature.getter()
{
  result = "BICS";
  switch(*v0)
  {
    case 1:
      result = "Enabled";
      break;
    case 2:
      result = "SMART";
      break;
    case 3:
      result = "ModernizedStyling";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A31B480(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &type metadata for RFFeatureFlags.ResponseFramework;
  v7[4] = sub_26A31B7E4();
  LOBYTE(v7[0]) = a2;
  v5 = sub_26A424744();
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26A31B504(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t RFFeatureFlags.ResponseFramework.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A31B5D0()
{
  result = qword_280372880;
  if (!qword_280372880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFFeatureFlags(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RFFeatureFlags.ResponseFramework(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A31B7E4()
{
  result = qword_28157ACB8;
  if (!qword_28157ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157ACB8);
  }

  return result;
}

uint64_t sub_26A31B838(uint64_t a1, unint64_t a2)
{
  v4 = sub_26A424CB4();
  v6 = v5;
  v11 = 10;
  v12 = 0xE100000000000000;
  v10[2] = &v11;

  v10[4] = sub_26A3B47FC(0x7FFFFFFFFFFFFFFFLL, 0, sub_26A31BC60, v10, a1, a2, v7);
  v11 = 10;
  v12 = 0xE100000000000000;
  MEMORY[0x26D65BA70](v4, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372890, &unk_26A43D730);
  sub_26A31BC80();
  sub_26A31BCE4();
  v8 = sub_26A424D14();

  return v8;
}

void sub_26A31B964(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;

  v4 = sub_26A424AD4();
  v5 = sub_26A424E14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_26A0E8788(v1, v3, &v8);
    _os_log_impl(&dword_26A0B8000, v4, v5, "%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D65C950](v7, -1, -1);
    MEMORY[0x26D65C950](v6, -1, -1);
  }

  sub_26A424FC4();
  __break(1u);
}

uint64_t sub_26A31BAAC()
{
  v0 = sub_26A424AE4();
  __swift_allocate_value_buffer(v0, qword_2803A8950);
  v1 = __swift_project_value_buffer(v0, qword_2803A8950);
  if (qword_28036C5B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2803A8968);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26A31BB74()
{
  sub_26A31BD38();
  result = sub_26A424E34();
  qword_280372888 = result;
  return result;
}

uint64_t sub_26A31BBD4()
{
  v0 = sub_26A424AE4();
  __swift_allocate_value_buffer(v0, qword_2803A8968);
  __swift_project_value_buffer(v0, qword_2803A8968);
  if (qword_28036C5A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280372888;
  return sub_26A424AF4();
}

unint64_t sub_26A31BC80()
{
  result = qword_280372898;
  if (!qword_280372898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280372890, &unk_26A43D730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372898);
  }

  return result;
}

unint64_t sub_26A31BCE4()
{
  result = qword_2803728A0;
  if (!qword_2803728A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803728A0);
  }

  return result;
}

unint64_t sub_26A31BD38()
{
  result = qword_2803728A8;
  if (!qword_2803728A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803728A8);
  }

  return result;
}

uint64_t Section.init(_:levelOfDetail:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_26A31C4C8(a1, a2, a3);
}

{
  return sub_26A31C4C8(a1, a2, a3);
}

void sub_26A31BDC0()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  v6 = type metadata accessor for TextElement();
  v7 = OUTLINED_FUNCTION_2_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_21();
  if (v2)
  {
    v15[5] = MEMORY[0x277D84F90];
    v12 = OUTLINED_FUNCTION_13_25();
    sub_26A10D1E0(v12, v2, 0);
    OUTLINED_FUNCTION_12_25();
    do
    {
      sub_26A31D8AC();
      OUTLINED_FUNCTION_20_25();
      if (v14)
      {
        sub_26A10D1E0(v13 > 1, v9, 1);
      }

      v15[3] = v0;
      v15[4] = &protocol witness table for TextElement;
      __swift_allocate_boxed_opaque_existential_1(v15);
      sub_26A31D8AC();
      OUTLINED_FUNCTION_23_28();
      sub_26A31D904(v1, type metadata accessor for TextElement);
      v5 += v3;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A31BF28()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  v6 = type metadata accessor for _ProtoResponse.Component(0);
  v7 = OUTLINED_FUNCTION_2_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_21();
  if (v2)
  {
    v16[5] = MEMORY[0x277D84F90];
    v12 = OUTLINED_FUNCTION_13_25();
    sub_26A10D91C(v12, v2, 0);
    OUTLINED_FUNCTION_12_25();
    do
    {
      sub_26A31D8AC();
      OUTLINED_FUNCTION_20_25();
      if (v14)
      {
        sub_26A10D91C(v13 > 1, v9, 1);
      }

      v16[3] = v0;
      v16[4] = &protocol witness table for _ProtoResponse.Component;
      __swift_allocate_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_7_25();
      sub_26A31D8AC();
      OUTLINED_FUNCTION_23_28();
      OUTLINED_FUNCTION_6_30();
      sub_26A31D904(v1, v15);
      v5 += v3;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A31C07C()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoResponse.Component(0);
  v3 = OUTLINED_FUNCTION_79_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v35 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_9_38();
  sub_26A31D8AC();
  v11 = *v1;
  v12 = *(*v1 + 16);
  if (v12)
  {
    v34 = v1;
    v41 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_25();
    sub_26A10D258();
    v13 = 0;
    v37 = v41;
    v36 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = v35;
    while (v13 < *(v11 + 16))
    {
      v15 = *(v5 + 72);
      OUTLINED_FUNCTION_7_25();
      sub_26A31D8AC();
      sub_26A3BA6DC(v38);
      v16 = v11;
      v17 = v5;
      v19 = v39;
      v18 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v18 + 8))(v19, v18);
      OUTLINED_FUNCTION_6_30();
      sub_26A31D904(v14, v20);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v21 = v37;
      v41 = v37;
      v22 = *(v37 + 16);
      if (v22 >= *(v37 + 24) >> 1)
      {
        sub_26A10D258();
        v14 = v35;
        v21 = v41;
      }

      ++v13;
      *(v21 + 16) = v22 + 1;
      v37 = v21;
      OUTLINED_FUNCTION_5_40();
      sub_26A31D95C();
      v5 = v17;
      v11 = v16;
      if (v12 == v13)
      {

        v1 = v34;
        v33 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v24 = sub_26A424AE4();
    __swift_project_value_buffer(v24, qword_2803A8950);
    v25 = 0;
    v26 = sub_26A424AD4();
    v27 = sub_26A424E04();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136446210;
      swift_getErrorValue();
      v30 = sub_26A4254B4();
      v32 = sub_26A0E8788(v30, v31, v38);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_26A0B8000, v26, v27, "Error redacting Section.componentList: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26D65C950](v29, -1, -1);
      MEMORY[0x26D65C950](v28, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v23 = *v1;

    v33 = MEMORY[0x277D84F90];
LABEL_11:
    *v1 = v33;
  }

  OUTLINED_FUNCTION_75();
}

uint64_t Section.isShown(for:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 24);
    v4 = sub_26A165034(*a1, *(a1 + 8), v2) ^ v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_26A31C4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_2_43();
  sub_26A31D7BC(v5, v6);
  sub_26A4249C4();

  return sub_26A148B4C(v3, v4);
}

uint64_t sub_26A31C594(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for _ProtoResponse.Component(0);
  v10 = OUTLINED_FUNCTION_79_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = *(a2 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v29 = a5;
    v30 = a4;
    v34 = MEMORY[0x277D84F90];
    sub_26A10D258();
    v16 = v34;
    v17 = a2 + 32;
    do
    {
      sub_26A0E5D68(v17, v31);
      v18 = v32;
      v19 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v19 + 8))(v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v34 = v16;
      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_26A10D258();
        v16 = v34;
      }

      *(v16 + 16) = v20 + 1;
      v21 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v22 = *(v12 + 72);
      OUTLINED_FUNCTION_5_40();
      sub_26A31D95C();
      v17 += 40;
      --v15;
    }

    while (v15);
    a4 = v30;
    a5 = v29;
  }

  v23 = *a1;

  *a1 = v16;

  v25 = sub_26A419308(v24);
  v26 = a1[1];

  a1[1] = v25;
  if (a5 != -1)
  {
    *(a1 + 24) = (a5 & 1) == 0;
    v28 = a1[2];
    j__swift_bridgeObjectRetain(a4, a5 & 1);

    a1[2] = a4;
  }

  return result;
}

Swift::String __swiftcall Section.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for Section();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  OUTLINED_FUNCTION_1_50();
  sub_26A31D8AC();
  if (v2)
  {
    sub_26A31C07C();
  }

  else
  {
    sub_26A31D8AC();
  }

  sub_26A31D95C();
  v13[*(v8 + 32)] = v2 & 1;
  OUTLINED_FUNCTION_0_60();
  sub_26A31D904(v7, v14);
  v15 = MEMORY[0x277D84F90];
  *&v13[*(v8 + 28)] = MEMORY[0x277D84F90];
  v16 = *v13;
  sub_26A31BF28();
  v18 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v41 = v15;
    OUTLINED_FUNCTION_13_25();
    sub_26A10D50C();
    v20 = v41;
    v40 = v18;
    v21 = (v18 + 32);
    do
    {
      v22 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v23 = Component.description(redacted:)(v2 & 1);
      v41 = v20;
      v24 = *(v20 + 16);
      if (v24 >= *(v20 + 24) >> 1)
      {
        sub_26A10D50C();
        v20 = v41;
      }

      *(v20 + 16) = v24 + 1;
      *(v20 + 16 * v24 + 32) = v23;
      v21 += 5;
      --v19;
    }

    while (v19);
  }

  v25 = OUTLINED_FUNCTION_21_23();
  sub_26A3A25E0(v25, v26, v27, v28);

  v29 = *(v13 + 1);

  OUTLINED_FUNCTION_11_30(v30);

  v31 = v13[24];
  v32 = *(v13 + 2);

  sub_26A145BA4(v33, (v31 & 1) == 0, 0x696C696269736976, 0xEA00000000007974, 0, v34, v35, v36, v40, v41);

  sub_26A0F9448();
  sub_26A31D654(v13);
  OUTLINED_FUNCTION_75();
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t type metadata accessor for Section()
{
  result = qword_2803728C0;
  if (!qword_2803728C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Section.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_26A0D887C();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];

  v9 = sub_26A10BE48(v8);
  v10 = a2[1];

  v12 = sub_26A10BE48(v11);
  sub_26A29095C(v9, v12);
  v14 = v13;

  if ((v14 & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v16 = a1[2];

  v18 = sub_26A10BE7C(v17);
  v19 = a2[2];

  v21 = sub_26A10BE7C(v20);
  v22 = sub_26A290AE0(v18, v21);

  return v22 & 1;
}

uint64_t Section.hash(into:)()
{
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_2_43();
  sub_26A31D7BC(v0, v1);

  return sub_26A424B44();
}

uint64_t Section.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_2_43();
  sub_26A31D7BC(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A31CCD8()
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A31D7BC(&qword_2803728B0, type metadata accessor for _ProtoResponse.Section);
  sub_26A424B44();
  return sub_26A425554();
}

void Array<A>.sections(for:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
  v3 = type metadata accessor for Section();
  v4 = OUTLINED_FUNCTION_79_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_121_0();
  v10 = 0;
  v23 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v0 + 16);
  v13 = MEMORY[0x277D84F90];
  while (v12 != v10)
  {
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    OUTLINED_FUNCTION_1_50();
    sub_26A31D8AC();
    v16 = *(v2 + 16);
    if (*(v16 + 16) && (v17 = v13, v18 = *(v2 + 24), v19 = v18 == sub_26A165034(v23, v11, v16), v13 = v17, v19))
    {
      sub_26A31D904(v2, type metadata accessor for Section);
      ++v10;
    }

    else
    {
      sub_26A31D95C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v13 + 16);
        OUTLINED_FUNCTION_13_25();
        sub_26A10D93C();
      }

      v21 = *(v13 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v13 + 24) >> 1)
      {
        sub_26A10D93C();
        v22 = v21 + 1;
      }

      ++v10;
      *(v13 + 16) = v22;
      OUTLINED_FUNCTION_8_31();
      sub_26A31D95C();
    }
  }

  OUTLINED_FUNCTION_75();
}

void Array<A>.description(redacted:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v88 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_121_0();
  v12 = type metadata accessor for Section();
  v13 = OUTLINED_FUNCTION_79_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - v25;
  if (*(v2 + 16))
  {
    v94 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_25();
    v83 = v27;
    sub_26A10D50C();
    v28 = 0;
    v29 = v94;
    v82 = v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v81 = *(v15 + 72);
    v80 = v4 & 1;
    v78 = xmmword_26A426390;
    v86 = v20;
    v87 = v5;
    v89 = v0;
    v84 = v26;
    v85 = v23;
    v79 = v4;
    while (1)
    {
      v90 = v28;
      v91 = v29;
      sub_26A31D8AC();
      sub_26A31D8AC();
      if (v4)
      {
        sub_26A31C07C();
      }

      else
      {
        sub_26A31D8AC();
      }

      v30 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_8_31();
      v31 = v88;
      sub_26A31D95C();
      *(v31 + *(v5 + 32)) = v80;
      OUTLINED_FUNCTION_0_60();
      sub_26A31D904(v23, v32);
      *(v31 + *(v5 + 28)) = v30;
      sub_26A31D6BC(v31, v0);
      v33 = *v0;
      sub_26A31BF28();
      v35 = v34;
      v36 = *(v34 + 16);
      if (v36)
      {
        v92 = v30;
        sub_26A10D50C();
        v37 = v92;
        v38 = (v35 + 32);
        v39 = *(v0 + *(v5 + 32));
        do
        {
          v40 = v38[4];
          __swift_project_boxed_opaque_existential_1(v38, v38[3]);
          v41 = Component.description(redacted:)(v39);
          v92 = v37;
          v42 = *(v37 + 16);
          if (v42 >= *(v37 + 24) >> 1)
          {
            sub_26A10D50C();
            v37 = v92;
          }

          *(v37 + 16) = v42 + 1;
          *(v37 + 16 * v42 + 32) = v41;
          v38 += 5;
          --v36;
        }

        while (v36);

        LOBYTE(v4) = v79;
        v0 = v89;
      }

      else
      {
      }

      v43 = OUTLINED_FUNCTION_21_23();
      sub_26A3A25E0(v43, v44, v45, v46);

      v47 = *(v0 + 8);

      OUTLINED_FUNCTION_11_30(v48);

      v49 = *(v0 + 16);
      v50 = *(v49 + 16);
      v51 = v84;
      if (*(v0 + 24))
      {
        if (!v50)
        {
          goto LABEL_19;
        }

        v52 = 1701079400;
      }

      else
      {
        if (!v50)
        {
LABEL_19:
          v56 = *(v0 + 16);

          v55 = 0;
          v54 = 0xE000000000000000;
          goto LABEL_20;
        }

        v52 = 2003789939;
      }

      v92 = v52 | 0x3A6E6F2800000000;
      v93 = 0xE900000000000020;
      swift_bridgeObjectRetain_n();
      v53 = sub_26A12CBBC(v49);
      MEMORY[0x26D65BA70](v53);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);

      v55 = v92;
      v54 = v93;
LABEL_20:
      v5 = v87;
      v57 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v57 = v55 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        v58 = *(v87 + 28);
        v59 = *(v0 + v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = *(v59 + 16);
          sub_26A166DA4();
          v59 = v70;
        }

        v60 = *(v59 + 16);
        if (v60 >= *(v59 + 24) >> 1)
        {
          sub_26A166DA4();
          v59 = v71;
        }

        *(v59 + 16) = v60 + 1;
        v61 = v59 + 32 * v60;
        *(v61 + 32) = v78;
        *(v61 + 48) = v55;
        *(v61 + 56) = v54;

        v0 = v89;
        *(v89 + v58) = v59;
      }

      else
      {
      }

      sub_26A0F9448();
      v63 = v62;
      v65 = v64;
      OUTLINED_FUNCTION_0_60();
      sub_26A31D904(v51, v66);
      sub_26A31D654(v0);
      v29 = v91;
      v94 = v91;
      v67 = *(v91 + 16);
      if (v67 >= *(v91 + 24) >> 1)
      {
        sub_26A10D50C();
        v29 = v94;
      }

      v28 = v90 + 1;
      *(v29 + 16) = v67 + 1;
      v68 = v29 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v23 = v85;
      if (v28 == v83)
      {
        goto LABEL_34;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_34:
  v92 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
  sub_26A10D548();
  v72 = sub_26A424B54();
  v74 = v73;

  v92 = 0x202020200A5BLL;
  v93 = 0xE600000000000000;
  v75 = sub_26A31B838(v72, v74);
  v77 = v76;

  MEMORY[0x26D65BA70](v75, v77);

  MEMORY[0x26D65BA70](23818, 0xE200000000000000);
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoResponse.LevelOfDetail.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x6E6F69747061632ELL;
    }

    else
    {
      return 0x746E65746E6F632ELL;
    }
  }

  else
  {
    sub_26A424EF4();

    strcpy(v3, ".UNRECOGNIZED(");
    v2 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v2);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    return v3[0];
  }
}

uint64_t sub_26A31D654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A31D6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A31D7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A31D82C()
{
  result = type metadata accessor for _ProtoResponse.Section(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A31D8AC()
{
  v2 = OUTLINED_FUNCTION_53();
  v4 = v3(v2);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A31D904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A31D95C()
{
  v2 = OUTLINED_FUNCTION_53();
  v4 = v3(v2);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

void OUTLINED_FUNCTION_11_30(uint64_t a1)
{

  sub_26A3A231C(a1, 0x44664F6C6576656CLL, 0xED00006C69617465, 0);
}

void OUTLINED_FUNCTION_12_25()
{
  v3 = *(v2 - 88);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v1 + 72);
}

void OUTLINED_FUNCTION_20_25()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return type metadata accessor for _ProtoResponse.Section(0);
}

uint64_t OUTLINED_FUNCTION_23_28()
{
  *(v0 + 16) = v1;

  return sub_26A0D671C((v4 - 128), v0 + v3 * v2 + 32);
}

void SashStandard.title.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_26_13();
  v4 = type metadata accessor for _ProtoSash_Standard.SashTitle(v3);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = *(v1 + *(type metadata accessor for _ProtoSash_Standard(0) + 20));
  OUTLINED_FUNCTION_23_23();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v4);
  sub_26A0E48F0(v17, &qword_280371E60, &qword_26A43A9E0);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_8;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_38_0();
  if (v20)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = -1;
    v21 = v10 + *(v4 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_38_0();
    if (!v20)
    {
      sub_26A0E48F0(v2, &qword_280371E60, &qword_26A43A9E0);
    }
  }

  else
  {
    sub_26A320AE8();
  }

  v22 = *v10;
  v23 = *(v10 + 8);
  v24 = *(v10 + 16);
  v25 = OUTLINED_FUNCTION_78_1();
  sub_26A148B68(v25, v26, v24);
  OUTLINED_FUNCTION_5_41();
  sub_26A320B90(v10, v27);
  if (v24 == 255)
  {
LABEL_8:
    v22 = 0;
    v23 = 0;
    v28 = -1;
  }

  else
  {
    v28 = v24 & 1;
  }

  *v0 = v22;
  *(v0 + 8) = v23;
  *(v0 + 16) = v28;
  OUTLINED_FUNCTION_75();
}

uint64_t SashStandard.Title.init(proto:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_26_13();
  v4 = type metadata accessor for _ProtoSash_Standard.SashTitle(v3);
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    result = sub_26A0E48F0(a1, &qword_280371E60, &qword_26A43A9E0);
LABEL_6:
    *v1 = 0;
    *(v1 + 8) = 0;
    v12 = -1;
    goto LABEL_7;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = OUTLINED_FUNCTION_78_1();
  sub_26A148B68(v9, v10, v8);
  OUTLINED_FUNCTION_5_41();
  result = sub_26A320B90(a1, v11);
  if (v8 == 255)
  {
    goto LABEL_6;
  }

  *v1 = v6;
  *(v1 + 8) = v7;
  if (v8)
  {
    v12 = 1;
LABEL_7:
    *(v1 + 16) = v12;
    return result;
  }

  *(v1 + 16) = 0;
  return result;
}

void sub_26A31DE44()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v33 = v4;
  v5 = type metadata accessor for _ProtoVisualProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v16);
  v17 = *(v0 + *(OUTLINED_FUNCTION_38_13() + 20));
  v18 = *v3;
  OUTLINED_FUNCTION_23_23();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v19, v20, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      *v11 = MEMORY[0x277D84F90];
      *(v11 + 8) = 0;
      v22 = v11 + v5[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v23 = v5[8];
      v24 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
      v28 = v5[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
      OUTLINED_FUNCTION_38_0();
      if (!v21)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A320AE8();
    }

    sub_26A320AE8();
    v3 = 0;
  }

  v32 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v33, v3, 1, v32);
  OUTLINED_FUNCTION_75();
}

void SashStandard.action.getter()
{
  OUTLINED_FUNCTION_76();
  v22 = v3;
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v15);
  v16 = *(v0 + *(OUTLINED_FUNCTION_38_13() + 20));
  OUTLINED_FUNCTION_23_23();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      *v10 = MEMORY[0x277D84F90];
      v10[1] = 0;
      v10[2] = 0xE000000000000000;
      v20 = v10 + *(v4 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A320AE8();
    }

    sub_26A320AE8();
    v2 = 0;
  }

  v21 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v22, v2, 1, v21);
  OUTLINED_FUNCTION_75();
}

uint64_t SashStandard.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSash_Standard(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_246();
}

uint64_t SashStandard.showOnWatch.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSash_Standard(0) + 20));
  v2 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_142();
  return *(v1 + v2);
}

void _ProtoSash_Standard.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_26_13();
  v175 = type metadata accessor for _ProtoActionProperty();
  v23 = OUTLINED_FUNCTION_12(v175);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v29 = OUTLINED_FUNCTION_41(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v34);
  v173 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  v35 = OUTLINED_FUNCTION_12(v173);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  v42 = OUTLINED_FUNCTION_41(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v47);
  v48 = type metadata accessor for _ProtoVisualProperty();
  v49 = OUTLINED_FUNCTION_12(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  v58 = v163 - v57;
  v59 = OUTLINED_FUNCTION_78_1();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
  v62 = OUTLINED_FUNCTION_41(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  v69 = v163 - v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  v176 = v71;
  MEMORY[0x28223BE20](v72);
  v74 = v163 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = v163 - v76;
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_246();
  sub_26A320B3C();
  v78 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  v177 = v20;
  v178 = v78;
  v79 = *(v20 + v78);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v48);
  sub_26A0E48F0(v77, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v74);
    if (v81)
    {
      *v58 = MEMORY[0x277D84F90];
      *(v58 + 4) = 0;
      v82 = &v58[v48[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v83 = v48[8];
      OUTLINED_FUNCTION_92();
      v84 = v175;
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v175);
      v88 = v48[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v84);
      OUTLINED_FUNCTION_3_6(v74);
      v92 = v178;
      if (!v81)
      {
        sub_26A0E48F0(v74, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A320AE8();
      v92 = v178;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_6_31();
    sub_26A320B90(v58, v93);
    v94 = v177;
    v95 = *(v177 + v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v94 + v92);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v97 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v97);
      OUTLINED_FUNCTION_22_18();
      v79 = v98;
      *(v94 + v92) = v98;
    }

    sub_26A320AE8();
    v99 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v48);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_209();
  v102 = __swift_getEnumTagSinglePayload(v69, 1, v48);
  OUTLINED_FUNCTION_162_0(v69);
  if (v102 == 1)
  {
    v103 = v175;
    v104 = v177;
    v105 = v173;
  }

  else
  {
    v106 = v163[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v106);
    v103 = v175;
    v104 = v177;
    v107 = v178;
    v105 = v173;
    if (v81)
    {
      v79 = v163[3];
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_15_30(v48[8]);
      OUTLINED_FUNCTION_15_30(v48[9]);
      OUTLINED_FUNCTION_3_6(v106);
      if (!v81)
      {
        sub_26A0E48F0(v106, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v179);
      sub_26A320AE8();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_6_31();
    sub_26A320B90(v79, v108);
    v109 = *(v104 + v107);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v104 + v107);
    if ((v110 & 1) == 0)
    {
      v111 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v111);
      OUTLINED_FUNCTION_22_18();
      v79 = v112;
      *(v104 + v107) = v112;
    }

    sub_26A320AE8();
    v113 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v48);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v116 = v171;
  OUTLINED_FUNCTION_209();
  v117 = v105;
  v118 = __swift_getEnumTagSinglePayload(v116, 1, v105);
  OUTLINED_FUNCTION_162_0(v116);
  if (v118 != 1)
  {
    OUTLINED_FUNCTION_164(&v180);
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v79, 1, v117) == 1)
    {
      v119 = v164;
      *v164 = 0;
      *(v119 + 8) = 0;
      *(v119 + 16) = -1;
      v120 = v119 + *(v117 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v121 = __swift_getEnumTagSinglePayload(v79, 1, v117);
      v122 = v178;
      v123 = v165;
      if (v121 != 1)
      {
        sub_26A0E48F0(v79, &qword_280371E60, &qword_26A43A9E0);
      }
    }

    else
    {
      v119 = v164;
      sub_26A320AE8();
      v122 = v178;
      v123 = v165;
    }

    sub_26A320B3C();
    v124 = *(v119 + 16);
    if (v124 == 255)
    {
      sub_26A320B90(v119, type metadata accessor for _ProtoSash_Standard.SashTitle);
    }

    else if (v124)
    {
      sub_26A320B90(v119, type metadata accessor for _ProtoSash_Standard.SashTitle);
      sub_26A0D6768(*v123, *(v123 + 8), *(v123 + 16));
      *v123 = xmmword_26A42D990;
      *(v123 + 16) = 1;
    }

    else
    {
      v125 = *v119;
      v126 = *(v119 + 8);

      OUTLINED_FUNCTION_5_41();
      sub_26A320B90(v119, v127);
      sub_26A0D6768(*v123, *(v123 + 8), *(v123 + 16));
      *v123 = v125;
      *(v123 + 8) = v126;
      *(v123 + 16) = 0;
    }

    sub_26A320AE8();
    v128 = *(v104 + v122);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v104 + v122);
    if ((v129 & 1) == 0)
    {
      v130 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v130);
      OUTLINED_FUNCTION_22_18();
      v79 = v131;
      *(v104 + v122) = v131;
    }

    sub_26A320AE8();
    v132 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v117);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v135 = v172;
  OUTLINED_FUNCTION_209();
  v136 = __swift_getEnumTagSinglePayload(v135, 1, v48);
  OUTLINED_FUNCTION_162_0(v135);
  if (v136 != 1)
  {
    v137 = v166;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v137);
    v138 = v178;
    if (v81)
    {
      v79 = v167;
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_15_30(v48[8]);
      OUTLINED_FUNCTION_15_30(v48[9]);
      OUTLINED_FUNCTION_3_6(v137);
      if (!v81)
      {
        sub_26A0E48F0(v137, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v181);
      sub_26A320AE8();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_6_31();
    sub_26A320B90(v79, v139);
    v140 = *(v104 + v138);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v104 + v138);
    if ((v141 & 1) == 0)
    {
      v142 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v142);
      OUTLINED_FUNCTION_22_18();
      v79 = v143;
      *(v104 + v138) = v143;
    }

    sub_26A320AE8();
    v144 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v48);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v147 = v174;
  OUTLINED_FUNCTION_209();
  v148 = __swift_getEnumTagSinglePayload(v147, 1, v103);
  OUTLINED_FUNCTION_162_0(v147);
  if (v148 != 1)
  {
    v149 = v168;
    sub_26A10FD9C();
    v150 = __swift_getEnumTagSinglePayload(v149, 1, v103);
    v151 = v178;
    if (v150 == 1)
    {
      v79 = v169;
      *v169 = MEMORY[0x277D84F90];
      *(v79 + 8) = 0;
      *(v79 + 16) = 0xE000000000000000;
      v152 = v79 + *(v103 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v153 = __swift_getEnumTagSinglePayload(v149, 1, v103);
      v154 = v170;
      if (v153 != 1)
      {
        sub_26A0E48F0(v149, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&a11);
      sub_26A320AE8();
      v154 = v170;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v154);
    sub_26A320B90(v79, type metadata accessor for _ProtoActionProperty);
    v155 = *(v104 + v151);
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v104 + v151);
    if ((v156 & 1) == 0)
    {
      v158 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v158);
      sub_26A2E4FA8();
      *(v104 + v151) = v159;
    }

    sub_26A320AE8();
    v160 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v103);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  type metadata accessor for _ProtoSash_Standard(0);
  OUTLINED_FUNCTION_4_37();
  sub_26A320AA0(v11, v12);
  sub_26A4249C4();

  sub_26A0D6740();
  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  return sub_26A0E48F0(a2, &qword_28036CB20, &unk_26A426470);
}

uint64_t sub_26A31F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v74 = a8;
  v71 = a7;
  v69 = a6;
  v68 = a5;
  v67 = a4;
  v84 = a9;
  v14 = type metadata accessor for _ProtoActionProperty();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionProperty();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v65 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v75 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v63 - v24;
  v73 = type metadata accessor for Color();
  v25 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v64 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v63 = &v63 - v28;
  v29 = type metadata accessor for _ProtoVisualProperty();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v63 - v33;
  v35 = type metadata accessor for VisualProperty();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v72 = &v63 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v63 - v39;
  v41 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);

  _ProtoSash_Standard.componentName.setter(a2, a3);
  v77 = v67;
  v78 = v68;
  sub_26A320AA0(&qword_280371EC8, type metadata accessor for _ProtoSash_Standard.SashTitle);
  v43 = v76;
  sub_26A4249C4();
  v76 = v43;
  v44 = a1;
  _ProtoSash_Standard.title.setter();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_26A0E48F0(v34, &qword_28036CB20, &unk_26A426470);
  }

  else
  {
    sub_26A320AE8();
    sub_26A320B3C();
    _ProtoSash_Standard.thumbnail.setter();
    sub_26A320B90(v40, type metadata accessor for VisualProperty);
  }

  v45 = v70;
  sub_26A10FD9C();
  v46 = v73;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v73);
  v48 = v75;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v45, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    v49 = v63;
    sub_26A320AE8();
    sub_26A3F3AC0();
    sub_26A320AE8();
    _ProtoSash_Standard.titleColor.setter();
    sub_26A320B90(v49, type metadata accessor for Color);
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v48, 1, v46) == 1)
  {
    sub_26A0E48F0(v48, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    v50 = v64;
    sub_26A320AE8();
    sub_26A3F3AC0();
    sub_26A320AE8();
    _ProtoSash_Standard.backgroundColor.setter();
    sub_26A320B90(v50, type metadata accessor for Color);
  }

  sub_26A10FD9C();
  if (v80)
  {
    sub_26A0D671C(&v79, v81);
    v51 = v82;
    v52 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v52 + 8))(v51, v52);
    sub_26A320AE8();
    _ProtoSash_Standard.action.setter();
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    sub_26A0E48F0(&v79, &qword_28036CAF8, &unk_26A426D30);
  }

  v53 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  v54 = *(v44 + v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v44 + v53);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_26A2E4FA8();
    v56 = v60;
    *(v44 + v53) = v60;
  }

  v61 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  result = swift_beginAccess();
  *(v56 + v61) = a11 & 1;
  return result;
}

uint64_t sub_26A31F9BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);

  result = sub_26A0D6768(v8, v9, v10);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return result;
}

void SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v35 = v0;
  v34 = v1;
  v32 = v2;
  v31 = v3;
  v33 = v4;
  v36 = v5;
  v37 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  v22 = v8[1];
  v28 = *v8;
  v29 = v22;
  v23 = *(v8 + 16);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v24 = v30;
  sub_26A10FD9C();
  v25 = v32;
  sub_26A10FD9C();
  type metadata accessor for _ProtoSash_Standard(0);
  v38 = v34;
  v39 = v35;
  v40 = v28;
  v41 = v29;
  v42 = v23;
  v43 = v21;
  v44 = v15;
  v45 = v24;
  v46 = v48;
  v47 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_26A320AA0(v26, v27);
  sub_26A4249C4();
  sub_26A0D6740();

  sub_26A0E48F0(v25, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v31, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v33, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v36, &qword_28036CB20, &unk_26A426470);
  sub_26A0E48F0(v48, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v24, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v15, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v21, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_75();
}

void SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:)()
{
  OUTLINED_FUNCTION_76();
  v30 = v0;
  v29 = v1;
  v31 = v2;
  v32 = v3;
  v33 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = *v6;
  v21 = v6[1];
  v22 = *(v6 + 16);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v23 = v29;
  v24 = v28;
  sub_26A10FD9C();
  v25 = v30;
  sub_26A10FD9C();
  type metadata accessor for _ProtoSash_Standard(0);
  v34 = 0;
  v35 = 0xE000000000000000;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v19;
  v40 = v13;
  v41 = v24;
  v42 = v44;
  v43 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_26A320AA0(v26, v27);
  sub_26A4249C4();
  sub_26A0D6740();
  sub_26A0E48F0(v25, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v23, &qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_187_0(v31);
  sub_26A0E48F0(v32, &qword_28036CB20, &unk_26A426470);
  sub_26A0E48F0(v44, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(v24);
  OUTLINED_FUNCTION_187_0(v13);
  sub_26A0E48F0(v19, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_75();
}

uint64_t type metadata accessor for SashStandard()
{
  result = qword_2803728D0;
  if (!qword_2803728D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SashStandard.Title.proto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = type metadata accessor for _ProtoSash_Standard.SashTitle(v2);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v11 = *v1;
  v10 = v1[1];
  v12 = *(v1 + 16);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = -1;
  v14 = v8 - v7 + *(v13 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *v9;
  v16 = *(v9 + 8);
  v17 = *(v9 + 16);

  sub_26A0D6768(v15, v16, v17);
  *v9 = v11;
  *(v9 + 8) = v10;
  *(v9 + 16) = v12;
  sub_26A320AE8();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SashStandard.Title.description(redacted:)(Swift::Bool redacted)
{
  if ((*(v1 + 16) & 1) != 0 && redacted)
  {
    v2 = 0xEC000000223E4445;
    v3 = 0x5443414445523C22;
  }

  else
  {
    MEMORY[0x26D65BA70](*v1, *(v1 + 8));
    MEMORY[0x26D65BA70](34, 0xE100000000000000);
    v3 = 34;
    v2 = 0xE100000000000000;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t SashStandard.Title.applicationBundleIdentifier.getter()
{
  if ((v0[2] & 1) == 0)
  {
    v3 = v0;
    v2 = *v0;
    v1 = v3[1];
  }

  return OUTLINED_FUNCTION_246();
}

uint64_t SashStandard.Title.text.getter()
{
  if (*(v0 + 16) == 1)
  {
    v3 = v0;
    v2 = *v0;
    v1 = v3[1];
  }

  return OUTLINED_FUNCTION_246();
}

uint64_t SashStandard.componentProto.getter()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = type metadata accessor for _ProtoSash_Standard(v1);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = v0 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_78_1();
  sub_26A320B3C();
  sub_26A0E48F0(v0, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_14_22();
  sub_26A320AE8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v6);
}

uint64_t SashStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SashStandard();
  *(inited + 64) = &protocol witness table for SashStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_13_26();
  sub_26A320B3C();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A320AA0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3209F8()
{
  result = type metadata accessor for _ProtoSash_Standard(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A320AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A320AE8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A320B3C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A320B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_15_30@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

void OUTLINED_FUNCTION_22_18()
{

  sub_26A2E4FA8();
}

uint64_t OUTLINED_FUNCTION_28_16()
{

  return sub_26A0E48F0(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return type metadata accessor for _ProtoSash_Standard(0);
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return type metadata accessor for _ProtoSash_Standard(0);
}

Swift::String __swiftcall ActionElement.description(redacted:)(Swift::Bool redacted)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD90, &qword_26A4268F0);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_113();
  v8 = type metadata accessor for ActionElement(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
  OUTLINED_FUNCTION_12(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_23_29();
  sub_26A321058();
  if (redacted)
  {
    _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0();
  }

  else
  {
    sub_26A321058();
  }

  OUTLINED_FUNCTION_217_0();
  sub_26A3210AC();
  *(v2 + *(v15 + 32)) = redacted;
  sub_26A326630(v14, type metadata accessor for ActionElement);
  *(v2 + *(v15 + 28)) = MEMORY[0x277D84F90];
  ActionElement.command.getter();
  type metadata accessor for Command(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_26A146614();
  sub_26A0E48F0(v1, &qword_28036CD90, &qword_26A4268F0);
  KeyPath = swift_getKeyPath();
  sub_26A0F7238(KeyPath, 0x6D656C4574786574, 0xEC00000073746E65);

  v24 = swift_getKeyPath();
  sub_26A28FD74(v24, 0x736D6F696469, 0xE600000000000000);

  sub_26A100A40();
  sub_26A0E48F0(v2, &qword_28036CD98, &qword_26A4268F8);
  v25 = OUTLINED_FUNCTION_175();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_26A321058()
{
  OUTLINED_FUNCTION_90_5();
  v1 = OUTLINED_FUNCTION_16_11();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A3210AC()
{
  OUTLINED_FUNCTION_90_5();
  v1 = OUTLINED_FUNCTION_16_11();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

void ActionElement.command.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_163_1();
  v6 = type metadata accessor for _ProtoCommand(0);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v10 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A3270CC();
  OUTLINED_FUNCTION_15(v1);
  if (v11)
  {
    v12 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v12);
    *(v0 + v6[5]) = 0;
    *(v0 + v6[6]) = 0;
    v13 = v0 + v6[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_15(v1);
    if (!v11)
    {
      sub_26A0E48F0(v1, &qword_28036C868, &qword_26A42D090);
    }
  }

  else
  {
    sub_26A3210AC();
  }

  sub_26A3212CC();
}

void sub_26A3212CC()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v226 = v5;
  v231 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v19 = (v18 - v17);
  v20 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v223 = v25 - v24;
  v224 = type metadata accessor for Command(0);
  v26 = OUTLINED_FUNCTION_12(v224);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_70_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  v222 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  v34 = &v222 - v33;
  v35 = &dword_26A42D080;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  OUTLINED_FUNCTION_41(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_44_6();
  v225 = v4;
  sub_26A3270CC();
  v40 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v40) == 1)
  {
LABEL_64:
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v214 = sub_26A424AE4();
    __swift_project_value_buffer(v214, qword_2803A8950);
    v215 = sub_26A424AD4();
    v216 = sub_26A424E14();
    if (OUTLINED_FUNCTION_27_20(v216))
    {
      OUTLINED_FUNCTION_44_13();
      *&v228 = OUTLINED_FUNCTION_33_13();
      *v35 = 136446210;
      *(v35 + 4) = sub_26A0E8788(0xD000000000000022, 0x800000026A44A420, &v228);
      OUTLINED_FUNCTION_14_23();
      _os_log_impl(v217, v218, v219, v220, v221, 0xCu);
      OUTLINED_FUNCTION_16_22();
      OUTLINED_FUNCTION_32_16();
    }

    OUTLINED_FUNCTION_31_18();
    v222 = 443;
    OUTLINED_FUNCTION_66_7();
    sub_26A424FC4();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v90 = v226;
        v92 = *v0;
        v91 = v0[1];
        objc_opt_self();
        OUTLINED_FUNCTION_65_4();
        v93 = sub_26A4246B4();
        *&v228 = 0;
        v94 = OUTLINED_FUNCTION_59_14(v93, sel_propertyListWithData_options_format_error_);

        if (v94)
        {
          v95 = v228;
          sub_26A424E64();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_28;
          }

          v96 = v227;
          v97 = objc_opt_self();
          v98 = sub_26A326788(v96, v97);
          if (v98)
          {
            v99 = v98;
            objc_opt_self();
            v100 = swift_dynamicCastObjCClass();
            if (v100)
            {
              v101 = v100;
              v102 = OUTLINED_FUNCTION_65_4();
              sub_26A0E4784(v102, v103);

              v104 = type metadata accessor for _ProtoCommand(0);
              v105 = OUTLINED_FUNCTION_18_24(v104);
              v107 = *(v105 + v106);
              OUTLINED_FUNCTION_2_44();
              sub_26A326630(v108, v109);
              *v90 = v101;
              *(v90 + 8) = v107;
              OUTLINED_FUNCTION_22_19();
              goto LABEL_59;
            }
          }

          if (qword_28036C5A0 != -1)
          {
            OUTLINED_FUNCTION_0_34();
            swift_once();
          }

          v201 = sub_26A424AE4();
          __swift_project_value_buffer(v201, qword_2803A8950);

          v156 = sub_26A424AD4();
          v202 = sub_26A424E04();

          if (os_log_type_enabled(v156, v202))
          {
            v203 = OUTLINED_FUNCTION_44_13();
            v204 = OUTLINED_FUNCTION_43_10();
            *&v228 = v204;
            *v203 = 136315138;
            sub_26A424B14();

            v205 = OUTLINED_FUNCTION_68_8();
            v208 = sub_26A0E8788(v205, v206, v207);

            *(v203 + 4) = v208;
            _os_log_impl(&dword_26A0B8000, v156, v202, "Unable to create concrete SABaseCommand from dictionary for: %s", v203, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v204);
            OUTLINED_FUNCTION_1_21();
            goto LABEL_56;
          }

          v212 = OUTLINED_FUNCTION_65_4();
          sub_26A0E4784(v212, v213);

          goto LABEL_58;
        }

        v179 = v228;
        v180 = sub_26A4245B4();

        swift_willThrow();
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v181 = sub_26A424AE4();
        __swift_project_value_buffer(v181, qword_2803A8950);
        v182 = v180;
        v64 = sub_26A424AD4();
        v183 = sub_26A424E04();

        if (!os_log_type_enabled(v64, v183))
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 2:
        v59 = *v0;
        v58 = v0[1];
        v60 = OUTLINED_FUNCTION_65_4();
        sub_26A0E45C0(v60, v61);
        OUTLINED_FUNCTION_65_4();
        sub_26A22F9D0();
        v170 = OUTLINED_FUNCTION_65_4();
        sub_26A0E4784(v170, v171);
        v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48);
        v173 = type metadata accessor for _ProtoCommand(0);
        v174 = OUTLINED_FUNCTION_18_24(v173);
        v176 = *(v174 + v175);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v177, v178);
        v34[v172] = v176;
        OUTLINED_FUNCTION_22_19();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_38();
        goto LABEL_38;
      case 3:
        v72 = *v0;
        v73 = v0[1];
        v74 = type metadata accessor for _ProtoCommand(0);
        v75 = OUTLINED_FUNCTION_18_24(v74);
        v77 = *(v75 + v76);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v78, v79);
        v80 = v226;
        *v226 = v72;
        v80[1] = v73;
        *(v80 + 16) = v77;
        OUTLINED_FUNCTION_22_19();
        goto LABEL_59;
      case 4:
        v42 = v223;
        v43 = sub_26A3210AC();
        v44 = *v42;
        v45 = *(*v42 + 16);
        if (!v45)
        {
          OUTLINED_FUNCTION_58_15(v43, type metadata accessor for _ProtoCommand);
          OUTLINED_FUNCTION_26_26();
          v46 = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_22_19();
          goto LABEL_37;
        }

        v227 = MEMORY[0x277D84F90];
        sub_26A10CCB8(0, v45, 0);
        v46 = v227;
        v47 = type metadata accessor for _ProtoBackgroundElement();
        v48 = 0;
        OUTLINED_FUNCTION_41(v47);
        v50 = v49;
        v51 = *(v49 + 80);
        OUTLINED_FUNCTION_166_0();
        v53 = v44 + v52;
        while (v48 < v44[2])
        {
          v54 = &v53[*(v50 + 72) * v48];
          v229 = type metadata accessor for BackgroundElement();
          v230 = &protocol witness table for BackgroundElement;
          __swift_allocate_boxed_opaque_existential_1(&v228);
          sub_26A321058();
          v227 = v46;
          v56 = v46[2];
          v55 = v46[3];
          v0 = (v56 + 1);
          if (v56 >= v55 >> 1)
          {
            sub_26A10CCB8(v55 > 1, v56 + 1, 1);
            v46 = v227;
          }

          ++v48;
          v46[2] = v0;
          v57 = sub_26A0D671C(&v228, &v46[5 * v56 + 4]);
          if (v45 == v48)
          {
            OUTLINED_FUNCTION_58_15(v57, type metadata accessor for _ProtoCommand);
            OUTLINED_FUNCTION_26_26();
            OUTLINED_FUNCTION_22_19();
LABEL_37:
            *v222 = v46;
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_4_38();
            OUTLINED_FUNCTION_246();
            goto LABEL_38;
          }
        }

        __break(1u);
        OUTLINED_FUNCTION_0_34();
        swift_once();
        v62 = sub_26A424AE4();
        __swift_project_value_buffer(v62, qword_2803A8950);
        v63 = v44;
        v64 = sub_26A424AD4();
        sub_26A424E04();

        if (os_log_type_enabled(v64, v0))
        {
          v65 = OUTLINED_FUNCTION_44_13();
          v66 = OUTLINED_FUNCTION_43_10();
          *&v228 = v66;
          *v65 = 136446210;
          swift_getErrorValue();
          v67 = sub_26A4254B4();
          v69 = sub_26A0E8788(v67, v68, &v228);

          *(v65 + 4) = v69;
          _os_log_impl(&dword_26A0B8000, v64, v0, "Unable to deserialize data: %{public}s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          OUTLINED_FUNCTION_1_21();
          OUTLINED_FUNCTION_1_21();

          v70 = OUTLINED_FUNCTION_65_4();
          EnumCaseMultiPayload = sub_26A0E4784(v70, v71);
          goto LABEL_58;
        }

        v197 = OUTLINED_FUNCTION_65_4();
        sub_26A0E4784(v197, v198);
        v196 = v44;
LABEL_49:

LABEL_58:
        OUTLINED_FUNCTION_58_15(EnumCaseMultiPayload, type metadata accessor for _ProtoCommand);
        OUTLINED_FUNCTION_22_19();
LABEL_59:
        swift_storeEnumTagMultiPayload();
LABEL_60:
        v211 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_75();
        break;
      case 5:
        v111 = *v0;
        v110 = v0[1];
        v112 = objc_allocWithZone(MEMORY[0x277D4C740]);
        v113 = OUTLINED_FUNCTION_217_0();
        sub_26A0E45C0(v113, v114);
        v115 = OUTLINED_FUNCTION_217_0();
        v117 = sub_26A32659C(v115, v116);
        if (v117)
        {
          v118 = v117;
          v119 = [objc_allocWithZone(MEMORY[0x277D4C2A8]) initWithProtobuf_];

          if (v119)
          {
            v120 = OUTLINED_FUNCTION_217_0();
            sub_26A0E4784(v120, v121);
            v122 = type metadata accessor for _ProtoCommand(0);
            v123 = *(v225 + *(v122 + 24));
            v124 = *(v225 + *(v122 + 20));
            OUTLINED_FUNCTION_2_44();
            sub_26A326630(v125, v126);
            *v2 = v119;
            *(v2 + 8) = v124;
            OUTLINED_FUNCTION_22_19();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_4_38();
            goto LABEL_38;
          }
        }

        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v163 = sub_26A424AE4();
        v164 = __swift_project_value_buffer(v163, qword_2803A8950);
        v165 = sub_26A424AD4();
        v166 = sub_26A424E04();
        if (OUTLINED_FUNCTION_27_20(v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&dword_26A0B8000, v165, v164, "Unable to build SFCommand from data", v167, 2u);
          OUTLINED_FUNCTION_1_21();

          v168 = OUTLINED_FUNCTION_217_0();
          EnumCaseMultiPayload = sub_26A0E4784(v168, v169);
        }

        else
        {
          v199 = OUTLINED_FUNCTION_217_0();
          sub_26A0E4784(v199, v200);
        }

        goto LABEL_58;
      case 6:
        v128 = *v0;
        v127 = v0[1];
        objc_opt_self();
        OUTLINED_FUNCTION_65_4();
        v129 = sub_26A4246B4();
        *&v228 = 0;
        v130 = OUTLINED_FUNCTION_59_14(v129, sel_propertyListWithData_options_format_error_);

        if (!v130)
        {
          v184 = v228;
          v180 = sub_26A4245B4();

          swift_willThrow();
          if (qword_28036C5A0 != -1)
          {
            OUTLINED_FUNCTION_0_34();
            swift_once();
          }

          v185 = sub_26A424AE4();
          __swift_project_value_buffer(v185, qword_2803A8950);
          v186 = v180;
          v64 = sub_26A424AD4();
          v183 = sub_26A424E04();

          if (os_log_type_enabled(v64, v183))
          {
LABEL_46:
            v187 = OUTLINED_FUNCTION_44_13();
            v188 = OUTLINED_FUNCTION_43_10();
            *&v228 = v188;
            *v187 = 136446210;
            swift_getErrorValue();
            v189 = sub_26A4254B4();
            v191 = sub_26A0E8788(v189, v190, &v228);

            *(v187 + 4) = v191;
            _os_log_impl(&dword_26A0B8000, v64, v183, "Failed to deserialize plist data to dictionary: %{public}s", v187, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v188);
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_1_21();
            v192 = OUTLINED_FUNCTION_65_4();
            sub_26A0E4784(v192, v193);

            goto LABEL_58;
          }

LABEL_47:
          v194 = OUTLINED_FUNCTION_65_4();
          sub_26A0E4784(v194, v195);
          v196 = v180;
          goto LABEL_49;
        }

        v131 = v228;
        sub_26A424E64();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:
          if (qword_28036C5A0 != -1)
          {
            OUTLINED_FUNCTION_0_34();
            swift_once();
          }

          v155 = sub_26A424AE4();
          __swift_project_value_buffer(v155, qword_2803A8950);
          v156 = sub_26A424AD4();
          v157 = sub_26A424E04();
          if (OUTLINED_FUNCTION_27_20(v157))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_14_23();
            _os_log_impl(v158, v159, v160, v161, v162, 2u);
LABEL_56:
            OUTLINED_FUNCTION_1_21();
          }

          v209 = OUTLINED_FUNCTION_65_4();
          sub_26A0E4784(v209, v210);

          goto LABEL_58;
        }

        v35 = v227;
        v132 = objc_allocWithZone(MEMORY[0x277D47438]);

        v134 = sub_26A20A208(v133);
        if (!v134)
        {
          __break(1u);
          goto LABEL_64;
        }

        v135 = v134;
        v136 = OUTLINED_FUNCTION_65_4();
        sub_26A0E4784(v136, v137);

        v138 = type metadata accessor for _ProtoCommand(0);
        v139 = OUTLINED_FUNCTION_18_24(v138);
        v141 = *(v139 + v140);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v142, v143);
        *v1 = v135;
        *(v1 + 8) = v141;
        OUTLINED_FUNCTION_22_19();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_38();
LABEL_38:
        sub_26A3210AC();
        goto LABEL_60;
      case 7:
        sub_26A3210AC();
        v82 = *v19;
        v81 = v19[1];

        sub_26A326630(v19, type metadata accessor for _ProtoCommand.ResponseGroup);
        v83 = type metadata accessor for _ProtoCommand(0);
        v84 = OUTLINED_FUNCTION_18_24(v83);
        v86 = *(v84 + v85);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v87, v88);
        v89 = v226;
        *v226 = v82;
        v89[1] = v81;
        *(v89 + 16) = v86;
        OUTLINED_FUNCTION_22_19();
        goto LABEL_59;
      case 8:
        v144 = sub_26A3210AC();
        v145 = *v12;
        v146 = *(v12 + 16);
        v147 = *(v12 + 32);
        v148 = *(v12 + 40);
        *&v149 = MEMORY[0x28223BE20](v144);
        *(&v222 - 3) = v149;
        *(&v222 - 2) = v150;
        *(&v222 - 2) = v151;
        *(&v222 - 1) = v152;
        sub_26A326688(&qword_28036D350, type metadata accessor for _ProtoCommand.AppPunchout);
        sub_26A4249C4();
        OUTLINED_FUNCTION_2_44();
        OUTLINED_FUNCTION_58_15(v153, v154);
        sub_26A326630(v12, type metadata accessor for _ProtoCommand.AppPunchout);
        OUTLINED_FUNCTION_22_19();
        goto LABEL_59;
      default:
        goto LABEL_58;
    }
  }
}

uint64_t ActionElement.allTextElements.getter()
{
  v1 = type metadata accessor for TextElement();
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26A10CD30();
    v9 = v19;
    v10 = type metadata accessor for _ProtoTextElement(0);
    OUTLINED_FUNCTION_79_0(v10);
    v12 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      sub_26A321058();
      v15 = *(v19 + 16);
      if (v15 >= *(v19 + 24) >> 1)
      {
        sub_26A10CD30();
      }

      *(v19 + 16) = v15 + 1;
      v16 = *(v4 + 80);
      OUTLINED_FUNCTION_166_0();
      v17 = *(v4 + 72);
      OUTLINED_FUNCTION_21_24();
      sub_26A3210AC();
      v12 += v14;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void *ActionElement.idioms.getter()
{
  if (*(*(v0 + 8) + 16))
  {
  }

  else
  {
    return &unk_287B01470;
  }
}

void _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = type metadata accessor for _ProtoTextElement(0);
  v6 = OUTLINED_FUNCTION_79_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_6();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for _ProtoCommand(0);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v48 = v17 - v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v50 = v46 - v20;
  v47 = type metadata accessor for _ProtoActionElement(0);
  v21 = OUTLINED_FUNCTION_12(v47);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_39();
  v49 = v24;
  sub_26A321058();
  v25 = *v0;
  v26 = *(*v0 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v46[0] = v13;
    v46[1] = v4;
    v53 = MEMORY[0x277D84F90];
    sub_26A10CCD8();
    v27 = v53;
    v28 = *(v8 + 80);
    OUTLINED_FUNCTION_166_0();
    v52 = v29;
    v30 = v25 + v29;
    v31 = *(v8 + 72);
    v51 = xmmword_26A42D990;
    do
    {
      sub_26A321058();
      sub_26A321058();
      v32 = *(v1 + 16);
      if (v32 != 255)
      {
        sub_26A0D6768(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v51;
        *(v1 + 16) = v32 & 1;
      }

      sub_26A3210AC();
      sub_26A326630(v2, type metadata accessor for _ProtoTextElement);
      v53 = v27;
      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        sub_26A10CCD8();
        v27 = v53;
      }

      *(v27 + 16) = v33 + 1;
      sub_26A3210AC();
      v30 += v31;
      --v26;
    }

    while (v26);
    v13 = v46[0];
  }

  v34 = v49;
  v35 = *v49;

  *v34 = v27;
  v36 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v37 = v50;
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v36);
  v37[v13[5]] = 0;
  v37[v13[6]] = 0;
  v38 = &v37[v13[7]];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  sub_26A0E48F0(v37, &qword_28036C858, &dword_26A42D080);
  *v37 = 1;
  OUTLINED_FUNCTION_48_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v36);
  sub_26A321058();
  sub_26A0E48F0(v34 + *(v47 + 28), &qword_28036C868, &qword_26A42D090);
  sub_26A3210AC();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v13);
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_12_2();
  sub_26A321058();
  OUTLINED_FUNCTION_2_44();
  sub_26A326630(v37, v45);
  sub_26A326630(v34, type metadata accessor for _ProtoActionElement);
  OUTLINED_FUNCTION_75();
}

void sub_26A322A0C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v55 = v7;
  v54 = type metadata accessor for TextElement();
  v8 = OUTLINED_FUNCTION_24(v54);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v50 = v13 - v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v51 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v49[1] = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v21 = v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v49 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  v52 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v53 = v49 - v28;
  v29 = 0;
  v30 = *(v2 + 16);
  while (v30 != v29)
  {
    v31 = *(v10 + 80);
    OUTLINED_FUNCTION_166_0();
    v32 = *(v10 + 72);
    sub_26A321058();
    OUTLINED_FUNCTION_246();
    sub_26A321058();
    v33 = *(v21 + 3);
    if (v33[2])
    {
      v34 = *(v21 + 3);
    }

    else
    {
      v33 = &unk_287B02230;
    }

    sub_26A326630(v21, type metadata accessor for TextElement);
    sub_26A165034(v6, v4 & 1, v33);
    OUTLINED_FUNCTION_57_12();

    if (v0)
    {
      sub_26A3210AC();
      sub_26A3210AC();
      v38 = v55;
LABEL_20:
      sub_26A3210AC();
      v48 = 0;
      goto LABEL_21;
    }

    sub_26A326630(v24, type metadata accessor for TextElement);
    ++v29;
  }

  if (v30)
  {
    v35 = 0;
    v36 = *(v10 + 80);
    OUTLINED_FUNCTION_166_0();
    v37 = *(v10 + 72);
    v38 = v55;
    v40 = v50;
    v39 = v51;
    do
    {
      sub_26A321058();
      OUTLINED_FUNCTION_68_8();
      sub_26A321058();
      v41 = *(v40 + 24);
      if (v41[2])
      {
        v42 = *(v40 + 24);
      }

      else
      {
        v41 = &unk_287B02260;
      }

      ++v35;
      OUTLINED_FUNCTION_25_23();
      sub_26A326630(v40, v43);
      v44 = v41[2] + 1;
      v45 = 4;
      while (--v44)
      {
        v46 = v41[v45];
        v45 += 2;
        if (!v46)
        {

          OUTLINED_FUNCTION_21_24();
          sub_26A3210AC();
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_25_23();
      sub_26A326630(v39, v47);
      v48 = 1;
    }

    while (v35 != v30);
  }

  else
  {
    v48 = 1;
    v38 = v55;
  }

LABEL_21:
  __swift_storeEnumTagSinglePayload(v38, v48, 1, v54);
  OUTLINED_FUNCTION_75();
}

uint64_t ActionElement.init(_:text:idioms:)(uint64_t a1)
{
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v2, v3);
  sub_26A4249C4();

  OUTLINED_FUNCTION_24_31();
  return sub_26A326630(a1, v4);
}

uint64_t sub_26A322E6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextElement();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for _ProtoTextElement(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for _ProtoCommand(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_26A323174();
  v12 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A0E48F0(a1 + v12, &qword_28036C868, &qword_26A42D090);
  sub_26A3210AC();
  v26 = a1;
  __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v10);
  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v30 = MEMORY[0x277D84F90];
    sub_26A10CCD8();
    v14 = v30;
    v15 = a3 + 32;
    do
    {
      sub_26A32706C();
      v16 = v28;
      v17 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v17 + 8))(v16, v17);
      sub_26A3210AC();
      __swift_destroy_boxed_opaque_existential_1(v27);
      v30 = v14;
      v18 = *(v14 + 16);
      if (v18 >= *(v14 + 24) >> 1)
      {
        sub_26A10CCD8();
        v14 = v30;
      }

      *(v14 + 16) = v18 + 1;
      v19 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v20 = *(v8 + 72);
      sub_26A3210AC();
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  v21 = *v26;

  *v26 = v14;

  v23 = sub_26A419264(v22);
  v24 = v26[1];

  v26[1] = v23;
  return result;
}

void sub_26A323174()
{
  OUTLINED_FUNCTION_76();
  v132 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for AppPunchout();
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v7 = type metadata accessor for Response();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v11 = type metadata accessor for Command(0);
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_3_47();
  sub_26A321058();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48));
      sub_26A3210AC();
      type metadata accessor for _ProtoResponse(0);
      sub_26A326688(&qword_28036F7A8, type metadata accessor for _ProtoResponse);
      v40 = sub_26A424994();
      v42 = v41;
      type metadata accessor for _ProtoCommand(0);
      OUTLINED_FUNCTION_48_18();
      MEMORY[0x28223BE20](v43);
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v44, v45);
      sub_26A4249C4();
      sub_26A0E4784(v40, v42);
      OUTLINED_FUNCTION_8_32();
      v38 = v1;
      goto LABEL_12;
    case 2u:
    case 6u:
      v57 = *v0;
      v56 = v0[1];
      v58 = *(v0 + 16);
      v59 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v59);
      OUTLINED_FUNCTION_13_27();
      *(v60 - 32) = v57;
      *(v60 - 24) = v56;
      *(v60 - 16) = v58;
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v61, v62);
      OUTLINED_FUNCTION_17_20();

      goto LABEL_20;
    case 3u:
      v30 = *v0;
      v31 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v31);
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v32, v33);
      OUTLINED_FUNCTION_17_20();

      goto LABEL_20;
    case 4u:
      v22 = *v0;
      v23 = *(v0 + 8);
      v24 = [objc_allocWithZone(MEMORY[0x277D4C740]) initWithFacade_];
      if (v24)
      {
        v25 = v24;
        v26 = sub_26A326718(v25);
        if (v27 >> 60 != 15)
        {
          goto LABEL_19;
        }
      }

      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v71 = sub_26A424AE4();
      __swift_project_value_buffer(v71, qword_2803A8950);
      v72 = sub_26A424AD4();
      v73 = sub_26A424E14();
      if (OUTLINED_FUNCTION_27_20(v73))
      {
        OUTLINED_FUNCTION_44_13();
        v74 = OUTLINED_FUNCTION_33_13();
        OUTLINED_FUNCTION_71_6(v74);
        *(v0 + 4) = OUTLINED_FUNCTION_60_11(4.8751e-34);
        OUTLINED_FUNCTION_14_23();
        _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_32_16();
      }

      goto LABEL_30;
    case 5u:
      v15 = *v0;
      v16 = *(v0 + 8);
      v46 = [*v0 dictionary];
      if (!v46)
      {
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v110 = sub_26A424AE4();
        __swift_project_value_buffer(v110, qword_2803A8950);
        v89 = sub_26A424AD4();
        v111 = sub_26A424E14();
        if (OUTLINED_FUNCTION_27_20(v111))
        {
          OUTLINED_FUNCTION_44_13();
          v112 = OUTLINED_FUNCTION_33_13();
          OUTLINED_FUNCTION_71_6(v112);
          *v0 = 136446210;
          *(v0 + 4) = sub_26A0E8788(0xD000000000000033, 0x800000026A44A380, &v130);
          OUTLINED_FUNCTION_14_23();
          _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_32_16();
        }

        goto LABEL_45;
      }

      v18 = v46;
      v47 = objc_opt_self();
      v130 = 0;
      v20 = OUTLINED_FUNCTION_73_9(v47, sel_dataWithPropertyList_format_options_error_);
      v48 = 0;
      if (v20)
      {
        goto LABEL_15;
      }

      v118 = v48;
      sub_26A4245B4();

      swift_willThrow();
      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v119 = sub_26A424AE4();
      __swift_project_value_buffer(v119, qword_2803A8950);
      OUTLINED_FUNCTION_28_17();
      sub_26A424EF4();

      OUTLINED_FUNCTION_29_18();
      v130 = (v121 + 11);
      v131 = v120;
      swift_getErrorValue();
      v122 = sub_26A4254B4();
      MEMORY[0x26D65BA70](v122);

      v102 = sub_26A424AD4();
      sub_26A424E14();
      OUTLINED_FUNCTION_57_12();

      if (os_log_type_enabled(v102, v15))
      {
        v123 = OUTLINED_FUNCTION_44_13();
        v124 = OUTLINED_FUNCTION_43_10();
        v130 = v124;
        *v123 = 136446210;
        v125 = OUTLINED_FUNCTION_133();
        *(v123 + 4) = sub_26A0E8788(v125, v126, v127);
        OUTLINED_FUNCTION_39_15(&dword_26A0B8000, v128, v129, "%{public}s");
        __swift_destroy_boxed_opaque_existential_1(v124);
        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_1_21();
      }

      goto LABEL_50;
    case 7u:
      sub_26A3210AC();
      v34 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v34);
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v35, v36);
      OUTLINED_FUNCTION_17_20();
      v37 = type metadata accessor for AppPunchout;
      v38 = v2;
LABEL_12:
      sub_26A326630(v38, v37);
      goto LABEL_20;
    case 8u:
      v22 = *v0;
      v23 = *(v0 + 8);
      v63 = [objc_allocWithZone(MEMORY[0x277D4C740]) initWithFacade_];
      if (v63)
      {
        v25 = v63;
        v26 = sub_26A326718(v25);
        if (v27 >> 60 != 15)
        {
LABEL_19:
          v64 = v26;
          v65 = v27;
          type metadata accessor for _ProtoCommand(0);
          OUTLINED_FUNCTION_48_18();
          MEMORY[0x28223BE20](v66);
          OUTLINED_FUNCTION_13_27();
          *(v67 - 32) = v64;
          *(v67 - 24) = v65;
          *(v67 - 16) = v23;
          OUTLINED_FUNCTION_1_51();
          sub_26A326688(v68, v69);
          OUTLINED_FUNCTION_17_20();
          sub_26A10E794(v64, v65);

          goto LABEL_20;
        }
      }

      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v80 = sub_26A424AE4();
      __swift_project_value_buffer(v80, qword_2803A8950);
      v72 = sub_26A424AD4();
      v81 = sub_26A424E14();
      if (OUTLINED_FUNCTION_27_20(v81))
      {
        OUTLINED_FUNCTION_44_13();
        v82 = OUTLINED_FUNCTION_33_13();
        OUTLINED_FUNCTION_71_6(v82);
        *(v0 + 4) = OUTLINED_FUNCTION_60_11(4.8751e-34);
        OUTLINED_FUNCTION_14_23();
        _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_32_16();
      }

LABEL_30:

      OUTLINED_FUNCTION_31_18();
      goto LABEL_51;
    case 9u:
      type metadata accessor for _ProtoCommand(0);
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v28, v29);
      sub_26A4249C4();
      goto LABEL_20;
    default:
      v15 = *v0;
      v16 = *(v0 + 8);
      v17 = [*v0 dictionary];
      if (!v17)
      {
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v88 = sub_26A424AE4();
        __swift_project_value_buffer(v88, qword_2803A8950);
        v89 = sub_26A424AD4();
        v90 = sub_26A424E14();
        if (OUTLINED_FUNCTION_27_20(v90))
        {
          OUTLINED_FUNCTION_44_13();
          v91 = OUTLINED_FUNCTION_33_13();
          OUTLINED_FUNCTION_71_6(v91);
          *v0 = 136446210;
          *(v0 + 4) = sub_26A0E8788(0xD000000000000029, 0x800000026A448850, &v130);
          OUTLINED_FUNCTION_14_23();
          _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_32_16();
        }

LABEL_45:

        OUTLINED_FUNCTION_31_18();
        OUTLINED_FUNCTION_66_7();
LABEL_52:
        sub_26A424FC4();
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = objc_opt_self();
      v130 = 0;
      v20 = OUTLINED_FUNCTION_73_9(v19, sel_dataWithPropertyList_format_options_error_);
      v21 = 0;
      if (!v20)
      {
        v97 = v21;
        sub_26A4245B4();

        swift_willThrow();
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v98 = sub_26A424AE4();
        __swift_project_value_buffer(v98, qword_2803A8950);
        OUTLINED_FUNCTION_28_17();
        sub_26A424EF4();

        OUTLINED_FUNCTION_29_18();
        v130 = (v100 + 1);
        v131 = v99;
        swift_getErrorValue();
        v101 = sub_26A4254B4();
        MEMORY[0x26D65BA70](v101);

        v102 = sub_26A424AD4();
        sub_26A424E14();
        OUTLINED_FUNCTION_57_12();

        if (os_log_type_enabled(v102, v15))
        {
          v103 = OUTLINED_FUNCTION_44_13();
          v104 = OUTLINED_FUNCTION_43_10();
          v130 = v104;
          *v103 = 136446210;
          v105 = OUTLINED_FUNCTION_133();
          *(v103 + 4) = sub_26A0E8788(v105, v106, v107);
          OUTLINED_FUNCTION_39_15(&dword_26A0B8000, v108, v109, "%{public}s");
          __swift_destroy_boxed_opaque_existential_1(v104);
          OUTLINED_FUNCTION_1_21();
          OUTLINED_FUNCTION_1_21();
        }

LABEL_50:

        OUTLINED_FUNCTION_31_18();
LABEL_51:
        OUTLINED_FUNCTION_66_7();
        goto LABEL_52;
      }

LABEL_15:
      v49 = sub_26A4246D4();
      v51 = v50;

      v52 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v52);
      OUTLINED_FUNCTION_13_27();
      *(v53 - 32) = v49;
      *(v53 - 24) = v51;
      *(v53 - 16) = v16;
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v54, v55);
      OUTLINED_FUNCTION_17_20();

      sub_26A0E4784(v49, v51);
LABEL_20:
      v70 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_75();
      return;
  }
}